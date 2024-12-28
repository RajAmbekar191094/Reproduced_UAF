; ModuleID = '/home/cs22mtech12008/Reproduced_UAF/Synthetic_bugs/Object_patterns/stack_param_by_ref_2.cpp'
source_filename = "/home/cs22mtech12008/Reproduced_UAF/Synthetic_bugs/Object_patterns/stack_param_by_ref_2.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::thread" = type { %"class.std::thread::id" }
%"class.std::thread::id" = type { i64 }
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
%"class.std::basic_istream" = type { i32 (...)**, i64, %"class.std::basic_ios" }
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

$_ZNSt6threadC2Ev = comdat any

$_ZNSt6threadD2Ev = comdat any

$_ZNSt6threadC2IRFvPiEJS1_EvEEOT_DpOT0_ = comdat any

$_ZNSt6threadaSEOS_ = comdat any

$_ZNSt6thread2idC2Ev = comdat any

$_ZNKSt6thread8joinableEv = comdat any

$_ZSteqNSt6thread2idES0_ = comdat any

$_ZNSt6thread4swapERS_ = comdat any

$_ZSt4swapINSt6thread2idEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_ = comdat any

$_ZSt4moveIRNSt6thread2idEEONSt16remove_referenceIT_E4typeEOS4_ = comdat any

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

@t1 = dso_local global %"class.std::thread" zeroinitializer, align 8, !dbg !0
@__dso_handle = external hidden global i8
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [15 x i8] c"Value of x is:\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@_ZSt3cin = external dso_local global %"class.std::basic_istream", align 8
@_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPiES3_EEEEEE = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPiES3_EEEEEE to i8*), i8* bitcast (void (%"struct.std::thread::_State_impl"*)* @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPiES3_EEEEED2Ev to i8*), i8* bitcast (void (%"struct.std::thread::_State_impl"*)* @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPiES3_EEEEED0Ev to i8*), i8* bitcast (void (%"struct.std::thread::_State_impl"*)* @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPiES3_EEEEE6_M_runEv to i8*)] }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external dso_local global i8*
@_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPiES3_EEEEEE = linkonce_odr dso_local constant [63 x i8] c"NSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPiES3_EEEEEE\00", comdat, align 1
@_ZTINSt6thread6_StateE = external dso_local constant i8*
@_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPiES3_EEEEEE = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPiES3_EEEEEE, i32 0, i32 0), i8* bitcast (i8** @_ZTINSt6thread6_StateE to i8*) }, comdat, align 8
@_ZTVNSt6thread6_StateE = external dso_local unnamed_addr constant { [5 x i8*] }, align 8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_stack_param_by_ref_2.cpp, i8* null }]

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" !dbg !2140 {
entry:
  call void @_ZNSt6threadC2Ev(%"class.std::thread"* noundef nonnull align 8 dereferenceable(8) @t1) #2, !dbg !2141
  %0 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::thread"*)* @_ZNSt6threadD2Ev to void (i8*)*), i8* bitcast (%"class.std::thread"* @t1 to i8*), i8* @__dso_handle) #2, !dbg !2143
  ret void, !dbg !2141
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6threadC2Ev(%"class.std::thread"* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #1 comdat align 2 !dbg !2144 {
entry:
  %this.addr = alloca %"class.std::thread"*, align 8
  store %"class.std::thread"* %this, %"class.std::thread"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::thread"** %this.addr, metadata !2145, metadata !DIExpression()), !dbg !2147
  %this1 = load %"class.std::thread"*, %"class.std::thread"** %this.addr, align 8
  %_M_id = getelementptr inbounds %"class.std::thread", %"class.std::thread"* %this1, i32 0, i32 0, !dbg !2148
  call void @_ZNSt6thread2idC2Ev(%"class.std::thread::id"* noundef nonnull align 8 dereferenceable(8) %_M_id) #2, !dbg !2148
  ret void, !dbg !2149
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6threadD2Ev(%"class.std::thread"* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #1 comdat align 2 !dbg !2150 {
entry:
  %this.addr = alloca %"class.std::thread"*, align 8
  store %"class.std::thread"* %this, %"class.std::thread"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::thread"** %this.addr, metadata !2151, metadata !DIExpression()), !dbg !2152
  %this1 = load %"class.std::thread"*, %"class.std::thread"** %this.addr, align 8
  %call = call noundef zeroext i1 @_ZNKSt6thread8joinableEv(%"class.std::thread"* noundef nonnull align 8 dereferenceable(8) %this1) #2, !dbg !2153
  br i1 %call, label %if.then, label %if.end, !dbg !2156

if.then:                                          ; preds = %entry
  call void @_ZSt9terminatev() #15, !dbg !2157
  unreachable, !dbg !2157

_ZSt11__terminatev.exit:                          ; No predecessors!
  unreachable, !dbg !2160

if.end:                                           ; preds = %entry
  ret void, !dbg !2161
}

; Function Attrs: nounwind
declare dso_local i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #2

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z11thread_funcPi(i32* noundef %x) #3 !dbg !2162 {
entry:
  %x.addr = alloca i32*, align 8
  store i32* %x, i32** %x.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %x.addr, metadata !2163, metadata !DIExpression()), !dbg !2164
  %call = call i32 @sleep(i32 noundef 2), !dbg !2165
  %call1 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !2166
  %0 = load i32*, i32** %x.addr, align 8, !dbg !2167
  %1 = load i32, i32* %0, align 4, !dbg !2168
  %call2 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %call1, i32 noundef %1), !dbg !2169
  %call3 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %call2, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !2170
  ret void, !dbg !2171
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #4

declare dso_local i32 @sleep(i32 noundef) #5

declare dso_local noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8), i8* noundef) #5

declare dso_local noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8), i32 noundef) #5

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main() #6 !dbg !2172 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  %x = alloca i32, align 4
  %ref.tmp = alloca %"class.std::thread", align 8
  %ref.tmp2 = alloca i32*, align 8
  %y = alloca i32, align 4
  %ref.tmp4 = alloca %"class.std::thread", align 8
  %ref.tmp5 = alloca i32*, align 8
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %a, metadata !2173, metadata !DIExpression()), !dbg !2174
  %call = call noundef nonnull align 8 dereferenceable(16) %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"* noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, i32* noundef nonnull align 4 dereferenceable(4) %a), !dbg !2175
  %0 = load i32, i32* %a, align 4, !dbg !2176
  %cmp = icmp eq i32 %0, 10, !dbg !2178
  br i1 %cmp, label %if.then, label %if.else, !dbg !2179

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %x, metadata !2180, metadata !DIExpression()), !dbg !2182
  store i32 10, i32* %x, align 4, !dbg !2182
  %call1 = call noundef nonnull align 8 dereferenceable(16) %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"* noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, i32* noundef nonnull align 4 dereferenceable(4) %x), !dbg !2183
  store i32* %x, i32** %ref.tmp2, align 8, !dbg !2184
  call void @_ZNSt6threadC2IRFvPiEJS1_EvEEOT_DpOT0_(%"class.std::thread"* noundef nonnull align 8 dereferenceable(8) %ref.tmp, void (i32*)* noundef nonnull @_Z11thread_funcPi, i32** noundef nonnull align 8 dereferenceable(8) %ref.tmp2), !dbg !2185
  %call3 = call noundef nonnull align 8 dereferenceable(8) %"class.std::thread"* @_ZNSt6threadaSEOS_(%"class.std::thread"* noundef nonnull align 8 dereferenceable(8) @t1, %"class.std::thread"* noundef nonnull align 8 dereferenceable(8) %ref.tmp) #2, !dbg !2186
  call void @_ZNSt6threadD2Ev(%"class.std::thread"* noundef nonnull align 8 dereferenceable(8) %ref.tmp) #2, !dbg !2187
  br label %if.end, !dbg !2188

if.else:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %y, metadata !2189, metadata !DIExpression()), !dbg !2191
  store i32 30, i32* %y, align 4, !dbg !2191
  store i32* %y, i32** %ref.tmp5, align 8, !dbg !2192
  call void @_ZNSt6threadC2IRFvPiEJS1_EvEEOT_DpOT0_(%"class.std::thread"* noundef nonnull align 8 dereferenceable(8) %ref.tmp4, void (i32*)* noundef nonnull @_Z11thread_funcPi, i32** noundef nonnull align 8 dereferenceable(8) %ref.tmp5), !dbg !2193
  %call6 = call noundef nonnull align 8 dereferenceable(8) %"class.std::thread"* @_ZNSt6threadaSEOS_(%"class.std::thread"* noundef nonnull align 8 dereferenceable(8) @t1, %"class.std::thread"* noundef nonnull align 8 dereferenceable(8) %ref.tmp4) #2, !dbg !2194
  call void @_ZNSt6threadD2Ev(%"class.std::thread"* noundef nonnull align 8 dereferenceable(8) %ref.tmp4) #2, !dbg !2195
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @_ZNSt6thread4joinEv(%"class.std::thread"* noundef nonnull align 8 dereferenceable(8) @t1), !dbg !2196
  %1 = load i32, i32* %retval, align 4, !dbg !2197
  ret i32 %1, !dbg !2197
}

declare dso_local noundef nonnull align 8 dereferenceable(16) %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"* noundef nonnull align 8 dereferenceable(16), i32* noundef nonnull align 4 dereferenceable(4)) #5

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6threadC2IRFvPiEJS1_EvEEOT_DpOT0_(%"class.std::thread"* noundef nonnull align 8 dereferenceable(8) %this, void (i32*)* noundef nonnull %__f, i32** noundef nonnull align 8 dereferenceable(8) %__args) unnamed_addr #7 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !2198 {
entry:
  %this.addr = alloca %"class.std::thread"*, align 8
  %__f.addr = alloca void (i32*)*, align 8
  %__args.addr = alloca i32**, align 8
  %agg.tmp = alloca %"class.std::unique_ptr", align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"class.std::thread"* %this, %"class.std::thread"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::thread"** %this.addr, metadata !2206, metadata !DIExpression()), !dbg !2207
  store void (i32*)* %__f, void (i32*)** %__f.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32*)** %__f.addr, metadata !2208, metadata !DIExpression()), !dbg !2209
  store i32** %__args, i32*** %__args.addr, align 8
  call void @llvm.dbg.declare(metadata i32*** %__args.addr, metadata !2210, metadata !DIExpression()), !dbg !2211
  %this1 = load %"class.std::thread"*, %"class.std::thread"** %this.addr, align 8
  %_M_id = getelementptr inbounds %"class.std::thread", %"class.std::thread"* %this1, i32 0, i32 0, !dbg !2212
  call void @_ZNSt6thread2idC2Ev(%"class.std::thread::id"* noundef nonnull align 8 dereferenceable(8) %_M_id) #2, !dbg !2212
  %call = call noalias noundef nonnull i8* @_Znwm(i64 noundef 24) #16, !dbg !2213, !heapallocsite !477
  %0 = bitcast i8* %call to %"struct.std::thread::_State_impl"*, !dbg !2213
  %1 = load void (i32*)*, void (i32*)** %__f.addr, align 8, !dbg !2215
  %call2 = call noundef nonnull void (i32*)* @_ZSt7forwardIRFvPiEEOT_RNSt16remove_referenceIS3_E4typeE(void (i32*)* noundef nonnull %1) #2, !dbg !2216
  %2 = load i32**, i32*** %__args.addr, align 8, !dbg !2217
  %call3 = call noundef nonnull align 8 dereferenceable(8) i32** @_ZSt7forwardIPiEOT_RNSt16remove_referenceIS1_E4typeE(i32** noundef nonnull align 8 dereferenceable(8) %2) #2, !dbg !2218
  invoke void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPiES3_EEEEEC2IJRS4_S3_EEEDpOT_(%"struct.std::thread::_State_impl"* noundef nonnull align 8 dereferenceable(24) %0, void (i32*)* noundef nonnull %call2, i32** noundef nonnull align 8 dereferenceable(8) %call3)
          to label %invoke.cont unwind label %lpad, !dbg !2219

invoke.cont:                                      ; preds = %entry
  %3 = bitcast %"struct.std::thread::_State_impl"* %0 to %"struct.std::thread::_State"*, !dbg !2213
  call void @_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EEC2IS3_vEEPS1_(%"class.std::unique_ptr"* noundef nonnull align 8 dereferenceable(8) %agg.tmp, %"struct.std::thread::_State"* noundef %3) #2, !dbg !2220
  invoke void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(%"class.std::thread"* noundef nonnull align 8 dereferenceable(8) %this1, %"class.std::unique_ptr"* noundef %agg.tmp, void ()* noundef @_ZNSt6thread24_M_thread_deps_never_runEv)
          to label %invoke.cont5 unwind label %lpad4, !dbg !2221

invoke.cont5:                                     ; preds = %invoke.cont
  call void @_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED2Ev(%"class.std::unique_ptr"* noundef nonnull align 8 dereferenceable(8) %agg.tmp) #2, !dbg !2221
  ret void, !dbg !2222

lpad:                                             ; preds = %entry
  %4 = landingpad { i8*, i32 }
          cleanup, !dbg !2223
  %5 = extractvalue { i8*, i32 } %4, 0, !dbg !2223
  store i8* %5, i8** %exn.slot, align 8, !dbg !2223
  %6 = extractvalue { i8*, i32 } %4, 1, !dbg !2223
  store i32 %6, i32* %ehselector.slot, align 4, !dbg !2223
  call void @_ZdlPv(i8* noundef %call) #17, !dbg !2213
  br label %eh.resume, !dbg !2213

lpad4:                                            ; preds = %invoke.cont
  %7 = landingpad { i8*, i32 }
          cleanup, !dbg !2223
  %8 = extractvalue { i8*, i32 } %7, 0, !dbg !2223
  store i8* %8, i8** %exn.slot, align 8, !dbg !2223
  %9 = extractvalue { i8*, i32 } %7, 1, !dbg !2223
  store i32 %9, i32* %ehselector.slot, align 4, !dbg !2223
  call void @_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED2Ev(%"class.std::unique_ptr"* noundef nonnull align 8 dereferenceable(8) %agg.tmp) #2, !dbg !2221
  br label %eh.resume, !dbg !2221

eh.resume:                                        ; preds = %lpad4, %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !2213
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !2213
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0, !dbg !2213
  %lpad.val6 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !2213
  resume { i8*, i32 } %lpad.val6, !dbg !2213
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) %"class.std::thread"* @_ZNSt6threadaSEOS_(%"class.std::thread"* noundef nonnull align 8 dereferenceable(8) %this, %"class.std::thread"* noundef nonnull align 8 dereferenceable(8) %__t) #8 comdat align 2 !dbg !2224 {
entry:
  %this.addr = alloca %"class.std::thread"*, align 8
  %__t.addr = alloca %"class.std::thread"*, align 8
  store %"class.std::thread"* %this, %"class.std::thread"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::thread"** %this.addr, metadata !2225, metadata !DIExpression()), !dbg !2226
  store %"class.std::thread"* %__t, %"class.std::thread"** %__t.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::thread"** %__t.addr, metadata !2227, metadata !DIExpression()), !dbg !2228
  %this1 = load %"class.std::thread"*, %"class.std::thread"** %this.addr, align 8
  %call = call noundef zeroext i1 @_ZNKSt6thread8joinableEv(%"class.std::thread"* noundef nonnull align 8 dereferenceable(8) %this1) #2, !dbg !2229
  br i1 %call, label %if.then, label %if.end, !dbg !2231

if.then:                                          ; preds = %entry
  call void @_ZSt9terminatev() #15, !dbg !2232
  unreachable, !dbg !2232

_ZSt11__terminatev.exit:                          ; No predecessors!
  unreachable, !dbg !2234

if.end:                                           ; preds = %entry
  %0 = load %"class.std::thread"*, %"class.std::thread"** %__t.addr, align 8, !dbg !2235
  call void @_ZNSt6thread4swapERS_(%"class.std::thread"* noundef nonnull align 8 dereferenceable(8) %this1, %"class.std::thread"* noundef nonnull align 8 dereferenceable(8) %0) #2, !dbg !2236
  ret %"class.std::thread"* %this1, !dbg !2237
}

declare dso_local void @_ZNSt6thread4joinEv(%"class.std::thread"* noundef nonnull align 8 dereferenceable(8)) #5

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6thread2idC2Ev(%"class.std::thread::id"* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #1 comdat align 2 !dbg !2238 {
entry:
  %this.addr = alloca %"class.std::thread::id"*, align 8
  store %"class.std::thread::id"* %this, %"class.std::thread::id"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::thread::id"** %this.addr, metadata !2239, metadata !DIExpression()), !dbg !2241
  %this1 = load %"class.std::thread::id"*, %"class.std::thread::id"** %this.addr, align 8
  %_M_thread = getelementptr inbounds %"class.std::thread::id", %"class.std::thread::id"* %this1, i32 0, i32 0, !dbg !2242
  store i64 0, i64* %_M_thread, align 8, !dbg !2242
  ret void, !dbg !2243
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt6thread8joinableEv(%"class.std::thread"* noundef nonnull align 8 dereferenceable(8) %this) #8 comdat align 2 !dbg !2244 {
entry:
  %this.addr = alloca %"class.std::thread"*, align 8
  %agg.tmp = alloca %"class.std::thread::id", align 8
  %agg.tmp2 = alloca %"class.std::thread::id", align 8
  store %"class.std::thread"* %this, %"class.std::thread"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::thread"** %this.addr, metadata !2245, metadata !DIExpression()), !dbg !2247
  %this1 = load %"class.std::thread"*, %"class.std::thread"** %this.addr, align 8
  %_M_id = getelementptr inbounds %"class.std::thread", %"class.std::thread"* %this1, i32 0, i32 0, !dbg !2248
  %0 = bitcast %"class.std::thread::id"* %agg.tmp to i8*, !dbg !2248
  %1 = bitcast %"class.std::thread::id"* %_M_id to i8*, !dbg !2248
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 8, i1 false), !dbg !2248
  call void @_ZNSt6thread2idC2Ev(%"class.std::thread::id"* noundef nonnull align 8 dereferenceable(8) %agg.tmp2) #2, !dbg !2249
  %coerce.dive = getelementptr inbounds %"class.std::thread::id", %"class.std::thread::id"* %agg.tmp, i32 0, i32 0, !dbg !2250
  %2 = load i64, i64* %coerce.dive, align 8, !dbg !2250
  %coerce.dive3 = getelementptr inbounds %"class.std::thread::id", %"class.std::thread::id"* %agg.tmp2, i32 0, i32 0, !dbg !2250
  %3 = load i64, i64* %coerce.dive3, align 8, !dbg !2250
  %call = call noundef zeroext i1 @_ZSteqNSt6thread2idES0_(i64 %2, i64 %3) #2, !dbg !2250
  %lnot = xor i1 %call, true, !dbg !2251
  ret i1 %lnot, !dbg !2252
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZSteqNSt6thread2idES0_(i64 %__x.coerce, i64 %__y.coerce) #8 comdat !dbg !2253 {
entry:
  %__x = alloca %"class.std::thread::id", align 8
  %__y = alloca %"class.std::thread::id", align 8
  %coerce.dive = getelementptr inbounds %"class.std::thread::id", %"class.std::thread::id"* %__x, i32 0, i32 0
  store i64 %__x.coerce, i64* %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.std::thread::id", %"class.std::thread::id"* %__y, i32 0, i32 0
  store i64 %__y.coerce, i64* %coerce.dive1, align 8
  call void @llvm.dbg.declare(metadata %"class.std::thread::id"* %__x, metadata !2256, metadata !DIExpression()), !dbg !2257
  call void @llvm.dbg.declare(metadata %"class.std::thread::id"* %__y, metadata !2258, metadata !DIExpression()), !dbg !2259
  %_M_thread = getelementptr inbounds %"class.std::thread::id", %"class.std::thread::id"* %__x, i32 0, i32 0, !dbg !2260
  %0 = load i64, i64* %_M_thread, align 8, !dbg !2260
  %_M_thread2 = getelementptr inbounds %"class.std::thread::id", %"class.std::thread::id"* %__y, i32 0, i32 0, !dbg !2261
  %1 = load i64, i64* %_M_thread2, align 8, !dbg !2261
  %cmp = icmp eq i64 %0, %1, !dbg !2262
  ret i1 %cmp, !dbg !2263
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: noreturn nounwind
declare dso_local void @_ZSt9terminatev() #10

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6thread4swapERS_(%"class.std::thread"* noundef nonnull align 8 dereferenceable(8) %this, %"class.std::thread"* noundef nonnull align 8 dereferenceable(8) %__t) #8 comdat align 2 !dbg !2264 {
entry:
  %this.addr = alloca %"class.std::thread"*, align 8
  %__t.addr = alloca %"class.std::thread"*, align 8
  store %"class.std::thread"* %this, %"class.std::thread"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::thread"** %this.addr, metadata !2265, metadata !DIExpression()), !dbg !2266
  store %"class.std::thread"* %__t, %"class.std::thread"** %__t.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::thread"** %__t.addr, metadata !2267, metadata !DIExpression()), !dbg !2268
  %this1 = load %"class.std::thread"*, %"class.std::thread"** %this.addr, align 8
  %_M_id = getelementptr inbounds %"class.std::thread", %"class.std::thread"* %this1, i32 0, i32 0, !dbg !2269
  %0 = load %"class.std::thread"*, %"class.std::thread"** %__t.addr, align 8, !dbg !2270
  %_M_id2 = getelementptr inbounds %"class.std::thread", %"class.std::thread"* %0, i32 0, i32 0, !dbg !2271
  call void @_ZSt4swapINSt6thread2idEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_(%"class.std::thread::id"* noundef nonnull align 8 dereferenceable(8) %_M_id, %"class.std::thread::id"* noundef nonnull align 8 dereferenceable(8) %_M_id2) #2, !dbg !2272
  ret void, !dbg !2273
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZSt4swapINSt6thread2idEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_(%"class.std::thread::id"* noundef nonnull align 8 dereferenceable(8) %__a, %"class.std::thread::id"* noundef nonnull align 8 dereferenceable(8) %__b) #8 comdat !dbg !2274 {
entry:
  %__a.addr = alloca %"class.std::thread::id"*, align 8
  %__b.addr = alloca %"class.std::thread::id"*, align 8
  %__tmp = alloca %"class.std::thread::id", align 8
  store %"class.std::thread::id"* %__a, %"class.std::thread::id"** %__a.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::thread::id"** %__a.addr, metadata !2285, metadata !DIExpression()), !dbg !2286
  store %"class.std::thread::id"* %__b, %"class.std::thread::id"** %__b.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::thread::id"** %__b.addr, metadata !2287, metadata !DIExpression()), !dbg !2288
  call void @llvm.dbg.declare(metadata %"class.std::thread::id"* %__tmp, metadata !2289, metadata !DIExpression()), !dbg !2290
  %0 = load %"class.std::thread::id"*, %"class.std::thread::id"** %__a.addr, align 8, !dbg !2291
  %call = call noundef nonnull align 8 dereferenceable(8) %"class.std::thread::id"* @_ZSt4moveIRNSt6thread2idEEONSt16remove_referenceIT_E4typeEOS4_(%"class.std::thread::id"* noundef nonnull align 8 dereferenceable(8) %0) #2, !dbg !2291
  %1 = bitcast %"class.std::thread::id"* %__tmp to i8*, !dbg !2291
  %2 = bitcast %"class.std::thread::id"* %call to i8*, !dbg !2291
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 8, i1 false), !dbg !2291
  %3 = load %"class.std::thread::id"*, %"class.std::thread::id"** %__b.addr, align 8, !dbg !2292
  %call1 = call noundef nonnull align 8 dereferenceable(8) %"class.std::thread::id"* @_ZSt4moveIRNSt6thread2idEEONSt16remove_referenceIT_E4typeEOS4_(%"class.std::thread::id"* noundef nonnull align 8 dereferenceable(8) %3) #2, !dbg !2292
  %4 = load %"class.std::thread::id"*, %"class.std::thread::id"** %__a.addr, align 8, !dbg !2293
  %5 = bitcast %"class.std::thread::id"* %4 to i8*, !dbg !2294
  %6 = bitcast %"class.std::thread::id"* %call1 to i8*, !dbg !2294
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 %6, i64 8, i1 false), !dbg !2294
  %call2 = call noundef nonnull align 8 dereferenceable(8) %"class.std::thread::id"* @_ZSt4moveIRNSt6thread2idEEONSt16remove_referenceIT_E4typeEOS4_(%"class.std::thread::id"* noundef nonnull align 8 dereferenceable(8) %__tmp) #2, !dbg !2295
  %7 = load %"class.std::thread::id"*, %"class.std::thread::id"** %__b.addr, align 8, !dbg !2296
  %8 = bitcast %"class.std::thread::id"* %7 to i8*, !dbg !2297
  %9 = bitcast %"class.std::thread::id"* %call2 to i8*, !dbg !2297
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 %9, i64 8, i1 false), !dbg !2297
  ret void, !dbg !2298
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) %"class.std::thread::id"* @_ZSt4moveIRNSt6thread2idEEONSt16remove_referenceIT_E4typeEOS4_(%"class.std::thread::id"* noundef nonnull align 8 dereferenceable(8) %__t) #8 comdat !dbg !2299 {
entry:
  %__t.addr = alloca %"class.std::thread::id"*, align 8
  store %"class.std::thread::id"* %__t, %"class.std::thread::id"** %__t.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::thread::id"** %__t.addr, metadata !2307, metadata !DIExpression()), !dbg !2308
  %0 = load %"class.std::thread::id"*, %"class.std::thread::id"** %__t.addr, align 8, !dbg !2309
  ret %"class.std::thread::id"* %0, !dbg !2310
}

declare dso_local void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(%"class.std::thread"* noundef nonnull align 8 dereferenceable(8), %"class.std::unique_ptr"* noundef, void ()* noundef) #5

; Function Attrs: nobuiltin allocsize(0)
declare dso_local noundef nonnull i8* @_Znwm(i64 noundef) #11

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull void (i32*)* @_ZSt7forwardIRFvPiEEOT_RNSt16remove_referenceIS3_E4typeE(void (i32*)* noundef nonnull %__t) #8 comdat !dbg !2311 {
entry:
  %__t.addr = alloca void (i32*)*, align 8
  store void (i32*)* %__t, void (i32*)** %__t.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32*)** %__t.addr, metadata !2319, metadata !DIExpression()), !dbg !2320
  %0 = load void (i32*)*, void (i32*)** %__t.addr, align 8, !dbg !2321
  ret void (i32*)* %0, !dbg !2322
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) i32** @_ZSt7forwardIPiEOT_RNSt16remove_referenceIS1_E4typeE(i32** noundef nonnull align 8 dereferenceable(8) %__t) #8 comdat !dbg !2323 {
entry:
  %__t.addr = alloca i32**, align 8
  store i32** %__t, i32*** %__t.addr, align 8
  call void @llvm.dbg.declare(metadata i32*** %__t.addr, metadata !2331, metadata !DIExpression()), !dbg !2332
  %0 = load i32**, i32*** %__t.addr, align 8, !dbg !2333
  ret i32** %0, !dbg !2334
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPiES3_EEEEEC2IJRS4_S3_EEEDpOT_(%"struct.std::thread::_State_impl"* noundef nonnull align 8 dereferenceable(24) %this, void (i32*)* noundef nonnull %__args, i32** noundef nonnull align 8 dereferenceable(8) %__args1) unnamed_addr #7 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !2335 {
entry:
  %this.addr = alloca %"struct.std::thread::_State_impl"*, align 8
  %__args.addr = alloca void (i32*)*, align 8
  %__args.addr2 = alloca i32**, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"struct.std::thread::_State_impl"* %this, %"struct.std::thread::_State_impl"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::thread::_State_impl"** %this.addr, metadata !2343, metadata !DIExpression()), !dbg !2345
  store void (i32*)* %__args, void (i32*)** %__args.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32*)** %__args.addr, metadata !2346, metadata !DIExpression()), !dbg !2347
  store i32** %__args1, i32*** %__args.addr2, align 8
  call void @llvm.dbg.declare(metadata i32*** %__args.addr2, metadata !2348, metadata !DIExpression()), !dbg !2347
  %this3 = load %"struct.std::thread::_State_impl"*, %"struct.std::thread::_State_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::thread::_State_impl"* %this3 to %"struct.std::thread::_State"*, !dbg !2349
  call void @_ZNSt6thread6_StateC2Ev(%"struct.std::thread::_State"* noundef nonnull align 8 dereferenceable(8) %0) #2, !dbg !2350
  %1 = bitcast %"struct.std::thread::_State_impl"* %this3 to i32 (...)***, !dbg !2349
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPiES3_EEEEEE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8, !dbg !2349
  %_M_func = getelementptr inbounds %"struct.std::thread::_State_impl", %"struct.std::thread::_State_impl"* %this3, i32 0, i32 1, !dbg !2351
  %2 = load void (i32*)*, void (i32*)** %__args.addr, align 8, !dbg !2352
  %call = call noundef nonnull void (i32*)* @_ZSt7forwardIRFvPiEEOT_RNSt16remove_referenceIS3_E4typeE(void (i32*)* noundef nonnull %2) #2, !dbg !2353
  %3 = load i32**, i32*** %__args.addr2, align 8, !dbg !2352
  %call4 = call noundef nonnull align 8 dereferenceable(8) i32** @_ZSt7forwardIPiEOT_RNSt16remove_referenceIS1_E4typeE(i32** noundef nonnull align 8 dereferenceable(8) %3) #2, !dbg !2353
  invoke void @_ZNSt6thread8_InvokerISt5tupleIJPFvPiES2_EEEC2IJRS3_S2_EEEDpOT_(%"struct.std::thread::_Invoker"* noundef nonnull align 8 dereferenceable(16) %_M_func, void (i32*)* noundef nonnull %call, i32** noundef nonnull align 8 dereferenceable(8) %call4)
          to label %invoke.cont unwind label %lpad, !dbg !2351

invoke.cont:                                      ; preds = %entry
  ret void, !dbg !2354

lpad:                                             ; preds = %entry
  %4 = landingpad { i8*, i32 }
          cleanup, !dbg !2354
  %5 = extractvalue { i8*, i32 } %4, 0, !dbg !2354
  store i8* %5, i8** %exn.slot, align 8, !dbg !2354
  %6 = extractvalue { i8*, i32 } %4, 1, !dbg !2354
  store i32 %6, i32* %ehselector.slot, align 4, !dbg !2354
  %7 = bitcast %"struct.std::thread::_State_impl"* %this3 to %"struct.std::thread::_State"*, !dbg !2355
  call void @_ZNSt6thread6_StateD2Ev(%"struct.std::thread::_State"* noundef nonnull align 8 dereferenceable(8) %7) #2, !dbg !2355
  br label %eh.resume, !dbg !2355

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !2355
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !2355
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0, !dbg !2355
  %lpad.val5 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !2355
  resume { i8*, i32 } %lpad.val5, !dbg !2355
}

declare dso_local i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8* noundef) #12

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EEC2IS3_vEEPS1_(%"class.std::unique_ptr"* noundef nonnull align 8 dereferenceable(8) %this, %"struct.std::thread::_State"* noundef %__p) unnamed_addr #1 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !2357 {
entry:
  %this.addr = alloca %"class.std::unique_ptr"*, align 8
  %__p.addr = alloca %"struct.std::thread::_State"*, align 8
  store %"class.std::unique_ptr"* %this, %"class.std::unique_ptr"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::unique_ptr"** %this.addr, metadata !2361, metadata !DIExpression()), !dbg !2363
  store %"struct.std::thread::_State"* %__p, %"struct.std::thread::_State"** %__p.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::thread::_State"** %__p.addr, metadata !2364, metadata !DIExpression()), !dbg !2365
  %this1 = load %"class.std::unique_ptr"*, %"class.std::unique_ptr"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"class.std::unique_ptr", %"class.std::unique_ptr"* %this1, i32 0, i32 0, !dbg !2366
  %0 = load %"struct.std::thread::_State"*, %"struct.std::thread::_State"** %__p.addr, align 8, !dbg !2367
  invoke void @_ZNSt15__uniq_ptr_dataINSt6thread6_StateESt14default_deleteIS1_ELb1ELb1EECI2St15__uniq_ptr_implIS1_S3_EEPS1_(%"struct.std::__uniq_ptr_data"* noundef nonnull align 8 dereferenceable(8) %_M_t, %"struct.std::thread::_State"* noundef %0)
          to label %invoke.cont unwind label %terminate.lpad, !dbg !2366

invoke.cont:                                      ; preds = %entry
  ret void, !dbg !2368

terminate.lpad:                                   ; preds = %entry
  %1 = landingpad { i8*, i32 }
          catch i8* null, !dbg !2366
  %2 = extractvalue { i8*, i32 } %1, 0, !dbg !2366
  call void @__clang_call_terminate(i8* %2) #15, !dbg !2366
  unreachable, !dbg !2366
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6thread24_M_thread_deps_never_runEv() #3 comdat align 2 !dbg !2369 {
entry:
  call void bitcast (i32 (i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*)* @pthread_create to void ()*)(), !dbg !2370
  call void bitcast (i32 (i64, i8**)* @pthread_join to void ()*)(), !dbg !2371
  ret void, !dbg !2372
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED2Ev(%"class.std::unique_ptr"* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #1 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !2373 {
entry:
  %this.addr = alloca %"class.std::unique_ptr"*, align 8
  %__ptr = alloca %"struct.std::thread::_State"**, align 8
  store %"class.std::unique_ptr"* %this, %"class.std::unique_ptr"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::unique_ptr"** %this.addr, metadata !2374, metadata !DIExpression()), !dbg !2375
  %this1 = load %"class.std::unique_ptr"*, %"class.std::unique_ptr"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::thread::_State"*** %__ptr, metadata !2376, metadata !DIExpression()), !dbg !2378
  %_M_t = getelementptr inbounds %"class.std::unique_ptr", %"class.std::unique_ptr"* %this1, i32 0, i32 0, !dbg !2379
  %0 = bitcast %"struct.std::__uniq_ptr_data"* %_M_t to %"class.std::__uniq_ptr_impl"*, !dbg !2379
  %call = call noundef nonnull align 8 dereferenceable(8) %"struct.std::thread::_State"** @_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE6_M_ptrEv(%"class.std::__uniq_ptr_impl"* noundef nonnull align 8 dereferenceable(8) %0) #2, !dbg !2380
  store %"struct.std::thread::_State"** %call, %"struct.std::thread::_State"*** %__ptr, align 8, !dbg !2378
  %1 = load %"struct.std::thread::_State"**, %"struct.std::thread::_State"*** %__ptr, align 8, !dbg !2381
  %2 = load %"struct.std::thread::_State"*, %"struct.std::thread::_State"** %1, align 8, !dbg !2381
  %cmp = icmp ne %"struct.std::thread::_State"* %2, null, !dbg !2383
  br i1 %cmp, label %if.then, label %if.end, !dbg !2384

if.then:                                          ; preds = %entry
  %call2 = call noundef nonnull align 1 dereferenceable(1) %"struct.std::default_delete"* @_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EE11get_deleterEv(%"class.std::unique_ptr"* noundef nonnull align 8 dereferenceable(8) %this1) #2, !dbg !2385
  %3 = load %"struct.std::thread::_State"**, %"struct.std::thread::_State"*** %__ptr, align 8, !dbg !2386
  %call3 = call noundef nonnull align 8 dereferenceable(8) %"struct.std::thread::_State"** @_ZSt4moveIRPNSt6thread6_StateEEONSt16remove_referenceIT_E4typeEOS5_(%"struct.std::thread::_State"** noundef nonnull align 8 dereferenceable(8) %3) #2, !dbg !2387
  %4 = load %"struct.std::thread::_State"*, %"struct.std::thread::_State"** %call3, align 8, !dbg !2387
  invoke void @_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_(%"struct.std::default_delete"* noundef nonnull align 1 dereferenceable(1) %call2, %"struct.std::thread::_State"* noundef %4)
          to label %invoke.cont unwind label %terminate.lpad, !dbg !2385

invoke.cont:                                      ; preds = %if.then
  br label %if.end, !dbg !2385

if.end:                                           ; preds = %invoke.cont, %entry
  %5 = load %"struct.std::thread::_State"**, %"struct.std::thread::_State"*** %__ptr, align 8, !dbg !2388
  store %"struct.std::thread::_State"* null, %"struct.std::thread::_State"** %5, align 8, !dbg !2389
  ret void, !dbg !2390

terminate.lpad:                                   ; preds = %if.then
  %6 = landingpad { i8*, i32 }
          catch i8* null, !dbg !2385
  %7 = extractvalue { i8*, i32 } %6, 0, !dbg !2385
  call void @__clang_call_terminate(i8* %7) #15, !dbg !2385
  unreachable, !dbg !2385
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6thread6_StateC2Ev(%"struct.std::thread::_State"* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #1 comdat align 2 !dbg !2391 {
entry:
  %this.addr = alloca %"struct.std::thread::_State"*, align 8
  store %"struct.std::thread::_State"* %this, %"struct.std::thread::_State"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::thread::_State"** %this.addr, metadata !2393, metadata !DIExpression()), !dbg !2394
  %this1 = load %"struct.std::thread::_State"*, %"struct.std::thread::_State"** %this.addr, align 8
  %0 = bitcast %"struct.std::thread::_State"* %this1 to i32 (...)***, !dbg !2395
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVNSt6thread6_StateE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %0, align 8, !dbg !2395
  ret void, !dbg !2395
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6thread8_InvokerISt5tupleIJPFvPiES2_EEEC2IJRS3_S2_EEEDpOT_(%"struct.std::thread::_Invoker"* noundef nonnull align 8 dereferenceable(16) %this, void (i32*)* noundef nonnull %__args, i32** noundef nonnull align 8 dereferenceable(8) %__args1) unnamed_addr #1 comdat align 2 !dbg !2396 {
entry:
  %this.addr = alloca %"struct.std::thread::_Invoker"*, align 8
  %__args.addr = alloca void (i32*)*, align 8
  %__args.addr2 = alloca i32**, align 8
  store %"struct.std::thread::_Invoker"* %this, %"struct.std::thread::_Invoker"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::thread::_Invoker"** %this.addr, metadata !2400, metadata !DIExpression()), !dbg !2402
  store void (i32*)* %__args, void (i32*)** %__args.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32*)** %__args.addr, metadata !2403, metadata !DIExpression()), !dbg !2404
  store i32** %__args1, i32*** %__args.addr2, align 8
  call void @llvm.dbg.declare(metadata i32*** %__args.addr2, metadata !2405, metadata !DIExpression()), !dbg !2404
  %this3 = load %"struct.std::thread::_Invoker"*, %"struct.std::thread::_Invoker"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"struct.std::thread::_Invoker", %"struct.std::thread::_Invoker"* %this3, i32 0, i32 0, !dbg !2406
  %0 = load void (i32*)*, void (i32*)** %__args.addr, align 8, !dbg !2407
  %call = call noundef nonnull void (i32*)* @_ZSt7forwardIRFvPiEEOT_RNSt16remove_referenceIS3_E4typeE(void (i32*)* noundef nonnull %0) #2, !dbg !2408
  %1 = load i32**, i32*** %__args.addr2, align 8, !dbg !2407
  %call4 = call noundef nonnull align 8 dereferenceable(8) i32** @_ZSt7forwardIPiEOT_RNSt16remove_referenceIS1_E4typeE(i32** noundef nonnull align 8 dereferenceable(8) %1) #2, !dbg !2408
  call void @_ZNSt5tupleIJPFvPiES0_EEC2IRS1_S0_Lb1EEEOT_OT0_(%"class.std::tuple.2"* noundef nonnull align 8 dereferenceable(16) %_M_t, void (i32*)* noundef nonnull %call, i32** noundef nonnull align 8 dereferenceable(8) %call4) #2, !dbg !2406
  ret void, !dbg !2409
}

; Function Attrs: nounwind
declare dso_local void @_ZNSt6thread6_StateD2Ev(%"struct.std::thread::_State"* noundef nonnull align 8 dereferenceable(8)) unnamed_addr #13

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPiES3_EEEEED2Ev(%"struct.std::thread::_State_impl"* noundef nonnull align 8 dereferenceable(24) %this) unnamed_addr #1 comdat align 2 !dbg !2410 {
entry:
  %this.addr = alloca %"struct.std::thread::_State_impl"*, align 8
  store %"struct.std::thread::_State_impl"* %this, %"struct.std::thread::_State_impl"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::thread::_State_impl"** %this.addr, metadata !2412, metadata !DIExpression()), !dbg !2413
  %this1 = load %"struct.std::thread::_State_impl"*, %"struct.std::thread::_State_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::thread::_State_impl"* %this1 to %"struct.std::thread::_State"*, !dbg !2414
  call void @_ZNSt6thread6_StateD2Ev(%"struct.std::thread::_State"* noundef nonnull align 8 dereferenceable(8) %0) #2, !dbg !2414
  ret void, !dbg !2416
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPiES3_EEEEED0Ev(%"struct.std::thread::_State_impl"* noundef nonnull align 8 dereferenceable(24) %this) unnamed_addr #1 comdat align 2 !dbg !2417 {
entry:
  %this.addr = alloca %"struct.std::thread::_State_impl"*, align 8
  store %"struct.std::thread::_State_impl"* %this, %"struct.std::thread::_State_impl"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::thread::_State_impl"** %this.addr, metadata !2418, metadata !DIExpression()), !dbg !2419
  %this1 = load %"struct.std::thread::_State_impl"*, %"struct.std::thread::_State_impl"** %this.addr, align 8
  call void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPiES3_EEEEED2Ev(%"struct.std::thread::_State_impl"* noundef nonnull align 8 dereferenceable(24) %this1) #2, !dbg !2420
  %0 = bitcast %"struct.std::thread::_State_impl"* %this1 to i8*, !dbg !2420
  call void @_ZdlPv(i8* noundef %0) #17, !dbg !2420
  ret void, !dbg !2420
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPiES3_EEEEE6_M_runEv(%"struct.std::thread::_State_impl"* noundef nonnull align 8 dereferenceable(24) %this) unnamed_addr #3 comdat align 2 !dbg !2421 {
entry:
  %this.addr = alloca %"struct.std::thread::_State_impl"*, align 8
  store %"struct.std::thread::_State_impl"* %this, %"struct.std::thread::_State_impl"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::thread::_State_impl"** %this.addr, metadata !2422, metadata !DIExpression()), !dbg !2423
  %this1 = load %"struct.std::thread::_State_impl"*, %"struct.std::thread::_State_impl"** %this.addr, align 8
  %_M_func = getelementptr inbounds %"struct.std::thread::_State_impl", %"struct.std::thread::_State_impl"* %this1, i32 0, i32 1, !dbg !2424
  call void @_ZNSt6thread8_InvokerISt5tupleIJPFvPiES2_EEEclEv(%"struct.std::thread::_Invoker"* noundef nonnull align 8 dereferenceable(16) %_M_func), !dbg !2424
  ret void, !dbg !2425
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt5tupleIJPFvPiES0_EEC2IRS1_S0_Lb1EEEOT_OT0_(%"class.std::tuple.2"* noundef nonnull align 8 dereferenceable(16) %this, void (i32*)* noundef nonnull %__a1, i32** noundef nonnull align 8 dereferenceable(8) %__a2) unnamed_addr #1 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !2426 {
entry:
  %this.addr = alloca %"class.std::tuple.2"*, align 8
  %__a1.addr = alloca void (i32*)*, align 8
  %__a2.addr = alloca i32**, align 8
  store %"class.std::tuple.2"* %this, %"class.std::tuple.2"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::tuple.2"** %this.addr, metadata !2434, metadata !DIExpression()), !dbg !2436
  store void (i32*)* %__a1, void (i32*)** %__a1.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32*)** %__a1.addr, metadata !2437, metadata !DIExpression()), !dbg !2438
  store i32** %__a2, i32*** %__a2.addr, align 8
  call void @llvm.dbg.declare(metadata i32*** %__a2.addr, metadata !2439, metadata !DIExpression()), !dbg !2440
  %this1 = load %"class.std::tuple.2"*, %"class.std::tuple.2"** %this.addr, align 8
  %0 = bitcast %"class.std::tuple.2"* %this1 to %"struct.std::_Tuple_impl.3"*, !dbg !2441
  %1 = load void (i32*)*, void (i32*)** %__a1.addr, align 8, !dbg !2442
  %call = call noundef nonnull void (i32*)* @_ZSt7forwardIRFvPiEEOT_RNSt16remove_referenceIS3_E4typeE(void (i32*)* noundef nonnull %1) #2, !dbg !2443
  %2 = load i32**, i32*** %__a2.addr, align 8, !dbg !2444
  %call2 = call noundef nonnull align 8 dereferenceable(8) i32** @_ZSt7forwardIPiEOT_RNSt16remove_referenceIS1_E4typeE(i32** noundef nonnull align 8 dereferenceable(8) %2) #2, !dbg !2445
  invoke void @_ZNSt11_Tuple_implILm0EJPFvPiES0_EEC2IRS1_JS0_EvEEOT_DpOT0_(%"struct.std::_Tuple_impl.3"* noundef nonnull align 8 dereferenceable(16) %0, void (i32*)* noundef nonnull %call, i32** noundef nonnull align 8 dereferenceable(8) %call2)
          to label %invoke.cont unwind label %terminate.lpad, !dbg !2446

invoke.cont:                                      ; preds = %entry
  ret void, !dbg !2447

terminate.lpad:                                   ; preds = %entry
  %3 = landingpad { i8*, i32 }
          catch i8* null, !dbg !2446
  %4 = extractvalue { i8*, i32 } %3, 0, !dbg !2446
  call void @__clang_call_terminate(i8* %4) #15, !dbg !2446
  unreachable, !dbg !2446
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt11_Tuple_implILm0EJPFvPiES0_EEC2IRS1_JS0_EvEEOT_DpOT0_(%"struct.std::_Tuple_impl.3"* noundef nonnull align 8 dereferenceable(16) %this, void (i32*)* noundef nonnull %__head, i32** noundef nonnull align 8 dereferenceable(8) %__tail) unnamed_addr #7 comdat align 2 !dbg !2448 {
entry:
  %this.addr = alloca %"struct.std::_Tuple_impl.3"*, align 8
  %__head.addr = alloca void (i32*)*, align 8
  %__tail.addr = alloca i32**, align 8
  %ref.tmp = alloca void (i32*)*, align 8
  store %"struct.std::_Tuple_impl.3"* %this, %"struct.std::_Tuple_impl.3"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Tuple_impl.3"** %this.addr, metadata !2455, metadata !DIExpression()), !dbg !2457
  store void (i32*)* %__head, void (i32*)** %__head.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32*)** %__head.addr, metadata !2458, metadata !DIExpression()), !dbg !2459
  store i32** %__tail, i32*** %__tail.addr, align 8
  call void @llvm.dbg.declare(metadata i32*** %__tail.addr, metadata !2460, metadata !DIExpression()), !dbg !2461
  %this1 = load %"struct.std::_Tuple_impl.3"*, %"struct.std::_Tuple_impl.3"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Tuple_impl.3"* %this1 to %"struct.std::_Tuple_impl.4"*, !dbg !2462
  %1 = load i32**, i32*** %__tail.addr, align 8, !dbg !2463
  %call = call noundef nonnull align 8 dereferenceable(8) i32** @_ZSt7forwardIPiEOT_RNSt16remove_referenceIS1_E4typeE(i32** noundef nonnull align 8 dereferenceable(8) %1) #2, !dbg !2464
  call void @_ZNSt11_Tuple_implILm1EJPiEEC2IS0_EEOT_(%"struct.std::_Tuple_impl.4"* noundef nonnull align 8 dereferenceable(8) %0, i32** noundef nonnull align 8 dereferenceable(8) %call), !dbg !2465
  %2 = bitcast %"struct.std::_Tuple_impl.3"* %this1 to i8*, !dbg !2462
  %3 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !2462
  %4 = bitcast i8* %3 to %"struct.std::_Head_base.6"*, !dbg !2462
  %5 = load void (i32*)*, void (i32*)** %__head.addr, align 8, !dbg !2466
  %call2 = call noundef nonnull void (i32*)* @_ZSt7forwardIRFvPiEEOT_RNSt16remove_referenceIS3_E4typeE(void (i32*)* noundef nonnull %5) #2, !dbg !2467
  store void (i32*)* %call2, void (i32*)** %ref.tmp, align 8, !dbg !2467
  call void @_ZNSt10_Head_baseILm0EPFvPiELb0EEC2ERKS2_(%"struct.std::_Head_base.6"* noundef nonnull align 8 dereferenceable(8) %4, void (i32*)** noundef nonnull align 8 dereferenceable(8) %ref.tmp), !dbg !2468
  ret void, !dbg !2469
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %0) #14 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #2
  call void @_ZSt9terminatev() #15
  unreachable
}

declare dso_local i8* @__cxa_begin_catch(i8*)

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt11_Tuple_implILm1EJPiEEC2IS0_EEOT_(%"struct.std::_Tuple_impl.4"* noundef nonnull align 8 dereferenceable(8) %this, i32** noundef nonnull align 8 dereferenceable(8) %__head) unnamed_addr #7 comdat align 2 !dbg !2470 {
entry:
  %this.addr = alloca %"struct.std::_Tuple_impl.4"*, align 8
  %__head.addr = alloca i32**, align 8
  store %"struct.std::_Tuple_impl.4"* %this, %"struct.std::_Tuple_impl.4"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Tuple_impl.4"** %this.addr, metadata !2476, metadata !DIExpression()), !dbg !2478
  store i32** %__head, i32*** %__head.addr, align 8
  call void @llvm.dbg.declare(metadata i32*** %__head.addr, metadata !2479, metadata !DIExpression()), !dbg !2480
  %this1 = load %"struct.std::_Tuple_impl.4"*, %"struct.std::_Tuple_impl.4"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Tuple_impl.4"* %this1 to %"struct.std::_Head_base.5"*, !dbg !2481
  %1 = load i32**, i32*** %__head.addr, align 8, !dbg !2482
  %call = call noundef nonnull align 8 dereferenceable(8) i32** @_ZSt7forwardIPiEOT_RNSt16remove_referenceIS1_E4typeE(i32** noundef nonnull align 8 dereferenceable(8) %1) #2, !dbg !2483
  call void @_ZNSt10_Head_baseILm1EPiLb0EEC2IS0_EEOT_(%"struct.std::_Head_base.5"* noundef nonnull align 8 dereferenceable(8) %0, i32** noundef nonnull align 8 dereferenceable(8) %call), !dbg !2484
  ret void, !dbg !2485
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt10_Head_baseILm0EPFvPiELb0EEC2ERKS2_(%"struct.std::_Head_base.6"* noundef nonnull align 8 dereferenceable(8) %this, void (i32*)** noundef nonnull align 8 dereferenceable(8) %__h) unnamed_addr #1 comdat align 2 !dbg !2486 {
entry:
  %this.addr = alloca %"struct.std::_Head_base.6"*, align 8
  %__h.addr = alloca void (i32*)**, align 8
  store %"struct.std::_Head_base.6"* %this, %"struct.std::_Head_base.6"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Head_base.6"** %this.addr, metadata !2487, metadata !DIExpression()), !dbg !2489
  store void (i32*)** %__h, void (i32*)*** %__h.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32*)*** %__h.addr, metadata !2490, metadata !DIExpression()), !dbg !2491
  %this1 = load %"struct.std::_Head_base.6"*, %"struct.std::_Head_base.6"** %this.addr, align 8
  %_M_head_impl = getelementptr inbounds %"struct.std::_Head_base.6", %"struct.std::_Head_base.6"* %this1, i32 0, i32 0, !dbg !2492
  %0 = load void (i32*)**, void (i32*)*** %__h.addr, align 8, !dbg !2493
  %1 = load void (i32*)*, void (i32*)** %0, align 8, !dbg !2493
  store void (i32*)* %1, void (i32*)** %_M_head_impl, align 8, !dbg !2492
  ret void, !dbg !2494
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt10_Head_baseILm1EPiLb0EEC2IS0_EEOT_(%"struct.std::_Head_base.5"* noundef nonnull align 8 dereferenceable(8) %this, i32** noundef nonnull align 8 dereferenceable(8) %__h) unnamed_addr #1 comdat align 2 !dbg !2495 {
entry:
  %this.addr = alloca %"struct.std::_Head_base.5"*, align 8
  %__h.addr = alloca i32**, align 8
  store %"struct.std::_Head_base.5"* %this, %"struct.std::_Head_base.5"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Head_base.5"** %this.addr, metadata !2499, metadata !DIExpression()), !dbg !2501
  store i32** %__h, i32*** %__h.addr, align 8
  call void @llvm.dbg.declare(metadata i32*** %__h.addr, metadata !2502, metadata !DIExpression()), !dbg !2503
  %this1 = load %"struct.std::_Head_base.5"*, %"struct.std::_Head_base.5"** %this.addr, align 8
  %_M_head_impl = getelementptr inbounds %"struct.std::_Head_base.5", %"struct.std::_Head_base.5"* %this1, i32 0, i32 0, !dbg !2504
  %0 = load i32**, i32*** %__h.addr, align 8, !dbg !2505
  %call = call noundef nonnull align 8 dereferenceable(8) i32** @_ZSt7forwardIPiEOT_RNSt16remove_referenceIS1_E4typeE(i32** noundef nonnull align 8 dereferenceable(8) %0) #2, !dbg !2506
  %1 = load i32*, i32** %call, align 8, !dbg !2506
  store i32* %1, i32** %_M_head_impl, align 8, !dbg !2504
  ret void, !dbg !2507
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6thread8_InvokerISt5tupleIJPFvPiES2_EEEclEv(%"struct.std::thread::_Invoker"* noundef nonnull align 8 dereferenceable(16) %this) #3 comdat align 2 !dbg !2508 {
entry:
  %this.addr = alloca %"struct.std::thread::_Invoker"*, align 8
  %agg.tmp = alloca %"struct.std::_Index_tuple", align 1
  store %"struct.std::thread::_Invoker"* %this, %"struct.std::thread::_Invoker"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::thread::_Invoker"** %this.addr, metadata !2509, metadata !DIExpression()), !dbg !2510
  %this1 = load %"struct.std::thread::_Invoker"*, %"struct.std::thread::_Invoker"** %this.addr, align 8
  call void @_ZNSt6thread8_InvokerISt5tupleIJPFvPiES2_EEE9_M_invokeIJLm0ELm1EEEEvSt12_Index_tupleIJXspT_EEE(%"struct.std::thread::_Invoker"* noundef nonnull align 8 dereferenceable(16) %this1), !dbg !2511
  ret void, !dbg !2512
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6thread8_InvokerISt5tupleIJPFvPiES2_EEE9_M_invokeIJLm0ELm1EEEEvSt12_Index_tupleIJXspT_EEE(%"struct.std::thread::_Invoker"* noundef nonnull align 8 dereferenceable(16) %this) #3 comdat align 2 !dbg !2513 {
entry:
  %0 = alloca %"struct.std::_Index_tuple", align 1
  %this.addr = alloca %"struct.std::thread::_Invoker"*, align 8
  store %"struct.std::thread::_Invoker"* %this, %"struct.std::thread::_Invoker"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::thread::_Invoker"** %this.addr, metadata !2526, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.declare(metadata %"struct.std::_Index_tuple"* %0, metadata !2528, metadata !DIExpression()), !dbg !2529
  %this1 = load %"struct.std::thread::_Invoker"*, %"struct.std::thread::_Invoker"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"struct.std::thread::_Invoker", %"struct.std::thread::_Invoker"* %this1, i32 0, i32 0, !dbg !2530
  %call = call noundef nonnull align 8 dereferenceable(16) %"class.std::tuple.2"* @_ZSt4moveIRSt5tupleIJPFvPiES1_EEEONSt16remove_referenceIT_E4typeEOS7_(%"class.std::tuple.2"* noundef nonnull align 8 dereferenceable(16) %_M_t) #2, !dbg !2531
  %call2 = call noundef nonnull align 8 dereferenceable(8) void (i32*)** @_ZSt3getILm0EJPFvPiES0_EEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOS7_(%"class.std::tuple.2"* noundef nonnull align 8 dereferenceable(16) %call) #2, !dbg !2532
  %_M_t3 = getelementptr inbounds %"struct.std::thread::_Invoker", %"struct.std::thread::_Invoker"* %this1, i32 0, i32 0, !dbg !2530
  %call4 = call noundef nonnull align 8 dereferenceable(16) %"class.std::tuple.2"* @_ZSt4moveIRSt5tupleIJPFvPiES1_EEEONSt16remove_referenceIT_E4typeEOS7_(%"class.std::tuple.2"* noundef nonnull align 8 dereferenceable(16) %_M_t3) #2, !dbg !2531
  %call5 = call noundef nonnull align 8 dereferenceable(8) i32** @_ZSt3getILm1EJPFvPiES0_EEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOS7_(%"class.std::tuple.2"* noundef nonnull align 8 dereferenceable(16) %call4) #2, !dbg !2532
  call void @_ZSt8__invokeIPFvPiEJS0_EENSt15__invoke_resultIT_JDpT0_EE4typeEOS4_DpOS5_(void (i32*)** noundef nonnull align 8 dereferenceable(8) %call2, i32** noundef nonnull align 8 dereferenceable(8) %call5), !dbg !2533
  ret void, !dbg !2534
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt8__invokeIPFvPiEJS0_EENSt15__invoke_resultIT_JDpT0_EE4typeEOS4_DpOS5_(void (i32*)** noundef nonnull align 8 dereferenceable(8) %__fn, i32** noundef nonnull align 8 dereferenceable(8) %__args) #3 comdat !dbg !452 {
entry:
  %__fn.addr = alloca void (i32*)**, align 8
  %__args.addr = alloca i32**, align 8
  %agg.tmp = alloca %"struct.std::__invoke_other", align 1
  store void (i32*)** %__fn, void (i32*)*** %__fn.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32*)*** %__fn.addr, metadata !2535, metadata !DIExpression()), !dbg !2536
  store i32** %__args, i32*** %__args.addr, align 8
  call void @llvm.dbg.declare(metadata i32*** %__args.addr, metadata !2537, metadata !DIExpression()), !dbg !2538
  %0 = load void (i32*)**, void (i32*)*** %__fn.addr, align 8, !dbg !2539
  %call = call noundef nonnull align 8 dereferenceable(8) void (i32*)** @_ZSt7forwardIPFvPiEEOT_RNSt16remove_referenceIS3_E4typeE(void (i32*)** noundef nonnull align 8 dereferenceable(8) %0) #2, !dbg !2540
  %1 = load i32**, i32*** %__args.addr, align 8, !dbg !2541
  %call1 = call noundef nonnull align 8 dereferenceable(8) i32** @_ZSt7forwardIPiEOT_RNSt16remove_referenceIS1_E4typeE(i32** noundef nonnull align 8 dereferenceable(8) %1) #2, !dbg !2542
  call void @_ZSt13__invoke_implIvPFvPiEJS0_EET_St14__invoke_otherOT0_DpOT1_(void (i32*)** noundef nonnull align 8 dereferenceable(8) %call, i32** noundef nonnull align 8 dereferenceable(8) %call1), !dbg !2543
  ret void, !dbg !2544
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) void (i32*)** @_ZSt3getILm0EJPFvPiES0_EEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOS7_(%"class.std::tuple.2"* noundef nonnull align 8 dereferenceable(16) %__t) #8 comdat !dbg !2545 {
entry:
  %__t.addr = alloca %"class.std::tuple.2"*, align 8
  store %"class.std::tuple.2"* %__t, %"class.std::tuple.2"** %__t.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::tuple.2"** %__t.addr, metadata !2561, metadata !DIExpression()), !dbg !2562
  %0 = load %"class.std::tuple.2"*, %"class.std::tuple.2"** %__t.addr, align 8, !dbg !2563
  %1 = bitcast %"class.std::tuple.2"* %0 to %"struct.std::_Tuple_impl.3"*, !dbg !2563
  %call = call noundef nonnull align 8 dereferenceable(8) void (i32*)** @_ZSt12__get_helperILm0EPFvPiEJS0_EERT0_RSt11_Tuple_implIXT_EJS3_DpT1_EE(%"struct.std::_Tuple_impl.3"* noundef nonnull align 8 dereferenceable(16) %1) #2, !dbg !2564
  %call1 = call noundef nonnull align 8 dereferenceable(8) void (i32*)** @_ZSt7forwardIPFvPiEEOT_RNSt16remove_referenceIS3_E4typeE(void (i32*)** noundef nonnull align 8 dereferenceable(8) %call) #2, !dbg !2565
  ret void (i32*)** %call1, !dbg !2566
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) %"class.std::tuple.2"* @_ZSt4moveIRSt5tupleIJPFvPiES1_EEEONSt16remove_referenceIT_E4typeEOS7_(%"class.std::tuple.2"* noundef nonnull align 8 dereferenceable(16) %__t) #8 comdat !dbg !2567 {
entry:
  %__t.addr = alloca %"class.std::tuple.2"*, align 8
  store %"class.std::tuple.2"* %__t, %"class.std::tuple.2"** %__t.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::tuple.2"** %__t.addr, metadata !2575, metadata !DIExpression()), !dbg !2576
  %0 = load %"class.std::tuple.2"*, %"class.std::tuple.2"** %__t.addr, align 8, !dbg !2577
  ret %"class.std::tuple.2"* %0, !dbg !2578
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) i32** @_ZSt3getILm1EJPFvPiES0_EEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOS7_(%"class.std::tuple.2"* noundef nonnull align 8 dereferenceable(16) %__t) #8 comdat !dbg !2579 {
entry:
  %__t.addr = alloca %"class.std::tuple.2"*, align 8
  store %"class.std::tuple.2"* %__t, %"class.std::tuple.2"** %__t.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::tuple.2"** %__t.addr, metadata !2593, metadata !DIExpression()), !dbg !2594
  %0 = load %"class.std::tuple.2"*, %"class.std::tuple.2"** %__t.addr, align 8, !dbg !2595
  %1 = bitcast %"class.std::tuple.2"* %0 to %"struct.std::_Tuple_impl.4"*, !dbg !2595
  %call = call noundef nonnull align 8 dereferenceable(8) i32** @_ZSt12__get_helperILm1EPiJEERT0_RSt11_Tuple_implIXT_EJS1_DpT1_EE(%"struct.std::_Tuple_impl.4"* noundef nonnull align 8 dereferenceable(8) %1) #2, !dbg !2596
  %call1 = call noundef nonnull align 8 dereferenceable(8) i32** @_ZSt7forwardIPiEOT_RNSt16remove_referenceIS1_E4typeE(i32** noundef nonnull align 8 dereferenceable(8) %call) #2, !dbg !2597
  ret i32** %call1, !dbg !2598
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt13__invoke_implIvPFvPiEJS0_EET_St14__invoke_otherOT0_DpOT1_(void (i32*)** noundef nonnull align 8 dereferenceable(8) %__f, i32** noundef nonnull align 8 dereferenceable(8) %__args) #3 comdat !dbg !2599 {
entry:
  %0 = alloca %"struct.std::__invoke_other", align 1
  %__f.addr = alloca void (i32*)**, align 8
  %__args.addr = alloca i32**, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__invoke_other"* %0, metadata !2605, metadata !DIExpression()), !dbg !2606
  store void (i32*)** %__f, void (i32*)*** %__f.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32*)*** %__f.addr, metadata !2607, metadata !DIExpression()), !dbg !2608
  store i32** %__args, i32*** %__args.addr, align 8
  call void @llvm.dbg.declare(metadata i32*** %__args.addr, metadata !2609, metadata !DIExpression()), !dbg !2610
  %1 = load void (i32*)**, void (i32*)*** %__f.addr, align 8, !dbg !2611
  %call = call noundef nonnull align 8 dereferenceable(8) void (i32*)** @_ZSt7forwardIPFvPiEEOT_RNSt16remove_referenceIS3_E4typeE(void (i32*)** noundef nonnull align 8 dereferenceable(8) %1) #2, !dbg !2612
  %2 = load void (i32*)*, void (i32*)** %call, align 8, !dbg !2612
  %3 = load i32**, i32*** %__args.addr, align 8, !dbg !2613
  %call1 = call noundef nonnull align 8 dereferenceable(8) i32** @_ZSt7forwardIPiEOT_RNSt16remove_referenceIS1_E4typeE(i32** noundef nonnull align 8 dereferenceable(8) %3) #2, !dbg !2614
  %4 = load i32*, i32** %call1, align 8, !dbg !2614
  call void %2(i32* noundef %4), !dbg !2612
  ret void, !dbg !2615
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) void (i32*)** @_ZSt7forwardIPFvPiEEOT_RNSt16remove_referenceIS3_E4typeE(void (i32*)** noundef nonnull align 8 dereferenceable(8) %__t) #8 comdat !dbg !2616 {
entry:
  %__t.addr = alloca void (i32*)**, align 8
  store void (i32*)** %__t, void (i32*)*** %__t.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32*)*** %__t.addr, metadata !2624, metadata !DIExpression()), !dbg !2625
  %0 = load void (i32*)**, void (i32*)*** %__t.addr, align 8, !dbg !2626
  ret void (i32*)** %0, !dbg !2627
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) void (i32*)** @_ZSt12__get_helperILm0EPFvPiEJS0_EERT0_RSt11_Tuple_implIXT_EJS3_DpT1_EE(%"struct.std::_Tuple_impl.3"* noundef nonnull align 8 dereferenceable(16) %__t) #8 comdat !dbg !2628 {
entry:
  %__t.addr = alloca %"struct.std::_Tuple_impl.3"*, align 8
  store %"struct.std::_Tuple_impl.3"* %__t, %"struct.std::_Tuple_impl.3"** %__t.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Tuple_impl.3"** %__t.addr, metadata !2631, metadata !DIExpression()), !dbg !2632
  %0 = load %"struct.std::_Tuple_impl.3"*, %"struct.std::_Tuple_impl.3"** %__t.addr, align 8, !dbg !2633
  %call = call noundef nonnull align 8 dereferenceable(8) void (i32*)** @_ZNSt11_Tuple_implILm0EJPFvPiES0_EE7_M_headERS3_(%"struct.std::_Tuple_impl.3"* noundef nonnull align 8 dereferenceable(16) %0) #2, !dbg !2634
  ret void (i32*)** %call, !dbg !2635
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) void (i32*)** @_ZNSt11_Tuple_implILm0EJPFvPiES0_EE7_M_headERS3_(%"struct.std::_Tuple_impl.3"* noundef nonnull align 8 dereferenceable(16) %__t) #8 comdat align 2 !dbg !2636 {
entry:
  %__t.addr = alloca %"struct.std::_Tuple_impl.3"*, align 8
  store %"struct.std::_Tuple_impl.3"* %__t, %"struct.std::_Tuple_impl.3"** %__t.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Tuple_impl.3"** %__t.addr, metadata !2637, metadata !DIExpression()), !dbg !2638
  %0 = load %"struct.std::_Tuple_impl.3"*, %"struct.std::_Tuple_impl.3"** %__t.addr, align 8, !dbg !2639
  %1 = bitcast %"struct.std::_Tuple_impl.3"* %0 to i8*, !dbg !2639
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 8, !dbg !2639
  %2 = bitcast i8* %add.ptr to %"struct.std::_Head_base.6"*, !dbg !2639
  %call = call noundef nonnull align 8 dereferenceable(8) void (i32*)** @_ZNSt10_Head_baseILm0EPFvPiELb0EE7_M_headERS3_(%"struct.std::_Head_base.6"* noundef nonnull align 8 dereferenceable(8) %2) #2, !dbg !2640
  ret void (i32*)** %call, !dbg !2641
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) void (i32*)** @_ZNSt10_Head_baseILm0EPFvPiELb0EE7_M_headERS3_(%"struct.std::_Head_base.6"* noundef nonnull align 8 dereferenceable(8) %__b) #8 comdat align 2 !dbg !2642 {
entry:
  %__b.addr = alloca %"struct.std::_Head_base.6"*, align 8
  store %"struct.std::_Head_base.6"* %__b, %"struct.std::_Head_base.6"** %__b.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Head_base.6"** %__b.addr, metadata !2643, metadata !DIExpression()), !dbg !2644
  %0 = load %"struct.std::_Head_base.6"*, %"struct.std::_Head_base.6"** %__b.addr, align 8, !dbg !2645
  %_M_head_impl = getelementptr inbounds %"struct.std::_Head_base.6", %"struct.std::_Head_base.6"* %0, i32 0, i32 0, !dbg !2646
  ret void (i32*)** %_M_head_impl, !dbg !2647
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) i32** @_ZSt12__get_helperILm1EPiJEERT0_RSt11_Tuple_implIXT_EJS1_DpT1_EE(%"struct.std::_Tuple_impl.4"* noundef nonnull align 8 dereferenceable(8) %__t) #8 comdat !dbg !2648 {
entry:
  %__t.addr = alloca %"struct.std::_Tuple_impl.4"*, align 8
  store %"struct.std::_Tuple_impl.4"* %__t, %"struct.std::_Tuple_impl.4"** %__t.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Tuple_impl.4"** %__t.addr, metadata !2651, metadata !DIExpression()), !dbg !2652
  %0 = load %"struct.std::_Tuple_impl.4"*, %"struct.std::_Tuple_impl.4"** %__t.addr, align 8, !dbg !2653
  %call = call noundef nonnull align 8 dereferenceable(8) i32** @_ZNSt11_Tuple_implILm1EJPiEE7_M_headERS1_(%"struct.std::_Tuple_impl.4"* noundef nonnull align 8 dereferenceable(8) %0) #2, !dbg !2654
  ret i32** %call, !dbg !2655
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) i32** @_ZNSt11_Tuple_implILm1EJPiEE7_M_headERS1_(%"struct.std::_Tuple_impl.4"* noundef nonnull align 8 dereferenceable(8) %__t) #8 comdat align 2 !dbg !2656 {
entry:
  %__t.addr = alloca %"struct.std::_Tuple_impl.4"*, align 8
  store %"struct.std::_Tuple_impl.4"* %__t, %"struct.std::_Tuple_impl.4"** %__t.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Tuple_impl.4"** %__t.addr, metadata !2657, metadata !DIExpression()), !dbg !2658
  %0 = load %"struct.std::_Tuple_impl.4"*, %"struct.std::_Tuple_impl.4"** %__t.addr, align 8, !dbg !2659
  %1 = bitcast %"struct.std::_Tuple_impl.4"* %0 to %"struct.std::_Head_base.5"*, !dbg !2659
  %call = call noundef nonnull align 8 dereferenceable(8) i32** @_ZNSt10_Head_baseILm1EPiLb0EE7_M_headERS1_(%"struct.std::_Head_base.5"* noundef nonnull align 8 dereferenceable(8) %1) #2, !dbg !2660
  ret i32** %call, !dbg !2661
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) i32** @_ZNSt10_Head_baseILm1EPiLb0EE7_M_headERS1_(%"struct.std::_Head_base.5"* noundef nonnull align 8 dereferenceable(8) %__b) #8 comdat align 2 !dbg !2662 {
entry:
  %__b.addr = alloca %"struct.std::_Head_base.5"*, align 8
  store %"struct.std::_Head_base.5"* %__b, %"struct.std::_Head_base.5"** %__b.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Head_base.5"** %__b.addr, metadata !2663, metadata !DIExpression()), !dbg !2664
  %0 = load %"struct.std::_Head_base.5"*, %"struct.std::_Head_base.5"** %__b.addr, align 8, !dbg !2665
  %_M_head_impl = getelementptr inbounds %"struct.std::_Head_base.5", %"struct.std::_Head_base.5"* %0, i32 0, i32 0, !dbg !2666
  ret i32** %_M_head_impl, !dbg !2667
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt15__uniq_ptr_dataINSt6thread6_StateESt14default_deleteIS1_ELb1ELb1EECI2St15__uniq_ptr_implIS1_S3_EEPS1_(%"struct.std::__uniq_ptr_data"* noundef nonnull align 8 dereferenceable(8) %this, %"struct.std::thread::_State"* noundef %0) unnamed_addr #7 comdat align 2 !dbg !2668 {
entry:
  %this.addr = alloca %"struct.std::__uniq_ptr_data"*, align 8
  %.addr = alloca %"struct.std::thread::_State"*, align 8
  store %"struct.std::__uniq_ptr_data"* %this, %"struct.std::__uniq_ptr_data"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::__uniq_ptr_data"** %this.addr, metadata !2672, metadata !DIExpression()), !dbg !2674
  store %"struct.std::thread::_State"* %0, %"struct.std::thread::_State"** %.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::thread::_State"** %.addr, metadata !2675, metadata !DIExpression()), !dbg !2674
  %this1 = load %"struct.std::__uniq_ptr_data"*, %"struct.std::__uniq_ptr_data"** %this.addr, align 8
  %1 = bitcast %"struct.std::__uniq_ptr_data"* %this1 to %"class.std::__uniq_ptr_impl"*, !dbg !2676
  %2 = load %"struct.std::thread::_State"*, %"struct.std::thread::_State"** %.addr, align 8, !dbg !2676
  call void @_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EEC2EPS1_(%"class.std::__uniq_ptr_impl"* noundef nonnull align 8 dereferenceable(8) %1, %"struct.std::thread::_State"* noundef %2), !dbg !2676
  ret void, !dbg !2676
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EEC2EPS1_(%"class.std::__uniq_ptr_impl"* noundef nonnull align 8 dereferenceable(8) %this, %"struct.std::thread::_State"* noundef %__p) unnamed_addr #1 comdat align 2 !dbg !2677 {
entry:
  %this.addr = alloca %"class.std::__uniq_ptr_impl"*, align 8
  %__p.addr = alloca %"struct.std::thread::_State"*, align 8
  store %"class.std::__uniq_ptr_impl"* %this, %"class.std::__uniq_ptr_impl"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__uniq_ptr_impl"** %this.addr, metadata !2678, metadata !DIExpression()), !dbg !2680
  store %"struct.std::thread::_State"* %__p, %"struct.std::thread::_State"** %__p.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::thread::_State"** %__p.addr, metadata !2681, metadata !DIExpression()), !dbg !2682
  %this1 = load %"class.std::__uniq_ptr_impl"*, %"class.std::__uniq_ptr_impl"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"class.std::__uniq_ptr_impl", %"class.std::__uniq_ptr_impl"* %this1, i32 0, i32 0, !dbg !2683
  call void @_ZNSt5tupleIJPNSt6thread6_StateESt14default_deleteIS1_EEEC2ILb1ELb1EEEv(%"class.std::tuple"* noundef nonnull align 8 dereferenceable(8) %_M_t) #2, !dbg !2683
  %0 = load %"struct.std::thread::_State"*, %"struct.std::thread::_State"** %__p.addr, align 8, !dbg !2684
  %call = call noundef nonnull align 8 dereferenceable(8) %"struct.std::thread::_State"** @_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE6_M_ptrEv(%"class.std::__uniq_ptr_impl"* noundef nonnull align 8 dereferenceable(8) %this1) #2, !dbg !2686
  store %"struct.std::thread::_State"* %0, %"struct.std::thread::_State"** %call, align 8, !dbg !2687
  ret void, !dbg !2688
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt5tupleIJPNSt6thread6_StateESt14default_deleteIS1_EEEC2ILb1ELb1EEEv(%"class.std::tuple"* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #1 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !2689 {
entry:
  %this.addr = alloca %"class.std::tuple"*, align 8
  store %"class.std::tuple"* %this, %"class.std::tuple"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::tuple"** %this.addr, metadata !2695, metadata !DIExpression()), !dbg !2697
  %this1 = load %"class.std::tuple"*, %"class.std::tuple"** %this.addr, align 8
  %0 = bitcast %"class.std::tuple"* %this1 to %"struct.std::_Tuple_impl"*, !dbg !2698
  invoke void @_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEEC2Ev(%"struct.std::_Tuple_impl"* noundef nonnull align 8 dereferenceable(8) %0)
          to label %invoke.cont unwind label %terminate.lpad, !dbg !2699

invoke.cont:                                      ; preds = %entry
  ret void, !dbg !2700

terminate.lpad:                                   ; preds = %entry
  %1 = landingpad { i8*, i32 }
          catch i8* null, !dbg !2699
  %2 = extractvalue { i8*, i32 } %1, 0, !dbg !2699
  call void @__clang_call_terminate(i8* %2) #15, !dbg !2699
  unreachable, !dbg !2699
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) %"struct.std::thread::_State"** @_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE6_M_ptrEv(%"class.std::__uniq_ptr_impl"* noundef nonnull align 8 dereferenceable(8) %this) #8 comdat align 2 !dbg !2701 {
entry:
  %this.addr = alloca %"class.std::__uniq_ptr_impl"*, align 8
  store %"class.std::__uniq_ptr_impl"* %this, %"class.std::__uniq_ptr_impl"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__uniq_ptr_impl"** %this.addr, metadata !2702, metadata !DIExpression()), !dbg !2703
  %this1 = load %"class.std::__uniq_ptr_impl"*, %"class.std::__uniq_ptr_impl"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"class.std::__uniq_ptr_impl", %"class.std::__uniq_ptr_impl"* %this1, i32 0, i32 0, !dbg !2704
  %call = call noundef nonnull align 8 dereferenceable(8) %"struct.std::thread::_State"** @_ZSt3getILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_(%"class.std::tuple"* noundef nonnull align 8 dereferenceable(8) %_M_t) #2, !dbg !2705
  ret %"struct.std::thread::_State"** %call, !dbg !2706
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEEC2Ev(%"struct.std::_Tuple_impl"* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #7 comdat align 2 !dbg !2707 {
entry:
  %this.addr = alloca %"struct.std::_Tuple_impl"*, align 8
  store %"struct.std::_Tuple_impl"* %this, %"struct.std::_Tuple_impl"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Tuple_impl"** %this.addr, metadata !2708, metadata !DIExpression()), !dbg !2710
  %this1 = load %"struct.std::_Tuple_impl"*, %"struct.std::_Tuple_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Tuple_impl"* %this1 to %"struct.std::_Tuple_impl.0"*, !dbg !2711
  call void @_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEEC2Ev(%"struct.std::_Tuple_impl.0"* noundef nonnull align 1 dereferenceable(1) %0), !dbg !2712
  %1 = bitcast %"struct.std::_Tuple_impl"* %this1 to %"struct.std::_Head_base.1"*, !dbg !2711
  call void @_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EEC2Ev(%"struct.std::_Head_base.1"* noundef nonnull align 8 dereferenceable(8) %1), !dbg !2713
  ret void, !dbg !2714
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEEC2Ev(%"struct.std::_Tuple_impl.0"* noundef nonnull align 1 dereferenceable(1) %this) unnamed_addr #7 comdat align 2 !dbg !2715 {
entry:
  %this.addr = alloca %"struct.std::_Tuple_impl.0"*, align 8
  store %"struct.std::_Tuple_impl.0"* %this, %"struct.std::_Tuple_impl.0"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Tuple_impl.0"** %this.addr, metadata !2716, metadata !DIExpression()), !dbg !2718
  %this1 = load %"struct.std::_Tuple_impl.0"*, %"struct.std::_Tuple_impl.0"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Tuple_impl.0"* %this1 to %"struct.std::_Head_base"*, !dbg !2719
  call void @_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EEC2Ev(%"struct.std::_Head_base"* noundef nonnull align 1 dereferenceable(1) %0), !dbg !2720
  ret void, !dbg !2721
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EEC2Ev(%"struct.std::_Head_base.1"* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #1 comdat align 2 !dbg !2722 {
entry:
  %this.addr = alloca %"struct.std::_Head_base.1"*, align 8
  store %"struct.std::_Head_base.1"* %this, %"struct.std::_Head_base.1"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Head_base.1"** %this.addr, metadata !2723, metadata !DIExpression()), !dbg !2725
  %this1 = load %"struct.std::_Head_base.1"*, %"struct.std::_Head_base.1"** %this.addr, align 8
  %_M_head_impl = getelementptr inbounds %"struct.std::_Head_base.1", %"struct.std::_Head_base.1"* %this1, i32 0, i32 0, !dbg !2726
  store %"struct.std::thread::_State"* null, %"struct.std::thread::_State"** %_M_head_impl, align 8, !dbg !2726
  ret void, !dbg !2727
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EEC2Ev(%"struct.std::_Head_base"* noundef nonnull align 1 dereferenceable(1) %this) unnamed_addr #1 comdat align 2 !dbg !2728 {
entry:
  %this.addr = alloca %"struct.std::_Head_base"*, align 8
  store %"struct.std::_Head_base"* %this, %"struct.std::_Head_base"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Head_base"** %this.addr, metadata !2729, metadata !DIExpression()), !dbg !2731
  %this1 = load %"struct.std::_Head_base"*, %"struct.std::_Head_base"** %this.addr, align 8
  %_M_head_impl = bitcast %"struct.std::_Head_base"* %this1 to %"struct.std::default_delete"*, !dbg !2732
  ret void, !dbg !2733
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) %"struct.std::thread::_State"** @_ZSt3getILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_(%"class.std::tuple"* noundef nonnull align 8 dereferenceable(8) %__t) #8 comdat !dbg !2734 {
entry:
  %__t.addr = alloca %"class.std::tuple"*, align 8
  store %"class.std::tuple"* %__t, %"class.std::tuple"** %__t.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::tuple"** %__t.addr, metadata !2748, metadata !DIExpression()), !dbg !2749
  %0 = load %"class.std::tuple"*, %"class.std::tuple"** %__t.addr, align 8, !dbg !2750
  %1 = bitcast %"class.std::tuple"* %0 to %"struct.std::_Tuple_impl"*, !dbg !2750
  %call = call noundef nonnull align 8 dereferenceable(8) %"struct.std::thread::_State"** @_ZSt12__get_helperILm0EPNSt6thread6_StateEJSt14default_deleteIS1_EEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE(%"struct.std::_Tuple_impl"* noundef nonnull align 8 dereferenceable(8) %1) #2, !dbg !2751
  ret %"struct.std::thread::_State"** %call, !dbg !2752
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) %"struct.std::thread::_State"** @_ZSt12__get_helperILm0EPNSt6thread6_StateEJSt14default_deleteIS1_EEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE(%"struct.std::_Tuple_impl"* noundef nonnull align 8 dereferenceable(8) %__t) #8 comdat !dbg !2753 {
entry:
  %__t.addr = alloca %"struct.std::_Tuple_impl"*, align 8
  store %"struct.std::_Tuple_impl"* %__t, %"struct.std::_Tuple_impl"** %__t.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Tuple_impl"** %__t.addr, metadata !2756, metadata !DIExpression()), !dbg !2757
  %0 = load %"struct.std::_Tuple_impl"*, %"struct.std::_Tuple_impl"** %__t.addr, align 8, !dbg !2758
  %call = call noundef nonnull align 8 dereferenceable(8) %"struct.std::thread::_State"** @_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEE7_M_headERS5_(%"struct.std::_Tuple_impl"* noundef nonnull align 8 dereferenceable(8) %0) #2, !dbg !2759
  ret %"struct.std::thread::_State"** %call, !dbg !2760
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) %"struct.std::thread::_State"** @_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEE7_M_headERS5_(%"struct.std::_Tuple_impl"* noundef nonnull align 8 dereferenceable(8) %__t) #8 comdat align 2 !dbg !2761 {
entry:
  %__t.addr = alloca %"struct.std::_Tuple_impl"*, align 8
  store %"struct.std::_Tuple_impl"* %__t, %"struct.std::_Tuple_impl"** %__t.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Tuple_impl"** %__t.addr, metadata !2762, metadata !DIExpression()), !dbg !2763
  %0 = load %"struct.std::_Tuple_impl"*, %"struct.std::_Tuple_impl"** %__t.addr, align 8, !dbg !2764
  %1 = bitcast %"struct.std::_Tuple_impl"* %0 to %"struct.std::_Head_base.1"*, !dbg !2764
  %call = call noundef nonnull align 8 dereferenceable(8) %"struct.std::thread::_State"** @_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EE7_M_headERS3_(%"struct.std::_Head_base.1"* noundef nonnull align 8 dereferenceable(8) %1) #2, !dbg !2765
  ret %"struct.std::thread::_State"** %call, !dbg !2766
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) %"struct.std::thread::_State"** @_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EE7_M_headERS3_(%"struct.std::_Head_base.1"* noundef nonnull align 8 dereferenceable(8) %__b) #8 comdat align 2 !dbg !2767 {
entry:
  %__b.addr = alloca %"struct.std::_Head_base.1"*, align 8
  store %"struct.std::_Head_base.1"* %__b, %"struct.std::_Head_base.1"** %__b.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Head_base.1"** %__b.addr, metadata !2768, metadata !DIExpression()), !dbg !2769
  %0 = load %"struct.std::_Head_base.1"*, %"struct.std::_Head_base.1"** %__b.addr, align 8, !dbg !2770
  %_M_head_impl = getelementptr inbounds %"struct.std::_Head_base.1", %"struct.std::_Head_base.1"* %0, i32 0, i32 0, !dbg !2771
  ret %"struct.std::thread::_State"** %_M_head_impl, !dbg !2772
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_create(i64* noundef, %union.pthread_attr_t* noundef, i8* (i8*)* noundef, i8* noundef) #13

declare dso_local i32 @pthread_join(i64 noundef, i8** noundef) #5

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) %"struct.std::default_delete"* @_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EE11get_deleterEv(%"class.std::unique_ptr"* noundef nonnull align 8 dereferenceable(8) %this) #8 comdat align 2 !dbg !2773 {
entry:
  %this.addr = alloca %"class.std::unique_ptr"*, align 8
  store %"class.std::unique_ptr"* %this, %"class.std::unique_ptr"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::unique_ptr"** %this.addr, metadata !2774, metadata !DIExpression()), !dbg !2775
  %this1 = load %"class.std::unique_ptr"*, %"class.std::unique_ptr"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"class.std::unique_ptr", %"class.std::unique_ptr"* %this1, i32 0, i32 0, !dbg !2776
  %0 = bitcast %"struct.std::__uniq_ptr_data"* %_M_t to %"class.std::__uniq_ptr_impl"*, !dbg !2776
  %call = call noundef nonnull align 1 dereferenceable(1) %"struct.std::default_delete"* @_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE10_M_deleterEv(%"class.std::__uniq_ptr_impl"* noundef nonnull align 8 dereferenceable(8) %0) #2, !dbg !2777
  ret %"struct.std::default_delete"* %call, !dbg !2778
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_(%"struct.std::default_delete"* noundef nonnull align 1 dereferenceable(1) %this, %"struct.std::thread::_State"* noundef %__ptr) #8 comdat align 2 !dbg !2779 {
entry:
  %this.addr = alloca %"struct.std::default_delete"*, align 8
  %__ptr.addr = alloca %"struct.std::thread::_State"*, align 8
  store %"struct.std::default_delete"* %this, %"struct.std::default_delete"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::default_delete"** %this.addr, metadata !2780, metadata !DIExpression()), !dbg !2782
  store %"struct.std::thread::_State"* %__ptr, %"struct.std::thread::_State"** %__ptr.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::thread::_State"** %__ptr.addr, metadata !2783, metadata !DIExpression()), !dbg !2784
  %this1 = load %"struct.std::default_delete"*, %"struct.std::default_delete"** %this.addr, align 8
  %0 = load %"struct.std::thread::_State"*, %"struct.std::thread::_State"** %__ptr.addr, align 8, !dbg !2785
  %isnull = icmp eq %"struct.std::thread::_State"* %0, null, !dbg !2786
  br i1 %isnull, label %delete.end, label %delete.notnull, !dbg !2786

delete.notnull:                                   ; preds = %entry
  %1 = bitcast %"struct.std::thread::_State"* %0 to void (%"struct.std::thread::_State"*)***, !dbg !2786
  %vtable = load void (%"struct.std::thread::_State"*)**, void (%"struct.std::thread::_State"*)*** %1, align 8, !dbg !2786
  %vfn = getelementptr inbounds void (%"struct.std::thread::_State"*)*, void (%"struct.std::thread::_State"*)** %vtable, i64 1, !dbg !2786
  %2 = load void (%"struct.std::thread::_State"*)*, void (%"struct.std::thread::_State"*)** %vfn, align 8, !dbg !2786
  call void %2(%"struct.std::thread::_State"* noundef nonnull align 8 dereferenceable(8) %0) #2, !dbg !2786
  br label %delete.end, !dbg !2786

delete.end:                                       ; preds = %delete.notnull, %entry
  ret void, !dbg !2787
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) %"struct.std::thread::_State"** @_ZSt4moveIRPNSt6thread6_StateEEONSt16remove_referenceIT_E4typeEOS5_(%"struct.std::thread::_State"** noundef nonnull align 8 dereferenceable(8) %__t) #8 comdat !dbg !2788 {
entry:
  %__t.addr = alloca %"struct.std::thread::_State"**, align 8
  store %"struct.std::thread::_State"** %__t, %"struct.std::thread::_State"*** %__t.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::thread::_State"*** %__t.addr, metadata !2796, metadata !DIExpression()), !dbg !2797
  %0 = load %"struct.std::thread::_State"**, %"struct.std::thread::_State"*** %__t.addr, align 8, !dbg !2798
  ret %"struct.std::thread::_State"** %0, !dbg !2799
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) %"struct.std::default_delete"* @_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE10_M_deleterEv(%"class.std::__uniq_ptr_impl"* noundef nonnull align 8 dereferenceable(8) %this) #8 comdat align 2 !dbg !2800 {
entry:
  %this.addr = alloca %"class.std::__uniq_ptr_impl"*, align 8
  store %"class.std::__uniq_ptr_impl"* %this, %"class.std::__uniq_ptr_impl"** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::__uniq_ptr_impl"** %this.addr, metadata !2801, metadata !DIExpression()), !dbg !2802
  %this1 = load %"class.std::__uniq_ptr_impl"*, %"class.std::__uniq_ptr_impl"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"class.std::__uniq_ptr_impl", %"class.std::__uniq_ptr_impl"* %this1, i32 0, i32 0, !dbg !2803
  %call = call noundef nonnull align 1 dereferenceable(1) %"struct.std::default_delete"* @_ZSt3getILm1EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_(%"class.std::tuple"* noundef nonnull align 8 dereferenceable(8) %_M_t) #2, !dbg !2804
  ret %"struct.std::default_delete"* %call, !dbg !2805
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) %"struct.std::default_delete"* @_ZSt3getILm1EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_(%"class.std::tuple"* noundef nonnull align 8 dereferenceable(8) %__t) #8 comdat !dbg !2806 {
entry:
  %__t.addr = alloca %"class.std::tuple"*, align 8
  store %"class.std::tuple"* %__t, %"class.std::tuple"** %__t.addr, align 8
  call void @llvm.dbg.declare(metadata %"class.std::tuple"** %__t.addr, metadata !2818, metadata !DIExpression()), !dbg !2819
  %0 = load %"class.std::tuple"*, %"class.std::tuple"** %__t.addr, align 8, !dbg !2820
  %1 = bitcast %"class.std::tuple"* %0 to %"struct.std::_Tuple_impl.0"*, !dbg !2820
  %call = call noundef nonnull align 1 dereferenceable(1) %"struct.std::default_delete"* @_ZSt12__get_helperILm1ESt14default_deleteINSt6thread6_StateEEJEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE(%"struct.std::_Tuple_impl.0"* noundef nonnull align 1 dereferenceable(1) %1) #2, !dbg !2821
  ret %"struct.std::default_delete"* %call, !dbg !2822
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) %"struct.std::default_delete"* @_ZSt12__get_helperILm1ESt14default_deleteINSt6thread6_StateEEJEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE(%"struct.std::_Tuple_impl.0"* noundef nonnull align 1 dereferenceable(1) %__t) #8 comdat !dbg !2823 {
entry:
  %__t.addr = alloca %"struct.std::_Tuple_impl.0"*, align 8
  store %"struct.std::_Tuple_impl.0"* %__t, %"struct.std::_Tuple_impl.0"** %__t.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Tuple_impl.0"** %__t.addr, metadata !2825, metadata !DIExpression()), !dbg !2826
  %0 = load %"struct.std::_Tuple_impl.0"*, %"struct.std::_Tuple_impl.0"** %__t.addr, align 8, !dbg !2827
  %call = call noundef nonnull align 1 dereferenceable(1) %"struct.std::default_delete"* @_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEE7_M_headERS4_(%"struct.std::_Tuple_impl.0"* noundef nonnull align 1 dereferenceable(1) %0) #2, !dbg !2828
  ret %"struct.std::default_delete"* %call, !dbg !2829
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) %"struct.std::default_delete"* @_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEE7_M_headERS4_(%"struct.std::_Tuple_impl.0"* noundef nonnull align 1 dereferenceable(1) %__t) #8 comdat align 2 !dbg !2830 {
entry:
  %__t.addr = alloca %"struct.std::_Tuple_impl.0"*, align 8
  store %"struct.std::_Tuple_impl.0"* %__t, %"struct.std::_Tuple_impl.0"** %__t.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Tuple_impl.0"** %__t.addr, metadata !2831, metadata !DIExpression()), !dbg !2832
  %0 = load %"struct.std::_Tuple_impl.0"*, %"struct.std::_Tuple_impl.0"** %__t.addr, align 8, !dbg !2833
  %1 = bitcast %"struct.std::_Tuple_impl.0"* %0 to %"struct.std::_Head_base"*, !dbg !2833
  %call = call noundef nonnull align 1 dereferenceable(1) %"struct.std::default_delete"* @_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EE7_M_headERS4_(%"struct.std::_Head_base"* noundef nonnull align 1 dereferenceable(1) %1) #2, !dbg !2834
  ret %"struct.std::default_delete"* %call, !dbg !2835
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) %"struct.std::default_delete"* @_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EE7_M_headERS4_(%"struct.std::_Head_base"* noundef nonnull align 1 dereferenceable(1) %__b) #8 comdat align 2 !dbg !2836 {
entry:
  %__b.addr = alloca %"struct.std::_Head_base"*, align 8
  store %"struct.std::_Head_base"* %__b, %"struct.std::_Head_base"** %__b.addr, align 8
  call void @llvm.dbg.declare(metadata %"struct.std::_Head_base"** %__b.addr, metadata !2837, metadata !DIExpression()), !dbg !2838
  %0 = load %"struct.std::_Head_base"*, %"struct.std::_Head_base"** %__b.addr, align 8, !dbg !2839
  %_M_head_impl = bitcast %"struct.std::_Head_base"* %0 to %"struct.std::default_delete"*, !dbg !2840
  ret %"struct.std::default_delete"* %_M_head_impl, !dbg !2841
}

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_stack_param_by_ref_2.cpp() #0 section ".text.startup" !dbg !2842 {
entry:
  call void @__cxx_global_var_init(), !dbg !2844
  ret void
}

attributes #0 = { noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }
attributes #3 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noinline noreturn nounwind }
attributes #15 = { noreturn nounwind }
attributes #16 = { builtin allocsize(0) }
attributes #17 = { builtin nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2134, !2135, !2136, !2137, !2138}
!llvm.ident = !{!2139}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "t1", scope: !2, file: !2133, line: 7, type: !16, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !3, producer: "clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !13, globals: !674, imports: !675, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/cs22mtech12008/Reproduced_UAF/Synthetic_bugs/Object_patterns/stack_param_by_ref_2.cpp", directory: "/home/cs22mtech12008/llvm-project/build", checksumkind: CSK_MD5, checksum: "507546d0e39b623522107eb972f0584c")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_Lock_policy", scope: !7, file: !6, line: 49, baseType: !8, size: 32, elements: !9, identifier: "_ZTSN9__gnu_cxx12_Lock_policyE")
!6 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/ext/concurrence.h", directory: "")
!7 = !DINamespace(name: "__gnu_cxx", scope: null)
!8 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!9 = !{!10, !11, !12}
!10 = !DIEnumerator(name: "_S_single", value: 0, isUnsigned: true)
!11 = !DIEnumerator(name: "_S_mutex", value: 1, isUnsigned: true)
!12 = !DIEnumerator(name: "_S_atomic", value: 2, isUnsigned: true)
!13 = !{!14, !450, !82, !16, !106, !103, !153, !100, !220, !97, !93, !90, !87, !83, !20, !477, !118, !493, !490, !559, !487, !484, !481}
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "_State_ptr", scope: !16, file: !15, line: 230, baseType: !83)
!15 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/std_thread.h", directory: "")
!16 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "thread", scope: !17, file: !15, line: 78, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !18, identifier: "_ZTSSt6thread")
!17 = !DINamespace(name: "std", scope: null)
!18 = !{!19, !36, !40, !43, !44, !49, !53, !57, !60, !63, !68, !69, !70, !73, !76, !79}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "_M_id", scope: !16, file: !15, line: 123, baseType: !20, size: 64)
!20 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "id", scope: !16, file: !15, line: 92, size: 64, flags: DIFlagPublic | DIFlagTypePassByValue | DIFlagNonTrivial, elements: !21, identifier: "_ZTSNSt6thread2idE")
!21 = !{!22, !29, !33}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "_M_thread", scope: !20, file: !15, line: 94, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "native_handle_type", scope: !16, file: !15, line: 82, baseType: !24)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gthread_t", file: !25, line: 47, baseType: !26)
!25 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/x86_64-linux-gnu/c++/13/bits/gthr-default.h", directory: "", checksumkind: CSK_MD5, checksum: "3b8e3be5a8b1d69cfdfb7aff03749ca6")
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !27, line: 27, baseType: !28)
!27 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "2d764266ce95ab26d4a4767c2ec78176")
!28 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!29 = !DISubprogram(name: "id", scope: !20, file: !15, line: 97, type: !30, scopeLine: 97, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!30 = !DISubroutineType(types: !31)
!31 = !{null, !32}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!33 = !DISubprogram(name: "id", scope: !20, file: !15, line: 100, type: !34, scopeLine: 100, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!34 = !DISubroutineType(types: !35)
!35 = !{null, !32, !23}
!36 = !DISubprogram(name: "thread", scope: !16, file: !15, line: 132, type: !37, scopeLine: 132, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!37 = !DISubroutineType(types: !38)
!38 = !{null, !39}
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!40 = !DISubprogram(name: "_M_thread_deps_never_run", linkageName: "_ZNSt6thread24_M_thread_deps_never_runEv", scope: !16, file: !15, line: 143, type: !41, scopeLine: 143, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!41 = !DISubroutineType(types: !42)
!42 = !{null}
!43 = !DISubprogram(name: "~thread", scope: !16, file: !15, line: 170, type: !37, scopeLine: 170, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!44 = !DISubprogram(name: "thread", scope: !16, file: !15, line: 176, type: !45, scopeLine: 176, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagDeleted)
!45 = !DISubroutineType(types: !46)
!46 = !{null, !39, !47}
!47 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!49 = !DISubprogram(name: "thread", scope: !16, file: !15, line: 178, type: !50, scopeLine: 178, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!50 = !DISubroutineType(types: !51)
!51 = !{null, !39, !52}
!52 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !16, size: 64)
!53 = !DISubprogram(name: "operator=", linkageName: "_ZNSt6threadaSERKS_", scope: !16, file: !15, line: 181, type: !54, scopeLine: 181, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagDeleted)
!54 = !DISubroutineType(types: !55)
!55 = !{!56, !39, !47}
!56 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !16, size: 64)
!57 = !DISubprogram(name: "operator=", linkageName: "_ZNSt6threadaSEOS_", scope: !16, file: !15, line: 183, type: !58, scopeLine: 183, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!58 = !DISubroutineType(types: !59)
!59 = !{!56, !39, !52}
!60 = !DISubprogram(name: "swap", linkageName: "_ZNSt6thread4swapERS_", scope: !16, file: !15, line: 192, type: !61, scopeLine: 192, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!61 = !DISubroutineType(types: !62)
!62 = !{null, !39, !56}
!63 = !DISubprogram(name: "joinable", linkageName: "_ZNKSt6thread8joinableEv", scope: !16, file: !15, line: 196, type: !64, scopeLine: 196, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!64 = !DISubroutineType(types: !65)
!65 = !{!66, !67}
!66 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!68 = !DISubprogram(name: "join", linkageName: "_ZNSt6thread4joinEv", scope: !16, file: !15, line: 200, type: !37, scopeLine: 200, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!69 = !DISubprogram(name: "detach", linkageName: "_ZNSt6thread6detachEv", scope: !16, file: !15, line: 203, type: !37, scopeLine: 203, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!70 = !DISubprogram(name: "get_id", linkageName: "_ZNKSt6thread6get_idEv", scope: !16, file: !15, line: 206, type: !71, scopeLine: 206, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!71 = !DISubroutineType(types: !72)
!72 = !{!20, !67}
!73 = !DISubprogram(name: "native_handle", linkageName: "_ZNSt6thread13native_handleEv", scope: !16, file: !15, line: 212, type: !74, scopeLine: 212, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!74 = !DISubroutineType(types: !75)
!75 = !{!23, !39}
!76 = !DISubprogram(name: "hardware_concurrency", linkageName: "_ZNSt6thread20hardware_concurrencyEv", scope: !16, file: !15, line: 217, type: !77, scopeLine: 217, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!77 = !DISubroutineType(types: !78)
!78 = !{!8}
!79 = !DISubprogram(name: "_M_start_thread", linkageName: "_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE", scope: !16, file: !15, line: 248, type: !80, scopeLine: 248, flags: DIFlagPrototyped, spFlags: 0)
!80 = !DISubroutineType(types: !81)
!81 = !{null, !39, !14, !82}
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!83 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "unique_ptr<std::thread::_State, std::default_delete<std::thread::_State> >", scope: !17, file: !84, line: 277, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !85, templateParams: !374, identifier: "_ZTSSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EE")
!84 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/unique_ptr.h", directory: "", checksumkind: CSK_MD5, checksum: "b1c5f017599d59426bf764ae91a55ae0")
!85 = !{!86, !386, !391, !394, !398, !404, !416, !420, !421, !426, !431, !434, !437, !440, !443, !447}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_M_t", scope: !83, file: !84, line: 283, baseType: !87, size: 64)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__uniq_ptr_data<std::thread::_State, std::default_delete<std::thread::_State>, true, true>", scope: !17, file: !84, line: 239, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !88, templateParams: !385, identifier: "_ZTSSt15__uniq_ptr_dataINSt6thread6_StateESt14default_deleteIS1_ELb1ELb1EE")
!88 = !{!89, !376, !381}
!89 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !87, baseType: !90, extraData: i32 0)
!90 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__uniq_ptr_impl<std::thread::_State, std::default_delete<std::thread::_State> >", scope: !17, file: !84, line: 148, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !91, templateParams: !374, identifier: "_ZTSSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE")
!91 = !{!92, !330, !334, !344, !348, !352, !356, !361, !364, !367, !368, !371}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_M_t", scope: !90, file: !84, line: 232, baseType: !93, size: 64)
!93 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "tuple<std::thread::_State *, std::default_delete<std::thread::_State> >", scope: !17, file: !94, line: 1232, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !95, templateParams: !329, identifier: "_ZTSSt5tupleIJPNSt6thread6_StateESt14default_deleteIS1_EEE")
!94 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/tuple", directory: "")
!95 = !{!96, !299, !302, !308, !312, !321, !326}
!96 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !93, baseType: !97, flags: DIFlagPublic, extraData: i32 0)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Tuple_impl<0UL, std::thread::_State *, std::default_delete<std::thread::_State> >", scope: !17, file: !94, line: 259, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !98, templateParams: !295, identifier: "_ZTSSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEE")
!98 = !{!99, !219, !256, !260, !265, !270, !275, !279, !282, !285, !288, !292}
!99 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !97, baseType: !100, extraData: i32 0)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Tuple_impl<1UL, std::default_delete<std::thread::_State> >", scope: !17, file: !94, line: 489, size: 8, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !101, templateParams: !215, identifier: "_ZTSSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEE")
!101 = !{!102, !186, !190, !195, !199, !202, !205, !208, !212}
!102 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !100, baseType: !103, flags: DIFlagPrivate, extraData: i32 0)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Head_base<1UL, std::default_delete<std::thread::_State>, true>", scope: !17, file: !94, line: 79, size: 8, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !104, templateParams: !182, identifier: "_ZTSSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EE")
!104 = !{!105, !133, !137, !141, !146, !150, !174, !179}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_M_head_impl", scope: !103, file: !94, line: 130, baseType: !106, size: 8)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "default_delete<std::thread::_State>", scope: !17, file: !84, line: 75, size: 8, flags: DIFlagTypePassByValue, elements: !107, templateParams: !131, identifier: "_ZTSSt14default_deleteINSt6thread6_StateEE")
!107 = !{!108, !112}
!108 = !DISubprogram(name: "default_delete", scope: !106, file: !84, line: 78, type: !109, scopeLine: 78, flags: DIFlagPrototyped, spFlags: 0)
!109 = !DISubroutineType(types: !110)
!110 = !{null, !111}
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!112 = !DISubprogram(name: "operator()", linkageName: "_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_", scope: !106, file: !84, line: 93, type: !113, scopeLine: 93, flags: DIFlagPrototyped, spFlags: 0)
!113 = !DISubroutineType(types: !114)
!114 = !{null, !115, !117}
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !106)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_State", scope: !16, file: !15, line: 225, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !119, vtableHolder: !118)
!119 = !{!120, !126, !130}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$_State", scope: !15, file: !15, baseType: !121, size: 64, flags: DIFlagArtificial)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "__vtbl_ptr_type", baseType: !123, size: 64)
!123 = !DISubroutineType(types: !124)
!124 = !{!125}
!125 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!126 = !DISubprogram(name: "~_State", scope: !118, file: !15, line: 227, type: !127, scopeLine: 227, containingType: !118, virtualIndex: 0, flags: DIFlagPrototyped, spFlags: DISPFlagVirtual)
!127 = !DISubroutineType(types: !128)
!128 = !{null, !129}
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!130 = !DISubprogram(name: "_M_run", linkageName: "_ZNSt6thread6_State6_M_runEv", scope: !118, file: !15, line: 228, type: !127, scopeLine: 228, containingType: !118, virtualIndex: 2, flags: DIFlagPrototyped, spFlags: DISPFlagPureVirtual)
!131 = !{!132}
!132 = !DITemplateTypeParameter(name: "_Tp", type: !118)
!133 = !DISubprogram(name: "_Head_base", scope: !103, file: !94, line: 81, type: !134, scopeLine: 81, flags: DIFlagPrototyped, spFlags: 0)
!134 = !DISubroutineType(types: !135)
!135 = !{null, !136}
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!137 = !DISubprogram(name: "_Head_base", scope: !103, file: !94, line: 84, type: !138, scopeLine: 84, flags: DIFlagPrototyped, spFlags: 0)
!138 = !DISubroutineType(types: !139)
!139 = !{null, !136, !140}
!140 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !116, size: 64)
!141 = !DISubprogram(name: "_Head_base", scope: !103, file: !94, line: 87, type: !142, scopeLine: 87, flags: DIFlagPrototyped, spFlags: 0)
!142 = !DISubroutineType(types: !143)
!143 = !{null, !136, !144}
!144 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !145, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!146 = !DISubprogram(name: "_Head_base", scope: !103, file: !94, line: 88, type: !147, scopeLine: 88, flags: DIFlagPrototyped, spFlags: 0)
!147 = !DISubroutineType(types: !148)
!148 = !{null, !136, !149}
!149 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !103, size: 64)
!150 = !DISubprogram(name: "_Head_base", scope: !103, file: !94, line: 95, type: !151, scopeLine: 95, flags: DIFlagPrototyped, spFlags: 0)
!151 = !DISubroutineType(types: !152)
!152 = !{null, !136, !153, !160}
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "allocator_arg_t", scope: !17, file: !154, line: 56, size: 8, flags: DIFlagTypePassByValue, elements: !155, identifier: "_ZTSSt15allocator_arg_t")
!154 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/uses_allocator.h", directory: "", checksumkind: CSK_MD5, checksum: "2e154584f12c218d65e98047872045fc")
!155 = !{!156}
!156 = !DISubprogram(name: "allocator_arg_t", scope: !153, file: !154, line: 56, type: !157, scopeLine: 56, flags: DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!157 = !DISubroutineType(types: !158)
!158 = !{null, !159}
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__uses_alloc0", scope: !17, file: !154, line: 79, size: 8, flags: DIFlagTypePassByValue, elements: !161, identifier: "_ZTSSt13__uses_alloc0")
!161 = !{!162, !165}
!162 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !160, baseType: !163, extraData: i32 0)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__uses_alloc_base", scope: !17, file: !154, line: 77, size: 8, flags: DIFlagTypePassByValue, elements: !164, identifier: "_ZTSSt17__uses_alloc_base")
!164 = !{}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_M_a", scope: !160, file: !154, line: 81, baseType: !166, size: 8)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Sink", scope: !160, file: !154, line: 81, size: 8, flags: DIFlagTypePassByValue, elements: !167, identifier: "_ZTSNSt13__uses_alloc05_SinkE")
!167 = !{!168}
!168 = !DISubprogram(name: "operator=", linkageName: "_ZNSt13__uses_alloc05_SinkaSEPKv", scope: !166, file: !154, line: 81, type: !169, scopeLine: 81, flags: DIFlagPrototyped, spFlags: 0)
!169 = !DISubroutineType(types: !170)
!170 = !{null, !171, !172}
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!174 = !DISubprogram(name: "_M_head", linkageName: "_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EE7_M_headERS4_", scope: !103, file: !94, line: 125, type: !175, scopeLine: 125, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!175 = !DISubroutineType(types: !176)
!176 = !{!177, !178}
!177 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !106, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !103, size: 64)
!179 = !DISubprogram(name: "_M_head", linkageName: "_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EE7_M_headERKS4_", scope: !103, file: !94, line: 128, type: !180, scopeLine: 128, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!180 = !DISubroutineType(types: !181)
!181 = !{!140, !144}
!182 = !{!183, !184, !185}
!183 = !DITemplateValueParameter(name: "_Idx", type: !28, value: i64 1)
!184 = !DITemplateTypeParameter(name: "_Head", type: !106)
!185 = !DITemplateValueParameter(type: !66, value: i8 1)
!186 = !DISubprogram(name: "_M_head", linkageName: "_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEE7_M_headERS4_", scope: !100, file: !94, line: 497, type: !187, scopeLine: 497, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!187 = !DISubroutineType(types: !188)
!188 = !{!177, !189}
!189 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !100, size: 64)
!190 = !DISubprogram(name: "_M_head", linkageName: "_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEE7_M_headERKS4_", scope: !100, file: !94, line: 500, type: !191, scopeLine: 500, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!191 = !DISubroutineType(types: !192)
!192 = !{!140, !193}
!193 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !194, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!195 = !DISubprogram(name: "_Tuple_impl", scope: !100, file: !94, line: 503, type: !196, scopeLine: 503, flags: DIFlagPrototyped, spFlags: 0)
!196 = !DISubroutineType(types: !197)
!197 = !{null, !198}
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!199 = !DISubprogram(name: "_Tuple_impl", scope: !100, file: !94, line: 507, type: !200, scopeLine: 507, flags: DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!200 = !DISubroutineType(types: !201)
!201 = !{null, !198, !140}
!202 = !DISubprogram(name: "_Tuple_impl", scope: !100, file: !94, line: 517, type: !203, scopeLine: 517, flags: DIFlagPrototyped, spFlags: 0)
!203 = !DISubroutineType(types: !204)
!204 = !{null, !198, !193}
!205 = !DISubprogram(name: "operator=", linkageName: "_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEEaSERKS4_", scope: !100, file: !94, line: 521, type: !206, scopeLine: 521, flags: DIFlagPrototyped, spFlags: DISPFlagDeleted)
!206 = !DISubroutineType(types: !207)
!207 = !{!189, !198, !193}
!208 = !DISubprogram(name: "_Tuple_impl", scope: !100, file: !94, line: 527, type: !209, scopeLine: 527, flags: DIFlagPrototyped, spFlags: 0)
!209 = !DISubroutineType(types: !210)
!210 = !{null, !198, !211}
!211 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !100, size: 64)
!212 = !DISubprogram(name: "_M_swap", linkageName: "_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEE7_M_swapERS4_", scope: !100, file: !94, line: 666, type: !213, scopeLine: 666, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!213 = !DISubroutineType(types: !214)
!214 = !{null, !198, !189}
!215 = !{!183, !216}
!216 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Elements", value: !217)
!217 = !{!218}
!218 = !DITemplateTypeParameter(type: !106)
!219 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !97, baseType: !220, flags: DIFlagPrivate, extraData: i32 0)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Head_base<0UL, std::thread::_State *, false>", scope: !17, file: !94, line: 188, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !221, templateParams: !252, identifier: "_ZTSSt10_Head_baseILm0EPNSt6thread6_StateELb0EE")
!221 = !{!222, !223, !227, !232, !237, !241, !244, !249}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_M_head_impl", scope: !220, file: !94, line: 239, baseType: !117, size: 64)
!223 = !DISubprogram(name: "_Head_base", scope: !220, file: !94, line: 190, type: !224, scopeLine: 190, flags: DIFlagPrototyped, spFlags: 0)
!224 = !DISubroutineType(types: !225)
!225 = !{null, !226}
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!227 = !DISubprogram(name: "_Head_base", scope: !220, file: !94, line: 193, type: !228, scopeLine: 193, flags: DIFlagPrototyped, spFlags: 0)
!228 = !DISubroutineType(types: !229)
!229 = !{null, !226, !230}
!230 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !231, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!232 = !DISubprogram(name: "_Head_base", scope: !220, file: !94, line: 196, type: !233, scopeLine: 196, flags: DIFlagPrototyped, spFlags: 0)
!233 = !DISubroutineType(types: !234)
!234 = !{null, !226, !235}
!235 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !236, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !220)
!237 = !DISubprogram(name: "_Head_base", scope: !220, file: !94, line: 197, type: !238, scopeLine: 197, flags: DIFlagPrototyped, spFlags: 0)
!238 = !DISubroutineType(types: !239)
!239 = !{null, !226, !240}
!240 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !220, size: 64)
!241 = !DISubprogram(name: "_Head_base", scope: !220, file: !94, line: 204, type: !242, scopeLine: 204, flags: DIFlagPrototyped, spFlags: 0)
!242 = !DISubroutineType(types: !243)
!243 = !{null, !226, !153, !160}
!244 = !DISubprogram(name: "_M_head", linkageName: "_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EE7_M_headERS3_", scope: !220, file: !94, line: 234, type: !245, scopeLine: 234, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!245 = !DISubroutineType(types: !246)
!246 = !{!247, !248}
!247 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !117, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !220, size: 64)
!249 = !DISubprogram(name: "_M_head", linkageName: "_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EE7_M_headERKS3_", scope: !220, file: !94, line: 237, type: !250, scopeLine: 237, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!250 = !DISubroutineType(types: !251)
!251 = !{!230, !235}
!252 = !{!253, !254, !255}
!253 = !DITemplateValueParameter(name: "_Idx", type: !28, value: i64 0)
!254 = !DITemplateTypeParameter(name: "_Head", type: !117)
!255 = !DITemplateValueParameter(type: !66, value: i8 0)
!256 = !DISubprogram(name: "_M_head", linkageName: "_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEE7_M_headERS5_", scope: !97, file: !94, line: 269, type: !257, scopeLine: 269, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!257 = !DISubroutineType(types: !258)
!258 = !{!247, !259}
!259 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !97, size: 64)
!260 = !DISubprogram(name: "_M_head", linkageName: "_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEE7_M_headERKS5_", scope: !97, file: !94, line: 272, type: !261, scopeLine: 272, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!261 = !DISubroutineType(types: !262)
!262 = !{!230, !263}
!263 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !264, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !97)
!265 = !DISubprogram(name: "_M_tail", linkageName: "_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEE7_M_tailERS5_", scope: !97, file: !94, line: 275, type: !266, scopeLine: 275, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!266 = !DISubroutineType(types: !267)
!267 = !{!268, !259}
!268 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !269, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Inherited", scope: !97, file: !94, line: 265, baseType: !100)
!270 = !DISubprogram(name: "_M_tail", linkageName: "_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEE7_M_tailERKS5_", scope: !97, file: !94, line: 278, type: !271, scopeLine: 278, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!271 = !DISubroutineType(types: !272)
!272 = !{!273, !263}
!273 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !274, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !269)
!275 = !DISubprogram(name: "_Tuple_impl", scope: !97, file: !94, line: 280, type: !276, scopeLine: 280, flags: DIFlagPrototyped, spFlags: 0)
!276 = !DISubroutineType(types: !277)
!277 = !{null, !278}
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!279 = !DISubprogram(name: "_Tuple_impl", scope: !97, file: !94, line: 284, type: !280, scopeLine: 284, flags: DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!280 = !DISubroutineType(types: !281)
!281 = !{null, !278, !230, !140}
!282 = !DISubprogram(name: "_Tuple_impl", scope: !97, file: !94, line: 296, type: !283, scopeLine: 296, flags: DIFlagPrototyped, spFlags: 0)
!283 = !DISubroutineType(types: !284)
!284 = !{null, !278, !263}
!285 = !DISubprogram(name: "operator=", linkageName: "_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEEaSERKS5_", scope: !97, file: !94, line: 300, type: !286, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagDeleted)
!286 = !DISubroutineType(types: !287)
!287 = !{!259, !278, !263}
!288 = !DISubprogram(name: "_Tuple_impl", scope: !97, file: !94, line: 302, type: !289, scopeLine: 302, flags: DIFlagPrototyped, spFlags: 0)
!289 = !DISubroutineType(types: !290)
!290 = !{null, !278, !291}
!291 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !97, size: 64)
!292 = !DISubprogram(name: "_M_swap", linkageName: "_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEE7_M_swapERS5_", scope: !97, file: !94, line: 469, type: !293, scopeLine: 469, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!293 = !DISubroutineType(types: !294)
!294 = !{null, !278, !259}
!295 = !{!253, !296}
!296 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Elements", value: !297)
!297 = !{!298, !218}
!298 = !DITemplateTypeParameter(type: !117)
!299 = !DISubprogram(name: "__nothrow_default_constructible", linkageName: "_ZNSt5tupleIJPNSt6thread6_StateESt14default_deleteIS1_EEE31__nothrow_default_constructibleEv", scope: !93, file: !94, line: 1286, type: !300, scopeLine: 1286, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!300 = !DISubroutineType(types: !301)
!301 = !{!66}
!302 = !DISubprogram(name: "tuple", scope: !93, file: !94, line: 1349, type: !303, scopeLine: 1349, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!303 = !DISubroutineType(types: !304)
!304 = !{null, !305, !306}
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!306 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !307, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!308 = !DISubprogram(name: "tuple", scope: !93, file: !94, line: 1351, type: !309, scopeLine: 1351, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!309 = !DISubroutineType(types: !310)
!310 = !{null, !305, !311}
!311 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !93, size: 64)
!312 = !DISubprogram(name: "operator=", linkageName: "_ZNSt5tupleIJPNSt6thread6_StateESt14default_deleteIS1_EEEaSERKS5_", scope: !93, file: !94, line: 1605, type: !313, scopeLine: 1605, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!313 = !DISubroutineType(types: !314)
!314 = !{!315, !305, !316}
!315 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !93, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "__conditional_t<__assignable<std::thread::_State *const &, const std::default_delete<std::thread::_State> &>(), const std::tuple<std::thread::_State *, std::default_delete<std::thread::_State> > &, const std::__nonesuch &>", scope: !17, file: !317, line: 134, baseType: !318)
!317 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/type_traits", directory: "")
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "type<const std::tuple<std::thread::_State *, std::default_delete<std::thread::_State> > &, const std::__nonesuch &>", scope: !319, file: !317, line: 122, baseType: !306)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__conditional<true>", scope: !17, file: !317, line: 119, size: 8, flags: DIFlagTypePassByValue, elements: !164, templateParams: !320, identifier: "_ZTSSt13__conditionalILb1EE")
!320 = !{!185}
!321 = !DISubprogram(name: "operator=", linkageName: "_ZNSt5tupleIJPNSt6thread6_StateESt14default_deleteIS1_EEEaSEOS5_", scope: !93, file: !94, line: 1616, type: !322, scopeLine: 1616, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!322 = !DISubroutineType(types: !323)
!323 = !{!315, !305, !324}
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "__conditional_t<__assignable<std::thread::_State *, std::default_delete<std::thread::_State> >(), std::tuple<std::thread::_State *, std::default_delete<std::thread::_State> > &&, std::__nonesuch &&>", scope: !17, file: !317, line: 134, baseType: !325)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "type<std::tuple<std::thread::_State *, std::default_delete<std::thread::_State> > &&, std::__nonesuch &&>", scope: !319, file: !317, line: 122, baseType: !311)
!326 = !DISubprogram(name: "swap", linkageName: "_ZNSt5tupleIJPNSt6thread6_StateESt14default_deleteIS1_EEE4swapERS5_", scope: !93, file: !94, line: 1731, type: !327, scopeLine: 1731, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!327 = !DISubroutineType(types: !328)
!328 = !{null, !305, !315}
!329 = !{!296}
!330 = !DISubprogram(name: "__uniq_ptr_impl", scope: !90, file: !84, line: 174, type: !331, scopeLine: 174, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!331 = !DISubroutineType(types: !332)
!332 = !{null, !333}
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!334 = !DISubprogram(name: "__uniq_ptr_impl", scope: !90, file: !84, line: 176, type: !335, scopeLine: 176, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!335 = !DISubroutineType(types: !336)
!336 = !{null, !333, !337}
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !90, file: !84, line: 168, baseType: !338)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !339, file: !84, line: 153, baseType: !117)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Ptr<std::thread::_State, std::default_delete<std::thread::_State>, void>", scope: !90, file: !84, line: 151, size: 8, flags: DIFlagTypePassByValue, elements: !164, templateParams: !340, identifier: "_ZTSNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE4_PtrIS1_S3_vEE")
!340 = !{!341, !342, !343}
!341 = !DITemplateTypeParameter(name: "_Up", type: !118)
!342 = !DITemplateTypeParameter(name: "_Ep", type: !106)
!343 = !DITemplateTypeParameter(type: null, defaulted: true)
!344 = !DISubprogram(name: "__uniq_ptr_impl", scope: !90, file: !84, line: 184, type: !345, scopeLine: 184, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!345 = !DISubroutineType(types: !346)
!346 = !{null, !333, !347}
!347 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !90, size: 64)
!348 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EEaSEOS4_", scope: !90, file: !84, line: 189, type: !349, scopeLine: 189, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!349 = !DISubroutineType(types: !350)
!350 = !{!351, !333, !347}
!351 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !90, size: 64)
!352 = !DISubprogram(name: "_M_ptr", linkageName: "_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE6_M_ptrEv", scope: !90, file: !84, line: 197, type: !353, scopeLine: 197, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!353 = !DISubroutineType(types: !354)
!354 = !{!355, !333}
!355 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !337, size: 64)
!356 = !DISubprogram(name: "_M_ptr", linkageName: "_ZNKSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE6_M_ptrEv", scope: !90, file: !84, line: 199, type: !357, scopeLine: 199, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!357 = !DISubroutineType(types: !358)
!358 = !{!337, !359}
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!360 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!361 = !DISubprogram(name: "_M_deleter", linkageName: "_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE10_M_deleterEv", scope: !90, file: !84, line: 201, type: !362, scopeLine: 201, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!362 = !DISubroutineType(types: !363)
!363 = !{!177, !333}
!364 = !DISubprogram(name: "_M_deleter", linkageName: "_ZNKSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE10_M_deleterEv", scope: !90, file: !84, line: 203, type: !365, scopeLine: 203, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!365 = !DISubroutineType(types: !366)
!366 = !{!140, !359}
!367 = !DISubprogram(name: "reset", linkageName: "_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE5resetEPS1_", scope: !90, file: !84, line: 206, type: !335, scopeLine: 206, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!368 = !DISubprogram(name: "release", linkageName: "_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE7releaseEv", scope: !90, file: !84, line: 215, type: !369, scopeLine: 215, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!369 = !DISubroutineType(types: !370)
!370 = !{!337, !333}
!371 = !DISubprogram(name: "swap", linkageName: "_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE4swapERS4_", scope: !90, file: !84, line: 224, type: !372, scopeLine: 224, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!372 = !DISubroutineType(types: !373)
!373 = !{null, !333, !351}
!374 = !{!132, !375}
!375 = !DITemplateTypeParameter(name: "_Dp", type: !106)
!376 = !DISubprogram(name: "__uniq_ptr_data", scope: !87, file: !84, line: 242, type: !377, scopeLine: 242, flags: DIFlagPrototyped, spFlags: 0)
!377 = !DISubroutineType(types: !378)
!378 = !{null, !379, !380}
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!380 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !87, size: 64)
!381 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__uniq_ptr_dataINSt6thread6_StateESt14default_deleteIS1_ELb1ELb1EEaSEOS4_", scope: !87, file: !84, line: 243, type: !382, scopeLine: 243, flags: DIFlagPrototyped, spFlags: 0)
!382 = !DISubroutineType(types: !383)
!383 = !{!384, !379, !380}
!384 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !87, size: 64)
!385 = !{!132, !375, !185, !185}
!386 = !DISubprogram(name: "unique_ptr", scope: !83, file: !84, line: 366, type: !387, scopeLine: 366, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!387 = !DISubroutineType(types: !388)
!388 = !{null, !389, !390}
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!390 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !83, size: 64)
!391 = !DISubprogram(name: "~unique_ptr", scope: !83, file: !84, line: 398, type: !392, scopeLine: 398, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!392 = !DISubroutineType(types: !393)
!393 = !{null, !389}
!394 = !DISubprogram(name: "operator=", linkageName: "_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EEaSEOS4_", scope: !83, file: !84, line: 414, type: !395, scopeLine: 414, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!395 = !DISubroutineType(types: !396)
!396 = !{!397, !389, !390}
!397 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !83, size: 64)
!398 = !DISubprogram(name: "operator=", linkageName: "_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EEaSEDn", scope: !83, file: !84, line: 440, type: !399, scopeLine: 440, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!399 = !DISubroutineType(types: !400)
!400 = !{!397, !389, !401}
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "nullptr_t", scope: !17, file: !402, line: 312, baseType: !403)
!402 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/x86_64-linux-gnu/c++/13/bits/c++config.h", directory: "", checksumkind: CSK_MD5, checksum: "0bd4d19ae337473fb101b6a02c4b83e7")
!403 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "decltype(nullptr)")
!404 = !DISubprogram(name: "operator*", linkageName: "_ZNKSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EEdeEv", scope: !83, file: !84, line: 451, type: !405, scopeLine: 451, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!405 = !DISubroutineType(types: !406)
!406 = !{!407, !414}
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !408, file: !317, line: 1630, baseType: !409)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "add_lvalue_reference<std::thread::_State>", scope: !17, file: !317, line: 1629, size: 8, flags: DIFlagTypePassByValue, elements: !164, templateParams: !131, identifier: "_ZTSSt20add_lvalue_referenceINSt6thread6_StateEE")
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "__add_lval_ref_t<std::thread::_State>", scope: !17, file: !317, line: 1071, baseType: !410)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !411, file: !317, line: 1068, baseType: !413)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__add_lvalue_reference_helper<std::thread::_State, void>", scope: !17, file: !317, line: 1067, size: 8, flags: DIFlagTypePassByValue, elements: !164, templateParams: !412, identifier: "_ZTSSt29__add_lvalue_reference_helperINSt6thread6_StateEvE")
!412 = !{!132, !343}
!413 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !118, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!415 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !83)
!416 = !DISubprogram(name: "operator->", linkageName: "_ZNKSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EEptEv", scope: !83, file: !84, line: 460, type: !417, scopeLine: 460, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!417 = !DISubroutineType(types: !418)
!418 = !{!419, !414}
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !83, file: !84, line: 286, baseType: !337)
!420 = !DISubprogram(name: "get", linkageName: "_ZNKSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EE3getEv", scope: !83, file: !84, line: 469, type: !417, scopeLine: 469, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!421 = !DISubprogram(name: "get_deleter", linkageName: "_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EE11get_deleterEv", scope: !83, file: !84, line: 475, type: !422, scopeLine: 475, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!422 = !DISubroutineType(types: !423)
!423 = !{!424, !389}
!424 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !425, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "deleter_type", scope: !83, file: !84, line: 288, baseType: !106)
!426 = !DISubprogram(name: "get_deleter", linkageName: "_ZNKSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EE11get_deleterEv", scope: !83, file: !84, line: 481, type: !427, scopeLine: 481, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!427 = !DISubroutineType(types: !428)
!428 = !{!429, !414}
!429 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !430, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !425)
!431 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EEcvbEv", scope: !83, file: !84, line: 486, type: !432, scopeLine: 486, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!432 = !DISubroutineType(types: !433)
!433 = !{!66, !414}
!434 = !DISubprogram(name: "release", linkageName: "_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EE7releaseEv", scope: !83, file: !84, line: 494, type: !435, scopeLine: 494, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!435 = !DISubroutineType(types: !436)
!436 = !{!419, !389}
!437 = !DISubprogram(name: "reset", linkageName: "_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EE5resetEPS1_", scope: !83, file: !84, line: 505, type: !438, scopeLine: 505, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!438 = !DISubroutineType(types: !439)
!439 = !{null, !389, !419}
!440 = !DISubprogram(name: "swap", linkageName: "_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EE4swapERS4_", scope: !83, file: !84, line: 515, type: !441, scopeLine: 515, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!441 = !DISubroutineType(types: !442)
!442 = !{null, !389, !397}
!443 = !DISubprogram(name: "unique_ptr", scope: !83, file: !84, line: 522, type: !444, scopeLine: 522, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagDeleted)
!444 = !DISubroutineType(types: !445)
!445 = !{null, !389, !446}
!446 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !415, size: 64)
!447 = !DISubprogram(name: "operator=", linkageName: "_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EEaSERKS4_", scope: !83, file: !84, line: 523, type: !448, scopeLine: 523, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagDeleted)
!448 = !DISubroutineType(types: !449)
!449 = !{!397, !389, !446}
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "__tag", scope: !452, file: !451, line: 95, baseType: !470)
!451 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/invoke.h", directory: "")
!452 = distinct !DISubprogram(name: "__invoke<void (*)(int *), int *>", linkageName: "_ZSt8__invokeIPFvPiEJS0_EENSt15__invoke_resultIT_JDpT0_EE4typeEOS4_DpOS5_", scope: !17, file: !451, line: 90, type: !453, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !465, retainedNodes: !164)
!453 = !DISubroutineType(types: !454)
!454 = !{!455, !459, !464}
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !456, file: !317, line: 2258, baseType: null)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__success_type<void>", scope: !17, file: !317, line: 2257, size: 8, flags: DIFlagTypePassByValue, elements: !164, templateParams: !457, identifier: "_ZTSSt14__success_typeIvE")
!457 = !{!458}
!458 = !DITemplateTypeParameter(name: "_Tp", type: null)
!459 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !460, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DISubroutineType(types: !462)
!462 = !{null, !463}
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !463, size: 64)
!465 = !{!466, !467}
!466 = !DITemplateTypeParameter(name: "_Callable", type: !460)
!467 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Args", value: !468)
!468 = !{!469}
!469 = !DITemplateTypeParameter(type: !463)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "__invoke_type", scope: !471, file: !317, line: 2411, baseType: !476)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__result_of_success<void, std::__invoke_other>", scope: !17, file: !317, line: 2410, size: 8, flags: DIFlagTypePassByValue, elements: !472, templateParams: !474, identifier: "_ZTSSt19__result_of_successIvSt14__invoke_otherE")
!472 = !{!473}
!473 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !471, baseType: !456, extraData: i32 0)
!474 = !{!458, !475}
!475 = !DITemplateTypeParameter(name: "_Tag", type: !476)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__invoke_other", scope: !17, file: !317, line: 2406, size: 8, flags: DIFlagTypePassByValue, elements: !164, identifier: "_ZTSSt14__invoke_other")
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_State_impl<std::thread::_Invoker<std::tuple<void (*)(int *), int *> > >", scope: !16, file: !15, line: 234, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !478, vtableHolder: !118, templateParams: !672, identifier: "_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPiES3_EEEEEE")
!478 = !{!479, !480, !668}
!479 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !477, baseType: !118, extraData: i32 0)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "_M_func", scope: !477, file: !15, line: 236, baseType: !481, size: 128, offset: 64)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Invoker<std::tuple<void (*)(int *), int *> >", scope: !16, file: !15, line: 272, size: 128, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !482, templateParams: !666, identifier: "_ZTSNSt6thread8_InvokerISt5tupleIJPFvPiES2_EEEE")
!482 = !{!483, !662}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "_M_t", scope: !481, file: !15, line: 280, baseType: !484, size: 128)
!484 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "tuple<void (*)(int *), int *>", scope: !17, file: !94, line: 1232, size: 128, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !485, templateParams: !661, identifier: "_ZTSSt5tupleIJPFvPiES0_EE")
!485 = !{!486, !636, !637, !643, !647, !653, !658}
!486 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !484, baseType: !487, flags: DIFlagPublic, extraData: i32 0)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Tuple_impl<0UL, void (*)(int *), int *>", scope: !17, file: !94, line: 259, size: 128, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !488, templateParams: !632, identifier: "_ZTSSt11_Tuple_implILm0EJPFvPiES0_EE")
!488 = !{!489, !558, !593, !597, !602, !607, !612, !616, !619, !622, !625, !629}
!489 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !487, baseType: !490, extraData: i32 0)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Tuple_impl<1UL, int *>", scope: !17, file: !94, line: 489, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !491, templateParams: !556, identifier: "_ZTSSt11_Tuple_implILm1EJPiEE")
!491 = !{!492, !527, !531, !536, !540, !543, !546, !549, !553}
!492 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !490, baseType: !493, flags: DIFlagPrivate, extraData: i32 0)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Head_base<1UL, int *, false>", scope: !17, file: !94, line: 188, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !494, templateParams: !525, identifier: "_ZTSSt10_Head_baseILm1EPiLb0EE")
!494 = !{!495, !496, !500, !505, !510, !514, !517, !522}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "_M_head_impl", scope: !493, file: !94, line: 239, baseType: !463, size: 64)
!496 = !DISubprogram(name: "_Head_base", scope: !493, file: !94, line: 190, type: !497, scopeLine: 190, flags: DIFlagPrototyped, spFlags: 0)
!497 = !DISubroutineType(types: !498)
!498 = !{null, !499}
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!500 = !DISubprogram(name: "_Head_base", scope: !493, file: !94, line: 193, type: !501, scopeLine: 193, flags: DIFlagPrototyped, spFlags: 0)
!501 = !DISubroutineType(types: !502)
!502 = !{null, !499, !503}
!503 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !504, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !463)
!505 = !DISubprogram(name: "_Head_base", scope: !493, file: !94, line: 196, type: !506, scopeLine: 196, flags: DIFlagPrototyped, spFlags: 0)
!506 = !DISubroutineType(types: !507)
!507 = !{null, !499, !508}
!508 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !509, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !493)
!510 = !DISubprogram(name: "_Head_base", scope: !493, file: !94, line: 197, type: !511, scopeLine: 197, flags: DIFlagPrototyped, spFlags: 0)
!511 = !DISubroutineType(types: !512)
!512 = !{null, !499, !513}
!513 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !493, size: 64)
!514 = !DISubprogram(name: "_Head_base", scope: !493, file: !94, line: 204, type: !515, scopeLine: 204, flags: DIFlagPrototyped, spFlags: 0)
!515 = !DISubroutineType(types: !516)
!516 = !{null, !499, !153, !160}
!517 = !DISubprogram(name: "_M_head", linkageName: "_ZNSt10_Head_baseILm1EPiLb0EE7_M_headERS1_", scope: !493, file: !94, line: 234, type: !518, scopeLine: 234, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!518 = !DISubroutineType(types: !519)
!519 = !{!520, !521}
!520 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !463, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !493, size: 64)
!522 = !DISubprogram(name: "_M_head", linkageName: "_ZNSt10_Head_baseILm1EPiLb0EE7_M_headERKS1_", scope: !493, file: !94, line: 237, type: !523, scopeLine: 237, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!523 = !DISubroutineType(types: !524)
!524 = !{!503, !508}
!525 = !{!183, !526, !255}
!526 = !DITemplateTypeParameter(name: "_Head", type: !463)
!527 = !DISubprogram(name: "_M_head", linkageName: "_ZNSt11_Tuple_implILm1EJPiEE7_M_headERS1_", scope: !490, file: !94, line: 497, type: !528, scopeLine: 497, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!528 = !DISubroutineType(types: !529)
!529 = !{!520, !530}
!530 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !490, size: 64)
!531 = !DISubprogram(name: "_M_head", linkageName: "_ZNSt11_Tuple_implILm1EJPiEE7_M_headERKS1_", scope: !490, file: !94, line: 500, type: !532, scopeLine: 500, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!532 = !DISubroutineType(types: !533)
!533 = !{!503, !534}
!534 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !535, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !490)
!536 = !DISubprogram(name: "_Tuple_impl", scope: !490, file: !94, line: 503, type: !537, scopeLine: 503, flags: DIFlagPrototyped, spFlags: 0)
!537 = !DISubroutineType(types: !538)
!538 = !{null, !539}
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!540 = !DISubprogram(name: "_Tuple_impl", scope: !490, file: !94, line: 507, type: !541, scopeLine: 507, flags: DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!541 = !DISubroutineType(types: !542)
!542 = !{null, !539, !503}
!543 = !DISubprogram(name: "_Tuple_impl", scope: !490, file: !94, line: 517, type: !544, scopeLine: 517, flags: DIFlagPrototyped, spFlags: 0)
!544 = !DISubroutineType(types: !545)
!545 = !{null, !539, !534}
!546 = !DISubprogram(name: "operator=", linkageName: "_ZNSt11_Tuple_implILm1EJPiEEaSERKS1_", scope: !490, file: !94, line: 521, type: !547, scopeLine: 521, flags: DIFlagPrototyped, spFlags: DISPFlagDeleted)
!547 = !DISubroutineType(types: !548)
!548 = !{!530, !539, !534}
!549 = !DISubprogram(name: "_Tuple_impl", scope: !490, file: !94, line: 527, type: !550, scopeLine: 527, flags: DIFlagPrototyped, spFlags: 0)
!550 = !DISubroutineType(types: !551)
!551 = !{null, !539, !552}
!552 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !490, size: 64)
!553 = !DISubprogram(name: "_M_swap", linkageName: "_ZNSt11_Tuple_implILm1EJPiEE7_M_swapERS1_", scope: !490, file: !94, line: 666, type: !554, scopeLine: 666, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!554 = !DISubroutineType(types: !555)
!555 = !{null, !539, !530}
!556 = !{!183, !557}
!557 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Elements", value: !468)
!558 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !487, baseType: !559, offset: 64, flags: DIFlagPrivate, extraData: i32 0)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Head_base<0UL, void (*)(int *), false>", scope: !17, file: !94, line: 188, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !560, templateParams: !591, identifier: "_ZTSSt10_Head_baseILm0EPFvPiELb0EE")
!560 = !{!561, !562, !566, !571, !576, !580, !583, !588}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "_M_head_impl", scope: !559, file: !94, line: 239, baseType: !460, size: 64)
!562 = !DISubprogram(name: "_Head_base", scope: !559, file: !94, line: 190, type: !563, scopeLine: 190, flags: DIFlagPrototyped, spFlags: 0)
!563 = !DISubroutineType(types: !564)
!564 = !{null, !565}
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!566 = !DISubprogram(name: "_Head_base", scope: !559, file: !94, line: 193, type: !567, scopeLine: 193, flags: DIFlagPrototyped, spFlags: 0)
!567 = !DISubroutineType(types: !568)
!568 = !{null, !565, !569}
!569 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !570, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !460)
!571 = !DISubprogram(name: "_Head_base", scope: !559, file: !94, line: 196, type: !572, scopeLine: 196, flags: DIFlagPrototyped, spFlags: 0)
!572 = !DISubroutineType(types: !573)
!573 = !{null, !565, !574}
!574 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !575, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !559)
!576 = !DISubprogram(name: "_Head_base", scope: !559, file: !94, line: 197, type: !577, scopeLine: 197, flags: DIFlagPrototyped, spFlags: 0)
!577 = !DISubroutineType(types: !578)
!578 = !{null, !565, !579}
!579 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !559, size: 64)
!580 = !DISubprogram(name: "_Head_base", scope: !559, file: !94, line: 204, type: !581, scopeLine: 204, flags: DIFlagPrototyped, spFlags: 0)
!581 = !DISubroutineType(types: !582)
!582 = !{null, !565, !153, !160}
!583 = !DISubprogram(name: "_M_head", linkageName: "_ZNSt10_Head_baseILm0EPFvPiELb0EE7_M_headERS3_", scope: !559, file: !94, line: 234, type: !584, scopeLine: 234, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!584 = !DISubroutineType(types: !585)
!585 = !{!586, !587}
!586 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !460, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !559, size: 64)
!588 = !DISubprogram(name: "_M_head", linkageName: "_ZNSt10_Head_baseILm0EPFvPiELb0EE7_M_headERKS3_", scope: !559, file: !94, line: 237, type: !589, scopeLine: 237, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!589 = !DISubroutineType(types: !590)
!590 = !{!569, !574}
!591 = !{!253, !592, !255}
!592 = !DITemplateTypeParameter(name: "_Head", type: !460)
!593 = !DISubprogram(name: "_M_head", linkageName: "_ZNSt11_Tuple_implILm0EJPFvPiES0_EE7_M_headERS3_", scope: !487, file: !94, line: 269, type: !594, scopeLine: 269, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!594 = !DISubroutineType(types: !595)
!595 = !{!586, !596}
!596 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !487, size: 64)
!597 = !DISubprogram(name: "_M_head", linkageName: "_ZNSt11_Tuple_implILm0EJPFvPiES0_EE7_M_headERKS3_", scope: !487, file: !94, line: 272, type: !598, scopeLine: 272, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!598 = !DISubroutineType(types: !599)
!599 = !{!569, !600}
!600 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !601, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !487)
!602 = !DISubprogram(name: "_M_tail", linkageName: "_ZNSt11_Tuple_implILm0EJPFvPiES0_EE7_M_tailERS3_", scope: !487, file: !94, line: 275, type: !603, scopeLine: 275, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!603 = !DISubroutineType(types: !604)
!604 = !{!605, !596}
!605 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !606, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Inherited", scope: !487, file: !94, line: 265, baseType: !490)
!607 = !DISubprogram(name: "_M_tail", linkageName: "_ZNSt11_Tuple_implILm0EJPFvPiES0_EE7_M_tailERKS3_", scope: !487, file: !94, line: 278, type: !608, scopeLine: 278, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!608 = !DISubroutineType(types: !609)
!609 = !{!610, !600}
!610 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !611, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !606)
!612 = !DISubprogram(name: "_Tuple_impl", scope: !487, file: !94, line: 280, type: !613, scopeLine: 280, flags: DIFlagPrototyped, spFlags: 0)
!613 = !DISubroutineType(types: !614)
!614 = !{null, !615}
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!616 = !DISubprogram(name: "_Tuple_impl", scope: !487, file: !94, line: 284, type: !617, scopeLine: 284, flags: DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!617 = !DISubroutineType(types: !618)
!618 = !{null, !615, !569, !503}
!619 = !DISubprogram(name: "_Tuple_impl", scope: !487, file: !94, line: 296, type: !620, scopeLine: 296, flags: DIFlagPrototyped, spFlags: 0)
!620 = !DISubroutineType(types: !621)
!621 = !{null, !615, !600}
!622 = !DISubprogram(name: "operator=", linkageName: "_ZNSt11_Tuple_implILm0EJPFvPiES0_EEaSERKS3_", scope: !487, file: !94, line: 300, type: !623, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagDeleted)
!623 = !DISubroutineType(types: !624)
!624 = !{!596, !615, !600}
!625 = !DISubprogram(name: "_Tuple_impl", scope: !487, file: !94, line: 302, type: !626, scopeLine: 302, flags: DIFlagPrototyped, spFlags: 0)
!626 = !DISubroutineType(types: !627)
!627 = !{null, !615, !628}
!628 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !487, size: 64)
!629 = !DISubprogram(name: "_M_swap", linkageName: "_ZNSt11_Tuple_implILm0EJPFvPiES0_EE7_M_swapERS3_", scope: !487, file: !94, line: 469, type: !630, scopeLine: 469, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!630 = !DISubroutineType(types: !631)
!631 = !{null, !615, !596}
!632 = !{!253, !633}
!633 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Elements", value: !634)
!634 = !{!635, !469}
!635 = !DITemplateTypeParameter(type: !460)
!636 = !DISubprogram(name: "__nothrow_default_constructible", linkageName: "_ZNSt5tupleIJPFvPiES0_EE31__nothrow_default_constructibleEv", scope: !484, file: !94, line: 1286, type: !300, scopeLine: 1286, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!637 = !DISubprogram(name: "tuple", scope: !484, file: !94, line: 1349, type: !638, scopeLine: 1349, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!638 = !DISubroutineType(types: !639)
!639 = !{null, !640, !641}
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!641 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !642, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !484)
!643 = !DISubprogram(name: "tuple", scope: !484, file: !94, line: 1351, type: !644, scopeLine: 1351, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!644 = !DISubroutineType(types: !645)
!645 = !{null, !640, !646}
!646 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !484, size: 64)
!647 = !DISubprogram(name: "operator=", linkageName: "_ZNSt5tupleIJPFvPiES0_EEaSERKS3_", scope: !484, file: !94, line: 1605, type: !648, scopeLine: 1605, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!648 = !DISubroutineType(types: !649)
!649 = !{!650, !640, !651}
!650 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !484, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "__conditional_t<__assignable<void (*const &)(int *), int *const &>(), const std::tuple<void (*)(int *), int *> &, const std::__nonesuch &>", scope: !17, file: !317, line: 134, baseType: !652)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "type<const std::tuple<void (*)(int *), int *> &, const std::__nonesuch &>", scope: !319, file: !317, line: 122, baseType: !641)
!653 = !DISubprogram(name: "operator=", linkageName: "_ZNSt5tupleIJPFvPiES0_EEaSEOS3_", scope: !484, file: !94, line: 1616, type: !654, scopeLine: 1616, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!654 = !DISubroutineType(types: !655)
!655 = !{!650, !640, !656}
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "__conditional_t<__assignable<void (*)(int *), int *>(), std::tuple<void (*)(int *), int *> &&, std::__nonesuch &&>", scope: !17, file: !317, line: 134, baseType: !657)
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "type<std::tuple<void (*)(int *), int *> &&, std::__nonesuch &&>", scope: !319, file: !317, line: 122, baseType: !646)
!658 = !DISubprogram(name: "swap", linkageName: "_ZNSt5tupleIJPFvPiES0_EE4swapERS3_", scope: !484, file: !94, line: 1731, type: !659, scopeLine: 1731, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!659 = !DISubroutineType(types: !660)
!660 = !{null, !640, !650}
!661 = !{!633}
!662 = !DISubprogram(name: "operator()", linkageName: "_ZNSt6thread8_InvokerISt5tupleIJPFvPiES2_EEEclEv", scope: !481, file: !15, line: 295, type: !663, scopeLine: 295, flags: DIFlagPrototyped, spFlags: 0)
!663 = !DISubroutineType(types: !664)
!664 = !{!455, !665}
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!666 = !{!667}
!667 = !DITemplateTypeParameter(name: "_Tuple", type: !484)
!668 = !DISubprogram(name: "_M_run", linkageName: "_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPiES3_EEEEE6_M_runEv", scope: !477, file: !15, line: 244, type: !669, scopeLine: 244, containingType: !477, virtualIndex: 2, flags: DIFlagPrototyped, spFlags: DISPFlagVirtual)
!669 = !DISubroutineType(types: !670)
!670 = !{null, !671}
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!672 = !{!673}
!673 = !DITemplateTypeParameter(name: "_Callable", type: !481)
!674 = !{!0}
!675 = !{!676, !694, !697, !702, !710, !718, !722, !729, !733, !737, !739, !741, !745, !756, !760, !766, !772, !774, !778, !782, !786, !790, !803, !805, !809, !813, !817, !819, !825, !829, !833, !835, !837, !841, !863, !867, !871, !875, !877, !883, !885, !892, !897, !901, !905, !909, !913, !917, !919, !921, !925, !929, !933, !935, !939, !943, !945, !947, !951, !956, !961, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !980, !984, !989, !993, !997, !1002, !1008, !1010, !1012, !1014, !1016, !1018, !1020, !1022, !1024, !1026, !1028, !1030, !1032, !1034, !1038, !1042, !1046, !1052, !1054, !1058, !1060, !1064, !1068, !1072, !1080, !1084, !1088, !1092, !1096, !1100, !1104, !1108, !1112, !1116, !1120, !1124, !1128, !1130, !1132, !1136, !1140, !1146, !1150, !1154, !1156, !1160, !1164, !1170, !1172, !1176, !1180, !1184, !1188, !1192, !1196, !1200, !1201, !1202, !1203, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1215, !1221, !1226, !1230, !1232, !1234, !1236, !1238, !1245, !1249, !1253, !1257, !1261, !1265, !1270, !1274, !1276, !1280, !1286, !1290, !1295, !1297, !1299, !1303, !1307, !1309, !1311, !1313, !1315, !1319, !1321, !1323, !1327, !1331, !1335, !1339, !1343, !1347, !1349, !1353, !1357, !1361, !1365, !1367, !1369, !1373, !1377, !1378, !1379, !1380, !1381, !1382, !1390, !1393, !1394, !1396, !1398, !1400, !1402, !1406, !1408, !1410, !1412, !1414, !1416, !1418, !1420, !1422, !1426, !1430, !1432, !1436, !1440, !1446, !1450, !1452, !1455, !1458, !1460, !1462, !1464, !1467, !1470, !1473, !1476, !1479, !1481, !1486, !1490, !1493, !1496, !1498, !1500, !1502, !1504, !1507, !1510, !1513, !1516, !1519, !1521, !1526, !1530, !1531, !1536, !1540, !1545, !1550, !1554, !1560, !1564, !1566, !1570, !1575, !1583, !1588, !1595, !1600, !1602, !1605, !1611, !1613, !1615, !1619, !1621, !1623, !1625, !1627, !1629, !1631, !1633, !1637, !1641, !1643, !1645, !1650, !1652, !1654, !1656, !1658, !1660, !1662, !1665, !1667, !1669, !1673, !1677, !1679, !1681, !1683, !1685, !1687, !1689, !1691, !1693, !1695, !1697, !1701, !1705, !1707, !1709, !1711, !1713, !1715, !1717, !1719, !1721, !1723, !1725, !1727, !1729, !1731, !1733, !1735, !1739, !1743, !1747, !1749, !1751, !1753, !1755, !1757, !1759, !1761, !1763, !1765, !1769, !1773, !1777, !1779, !1781, !1783, !1787, !1791, !1795, !1797, !1799, !1801, !1803, !1805, !1807, !1809, !1811, !1813, !1815, !1817, !1819, !1823, !1827, !1831, !1833, !1835, !1837, !1839, !1843, !1847, !1849, !1851, !1853, !1855, !1857, !1859, !1863, !1867, !1869, !1871, !1873, !1875, !1879, !1883, !1887, !1889, !1891, !1893, !1895, !1897, !1899, !1903, !1907, !1911, !1913, !1917, !1921, !1923, !1925, !1927, !1929, !1931, !1933, !1938, !1945, !1947, !1953, !1957, !1961, !1965, !1969, !1973, !1975, !1977, !1979, !1983, !1987, !1991, !1995, !1999, !2001, !2003, !2005, !2009, !2013, !2017, !2019, !2021, !2026, !2028, !2031, !2036, !2038, !2044, !2046, !2048, !2050, !2055, !2057, !2063, !2065, !2067, !2068, !2069, !2070, !2071, !2072, !2073, !2074, !2075, !2076, !2077, !2078, !2079, !2084, !2088, !2092, !2096, !2100, !2104, !2108, !2117, !2121, !2128, !2132}
!676 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !677, file: !693, line: 64)
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !678, line: 6, baseType: !679)
!678 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !680, line: 21, baseType: !681)
!680 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !680, line: 13, size: 64, flags: DIFlagTypePassByValue, elements: !682, identifier: "_ZTS11__mbstate_t")
!682 = !{!683, !684}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !681, file: !680, line: 15, baseType: !125, size: 32)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !681, file: !680, line: 20, baseType: !685, size: 32, offset: 32)
!685 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !681, file: !680, line: 16, size: 32, flags: DIFlagTypePassByValue, elements: !686, identifier: "_ZTSN11__mbstate_tUt_E")
!686 = !{!687, !688}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !685, file: !680, line: 18, baseType: !8, size: 32)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !685, file: !680, line: 19, baseType: !689, size: 32)
!689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !690, size: 32, elements: !691)
!690 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!691 = !{!692}
!692 = !DISubrange(count: 4)
!693 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cwchar", directory: "")
!694 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !695, file: !693, line: 141)
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !696, line: 20, baseType: !8)
!696 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!697 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !698, file: !693, line: 143)
!698 = !DISubprogram(name: "btowc", scope: !699, file: !699, line: 284, type: !700, flags: DIFlagPrototyped, spFlags: 0)
!699 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "8900d9ecbbe40d052c41becfbc5b5531")
!700 = !DISubroutineType(types: !701)
!701 = !{!695, !125}
!702 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !703, file: !693, line: 144)
!703 = !DISubprogram(name: "fgetwc", scope: !699, file: !699, line: 726, type: !704, flags: DIFlagPrototyped, spFlags: 0)
!704 = !DISubroutineType(types: !705)
!705 = !{!695, !706}
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !708, line: 5, baseType: !709)
!708 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "72a8fe90981f484acae7c6f3dfc5c2b7")
!709 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !708, line: 4, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS8_IO_FILE")
!710 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !711, file: !693, line: 145)
!711 = !DISubprogram(name: "fgetws", scope: !699, file: !699, line: 755, type: !712, flags: DIFlagPrototyped, spFlags: 0)
!712 = !DISubroutineType(types: !713)
!713 = !{!714, !716, !125, !717}
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!716 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !714)
!717 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !706)
!718 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !719, file: !693, line: 146)
!719 = !DISubprogram(name: "fputwc", scope: !699, file: !699, line: 740, type: !720, flags: DIFlagPrototyped, spFlags: 0)
!720 = !DISubroutineType(types: !721)
!721 = !{!695, !715, !706}
!722 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !723, file: !693, line: 147)
!723 = !DISubprogram(name: "fputws", scope: !699, file: !699, line: 762, type: !724, flags: DIFlagPrototyped, spFlags: 0)
!724 = !DISubroutineType(types: !725)
!725 = !{!125, !726, !717}
!726 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !727)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !715)
!729 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !730, file: !693, line: 148)
!730 = !DISubprogram(name: "fwide", scope: !699, file: !699, line: 573, type: !731, flags: DIFlagPrototyped, spFlags: 0)
!731 = !DISubroutineType(types: !732)
!732 = !{!125, !706, !125}
!733 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !734, file: !693, line: 149)
!734 = !DISubprogram(name: "fwprintf", scope: !699, file: !699, line: 580, type: !735, flags: DIFlagPrototyped, spFlags: 0)
!735 = !DISubroutineType(types: !736)
!736 = !{!125, !717, !726, null}
!737 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !738, file: !693, line: 150)
!738 = !DISubprogram(name: "fwscanf", linkageName: "__isoc99_fwscanf", scope: !699, file: !699, line: 640, type: !735, flags: DIFlagPrototyped, spFlags: 0)
!739 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !740, file: !693, line: 151)
!740 = !DISubprogram(name: "getwc", scope: !699, file: !699, line: 727, type: !704, flags: DIFlagPrototyped, spFlags: 0)
!741 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !742, file: !693, line: 152)
!742 = !DISubprogram(name: "getwchar", scope: !699, file: !699, line: 733, type: !743, flags: DIFlagPrototyped, spFlags: 0)
!743 = !DISubroutineType(types: !744)
!744 = !{!695}
!745 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !746, file: !693, line: 153)
!746 = !DISubprogram(name: "mbrlen", scope: !699, file: !699, line: 307, type: !747, flags: DIFlagPrototyped, spFlags: 0)
!747 = !DISubroutineType(types: !748)
!748 = !{!749, !751, !749, !754}
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !750, line: 46, baseType: !28)
!750 = !DIFile(filename: "lib/clang/14.0.6/include/stddef.h", directory: "/home/cs22mtech12008/llvm-project/build", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!751 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !752)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !690)
!754 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !755)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!756 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !757, file: !693, line: 154)
!757 = !DISubprogram(name: "mbrtowc", scope: !699, file: !699, line: 296, type: !758, flags: DIFlagPrototyped, spFlags: 0)
!758 = !DISubroutineType(types: !759)
!759 = !{!749, !716, !751, !749, !754}
!760 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !761, file: !693, line: 155)
!761 = !DISubprogram(name: "mbsinit", scope: !699, file: !699, line: 292, type: !762, flags: DIFlagPrototyped, spFlags: 0)
!762 = !DISubroutineType(types: !763)
!763 = !{!125, !764}
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !677)
!766 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !767, file: !693, line: 156)
!767 = !DISubprogram(name: "mbsrtowcs", scope: !699, file: !699, line: 337, type: !768, flags: DIFlagPrototyped, spFlags: 0)
!768 = !DISubroutineType(types: !769)
!769 = !{!749, !716, !770, !749, !754}
!770 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !771)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!772 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !773, file: !693, line: 157)
!773 = !DISubprogram(name: "putwc", scope: !699, file: !699, line: 741, type: !720, flags: DIFlagPrototyped, spFlags: 0)
!774 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !775, file: !693, line: 158)
!775 = !DISubprogram(name: "putwchar", scope: !699, file: !699, line: 747, type: !776, flags: DIFlagPrototyped, spFlags: 0)
!776 = !DISubroutineType(types: !777)
!777 = !{!695, !715}
!778 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !779, file: !693, line: 160)
!779 = !DISubprogram(name: "swprintf", scope: !699, file: !699, line: 590, type: !780, flags: DIFlagPrototyped, spFlags: 0)
!780 = !DISubroutineType(types: !781)
!781 = !{!125, !716, !749, !726, null}
!782 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !783, file: !693, line: 162)
!783 = !DISubprogram(name: "swscanf", linkageName: "__isoc99_swscanf", scope: !699, file: !699, line: 647, type: !784, flags: DIFlagPrototyped, spFlags: 0)
!784 = !DISubroutineType(types: !785)
!785 = !{!125, !726, !726, null}
!786 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !787, file: !693, line: 163)
!787 = !DISubprogram(name: "ungetwc", scope: !699, file: !699, line: 770, type: !788, flags: DIFlagPrototyped, spFlags: 0)
!788 = !DISubroutineType(types: !789)
!789 = !{!695, !695, !706}
!790 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !791, file: !693, line: 164)
!791 = !DISubprogram(name: "vfwprintf", scope: !699, file: !699, line: 598, type: !792, flags: DIFlagPrototyped, spFlags: 0)
!792 = !DISubroutineType(types: !793)
!793 = !{!125, !717, !726, !794}
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, flags: DIFlagTypePassByValue, elements: !796, identifier: "_ZTS13__va_list_tag")
!796 = !{!797, !799, !800, !802}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !795, file: !798, baseType: !8, size: 32)
!798 = !DIFile(filename: "Reproduced_UAF/Synthetic_bugs/Object_patterns/stack_param_by_ref_2.cpp", directory: "/home/cs22mtech12008")
!799 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !795, file: !798, baseType: !8, size: 32, offset: 32)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !795, file: !798, baseType: !801, size: 64, offset: 64)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !795, file: !798, baseType: !801, size: 64, offset: 128)
!803 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !804, file: !693, line: 166)
!804 = !DISubprogram(name: "vfwscanf", linkageName: "__isoc99_vfwscanf", scope: !699, file: !699, line: 693, type: !792, flags: DIFlagPrototyped, spFlags: 0)
!805 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !806, file: !693, line: 169)
!806 = !DISubprogram(name: "vswprintf", scope: !699, file: !699, line: 611, type: !807, flags: DIFlagPrototyped, spFlags: 0)
!807 = !DISubroutineType(types: !808)
!808 = !{!125, !716, !749, !726, !794}
!809 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !810, file: !693, line: 172)
!810 = !DISubprogram(name: "vswscanf", linkageName: "__isoc99_vswscanf", scope: !699, file: !699, line: 700, type: !811, flags: DIFlagPrototyped, spFlags: 0)
!811 = !DISubroutineType(types: !812)
!812 = !{!125, !726, !726, !794}
!813 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !814, file: !693, line: 174)
!814 = !DISubprogram(name: "vwprintf", scope: !699, file: !699, line: 606, type: !815, flags: DIFlagPrototyped, spFlags: 0)
!815 = !DISubroutineType(types: !816)
!816 = !{!125, !726, !794}
!817 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !818, file: !693, line: 176)
!818 = !DISubprogram(name: "vwscanf", linkageName: "__isoc99_vwscanf", scope: !699, file: !699, line: 697, type: !815, flags: DIFlagPrototyped, spFlags: 0)
!819 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !820, file: !693, line: 178)
!820 = !DISubprogram(name: "wcrtomb", scope: !699, file: !699, line: 301, type: !821, flags: DIFlagPrototyped, spFlags: 0)
!821 = !DISubroutineType(types: !822)
!822 = !{!749, !823, !715, !754}
!823 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !824)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!825 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !826, file: !693, line: 179)
!826 = !DISubprogram(name: "wcscat", scope: !699, file: !699, line: 97, type: !827, flags: DIFlagPrototyped, spFlags: 0)
!827 = !DISubroutineType(types: !828)
!828 = !{!714, !716, !726}
!829 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !830, file: !693, line: 180)
!830 = !DISubprogram(name: "wcscmp", scope: !699, file: !699, line: 106, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!831 = !DISubroutineType(types: !832)
!832 = !{!125, !727, !727}
!833 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !834, file: !693, line: 181)
!834 = !DISubprogram(name: "wcscoll", scope: !699, file: !699, line: 131, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!835 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !836, file: !693, line: 182)
!836 = !DISubprogram(name: "wcscpy", scope: !699, file: !699, line: 87, type: !827, flags: DIFlagPrototyped, spFlags: 0)
!837 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !838, file: !693, line: 183)
!838 = !DISubprogram(name: "wcscspn", scope: !699, file: !699, line: 187, type: !839, flags: DIFlagPrototyped, spFlags: 0)
!839 = !DISubroutineType(types: !840)
!840 = !{!749, !727, !727}
!841 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !842, file: !693, line: 184)
!842 = !DISubprogram(name: "wcsftime", scope: !699, file: !699, line: 834, type: !843, flags: DIFlagPrototyped, spFlags: 0)
!843 = !DISubroutineType(types: !844)
!844 = !{!749, !716, !749, !726, !845}
!845 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !846)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !848)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !849, line: 7, size: 448, flags: DIFlagTypePassByValue, elements: !850, identifier: "_ZTS2tm")
!849 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_tm.h", directory: "", checksumkind: CSK_MD5, checksum: "9e5545b565ef031c4cd0faf90b69386f")
!850 = !{!851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !862}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !848, file: !849, line: 9, baseType: !125, size: 32)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !848, file: !849, line: 10, baseType: !125, size: 32, offset: 32)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !848, file: !849, line: 11, baseType: !125, size: 32, offset: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !848, file: !849, line: 12, baseType: !125, size: 32, offset: 96)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !848, file: !849, line: 13, baseType: !125, size: 32, offset: 128)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !848, file: !849, line: 14, baseType: !125, size: 32, offset: 160)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !848, file: !849, line: 15, baseType: !125, size: 32, offset: 192)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !848, file: !849, line: 16, baseType: !125, size: 32, offset: 224)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !848, file: !849, line: 17, baseType: !125, size: 32, offset: 256)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "tm_gmtoff", scope: !848, file: !849, line: 20, baseType: !861, size: 64, offset: 320)
!861 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "tm_zone", scope: !848, file: !849, line: 21, baseType: !752, size: 64, offset: 384)
!863 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !864, file: !693, line: 185)
!864 = !DISubprogram(name: "wcslen", scope: !699, file: !699, line: 222, type: !865, flags: DIFlagPrototyped, spFlags: 0)
!865 = !DISubroutineType(types: !866)
!866 = !{!749, !727}
!867 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !868, file: !693, line: 186)
!868 = !DISubprogram(name: "wcsncat", scope: !699, file: !699, line: 101, type: !869, flags: DIFlagPrototyped, spFlags: 0)
!869 = !DISubroutineType(types: !870)
!870 = !{!714, !716, !726, !749}
!871 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !872, file: !693, line: 187)
!872 = !DISubprogram(name: "wcsncmp", scope: !699, file: !699, line: 109, type: !873, flags: DIFlagPrototyped, spFlags: 0)
!873 = !DISubroutineType(types: !874)
!874 = !{!125, !727, !727, !749}
!875 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !876, file: !693, line: 188)
!876 = !DISubprogram(name: "wcsncpy", scope: !699, file: !699, line: 92, type: !869, flags: DIFlagPrototyped, spFlags: 0)
!877 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !878, file: !693, line: 189)
!878 = !DISubprogram(name: "wcsrtombs", scope: !699, file: !699, line: 343, type: !879, flags: DIFlagPrototyped, spFlags: 0)
!879 = !DISubroutineType(types: !880)
!880 = !{!749, !823, !881, !749, !754}
!881 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !882)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!883 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !884, file: !693, line: 190)
!884 = !DISubprogram(name: "wcsspn", scope: !699, file: !699, line: 191, type: !839, flags: DIFlagPrototyped, spFlags: 0)
!885 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !886, file: !693, line: 191)
!886 = !DISubprogram(name: "wcstod", scope: !699, file: !699, line: 377, type: !887, flags: DIFlagPrototyped, spFlags: 0)
!887 = !DISubroutineType(types: !888)
!888 = !{!889, !726, !890}
!889 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!890 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !891)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!892 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !893, file: !693, line: 193)
!893 = !DISubprogram(name: "wcstof", scope: !699, file: !699, line: 382, type: !894, flags: DIFlagPrototyped, spFlags: 0)
!894 = !DISubroutineType(types: !895)
!895 = !{!896, !726, !890}
!896 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!897 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !898, file: !693, line: 195)
!898 = !DISubprogram(name: "wcstok", scope: !699, file: !699, line: 217, type: !899, flags: DIFlagPrototyped, spFlags: 0)
!899 = !DISubroutineType(types: !900)
!900 = !{!714, !716, !726, !890}
!901 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !902, file: !693, line: 196)
!902 = !DISubprogram(name: "wcstol", scope: !699, file: !699, line: 428, type: !903, flags: DIFlagPrototyped, spFlags: 0)
!903 = !DISubroutineType(types: !904)
!904 = !{!861, !726, !890, !125}
!905 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !906, file: !693, line: 197)
!906 = !DISubprogram(name: "wcstoul", scope: !699, file: !699, line: 433, type: !907, flags: DIFlagPrototyped, spFlags: 0)
!907 = !DISubroutineType(types: !908)
!908 = !{!28, !726, !890, !125}
!909 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !910, file: !693, line: 198)
!910 = !DISubprogram(name: "wcsxfrm", scope: !699, file: !699, line: 135, type: !911, flags: DIFlagPrototyped, spFlags: 0)
!911 = !DISubroutineType(types: !912)
!912 = !{!749, !716, !726, !749}
!913 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !914, file: !693, line: 199)
!914 = !DISubprogram(name: "wctob", scope: !699, file: !699, line: 288, type: !915, flags: DIFlagPrototyped, spFlags: 0)
!915 = !DISubroutineType(types: !916)
!916 = !{!125, !695}
!917 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !918, file: !693, line: 200)
!918 = !DISubprogram(name: "wmemcmp", scope: !699, file: !699, line: 258, type: !873, flags: DIFlagPrototyped, spFlags: 0)
!919 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !920, file: !693, line: 201)
!920 = !DISubprogram(name: "wmemcpy", scope: !699, file: !699, line: 262, type: !869, flags: DIFlagPrototyped, spFlags: 0)
!921 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !922, file: !693, line: 202)
!922 = !DISubprogram(name: "wmemmove", scope: !699, file: !699, line: 267, type: !923, flags: DIFlagPrototyped, spFlags: 0)
!923 = !DISubroutineType(types: !924)
!924 = !{!714, !714, !727, !749}
!925 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !926, file: !693, line: 203)
!926 = !DISubprogram(name: "wmemset", scope: !699, file: !699, line: 271, type: !927, flags: DIFlagPrototyped, spFlags: 0)
!927 = !DISubroutineType(types: !928)
!928 = !{!714, !714, !715, !749}
!929 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !930, file: !693, line: 204)
!930 = !DISubprogram(name: "wprintf", scope: !699, file: !699, line: 587, type: !931, flags: DIFlagPrototyped, spFlags: 0)
!931 = !DISubroutineType(types: !932)
!932 = !{!125, !726, null}
!933 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !934, file: !693, line: 205)
!934 = !DISubprogram(name: "wscanf", linkageName: "__isoc99_wscanf", scope: !699, file: !699, line: 644, type: !931, flags: DIFlagPrototyped, spFlags: 0)
!935 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !936, file: !693, line: 206)
!936 = !DISubprogram(name: "wcschr", scope: !699, file: !699, line: 164, type: !937, flags: DIFlagPrototyped, spFlags: 0)
!937 = !DISubroutineType(types: !938)
!938 = !{!714, !727, !715}
!939 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !940, file: !693, line: 207)
!940 = !DISubprogram(name: "wcspbrk", scope: !699, file: !699, line: 201, type: !941, flags: DIFlagPrototyped, spFlags: 0)
!941 = !DISubroutineType(types: !942)
!942 = !{!714, !727, !727}
!943 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !944, file: !693, line: 208)
!944 = !DISubprogram(name: "wcsrchr", scope: !699, file: !699, line: 174, type: !937, flags: DIFlagPrototyped, spFlags: 0)
!945 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !946, file: !693, line: 209)
!946 = !DISubprogram(name: "wcsstr", scope: !699, file: !699, line: 212, type: !941, flags: DIFlagPrototyped, spFlags: 0)
!947 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !948, file: !693, line: 210)
!948 = !DISubprogram(name: "wmemchr", scope: !699, file: !699, line: 253, type: !949, flags: DIFlagPrototyped, spFlags: 0)
!949 = !DISubroutineType(types: !950)
!950 = !{!714, !727, !715, !749}
!951 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !952, file: !693, line: 251)
!952 = !DISubprogram(name: "wcstold", scope: !699, file: !699, line: 384, type: !953, flags: DIFlagPrototyped, spFlags: 0)
!953 = !DISubroutineType(types: !954)
!954 = !{!955, !726, !890}
!955 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!956 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !957, file: !693, line: 260)
!957 = !DISubprogram(name: "wcstoll", scope: !699, file: !699, line: 441, type: !958, flags: DIFlagPrototyped, spFlags: 0)
!958 = !DISubroutineType(types: !959)
!959 = !{!960, !726, !890, !125}
!960 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!961 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !962, file: !693, line: 261)
!962 = !DISubprogram(name: "wcstoull", scope: !699, file: !699, line: 448, type: !963, flags: DIFlagPrototyped, spFlags: 0)
!963 = !DISubroutineType(types: !964)
!964 = !{!965, !726, !890, !125}
!965 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!966 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !952, file: !693, line: 267)
!967 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !957, file: !693, line: 268)
!968 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !962, file: !693, line: 269)
!969 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !893, file: !693, line: 283)
!970 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !804, file: !693, line: 286)
!971 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !810, file: !693, line: 289)
!972 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !818, file: !693, line: 292)
!973 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !952, file: !693, line: 296)
!974 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !957, file: !693, line: 297)
!975 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !962, file: !693, line: 298)
!976 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !977, file: !978, line: 66)
!977 = !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !979, file: !978, line: 97, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!978 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/exception_ptr.h", directory: "", checksumkind: CSK_MD5, checksum: "314ad14748ccb9ff85c65d17ebb0828b")
!979 = !DINamespace(name: "__exception_ptr", scope: !17)
!980 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !979, entity: !981, file: !978, line: 85)
!981 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !17, file: !978, line: 81, type: !982, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!982 = !DISubroutineType(types: !983)
!983 = !{null, !977}
!984 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !985, file: !978, line: 243)
!985 = !DISubprogram(name: "swap", linkageName: "_ZNSt15__exception_ptr4swapERNS_13exception_ptrES1_", scope: !979, file: !978, line: 230, type: !986, flags: DIFlagPrototyped, spFlags: 0)
!986 = !DISubroutineType(types: !987)
!987 = !{null, !988, !988}
!988 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !977, size: 64)
!989 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !990, file: !992, line: 53)
!990 = !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !991, line: 51, size: 768, flags: DIFlagFwdDecl, identifier: "_ZTS5lconv")
!991 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "0cf373fc44eed8073800bdb9da87b72f")
!992 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/clocale", directory: "")
!993 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !994, file: !992, line: 54)
!994 = !DISubprogram(name: "setlocale", scope: !991, file: !991, line: 122, type: !995, flags: DIFlagPrototyped, spFlags: 0)
!995 = !DISubroutineType(types: !996)
!996 = !{!824, !125, !752}
!997 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !998, file: !992, line: 55)
!998 = !DISubprogram(name: "localeconv", scope: !991, file: !991, line: 125, type: !999, flags: DIFlagPrototyped, spFlags: 0)
!999 = !DISubroutineType(types: !1000)
!1000 = !{!1001}
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!1002 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1003, file: !1007, line: 64)
!1003 = !DISubprogram(name: "isalnum", scope: !1004, file: !1004, line: 108, type: !1005, flags: DIFlagPrototyped, spFlags: 0)
!1004 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "36575f934ef4fe7e9d50a3cb17bd5c66")
!1005 = !DISubroutineType(types: !1006)
!1006 = !{!125, !125}
!1007 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cctype", directory: "")
!1008 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1009, file: !1007, line: 65)
!1009 = !DISubprogram(name: "isalpha", scope: !1004, file: !1004, line: 109, type: !1005, flags: DIFlagPrototyped, spFlags: 0)
!1010 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1011, file: !1007, line: 66)
!1011 = !DISubprogram(name: "iscntrl", scope: !1004, file: !1004, line: 110, type: !1005, flags: DIFlagPrototyped, spFlags: 0)
!1012 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1013, file: !1007, line: 67)
!1013 = !DISubprogram(name: "isdigit", scope: !1004, file: !1004, line: 111, type: !1005, flags: DIFlagPrototyped, spFlags: 0)
!1014 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1015, file: !1007, line: 68)
!1015 = !DISubprogram(name: "isgraph", scope: !1004, file: !1004, line: 113, type: !1005, flags: DIFlagPrototyped, spFlags: 0)
!1016 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1017, file: !1007, line: 69)
!1017 = !DISubprogram(name: "islower", scope: !1004, file: !1004, line: 112, type: !1005, flags: DIFlagPrototyped, spFlags: 0)
!1018 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1019, file: !1007, line: 70)
!1019 = !DISubprogram(name: "isprint", scope: !1004, file: !1004, line: 114, type: !1005, flags: DIFlagPrototyped, spFlags: 0)
!1020 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1021, file: !1007, line: 71)
!1021 = !DISubprogram(name: "ispunct", scope: !1004, file: !1004, line: 115, type: !1005, flags: DIFlagPrototyped, spFlags: 0)
!1022 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1023, file: !1007, line: 72)
!1023 = !DISubprogram(name: "isspace", scope: !1004, file: !1004, line: 116, type: !1005, flags: DIFlagPrototyped, spFlags: 0)
!1024 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1025, file: !1007, line: 73)
!1025 = !DISubprogram(name: "isupper", scope: !1004, file: !1004, line: 117, type: !1005, flags: DIFlagPrototyped, spFlags: 0)
!1026 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1027, file: !1007, line: 74)
!1027 = !DISubprogram(name: "isxdigit", scope: !1004, file: !1004, line: 118, type: !1005, flags: DIFlagPrototyped, spFlags: 0)
!1028 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1029, file: !1007, line: 75)
!1029 = !DISubprogram(name: "tolower", scope: !1004, file: !1004, line: 122, type: !1005, flags: DIFlagPrototyped, spFlags: 0)
!1030 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1031, file: !1007, line: 76)
!1031 = !DISubprogram(name: "toupper", scope: !1004, file: !1004, line: 125, type: !1005, flags: DIFlagPrototyped, spFlags: 0)
!1032 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1033, file: !1007, line: 87)
!1033 = !DISubprogram(name: "isblank", scope: !1004, file: !1004, line: 130, type: !1005, flags: DIFlagPrototyped, spFlags: 0)
!1034 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !1035, entity: !1036, file: !1037, line: 58)
!1035 = !DINamespace(name: "__gnu_debug", scope: null)
!1036 = !DINamespace(name: "__debug", scope: !17)
!1037 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/debug/debug.h", directory: "", checksumkind: CSK_MD5, checksum: "752210a319f5f5d356cc29cd1ce3cdc7")
!1038 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1039, file: !1041, line: 52)
!1039 = !DISubprogram(name: "abs", scope: !1040, file: !1040, line: 840, type: !1005, flags: DIFlagPrototyped, spFlags: 0)
!1040 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!1041 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/std_abs.h", directory: "")
!1042 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1043, file: !1045, line: 131)
!1043 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !1040, line: 62, baseType: !1044)
!1044 = !DICompositeType(tag: DW_TAG_structure_type, file: !1040, line: 58, size: 64, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!1045 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cstdlib", directory: "")
!1046 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1047, file: !1045, line: 132)
!1047 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !1040, line: 70, baseType: !1048)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1040, line: 66, size: 128, flags: DIFlagTypePassByValue, elements: !1049, identifier: "_ZTS6ldiv_t")
!1049 = !{!1050, !1051}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !1048, file: !1040, line: 68, baseType: !861, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !1048, file: !1040, line: 69, baseType: !861, size: 64, offset: 64)
!1052 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1053, file: !1045, line: 134)
!1053 = !DISubprogram(name: "abort", scope: !1040, file: !1040, line: 591, type: !41, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!1054 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1055, file: !1045, line: 138)
!1055 = !DISubprogram(name: "atexit", scope: !1040, file: !1040, line: 595, type: !1056, flags: DIFlagPrototyped, spFlags: 0)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{!125, !82}
!1058 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1059, file: !1045, line: 141)
!1059 = !DISubprogram(name: "at_quick_exit", scope: !1040, file: !1040, line: 600, type: !1056, flags: DIFlagPrototyped, spFlags: 0)
!1060 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1061, file: !1045, line: 144)
!1061 = !DISubprogram(name: "atof", scope: !1040, file: !1040, line: 101, type: !1062, flags: DIFlagPrototyped, spFlags: 0)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{!889, !752}
!1064 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1065, file: !1045, line: 145)
!1065 = !DISubprogram(name: "atoi", scope: !1040, file: !1040, line: 104, type: !1066, flags: DIFlagPrototyped, spFlags: 0)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{!125, !752}
!1068 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1069, file: !1045, line: 146)
!1069 = !DISubprogram(name: "atol", scope: !1040, file: !1040, line: 107, type: !1070, flags: DIFlagPrototyped, spFlags: 0)
!1070 = !DISubroutineType(types: !1071)
!1071 = !{!861, !752}
!1072 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1073, file: !1045, line: 147)
!1073 = !DISubprogram(name: "bsearch", scope: !1040, file: !1040, line: 820, type: !1074, flags: DIFlagPrototyped, spFlags: 0)
!1074 = !DISubroutineType(types: !1075)
!1075 = !{!801, !172, !172, !749, !749, !1076}
!1076 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !1040, line: 808, baseType: !1077)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = !DISubroutineType(types: !1079)
!1079 = !{!125, !172, !172}
!1080 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1081, file: !1045, line: 148)
!1081 = !DISubprogram(name: "calloc", scope: !1040, file: !1040, line: 542, type: !1082, flags: DIFlagPrototyped, spFlags: 0)
!1082 = !DISubroutineType(types: !1083)
!1083 = !{!801, !749, !749}
!1084 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1085, file: !1045, line: 149)
!1085 = !DISubprogram(name: "div", scope: !1040, file: !1040, line: 852, type: !1086, flags: DIFlagPrototyped, spFlags: 0)
!1086 = !DISubroutineType(types: !1087)
!1087 = !{!1043, !125, !125}
!1088 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1089, file: !1045, line: 150)
!1089 = !DISubprogram(name: "exit", scope: !1040, file: !1040, line: 617, type: !1090, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{null, !125}
!1092 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1093, file: !1045, line: 151)
!1093 = !DISubprogram(name: "free", scope: !1040, file: !1040, line: 565, type: !1094, flags: DIFlagPrototyped, spFlags: 0)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{null, !801}
!1096 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1097, file: !1045, line: 152)
!1097 = !DISubprogram(name: "getenv", scope: !1040, file: !1040, line: 634, type: !1098, flags: DIFlagPrototyped, spFlags: 0)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{!824, !752}
!1100 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1101, file: !1045, line: 153)
!1101 = !DISubprogram(name: "labs", scope: !1040, file: !1040, line: 841, type: !1102, flags: DIFlagPrototyped, spFlags: 0)
!1102 = !DISubroutineType(types: !1103)
!1103 = !{!861, !861}
!1104 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1105, file: !1045, line: 154)
!1105 = !DISubprogram(name: "ldiv", scope: !1040, file: !1040, line: 854, type: !1106, flags: DIFlagPrototyped, spFlags: 0)
!1106 = !DISubroutineType(types: !1107)
!1107 = !{!1047, !861, !861}
!1108 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1109, file: !1045, line: 155)
!1109 = !DISubprogram(name: "malloc", scope: !1040, file: !1040, line: 539, type: !1110, flags: DIFlagPrototyped, spFlags: 0)
!1110 = !DISubroutineType(types: !1111)
!1111 = !{!801, !749}
!1112 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1113, file: !1045, line: 157)
!1113 = !DISubprogram(name: "mblen", scope: !1040, file: !1040, line: 922, type: !1114, flags: DIFlagPrototyped, spFlags: 0)
!1114 = !DISubroutineType(types: !1115)
!1115 = !{!125, !752, !749}
!1116 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1117, file: !1045, line: 158)
!1117 = !DISubprogram(name: "mbstowcs", scope: !1040, file: !1040, line: 933, type: !1118, flags: DIFlagPrototyped, spFlags: 0)
!1118 = !DISubroutineType(types: !1119)
!1119 = !{!749, !716, !751, !749}
!1120 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1121, file: !1045, line: 159)
!1121 = !DISubprogram(name: "mbtowc", scope: !1040, file: !1040, line: 925, type: !1122, flags: DIFlagPrototyped, spFlags: 0)
!1122 = !DISubroutineType(types: !1123)
!1123 = !{!125, !716, !751, !749}
!1124 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1125, file: !1045, line: 161)
!1125 = !DISubprogram(name: "qsort", scope: !1040, file: !1040, line: 830, type: !1126, flags: DIFlagPrototyped, spFlags: 0)
!1126 = !DISubroutineType(types: !1127)
!1127 = !{null, !801, !749, !749, !1076}
!1128 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1129, file: !1045, line: 164)
!1129 = !DISubprogram(name: "quick_exit", scope: !1040, file: !1040, line: 623, type: !1090, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!1130 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1131, file: !1045, line: 167)
!1131 = !DISubprogram(name: "rand", scope: !1040, file: !1040, line: 453, type: !123, flags: DIFlagPrototyped, spFlags: 0)
!1132 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1133, file: !1045, line: 168)
!1133 = !DISubprogram(name: "realloc", scope: !1040, file: !1040, line: 550, type: !1134, flags: DIFlagPrototyped, spFlags: 0)
!1134 = !DISubroutineType(types: !1135)
!1135 = !{!801, !801, !749}
!1136 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1137, file: !1045, line: 169)
!1137 = !DISubprogram(name: "srand", scope: !1040, file: !1040, line: 455, type: !1138, flags: DIFlagPrototyped, spFlags: 0)
!1138 = !DISubroutineType(types: !1139)
!1139 = !{null, !8}
!1140 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1141, file: !1045, line: 170)
!1141 = !DISubprogram(name: "strtod", scope: !1040, file: !1040, line: 117, type: !1142, flags: DIFlagPrototyped, spFlags: 0)
!1142 = !DISubroutineType(types: !1143)
!1143 = !{!889, !751, !1144}
!1144 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1145)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!1146 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1147, file: !1045, line: 171)
!1147 = !DISubprogram(name: "strtol", scope: !1040, file: !1040, line: 176, type: !1148, flags: DIFlagPrototyped, spFlags: 0)
!1148 = !DISubroutineType(types: !1149)
!1149 = !{!861, !751, !1144, !125}
!1150 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1151, file: !1045, line: 172)
!1151 = !DISubprogram(name: "strtoul", scope: !1040, file: !1040, line: 180, type: !1152, flags: DIFlagPrototyped, spFlags: 0)
!1152 = !DISubroutineType(types: !1153)
!1153 = !{!28, !751, !1144, !125}
!1154 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1155, file: !1045, line: 173)
!1155 = !DISubprogram(name: "system", scope: !1040, file: !1040, line: 784, type: !1066, flags: DIFlagPrototyped, spFlags: 0)
!1156 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1157, file: !1045, line: 175)
!1157 = !DISubprogram(name: "wcstombs", scope: !1040, file: !1040, line: 936, type: !1158, flags: DIFlagPrototyped, spFlags: 0)
!1158 = !DISubroutineType(types: !1159)
!1159 = !{!749, !823, !726, !749}
!1160 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1161, file: !1045, line: 176)
!1161 = !DISubprogram(name: "wctomb", scope: !1040, file: !1040, line: 929, type: !1162, flags: DIFlagPrototyped, spFlags: 0)
!1162 = !DISubroutineType(types: !1163)
!1163 = !{!125, !824, !715}
!1164 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1165, file: !1045, line: 204)
!1165 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !1040, line: 80, baseType: !1166)
!1166 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1040, line: 76, size: 128, flags: DIFlagTypePassByValue, elements: !1167, identifier: "_ZTS7lldiv_t")
!1167 = !{!1168, !1169}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !1166, file: !1040, line: 78, baseType: !960, size: 64)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !1166, file: !1040, line: 79, baseType: !960, size: 64, offset: 64)
!1170 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1171, file: !1045, line: 210)
!1171 = !DISubprogram(name: "_Exit", scope: !1040, file: !1040, line: 629, type: !1090, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!1172 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1173, file: !1045, line: 214)
!1173 = !DISubprogram(name: "llabs", scope: !1040, file: !1040, line: 844, type: !1174, flags: DIFlagPrototyped, spFlags: 0)
!1174 = !DISubroutineType(types: !1175)
!1175 = !{!960, !960}
!1176 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1177, file: !1045, line: 220)
!1177 = !DISubprogram(name: "lldiv", scope: !1040, file: !1040, line: 858, type: !1178, flags: DIFlagPrototyped, spFlags: 0)
!1178 = !DISubroutineType(types: !1179)
!1179 = !{!1165, !960, !960}
!1180 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1181, file: !1045, line: 231)
!1181 = !DISubprogram(name: "atoll", scope: !1040, file: !1040, line: 112, type: !1182, flags: DIFlagPrototyped, spFlags: 0)
!1182 = !DISubroutineType(types: !1183)
!1183 = !{!960, !752}
!1184 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1185, file: !1045, line: 232)
!1185 = !DISubprogram(name: "strtoll", scope: !1040, file: !1040, line: 200, type: !1186, flags: DIFlagPrototyped, spFlags: 0)
!1186 = !DISubroutineType(types: !1187)
!1187 = !{!960, !751, !1144, !125}
!1188 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1189, file: !1045, line: 233)
!1189 = !DISubprogram(name: "strtoull", scope: !1040, file: !1040, line: 205, type: !1190, flags: DIFlagPrototyped, spFlags: 0)
!1190 = !DISubroutineType(types: !1191)
!1191 = !{!965, !751, !1144, !125}
!1192 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1193, file: !1045, line: 235)
!1193 = !DISubprogram(name: "strtof", scope: !1040, file: !1040, line: 123, type: !1194, flags: DIFlagPrototyped, spFlags: 0)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{!896, !751, !1144}
!1196 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1197, file: !1045, line: 236)
!1197 = !DISubprogram(name: "strtold", scope: !1040, file: !1040, line: 126, type: !1198, flags: DIFlagPrototyped, spFlags: 0)
!1198 = !DISubroutineType(types: !1199)
!1199 = !{!955, !751, !1144}
!1200 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1165, file: !1045, line: 244)
!1201 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1171, file: !1045, line: 246)
!1202 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1173, file: !1045, line: 248)
!1203 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1204, file: !1045, line: 249)
!1204 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !7, file: !1045, line: 217, type: !1178, flags: DIFlagPrototyped, spFlags: 0)
!1205 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1177, file: !1045, line: 250)
!1206 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1181, file: !1045, line: 252)
!1207 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1193, file: !1045, line: 253)
!1208 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1185, file: !1045, line: 254)
!1209 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1189, file: !1045, line: 255)
!1210 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1197, file: !1045, line: 256)
!1211 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1212, file: !1214, line: 98)
!1212 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1213, line: 7, baseType: !709)
!1213 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!1214 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cstdio", directory: "")
!1215 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1216, file: !1214, line: 99)
!1216 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !1217, line: 84, baseType: !1218)
!1217 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!1218 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fpos_t", file: !1219, line: 14, baseType: !1220)
!1219 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h", directory: "", checksumkind: CSK_MD5, checksum: "32de8bdaf3551a6c0a9394f9af4389ce")
!1220 = !DICompositeType(tag: DW_TAG_structure_type, name: "_G_fpos_t", file: !1219, line: 10, size: 128, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
!1221 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1222, file: !1214, line: 101)
!1222 = !DISubprogram(name: "clearerr", scope: !1217, file: !1217, line: 757, type: !1223, flags: DIFlagPrototyped, spFlags: 0)
!1223 = !DISubroutineType(types: !1224)
!1224 = !{null, !1225}
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1226 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1227, file: !1214, line: 102)
!1227 = !DISubprogram(name: "fclose", scope: !1217, file: !1217, line: 213, type: !1228, flags: DIFlagPrototyped, spFlags: 0)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{!125, !1225}
!1230 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1231, file: !1214, line: 103)
!1231 = !DISubprogram(name: "feof", scope: !1217, file: !1217, line: 759, type: !1228, flags: DIFlagPrototyped, spFlags: 0)
!1232 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1233, file: !1214, line: 104)
!1233 = !DISubprogram(name: "ferror", scope: !1217, file: !1217, line: 761, type: !1228, flags: DIFlagPrototyped, spFlags: 0)
!1234 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1235, file: !1214, line: 105)
!1235 = !DISubprogram(name: "fflush", scope: !1217, file: !1217, line: 218, type: !1228, flags: DIFlagPrototyped, spFlags: 0)
!1236 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1237, file: !1214, line: 106)
!1237 = !DISubprogram(name: "fgetc", scope: !1217, file: !1217, line: 485, type: !1228, flags: DIFlagPrototyped, spFlags: 0)
!1238 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1239, file: !1214, line: 107)
!1239 = !DISubprogram(name: "fgetpos", scope: !1217, file: !1217, line: 731, type: !1240, flags: DIFlagPrototyped, spFlags: 0)
!1240 = !DISubroutineType(types: !1241)
!1241 = !{!125, !1242, !1243}
!1242 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1225)
!1243 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1244)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1245 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1246, file: !1214, line: 108)
!1246 = !DISubprogram(name: "fgets", scope: !1217, file: !1217, line: 564, type: !1247, flags: DIFlagPrototyped, spFlags: 0)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{!824, !823, !125, !1242}
!1249 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1250, file: !1214, line: 109)
!1250 = !DISubprogram(name: "fopen", scope: !1217, file: !1217, line: 246, type: !1251, flags: DIFlagPrototyped, spFlags: 0)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{!1225, !751, !751}
!1253 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1254, file: !1214, line: 110)
!1254 = !DISubprogram(name: "fprintf", scope: !1217, file: !1217, line: 326, type: !1255, flags: DIFlagPrototyped, spFlags: 0)
!1255 = !DISubroutineType(types: !1256)
!1256 = !{!125, !1242, !751, null}
!1257 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1258, file: !1214, line: 111)
!1258 = !DISubprogram(name: "fputc", scope: !1217, file: !1217, line: 521, type: !1259, flags: DIFlagPrototyped, spFlags: 0)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{!125, !125, !1225}
!1261 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1262, file: !1214, line: 112)
!1262 = !DISubprogram(name: "fputs", scope: !1217, file: !1217, line: 626, type: !1263, flags: DIFlagPrototyped, spFlags: 0)
!1263 = !DISubroutineType(types: !1264)
!1264 = !{!125, !751, !1242}
!1265 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1266, file: !1214, line: 113)
!1266 = !DISubprogram(name: "fread", scope: !1217, file: !1217, line: 646, type: !1267, flags: DIFlagPrototyped, spFlags: 0)
!1267 = !DISubroutineType(types: !1268)
!1268 = !{!749, !1269, !749, !749, !1242}
!1269 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !801)
!1270 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1271, file: !1214, line: 114)
!1271 = !DISubprogram(name: "freopen", scope: !1217, file: !1217, line: 252, type: !1272, flags: DIFlagPrototyped, spFlags: 0)
!1272 = !DISubroutineType(types: !1273)
!1273 = !{!1225, !751, !751, !1242}
!1274 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1275, file: !1214, line: 115)
!1275 = !DISubprogram(name: "fscanf", linkageName: "__isoc99_fscanf", scope: !1217, file: !1217, line: 407, type: !1255, flags: DIFlagPrototyped, spFlags: 0)
!1276 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1277, file: !1214, line: 116)
!1277 = !DISubprogram(name: "fseek", scope: !1217, file: !1217, line: 684, type: !1278, flags: DIFlagPrototyped, spFlags: 0)
!1278 = !DISubroutineType(types: !1279)
!1279 = !{!125, !1225, !861, !125}
!1280 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1281, file: !1214, line: 117)
!1281 = !DISubprogram(name: "fsetpos", scope: !1217, file: !1217, line: 736, type: !1282, flags: DIFlagPrototyped, spFlags: 0)
!1282 = !DISubroutineType(types: !1283)
!1283 = !{!125, !1225, !1284}
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64)
!1285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1216)
!1286 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1287, file: !1214, line: 118)
!1287 = !DISubprogram(name: "ftell", scope: !1217, file: !1217, line: 689, type: !1288, flags: DIFlagPrototyped, spFlags: 0)
!1288 = !DISubroutineType(types: !1289)
!1289 = !{!861, !1225}
!1290 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1291, file: !1214, line: 119)
!1291 = !DISubprogram(name: "fwrite", scope: !1217, file: !1217, line: 652, type: !1292, flags: DIFlagPrototyped, spFlags: 0)
!1292 = !DISubroutineType(types: !1293)
!1293 = !{!749, !1294, !749, !749, !1242}
!1294 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !172)
!1295 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1296, file: !1214, line: 120)
!1296 = !DISubprogram(name: "getc", scope: !1217, file: !1217, line: 486, type: !1228, flags: DIFlagPrototyped, spFlags: 0)
!1297 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1298, file: !1214, line: 121)
!1298 = !DISubprogram(name: "getchar", scope: !1217, file: !1217, line: 492, type: !123, flags: DIFlagPrototyped, spFlags: 0)
!1299 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1300, file: !1214, line: 126)
!1300 = !DISubprogram(name: "perror", scope: !1217, file: !1217, line: 775, type: !1301, flags: DIFlagPrototyped, spFlags: 0)
!1301 = !DISubroutineType(types: !1302)
!1302 = !{null, !752}
!1303 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1304, file: !1214, line: 127)
!1304 = !DISubprogram(name: "printf", scope: !1217, file: !1217, line: 332, type: !1305, flags: DIFlagPrototyped, spFlags: 0)
!1305 = !DISubroutineType(types: !1306)
!1306 = !{!125, !751, null}
!1307 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1308, file: !1214, line: 128)
!1308 = !DISubprogram(name: "putc", scope: !1217, file: !1217, line: 522, type: !1259, flags: DIFlagPrototyped, spFlags: 0)
!1309 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1310, file: !1214, line: 129)
!1310 = !DISubprogram(name: "putchar", scope: !1217, file: !1217, line: 528, type: !1005, flags: DIFlagPrototyped, spFlags: 0)
!1311 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1312, file: !1214, line: 130)
!1312 = !DISubprogram(name: "puts", scope: !1217, file: !1217, line: 632, type: !1066, flags: DIFlagPrototyped, spFlags: 0)
!1313 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1314, file: !1214, line: 131)
!1314 = !DISubprogram(name: "remove", scope: !1217, file: !1217, line: 146, type: !1066, flags: DIFlagPrototyped, spFlags: 0)
!1315 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1316, file: !1214, line: 132)
!1316 = !DISubprogram(name: "rename", scope: !1217, file: !1217, line: 148, type: !1317, flags: DIFlagPrototyped, spFlags: 0)
!1317 = !DISubroutineType(types: !1318)
!1318 = !{!125, !752, !752}
!1319 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1320, file: !1214, line: 133)
!1320 = !DISubprogram(name: "rewind", scope: !1217, file: !1217, line: 694, type: !1223, flags: DIFlagPrototyped, spFlags: 0)
!1321 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1322, file: !1214, line: 134)
!1322 = !DISubprogram(name: "scanf", linkageName: "__isoc99_scanf", scope: !1217, file: !1217, line: 410, type: !1305, flags: DIFlagPrototyped, spFlags: 0)
!1323 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1324, file: !1214, line: 135)
!1324 = !DISubprogram(name: "setbuf", scope: !1217, file: !1217, line: 304, type: !1325, flags: DIFlagPrototyped, spFlags: 0)
!1325 = !DISubroutineType(types: !1326)
!1326 = !{null, !1242, !823}
!1327 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1328, file: !1214, line: 136)
!1328 = !DISubprogram(name: "setvbuf", scope: !1217, file: !1217, line: 308, type: !1329, flags: DIFlagPrototyped, spFlags: 0)
!1329 = !DISubroutineType(types: !1330)
!1330 = !{!125, !1242, !823, !125, !749}
!1331 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1332, file: !1214, line: 137)
!1332 = !DISubprogram(name: "sprintf", scope: !1217, file: !1217, line: 334, type: !1333, flags: DIFlagPrototyped, spFlags: 0)
!1333 = !DISubroutineType(types: !1334)
!1334 = !{!125, !823, !751, null}
!1335 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1336, file: !1214, line: 138)
!1336 = !DISubprogram(name: "sscanf", linkageName: "__isoc99_sscanf", scope: !1217, file: !1217, line: 412, type: !1337, flags: DIFlagPrototyped, spFlags: 0)
!1337 = !DISubroutineType(types: !1338)
!1338 = !{!125, !751, !751, null}
!1339 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1340, file: !1214, line: 139)
!1340 = !DISubprogram(name: "tmpfile", scope: !1217, file: !1217, line: 173, type: !1341, flags: DIFlagPrototyped, spFlags: 0)
!1341 = !DISubroutineType(types: !1342)
!1342 = !{!1225}
!1343 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1344, file: !1214, line: 141)
!1344 = !DISubprogram(name: "tmpnam", scope: !1217, file: !1217, line: 187, type: !1345, flags: DIFlagPrototyped, spFlags: 0)
!1345 = !DISubroutineType(types: !1346)
!1346 = !{!824, !824}
!1347 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1348, file: !1214, line: 143)
!1348 = !DISubprogram(name: "ungetc", scope: !1217, file: !1217, line: 639, type: !1259, flags: DIFlagPrototyped, spFlags: 0)
!1349 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1350, file: !1214, line: 144)
!1350 = !DISubprogram(name: "vfprintf", scope: !1217, file: !1217, line: 341, type: !1351, flags: DIFlagPrototyped, spFlags: 0)
!1351 = !DISubroutineType(types: !1352)
!1352 = !{!125, !1242, !751, !794}
!1353 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1354, file: !1214, line: 145)
!1354 = !DISubprogram(name: "vprintf", scope: !1217, file: !1217, line: 347, type: !1355, flags: DIFlagPrototyped, spFlags: 0)
!1355 = !DISubroutineType(types: !1356)
!1356 = !{!125, !751, !794}
!1357 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1358, file: !1214, line: 146)
!1358 = !DISubprogram(name: "vsprintf", scope: !1217, file: !1217, line: 349, type: !1359, flags: DIFlagPrototyped, spFlags: 0)
!1359 = !DISubroutineType(types: !1360)
!1360 = !{!125, !823, !751, !794}
!1361 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1362, file: !1214, line: 175)
!1362 = !DISubprogram(name: "snprintf", scope: !1217, file: !1217, line: 354, type: !1363, flags: DIFlagPrototyped, spFlags: 0)
!1363 = !DISubroutineType(types: !1364)
!1364 = !{!125, !823, !749, !751, null}
!1365 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1366, file: !1214, line: 176)
!1366 = !DISubprogram(name: "vfscanf", linkageName: "__isoc99_vfscanf", scope: !1217, file: !1217, line: 451, type: !1351, flags: DIFlagPrototyped, spFlags: 0)
!1367 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1368, file: !1214, line: 177)
!1368 = !DISubprogram(name: "vscanf", linkageName: "__isoc99_vscanf", scope: !1217, file: !1217, line: 456, type: !1355, flags: DIFlagPrototyped, spFlags: 0)
!1369 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1370, file: !1214, line: 178)
!1370 = !DISubprogram(name: "vsnprintf", scope: !1217, file: !1217, line: 358, type: !1371, flags: DIFlagPrototyped, spFlags: 0)
!1371 = !DISubroutineType(types: !1372)
!1372 = !{!125, !823, !749, !751, !794}
!1373 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !1374, file: !1214, line: 179)
!1374 = !DISubprogram(name: "vsscanf", linkageName: "__isoc99_vsscanf", scope: !1217, file: !1217, line: 459, type: !1375, flags: DIFlagPrototyped, spFlags: 0)
!1375 = !DISubroutineType(types: !1376)
!1376 = !{!125, !751, !751, !794}
!1377 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1362, file: !1214, line: 185)
!1378 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1366, file: !1214, line: 186)
!1379 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1368, file: !1214, line: 187)
!1380 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1370, file: !1214, line: 188)
!1381 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1374, file: !1214, line: 189)
!1382 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1383, file: !1389, line: 82)
!1383 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctrans_t", file: !1384, line: 48, baseType: !1385)
!1384 = !DIFile(filename: "/usr/include/wctype.h", directory: "", checksumkind: CSK_MD5, checksum: "e83097fbf57cc71ea472db59df3ba75d")
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1386 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1387)
!1387 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !1388, line: 41, baseType: !125)
!1388 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!1389 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cwctype", directory: "")
!1390 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1391, file: !1389, line: 83)
!1391 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctype_t", file: !1392, line: 38, baseType: !28)
!1392 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "3598b9d23ef5d76319026b46e316b55f")
!1393 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !695, file: !1389, line: 84)
!1394 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1395, file: !1389, line: 86)
!1395 = !DISubprogram(name: "iswalnum", scope: !1392, file: !1392, line: 95, type: !915, flags: DIFlagPrototyped, spFlags: 0)
!1396 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1397, file: !1389, line: 87)
!1397 = !DISubprogram(name: "iswalpha", scope: !1392, file: !1392, line: 101, type: !915, flags: DIFlagPrototyped, spFlags: 0)
!1398 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1399, file: !1389, line: 89)
!1399 = !DISubprogram(name: "iswblank", scope: !1392, file: !1392, line: 146, type: !915, flags: DIFlagPrototyped, spFlags: 0)
!1400 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1401, file: !1389, line: 91)
!1401 = !DISubprogram(name: "iswcntrl", scope: !1392, file: !1392, line: 104, type: !915, flags: DIFlagPrototyped, spFlags: 0)
!1402 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1403, file: !1389, line: 92)
!1403 = !DISubprogram(name: "iswctype", scope: !1392, file: !1392, line: 159, type: !1404, flags: DIFlagPrototyped, spFlags: 0)
!1404 = !DISubroutineType(types: !1405)
!1405 = !{!125, !695, !1391}
!1406 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1407, file: !1389, line: 93)
!1407 = !DISubprogram(name: "iswdigit", scope: !1392, file: !1392, line: 108, type: !915, flags: DIFlagPrototyped, spFlags: 0)
!1408 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1409, file: !1389, line: 94)
!1409 = !DISubprogram(name: "iswgraph", scope: !1392, file: !1392, line: 112, type: !915, flags: DIFlagPrototyped, spFlags: 0)
!1410 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1411, file: !1389, line: 95)
!1411 = !DISubprogram(name: "iswlower", scope: !1392, file: !1392, line: 117, type: !915, flags: DIFlagPrototyped, spFlags: 0)
!1412 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1413, file: !1389, line: 96)
!1413 = !DISubprogram(name: "iswprint", scope: !1392, file: !1392, line: 120, type: !915, flags: DIFlagPrototyped, spFlags: 0)
!1414 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1415, file: !1389, line: 97)
!1415 = !DISubprogram(name: "iswpunct", scope: !1392, file: !1392, line: 125, type: !915, flags: DIFlagPrototyped, spFlags: 0)
!1416 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1417, file: !1389, line: 98)
!1417 = !DISubprogram(name: "iswspace", scope: !1392, file: !1392, line: 130, type: !915, flags: DIFlagPrototyped, spFlags: 0)
!1418 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1419, file: !1389, line: 99)
!1419 = !DISubprogram(name: "iswupper", scope: !1392, file: !1392, line: 135, type: !915, flags: DIFlagPrototyped, spFlags: 0)
!1420 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1421, file: !1389, line: 100)
!1421 = !DISubprogram(name: "iswxdigit", scope: !1392, file: !1392, line: 140, type: !915, flags: DIFlagPrototyped, spFlags: 0)
!1422 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1423, file: !1389, line: 101)
!1423 = !DISubprogram(name: "towctrans", scope: !1384, file: !1384, line: 55, type: !1424, flags: DIFlagPrototyped, spFlags: 0)
!1424 = !DISubroutineType(types: !1425)
!1425 = !{!695, !695, !1383}
!1426 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1427, file: !1389, line: 102)
!1427 = !DISubprogram(name: "towlower", scope: !1392, file: !1392, line: 166, type: !1428, flags: DIFlagPrototyped, spFlags: 0)
!1428 = !DISubroutineType(types: !1429)
!1429 = !{!695, !695}
!1430 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1431, file: !1389, line: 103)
!1431 = !DISubprogram(name: "towupper", scope: !1392, file: !1392, line: 169, type: !1428, flags: DIFlagPrototyped, spFlags: 0)
!1432 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1433, file: !1389, line: 104)
!1433 = !DISubprogram(name: "wctrans", scope: !1384, file: !1384, line: 52, type: !1434, flags: DIFlagPrototyped, spFlags: 0)
!1434 = !DISubroutineType(types: !1435)
!1435 = !{!1383, !752}
!1436 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1437, file: !1389, line: 105)
!1437 = !DISubprogram(name: "wctype", scope: !1392, file: !1392, line: 155, type: !1438, flags: DIFlagPrototyped, spFlags: 0)
!1438 = !DISubroutineType(types: !1439)
!1439 = !{!1391, !752}
!1440 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1441, file: !1445, line: 51)
!1441 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !1442, line: 24, baseType: !1443)
!1442 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "081edea97425b3437dded4a7fe223193")
!1443 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !1388, line: 37, baseType: !1444)
!1444 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1445 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cstdint", directory: "")
!1446 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1447, file: !1445, line: 52)
!1447 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !1442, line: 25, baseType: !1448)
!1448 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !1388, line: 39, baseType: !1449)
!1449 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1450 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1451, file: !1445, line: 53)
!1451 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !1442, line: 26, baseType: !1387)
!1452 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1453, file: !1445, line: 54)
!1453 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !1442, line: 27, baseType: !1454)
!1454 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !1388, line: 44, baseType: !861)
!1455 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1456, file: !1445, line: 56)
!1456 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !1457, line: 58, baseType: !1444)
!1457 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "24103e292ae21916e87130b926c8d2f8")
!1458 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1459, file: !1445, line: 57)
!1459 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !1457, line: 60, baseType: !861)
!1460 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1461, file: !1445, line: 58)
!1461 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !1457, line: 61, baseType: !861)
!1462 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1463, file: !1445, line: 59)
!1463 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !1457, line: 62, baseType: !861)
!1464 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1465, file: !1445, line: 61)
!1465 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !1457, line: 43, baseType: !1466)
!1466 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least8_t", file: !1388, line: 52, baseType: !1443)
!1467 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1468, file: !1445, line: 62)
!1468 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !1457, line: 44, baseType: !1469)
!1469 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least16_t", file: !1388, line: 54, baseType: !1448)
!1470 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1471, file: !1445, line: 63)
!1471 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !1457, line: 45, baseType: !1472)
!1472 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least32_t", file: !1388, line: 56, baseType: !1387)
!1473 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1474, file: !1445, line: 64)
!1474 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !1457, line: 46, baseType: !1475)
!1475 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least64_t", file: !1388, line: 58, baseType: !1454)
!1476 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1477, file: !1445, line: 66)
!1477 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !1457, line: 101, baseType: !1478)
!1478 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1388, line: 72, baseType: !861)
!1479 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1480, file: !1445, line: 67)
!1480 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !1457, line: 87, baseType: !861)
!1481 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1482, file: !1445, line: 69)
!1482 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !1483, line: 24, baseType: !1484)
!1483 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!1484 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !1388, line: 38, baseType: !1485)
!1485 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1486 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1487, file: !1445, line: 70)
!1487 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !1483, line: 25, baseType: !1488)
!1488 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !1388, line: 40, baseType: !1489)
!1489 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1490 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1491, file: !1445, line: 71)
!1491 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !1483, line: 26, baseType: !1492)
!1492 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !1388, line: 42, baseType: !8)
!1493 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1494, file: !1445, line: 72)
!1494 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !1483, line: 27, baseType: !1495)
!1495 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !1388, line: 45, baseType: !28)
!1496 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1497, file: !1445, line: 74)
!1497 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !1457, line: 71, baseType: !1485)
!1498 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1499, file: !1445, line: 75)
!1499 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !1457, line: 73, baseType: !28)
!1500 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1501, file: !1445, line: 76)
!1501 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !1457, line: 74, baseType: !28)
!1502 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1503, file: !1445, line: 77)
!1503 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !1457, line: 75, baseType: !28)
!1504 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1505, file: !1445, line: 79)
!1505 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !1457, line: 49, baseType: !1506)
!1506 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least8_t", file: !1388, line: 53, baseType: !1484)
!1507 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1508, file: !1445, line: 80)
!1508 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !1457, line: 50, baseType: !1509)
!1509 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least16_t", file: !1388, line: 55, baseType: !1488)
!1510 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1511, file: !1445, line: 81)
!1511 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !1457, line: 51, baseType: !1512)
!1512 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !1388, line: 57, baseType: !1492)
!1513 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1514, file: !1445, line: 82)
!1514 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !1457, line: 52, baseType: !1515)
!1515 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least64_t", file: !1388, line: 59, baseType: !1495)
!1516 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1517, file: !1445, line: 84)
!1517 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1457, line: 102, baseType: !1518)
!1518 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1388, line: 73, baseType: !28)
!1519 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1520, file: !1445, line: 85)
!1520 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !1457, line: 90, baseType: !28)
!1521 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1522, file: !1525, line: 60)
!1522 = !DIDerivedType(tag: DW_TAG_typedef, name: "clock_t", file: !1523, line: 7, baseType: !1524)
!1523 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/clock_t.h", directory: "", checksumkind: CSK_MD5, checksum: "1aade99fd778d1551600c7ca1410b9f1")
!1524 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clock_t", file: !1388, line: 156, baseType: !861)
!1525 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/ctime", directory: "")
!1526 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1527, file: !1525, line: 61)
!1527 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !1528, line: 7, baseType: !1529)
!1528 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!1529 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1388, line: 160, baseType: !861)
!1530 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !848, file: !1525, line: 62)
!1531 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1532, file: !1525, line: 64)
!1532 = !DISubprogram(name: "clock", scope: !1533, file: !1533, line: 72, type: !1534, flags: DIFlagPrototyped, spFlags: 0)
!1533 = !DIFile(filename: "/usr/include/time.h", directory: "", checksumkind: CSK_MD5, checksum: "2dc9fb937b28c900f98919b5c35320c2")
!1534 = !DISubroutineType(types: !1535)
!1535 = !{!1522}
!1536 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1537, file: !1525, line: 65)
!1537 = !DISubprogram(name: "difftime", scope: !1533, file: !1533, line: 78, type: !1538, flags: DIFlagPrototyped, spFlags: 0)
!1538 = !DISubroutineType(types: !1539)
!1539 = !{!889, !1527, !1527}
!1540 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1541, file: !1525, line: 66)
!1541 = !DISubprogram(name: "mktime", scope: !1533, file: !1533, line: 82, type: !1542, flags: DIFlagPrototyped, spFlags: 0)
!1542 = !DISubroutineType(types: !1543)
!1543 = !{!1527, !1544}
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!1545 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1546, file: !1525, line: 67)
!1546 = !DISubprogram(name: "time", scope: !1533, file: !1533, line: 75, type: !1547, flags: DIFlagPrototyped, spFlags: 0)
!1547 = !DISubroutineType(types: !1548)
!1548 = !{!1527, !1549}
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1550 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1551, file: !1525, line: 68)
!1551 = !DISubprogram(name: "asctime", scope: !1533, file: !1533, line: 139, type: !1552, flags: DIFlagPrototyped, spFlags: 0)
!1552 = !DISubroutineType(types: !1553)
!1553 = !{!824, !846}
!1554 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1555, file: !1525, line: 69)
!1555 = !DISubprogram(name: "ctime", scope: !1533, file: !1533, line: 142, type: !1556, flags: DIFlagPrototyped, spFlags: 0)
!1556 = !DISubroutineType(types: !1557)
!1557 = !{!824, !1558}
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1527)
!1560 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1561, file: !1525, line: 70)
!1561 = !DISubprogram(name: "gmtime", scope: !1533, file: !1533, line: 119, type: !1562, flags: DIFlagPrototyped, spFlags: 0)
!1562 = !DISubroutineType(types: !1563)
!1563 = !{!1544, !1558}
!1564 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1565, file: !1525, line: 71)
!1565 = !DISubprogram(name: "localtime", scope: !1533, file: !1533, line: 123, type: !1562, flags: DIFlagPrototyped, spFlags: 0)
!1566 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1567, file: !1525, line: 72)
!1567 = !DISubprogram(name: "strftime", scope: !1533, file: !1533, line: 88, type: !1568, flags: DIFlagPrototyped, spFlags: 0)
!1568 = !DISubroutineType(types: !1569)
!1569 = !{!749, !823, !749, !751, !845}
!1570 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !1571, entity: !1572, file: !1574, line: 1447)
!1571 = !DINamespace(name: "chrono", scope: !17)
!1572 = !DINamespace(name: "chrono_literals", scope: !1573, exportSymbols: true)
!1573 = !DINamespace(name: "literals", scope: !17, exportSymbols: true)
!1574 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/chrono.h", directory: "")
!1575 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1576, file: !1582, line: 57)
!1576 = !DIDerivedType(tag: DW_TAG_typedef, name: "jmp_buf", file: !1577, line: 45, baseType: !1578)
!1577 = !DIFile(filename: "/usr/include/setjmp.h", directory: "", checksumkind: CSK_MD5, checksum: "76b05e9ee1ce4e0a46e91c06a0fc7c7a")
!1578 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1579, size: 1600, elements: !1580)
!1579 = !DICompositeType(tag: DW_TAG_structure_type, name: "__jmp_buf_tag", file: !1577, line: 33, size: 1600, flags: DIFlagFwdDecl, identifier: "_ZTS13__jmp_buf_tag")
!1580 = !{!1581}
!1581 = !DISubrange(count: 1)
!1582 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/csetjmp", directory: "")
!1583 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1584, file: !1582, line: 58)
!1584 = !DISubprogram(name: "longjmp", scope: !1577, file: !1577, line: 67, type: !1585, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!1585 = !DISubroutineType(types: !1586)
!1586 = !{null, !1587, !125}
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1588 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1589, file: !1594, line: 55)
!1589 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1217, line: 52, baseType: !1590)
!1590 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1591, line: 32, baseType: !1592)
!1591 = !DIFile(filename: "lib/clang/14.0.6/include/stdarg.h", directory: "/home/cs22mtech12008/llvm-project/build", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!1592 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !798, baseType: !1593)
!1593 = !DICompositeType(tag: DW_TAG_array_type, baseType: !795, size: 192, elements: !1580)
!1594 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cstdarg", directory: "")
!1595 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1596, file: !1599, line: 58)
!1596 = !DIDerivedType(tag: DW_TAG_typedef, name: "max_align_t", file: !1597, line: 24, baseType: !1598)
!1597 = !DIFile(filename: "lib/clang/14.0.6/include/__stddef_max_align_t.h", directory: "/home/cs22mtech12008/llvm-project/build", checksumkind: CSK_MD5, checksum: "48e8e2456f77e6cda35d245130fa7259")
!1598 = !DICompositeType(tag: DW_TAG_structure_type, file: !1597, line: 19, size: 256, flags: DIFlagFwdDecl, identifier: "_ZTS11max_align_t")
!1599 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cstddef", directory: "")
!1600 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !5, file: !1601, line: 98)
!1601 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/shared_ptr_base.h", directory: "", checksumkind: CSK_MD5, checksum: "398b697f034a380e2062e59e71a6eec9")
!1602 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1603, file: !1601, line: 99)
!1603 = !DIGlobalVariable(name: "__default_lock_policy", linkageName: "_ZN9__gnu_cxxL21__default_lock_policyE", scope: !7, file: !6, line: 53, type: !1604, isLocal: true, isDefinition: false)
!1604 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!1605 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1606, file: !1610, line: 85)
!1606 = !DISubprogram(name: "acos", scope: !1607, file: !1607, line: 53, type: !1608, flags: DIFlagPrototyped, spFlags: 0)
!1607 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "833006f6c08fa0a86f73f7ac7f62dccb")
!1608 = !DISubroutineType(types: !1609)
!1609 = !{!889, !889}
!1610 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cmath", directory: "")
!1611 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1612, file: !1610, line: 104)
!1612 = !DISubprogram(name: "asin", scope: !1607, file: !1607, line: 55, type: !1608, flags: DIFlagPrototyped, spFlags: 0)
!1613 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1614, file: !1610, line: 123)
!1614 = !DISubprogram(name: "atan", scope: !1607, file: !1607, line: 57, type: !1608, flags: DIFlagPrototyped, spFlags: 0)
!1615 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1616, file: !1610, line: 142)
!1616 = !DISubprogram(name: "atan2", scope: !1607, file: !1607, line: 59, type: !1617, flags: DIFlagPrototyped, spFlags: 0)
!1617 = !DISubroutineType(types: !1618)
!1618 = !{!889, !889, !889}
!1619 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1620, file: !1610, line: 154)
!1620 = !DISubprogram(name: "ceil", scope: !1607, file: !1607, line: 159, type: !1608, flags: DIFlagPrototyped, spFlags: 0)
!1621 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1622, file: !1610, line: 173)
!1622 = !DISubprogram(name: "cos", scope: !1607, file: !1607, line: 62, type: !1608, flags: DIFlagPrototyped, spFlags: 0)
!1623 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1624, file: !1610, line: 192)
!1624 = !DISubprogram(name: "cosh", scope: !1607, file: !1607, line: 71, type: !1608, flags: DIFlagPrototyped, spFlags: 0)
!1625 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1626, file: !1610, line: 211)
!1626 = !DISubprogram(name: "exp", scope: !1607, file: !1607, line: 95, type: !1608, flags: DIFlagPrototyped, spFlags: 0)
!1627 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1628, file: !1610, line: 230)
!1628 = !DISubprogram(name: "fabs", scope: !1607, file: !1607, line: 162, type: !1608, flags: DIFlagPrototyped, spFlags: 0)
!1629 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1630, file: !1610, line: 249)
!1630 = !DISubprogram(name: "floor", scope: !1607, file: !1607, line: 165, type: !1608, flags: DIFlagPrototyped, spFlags: 0)
!1631 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1632, file: !1610, line: 268)
!1632 = !DISubprogram(name: "fmod", scope: !1607, file: !1607, line: 168, type: !1617, flags: DIFlagPrototyped, spFlags: 0)
!1633 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1634, file: !1610, line: 280)
!1634 = !DISubprogram(name: "frexp", scope: !1607, file: !1607, line: 98, type: !1635, flags: DIFlagPrototyped, spFlags: 0)
!1635 = !DISubroutineType(types: !1636)
!1636 = !{!889, !889, !463}
!1637 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1638, file: !1610, line: 299)
!1638 = !DISubprogram(name: "ldexp", scope: !1607, file: !1607, line: 101, type: !1639, flags: DIFlagPrototyped, spFlags: 0)
!1639 = !DISubroutineType(types: !1640)
!1640 = !{!889, !889, !125}
!1641 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1642, file: !1610, line: 318)
!1642 = !DISubprogram(name: "log", scope: !1607, file: !1607, line: 104, type: !1608, flags: DIFlagPrototyped, spFlags: 0)
!1643 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1644, file: !1610, line: 337)
!1644 = !DISubprogram(name: "log10", scope: !1607, file: !1607, line: 107, type: !1608, flags: DIFlagPrototyped, spFlags: 0)
!1645 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1646, file: !1610, line: 356)
!1646 = !DISubprogram(name: "modf", scope: !1607, file: !1607, line: 110, type: !1647, flags: DIFlagPrototyped, spFlags: 0)
!1647 = !DISubroutineType(types: !1648)
!1648 = !{!889, !889, !1649}
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!1650 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1651, file: !1610, line: 368)
!1651 = !DISubprogram(name: "pow", scope: !1607, file: !1607, line: 140, type: !1617, flags: DIFlagPrototyped, spFlags: 0)
!1652 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1653, file: !1610, line: 396)
!1653 = !DISubprogram(name: "sin", scope: !1607, file: !1607, line: 64, type: !1608, flags: DIFlagPrototyped, spFlags: 0)
!1654 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1655, file: !1610, line: 415)
!1655 = !DISubprogram(name: "sinh", scope: !1607, file: !1607, line: 73, type: !1608, flags: DIFlagPrototyped, spFlags: 0)
!1656 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1657, file: !1610, line: 434)
!1657 = !DISubprogram(name: "sqrt", scope: !1607, file: !1607, line: 143, type: !1608, flags: DIFlagPrototyped, spFlags: 0)
!1658 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1659, file: !1610, line: 453)
!1659 = !DISubprogram(name: "tan", scope: !1607, file: !1607, line: 66, type: !1608, flags: DIFlagPrototyped, spFlags: 0)
!1660 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1661, file: !1610, line: 472)
!1661 = !DISubprogram(name: "tanh", scope: !1607, file: !1607, line: 75, type: !1608, flags: DIFlagPrototyped, spFlags: 0)
!1662 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1663, file: !1610, line: 1881)
!1663 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_t", file: !1664, line: 150, baseType: !889)
!1664 = !DIFile(filename: "/usr/include/math.h", directory: "", checksumkind: CSK_MD5, checksum: "2fed8744bf26ef122777e2a4593ca401")
!1665 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1666, file: !1610, line: 1882)
!1666 = !DIDerivedType(tag: DW_TAG_typedef, name: "float_t", file: !1664, line: 149, baseType: !896)
!1667 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1668, file: !1610, line: 1885)
!1668 = !DISubprogram(name: "acosh", scope: !1607, file: !1607, line: 85, type: !1608, flags: DIFlagPrototyped, spFlags: 0)
!1669 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1670, file: !1610, line: 1886)
!1670 = !DISubprogram(name: "acoshf", scope: !1607, file: !1607, line: 85, type: !1671, flags: DIFlagPrototyped, spFlags: 0)
!1671 = !DISubroutineType(types: !1672)
!1672 = !{!896, !896}
!1673 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1674, file: !1610, line: 1887)
!1674 = !DISubprogram(name: "acoshl", scope: !1607, file: !1607, line: 85, type: !1675, flags: DIFlagPrototyped, spFlags: 0)
!1675 = !DISubroutineType(types: !1676)
!1676 = !{!955, !955}
!1677 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1678, file: !1610, line: 1889)
!1678 = !DISubprogram(name: "asinh", scope: !1607, file: !1607, line: 87, type: !1608, flags: DIFlagPrototyped, spFlags: 0)
!1679 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1680, file: !1610, line: 1890)
!1680 = !DISubprogram(name: "asinhf", scope: !1607, file: !1607, line: 87, type: !1671, flags: DIFlagPrototyped, spFlags: 0)
!1681 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1682, file: !1610, line: 1891)
!1682 = !DISubprogram(name: "asinhl", scope: !1607, file: !1607, line: 87, type: !1675, flags: DIFlagPrototyped, spFlags: 0)
!1683 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1684, file: !1610, line: 1893)
!1684 = !DISubprogram(name: "atanh", scope: !1607, file: !1607, line: 89, type: !1608, flags: DIFlagPrototyped, spFlags: 0)
!1685 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1686, file: !1610, line: 1894)
!1686 = !DISubprogram(name: "atanhf", scope: !1607, file: !1607, line: 89, type: !1671, flags: DIFlagPrototyped, spFlags: 0)
!1687 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1688, file: !1610, line: 1895)
!1688 = !DISubprogram(name: "atanhl", scope: !1607, file: !1607, line: 89, type: !1675, flags: DIFlagPrototyped, spFlags: 0)
!1689 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1690, file: !1610, line: 1897)
!1690 = !DISubprogram(name: "cbrt", scope: !1607, file: !1607, line: 152, type: !1608, flags: DIFlagPrototyped, spFlags: 0)
!1691 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1692, file: !1610, line: 1898)
!1692 = !DISubprogram(name: "cbrtf", scope: !1607, file: !1607, line: 152, type: !1671, flags: DIFlagPrototyped, spFlags: 0)
!1693 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1694, file: !1610, line: 1899)
!1694 = !DISubprogram(name: "cbrtl", scope: !1607, file: !1607, line: 152, type: !1675, flags: DIFlagPrototyped, spFlags: 0)
!1695 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1696, file: !1610, line: 1901)
!1696 = !DISubprogram(name: "copysign", scope: !1607, file: !1607, line: 196, type: !1617, flags: DIFlagPrototyped, spFlags: 0)
!1697 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1698, file: !1610, line: 1902)
!1698 = !DISubprogram(name: "copysignf", scope: !1607, file: !1607, line: 196, type: !1699, flags: DIFlagPrototyped, spFlags: 0)
!1699 = !DISubroutineType(types: !1700)
!1700 = !{!896, !896, !896}
!1701 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1702, file: !1610, line: 1903)
!1702 = !DISubprogram(name: "copysignl", scope: !1607, file: !1607, line: 196, type: !1703, flags: DIFlagPrototyped, spFlags: 0)
!1703 = !DISubroutineType(types: !1704)
!1704 = !{!955, !955, !955}
!1705 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1706, file: !1610, line: 1905)
!1706 = !DISubprogram(name: "erf", scope: !1607, file: !1607, line: 228, type: !1608, flags: DIFlagPrototyped, spFlags: 0)
!1707 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1708, file: !1610, line: 1906)
!1708 = !DISubprogram(name: "erff", scope: !1607, file: !1607, line: 228, type: !1671, flags: DIFlagPrototyped, spFlags: 0)
!1709 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1710, file: !1610, line: 1907)
!1710 = !DISubprogram(name: "erfl", scope: !1607, file: !1607, line: 228, type: !1675, flags: DIFlagPrototyped, spFlags: 0)
!1711 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1712, file: !1610, line: 1909)
!1712 = !DISubprogram(name: "erfc", scope: !1607, file: !1607, line: 229, type: !1608, flags: DIFlagPrototyped, spFlags: 0)
!1713 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1714, file: !1610, line: 1910)
!1714 = !DISubprogram(name: "erfcf", scope: !1607, file: !1607, line: 229, type: !1671, flags: DIFlagPrototyped, spFlags: 0)
!1715 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1716, file: !1610, line: 1911)
!1716 = !DISubprogram(name: "erfcl", scope: !1607, file: !1607, line: 229, type: !1675, flags: DIFlagPrototyped, spFlags: 0)
!1717 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1718, file: !1610, line: 1913)
!1718 = !DISubprogram(name: "exp2", scope: !1607, file: !1607, line: 130, type: !1608, flags: DIFlagPrototyped, spFlags: 0)
!1719 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1720, file: !1610, line: 1914)
!1720 = !DISubprogram(name: "exp2f", scope: !1607, file: !1607, line: 130, type: !1671, flags: DIFlagPrototyped, spFlags: 0)
!1721 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1722, file: !1610, line: 1915)
!1722 = !DISubprogram(name: "exp2l", scope: !1607, file: !1607, line: 130, type: !1675, flags: DIFlagPrototyped, spFlags: 0)
!1723 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1724, file: !1610, line: 1917)
!1724 = !DISubprogram(name: "expm1", scope: !1607, file: !1607, line: 119, type: !1608, flags: DIFlagPrototyped, spFlags: 0)
!1725 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1726, file: !1610, line: 1918)
!1726 = !DISubprogram(name: "expm1f", scope: !1607, file: !1607, line: 119, type: !1671, flags: DIFlagPrototyped, spFlags: 0)
!1727 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1728, file: !1610, line: 1919)
!1728 = !DISubprogram(name: "expm1l", scope: !1607, file: !1607, line: 119, type: !1675, flags: DIFlagPrototyped, spFlags: 0)
!1729 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1730, file: !1610, line: 1921)
!1730 = !DISubprogram(name: "fdim", scope: !1607, file: !1607, line: 326, type: !1617, flags: DIFlagPrototyped, spFlags: 0)
!1731 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1732, file: !1610, line: 1922)
!1732 = !DISubprogram(name: "fdimf", scope: !1607, file: !1607, line: 326, type: !1699, flags: DIFlagPrototyped, spFlags: 0)
!1733 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1734, file: !1610, line: 1923)
!1734 = !DISubprogram(name: "fdiml", scope: !1607, file: !1607, line: 326, type: !1703, flags: DIFlagPrototyped, spFlags: 0)
!1735 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1736, file: !1610, line: 1925)
!1736 = !DISubprogram(name: "fma", scope: !1607, file: !1607, line: 335, type: !1737, flags: DIFlagPrototyped, spFlags: 0)
!1737 = !DISubroutineType(types: !1738)
!1738 = !{!889, !889, !889, !889}
!1739 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1740, file: !1610, line: 1926)
!1740 = !DISubprogram(name: "fmaf", scope: !1607, file: !1607, line: 335, type: !1741, flags: DIFlagPrototyped, spFlags: 0)
!1741 = !DISubroutineType(types: !1742)
!1742 = !{!896, !896, !896, !896}
!1743 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1744, file: !1610, line: 1927)
!1744 = !DISubprogram(name: "fmal", scope: !1607, file: !1607, line: 335, type: !1745, flags: DIFlagPrototyped, spFlags: 0)
!1745 = !DISubroutineType(types: !1746)
!1746 = !{!955, !955, !955, !955}
!1747 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1748, file: !1610, line: 1929)
!1748 = !DISubprogram(name: "fmax", scope: !1607, file: !1607, line: 329, type: !1617, flags: DIFlagPrototyped, spFlags: 0)
!1749 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1750, file: !1610, line: 1930)
!1750 = !DISubprogram(name: "fmaxf", scope: !1607, file: !1607, line: 329, type: !1699, flags: DIFlagPrototyped, spFlags: 0)
!1751 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1752, file: !1610, line: 1931)
!1752 = !DISubprogram(name: "fmaxl", scope: !1607, file: !1607, line: 329, type: !1703, flags: DIFlagPrototyped, spFlags: 0)
!1753 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1754, file: !1610, line: 1933)
!1754 = !DISubprogram(name: "fmin", scope: !1607, file: !1607, line: 332, type: !1617, flags: DIFlagPrototyped, spFlags: 0)
!1755 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1756, file: !1610, line: 1934)
!1756 = !DISubprogram(name: "fminf", scope: !1607, file: !1607, line: 332, type: !1699, flags: DIFlagPrototyped, spFlags: 0)
!1757 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1758, file: !1610, line: 1935)
!1758 = !DISubprogram(name: "fminl", scope: !1607, file: !1607, line: 332, type: !1703, flags: DIFlagPrototyped, spFlags: 0)
!1759 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1760, file: !1610, line: 1937)
!1760 = !DISubprogram(name: "hypot", scope: !1607, file: !1607, line: 147, type: !1617, flags: DIFlagPrototyped, spFlags: 0)
!1761 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1762, file: !1610, line: 1938)
!1762 = !DISubprogram(name: "hypotf", scope: !1607, file: !1607, line: 147, type: !1699, flags: DIFlagPrototyped, spFlags: 0)
!1763 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1764, file: !1610, line: 1939)
!1764 = !DISubprogram(name: "hypotl", scope: !1607, file: !1607, line: 147, type: !1703, flags: DIFlagPrototyped, spFlags: 0)
!1765 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1766, file: !1610, line: 1941)
!1766 = !DISubprogram(name: "ilogb", scope: !1607, file: !1607, line: 280, type: !1767, flags: DIFlagPrototyped, spFlags: 0)
!1767 = !DISubroutineType(types: !1768)
!1768 = !{!125, !889}
!1769 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1770, file: !1610, line: 1942)
!1770 = !DISubprogram(name: "ilogbf", scope: !1607, file: !1607, line: 280, type: !1771, flags: DIFlagPrototyped, spFlags: 0)
!1771 = !DISubroutineType(types: !1772)
!1772 = !{!125, !896}
!1773 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1774, file: !1610, line: 1943)
!1774 = !DISubprogram(name: "ilogbl", scope: !1607, file: !1607, line: 280, type: !1775, flags: DIFlagPrototyped, spFlags: 0)
!1775 = !DISubroutineType(types: !1776)
!1776 = !{!125, !955}
!1777 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1778, file: !1610, line: 1945)
!1778 = !DISubprogram(name: "lgamma", scope: !1607, file: !1607, line: 230, type: !1608, flags: DIFlagPrototyped, spFlags: 0)
!1779 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1780, file: !1610, line: 1946)
!1780 = !DISubprogram(name: "lgammaf", scope: !1607, file: !1607, line: 230, type: !1671, flags: DIFlagPrototyped, spFlags: 0)
!1781 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1782, file: !1610, line: 1947)
!1782 = !DISubprogram(name: "lgammal", scope: !1607, file: !1607, line: 230, type: !1675, flags: DIFlagPrototyped, spFlags: 0)
!1783 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1784, file: !1610, line: 1950)
!1784 = !DISubprogram(name: "llrint", scope: !1607, file: !1607, line: 316, type: !1785, flags: DIFlagPrototyped, spFlags: 0)
!1785 = !DISubroutineType(types: !1786)
!1786 = !{!960, !889}
!1787 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1788, file: !1610, line: 1951)
!1788 = !DISubprogram(name: "llrintf", scope: !1607, file: !1607, line: 316, type: !1789, flags: DIFlagPrototyped, spFlags: 0)
!1789 = !DISubroutineType(types: !1790)
!1790 = !{!960, !896}
!1791 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1792, file: !1610, line: 1952)
!1792 = !DISubprogram(name: "llrintl", scope: !1607, file: !1607, line: 316, type: !1793, flags: DIFlagPrototyped, spFlags: 0)
!1793 = !DISubroutineType(types: !1794)
!1794 = !{!960, !955}
!1795 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1796, file: !1610, line: 1954)
!1796 = !DISubprogram(name: "llround", scope: !1607, file: !1607, line: 322, type: !1785, flags: DIFlagPrototyped, spFlags: 0)
!1797 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1798, file: !1610, line: 1955)
!1798 = !DISubprogram(name: "llroundf", scope: !1607, file: !1607, line: 322, type: !1789, flags: DIFlagPrototyped, spFlags: 0)
!1799 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1800, file: !1610, line: 1956)
!1800 = !DISubprogram(name: "llroundl", scope: !1607, file: !1607, line: 322, type: !1793, flags: DIFlagPrototyped, spFlags: 0)
!1801 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1802, file: !1610, line: 1959)
!1802 = !DISubprogram(name: "log1p", scope: !1607, file: !1607, line: 122, type: !1608, flags: DIFlagPrototyped, spFlags: 0)
!1803 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1804, file: !1610, line: 1960)
!1804 = !DISubprogram(name: "log1pf", scope: !1607, file: !1607, line: 122, type: !1671, flags: DIFlagPrototyped, spFlags: 0)
!1805 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1806, file: !1610, line: 1961)
!1806 = !DISubprogram(name: "log1pl", scope: !1607, file: !1607, line: 122, type: !1675, flags: DIFlagPrototyped, spFlags: 0)
!1807 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1808, file: !1610, line: 1963)
!1808 = !DISubprogram(name: "log2", scope: !1607, file: !1607, line: 133, type: !1608, flags: DIFlagPrototyped, spFlags: 0)
!1809 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1810, file: !1610, line: 1964)
!1810 = !DISubprogram(name: "log2f", scope: !1607, file: !1607, line: 133, type: !1671, flags: DIFlagPrototyped, spFlags: 0)
!1811 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1812, file: !1610, line: 1965)
!1812 = !DISubprogram(name: "log2l", scope: !1607, file: !1607, line: 133, type: !1675, flags: DIFlagPrototyped, spFlags: 0)
!1813 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1814, file: !1610, line: 1967)
!1814 = !DISubprogram(name: "logb", scope: !1607, file: !1607, line: 125, type: !1608, flags: DIFlagPrototyped, spFlags: 0)
!1815 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1816, file: !1610, line: 1968)
!1816 = !DISubprogram(name: "logbf", scope: !1607, file: !1607, line: 125, type: !1671, flags: DIFlagPrototyped, spFlags: 0)
!1817 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1818, file: !1610, line: 1969)
!1818 = !DISubprogram(name: "logbl", scope: !1607, file: !1607, line: 125, type: !1675, flags: DIFlagPrototyped, spFlags: 0)
!1819 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1820, file: !1610, line: 1971)
!1820 = !DISubprogram(name: "lrint", scope: !1607, file: !1607, line: 314, type: !1821, flags: DIFlagPrototyped, spFlags: 0)
!1821 = !DISubroutineType(types: !1822)
!1822 = !{!861, !889}
!1823 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1824, file: !1610, line: 1972)
!1824 = !DISubprogram(name: "lrintf", scope: !1607, file: !1607, line: 314, type: !1825, flags: DIFlagPrototyped, spFlags: 0)
!1825 = !DISubroutineType(types: !1826)
!1826 = !{!861, !896}
!1827 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1828, file: !1610, line: 1973)
!1828 = !DISubprogram(name: "lrintl", scope: !1607, file: !1607, line: 314, type: !1829, flags: DIFlagPrototyped, spFlags: 0)
!1829 = !DISubroutineType(types: !1830)
!1830 = !{!861, !955}
!1831 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1832, file: !1610, line: 1975)
!1832 = !DISubprogram(name: "lround", scope: !1607, file: !1607, line: 320, type: !1821, flags: DIFlagPrototyped, spFlags: 0)
!1833 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1834, file: !1610, line: 1976)
!1834 = !DISubprogram(name: "lroundf", scope: !1607, file: !1607, line: 320, type: !1825, flags: DIFlagPrototyped, spFlags: 0)
!1835 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1836, file: !1610, line: 1977)
!1836 = !DISubprogram(name: "lroundl", scope: !1607, file: !1607, line: 320, type: !1829, flags: DIFlagPrototyped, spFlags: 0)
!1837 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1838, file: !1610, line: 1979)
!1838 = !DISubprogram(name: "nan", scope: !1607, file: !1607, line: 201, type: !1062, flags: DIFlagPrototyped, spFlags: 0)
!1839 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1840, file: !1610, line: 1980)
!1840 = !DISubprogram(name: "nanf", scope: !1607, file: !1607, line: 201, type: !1841, flags: DIFlagPrototyped, spFlags: 0)
!1841 = !DISubroutineType(types: !1842)
!1842 = !{!896, !752}
!1843 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1844, file: !1610, line: 1981)
!1844 = !DISubprogram(name: "nanl", scope: !1607, file: !1607, line: 201, type: !1845, flags: DIFlagPrototyped, spFlags: 0)
!1845 = !DISubroutineType(types: !1846)
!1846 = !{!955, !752}
!1847 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1848, file: !1610, line: 1983)
!1848 = !DISubprogram(name: "nearbyint", scope: !1607, file: !1607, line: 294, type: !1608, flags: DIFlagPrototyped, spFlags: 0)
!1849 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1850, file: !1610, line: 1984)
!1850 = !DISubprogram(name: "nearbyintf", scope: !1607, file: !1607, line: 294, type: !1671, flags: DIFlagPrototyped, spFlags: 0)
!1851 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1852, file: !1610, line: 1985)
!1852 = !DISubprogram(name: "nearbyintl", scope: !1607, file: !1607, line: 294, type: !1675, flags: DIFlagPrototyped, spFlags: 0)
!1853 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1854, file: !1610, line: 1987)
!1854 = !DISubprogram(name: "nextafter", scope: !1607, file: !1607, line: 259, type: !1617, flags: DIFlagPrototyped, spFlags: 0)
!1855 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1856, file: !1610, line: 1988)
!1856 = !DISubprogram(name: "nextafterf", scope: !1607, file: !1607, line: 259, type: !1699, flags: DIFlagPrototyped, spFlags: 0)
!1857 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1858, file: !1610, line: 1989)
!1858 = !DISubprogram(name: "nextafterl", scope: !1607, file: !1607, line: 259, type: !1703, flags: DIFlagPrototyped, spFlags: 0)
!1859 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1860, file: !1610, line: 1991)
!1860 = !DISubprogram(name: "nexttoward", scope: !1607, file: !1607, line: 261, type: !1861, flags: DIFlagPrototyped, spFlags: 0)
!1861 = !DISubroutineType(types: !1862)
!1862 = !{!889, !889, !955}
!1863 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1864, file: !1610, line: 1992)
!1864 = !DISubprogram(name: "nexttowardf", scope: !1607, file: !1607, line: 261, type: !1865, flags: DIFlagPrototyped, spFlags: 0)
!1865 = !DISubroutineType(types: !1866)
!1866 = !{!896, !896, !955}
!1867 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1868, file: !1610, line: 1993)
!1868 = !DISubprogram(name: "nexttowardl", scope: !1607, file: !1607, line: 261, type: !1703, flags: DIFlagPrototyped, spFlags: 0)
!1869 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1870, file: !1610, line: 1995)
!1870 = !DISubprogram(name: "remainder", scope: !1607, file: !1607, line: 272, type: !1617, flags: DIFlagPrototyped, spFlags: 0)
!1871 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1872, file: !1610, line: 1996)
!1872 = !DISubprogram(name: "remainderf", scope: !1607, file: !1607, line: 272, type: !1699, flags: DIFlagPrototyped, spFlags: 0)
!1873 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1874, file: !1610, line: 1997)
!1874 = !DISubprogram(name: "remainderl", scope: !1607, file: !1607, line: 272, type: !1703, flags: DIFlagPrototyped, spFlags: 0)
!1875 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1876, file: !1610, line: 1999)
!1876 = !DISubprogram(name: "remquo", scope: !1607, file: !1607, line: 307, type: !1877, flags: DIFlagPrototyped, spFlags: 0)
!1877 = !DISubroutineType(types: !1878)
!1878 = !{!889, !889, !889, !463}
!1879 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1880, file: !1610, line: 2000)
!1880 = !DISubprogram(name: "remquof", scope: !1607, file: !1607, line: 307, type: !1881, flags: DIFlagPrototyped, spFlags: 0)
!1881 = !DISubroutineType(types: !1882)
!1882 = !{!896, !896, !896, !463}
!1883 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1884, file: !1610, line: 2001)
!1884 = !DISubprogram(name: "remquol", scope: !1607, file: !1607, line: 307, type: !1885, flags: DIFlagPrototyped, spFlags: 0)
!1885 = !DISubroutineType(types: !1886)
!1886 = !{!955, !955, !955, !463}
!1887 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1888, file: !1610, line: 2003)
!1888 = !DISubprogram(name: "rint", scope: !1607, file: !1607, line: 256, type: !1608, flags: DIFlagPrototyped, spFlags: 0)
!1889 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1890, file: !1610, line: 2004)
!1890 = !DISubprogram(name: "rintf", scope: !1607, file: !1607, line: 256, type: !1671, flags: DIFlagPrototyped, spFlags: 0)
!1891 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1892, file: !1610, line: 2005)
!1892 = !DISubprogram(name: "rintl", scope: !1607, file: !1607, line: 256, type: !1675, flags: DIFlagPrototyped, spFlags: 0)
!1893 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1894, file: !1610, line: 2007)
!1894 = !DISubprogram(name: "round", scope: !1607, file: !1607, line: 298, type: !1608, flags: DIFlagPrototyped, spFlags: 0)
!1895 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1896, file: !1610, line: 2008)
!1896 = !DISubprogram(name: "roundf", scope: !1607, file: !1607, line: 298, type: !1671, flags: DIFlagPrototyped, spFlags: 0)
!1897 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1898, file: !1610, line: 2009)
!1898 = !DISubprogram(name: "roundl", scope: !1607, file: !1607, line: 298, type: !1675, flags: DIFlagPrototyped, spFlags: 0)
!1899 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1900, file: !1610, line: 2011)
!1900 = !DISubprogram(name: "scalbln", scope: !1607, file: !1607, line: 290, type: !1901, flags: DIFlagPrototyped, spFlags: 0)
!1901 = !DISubroutineType(types: !1902)
!1902 = !{!889, !889, !861}
!1903 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1904, file: !1610, line: 2012)
!1904 = !DISubprogram(name: "scalblnf", scope: !1607, file: !1607, line: 290, type: !1905, flags: DIFlagPrototyped, spFlags: 0)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{!896, !896, !861}
!1907 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1908, file: !1610, line: 2013)
!1908 = !DISubprogram(name: "scalblnl", scope: !1607, file: !1607, line: 290, type: !1909, flags: DIFlagPrototyped, spFlags: 0)
!1909 = !DISubroutineType(types: !1910)
!1910 = !{!955, !955, !861}
!1911 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1912, file: !1610, line: 2015)
!1912 = !DISubprogram(name: "scalbn", scope: !1607, file: !1607, line: 276, type: !1639, flags: DIFlagPrototyped, spFlags: 0)
!1913 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1914, file: !1610, line: 2016)
!1914 = !DISubprogram(name: "scalbnf", scope: !1607, file: !1607, line: 276, type: !1915, flags: DIFlagPrototyped, spFlags: 0)
!1915 = !DISubroutineType(types: !1916)
!1916 = !{!896, !896, !125}
!1917 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1918, file: !1610, line: 2017)
!1918 = !DISubprogram(name: "scalbnl", scope: !1607, file: !1607, line: 276, type: !1919, flags: DIFlagPrototyped, spFlags: 0)
!1919 = !DISubroutineType(types: !1920)
!1920 = !{!955, !955, !125}
!1921 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1922, file: !1610, line: 2019)
!1922 = !DISubprogram(name: "tgamma", scope: !1607, file: !1607, line: 235, type: !1608, flags: DIFlagPrototyped, spFlags: 0)
!1923 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1924, file: !1610, line: 2020)
!1924 = !DISubprogram(name: "tgammaf", scope: !1607, file: !1607, line: 235, type: !1671, flags: DIFlagPrototyped, spFlags: 0)
!1925 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1926, file: !1610, line: 2021)
!1926 = !DISubprogram(name: "tgammal", scope: !1607, file: !1607, line: 235, type: !1675, flags: DIFlagPrototyped, spFlags: 0)
!1927 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1928, file: !1610, line: 2023)
!1928 = !DISubprogram(name: "trunc", scope: !1607, file: !1607, line: 302, type: !1608, flags: DIFlagPrototyped, spFlags: 0)
!1929 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1930, file: !1610, line: 2024)
!1930 = !DISubprogram(name: "truncf", scope: !1607, file: !1607, line: 302, type: !1671, flags: DIFlagPrototyped, spFlags: 0)
!1931 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1932, file: !1610, line: 2025)
!1932 = !DISubprogram(name: "truncl", scope: !1607, file: !1607, line: 302, type: !1675, flags: DIFlagPrototyped, spFlags: 0)
!1933 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1934, file: !1937, line: 52)
!1934 = !DIDerivedType(tag: DW_TAG_typedef, name: "sig_atomic_t", file: !1935, line: 8, baseType: !1936)
!1935 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/sig_atomic_t.h", directory: "", checksumkind: CSK_MD5, checksum: "d9236f7e3e7f10f53aa9d4cd97f503cf")
!1936 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sig_atomic_t", file: !1388, line: 214, baseType: !125)
!1937 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/csignal", directory: "")
!1938 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1939, file: !1937, line: 53)
!1939 = !DISubprogram(name: "signal", scope: !1940, file: !1940, line: 88, type: !1941, flags: DIFlagPrototyped, spFlags: 0)
!1940 = !DIFile(filename: "/usr/include/signal.h", directory: "", checksumkind: CSK_MD5, checksum: "f0ccc98b488c777571beae1a47763d91")
!1941 = !DISubroutineType(types: !1942)
!1942 = !{!1943, !125, !1943}
!1943 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1940, line: 72, baseType: !1944)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1945 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1946, file: !1937, line: 54)
!1946 = !DISubprogram(name: "raise", scope: !1940, file: !1940, line: 123, type: !1005, flags: DIFlagPrototyped, spFlags: 0)
!1947 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1948, file: !1952, line: 77)
!1948 = !DISubprogram(name: "memchr", scope: !1949, file: !1949, line: 73, type: !1950, flags: DIFlagPrototyped, spFlags: 0)
!1949 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "61f60112cf5c0a45c54ea1f595add24c")
!1950 = !DISubroutineType(types: !1951)
!1951 = !{!172, !172, !125, !749}
!1952 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cstring", directory: "")
!1953 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1954, file: !1952, line: 78)
!1954 = !DISubprogram(name: "memcmp", scope: !1949, file: !1949, line: 64, type: !1955, flags: DIFlagPrototyped, spFlags: 0)
!1955 = !DISubroutineType(types: !1956)
!1956 = !{!125, !172, !172, !749}
!1957 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1958, file: !1952, line: 79)
!1958 = !DISubprogram(name: "memcpy", scope: !1949, file: !1949, line: 43, type: !1959, flags: DIFlagPrototyped, spFlags: 0)
!1959 = !DISubroutineType(types: !1960)
!1960 = !{!801, !1269, !1294, !749}
!1961 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1962, file: !1952, line: 80)
!1962 = !DISubprogram(name: "memmove", scope: !1949, file: !1949, line: 47, type: !1963, flags: DIFlagPrototyped, spFlags: 0)
!1963 = !DISubroutineType(types: !1964)
!1964 = !{!801, !801, !172, !749}
!1965 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1966, file: !1952, line: 81)
!1966 = !DISubprogram(name: "memset", scope: !1949, file: !1949, line: 61, type: !1967, flags: DIFlagPrototyped, spFlags: 0)
!1967 = !DISubroutineType(types: !1968)
!1968 = !{!801, !801, !125, !749}
!1969 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1970, file: !1952, line: 82)
!1970 = !DISubprogram(name: "strcat", scope: !1949, file: !1949, line: 130, type: !1971, flags: DIFlagPrototyped, spFlags: 0)
!1971 = !DISubroutineType(types: !1972)
!1972 = !{!824, !823, !751}
!1973 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1974, file: !1952, line: 83)
!1974 = !DISubprogram(name: "strcmp", scope: !1949, file: !1949, line: 137, type: !1317, flags: DIFlagPrototyped, spFlags: 0)
!1975 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1976, file: !1952, line: 84)
!1976 = !DISubprogram(name: "strcoll", scope: !1949, file: !1949, line: 144, type: !1317, flags: DIFlagPrototyped, spFlags: 0)
!1977 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1978, file: !1952, line: 85)
!1978 = !DISubprogram(name: "strcpy", scope: !1949, file: !1949, line: 122, type: !1971, flags: DIFlagPrototyped, spFlags: 0)
!1979 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1980, file: !1952, line: 86)
!1980 = !DISubprogram(name: "strcspn", scope: !1949, file: !1949, line: 273, type: !1981, flags: DIFlagPrototyped, spFlags: 0)
!1981 = !DISubroutineType(types: !1982)
!1982 = !{!749, !752, !752}
!1983 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1984, file: !1952, line: 87)
!1984 = !DISubprogram(name: "strerror", scope: !1949, file: !1949, line: 397, type: !1985, flags: DIFlagPrototyped, spFlags: 0)
!1985 = !DISubroutineType(types: !1986)
!1986 = !{!824, !125}
!1987 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1988, file: !1952, line: 88)
!1988 = !DISubprogram(name: "strlen", scope: !1949, file: !1949, line: 385, type: !1989, flags: DIFlagPrototyped, spFlags: 0)
!1989 = !DISubroutineType(types: !1990)
!1990 = !{!749, !752}
!1991 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1992, file: !1952, line: 89)
!1992 = !DISubprogram(name: "strncat", scope: !1949, file: !1949, line: 133, type: !1993, flags: DIFlagPrototyped, spFlags: 0)
!1993 = !DISubroutineType(types: !1994)
!1994 = !{!824, !823, !751, !749}
!1995 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !1996, file: !1952, line: 90)
!1996 = !DISubprogram(name: "strncmp", scope: !1949, file: !1949, line: 140, type: !1997, flags: DIFlagPrototyped, spFlags: 0)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{!125, !752, !752, !749}
!1999 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2000, file: !1952, line: 91)
!2000 = !DISubprogram(name: "strncpy", scope: !1949, file: !1949, line: 125, type: !1993, flags: DIFlagPrototyped, spFlags: 0)
!2001 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2002, file: !1952, line: 92)
!2002 = !DISubprogram(name: "strspn", scope: !1949, file: !1949, line: 277, type: !1981, flags: DIFlagPrototyped, spFlags: 0)
!2003 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2004, file: !1952, line: 93)
!2004 = !DISubprogram(name: "strtok", scope: !1949, file: !1949, line: 336, type: !1971, flags: DIFlagPrototyped, spFlags: 0)
!2005 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2006, file: !1952, line: 94)
!2006 = !DISubprogram(name: "strxfrm", scope: !1949, file: !1949, line: 147, type: !2007, flags: DIFlagPrototyped, spFlags: 0)
!2007 = !DISubroutineType(types: !2008)
!2008 = !{!749, !823, !751, !749}
!2009 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2010, file: !1952, line: 95)
!2010 = !DISubprogram(name: "strchr", scope: !1949, file: !1949, line: 208, type: !2011, flags: DIFlagPrototyped, spFlags: 0)
!2011 = !DISubroutineType(types: !2012)
!2012 = !{!752, !752, !125}
!2013 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2014, file: !1952, line: 96)
!2014 = !DISubprogram(name: "strpbrk", scope: !1949, file: !1949, line: 285, type: !2015, flags: DIFlagPrototyped, spFlags: 0)
!2015 = !DISubroutineType(types: !2016)
!2016 = !{!752, !752, !752}
!2017 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2018, file: !1952, line: 97)
!2018 = !DISubprogram(name: "strrchr", scope: !1949, file: !1949, line: 235, type: !2011, flags: DIFlagPrototyped, spFlags: 0)
!2019 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2020, file: !1952, line: 98)
!2020 = !DISubprogram(name: "strstr", scope: !1949, file: !1949, line: 312, type: !2015, flags: DIFlagPrototyped, spFlags: 0)
!2021 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2022, file: !2025, line: 58)
!2022 = !DIDerivedType(tag: DW_TAG_typedef, name: "fenv_t", file: !2023, line: 94, baseType: !2024)
!2023 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/fenv.h", directory: "", checksumkind: CSK_MD5, checksum: "bbdcfdfd625fb2deec8be24fc022c2a2")
!2024 = !DICompositeType(tag: DW_TAG_structure_type, file: !2023, line: 75, size: 256, flags: DIFlagFwdDecl, identifier: "_ZTS6fenv_t")
!2025 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/fenv.h", directory: "")
!2026 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2027, file: !2025, line: 59)
!2027 = !DIDerivedType(tag: DW_TAG_typedef, name: "fexcept_t", file: !2023, line: 68, baseType: !1489)
!2028 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2029, file: !2025, line: 62)
!2029 = !DISubprogram(name: "feclearexcept", scope: !2030, file: !2030, line: 71, type: !1005, flags: DIFlagPrototyped, spFlags: 0)
!2030 = !DIFile(filename: "/usr/include/fenv.h", directory: "", checksumkind: CSK_MD5, checksum: "71de480da372600dd5bee1e7da8c6998")
!2031 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2032, file: !2025, line: 63)
!2032 = !DISubprogram(name: "fegetexceptflag", scope: !2030, file: !2030, line: 75, type: !2033, flags: DIFlagPrototyped, spFlags: 0)
!2033 = !DISubroutineType(types: !2034)
!2034 = !{!125, !2035, !125}
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64)
!2036 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2037, file: !2025, line: 64)
!2037 = !DISubprogram(name: "feraiseexcept", scope: !2030, file: !2030, line: 78, type: !1005, flags: DIFlagPrototyped, spFlags: 0)
!2038 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2039, file: !2025, line: 65)
!2039 = !DISubprogram(name: "fesetexceptflag", scope: !2030, file: !2030, line: 88, type: !2040, flags: DIFlagPrototyped, spFlags: 0)
!2040 = !DISubroutineType(types: !2041)
!2041 = !{!125, !2042, !125}
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2027)
!2044 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2045, file: !2025, line: 66)
!2045 = !DISubprogram(name: "fetestexcept", scope: !2030, file: !2030, line: 92, type: !1005, flags: DIFlagPrototyped, spFlags: 0)
!2046 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2047, file: !2025, line: 68)
!2047 = !DISubprogram(name: "fegetround", scope: !2030, file: !2030, line: 104, type: !123, flags: DIFlagPrototyped, spFlags: 0)
!2048 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2049, file: !2025, line: 69)
!2049 = !DISubprogram(name: "fesetround", scope: !2030, file: !2030, line: 107, type: !1005, flags: DIFlagPrototyped, spFlags: 0)
!2050 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2051, file: !2025, line: 71)
!2051 = !DISubprogram(name: "fegetenv", scope: !2030, file: !2030, line: 114, type: !2052, flags: DIFlagPrototyped, spFlags: 0)
!2052 = !DISubroutineType(types: !2053)
!2053 = !{!125, !2054}
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2055 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2056, file: !2025, line: 72)
!2056 = !DISubprogram(name: "feholdexcept", scope: !2030, file: !2030, line: 119, type: !2052, flags: DIFlagPrototyped, spFlags: 0)
!2057 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2058, file: !2025, line: 73)
!2058 = !DISubprogram(name: "fesetenv", scope: !2030, file: !2030, line: 123, type: !2059, flags: DIFlagPrototyped, spFlags: 0)
!2059 = !DISubroutineType(types: !2060)
!2060 = !{!125, !2061}
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2022)
!2063 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2064, file: !2025, line: 74)
!2064 = !DISubprogram(name: "feupdateenv", scope: !2030, file: !2030, line: 128, type: !2059, flags: DIFlagPrototyped, spFlags: 0)
!2065 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2022, file: !2066, line: 61)
!2066 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cfenv", directory: "")
!2067 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2027, file: !2066, line: 62)
!2068 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2029, file: !2066, line: 65)
!2069 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2032, file: !2066, line: 66)
!2070 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2037, file: !2066, line: 67)
!2071 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2039, file: !2066, line: 68)
!2072 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2045, file: !2066, line: 69)
!2073 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2047, file: !2066, line: 71)
!2074 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2049, file: !2066, line: 72)
!2075 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2051, file: !2066, line: 74)
!2076 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2056, file: !2066, line: 75)
!2077 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2058, file: !2066, line: 76)
!2078 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2064, file: !2066, line: 77)
!2079 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2080, file: !2083, line: 58)
!2080 = !DIDerivedType(tag: DW_TAG_typedef, name: "imaxdiv_t", file: !2081, line: 275, baseType: !2082)
!2081 = !DIFile(filename: "/usr/include/inttypes.h", directory: "", checksumkind: CSK_MD5, checksum: "a8351e0854e4f68bd930332ed3311c02")
!2082 = !DICompositeType(tag: DW_TAG_structure_type, file: !2081, line: 271, size: 128, flags: DIFlagFwdDecl, identifier: "_ZTS9imaxdiv_t")
!2083 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cinttypes", directory: "")
!2084 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2085, file: !2083, line: 61)
!2085 = !DISubprogram(name: "imaxabs", scope: !2081, file: !2081, line: 290, type: !2086, flags: DIFlagPrototyped, spFlags: 0)
!2086 = !DISubroutineType(types: !2087)
!2087 = !{!1477, !1477}
!2088 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2089, file: !2083, line: 62)
!2089 = !DISubprogram(name: "imaxdiv", scope: !2081, file: !2081, line: 293, type: !2090, flags: DIFlagPrototyped, spFlags: 0)
!2090 = !DISubroutineType(types: !2091)
!2091 = !{!2080, !1477, !1477}
!2092 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2093, file: !2083, line: 68)
!2093 = !DISubprogram(name: "strtoimax", scope: !2081, file: !2081, line: 297, type: !2094, flags: DIFlagPrototyped, spFlags: 0)
!2094 = !DISubroutineType(types: !2095)
!2095 = !{!1477, !751, !1144, !125}
!2096 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2097, file: !2083, line: 69)
!2097 = !DISubprogram(name: "strtoumax", scope: !2081, file: !2081, line: 301, type: !2098, flags: DIFlagPrototyped, spFlags: 0)
!2098 = !DISubroutineType(types: !2099)
!2099 = !{!1517, !751, !1144, !125}
!2100 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2101, file: !2083, line: 72)
!2101 = !DISubprogram(name: "wcstoimax", scope: !2081, file: !2081, line: 305, type: !2102, flags: DIFlagPrototyped, spFlags: 0)
!2102 = !DISubroutineType(types: !2103)
!2103 = !{!1477, !726, !890, !125}
!2104 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2105, file: !2083, line: 73)
!2105 = !DISubprogram(name: "wcstoumax", scope: !2081, file: !2081, line: 310, type: !2106, flags: DIFlagPrototyped, spFlags: 0)
!2106 = !DISubroutineType(types: !2107)
!2107 = !{!1517, !726, !890, !125}
!2108 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2109, file: !2116, line: 96)
!2109 = !DISubprogram(name: "mbrtoc16", scope: !2110, file: !2110, line: 45, type: !2111, flags: DIFlagPrototyped, spFlags: 0)
!2110 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "ddb60fbc4a603267efd3ca8818c9dc88")
!2111 = !DISubroutineType(types: !2112)
!2112 = !{!749, !2113, !751, !749, !754}
!2113 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2114)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2115 = !DIBasicType(name: "char16_t", size: 16, encoding: DW_ATE_UTF)
!2116 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cuchar", directory: "")
!2117 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2118, file: !2116, line: 97)
!2118 = !DISubprogram(name: "c16rtomb", scope: !2110, file: !2110, line: 50, type: !2119, flags: DIFlagPrototyped, spFlags: 0)
!2119 = !DISubroutineType(types: !2120)
!2120 = !{!749, !823, !2115, !754}
!2121 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2122, file: !2116, line: 98)
!2122 = !DISubprogram(name: "mbrtoc32", scope: !2110, file: !2110, line: 57, type: !2123, flags: DIFlagPrototyped, spFlags: 0)
!2123 = !DISubroutineType(types: !2124)
!2124 = !{!749, !2125, !751, !749, !754}
!2125 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2126)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = !DIBasicType(name: "char32_t", size: 32, encoding: DW_ATE_UTF)
!2128 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !2129, file: !2116, line: 99)
!2129 = !DISubprogram(name: "c32rtomb", scope: !2110, file: !2110, line: 62, type: !2130, flags: DIFlagPrototyped, spFlags: 0)
!2130 = !DISubroutineType(types: !2131)
!2131 = !{!749, !823, !2127, !754}
!2132 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !2, entity: !17, file: !2133, line: 6)
!2133 = !DIFile(filename: "Reproduced_UAF/Synthetic_bugs/Object_patterns/stack_param_by_ref_2.cpp", directory: "/home/cs22mtech12008", checksumkind: CSK_MD5, checksum: "507546d0e39b623522107eb972f0584c")
!2134 = !{i32 7, !"Dwarf Version", i32 5}
!2135 = !{i32 2, !"Debug Info Version", i32 3}
!2136 = !{i32 1, !"wchar_size", i32 4}
!2137 = !{i32 7, !"uwtable", i32 1}
!2138 = !{i32 7, !"frame-pointer", i32 2}
!2139 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!2140 = distinct !DISubprogram(name: "__cxx_global_var_init", scope: !798, file: !798, type: !41, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!2141 = !DILocation(line: 7, column: 13, scope: !2142)
!2142 = !DILexicalBlockFile(scope: !2140, file: !2133, discriminator: 0)
!2143 = !DILocation(line: 0, scope: !2140)
!2144 = distinct !DISubprogram(name: "thread", linkageName: "_ZNSt6threadC2Ev", scope: !16, file: !15, line: 132, type: !37, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !36, retainedNodes: !164)
!2145 = !DILocalVariable(name: "this", arg: 1, scope: !2144, type: !2146, flags: DIFlagArtificial | DIFlagObjectPointer)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!2147 = !DILocation(line: 0, scope: !2144)
!2148 = !DILocation(line: 132, column: 5, scope: !2144)
!2149 = !DILocation(line: 132, column: 31, scope: !2144)
!2150 = distinct !DISubprogram(name: "~thread", linkageName: "_ZNSt6threadD2Ev", scope: !16, file: !15, line: 170, type: !37, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !43, retainedNodes: !164)
!2151 = !DILocalVariable(name: "this", arg: 1, scope: !2150, type: !2146, flags: DIFlagArtificial | DIFlagObjectPointer)
!2152 = !DILocation(line: 0, scope: !2150)
!2153 = !DILocation(line: 172, column: 11, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !2155, file: !15, line: 172, column: 11)
!2155 = distinct !DILexicalBlock(scope: !2150, file: !15, line: 171, column: 5)
!2156 = !DILocation(line: 172, column: 11, scope: !2155)
!2157 = !DILocation(line: 322, column: 5, scope: !2158, inlinedAt: !2159)
!2158 = distinct !DISubprogram(name: "__terminate", linkageName: "_ZSt11__terminatev", scope: !402, file: !402, line: 319, type: !41, scopeLine: 320, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !164)
!2159 = distinct !DILocation(line: 173, column: 2, scope: !2154)
!2160 = !DILocation(line: 173, column: 2, scope: !2154)
!2161 = !DILocation(line: 174, column: 5, scope: !2150)
!2162 = distinct !DISubprogram(name: "thread_func", linkageName: "_Z11thread_funcPi", scope: !2133, file: !2133, line: 8, type: !461, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !164)
!2163 = !DILocalVariable(name: "x", arg: 1, scope: !2162, file: !2133, line: 8, type: !463)
!2164 = !DILocation(line: 8, column: 23, scope: !2162)
!2165 = !DILocation(line: 9, column: 5, scope: !2162)
!2166 = !DILocation(line: 10, column: 14, scope: !2162)
!2167 = !DILocation(line: 10, column: 35, scope: !2162)
!2168 = !DILocation(line: 10, column: 34, scope: !2162)
!2169 = !DILocation(line: 10, column: 32, scope: !2162)
!2170 = !DILocation(line: 10, column: 36, scope: !2162)
!2171 = !DILocation(line: 13, column: 1, scope: !2162)
!2172 = distinct !DISubprogram(name: "main", scope: !2133, file: !2133, line: 20, type: !123, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !164)
!2173 = !DILocalVariable(name: "a", scope: !2172, file: !2133, line: 21, type: !125)
!2174 = !DILocation(line: 21, column: 9, scope: !2172)
!2175 = !DILocation(line: 22, column: 13, scope: !2172)
!2176 = !DILocation(line: 24, column: 8, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2172, file: !2133, line: 24, column: 8)
!2178 = !DILocation(line: 24, column: 9, scope: !2177)
!2179 = !DILocation(line: 24, column: 8, scope: !2172)
!2180 = !DILocalVariable(name: "x", scope: !2181, file: !2133, line: 26, type: !125)
!2181 = distinct !DILexicalBlock(scope: !2177, file: !2133, line: 25, column: 5)
!2182 = !DILocation(line: 26, column: 13, scope: !2181)
!2183 = !DILocation(line: 27, column: 17, scope: !2181)
!2184 = !DILocation(line: 28, column: 36, scope: !2181)
!2185 = !DILocation(line: 28, column: 12, scope: !2181)
!2186 = !DILocation(line: 28, column: 11, scope: !2181)
!2187 = !DILocation(line: 28, column: 9, scope: !2181)
!2188 = !DILocation(line: 30, column: 5, scope: !2181)
!2189 = !DILocalVariable(name: "y", scope: !2190, file: !2133, line: 32, type: !125)
!2190 = distinct !DILexicalBlock(scope: !2177, file: !2133, line: 31, column: 9)
!2191 = !DILocation(line: 32, column: 13, scope: !2190)
!2192 = !DILocation(line: 33, column: 36, scope: !2190)
!2193 = !DILocation(line: 33, column: 12, scope: !2190)
!2194 = !DILocation(line: 33, column: 11, scope: !2190)
!2195 = !DILocation(line: 33, column: 9, scope: !2190)
!2196 = !DILocation(line: 38, column: 8, scope: !2172)
!2197 = !DILocation(line: 40, column: 1, scope: !2172)
!2198 = distinct !DISubprogram(name: "thread<void (&)(int *), int *, void>", linkageName: "_ZNSt6threadC2IRFvPiEJS1_EvEEOT_DpOT0_", scope: !16, file: !15, line: 154, type: !2199, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !2203, declaration: !2202, retainedNodes: !164)
!2199 = !DISubroutineType(types: !2200)
!2200 = !{null, !39, !2201, !464}
!2201 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !461, size: 64)
!2202 = !DISubprogram(name: "thread<void (&)(int *), int *, void>", scope: !16, file: !15, line: 154, type: !2199, scopeLine: 154, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0, templateParams: !2203)
!2203 = !{!2204, !467, !2205}
!2204 = !DITemplateTypeParameter(name: "_Callable", type: !2201)
!2205 = !DITemplateTypeParameter(type: null)
!2206 = !DILocalVariable(name: "this", arg: 1, scope: !2198, type: !2146, flags: DIFlagArtificial | DIFlagObjectPointer)
!2207 = !DILocation(line: 0, scope: !2198)
!2208 = !DILocalVariable(name: "__f", arg: 2, scope: !2198, file: !15, line: 154, type: !2201)
!2209 = !DILocation(line: 154, column: 26, scope: !2198)
!2210 = !DILocalVariable(name: "__args", arg: 3, scope: !2198, file: !15, line: 154, type: !464)
!2211 = !DILocation(line: 154, column: 42, scope: !2198)
!2212 = !DILocation(line: 154, column: 7, scope: !2198)
!2213 = !DILocation(line: 164, column: 29, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !2198, file: !15, line: 155, column: 7)
!2215 = !DILocation(line: 165, column: 32, scope: !2214)
!2216 = !DILocation(line: 165, column: 8, scope: !2214)
!2217 = !DILocation(line: 165, column: 58, scope: !2214)
!2218 = !DILocation(line: 165, column: 38, scope: !2214)
!2219 = !DILocation(line: 164, column: 33, scope: !2214)
!2220 = !DILocation(line: 164, column: 18, scope: !2214)
!2221 = !DILocation(line: 164, column: 2, scope: !2214)
!2222 = !DILocation(line: 167, column: 7, scope: !2198)
!2223 = !DILocation(line: 167, column: 7, scope: !2214)
!2224 = distinct !DISubprogram(name: "operator=", linkageName: "_ZNSt6threadaSEOS_", scope: !16, file: !15, line: 183, type: !58, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !57, retainedNodes: !164)
!2225 = !DILocalVariable(name: "this", arg: 1, scope: !2224, type: !2146, flags: DIFlagArtificial | DIFlagObjectPointer)
!2226 = !DILocation(line: 0, scope: !2224)
!2227 = !DILocalVariable(name: "__t", arg: 2, scope: !2224, file: !15, line: 183, type: !52)
!2228 = !DILocation(line: 183, column: 32, scope: !2224)
!2229 = !DILocation(line: 185, column: 11, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2224, file: !15, line: 185, column: 11)
!2231 = !DILocation(line: 185, column: 11, scope: !2224)
!2232 = !DILocation(line: 322, column: 5, scope: !2158, inlinedAt: !2233)
!2233 = distinct !DILocation(line: 186, column: 2, scope: !2230)
!2234 = !DILocation(line: 186, column: 2, scope: !2230)
!2235 = !DILocation(line: 187, column: 12, scope: !2224)
!2236 = !DILocation(line: 187, column: 7, scope: !2224)
!2237 = !DILocation(line: 188, column: 7, scope: !2224)
!2238 = distinct !DISubprogram(name: "id", linkageName: "_ZNSt6thread2idC2Ev", scope: !20, file: !15, line: 97, type: !30, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !29, retainedNodes: !164)
!2239 = !DILocalVariable(name: "this", arg: 1, scope: !2238, type: !2240, flags: DIFlagArtificial | DIFlagObjectPointer)
!2240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!2241 = !DILocation(line: 0, scope: !2238)
!2242 = !DILocation(line: 97, column: 23, scope: !2238)
!2243 = !DILocation(line: 97, column: 37, scope: !2238)
!2244 = distinct !DISubprogram(name: "joinable", linkageName: "_ZNKSt6thread8joinableEv", scope: !16, file: !15, line: 196, type: !64, scopeLine: 197, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !63, retainedNodes: !164)
!2245 = !DILocalVariable(name: "this", arg: 1, scope: !2244, type: !2246, flags: DIFlagArtificial | DIFlagObjectPointer)
!2246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!2247 = !DILocation(line: 0, scope: !2244)
!2248 = !DILocation(line: 197, column: 16, scope: !2244)
!2249 = !DILocation(line: 197, column: 25, scope: !2244)
!2250 = !DILocation(line: 197, column: 22, scope: !2244)
!2251 = !DILocation(line: 197, column: 14, scope: !2244)
!2252 = !DILocation(line: 197, column: 7, scope: !2244)
!2253 = distinct !DISubprogram(name: "operator==", linkageName: "_ZSteqNSt6thread2idES0_", scope: !17, file: !15, line: 324, type: !2254, scopeLine: 325, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !164)
!2254 = !DISubroutineType(types: !2255)
!2255 = !{!66, !20, !20}
!2256 = !DILocalVariable(name: "__x", arg: 1, scope: !2253, file: !15, line: 324, type: !20)
!2257 = !DILocation(line: 324, column: 25, scope: !2253)
!2258 = !DILocalVariable(name: "__y", arg: 2, scope: !2253, file: !15, line: 324, type: !20)
!2259 = !DILocation(line: 324, column: 41, scope: !2253)
!2260 = !DILocation(line: 330, column: 16, scope: !2253)
!2261 = !DILocation(line: 330, column: 33, scope: !2253)
!2262 = !DILocation(line: 330, column: 26, scope: !2253)
!2263 = !DILocation(line: 330, column: 5, scope: !2253)
!2264 = distinct !DISubprogram(name: "swap", linkageName: "_ZNSt6thread4swapERS_", scope: !16, file: !15, line: 192, type: !61, scopeLine: 193, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !60, retainedNodes: !164)
!2265 = !DILocalVariable(name: "this", arg: 1, scope: !2264, type: !2146, flags: DIFlagArtificial | DIFlagObjectPointer)
!2266 = !DILocation(line: 0, scope: !2264)
!2267 = !DILocalVariable(name: "__t", arg: 2, scope: !2264, file: !15, line: 192, type: !56)
!2268 = !DILocation(line: 192, column: 18, scope: !2264)
!2269 = !DILocation(line: 193, column: 17, scope: !2264)
!2270 = !DILocation(line: 193, column: 24, scope: !2264)
!2271 = !DILocation(line: 193, column: 28, scope: !2264)
!2272 = !DILocation(line: 193, column: 7, scope: !2264)
!2273 = !DILocation(line: 193, column: 36, scope: !2264)
!2274 = distinct !DISubprogram(name: "swap<std::thread::id>", linkageName: "_ZSt4swapINSt6thread2idEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_", scope: !17, file: !2275, line: 189, type: !2276, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !2283, retainedNodes: !164)
!2275 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/move.h", directory: "", checksumkind: CSK_MD5, checksum: "666aabd4a7b2d63fc1081b35311b7ac1")
!2276 = !DISubroutineType(types: !2277)
!2277 = !{!2278, !2282, !2282}
!2278 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2279, file: !317, line: 112, baseType: null)
!2279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "enable_if<true, void>", scope: !17, file: !317, line: 111, size: 8, flags: DIFlagTypePassByValue, elements: !164, templateParams: !2280, identifier: "_ZTSSt9enable_ifILb1EvE")
!2280 = !{!185, !2281}
!2281 = !DITemplateTypeParameter(name: "_Tp", type: null, defaulted: true)
!2282 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !20, size: 64)
!2283 = !{!2284}
!2284 = !DITemplateTypeParameter(name: "_Tp", type: !20)
!2285 = !DILocalVariable(name: "__a", arg: 1, scope: !2274, file: !2275, line: 189, type: !2282)
!2286 = !DILocation(line: 189, column: 15, scope: !2274)
!2287 = !DILocalVariable(name: "__b", arg: 2, scope: !2274, file: !2275, line: 189, type: !2282)
!2288 = !DILocation(line: 189, column: 25, scope: !2274)
!2289 = !DILocalVariable(name: "__tmp", scope: !2274, file: !2275, line: 197, type: !20)
!2290 = !DILocation(line: 197, column: 11, scope: !2274)
!2291 = !DILocation(line: 197, column: 19, scope: !2274)
!2292 = !DILocation(line: 198, column: 13, scope: !2274)
!2293 = !DILocation(line: 198, column: 7, scope: !2274)
!2294 = !DILocation(line: 198, column: 11, scope: !2274)
!2295 = !DILocation(line: 199, column: 13, scope: !2274)
!2296 = !DILocation(line: 199, column: 7, scope: !2274)
!2297 = !DILocation(line: 199, column: 11, scope: !2274)
!2298 = !DILocation(line: 200, column: 5, scope: !2274)
!2299 = distinct !DISubprogram(name: "move<std::thread::id &>", linkageName: "_ZSt4moveIRNSt6thread2idEEONSt16remove_referenceIT_E4typeEOS4_", scope: !17, file: !2275, line: 97, type: !2300, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !2305, retainedNodes: !164)
!2300 = !DISubroutineType(types: !2301)
!2301 = !{!2302, !2282}
!2302 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !2303, size: 64)
!2303 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2304, file: !317, line: 1620, baseType: !20)
!2304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "remove_reference<std::thread::id &>", scope: !17, file: !317, line: 1619, size: 8, flags: DIFlagTypePassByValue, elements: !164, templateParams: !2305, identifier: "_ZTSSt16remove_referenceIRNSt6thread2idEE")
!2305 = !{!2306}
!2306 = !DITemplateTypeParameter(name: "_Tp", type: !2282)
!2307 = !DILocalVariable(name: "__t", arg: 1, scope: !2299, file: !2275, line: 97, type: !2282)
!2308 = !DILocation(line: 97, column: 16, scope: !2299)
!2309 = !DILocation(line: 98, column: 71, scope: !2299)
!2310 = !DILocation(line: 98, column: 7, scope: !2299)
!2311 = distinct !DISubprogram(name: "forward<void (&)(int *)>", linkageName: "_ZSt7forwardIRFvPiEEOT_RNSt16remove_referenceIS3_E4typeE", scope: !17, file: !2275, line: 70, type: !2312, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !2317, retainedNodes: !164)
!2312 = !DISubroutineType(types: !2313)
!2313 = !{!2201, !2314}
!2314 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2315, size: 64)
!2315 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2316, file: !317, line: 1620, baseType: !461)
!2316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "remove_reference<void (&)(int *)>", scope: !17, file: !317, line: 1619, size: 8, flags: DIFlagTypePassByValue, elements: !164, templateParams: !2317, identifier: "_ZTSSt16remove_referenceIRFvPiEE")
!2317 = !{!2318}
!2318 = !DITemplateTypeParameter(name: "_Tp", type: !2201)
!2319 = !DILocalVariable(name: "__t", arg: 1, scope: !2311, file: !2275, line: 70, type: !2314)
!2320 = !DILocation(line: 70, column: 56, scope: !2311)
!2321 = !DILocation(line: 71, column: 33, scope: !2311)
!2322 = !DILocation(line: 71, column: 7, scope: !2311)
!2323 = distinct !DISubprogram(name: "forward<int *>", linkageName: "_ZSt7forwardIPiEOT_RNSt16remove_referenceIS1_E4typeE", scope: !17, file: !2275, line: 70, type: !2324, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !2329, retainedNodes: !164)
!2324 = !DISubroutineType(types: !2325)
!2325 = !{!464, !2326}
!2326 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2327, size: 64)
!2327 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2328, file: !317, line: 1616, baseType: !463)
!2328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "remove_reference<int *>", scope: !17, file: !317, line: 1615, size: 8, flags: DIFlagTypePassByValue, elements: !164, templateParams: !2329, identifier: "_ZTSSt16remove_referenceIPiE")
!2329 = !{!2330}
!2330 = !DITemplateTypeParameter(name: "_Tp", type: !463)
!2331 = !DILocalVariable(name: "__t", arg: 1, scope: !2323, file: !2275, line: 70, type: !2326)
!2332 = !DILocation(line: 70, column: 56, scope: !2323)
!2333 = !DILocation(line: 71, column: 33, scope: !2323)
!2334 = !DILocation(line: 71, column: 7, scope: !2323)
!2335 = distinct !DISubprogram(name: "_State_impl<void (&)(int *), int *>", linkageName: "_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPiES3_EEEEEC2IJRS4_S3_EEEDpOT_", scope: !477, file: !15, line: 239, type: !2336, scopeLine: 241, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !2339, declaration: !2338, retainedNodes: !164)
!2336 = !DISubroutineType(types: !2337)
!2337 = !{null, !671, !2201, !464}
!2338 = !DISubprogram(name: "_State_impl<void (&)(int *), int *>", scope: !477, file: !15, line: 239, type: !2336, scopeLine: 239, flags: DIFlagPrototyped, spFlags: 0, templateParams: !2339)
!2339 = !{!2340}
!2340 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Args", value: !2341)
!2341 = !{!2342, !469}
!2342 = !DITemplateTypeParameter(type: !2201)
!2343 = !DILocalVariable(name: "this", arg: 1, scope: !2335, type: !2344, flags: DIFlagArtificial | DIFlagObjectPointer)
!2344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!2345 = !DILocation(line: 0, scope: !2335)
!2346 = !DILocalVariable(name: "__args", arg: 2, scope: !2335, file: !15, line: 239, type: !2201)
!2347 = !DILocation(line: 239, column: 27, scope: !2335)
!2348 = !DILocalVariable(name: "__args", arg: 3, scope: !2335, file: !15, line: 239, type: !464)
!2349 = !DILocation(line: 241, column: 4, scope: !2335)
!2350 = !DILocation(line: 239, column: 4, scope: !2335)
!2351 = !DILocation(line: 240, column: 6, scope: !2335)
!2352 = !DILocation(line: 240, column: 34, scope: !2335)
!2353 = !DILocation(line: 240, column: 14, scope: !2335)
!2354 = !DILocation(line: 241, column: 6, scope: !2335)
!2355 = !DILocation(line: 241, column: 6, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2335, file: !15, line: 241, column: 4)
!2357 = distinct !DISubprogram(name: "unique_ptr<std::default_delete<std::thread::_State>, void>", linkageName: "_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EEC2IS3_vEEPS1_", scope: !83, file: !84, line: 317, type: !438, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !2359, declaration: !2358, retainedNodes: !164)
!2358 = !DISubprogram(name: "unique_ptr<std::default_delete<std::thread::_State>, void>", scope: !83, file: !84, line: 317, type: !438, scopeLine: 317, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0, templateParams: !2359)
!2359 = !{!2360, !2205}
!2360 = !DITemplateTypeParameter(name: "_Del", type: !106)
!2361 = !DILocalVariable(name: "this", arg: 1, scope: !2357, type: !2362, flags: DIFlagArtificial | DIFlagObjectPointer)
!2362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!2363 = !DILocation(line: 0, scope: !2357)
!2364 = !DILocalVariable(name: "__p", arg: 2, scope: !2357, file: !84, line: 317, type: !419)
!2365 = !DILocation(line: 317, column: 21, scope: !2357)
!2366 = !DILocation(line: 318, column: 4, scope: !2357)
!2367 = !DILocation(line: 318, column: 9, scope: !2357)
!2368 = !DILocation(line: 319, column: 11, scope: !2357)
!2369 = distinct !DISubprogram(name: "_M_thread_deps_never_run", linkageName: "_ZNSt6thread24_M_thread_deps_never_runEv", scope: !16, file: !15, line: 143, type: !41, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !40, retainedNodes: !164)
!2370 = !DILocation(line: 145, column: 7, scope: !2369)
!2371 = !DILocation(line: 146, column: 7, scope: !2369)
!2372 = !DILocation(line: 148, column: 5, scope: !2369)
!2373 = distinct !DISubprogram(name: "~unique_ptr", linkageName: "_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED2Ev", scope: !83, file: !84, line: 398, type: !392, scopeLine: 399, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !391, retainedNodes: !164)
!2374 = !DILocalVariable(name: "this", arg: 1, scope: !2373, type: !2362, flags: DIFlagArtificial | DIFlagObjectPointer)
!2375 = !DILocation(line: 0, scope: !2373)
!2376 = !DILocalVariable(name: "__ptr", scope: !2377, file: !84, line: 402, type: !355)
!2377 = distinct !DILexicalBlock(scope: !2373, file: !84, line: 399, column: 7)
!2378 = !DILocation(line: 402, column: 8, scope: !2377)
!2379 = !DILocation(line: 402, column: 16, scope: !2377)
!2380 = !DILocation(line: 402, column: 21, scope: !2377)
!2381 = !DILocation(line: 403, column: 6, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2377, file: !84, line: 403, column: 6)
!2383 = !DILocation(line: 403, column: 12, scope: !2382)
!2384 = !DILocation(line: 403, column: 6, scope: !2377)
!2385 = !DILocation(line: 404, column: 4, scope: !2382)
!2386 = !DILocation(line: 404, column: 28, scope: !2382)
!2387 = !DILocation(line: 404, column: 18, scope: !2382)
!2388 = !DILocation(line: 405, column: 2, scope: !2377)
!2389 = !DILocation(line: 405, column: 8, scope: !2377)
!2390 = !DILocation(line: 406, column: 7, scope: !2373)
!2391 = distinct !DISubprogram(name: "_State", linkageName: "_ZNSt6thread6_StateC2Ev", scope: !118, file: !15, line: 225, type: !127, scopeLine: 225, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !2392, retainedNodes: !164)
!2392 = !DISubprogram(name: "_State", scope: !118, type: !127, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!2393 = !DILocalVariable(name: "this", arg: 1, scope: !2391, type: !117, flags: DIFlagArtificial | DIFlagObjectPointer)
!2394 = !DILocation(line: 0, scope: !2391)
!2395 = !DILocation(line: 225, column: 12, scope: !2391)
!2396 = distinct !DISubprogram(name: "_Invoker<void (&)(int *), int *>", linkageName: "_ZNSt6thread8_InvokerISt5tupleIJPFvPiES2_EEEC2IJRS3_S2_EEEDpOT_", scope: !481, file: !15, line: 276, type: !2397, scopeLine: 278, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !2339, declaration: !2399, retainedNodes: !164)
!2397 = !DISubroutineType(types: !2398)
!2398 = !{null, !665, !2201, !464}
!2399 = !DISubprogram(name: "_Invoker<void (&)(int *), int *>", scope: !481, file: !15, line: 276, type: !2397, scopeLine: 276, flags: DIFlagExplicit | DIFlagPrototyped, spFlags: 0, templateParams: !2339)
!2400 = !DILocalVariable(name: "this", arg: 1, scope: !2396, type: !2401, flags: DIFlagArtificial | DIFlagObjectPointer)
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!2402 = !DILocation(line: 0, scope: !2396)
!2403 = !DILocalVariable(name: "__args", arg: 2, scope: !2396, file: !15, line: 276, type: !2201)
!2404 = !DILocation(line: 276, column: 24, scope: !2396)
!2405 = !DILocalVariable(name: "__args", arg: 3, scope: !2396, file: !15, line: 276, type: !464)
!2406 = !DILocation(line: 277, column: 6, scope: !2396)
!2407 = !DILocation(line: 277, column: 31, scope: !2396)
!2408 = !DILocation(line: 277, column: 11, scope: !2396)
!2409 = !DILocation(line: 278, column: 6, scope: !2396)
!2410 = distinct !DISubprogram(name: "~_State_impl", linkageName: "_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPiES3_EEEEED2Ev", scope: !477, file: !15, line: 234, type: !669, scopeLine: 234, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !2411, retainedNodes: !164)
!2411 = !DISubprogram(name: "~_State_impl", scope: !477, type: !669, containingType: !477, virtualIndex: 0, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!2412 = !DILocalVariable(name: "this", arg: 1, scope: !2410, type: !2344, flags: DIFlagArtificial | DIFlagObjectPointer)
!2413 = !DILocation(line: 0, scope: !2410)
!2414 = !DILocation(line: 234, column: 14, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2410, file: !15, line: 234, column: 14)
!2416 = !DILocation(line: 234, column: 14, scope: !2410)
!2417 = distinct !DISubprogram(name: "~_State_impl", linkageName: "_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPiES3_EEEEED0Ev", scope: !477, file: !15, line: 234, type: !669, scopeLine: 234, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !2411, retainedNodes: !164)
!2418 = !DILocalVariable(name: "this", arg: 1, scope: !2417, type: !2344, flags: DIFlagArtificial | DIFlagObjectPointer)
!2419 = !DILocation(line: 0, scope: !2417)
!2420 = !DILocation(line: 234, column: 14, scope: !2417)
!2421 = distinct !DISubprogram(name: "_M_run", linkageName: "_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPiES3_EEEEE6_M_runEv", scope: !477, file: !15, line: 244, type: !669, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !668, retainedNodes: !164)
!2422 = !DILocalVariable(name: "this", arg: 1, scope: !2421, type: !2344, flags: DIFlagArtificial | DIFlagObjectPointer)
!2423 = !DILocation(line: 0, scope: !2421)
!2424 = !DILocation(line: 244, column: 13, scope: !2421)
!2425 = !DILocation(line: 244, column: 24, scope: !2421)
!2426 = distinct !DISubprogram(name: "tuple<void (&)(int *), int *, true>", linkageName: "_ZNSt5tupleIJPFvPiES0_EEC2IRS1_S0_Lb1EEEOT_OT0_", scope: !484, file: !94, line: 1338, type: !2427, scopeLine: 1340, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !2430, declaration: !2429, retainedNodes: !164)
!2427 = !DISubroutineType(types: !2428)
!2428 = !{null, !640, !2201, !464}
!2429 = !DISubprogram(name: "tuple<void (&)(int *), int *, true>", scope: !484, file: !94, line: 1338, type: !2427, scopeLine: 1338, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0, templateParams: !2430)
!2430 = !{!2431, !2432, !2433}
!2431 = !DITemplateTypeParameter(name: "_U1", type: !2201)
!2432 = !DITemplateTypeParameter(name: "_U2", type: !463)
!2433 = !DITemplateValueParameter(type: !66, defaulted: true, value: i8 1)
!2434 = !DILocalVariable(name: "this", arg: 1, scope: !2426, type: !2435, flags: DIFlagArtificial | DIFlagObjectPointer)
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!2436 = !DILocation(line: 0, scope: !2426)
!2437 = !DILocalVariable(name: "__a1", arg: 2, scope: !2426, file: !94, line: 1338, type: !2201)
!2438 = !DILocation(line: 1338, column: 14, scope: !2426)
!2439 = !DILocalVariable(name: "__a2", arg: 3, scope: !2426, file: !94, line: 1338, type: !464)
!2440 = !DILocation(line: 1338, column: 26, scope: !2426)
!2441 = !DILocation(line: 1340, column: 65, scope: !2426)
!2442 = !DILocation(line: 1340, column: 33, scope: !2426)
!2443 = !DILocation(line: 1340, column: 15, scope: !2426)
!2444 = !DILocation(line: 1340, column: 58, scope: !2426)
!2445 = !DILocation(line: 1340, column: 40, scope: !2426)
!2446 = !DILocation(line: 1340, column: 4, scope: !2426)
!2447 = !DILocation(line: 1340, column: 67, scope: !2426)
!2448 = distinct !DISubprogram(name: "_Tuple_impl<void (&)(int *), int *, void>", linkageName: "_ZNSt11_Tuple_implILm0EJPFvPiES0_EEC2IRS1_JS0_EvEEOT_DpOT0_", scope: !487, file: !94, line: 291, type: !2449, scopeLine: 294, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !2452, declaration: !2451, retainedNodes: !164)
!2449 = !DISubroutineType(types: !2450)
!2450 = !{null, !615, !2201, !464}
!2451 = !DISubprogram(name: "_Tuple_impl<void (&)(int *), int *, void>", scope: !487, file: !94, line: 291, type: !2449, scopeLine: 291, flags: DIFlagExplicit | DIFlagPrototyped, spFlags: 0, templateParams: !2452)
!2452 = !{!2453, !2454, !2205}
!2453 = !DITemplateTypeParameter(name: "_UHead", type: !2201)
!2454 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_UTail", value: !468)
!2455 = !DILocalVariable(name: "this", arg: 1, scope: !2448, type: !2456, flags: DIFlagArtificial | DIFlagObjectPointer)
!2456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!2457 = !DILocation(line: 0, scope: !2448)
!2458 = !DILocalVariable(name: "__head", arg: 2, scope: !2448, file: !94, line: 291, type: !2201)
!2459 = !DILocation(line: 291, column: 23, scope: !2448)
!2460 = !DILocalVariable(name: "__tail", arg: 3, scope: !2448, file: !94, line: 291, type: !464)
!2461 = !DILocation(line: 291, column: 43, scope: !2448)
!2462 = !DILocation(line: 294, column: 2, scope: !2448)
!2463 = !DILocation(line: 292, column: 36, scope: !2448)
!2464 = !DILocation(line: 292, column: 15, scope: !2448)
!2465 = !DILocation(line: 292, column: 4, scope: !2448)
!2466 = !DILocation(line: 293, column: 31, scope: !2448)
!2467 = !DILocation(line: 293, column: 10, scope: !2448)
!2468 = !DILocation(line: 293, column: 4, scope: !2448)
!2469 = !DILocation(line: 294, column: 4, scope: !2448)
!2470 = distinct !DISubprogram(name: "_Tuple_impl<int *>", linkageName: "_ZNSt11_Tuple_implILm1EJPiEEC2IS0_EEOT_", scope: !490, file: !94, line: 513, type: !2471, scopeLine: 515, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !2474, declaration: !2473, retainedNodes: !164)
!2471 = !DISubroutineType(types: !2472)
!2472 = !{null, !539, !464}
!2473 = !DISubprogram(name: "_Tuple_impl<int *>", scope: !490, file: !94, line: 513, type: !2471, scopeLine: 513, flags: DIFlagExplicit | DIFlagPrototyped, spFlags: 0, templateParams: !2474)
!2474 = !{!2475}
!2475 = !DITemplateTypeParameter(name: "_UHead", type: !463)
!2476 = !DILocalVariable(name: "this", arg: 1, scope: !2470, type: !2477, flags: DIFlagArtificial | DIFlagObjectPointer)
!2477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!2478 = !DILocation(line: 0, scope: !2470)
!2479 = !DILocalVariable(name: "__head", arg: 2, scope: !2470, file: !94, line: 513, type: !464)
!2480 = !DILocation(line: 513, column: 23, scope: !2470)
!2481 = !DILocation(line: 515, column: 2, scope: !2470)
!2482 = !DILocation(line: 514, column: 31, scope: !2470)
!2483 = !DILocation(line: 514, column: 10, scope: !2470)
!2484 = !DILocation(line: 514, column: 4, scope: !2470)
!2485 = !DILocation(line: 515, column: 4, scope: !2470)
!2486 = distinct !DISubprogram(name: "_Head_base", linkageName: "_ZNSt10_Head_baseILm0EPFvPiELb0EEC2ERKS2_", scope: !559, file: !94, line: 193, type: !567, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !566, retainedNodes: !164)
!2487 = !DILocalVariable(name: "this", arg: 1, scope: !2486, type: !2488, flags: DIFlagArtificial | DIFlagObjectPointer)
!2488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!2489 = !DILocation(line: 0, scope: !2486)
!2490 = !DILocalVariable(name: "__h", arg: 2, scope: !2486, file: !94, line: 193, type: !569)
!2491 = !DILocation(line: 193, column: 41, scope: !2486)
!2492 = !DILocation(line: 194, column: 9, scope: !2486)
!2493 = !DILocation(line: 194, column: 22, scope: !2486)
!2494 = !DILocation(line: 194, column: 29, scope: !2486)
!2495 = distinct !DISubprogram(name: "_Head_base<int *>", linkageName: "_ZNSt10_Head_baseILm1EPiLb0EEC2IS0_EEOT_", scope: !493, file: !94, line: 200, type: !2496, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !2474, declaration: !2498, retainedNodes: !164)
!2496 = !DISubroutineType(types: !2497)
!2497 = !{null, !499, !464}
!2498 = !DISubprogram(name: "_Head_base<int *>", scope: !493, file: !94, line: 200, type: !2496, scopeLine: 200, flags: DIFlagPrototyped, spFlags: 0, templateParams: !2474)
!2499 = !DILocalVariable(name: "this", arg: 1, scope: !2495, type: !2500, flags: DIFlagArtificial | DIFlagObjectPointer)
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!2501 = !DILocation(line: 0, scope: !2495)
!2502 = !DILocalVariable(name: "__h", arg: 2, scope: !2495, file: !94, line: 200, type: !464)
!2503 = !DILocation(line: 200, column: 39, scope: !2495)
!2504 = !DILocation(line: 201, column: 4, scope: !2495)
!2505 = !DILocation(line: 201, column: 38, scope: !2495)
!2506 = !DILocation(line: 201, column: 17, scope: !2495)
!2507 = !DILocation(line: 201, column: 46, scope: !2495)
!2508 = distinct !DISubprogram(name: "operator()", linkageName: "_ZNSt6thread8_InvokerISt5tupleIJPFvPiES2_EEEclEv", scope: !481, file: !15, line: 295, type: !663, scopeLine: 296, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !662, retainedNodes: !164)
!2509 = !DILocalVariable(name: "this", arg: 1, scope: !2508, type: !2401, flags: DIFlagArtificial | DIFlagObjectPointer)
!2510 = !DILocation(line: 0, scope: !2508)
!2511 = !DILocation(line: 299, column: 11, scope: !2508)
!2512 = !DILocation(line: 299, column: 4, scope: !2508)
!2513 = distinct !DISubprogram(name: "_M_invoke<0UL, 1UL>", linkageName: "_ZNSt6thread8_InvokerISt5tupleIJPFvPiES2_EEE9_M_invokeIJLm0ELm1EEEEvSt12_Index_tupleIJXspT_EEE", scope: !481, file: !15, line: 291, type: !2514, scopeLine: 292, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !2524, declaration: !2523, retainedNodes: !164)
!2514 = !DISubroutineType(types: !2515)
!2515 = !{!455, !665, !2516}
!2516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Index_tuple<0UL, 1UL>", scope: !17, file: !2517, line: 140, size: 8, flags: DIFlagTypePassByValue, elements: !164, templateParams: !2518, identifier: "_ZTSSt12_Index_tupleIJLm0ELm1EEE")
!2517 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/utility.h", directory: "")
!2518 = !{!2519}
!2519 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Indexes", value: !2520)
!2520 = !{!2521, !2522}
!2521 = !DITemplateValueParameter(type: !28, value: i64 0)
!2522 = !DITemplateValueParameter(type: !28, value: i64 1)
!2523 = !DISubprogram(name: "_M_invoke<0UL, 1UL>", linkageName: "_ZNSt6thread8_InvokerISt5tupleIJPFvPiES2_EEE9_M_invokeIJLm0ELm1EEEEvSt12_Index_tupleIJXspT_EEE", scope: !481, file: !15, line: 291, type: !2514, scopeLine: 291, flags: DIFlagPrototyped, spFlags: 0, templateParams: !2524)
!2524 = !{!2525}
!2525 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Ind", value: !2520)
!2526 = !DILocalVariable(name: "this", arg: 1, scope: !2513, type: !2401, flags: DIFlagArtificial | DIFlagObjectPointer)
!2527 = !DILocation(line: 0, scope: !2513)
!2528 = !DILocalVariable(arg: 2, scope: !2513, file: !15, line: 291, type: !2516)
!2529 = !DILocation(line: 291, column: 35, scope: !2513)
!2530 = !DILocation(line: 292, column: 52, scope: !2513)
!2531 = !DILocation(line: 292, column: 42, scope: !2513)
!2532 = !DILocation(line: 292, column: 27, scope: !2513)
!2533 = !DILocation(line: 292, column: 13, scope: !2513)
!2534 = !DILocation(line: 292, column: 6, scope: !2513)
!2535 = !DILocalVariable(name: "__fn", arg: 1, scope: !452, file: !451, line: 90, type: !459)
!2536 = !DILocation(line: 90, column: 26, scope: !452)
!2537 = !DILocalVariable(name: "__args", arg: 2, scope: !452, file: !451, line: 90, type: !464)
!2538 = !DILocation(line: 90, column: 43, scope: !452)
!2539 = !DILocation(line: 96, column: 74, scope: !452)
!2540 = !DILocation(line: 96, column: 50, scope: !452)
!2541 = !DILocation(line: 97, column: 26, scope: !452)
!2542 = !DILocation(line: 97, column: 6, scope: !452)
!2543 = !DILocation(line: 96, column: 14, scope: !452)
!2544 = !DILocation(line: 96, column: 7, scope: !452)
!2545 = distinct !DISubprogram(name: "get<0UL, void (*)(int *), int *>", linkageName: "_ZSt3getILm0EJPFvPiES0_EEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOS7_", scope: !17, file: !94, line: 1801, type: !2546, scopeLine: 1802, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !2560, retainedNodes: !164)
!2546 = !DISubroutineType(types: !2547)
!2547 = !{!2548, !646}
!2548 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !2549, size: 64)
!2549 = !DIDerivedType(tag: DW_TAG_typedef, name: "__tuple_element_t<0UL, std::tuple<void (*)(int *), int *> >", scope: !17, file: !2517, line: 84, baseType: !2550)
!2550 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2551, file: !94, line: 1768, baseType: !2555)
!2551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tuple_element<0UL, std::tuple<void (*)(int *), int *> >", scope: !17, file: !94, line: 1764, size: 8, flags: DIFlagTypePassByValue, elements: !164, templateParams: !2552, identifier: "_ZTSSt13tuple_elementILm0ESt5tupleIJPFvPiES1_EEE")
!2552 = !{!2553, !2554}
!2553 = !DITemplateValueParameter(name: "__i", type: !28, value: i64 0)
!2554 = !DITemplateTypeParameter(name: "_Tp", type: !484)
!2555 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2556, file: !2517, line: 255, baseType: !460)
!2556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Nth_type<0UL, void (*)(int *), int *>", scope: !17, file: !2517, line: 254, size: 8, flags: DIFlagTypePassByValue, elements: !164, templateParams: !2557, identifier: "_ZTSSt9_Nth_typeILm0EJPFvPiES0_EE")
!2557 = !{!2558, !2559}
!2558 = !DITemplateValueParameter(name: "_Np", type: !28, value: i64 0)
!2559 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Types", value: !634)
!2560 = !{!2553, !633}
!2561 = !DILocalVariable(name: "__t", arg: 1, scope: !2545, file: !94, line: 1801, type: !646)
!2562 = !DILocation(line: 1801, column: 31, scope: !2545)
!2563 = !DILocation(line: 1804, column: 66, scope: !2545)
!2564 = !DILocation(line: 1804, column: 43, scope: !2545)
!2565 = !DILocation(line: 1804, column: 14, scope: !2545)
!2566 = !DILocation(line: 1804, column: 7, scope: !2545)
!2567 = distinct !DISubprogram(name: "move<std::tuple<void (*)(int *), int *> &>", linkageName: "_ZSt4moveIRSt5tupleIJPFvPiES1_EEEONSt16remove_referenceIT_E4typeEOS7_", scope: !17, file: !2275, line: 97, type: !2568, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !2573, retainedNodes: !164)
!2568 = !DISubroutineType(types: !2569)
!2569 = !{!2570, !650}
!2570 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !2571, size: 64)
!2571 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2572, file: !317, line: 1620, baseType: !484)
!2572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "remove_reference<std::tuple<void (*)(int *), int *> &>", scope: !17, file: !317, line: 1619, size: 8, flags: DIFlagTypePassByValue, elements: !164, templateParams: !2573, identifier: "_ZTSSt16remove_referenceIRSt5tupleIJPFvPiES1_EEE")
!2573 = !{!2574}
!2574 = !DITemplateTypeParameter(name: "_Tp", type: !650)
!2575 = !DILocalVariable(name: "__t", arg: 1, scope: !2567, file: !2275, line: 97, type: !650)
!2576 = !DILocation(line: 97, column: 16, scope: !2567)
!2577 = !DILocation(line: 98, column: 71, scope: !2567)
!2578 = !DILocation(line: 98, column: 7, scope: !2567)
!2579 = distinct !DISubprogram(name: "get<1UL, void (*)(int *), int *>", linkageName: "_ZSt3getILm1EJPFvPiES0_EEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOS7_", scope: !17, file: !94, line: 1801, type: !2580, scopeLine: 1802, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !2592, retainedNodes: !164)
!2580 = !DISubroutineType(types: !2581)
!2581 = !{!2582, !646}
!2582 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !2583, size: 64)
!2583 = !DIDerivedType(tag: DW_TAG_typedef, name: "__tuple_element_t<1UL, std::tuple<void (*)(int *), int *> >", scope: !17, file: !2517, line: 84, baseType: !2584)
!2584 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2585, file: !94, line: 1768, baseType: !2588)
!2585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tuple_element<1UL, std::tuple<void (*)(int *), int *> >", scope: !17, file: !94, line: 1764, size: 8, flags: DIFlagTypePassByValue, elements: !164, templateParams: !2586, identifier: "_ZTSSt13tuple_elementILm1ESt5tupleIJPFvPiES1_EEE")
!2586 = !{!2587, !2554}
!2587 = !DITemplateValueParameter(name: "__i", type: !28, value: i64 1)
!2588 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2589, file: !2517, line: 237, baseType: !463)
!2589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Nth_type<1UL, void (*)(int *), int *>", scope: !17, file: !2517, line: 236, size: 8, flags: DIFlagTypePassByValue, elements: !164, templateParams: !2590, identifier: "_ZTSSt9_Nth_typeILm1EJPFvPiES0_EE")
!2590 = !{!2591, !2559}
!2591 = !DITemplateValueParameter(name: "_Np", type: !28, value: i64 1)
!2592 = !{!2587, !633}
!2593 = !DILocalVariable(name: "__t", arg: 1, scope: !2579, file: !94, line: 1801, type: !646)
!2594 = !DILocation(line: 1801, column: 31, scope: !2579)
!2595 = !DILocation(line: 1804, column: 66, scope: !2579)
!2596 = !DILocation(line: 1804, column: 43, scope: !2579)
!2597 = !DILocation(line: 1804, column: 14, scope: !2579)
!2598 = !DILocation(line: 1804, column: 7, scope: !2579)
!2599 = distinct !DISubprogram(name: "__invoke_impl<void, void (*)(int *), int *>", linkageName: "_ZSt13__invoke_implIvPFvPiEJS0_EET_St14__invoke_otherOT0_DpOT1_", scope: !17, file: !451, line: 60, type: !2600, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !2602, retainedNodes: !164)
!2600 = !DISubroutineType(types: !2601)
!2601 = !{null, !476, !459, !464}
!2602 = !{!2603, !2604, !467}
!2603 = !DITemplateTypeParameter(name: "_Res", type: null)
!2604 = !DITemplateTypeParameter(name: "_Fn", type: !460)
!2605 = !DILocalVariable(arg: 1, scope: !2599, file: !451, line: 60, type: !476)
!2606 = !DILocation(line: 60, column: 33, scope: !2599)
!2607 = !DILocalVariable(name: "__f", arg: 2, scope: !2599, file: !451, line: 60, type: !459)
!2608 = !DILocation(line: 60, column: 41, scope: !2599)
!2609 = !DILocalVariable(name: "__args", arg: 3, scope: !2599, file: !451, line: 60, type: !464)
!2610 = !DILocation(line: 60, column: 57, scope: !2599)
!2611 = !DILocation(line: 61, column: 32, scope: !2599)
!2612 = !DILocation(line: 61, column: 14, scope: !2599)
!2613 = !DILocation(line: 61, column: 57, scope: !2599)
!2614 = !DILocation(line: 61, column: 37, scope: !2599)
!2615 = !DILocation(line: 61, column: 7, scope: !2599)
!2616 = distinct !DISubprogram(name: "forward<void (*)(int *)>", linkageName: "_ZSt7forwardIPFvPiEEOT_RNSt16remove_referenceIS3_E4typeE", scope: !17, file: !2275, line: 70, type: !2617, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !2622, retainedNodes: !164)
!2617 = !DISubroutineType(types: !2618)
!2618 = !{!459, !2619}
!2619 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2620, size: 64)
!2620 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2621, file: !317, line: 1616, baseType: !460)
!2621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "remove_reference<void (*)(int *)>", scope: !17, file: !317, line: 1615, size: 8, flags: DIFlagTypePassByValue, elements: !164, templateParams: !2622, identifier: "_ZTSSt16remove_referenceIPFvPiEE")
!2622 = !{!2623}
!2623 = !DITemplateTypeParameter(name: "_Tp", type: !460)
!2624 = !DILocalVariable(name: "__t", arg: 1, scope: !2616, file: !2275, line: 70, type: !2619)
!2625 = !DILocation(line: 70, column: 56, scope: !2616)
!2626 = !DILocation(line: 71, column: 33, scope: !2616)
!2627 = !DILocation(line: 71, column: 7, scope: !2616)
!2628 = distinct !DISubprogram(name: "__get_helper<0UL, void (*)(int *), int *>", linkageName: "_ZSt12__get_helperILm0EPFvPiEJS0_EERT0_RSt11_Tuple_implIXT_EJS3_DpT1_EE", scope: !17, file: !94, line: 1773, type: !594, scopeLine: 1774, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !2629, retainedNodes: !164)
!2629 = !{!2553, !592, !2630}
!2630 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Tail", value: !468)
!2631 = !DILocalVariable(name: "__t", arg: 1, scope: !2628, file: !94, line: 1773, type: !596)
!2632 = !DILocation(line: 1773, column: 53, scope: !2628)
!2633 = !DILocation(line: 1774, column: 57, scope: !2628)
!2634 = !DILocation(line: 1774, column: 14, scope: !2628)
!2635 = !DILocation(line: 1774, column: 7, scope: !2628)
!2636 = distinct !DISubprogram(name: "_M_head", linkageName: "_ZNSt11_Tuple_implILm0EJPFvPiES0_EE7_M_headERS3_", scope: !487, file: !94, line: 269, type: !594, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !593, retainedNodes: !164)
!2637 = !DILocalVariable(name: "__t", arg: 1, scope: !2636, file: !94, line: 269, type: !596)
!2638 = !DILocation(line: 269, column: 28, scope: !2636)
!2639 = !DILocation(line: 269, column: 66, scope: !2636)
!2640 = !DILocation(line: 269, column: 51, scope: !2636)
!2641 = !DILocation(line: 269, column: 44, scope: !2636)
!2642 = distinct !DISubprogram(name: "_M_head", linkageName: "_ZNSt10_Head_baseILm0EPFvPiELb0EE7_M_headERS3_", scope: !559, file: !94, line: 234, type: !584, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !583, retainedNodes: !164)
!2643 = !DILocalVariable(name: "__b", arg: 1, scope: !2642, file: !94, line: 234, type: !587)
!2644 = !DILocation(line: 234, column: 27, scope: !2642)
!2645 = !DILocation(line: 234, column: 50, scope: !2642)
!2646 = !DILocation(line: 234, column: 54, scope: !2642)
!2647 = !DILocation(line: 234, column: 43, scope: !2642)
!2648 = distinct !DISubprogram(name: "__get_helper<1UL, int *>", linkageName: "_ZSt12__get_helperILm1EPiJEERT0_RSt11_Tuple_implIXT_EJS1_DpT1_EE", scope: !17, file: !94, line: 1773, type: !528, scopeLine: 1774, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !2649, retainedNodes: !164)
!2649 = !{!2587, !526, !2650}
!2650 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Tail", value: !164)
!2651 = !DILocalVariable(name: "__t", arg: 1, scope: !2648, file: !94, line: 1773, type: !530)
!2652 = !DILocation(line: 1773, column: 53, scope: !2648)
!2653 = !DILocation(line: 1774, column: 57, scope: !2648)
!2654 = !DILocation(line: 1774, column: 14, scope: !2648)
!2655 = !DILocation(line: 1774, column: 7, scope: !2648)
!2656 = distinct !DISubprogram(name: "_M_head", linkageName: "_ZNSt11_Tuple_implILm1EJPiEE7_M_headERS1_", scope: !490, file: !94, line: 497, type: !528, scopeLine: 497, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !527, retainedNodes: !164)
!2657 = !DILocalVariable(name: "__t", arg: 1, scope: !2656, file: !94, line: 497, type: !530)
!2658 = !DILocation(line: 497, column: 28, scope: !2656)
!2659 = !DILocation(line: 497, column: 66, scope: !2656)
!2660 = !DILocation(line: 497, column: 51, scope: !2656)
!2661 = !DILocation(line: 497, column: 44, scope: !2656)
!2662 = distinct !DISubprogram(name: "_M_head", linkageName: "_ZNSt10_Head_baseILm1EPiLb0EE7_M_headERS1_", scope: !493, file: !94, line: 234, type: !518, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !517, retainedNodes: !164)
!2663 = !DILocalVariable(name: "__b", arg: 1, scope: !2662, file: !94, line: 234, type: !521)
!2664 = !DILocation(line: 234, column: 27, scope: !2662)
!2665 = !DILocation(line: 234, column: 50, scope: !2662)
!2666 = !DILocation(line: 234, column: 54, scope: !2662)
!2667 = !DILocation(line: 234, column: 43, scope: !2662)
!2668 = distinct !DISubprogram(name: "__uniq_ptr_impl", linkageName: "_ZNSt15__uniq_ptr_dataINSt6thread6_StateESt14default_deleteIS1_ELb1ELb1EECI2St15__uniq_ptr_implIS1_S3_EEPS1_", scope: !87, file: !84, line: 241, type: !2669, scopeLine: 241, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !2671, retainedNodes: !164)
!2669 = !DISubroutineType(types: !2670)
!2670 = !{null, !379, !337}
!2671 = !DISubprogram(name: "__uniq_ptr_impl", scope: !87, type: !2669, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!2672 = !DILocalVariable(name: "this", arg: 1, scope: !2668, type: !2673, flags: DIFlagArtificial | DIFlagObjectPointer)
!2673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!2674 = !DILocation(line: 0, scope: !2668)
!2675 = !DILocalVariable(arg: 2, scope: !2668, type: !337, flags: DIFlagArtificial)
!2676 = !DILocation(line: 241, column: 40, scope: !2668)
!2677 = distinct !DISubprogram(name: "__uniq_ptr_impl", linkageName: "_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EEC2EPS1_", scope: !90, file: !84, line: 176, type: !335, scopeLine: 176, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !334, retainedNodes: !164)
!2678 = !DILocalVariable(name: "this", arg: 1, scope: !2677, type: !2679, flags: DIFlagArtificial | DIFlagObjectPointer)
!2679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!2680 = !DILocation(line: 0, scope: !2677)
!2681 = !DILocalVariable(name: "__p", arg: 2, scope: !2677, file: !84, line: 176, type: !337)
!2682 = !DILocation(line: 176, column: 31, scope: !2677)
!2683 = !DILocation(line: 176, column: 38, scope: !2677)
!2684 = !DILocation(line: 176, column: 58, scope: !2685)
!2685 = distinct !DILexicalBlock(scope: !2677, file: !84, line: 176, column: 45)
!2686 = !DILocation(line: 176, column: 47, scope: !2685)
!2687 = !DILocation(line: 176, column: 56, scope: !2685)
!2688 = !DILocation(line: 176, column: 63, scope: !2677)
!2689 = distinct !DISubprogram(name: "tuple<true, true>", linkageName: "_ZNSt5tupleIJPNSt6thread6_StateESt14default_deleteIS1_EEEC2ILb1ELb1EEEv", scope: !93, file: !94, line: 1310, type: !2690, scopeLine: 1312, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !2693, declaration: !2692, retainedNodes: !164)
!2690 = !DISubroutineType(types: !2691)
!2691 = !{null, !305}
!2692 = !DISubprogram(name: "tuple<true, true>", scope: !93, file: !94, line: 1310, type: !2690, scopeLine: 1310, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0, templateParams: !2693)
!2693 = !{!2694, !2433}
!2694 = !DITemplateValueParameter(name: "_Dummy", type: !66, defaulted: true, value: i8 1)
!2695 = !DILocalVariable(name: "this", arg: 1, scope: !2689, type: !2696, flags: DIFlagArtificial | DIFlagObjectPointer)
!2696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!2697 = !DILocation(line: 0, scope: !2689)
!2698 = !DILocation(line: 1312, column: 17, scope: !2689)
!2699 = !DILocation(line: 1312, column: 4, scope: !2689)
!2700 = !DILocation(line: 1312, column: 19, scope: !2689)
!2701 = distinct !DISubprogram(name: "_M_ptr", linkageName: "_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE6_M_ptrEv", scope: !90, file: !84, line: 197, type: !353, scopeLine: 197, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !352, retainedNodes: !164)
!2702 = !DILocalVariable(name: "this", arg: 1, scope: !2701, type: !2679, flags: DIFlagArtificial | DIFlagObjectPointer)
!2703 = !DILocation(line: 0, scope: !2701)
!2704 = !DILocation(line: 197, column: 57, scope: !2701)
!2705 = !DILocation(line: 197, column: 45, scope: !2701)
!2706 = !DILocation(line: 197, column: 38, scope: !2701)
!2707 = distinct !DISubprogram(name: "_Tuple_impl", linkageName: "_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEEC2Ev", scope: !97, file: !94, line: 280, type: !276, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !275, retainedNodes: !164)
!2708 = !DILocalVariable(name: "this", arg: 1, scope: !2707, type: !2709, flags: DIFlagArtificial | DIFlagObjectPointer)
!2709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!2710 = !DILocation(line: 0, scope: !2707)
!2711 = !DILocation(line: 281, column: 31, scope: !2707)
!2712 = !DILocation(line: 281, column: 9, scope: !2707)
!2713 = !DILocation(line: 281, column: 23, scope: !2707)
!2714 = !DILocation(line: 281, column: 33, scope: !2707)
!2715 = distinct !DISubprogram(name: "_Tuple_impl", linkageName: "_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEEC2Ev", scope: !100, file: !94, line: 503, type: !196, scopeLine: 504, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !195, retainedNodes: !164)
!2716 = !DILocalVariable(name: "this", arg: 1, scope: !2715, type: !2717, flags: DIFlagArtificial | DIFlagObjectPointer)
!2717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!2718 = !DILocation(line: 0, scope: !2715)
!2719 = !DILocation(line: 504, column: 17, scope: !2715)
!2720 = !DILocation(line: 504, column: 9, scope: !2715)
!2721 = !DILocation(line: 504, column: 19, scope: !2715)
!2722 = distinct !DISubprogram(name: "_Head_base", linkageName: "_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EEC2Ev", scope: !220, file: !94, line: 190, type: !224, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !223, retainedNodes: !164)
!2723 = !DILocalVariable(name: "this", arg: 1, scope: !2722, type: !2724, flags: DIFlagArtificial | DIFlagObjectPointer)
!2724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!2725 = !DILocation(line: 0, scope: !2722)
!2726 = !DILocation(line: 191, column: 9, scope: !2722)
!2727 = !DILocation(line: 191, column: 26, scope: !2722)
!2728 = distinct !DISubprogram(name: "_Head_base", linkageName: "_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EEC2Ev", scope: !103, file: !94, line: 81, type: !134, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !133, retainedNodes: !164)
!2729 = !DILocalVariable(name: "this", arg: 1, scope: !2728, type: !2730, flags: DIFlagArtificial | DIFlagObjectPointer)
!2730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!2731 = !DILocation(line: 0, scope: !2728)
!2732 = !DILocation(line: 82, column: 9, scope: !2728)
!2733 = !DILocation(line: 82, column: 26, scope: !2728)
!2734 = distinct !DISubprogram(name: "get<0UL, std::thread::_State *, std::default_delete<std::thread::_State> >", linkageName: "_ZSt3getILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_", scope: !17, file: !94, line: 1789, type: !2735, scopeLine: 1790, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !2747, retainedNodes: !164)
!2735 = !DISubroutineType(types: !2736)
!2736 = !{!2737, !315}
!2737 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2738, size: 64)
!2738 = !DIDerivedType(tag: DW_TAG_typedef, name: "__tuple_element_t<0UL, std::tuple<std::thread::_State *, std::default_delete<std::thread::_State> > >", scope: !17, file: !2517, line: 84, baseType: !2739)
!2739 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2740, file: !94, line: 1768, baseType: !2743)
!2740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tuple_element<0UL, std::tuple<std::thread::_State *, std::default_delete<std::thread::_State> > >", scope: !17, file: !94, line: 1764, size: 8, flags: DIFlagTypePassByValue, elements: !164, templateParams: !2741, identifier: "_ZTSSt13tuple_elementILm0ESt5tupleIJPNSt6thread6_StateESt14default_deleteIS2_EEEE")
!2741 = !{!2553, !2742}
!2742 = !DITemplateTypeParameter(name: "_Tp", type: !93)
!2743 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2744, file: !2517, line: 255, baseType: !117)
!2744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Nth_type<0UL, std::thread::_State *, std::default_delete<std::thread::_State> >", scope: !17, file: !2517, line: 254, size: 8, flags: DIFlagTypePassByValue, elements: !164, templateParams: !2745, identifier: "_ZTSSt9_Nth_typeILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEE")
!2745 = !{!2558, !2746}
!2746 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Types", value: !297)
!2747 = !{!2553, !296}
!2748 = !DILocalVariable(name: "__t", arg: 1, scope: !2734, file: !94, line: 1789, type: !315)
!2749 = !DILocation(line: 1789, column: 30, scope: !2734)
!2750 = !DILocation(line: 1790, column: 37, scope: !2734)
!2751 = !DILocation(line: 1790, column: 14, scope: !2734)
!2752 = !DILocation(line: 1790, column: 7, scope: !2734)
!2753 = distinct !DISubprogram(name: "__get_helper<0UL, std::thread::_State *, std::default_delete<std::thread::_State> >", linkageName: "_ZSt12__get_helperILm0EPNSt6thread6_StateEJSt14default_deleteIS1_EEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE", scope: !17, file: !94, line: 1773, type: !257, scopeLine: 1774, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !2754, retainedNodes: !164)
!2754 = !{!2553, !254, !2755}
!2755 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Tail", value: !217)
!2756 = !DILocalVariable(name: "__t", arg: 1, scope: !2753, file: !94, line: 1773, type: !259)
!2757 = !DILocation(line: 1773, column: 53, scope: !2753)
!2758 = !DILocation(line: 1774, column: 57, scope: !2753)
!2759 = !DILocation(line: 1774, column: 14, scope: !2753)
!2760 = !DILocation(line: 1774, column: 7, scope: !2753)
!2761 = distinct !DISubprogram(name: "_M_head", linkageName: "_ZNSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEE7_M_headERS5_", scope: !97, file: !94, line: 269, type: !257, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !256, retainedNodes: !164)
!2762 = !DILocalVariable(name: "__t", arg: 1, scope: !2761, file: !94, line: 269, type: !259)
!2763 = !DILocation(line: 269, column: 28, scope: !2761)
!2764 = !DILocation(line: 269, column: 66, scope: !2761)
!2765 = !DILocation(line: 269, column: 51, scope: !2761)
!2766 = !DILocation(line: 269, column: 44, scope: !2761)
!2767 = distinct !DISubprogram(name: "_M_head", linkageName: "_ZNSt10_Head_baseILm0EPNSt6thread6_StateELb0EE7_M_headERS3_", scope: !220, file: !94, line: 234, type: !245, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !244, retainedNodes: !164)
!2768 = !DILocalVariable(name: "__b", arg: 1, scope: !2767, file: !94, line: 234, type: !248)
!2769 = !DILocation(line: 234, column: 27, scope: !2767)
!2770 = !DILocation(line: 234, column: 50, scope: !2767)
!2771 = !DILocation(line: 234, column: 54, scope: !2767)
!2772 = !DILocation(line: 234, column: 43, scope: !2767)
!2773 = distinct !DISubprogram(name: "get_deleter", linkageName: "_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EE11get_deleterEv", scope: !83, file: !84, line: 475, type: !422, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !421, retainedNodes: !164)
!2774 = !DILocalVariable(name: "this", arg: 1, scope: !2773, type: !2362, flags: DIFlagArtificial | DIFlagObjectPointer)
!2775 = !DILocation(line: 0, scope: !2773)
!2776 = !DILocation(line: 476, column: 16, scope: !2773)
!2777 = !DILocation(line: 476, column: 21, scope: !2773)
!2778 = !DILocation(line: 476, column: 9, scope: !2773)
!2779 = distinct !DISubprogram(name: "operator()", linkageName: "_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_", scope: !106, file: !84, line: 93, type: !113, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !112, retainedNodes: !164)
!2780 = !DILocalVariable(name: "this", arg: 1, scope: !2779, type: !2781, flags: DIFlagArtificial | DIFlagObjectPointer)
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!2782 = !DILocation(line: 0, scope: !2779)
!2783 = !DILocalVariable(name: "__ptr", arg: 2, scope: !2779, file: !84, line: 93, type: !117)
!2784 = !DILocation(line: 93, column: 23, scope: !2779)
!2785 = !DILocation(line: 99, column: 9, scope: !2779)
!2786 = !DILocation(line: 99, column: 2, scope: !2779)
!2787 = !DILocation(line: 100, column: 7, scope: !2779)
!2788 = distinct !DISubprogram(name: "move<std::thread::_State *&>", linkageName: "_ZSt4moveIRPNSt6thread6_StateEEONSt16remove_referenceIT_E4typeEOS5_", scope: !17, file: !2275, line: 97, type: !2789, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !2794, retainedNodes: !164)
!2789 = !DISubroutineType(types: !2790)
!2790 = !{!2791, !247}
!2791 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !2792, size: 64)
!2792 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2793, file: !317, line: 1620, baseType: !117)
!2793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "remove_reference<std::thread::_State *&>", scope: !17, file: !317, line: 1619, size: 8, flags: DIFlagTypePassByValue, elements: !164, templateParams: !2794, identifier: "_ZTSSt16remove_referenceIRPNSt6thread6_StateEE")
!2794 = !{!2795}
!2795 = !DITemplateTypeParameter(name: "_Tp", type: !247)
!2796 = !DILocalVariable(name: "__t", arg: 1, scope: !2788, file: !2275, line: 97, type: !247)
!2797 = !DILocation(line: 97, column: 16, scope: !2788)
!2798 = !DILocation(line: 98, column: 71, scope: !2788)
!2799 = !DILocation(line: 98, column: 7, scope: !2788)
!2800 = distinct !DISubprogram(name: "_M_deleter", linkageName: "_ZNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE10_M_deleterEv", scope: !90, file: !84, line: 201, type: !362, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !361, retainedNodes: !164)
!2801 = !DILocalVariable(name: "this", arg: 1, scope: !2800, type: !2679, flags: DIFlagArtificial | DIFlagObjectPointer)
!2802 = !DILocation(line: 0, scope: !2800)
!2803 = !DILocation(line: 201, column: 61, scope: !2800)
!2804 = !DILocation(line: 201, column: 49, scope: !2800)
!2805 = !DILocation(line: 201, column: 42, scope: !2800)
!2806 = distinct !DISubprogram(name: "get<1UL, std::thread::_State *, std::default_delete<std::thread::_State> >", linkageName: "_ZSt3getILm1EJPNSt6thread6_StateESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_", scope: !17, file: !94, line: 1789, type: !2807, scopeLine: 1790, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !2817, retainedNodes: !164)
!2807 = !DISubroutineType(types: !2808)
!2808 = !{!2809, !315}
!2809 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2810, size: 64)
!2810 = !DIDerivedType(tag: DW_TAG_typedef, name: "__tuple_element_t<1UL, std::tuple<std::thread::_State *, std::default_delete<std::thread::_State> > >", scope: !17, file: !2517, line: 84, baseType: !2811)
!2811 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2812, file: !94, line: 1768, baseType: !2814)
!2812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tuple_element<1UL, std::tuple<std::thread::_State *, std::default_delete<std::thread::_State> > >", scope: !17, file: !94, line: 1764, size: 8, flags: DIFlagTypePassByValue, elements: !164, templateParams: !2813, identifier: "_ZTSSt13tuple_elementILm1ESt5tupleIJPNSt6thread6_StateESt14default_deleteIS2_EEEE")
!2813 = !{!2587, !2742}
!2814 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2815, file: !2517, line: 237, baseType: !106)
!2815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Nth_type<1UL, std::thread::_State *, std::default_delete<std::thread::_State> >", scope: !17, file: !2517, line: 236, size: 8, flags: DIFlagTypePassByValue, elements: !164, templateParams: !2816, identifier: "_ZTSSt9_Nth_typeILm1EJPNSt6thread6_StateESt14default_deleteIS1_EEE")
!2816 = !{!2591, !2746}
!2817 = !{!2587, !296}
!2818 = !DILocalVariable(name: "__t", arg: 1, scope: !2806, file: !94, line: 1789, type: !315)
!2819 = !DILocation(line: 1789, column: 30, scope: !2806)
!2820 = !DILocation(line: 1790, column: 37, scope: !2806)
!2821 = !DILocation(line: 1790, column: 14, scope: !2806)
!2822 = !DILocation(line: 1790, column: 7, scope: !2806)
!2823 = distinct !DISubprogram(name: "__get_helper<1UL, std::default_delete<std::thread::_State> >", linkageName: "_ZSt12__get_helperILm1ESt14default_deleteINSt6thread6_StateEEJEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE", scope: !17, file: !94, line: 1773, type: !187, scopeLine: 1774, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !2824, retainedNodes: !164)
!2824 = !{!2587, !184, !2650}
!2825 = !DILocalVariable(name: "__t", arg: 1, scope: !2823, file: !94, line: 1773, type: !189)
!2826 = !DILocation(line: 1773, column: 53, scope: !2823)
!2827 = !DILocation(line: 1774, column: 57, scope: !2823)
!2828 = !DILocation(line: 1774, column: 14, scope: !2823)
!2829 = !DILocation(line: 1774, column: 7, scope: !2823)
!2830 = distinct !DISubprogram(name: "_M_head", linkageName: "_ZNSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEE7_M_headERS4_", scope: !100, file: !94, line: 497, type: !187, scopeLine: 497, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !186, retainedNodes: !164)
!2831 = !DILocalVariable(name: "__t", arg: 1, scope: !2830, file: !94, line: 497, type: !189)
!2832 = !DILocation(line: 497, column: 28, scope: !2830)
!2833 = !DILocation(line: 497, column: 66, scope: !2830)
!2834 = !DILocation(line: 497, column: 51, scope: !2830)
!2835 = !DILocation(line: 497, column: 44, scope: !2830)
!2836 = distinct !DISubprogram(name: "_M_head", linkageName: "_ZNSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EE7_M_headERS4_", scope: !103, file: !94, line: 125, type: !175, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !174, retainedNodes: !164)
!2837 = !DILocalVariable(name: "__b", arg: 1, scope: !2836, file: !94, line: 125, type: !178)
!2838 = !DILocation(line: 125, column: 27, scope: !2836)
!2839 = !DILocation(line: 125, column: 50, scope: !2836)
!2840 = !DILocation(line: 125, column: 54, scope: !2836)
!2841 = !DILocation(line: 125, column: 43, scope: !2836)
!2842 = distinct !DISubprogram(linkageName: "_GLOBAL__sub_I_stack_param_by_ref_2.cpp", scope: !798, file: !798, type: !2843, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!2843 = !DISubroutineType(types: !164)
!2844 = !DILocation(line: 0, scope: !2842)
