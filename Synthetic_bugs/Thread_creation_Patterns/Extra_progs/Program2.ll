; ModuleID = '/home/cs22mtech12008/Reproduced_UAF/Thread_creation_Patterns/Program2.cpp'
source_filename = "/home/cs22mtech12008/Reproduced_UAF/Thread_creation_Patterns/Program2.cpp"
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
@.str = private unnamed_addr constant [41 x i8] c"Task running in thread, modified value: \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Before thread, localVar: \00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"After thread, localVar: \00", align 1
@_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPiES3_EEEEEE = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPiES3_EEEEEE to i8*), i8* bitcast (void (%"struct.std::thread::_State_impl"*)* @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPiES3_EEEEED2Ev to i8*), i8* bitcast (void (%"struct.std::thread::_State_impl"*)* @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPiES3_EEEEED0Ev to i8*), i8* bitcast (void (%"struct.std::thread::_State_impl"*)* @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPiES3_EEEEE6_M_runEv to i8*)] }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external dso_local global i8*
@_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPiES3_EEEEEE = linkonce_odr dso_local constant [63 x i8] c"NSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPiES3_EEEEEE\00", comdat, align 1
@_ZTINSt6thread6_StateE = external dso_local constant i8*
@_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPiES3_EEEEEE = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPiES3_EEEEEE, i32 0, i32 0), i8* bitcast (i8** @_ZTINSt6thread6_StateE to i8*) }, comdat, align 8
@_ZTVNSt6thread6_StateE = external dso_local unnamed_addr constant { [5 x i8*] }, align 8

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z4taskPi(i32* noundef %ref) #0 {
entry:
  %ref.addr = alloca i32*, align 8
  store i32* %ref, i32** %ref.addr, align 8
  %0 = load i32*, i32** %ref.addr, align 8
  %1 = load i32, i32* %0, align 4
  %add = add nsw i32 %1, 10
  store i32 %add, i32* %0, align 4
  %call = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %2 = load i32*, i32** %ref.addr, align 8
  %3 = load i32, i32* %2, align 4
  %call1 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %call, i32 noundef %3)
  %call2 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %call1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8), i8* noundef) #1

declare dso_local noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8), i32 noundef) #1

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z12createThreadv() #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %localVar = alloca i32, align 4
  %t = alloca %"class.std::thread", align 8
  %ref.tmp = alloca i32*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store i32 5, i32* %localVar, align 4
  %call = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %0 = load i32, i32* %localVar, align 4
  %call1 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %call, i32 noundef %0)
  %call2 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %call1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %localVar, i32** %ref.tmp, align 8
  call void @_ZNSt6threadC2IRFvPiEJS1_EvEEOT_DpOT0_(%"class.std::thread"* noundef nonnull align 8 dereferenceable(8) %t, void (i32*)* noundef nonnull @_Z4taskPi, i32** noundef nonnull align 8 dereferenceable(8) %ref.tmp)
  invoke void @_ZNSt6thread4joinEv(%"class.std::thread"* noundef nonnull align 8 dereferenceable(8) %t)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %call4 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
          to label %invoke.cont3 unwind label %lpad

invoke.cont3:                                     ; preds = %invoke.cont
  %1 = load i32, i32* %localVar, align 4
  %call6 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %call4, i32 noundef %1)
          to label %invoke.cont5 unwind label %lpad

invoke.cont5:                                     ; preds = %invoke.cont3
  %call8 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %call6, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
          to label %invoke.cont7 unwind label %lpad

invoke.cont7:                                     ; preds = %invoke.cont5
  call void @_ZNSt6threadD2Ev(%"class.std::thread"* noundef nonnull align 8 dereferenceable(8) %t) #12
  ret void

lpad:                                             ; preds = %invoke.cont5, %invoke.cont3, %invoke.cont, %entry
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  store i8* %3, i8** %exn.slot, align 8
  %4 = extractvalue { i8*, i32 } %2, 1
  store i32 %4, i32* %ehselector.slot, align 4
  call void @_ZNSt6threadD2Ev(%"class.std::thread"* noundef nonnull align 8 dereferenceable(8) %t) #12
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val9 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val9
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6threadC2IRFvPiEJS1_EvEEOT_DpOT0_(%"class.std::thread"* noundef nonnull align 8 dereferenceable(8) %this, void (i32*)* noundef nonnull %__f, i32** noundef nonnull align 8 dereferenceable(8) %__args) unnamed_addr #2 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::thread"*, align 8
  %__f.addr = alloca void (i32*)*, align 8
  %__args.addr = alloca i32**, align 8
  %agg.tmp = alloca %"class.std::unique_ptr", align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"class.std::thread"* %this, %"class.std::thread"** %this.addr, align 8
  store void (i32*)* %__f, void (i32*)** %__f.addr, align 8
  store i32** %__args, i32*** %__args.addr, align 8
  %this1 = load %"class.std::thread"*, %"class.std::thread"** %this.addr, align 8
  %_M_id = getelementptr inbounds %"class.std::thread", %"class.std::thread"* %this1, i32 0, i32 0
  call void @_ZNSt6thread2idC2Ev(%"class.std::thread::id"* noundef nonnull align 8 dereferenceable(8) %_M_id) #12
  %call = call noalias noundef nonnull i8* @_Znwm(i64 noundef 24) #13
  %0 = bitcast i8* %call to %"struct.std::thread::_State_impl"*
  %1 = load void (i32*)*, void (i32*)** %__f.addr, align 8
  %call2 = call noundef nonnull void (i32*)* @_ZSt7forwardIRFvPiEEOT_RNSt16remove_referenceIS3_E4typeE(void (i32*)* noundef nonnull %1) #12
  %2 = load i32**, i32*** %__args.addr, align 8
  %call3 = call noundef nonnull align 8 dereferenceable(8) i32** @_ZSt7forwardIPiEOT_RNSt16remove_referenceIS1_E4typeE(i32** noundef nonnull align 8 dereferenceable(8) %2) #12
  invoke void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPiES3_EEEEEC2IJRS4_S3_EEEDpOT_(%"struct.std::thread::_State_impl"* noundef nonnull align 8 dereferenceable(24) %0, void (i32*)* noundef nonnull %call2, i32** noundef nonnull align 8 dereferenceable(8) %call3)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %3 = bitcast %"struct.std::thread::_State_impl"* %0 to %"struct.std::thread::_State"*
  call void @_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EEC2IS3_vEEPS1_(%"class.std::unique_ptr"* noundef nonnull align 8 dereferenceable(8) %agg.tmp, %"struct.std::thread::_State"* noundef %3) #12
  invoke void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(%"class.std::thread"* noundef nonnull align 8 dereferenceable(8) %this1, %"class.std::unique_ptr"* noundef %agg.tmp, void ()* noundef @_ZNSt6thread24_M_thread_deps_never_runEv)
          to label %invoke.cont5 unwind label %lpad4

invoke.cont5:                                     ; preds = %invoke.cont
  call void @_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED2Ev(%"class.std::unique_ptr"* noundef nonnull align 8 dereferenceable(8) %agg.tmp) #12
  ret void

lpad:                                             ; preds = %entry
  %4 = landingpad { i8*, i32 }
          cleanup
  %5 = extractvalue { i8*, i32 } %4, 0
  store i8* %5, i8** %exn.slot, align 8
  %6 = extractvalue { i8*, i32 } %4, 1
  store i32 %6, i32* %ehselector.slot, align 4
  call void @_ZdlPv(i8* noundef %call) #14
  br label %eh.resume

lpad4:                                            ; preds = %invoke.cont
  %7 = landingpad { i8*, i32 }
          cleanup
  %8 = extractvalue { i8*, i32 } %7, 0
  store i8* %8, i8** %exn.slot, align 8
  %9 = extractvalue { i8*, i32 } %7, 1
  store i32 %9, i32* %ehselector.slot, align 4
  call void @_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED2Ev(%"class.std::unique_ptr"* noundef nonnull align 8 dereferenceable(8) %agg.tmp) #12
  br label %eh.resume

eh.resume:                                        ; preds = %lpad4, %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val6 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val6
}

declare dso_local void @_ZNSt6thread4joinEv(%"class.std::thread"* noundef nonnull align 8 dereferenceable(8)) #1

declare dso_local i32 @__gxx_personality_v0(...)

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6threadD2Ev(%"class.std::thread"* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::thread"*, align 8
  store %"class.std::thread"* %this, %"class.std::thread"** %this.addr, align 8
  %this1 = load %"class.std::thread"*, %"class.std::thread"** %this.addr, align 8
  %call = call noundef zeroext i1 @_ZNKSt6thread8joinableEv(%"class.std::thread"* noundef nonnull align 8 dereferenceable(8) %this1) #12
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt9terminatev() #15
  unreachable

_ZSt11__terminatev.exit:                          ; No predecessors!
  unreachable

if.end:                                           ; preds = %entry
  ret void
}

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main() #4 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @_Z12createThreadv()
  ret i32 0
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt6thread8joinableEv(%"class.std::thread"* noundef nonnull align 8 dereferenceable(8) %this) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::thread"*, align 8
  %agg.tmp = alloca %"class.std::thread::id", align 8
  %agg.tmp2 = alloca %"class.std::thread::id", align 8
  store %"class.std::thread"* %this, %"class.std::thread"** %this.addr, align 8
  %this1 = load %"class.std::thread"*, %"class.std::thread"** %this.addr, align 8
  %_M_id = getelementptr inbounds %"class.std::thread", %"class.std::thread"* %this1, i32 0, i32 0
  %0 = bitcast %"class.std::thread::id"* %agg.tmp to i8*
  %1 = bitcast %"class.std::thread::id"* %_M_id to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 8, i1 false)
  call void @_ZNSt6thread2idC2Ev(%"class.std::thread::id"* noundef nonnull align 8 dereferenceable(8) %agg.tmp2) #12
  %coerce.dive = getelementptr inbounds %"class.std::thread::id", %"class.std::thread::id"* %agg.tmp, i32 0, i32 0
  %2 = load i64, i64* %coerce.dive, align 8
  %coerce.dive3 = getelementptr inbounds %"class.std::thread::id", %"class.std::thread::id"* %agg.tmp2, i32 0, i32 0
  %3 = load i64, i64* %coerce.dive3, align 8
  %call = call noundef zeroext i1 @_ZSteqNSt6thread2idES0_(i64 %2, i64 %3) #12
  %lnot = xor i1 %call, true
  ret i1 %lnot
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZSteqNSt6thread2idES0_(i64 %__x.coerce, i64 %__y.coerce) #5 comdat {
entry:
  %__x = alloca %"class.std::thread::id", align 8
  %__y = alloca %"class.std::thread::id", align 8
  %coerce.dive = getelementptr inbounds %"class.std::thread::id", %"class.std::thread::id"* %__x, i32 0, i32 0
  store i64 %__x.coerce, i64* %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.std::thread::id", %"class.std::thread::id"* %__y, i32 0, i32 0
  store i64 %__y.coerce, i64* %coerce.dive1, align 8
  %_M_thread = getelementptr inbounds %"class.std::thread::id", %"class.std::thread::id"* %__x, i32 0, i32 0
  %0 = load i64, i64* %_M_thread, align 8
  %_M_thread2 = getelementptr inbounds %"class.std::thread::id", %"class.std::thread::id"* %__y, i32 0, i32 0
  %1 = load i64, i64* %_M_thread2, align 8
  %cmp = icmp eq i64 %0, %1
  ret i1 %cmp
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6thread2idC2Ev(%"class.std::thread::id"* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::thread::id"*, align 8
  store %"class.std::thread::id"* %this, %"class.std::thread::id"** %this.addr, align 8
  %this1 = load %"class.std::thread::id"*, %"class.std::thread::id"** %this.addr, align 8
  %_M_thread = getelementptr inbounds %"class.std::thread::id", %"class.std::thread::id"* %this1, i32 0, i32 0
  store i64 0, i64* %_M_thread, align 8
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @_ZSt9terminatev() #7

declare dso_local void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(%"class.std::thread"* noundef nonnull align 8 dereferenceable(8), %"class.std::unique_ptr"* noundef, void ()* noundef) #1

; Function Attrs: nobuiltin allocsize(0)
declare dso_local noundef nonnull i8* @_Znwm(i64 noundef) #8

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull void (i32*)* @_ZSt7forwardIRFvPiEEOT_RNSt16remove_referenceIS3_E4typeE(void (i32*)* noundef nonnull %__t) #5 comdat {
entry:
  %__t.addr = alloca void (i32*)*, align 8
  store void (i32*)* %__t, void (i32*)** %__t.addr, align 8
  %0 = load void (i32*)*, void (i32*)** %__t.addr, align 8
  ret void (i32*)* %0
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) i32** @_ZSt7forwardIPiEOT_RNSt16remove_referenceIS1_E4typeE(i32** noundef nonnull align 8 dereferenceable(8) %__t) #5 comdat {
entry:
  %__t.addr = alloca i32**, align 8
  store i32** %__t, i32*** %__t.addr, align 8
  %0 = load i32**, i32*** %__t.addr, align 8
  ret i32** %0
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPiES3_EEEEEC2IJRS4_S3_EEEDpOT_(%"struct.std::thread::_State_impl"* noundef nonnull align 8 dereferenceable(24) %this, void (i32*)* noundef nonnull %__args, i32** noundef nonnull align 8 dereferenceable(8) %__args1) unnamed_addr #2 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"struct.std::thread::_State_impl"*, align 8
  %__args.addr = alloca void (i32*)*, align 8
  %__args.addr2 = alloca i32**, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"struct.std::thread::_State_impl"* %this, %"struct.std::thread::_State_impl"** %this.addr, align 8
  store void (i32*)* %__args, void (i32*)** %__args.addr, align 8
  store i32** %__args1, i32*** %__args.addr2, align 8
  %this3 = load %"struct.std::thread::_State_impl"*, %"struct.std::thread::_State_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::thread::_State_impl"* %this3 to %"struct.std::thread::_State"*
  call void @_ZNSt6thread6_StateC2Ev(%"struct.std::thread::_State"* noundef nonnull align 8 dereferenceable(8) %0) #12
  %1 = bitcast %"struct.std::thread::_State_impl"* %this3 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPiES3_EEEEEE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8
  %_M_func = getelementptr inbounds %"struct.std::thread::_State_impl", %"struct.std::thread::_State_impl"* %this3, i32 0, i32 1
  %2 = load void (i32*)*, void (i32*)** %__args.addr, align 8
  %call = call noundef nonnull void (i32*)* @_ZSt7forwardIRFvPiEEOT_RNSt16remove_referenceIS3_E4typeE(void (i32*)* noundef nonnull %2) #12
  %3 = load i32**, i32*** %__args.addr2, align 8
  %call4 = call noundef nonnull align 8 dereferenceable(8) i32** @_ZSt7forwardIPiEOT_RNSt16remove_referenceIS1_E4typeE(i32** noundef nonnull align 8 dereferenceable(8) %3) #12
  invoke void @_ZNSt6thread8_InvokerISt5tupleIJPFvPiES2_EEEC2IJRS3_S2_EEEDpOT_(%"struct.std::thread::_Invoker"* noundef nonnull align 8 dereferenceable(16) %_M_func, void (i32*)* noundef nonnull %call, i32** noundef nonnull align 8 dereferenceable(8) %call4)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  ret void

lpad:                                             ; preds = %entry
  %4 = landingpad { i8*, i32 }
          cleanup
  %5 = extractvalue { i8*, i32 } %4, 0
  store i8* %5, i8** %exn.slot, align 8
  %6 = extractvalue { i8*, i32 } %4, 1
  store i32 %6, i32* %ehselector.slot, align 4
  %7 = bitcast %"struct.std::thread::_State_impl"* %this3 to %"struct.std::thread::_State"*
  call void @_ZNSt6thread6_StateD2Ev(%"struct.std::thread::_State"* noundef nonnull align 8 dereferenceable(8) %7) #12
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val5 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val5
}

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8* noundef) #9

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EEC2IS3_vEEPS1_(%"class.std::unique_ptr"* noundef nonnull align 8 dereferenceable(8) %this, %"struct.std::thread::_State"* noundef %__p) unnamed_addr #3 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::unique_ptr"*, align 8
  %__p.addr = alloca %"struct.std::thread::_State"*, align 8
  store %"class.std::unique_ptr"* %this, %"class.std::unique_ptr"** %this.addr, align 8
  store %"struct.std::thread::_State"* %__p, %"struct.std::thread::_State"** %__p.addr, align 8
  %this1 = load %"class.std::unique_ptr"*, %"class.std::unique_ptr"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"class.std::unique_ptr", %"class.std::unique_ptr"* %this1, i32 0, i32 0
  %0 = load %"struct.std::thread::_State"*, %"struct.std::thread::_State"** %__p.addr, align 8
  invoke void @_ZNSt15__uniq_ptr_dataINSt6thread6_StateESt14default_deleteIS1_ELb1ELb1EECI2St15__uniq_ptr_implIS1_S3_EEPS1_(%"struct.std::__uniq_ptr_data"* noundef nonnull align 8 dereferenceable(8) %_M_t, %"struct.std::thread::_State"* noundef %0)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  ret void

terminate.lpad:                                   ; preds = %entry
  %1 = landingpad { i8*, i32 }
          catch i8* null
  %2 = extractvalue { i8*, i32 } %1, 0
  call void @__clang_call_terminate(i8* %2) #15
  unreachable
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6thread24_M_thread_deps_never_runEv() #0 comdat align 2 {
entry:
  call void bitcast (i32 (i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*)* @pthread_create to void ()*)()
  call void bitcast (i32 (i64, i8**)* @pthread_join to void ()*)()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED2Ev(%"class.std::unique_ptr"* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #3 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::unique_ptr"*, align 8
  %__ptr = alloca %"struct.std::thread::_State"**, align 8
  store %"class.std::unique_ptr"* %this, %"class.std::unique_ptr"** %this.addr, align 8
  %this1 = load %"class.std::unique_ptr"*, %"class.std::unique_ptr"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"class.std::unique_ptr", %"class.std::unique_ptr"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::__uniq_ptr_data"* %_M_t to %"class.std::__uniq_ptr_impl"*
  %call = call noundef nonnull align 8 dereferenceable(8) %"struct.std::thread::_State"** @_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE6_M_ptrEv(%"class.std::__uniq_ptr_impl"* noundef nonnull align 8 dereferenceable(8) %0) #12
  store %"struct.std::thread::_State"** %call, %"struct.std::thread::_State"*** %__ptr, align 8
  %1 = load %"struct.std::thread::_State"**, %"struct.std::thread::_State"*** %__ptr, align 8
  %2 = load %"struct.std::thread::_State"*, %"struct.std::thread::_State"** %1, align 8
  %cmp = icmp ne %"struct.std::thread::_State"* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call noundef nonnull align 1 dereferenceable(1) %"struct.std::default_delete"* @_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EE11get_deleterEv(%"class.std::unique_ptr"* noundef nonnull align 8 dereferenceable(8) %this1) #12
  %3 = load %"struct.std::thread::_State"**, %"struct.std::thread::_State"*** %__ptr, align 8
  %call3 = call noundef nonnull align 8 dereferenceable(8) %"struct.std::thread::_State"** @_ZSt4moveIRPNSt6thread6_StateEEONSt16remove_referenceIT_E4typeEOS5_(%"struct.std::thread::_State"** noundef nonnull align 8 dereferenceable(8) %3) #12
  %4 = load %"struct.std::thread::_State"*, %"struct.std::thread::_State"** %call3, align 8
  invoke void @_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_(%"struct.std::default_delete"* noundef nonnull align 1 dereferenceable(1) %call2, %"struct.std::thread::_State"* noundef %4)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %if.then
  br label %if.end

if.end:                                           ; preds = %invoke.cont, %entry
  %5 = load %"struct.std::thread::_State"**, %"struct.std::thread::_State"*** %__ptr, align 8
  store %"struct.std::thread::_State"* null, %"struct.std::thread::_State"** %5, align 8
  ret void

terminate.lpad:                                   ; preds = %if.then
  %6 = landingpad { i8*, i32 }
          catch i8* null
  %7 = extractvalue { i8*, i32 } %6, 0
  call void @__clang_call_terminate(i8* %7) #15
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6thread6_StateC2Ev(%"struct.std::thread::_State"* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::thread::_State"*, align 8
  store %"struct.std::thread::_State"* %this, %"struct.std::thread::_State"** %this.addr, align 8
  %this1 = load %"struct.std::thread::_State"*, %"struct.std::thread::_State"** %this.addr, align 8
  %0 = bitcast %"struct.std::thread::_State"* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVNSt6thread6_StateE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %0, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6thread8_InvokerISt5tupleIJPFvPiES2_EEEC2IJRS3_S2_EEEDpOT_(%"struct.std::thread::_Invoker"* noundef nonnull align 8 dereferenceable(16) %this, void (i32*)* noundef nonnull %__args, i32** noundef nonnull align 8 dereferenceable(8) %__args1) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::thread::_Invoker"*, align 8
  %__args.addr = alloca void (i32*)*, align 8
  %__args.addr2 = alloca i32**, align 8
  store %"struct.std::thread::_Invoker"* %this, %"struct.std::thread::_Invoker"** %this.addr, align 8
  store void (i32*)* %__args, void (i32*)** %__args.addr, align 8
  store i32** %__args1, i32*** %__args.addr2, align 8
  %this3 = load %"struct.std::thread::_Invoker"*, %"struct.std::thread::_Invoker"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"struct.std::thread::_Invoker", %"struct.std::thread::_Invoker"* %this3, i32 0, i32 0
  %0 = load void (i32*)*, void (i32*)** %__args.addr, align 8
  %call = call noundef nonnull void (i32*)* @_ZSt7forwardIRFvPiEEOT_RNSt16remove_referenceIS3_E4typeE(void (i32*)* noundef nonnull %0) #12
  %1 = load i32**, i32*** %__args.addr2, align 8
  %call4 = call noundef nonnull align 8 dereferenceable(8) i32** @_ZSt7forwardIPiEOT_RNSt16remove_referenceIS1_E4typeE(i32** noundef nonnull align 8 dereferenceable(8) %1) #12
  call void @_ZNSt5tupleIJPFvPiES0_EEC2IRS1_S0_Lb1EEEOT_OT0_(%"class.std::tuple.2"* noundef nonnull align 8 dereferenceable(16) %_M_t, void (i32*)* noundef nonnull %call, i32** noundef nonnull align 8 dereferenceable(8) %call4) #12
  ret void
}

; Function Attrs: nounwind
declare dso_local void @_ZNSt6thread6_StateD2Ev(%"struct.std::thread::_State"* noundef nonnull align 8 dereferenceable(8)) unnamed_addr #10

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPiES3_EEEEED2Ev(%"struct.std::thread::_State_impl"* noundef nonnull align 8 dereferenceable(24) %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::thread::_State_impl"*, align 8
  store %"struct.std::thread::_State_impl"* %this, %"struct.std::thread::_State_impl"** %this.addr, align 8
  %this1 = load %"struct.std::thread::_State_impl"*, %"struct.std::thread::_State_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::thread::_State_impl"* %this1 to %"struct.std::thread::_State"*
  call void @_ZNSt6thread6_StateD2Ev(%"struct.std::thread::_State"* noundef nonnull align 8 dereferenceable(8) %0) #12
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPiES3_EEEEED0Ev(%"struct.std::thread::_State_impl"* noundef nonnull align 8 dereferenceable(24) %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::thread::_State_impl"*, align 8
  store %"struct.std::thread::_State_impl"* %this, %"struct.std::thread::_State_impl"** %this.addr, align 8
  %this1 = load %"struct.std::thread::_State_impl"*, %"struct.std::thread::_State_impl"** %this.addr, align 8
  call void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPiES3_EEEEED2Ev(%"struct.std::thread::_State_impl"* noundef nonnull align 8 dereferenceable(24) %this1) #12
  %0 = bitcast %"struct.std::thread::_State_impl"* %this1 to i8*
  call void @_ZdlPv(i8* noundef %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPiES3_EEEEE6_M_runEv(%"struct.std::thread::_State_impl"* noundef nonnull align 8 dereferenceable(24) %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::thread::_State_impl"*, align 8
  store %"struct.std::thread::_State_impl"* %this, %"struct.std::thread::_State_impl"** %this.addr, align 8
  %this1 = load %"struct.std::thread::_State_impl"*, %"struct.std::thread::_State_impl"** %this.addr, align 8
  %_M_func = getelementptr inbounds %"struct.std::thread::_State_impl", %"struct.std::thread::_State_impl"* %this1, i32 0, i32 1
  call void @_ZNSt6thread8_InvokerISt5tupleIJPFvPiES2_EEEclEv(%"struct.std::thread::_Invoker"* noundef nonnull align 8 dereferenceable(16) %_M_func)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt5tupleIJPFvPiES0_EEC2IRS1_S0_Lb1EEEOT_OT0_(%"class.std::tuple.2"* noundef nonnull align 8 dereferenceable(16) %this, void (i32*)* noundef nonnull %__a1, i32** noundef nonnull align 8 dereferenceable(8) %__a2) unnamed_addr #3 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::tuple.2"*, align 8
  %__a1.addr = alloca void (i32*)*, align 8
  %__a2.addr = alloca i32**, align 8
  store %"class.std::tuple.2"* %this, %"class.std::tuple.2"** %this.addr, align 8
  store void (i32*)* %__a1, void (i32*)** %__a1.addr, align 8
  store i32** %__a2, i32*** %__a2.addr, align 8
  %this1 = load %"class.std::tuple.2"*, %"class.std::tuple.2"** %this.addr, align 8
  %0 = bitcast %"class.std::tuple.2"* %this1 to %"struct.std::_Tuple_impl.3"*
  %1 = load void (i32*)*, void (i32*)** %__a1.addr, align 8
  %call = call noundef nonnull void (i32*)* @_ZSt7forwardIRFvPiEEOT_RNSt16remove_referenceIS3_E4typeE(void (i32*)* noundef nonnull %1) #12
  %2 = load i32**, i32*** %__a2.addr, align 8
  %call2 = call noundef nonnull align 8 dereferenceable(8) i32** @_ZSt7forwardIPiEOT_RNSt16remove_referenceIS1_E4typeE(i32** noundef nonnull align 8 dereferenceable(8) %2) #12
  invoke void @_ZNSt11_Tuple_implILm0EJPFvPiES0_EEC2IRS1_JS0_EvEEOT_DpOT0_(%"struct.std::_Tuple_impl.3"* noundef nonnull align 8 dereferenceable(16) %0, void (i32*)* noundef nonnull %call, i32** noundef nonnull align 8 dereferenceable(8) %call2)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  ret void

terminate.lpad:                                   ; preds = %entry
  %3 = landingpad { i8*, i32 }
          catch i8* null
  %4 = extractvalue { i8*, i32 } %3, 0
  call void @__clang_call_terminate(i8* %4) #15
  unreachable
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt11_Tuple_implILm0EJPFvPiES0_EEC2IRS1_JS0_EvEEOT_DpOT0_(%"struct.std::_Tuple_impl.3"* noundef nonnull align 8 dereferenceable(16) %this, void (i32*)* noundef nonnull %__head, i32** noundef nonnull align 8 dereferenceable(8) %__tail) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Tuple_impl.3"*, align 8
  %__head.addr = alloca void (i32*)*, align 8
  %__tail.addr = alloca i32**, align 8
  %ref.tmp = alloca void (i32*)*, align 8
  store %"struct.std::_Tuple_impl.3"* %this, %"struct.std::_Tuple_impl.3"** %this.addr, align 8
  store void (i32*)* %__head, void (i32*)** %__head.addr, align 8
  store i32** %__tail, i32*** %__tail.addr, align 8
  %this1 = load %"struct.std::_Tuple_impl.3"*, %"struct.std::_Tuple_impl.3"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Tuple_impl.3"* %this1 to %"struct.std::_Tuple_impl.4"*
  %1 = load i32**, i32*** %__tail.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) i32** @_ZSt7forwardIPiEOT_RNSt16remove_referenceIS1_E4typeE(i32** noundef nonnull align 8 dereferenceable(8) %1) #12
  call void @_ZNSt11_Tuple_implILm1EJPiEEC2IS0_EEOT_(%"struct.std::_Tuple_impl.4"* noundef nonnull align 8 dereferenceable(8) %0, i32** noundef nonnull align 8 dereferenceable(8) %call)
  %2 = bitcast %"struct.std::_Tuple_impl.3"* %this1 to i8*
  %3 = getelementptr inbounds i8, i8* %2, i64 8
  %4 = bitcast i8* %3 to %"struct.std::_Head_base.6"*
  %5 = load void (i32*)*, void (i32*)** %__head.addr, align 8
  %call2 = call noundef nonnull void (i32*)* @_ZSt7forwardIRFvPiEEOT_RNSt16remove_referenceIS3_E4typeE(void (i32*)* noundef nonnull %5) #12
  store void (i32*)* %call2, void (i32*)** %ref.tmp, align 8
  call void @_ZNSt10_Head_baseILm0EPFvPiELb0EEC2ERKS2_(%"struct.std::_Head_base.6"* noundef nonnull align 8 dereferenceable(8) %4, void (i32*)** noundef nonnull align 8 dereferenceable(8) %ref.tmp)
  ret void
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %0) #11 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #12
  call void @_ZSt9terminatev() #15
  unreachable
}

declare dso_local i8* @__cxa_begin_catch(i8*)

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt11_Tuple_implILm1EJPiEEC2IS0_EEOT_(%"struct.std::_Tuple_impl.4"* noundef nonnull align 8 dereferenceable(8) %this, i32** noundef nonnull align 8 dereferenceable(8) %__head) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Tuple_impl.4"*, align 8
  %__head.addr = alloca i32**, align 8
  store %"struct.std::_Tuple_impl.4"* %this, %"struct.std::_Tuple_impl.4"** %this.addr, align 8
  store i32** %__head, i32*** %__head.addr, align 8
  %this1 = load %"struct.std::_Tuple_impl.4"*, %"struct.std::_Tuple_impl.4"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Tuple_impl.4"* %this1 to %"struct.std::_Head_base.5"*
  %1 = load i32**, i32*** %__head.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) i32** @_ZSt7forwardIPiEOT_RNSt16remove_referenceIS1_E4typeE(i32** noundef nonnull align 8 dereferenceable(8) %1) #12
  call void @_ZNSt10_Head_baseILm1EPiLb0EEC2IS0_EEOT_(%"struct.std::_Head_base.5"* noundef nonnull align 8 dereferenceable(8) %0, i32** noundef nonnull align 8 dereferenceable(8) %call)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt10_Head_baseILm0EPFvPiELb0EEC2ERKS2_(%"struct.std::_Head_base.6"* noundef nonnull align 8 dereferenceable(8) %this, void (i32*)** noundef nonnull align 8 dereferenceable(8) %__h) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Head_base.6"*, align 8
  %__h.addr = alloca void (i32*)**, align 8
  store %"struct.std::_Head_base.6"* %this, %"struct.std::_Head_base.6"** %this.addr, align 8
  store void (i32*)** %__h, void (i32*)*** %__h.addr, align 8
  %this1 = load %"struct.std::_Head_base.6"*, %"struct.std::_Head_base.6"** %this.addr, align 8
  %_M_head_impl = getelementptr inbounds %"struct.std::_Head_base.6", %"struct.std::_Head_base.6"* %this1, i32 0, i32 0
  %0 = load void (i32*)**, void (i32*)*** %__h.addr, align 8
  %1 = load void (i32*)*, void (i32*)** %0, align 8
  store void (i32*)* %1, void (i32*)** %_M_head_impl, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt10_Head_baseILm1EPiLb0EEC2IS0_EEOT_(%"struct.std::_Head_base.5"* noundef nonnull align 8 dereferenceable(8) %this, i32** noundef nonnull align 8 dereferenceable(8) %__h) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Head_base.5"*, align 8
  %__h.addr = alloca i32**, align 8
  store %"struct.std::_Head_base.5"* %this, %"struct.std::_Head_base.5"** %this.addr, align 8
  store i32** %__h, i32*** %__h.addr, align 8
  %this1 = load %"struct.std::_Head_base.5"*, %"struct.std::_Head_base.5"** %this.addr, align 8
  %_M_head_impl = getelementptr inbounds %"struct.std::_Head_base.5", %"struct.std::_Head_base.5"* %this1, i32 0, i32 0
  %0 = load i32**, i32*** %__h.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) i32** @_ZSt7forwardIPiEOT_RNSt16remove_referenceIS1_E4typeE(i32** noundef nonnull align 8 dereferenceable(8) %0) #12
  %1 = load i32*, i32** %call, align 8
  store i32* %1, i32** %_M_head_impl, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6thread8_InvokerISt5tupleIJPFvPiES2_EEEclEv(%"struct.std::thread::_Invoker"* noundef nonnull align 8 dereferenceable(16) %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::thread::_Invoker"*, align 8
  %agg.tmp = alloca %"struct.std::_Index_tuple", align 1
  store %"struct.std::thread::_Invoker"* %this, %"struct.std::thread::_Invoker"** %this.addr, align 8
  %this1 = load %"struct.std::thread::_Invoker"*, %"struct.std::thread::_Invoker"** %this.addr, align 8
  call void @_ZNSt6thread8_InvokerISt5tupleIJPFvPiES2_EEE9_M_invokeIJLm0ELm1EEEEvSt12_Index_tupleIJXspT_EEE(%"struct.std::thread::_Invoker"* noundef nonnull align 8 dereferenceable(16) %this1)
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6thread8_InvokerISt5tupleIJPFvPiES2_EEE9_M_invokeIJLm0ELm1EEEEvSt12_Index_tupleIJXspT_EEE(%"struct.std::thread::_Invoker"* noundef nonnull align 8 dereferenceable(16) %this) #0 comdat align 2 {
entry:
  %0 = alloca %"struct.std::_Index_tuple", align 1
  %this.addr = alloca %"struct.std::thread::_Invoker"*, align 8
  store %"struct.std::thread::_Invoker"* %this, %"struct.std::thread::_Invoker"** %this.addr, align 8
  %this1 = load %"struct.std::thread::_Invoker"*, %"struct.std::thread::_Invoker"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"struct.std::thread::_Invoker", %"struct.std::thread::_Invoker"* %this1, i32 0, i32 0
  %call = call noundef nonnull align 8 dereferenceable(16) %"class.std::tuple.2"* @_ZSt4moveIRSt5tupleIJPFvPiES1_EEEONSt16remove_referenceIT_E4typeEOS7_(%"class.std::tuple.2"* noundef nonnull align 8 dereferenceable(16) %_M_t) #12
  %call2 = call noundef nonnull align 8 dereferenceable(8) void (i32*)** @_ZSt3getILm0EJPFvPiES0_EEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOS7_(%"class.std::tuple.2"* noundef nonnull align 8 dereferenceable(16) %call) #12
  %_M_t3 = getelementptr inbounds %"struct.std::thread::_Invoker", %"struct.std::thread::_Invoker"* %this1, i32 0, i32 0
  %call4 = call noundef nonnull align 8 dereferenceable(16) %"class.std::tuple.2"* @_ZSt4moveIRSt5tupleIJPFvPiES1_EEEONSt16remove_referenceIT_E4typeEOS7_(%"class.std::tuple.2"* noundef nonnull align 8 dereferenceable(16) %_M_t3) #12
  %call5 = call noundef nonnull align 8 dereferenceable(8) i32** @_ZSt3getILm1EJPFvPiES0_EEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOS7_(%"class.std::tuple.2"* noundef nonnull align 8 dereferenceable(16) %call4) #12
  call void @_ZSt8__invokeIPFvPiEJS0_EENSt15__invoke_resultIT_JDpT0_EE4typeEOS4_DpOS5_(void (i32*)** noundef nonnull align 8 dereferenceable(8) %call2, i32** noundef nonnull align 8 dereferenceable(8) %call5)
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt8__invokeIPFvPiEJS0_EENSt15__invoke_resultIT_JDpT0_EE4typeEOS4_DpOS5_(void (i32*)** noundef nonnull align 8 dereferenceable(8) %__fn, i32** noundef nonnull align 8 dereferenceable(8) %__args) #0 comdat {
entry:
  %__fn.addr = alloca void (i32*)**, align 8
  %__args.addr = alloca i32**, align 8
  %agg.tmp = alloca %"struct.std::__invoke_other", align 1
  store void (i32*)** %__fn, void (i32*)*** %__fn.addr, align 8
  store i32** %__args, i32*** %__args.addr, align 8
  %0 = load void (i32*)**, void (i32*)*** %__fn.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) void (i32*)** @_ZSt7forwardIPFvPiEEOT_RNSt16remove_referenceIS3_E4typeE(void (i32*)** noundef nonnull align 8 dereferenceable(8) %0) #12
  %1 = load i32**, i32*** %__args.addr, align 8
  %call1 = call noundef nonnull align 8 dereferenceable(8) i32** @_ZSt7forwardIPiEOT_RNSt16remove_referenceIS1_E4typeE(i32** noundef nonnull align 8 dereferenceable(8) %1) #12
  call void @_ZSt13__invoke_implIvPFvPiEJS0_EET_St14__invoke_otherOT0_DpOT1_(void (i32*)** noundef nonnull align 8 dereferenceable(8) %call, i32** noundef nonnull align 8 dereferenceable(8) %call1)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) void (i32*)** @_ZSt3getILm0EJPFvPiES0_EEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOS7_(%"class.std::tuple.2"* noundef nonnull align 8 dereferenceable(16) %__t) #5 comdat {
entry:
  %__t.addr = alloca %"class.std::tuple.2"*, align 8
  store %"class.std::tuple.2"* %__t, %"class.std::tuple.2"** %__t.addr, align 8
  %0 = load %"class.std::tuple.2"*, %"class.std::tuple.2"** %__t.addr, align 8
  %1 = bitcast %"class.std::tuple.2"* %0 to %"struct.std::_Tuple_impl.3"*
  %call = call noundef nonnull align 8 dereferenceable(8) void (i32*)** @_ZSt12__get_helperILm0EPFvPiEJS0_EERT0_RSt11_Tuple_implIXT_EJS3_DpT1_EE(%"struct.std::_Tuple_impl.3"* noundef nonnull align 8 dereferenceable(16) %1) #12
  %call1 = call noundef nonnull align 8 dereferenceable(8) void (i32*)** @_ZSt7forwardIPFvPiEEOT_RNSt16remove_referenceIS3_E4typeE(void (i32*)** noundef nonnull align 8 dereferenceable(8) %call) #12
  ret void (i32*)** %call1
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) %"class.std::tuple.2"* @_ZSt4moveIRSt5tupleIJPFvPiES1_EEEONSt16remove_referenceIT_E4typeEOS7_(%"class.std::tuple.2"* noundef nonnull align 8 dereferenceable(16) %__t) #5 comdat {
entry:
  %__t.addr = alloca %"class.std::tuple.2"*, align 8
  store %"class.std::tuple.2"* %__t, %"class.std::tuple.2"** %__t.addr, align 8
  %0 = load %"class.std::tuple.2"*, %"class.std::tuple.2"** %__t.addr, align 8
  ret %"class.std::tuple.2"* %0
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) i32** @_ZSt3getILm1EJPFvPiES0_EEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOS7_(%"class.std::tuple.2"* noundef nonnull align 8 dereferenceable(16) %__t) #5 comdat {
entry:
  %__t.addr = alloca %"class.std::tuple.2"*, align 8
  store %"class.std::tuple.2"* %__t, %"class.std::tuple.2"** %__t.addr, align 8
  %0 = load %"class.std::tuple.2"*, %"class.std::tuple.2"** %__t.addr, align 8
  %1 = bitcast %"class.std::tuple.2"* %0 to %"struct.std::_Tuple_impl.4"*
  %call = call noundef nonnull align 8 dereferenceable(8) i32** @_ZSt12__get_helperILm1EPiJEERT0_RSt11_Tuple_implIXT_EJS1_DpT1_EE(%"struct.std::_Tuple_impl.4"* noundef nonnull align 8 dereferenceable(8) %1) #12
  %call1 = call noundef nonnull align 8 dereferenceable(8) i32** @_ZSt7forwardIPiEOT_RNSt16remove_referenceIS1_E4typeE(i32** noundef nonnull align 8 dereferenceable(8) %call) #12
  ret i32** %call1
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt13__invoke_implIvPFvPiEJS0_EET_St14__invoke_otherOT0_DpOT1_(void (i32*)** noundef nonnull align 8 dereferenceable(8) %__f, i32** noundef nonnull align 8 dereferenceable(8) %__args) #0 comdat {
entry:
  %0 = alloca %"struct.std::__invoke_other", align 1
  %__f.addr = alloca void (i32*)**, align 8
  %__args.addr = alloca i32**, align 8
  store void (i32*)** %__f, void (i32*)*** %__f.addr, align 8
  store i32** %__args, i32*** %__args.addr, align 8
  %1 = load void (i32*)**, void (i32*)*** %__f.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) void (i32*)** @_ZSt7forwardIPFvPiEEOT_RNSt16remove_referenceIS3_E4typeE(void (i32*)** noundef nonnull align 8 dereferenceable(8) %1) #12
  %2 = load void (i32*)*, void (i32*)** %call, align 8
  %3 = load i32**, i32*** %__args.addr, align 8
  %call1 = call noundef nonnull align 8 dereferenceable(8) i32** @_ZSt7forwardIPiEOT_RNSt16remove_referenceIS1_E4typeE(i32** noundef nonnull align 8 dereferenceable(8) %3) #12
  %4 = load i32*, i32** %call1, align 8
  call void %2(i32* noundef %4)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) void (i32*)** @_ZSt7forwardIPFvPiEEOT_RNSt16remove_referenceIS3_E4typeE(void (i32*)** noundef nonnull align 8 dereferenceable(8) %__t) #5 comdat {
entry:
  %__t.addr = alloca void (i32*)**, align 8
  store void (i32*)** %__t, void (i32*)*** %__t.addr, align 8
  %0 = load void (i32*)**, void (i32*)*** %__t.addr, align 8
  ret void (i32*)** %0
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) void (i32*)** @_ZSt12__get_helperILm0EPFvPiEJS0_EERT0_RSt11_Tuple_implIXT_EJS3_DpT1_EE(%"struct.std::_Tuple_impl.3"* noundef nonnull align 8 dereferenceable(16) %__t) #5 comdat {
entry:
  %__t.addr = alloca %"struct.std::_Tuple_impl.3"*, align 8
  store %"struct.std::_Tuple_impl.3"* %__t, %"struct.std::_Tuple_impl.3"** %__t.addr, align 8
  %0 = load %"struct.std::_Tuple_impl.3"*, %"struct.std::_Tuple_impl.3"** %__t.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) void (i32*)** @_ZNSt11_Tuple_implILm0EJPFvPiES0_EE7_M_headERS3_(%"struct.std::_Tuple_impl.3"* noundef nonnull align 8 dereferenceable(16) %0) #12
  ret void (i32*)** %call
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) void (i32*)** @_ZNSt11_Tuple_implILm0EJPFvPiES0_EE7_M_headERS3_(%"struct.std::_Tuple_impl.3"* noundef nonnull align 8 dereferenceable(16) %__t) #5 comdat align 2 {
entry:
  %__t.addr = alloca %"struct.std::_Tuple_impl.3"*, align 8
  store %"struct.std::_Tuple_impl.3"* %__t, %"struct.std::_Tuple_impl.3"** %__t.addr, align 8
  %0 = load %"struct.std::_Tuple_impl.3"*, %"struct.std::_Tuple_impl.3"** %__t.addr, align 8
  %1 = bitcast %"struct.std::_Tuple_impl.3"* %0 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 8
  %2 = bitcast i8* %add.ptr to %"struct.std::_Head_base.6"*
  %call = call noundef nonnull align 8 dereferenceable(8) void (i32*)** @_ZNSt10_Head_baseILm0EPFvPiELb0EE7_M_headERS3_(%"struct.std::_Head_base.6"* noundef nonnull align 8 dereferenceable(8) %2) #12
  ret void (i32*)** %call
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) void (i32*)** @_ZNSt10_Head_baseILm0EPFvPiELb0EE7_M_headERS3_(%"struct.std::_Head_base.6"* noundef nonnull align 8 dereferenceable(8) %__b) #5 comdat align 2 {
entry:
  %__b.addr = alloca %"struct.std::_Head_base.6"*, align 8
  store %"struct.std::_Head_base.6"* %__b, %"struct.std::_Head_base.6"** %__b.addr, align 8
  %0 = load %"struct.std::_Head_base.6"*, %"struct.std::_Head_base.6"** %__b.addr, align 8
  %_M_head_impl = getelementptr inbounds %"struct.std::_Head_base.6", %"struct.std::_Head_base.6"* %0, i32 0, i32 0
  ret void (i32*)** %_M_head_impl
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) i32** @_ZSt12__get_helperILm1EPiJEERT0_RSt11_Tuple_implIXT_EJS1_DpT1_EE(%"struct.std::_Tuple_impl.4"* noundef nonnull align 8 dereferenceable(8) %__t) #5 comdat {
entry:
  %__t.addr = alloca %"struct.std::_Tuple_impl.4"*, align 8
  store %"struct.std::_Tuple_impl.4"* %__t, %"struct.std::_Tuple_impl.4"** %__t.addr, align 8
  %0 = load %"struct.std::_Tuple_impl.4"*, %"struct.std::_Tuple_impl.4"** %__t.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) i32** @_ZNSt11_Tuple_implILm1EJPiEE7_M_headERS1_(%"struct.std::_Tuple_impl.4"* noundef nonnull align 8 dereferenceable(8) %0) #12
  ret i32** %call
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) i32** @_ZNSt11_Tuple_implILm1EJPiEE7_M_headERS1_(%"struct.std::_Tuple_impl.4"* noundef nonnull align 8 dereferenceable(8) %__t) #5 comdat align 2 {
entry:
  %__t.addr = alloca %"struct.std::_Tuple_impl.4"*, align 8
  store %"struct.std::_Tuple_impl.4"* %__t, %"struct.std::_Tuple_impl.4"** %__t.addr, align 8
  %0 = load %"struct.std::_Tuple_impl.4"*, %"struct.std::_Tuple_impl.4"** %__t.addr, align 8
  %1 = bitcast %"struct.std::_Tuple_impl.4"* %0 to %"struct.std::_Head_base.5"*
  %call = call noundef nonnull align 8 dereferenceable(8) i32** @_ZNSt10_Head_baseILm1EPiLb0EE7_M_headERS1_(%"struct.std::_Head_base.5"* noundef nonnull align 8 dereferenceable(8) %1) #12
  ret i32** %call
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) i32** @_ZNSt10_Head_baseILm1EPiLb0EE7_M_headERS1_(%"struct.std::_Head_base.5"* noundef nonnull align 8 dereferenceable(8) %__b) #5 comdat align 2 {
entry:
  %__b.addr = alloca %"struct.std::_Head_base.5"*, align 8
  store %"struct.std::_Head_base.5"* %__b, %"struct.std::_Head_base.5"** %__b.addr, align 8
  %0 = load %"struct.std::_Head_base.5"*, %"struct.std::_Head_base.5"** %__b.addr, align 8
  %_M_head_impl = getelementptr inbounds %"struct.std::_Head_base.5", %"struct.std::_Head_base.5"* %0, i32 0, i32 0
  ret i32** %_M_head_impl
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt15__uniq_ptr_dataINSt6thread6_StateESt14default_deleteIS1_ELb1ELb1EECI2St15__uniq_ptr_implIS1_S3_EEPS1_(%"struct.std::__uniq_ptr_data"* noundef nonnull align 8 dereferenceable(8) %this, %"struct.std::thread::_State"* noundef %0) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::__uniq_ptr_data"*, align 8
  %.addr = alloca %"struct.std::thread::_State"*, align 8
  store %"struct.std::__uniq_ptr_data"* %this, %"struct.std::__uniq_ptr_data"** %this.addr, align 8
  store %"struct.std::thread::_State"* %0, %"struct.std::thread::_State"** %.addr, align 8
  %this1 = load %"struct.std::__uniq_ptr_data"*, %"struct.std::__uniq_ptr_data"** %this.addr, align 8
  %1 = bitcast %"struct.std::__uniq_ptr_data"* %this1 to %"class.std::__uniq_ptr_impl"*
  %2 = load %"struct.std::thread::_State"*, %"struct.std::thread::_State"** %.addr, align 8
  call void @_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EEC2EPS1_(%"class.std::__uniq_ptr_impl"* noundef nonnull align 8 dereferenceable(8) %1, %"struct.std::thread::_State"* noundef %2)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EEC2EPS1_(%"class.std::__uniq_ptr_impl"* noundef nonnull align 8 dereferenceable(8) %this, %"struct.std::thread::_State"* noundef %__p) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__uniq_ptr_impl"*, align 8
  %__p.addr = alloca %"struct.std::thread::_State"*, align 8
  store %"class.std::__uniq_ptr_impl"* %this, %"class.std::__uniq_ptr_impl"** %this.addr, align 8
  store %"struct.std::thread::_State"* %__p, %"struct.std::thread::_State"** %__p.addr, align 8
  %this1 = load %"class.std::__uniq_ptr_impl"*, %"class.std::__uniq_ptr_impl"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"class.std::__uniq_ptr_impl", %"class.std::__uniq_ptr_impl"* %this1, i32 0, i32 0
  call void @_ZNSt5tupleIJPNSt6thread6_StateESt14default_deleteIS1_EEEC2ILb1ELb1EEEv(%"class.std::tuple"* noundef nonnull align 8 dereferenceable(8) %_M_t) #12
  %0 = load %"struct.std::thread::_State"*, %"struct.std::thread::_State"** %__p.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) %"struct.std::thread::_State"** @_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE6_M_ptrEv(%"class.std::__uniq_ptr_impl"* noundef nonnull align 8 dereferenceable(8) %this1) #12
  store %"struct.std::thread::_State"* %0, %"struct.std::thread::_State"** %call, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt5tupleIJPNSt6thread6_StateESt14default_deleteIS1_EEEC2ILb1ELb1EEEv(%"class.std::tuple"* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #3 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::tuple"*, align 8
  store %"class.std::tuple"* %this, %"class.std::tuple"** %this.addr, align 8
  %this1 = load %"class.std::tuple"*, %"class.std::tuple"** %this.addr, align 8
  %0 = bitcast %"class.std::tuple"* %this1 to %"struct.std::_Tuple_impl"*
  invoke void @_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEEC2Ev(%"struct.std::_Tuple_impl"* noundef nonnull align 8 dereferenceable(8) %0)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  ret void

terminate.lpad:                                   ; preds = %entry
  %1 = landingpad { i8*, i32 }
          catch i8* null
  %2 = extractvalue { i8*, i32 } %1, 0
  call void @__clang_call_terminate(i8* %2) #15
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) %"struct.std::thread::_State"** @_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE6_M_ptrEv(%"class.std::__uniq_ptr_impl"* noundef nonnull align 8 dereferenceable(8) %this) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__uniq_ptr_impl"*, align 8
  store %"class.std::__uniq_ptr_impl"* %this, %"class.std::__uniq_ptr_impl"** %this.addr, align 8
  %this1 = load %"class.std::__uniq_ptr_impl"*, %"class.std::__uniq_ptr_impl"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"class.std::__uniq_ptr_impl", %"class.std::__uniq_ptr_impl"* %this1, i32 0, i32 0
  %call = call noundef nonnull align 8 dereferenceable(8) %"struct.std::thread::_State"** @_ZSt3getILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_(%"class.std::tuple"* noundef nonnull align 8 dereferenceable(8) %_M_t) #12
  ret %"struct.std::thread::_State"** %call
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEEC2Ev(%"struct.std::_Tuple_impl"* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Tuple_impl"*, align 8
  store %"struct.std::_Tuple_impl"* %this, %"struct.std::_Tuple_impl"** %this.addr, align 8
  %this1 = load %"struct.std::_Tuple_impl"*, %"struct.std::_Tuple_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Tuple_impl"* %this1 to %"struct.std::_Tuple_impl.0"*
  call void @_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEEC2Ev(%"struct.std::_Tuple_impl.0"* noundef nonnull align 1 dereferenceable(1) %0)
  %1 = bitcast %"struct.std::_Tuple_impl"* %this1 to %"struct.std::_Head_base.1"*
  call void @_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EEC2Ev(%"struct.std::_Head_base.1"* noundef nonnull align 8 dereferenceable(8) %1)
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEEC2Ev(%"struct.std::_Tuple_impl.0"* noundef nonnull align 1 dereferenceable(1) %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Tuple_impl.0"*, align 8
  store %"struct.std::_Tuple_impl.0"* %this, %"struct.std::_Tuple_impl.0"** %this.addr, align 8
  %this1 = load %"struct.std::_Tuple_impl.0"*, %"struct.std::_Tuple_impl.0"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Tuple_impl.0"* %this1 to %"struct.std::_Head_base"*
  call void @_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EEC2Ev(%"struct.std::_Head_base"* noundef nonnull align 1 dereferenceable(1) %0)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EEC2Ev(%"struct.std::_Head_base.1"* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Head_base.1"*, align 8
  store %"struct.std::_Head_base.1"* %this, %"struct.std::_Head_base.1"** %this.addr, align 8
  %this1 = load %"struct.std::_Head_base.1"*, %"struct.std::_Head_base.1"** %this.addr, align 8
  %_M_head_impl = getelementptr inbounds %"struct.std::_Head_base.1", %"struct.std::_Head_base.1"* %this1, i32 0, i32 0
  store %"struct.std::thread::_State"* null, %"struct.std::thread::_State"** %_M_head_impl, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EEC2Ev(%"struct.std::_Head_base"* noundef nonnull align 1 dereferenceable(1) %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Head_base"*, align 8
  store %"struct.std::_Head_base"* %this, %"struct.std::_Head_base"** %this.addr, align 8
  %this1 = load %"struct.std::_Head_base"*, %"struct.std::_Head_base"** %this.addr, align 8
  %_M_head_impl = bitcast %"struct.std::_Head_base"* %this1 to %"struct.std::default_delete"*
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) %"struct.std::thread::_State"** @_ZSt3getILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_(%"class.std::tuple"* noundef nonnull align 8 dereferenceable(8) %__t) #5 comdat {
entry:
  %__t.addr = alloca %"class.std::tuple"*, align 8
  store %"class.std::tuple"* %__t, %"class.std::tuple"** %__t.addr, align 8
  %0 = load %"class.std::tuple"*, %"class.std::tuple"** %__t.addr, align 8
  %1 = bitcast %"class.std::tuple"* %0 to %"struct.std::_Tuple_impl"*
  %call = call noundef nonnull align 8 dereferenceable(8) %"struct.std::thread::_State"** @_ZSt12__get_helperILm0EPNSt6thread6_StateEJSt14default_deleteIS1_EEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE(%"struct.std::_Tuple_impl"* noundef nonnull align 8 dereferenceable(8) %1) #12
  ret %"struct.std::thread::_State"** %call
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) %"struct.std::thread::_State"** @_ZSt12__get_helperILm0EPNSt6thread6_StateEJSt14default_deleteIS1_EEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE(%"struct.std::_Tuple_impl"* noundef nonnull align 8 dereferenceable(8) %__t) #5 comdat {
entry:
  %__t.addr = alloca %"struct.std::_Tuple_impl"*, align 8
  store %"struct.std::_Tuple_impl"* %__t, %"struct.std::_Tuple_impl"** %__t.addr, align 8
  %0 = load %"struct.std::_Tuple_impl"*, %"struct.std::_Tuple_impl"** %__t.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) %"struct.std::thread::_State"** @_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEE7_M_headERS5_(%"struct.std::_Tuple_impl"* noundef nonnull align 8 dereferenceable(8) %0) #12
  ret %"struct.std::thread::_State"** %call
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) %"struct.std::thread::_State"** @_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEE7_M_headERS5_(%"struct.std::_Tuple_impl"* noundef nonnull align 8 dereferenceable(8) %__t) #5 comdat align 2 {
entry:
  %__t.addr = alloca %"struct.std::_Tuple_impl"*, align 8
  store %"struct.std::_Tuple_impl"* %__t, %"struct.std::_Tuple_impl"** %__t.addr, align 8
  %0 = load %"struct.std::_Tuple_impl"*, %"struct.std::_Tuple_impl"** %__t.addr, align 8
  %1 = bitcast %"struct.std::_Tuple_impl"* %0 to %"struct.std::_Head_base.1"*
  %call = call noundef nonnull align 8 dereferenceable(8) %"struct.std::thread::_State"** @_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EE7_M_headERS3_(%"struct.std::_Head_base.1"* noundef nonnull align 8 dereferenceable(8) %1) #12
  ret %"struct.std::thread::_State"** %call
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) %"struct.std::thread::_State"** @_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EE7_M_headERS3_(%"struct.std::_Head_base.1"* noundef nonnull align 8 dereferenceable(8) %__b) #5 comdat align 2 {
entry:
  %__b.addr = alloca %"struct.std::_Head_base.1"*, align 8
  store %"struct.std::_Head_base.1"* %__b, %"struct.std::_Head_base.1"** %__b.addr, align 8
  %0 = load %"struct.std::_Head_base.1"*, %"struct.std::_Head_base.1"** %__b.addr, align 8
  %_M_head_impl = getelementptr inbounds %"struct.std::_Head_base.1", %"struct.std::_Head_base.1"* %0, i32 0, i32 0
  ret %"struct.std::thread::_State"** %_M_head_impl
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_create(i64* noundef, %union.pthread_attr_t* noundef, i8* (i8*)* noundef, i8* noundef) #10

declare dso_local i32 @pthread_join(i64 noundef, i8** noundef) #1

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) %"struct.std::default_delete"* @_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EE11get_deleterEv(%"class.std::unique_ptr"* noundef nonnull align 8 dereferenceable(8) %this) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::unique_ptr"*, align 8
  store %"class.std::unique_ptr"* %this, %"class.std::unique_ptr"** %this.addr, align 8
  %this1 = load %"class.std::unique_ptr"*, %"class.std::unique_ptr"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"class.std::unique_ptr", %"class.std::unique_ptr"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::__uniq_ptr_data"* %_M_t to %"class.std::__uniq_ptr_impl"*
  %call = call noundef nonnull align 1 dereferenceable(1) %"struct.std::default_delete"* @_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE10_M_deleterEv(%"class.std::__uniq_ptr_impl"* noundef nonnull align 8 dereferenceable(8) %0) #12
  ret %"struct.std::default_delete"* %call
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_(%"struct.std::default_delete"* noundef nonnull align 1 dereferenceable(1) %this, %"struct.std::thread::_State"* noundef %__ptr) #5 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::default_delete"*, align 8
  %__ptr.addr = alloca %"struct.std::thread::_State"*, align 8
  store %"struct.std::default_delete"* %this, %"struct.std::default_delete"** %this.addr, align 8
  store %"struct.std::thread::_State"* %__ptr, %"struct.std::thread::_State"** %__ptr.addr, align 8
  %this1 = load %"struct.std::default_delete"*, %"struct.std::default_delete"** %this.addr, align 8
  %0 = load %"struct.std::thread::_State"*, %"struct.std::thread::_State"** %__ptr.addr, align 8
  %isnull = icmp eq %"struct.std::thread::_State"* %0, null
  br i1 %isnull, label %delete.end, label %delete.notnull

delete.notnull:                                   ; preds = %entry
  %1 = bitcast %"struct.std::thread::_State"* %0 to void (%"struct.std::thread::_State"*)***
  %vtable = load void (%"struct.std::thread::_State"*)**, void (%"struct.std::thread::_State"*)*** %1, align 8
  %vfn = getelementptr inbounds void (%"struct.std::thread::_State"*)*, void (%"struct.std::thread::_State"*)** %vtable, i64 1
  %2 = load void (%"struct.std::thread::_State"*)*, void (%"struct.std::thread::_State"*)** %vfn, align 8
  call void %2(%"struct.std::thread::_State"* noundef nonnull align 8 dereferenceable(8) %0) #12
  br label %delete.end

delete.end:                                       ; preds = %delete.notnull, %entry
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) %"struct.std::thread::_State"** @_ZSt4moveIRPNSt6thread6_StateEEONSt16remove_referenceIT_E4typeEOS5_(%"struct.std::thread::_State"** noundef nonnull align 8 dereferenceable(8) %__t) #5 comdat {
entry:
  %__t.addr = alloca %"struct.std::thread::_State"**, align 8
  store %"struct.std::thread::_State"** %__t, %"struct.std::thread::_State"*** %__t.addr, align 8
  %0 = load %"struct.std::thread::_State"**, %"struct.std::thread::_State"*** %__t.addr, align 8
  ret %"struct.std::thread::_State"** %0
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) %"struct.std::default_delete"* @_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE10_M_deleterEv(%"class.std::__uniq_ptr_impl"* noundef nonnull align 8 dereferenceable(8) %this) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__uniq_ptr_impl"*, align 8
  store %"class.std::__uniq_ptr_impl"* %this, %"class.std::__uniq_ptr_impl"** %this.addr, align 8
  %this1 = load %"class.std::__uniq_ptr_impl"*, %"class.std::__uniq_ptr_impl"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"class.std::__uniq_ptr_impl", %"class.std::__uniq_ptr_impl"* %this1, i32 0, i32 0
  %call = call noundef nonnull align 1 dereferenceable(1) %"struct.std::default_delete"* @_ZSt3getILm1EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_(%"class.std::tuple"* noundef nonnull align 8 dereferenceable(8) %_M_t) #12
  ret %"struct.std::default_delete"* %call
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) %"struct.std::default_delete"* @_ZSt3getILm1EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_(%"class.std::tuple"* noundef nonnull align 8 dereferenceable(8) %__t) #5 comdat {
entry:
  %__t.addr = alloca %"class.std::tuple"*, align 8
  store %"class.std::tuple"* %__t, %"class.std::tuple"** %__t.addr, align 8
  %0 = load %"class.std::tuple"*, %"class.std::tuple"** %__t.addr, align 8
  %1 = bitcast %"class.std::tuple"* %0 to %"struct.std::_Tuple_impl.0"*
  %call = call noundef nonnull align 1 dereferenceable(1) %"struct.std::default_delete"* @_ZSt12__get_helperILm1ESt14default_deleteINSt6thread6_StateEEJEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE(%"struct.std::_Tuple_impl.0"* noundef nonnull align 1 dereferenceable(1) %1) #12
  ret %"struct.std::default_delete"* %call
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) %"struct.std::default_delete"* @_ZSt12__get_helperILm1ESt14default_deleteINSt6thread6_StateEEJEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE(%"struct.std::_Tuple_impl.0"* noundef nonnull align 1 dereferenceable(1) %__t) #5 comdat {
entry:
  %__t.addr = alloca %"struct.std::_Tuple_impl.0"*, align 8
  store %"struct.std::_Tuple_impl.0"* %__t, %"struct.std::_Tuple_impl.0"** %__t.addr, align 8
  %0 = load %"struct.std::_Tuple_impl.0"*, %"struct.std::_Tuple_impl.0"** %__t.addr, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) %"struct.std::default_delete"* @_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEE7_M_headERS4_(%"struct.std::_Tuple_impl.0"* noundef nonnull align 1 dereferenceable(1) %0) #12
  ret %"struct.std::default_delete"* %call
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) %"struct.std::default_delete"* @_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEE7_M_headERS4_(%"struct.std::_Tuple_impl.0"* noundef nonnull align 1 dereferenceable(1) %__t) #5 comdat align 2 {
entry:
  %__t.addr = alloca %"struct.std::_Tuple_impl.0"*, align 8
  store %"struct.std::_Tuple_impl.0"* %__t, %"struct.std::_Tuple_impl.0"** %__t.addr, align 8
  %0 = load %"struct.std::_Tuple_impl.0"*, %"struct.std::_Tuple_impl.0"** %__t.addr, align 8
  %1 = bitcast %"struct.std::_Tuple_impl.0"* %0 to %"struct.std::_Head_base"*
  %call = call noundef nonnull align 1 dereferenceable(1) %"struct.std::default_delete"* @_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EE7_M_headERS4_(%"struct.std::_Head_base"* noundef nonnull align 1 dereferenceable(1) %1) #12
  ret %"struct.std::default_delete"* %call
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) %"struct.std::default_delete"* @_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EE7_M_headERS4_(%"struct.std::_Head_base"* noundef nonnull align 1 dereferenceable(1) %__b) #5 comdat align 2 {
entry:
  %__b.addr = alloca %"struct.std::_Head_base"*, align 8
  store %"struct.std::_Head_base"* %__b, %"struct.std::_Head_base"** %__b.addr, align 8
  %0 = load %"struct.std::_Head_base"*, %"struct.std::_Head_base"** %__b.addr, align 8
  %_M_head_impl = bitcast %"struct.std::_Head_base"* %0 to %"struct.std::default_delete"*
  ret %"struct.std::default_delete"* %_M_head_impl
}

attributes #0 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noinline noreturn nounwind }
attributes #12 = { nounwind }
attributes #13 = { builtin allocsize(0) }
attributes #14 = { builtin nounwind }
attributes #15 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
