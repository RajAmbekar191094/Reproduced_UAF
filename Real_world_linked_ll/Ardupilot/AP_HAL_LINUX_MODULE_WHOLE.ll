; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sched_param = type { i32 }
%struct.__pthread_internal_list = type { ptr, ptr }
%union.pthread_attr_t = type { i64, [48 x i8] }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.AP_HAL::OpticalFlow" = type { ptr }
%"class.Linux::OpticalFlow_Onboard" = type <{ %"class.AP_HAL::OpticalFlow", ptr, %"class.Linux::VideoIn::Frame", ptr, ptr, ptr, i64, %union.pthread_mutex_t, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, float, float, float, float, i32, i8, [3 x i8], %struct.__pthread_internal_list, %class.Vector3, [4 x i8] }>
%"class.Linux::VideoIn::Frame" = type <{ i32, i32, ptr, i32, [4 x i8] }>
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%class.Vector3 = type { float, float, float }
%"class.AP_HAL::OpticalFlow::Data_Frame" = type { float, float, float, float, i32, i8 }
%"class.Linux::VideoIn" = type { i32, ptr, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.Vector2 = type { float, float }
%"class.AP_HAL::HAL" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.Linux::RCOutput_Bebop" = type { %"class.AP_HAL::OpticalFlow", ptr, [4 x i16], [4 x i16], [4 x i16], i16, i16, i16, i8, i8, i16, i64, %union.pthread_mutex_t, %union.pthread_cond_t }
%union.pthread_cond_t = type { %struct.__pthread_cond_s }
%struct.__pthread_cond_s = type { %union.__atomic_wide_counter, %union.__atomic_wide_counter, [2 x i32], [2 x i32], i32, i32, [2 x i32] }
%union.__atomic_wide_counter = type { i64 }
%struct.timespec = type { i64, i64 }
%struct.bldc_info = type <{ i8, i8, i8, i8, i16, i16, i32, i8 }>
%struct.bldc_ref_speed_data = type <{ i8, [4 x i16], i8, i8 }>
%struct.bldc_obs_data = type <{ [4 x i16], i16, i8, i8, i8, i8, i8 }>
%class.BebopBLDC_ObsData = type { [4 x i16], [4 x i8], i16, i8, i8, i8, i8 }
%"class.Linux::Thread" = type { ptr, %struct.__pthread_internal_list, i8, i64 }
%"class.Linux::PeriodicThread" = type { %"class.Linux::Thread", i64 }

$_ZN5Linux7VideoInC2Ev = comdat any

$_ZNSt6vectorIjSaIjEEC2Ev = comdat any

$_ZNSt6vectorIjSaIjEE5beginEv = comdat any

$_ZNSt6vectorIjSaIjEE3endEv = comdat any

$_ZN9__gnu_cxxneIPjSt6vectorIjSaIjEEEEbRKNS_17__normal_iteratorIT_T0_EESA_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEdeEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEppEv = comdat any

$_ZNSt6vectorIjSaIjEED2Ev = comdat any

$_ZNSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv = comdat any

$_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseIjSaIjEED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm = comdat any

$_ZNSt12_Vector_baseIjSaIjEE12_Vector_implD2Ev = comdat any

$_ZNSaIjED2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorIjED2Ev = comdat any

$_ZNSt16allocator_traitsISaIjEE10deallocateERS0_Pjm = comdat any

$_ZN9__gnu_cxx13new_allocatorIjE10deallocateEPjm = comdat any

$_ZSt8_DestroyIPjEvT_S1_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPjEEvT_S3_ = comdat any

$_ZN7Vector3IfEC2Ev = comdat any

$_ZN7Vector2IfEC2Ev = comdat any

$_ZNK7FunctorIvJRfS0_S0_EEclES0_S0_S0_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEE4baseEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEC2ERKS1_ = comdat any

$_ZNSt12_Vector_baseIjSaIjEEC2Ev = comdat any

$_ZNSt12_Vector_baseIjSaIjEE12_Vector_implC2Ev = comdat any

$_ZNSaIjEC2Ev = comdat any

$_ZNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataC2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorIjEC2Ev = comdat any

$_ZN6AP_HAL8RCOutput14read_last_sentEh = comdat any

$_ZN6AP_HAL8RCOutput14read_last_sentEPth = comdat any

$_ZN6AP_HAL8RCOutput14set_safety_pwmEjt = comdat any

$_ZN6AP_HAL8RCOutput16set_failsafe_pwmEjt = comdat any

$_ZN6AP_HAL8RCOutput15force_safety_onEv = comdat any

$_ZN6AP_HAL8RCOutput16force_safety_offEv = comdat any

$_ZN6AP_HAL8RCOutput15enable_sbus_outEt = comdat any

$_ZN6AP_HAL8RCOutput15set_output_modeENS0_11output_modeE = comdat any

$_ZN5Linux4Util4fromEPN6AP_HAL4UtilE = comdat any

$_ZN6AP_HAL8RCOutputC2Ev = comdat any

$_ZN6AP_HAL8RCOutput4corkEv = comdat any

$_ZN6AP_HAL8RCOutput4pushEv = comdat any

$_ZN6AP_HAL8RCOutput15set_esc_scalingEtt = comdat any

$_ZN5Linux6ThreadD2Ev = comdat any

$_ZN5Linux6ThreadD0Ev = comdat any

$_ZNK7FunctorIvJEEcvbEv = comdat any

$_ZNK7FunctorIvJEEclEv = comdat any

$_ZN5Linux14PeriodicThreadD2Ev = comdat any

$_ZN5Linux14PeriodicThreadD0Ev = comdat any

$_ZN5Linux9Scheduler4fromEPN6AP_HAL9SchedulerE = comdat any

$_Z10hz_to_usecj = comdat any

$_ZTSN6AP_HAL11OpticalFlowE = comdat any

$_ZTIN6AP_HAL11OpticalFlowE = comdat any

$_ZTSN6AP_HAL8RCOutputE = comdat any

$_ZTIN6AP_HAL8RCOutputE = comdat any

$_ZTVN6AP_HAL8RCOutputE = comdat any

@__const._ZN5Linux19OpticalFlow_Onboard4initE7FunctorIvJRfS2_S2_EE.param = private unnamed_addr constant %struct.sched_param { i32 11 }, align 4
@.str = private unnamed_addr constant [12 x i8] c"/dev/video0\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [48 x i8] c"OpticalFlow_Onboard: couldn't open video device\00", align 1, !dbg !8
@.str.2 = private unnamed_addr constant [47 x i8] c"OpticalFlow_Onboard: couldn't set video format\00", align 1, !dbg !13
@.str.3 = private unnamed_addr constant [43 x i8] c"OpticalFlow_Onboard: format not supported\0A\00", align 1, !dbg !18
@.str.4 = private unnamed_addr constant [53 x i8] c"OpticalFlow_Onboard: couldn't allocate video buffers\00", align 1, !dbg !23
@.str.5 = private unnamed_addr constant [42 x i8] c"OpticalFlow_Onboard: failed to init mutex\00", align 1, !dbg !28
@.str.6 = private unnamed_addr constant [41 x i8] c"OpticalFlow_Onboard: failed to init attr\00", align 1, !dbg !33
@.str.7 = private unnamed_addr constant [45 x i8] c"OpticalFlow_Onboard: failed to create thread\00", align 1, !dbg !38
@.str.8 = private unnamed_addr constant [58 x i8] c"OpticalFlow_Onboard: couldn't allocate conversion buffer\0A\00", align 1, !dbg !43
@.str.9 = private unnamed_addr constant [52 x i8] c"OpticalFlow_Onboard: couldn't allocate crop buffer\0A\00", align 1, !dbg !48
@.str.10 = private unnamed_addr constant [41 x i8] c"OpticalFlow_Onboard: couldn't get frame\0A\00", align 1, !dbg !53
@_ZTVN5Linux19OpticalFlow_OnboardE = dso_local unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN5Linux19OpticalFlow_OnboardE, ptr @_ZN5Linux19OpticalFlow_Onboard4initE7FunctorIvJRfS2_S2_EE, ptr @_ZN5Linux19OpticalFlow_Onboard4readERN6AP_HAL11OpticalFlow10Data_FrameE] }, align 8
@_ZTSN5Linux19OpticalFlow_OnboardE = dso_local constant [30 x i8] c"N5Linux19OpticalFlow_OnboardE\00", align 1
@_ZTSN6AP_HAL11OpticalFlowE = linkonce_odr dso_local constant [23 x i8] c"N6AP_HAL11OpticalFlowE\00", comdat, align 1
@_ZTIN6AP_HAL11OpticalFlowE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN6AP_HAL11OpticalFlowE }, comdat, align 8
@_ZTIN5Linux19OpticalFlow_OnboardE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5Linux19OpticalFlow_OnboardE, ptr @_ZTIN6AP_HAL11OpticalFlowE }, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_RCOutput_Bebop.cpp, ptr null }]
@_ZL3hal = internal global ptr null, align 8, !dbg !55
@_ZTVN5Linux14RCOutput_BebopE = dso_local unnamed_addr constant { [21 x ptr] } { [21 x ptr] [ptr null, ptr @_ZTIN5Linux14RCOutput_BebopE, ptr @_ZN5Linux14RCOutput_Bebop4initEv, ptr @_ZN5Linux14RCOutput_Bebop8set_freqEjt, ptr @_ZN5Linux14RCOutput_Bebop8get_freqEh, ptr @_ZN5Linux14RCOutput_Bebop9enable_chEh, ptr @_ZN5Linux14RCOutput_Bebop10disable_chEh, ptr @_ZN5Linux14RCOutput_Bebop5writeEht, ptr @_ZN5Linux14RCOutput_Bebop4corkEv, ptr @_ZN5Linux14RCOutput_Bebop4pushEv, ptr @_ZN5Linux14RCOutput_Bebop4readEh, ptr @_ZN5Linux14RCOutput_Bebop4readEPth, ptr @_ZN6AP_HAL8RCOutput14read_last_sentEh, ptr @_ZN6AP_HAL8RCOutput14read_last_sentEPth, ptr @_ZN6AP_HAL8RCOutput14set_safety_pwmEjt, ptr @_ZN6AP_HAL8RCOutput16set_failsafe_pwmEjt, ptr @_ZN6AP_HAL8RCOutput15force_safety_onEv, ptr @_ZN6AP_HAL8RCOutput16force_safety_offEv, ptr @_ZN5Linux14RCOutput_Bebop15set_esc_scalingEtt, ptr @_ZN6AP_HAL8RCOutput15enable_sbus_outEt, ptr @_ZN6AP_HAL8RCOutput15set_output_modeENS0_11output_modeE] }, align 8
@.str.11 = private unnamed_addr constant [41 x i8] c"RCOutput_Bebop: bad checksum in obs data\00", align 1, !dbg !323
@__const._ZN5Linux14RCOutput_Bebop4initEv.param = private unnamed_addr constant %struct.sched_param { i32 14 }, align 4
@.str.1.1 = private unnamed_addr constant [34 x i8] c"RCOutput_Bebop: can't get i2c sem\00", align 1, !dbg !325
@.str.2.2 = private unnamed_addr constant [35 x i8] c"RCout_Bebop: failed to init mutex\0A\00", align 1, !dbg !330
@.str.3.3 = private unnamed_addr constant [34 x i8] c"RCout_Bebop: failed to init cond\0A\00", align 1, !dbg !335
@.str.4.4 = private unnamed_addr constant [34 x i8] c"RCOut_Bebop: failed to init attr\0A\00", align 1, !dbg !337
@.str.5.5 = private unnamed_addr constant [38 x i8] c"RCOut_Bebop: failed to create thread\0A\00", align 1, !dbg !339
@.str.6.6 = private unnamed_addr constant [24 x i8] c"failed to get BLDC info\00", align 1, !dbg !344
@.str.7.7 = private unnamed_addr constant [28 x i8] c"failed to get hw version %s\00", align 1, !dbg !349
@.str.8.8 = private unnamed_addr constant [26 x i8] c"unsupported hw version %d\00", align 1, !dbg !354
@_ZTSN5Linux14RCOutput_BebopE = dso_local constant [25 x i8] c"N5Linux14RCOutput_BebopE\00", align 1
@_ZTSN6AP_HAL8RCOutputE = linkonce_odr dso_local constant [19 x i8] c"N6AP_HAL8RCOutputE\00", comdat, align 1
@_ZTIN6AP_HAL8RCOutputE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN6AP_HAL8RCOutputE }, comdat, align 8
@_ZTIN5Linux14RCOutput_BebopE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5Linux14RCOutput_BebopE, ptr @_ZTIN6AP_HAL8RCOutputE }, align 8
@_ZTVN6AP_HAL8RCOutputE = linkonce_odr dso_local unnamed_addr constant { [21 x ptr] } { [21 x ptr] [ptr null, ptr @_ZTIN6AP_HAL8RCOutputE, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN6AP_HAL8RCOutput4corkEv, ptr @_ZN6AP_HAL8RCOutput4pushEv, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN6AP_HAL8RCOutput14read_last_sentEh, ptr @_ZN6AP_HAL8RCOutput14read_last_sentEPth, ptr @_ZN6AP_HAL8RCOutput14set_safety_pwmEjt, ptr @_ZN6AP_HAL8RCOutput16set_failsafe_pwmEjt, ptr @_ZN6AP_HAL8RCOutput15force_safety_onEv, ptr @_ZN6AP_HAL8RCOutput16force_safety_offEv, ptr @_ZN6AP_HAL8RCOutput15set_esc_scalingEtt, ptr @_ZN6AP_HAL8RCOutput15enable_sbus_outEt, ptr @_ZN6AP_HAL8RCOutput15set_output_modeENS0_11output_modeE] }, comdat, align 8
@.str.12 = private unnamed_addr constant [45 x i8] c"Failed to set attributes for thread '%s': %s\00", align 1, !dbg !606
@.str.1.13 = private unnamed_addr constant [33 x i8] c"Failed to create thread '%s': %s\00", align 1, !dbg !609
@hal = external constant ptr, align 8
@_ZTVN5Linux6ThreadE = dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5Linux6ThreadE, ptr @_ZN5Linux6ThreadD2Ev, ptr @_ZN5Linux6ThreadD0Ev, ptr @_ZN5Linux6Thread4_runEv] }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global ptr
@_ZTSN5Linux6ThreadE = dso_local constant [16 x i8] c"N5Linux6ThreadE\00", align 1
@_ZTIN5Linux6ThreadE = dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN5Linux6ThreadE }, align 8
@_ZTVN5Linux14PeriodicThreadE = dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5Linux14PeriodicThreadE, ptr @_ZN5Linux14PeriodicThreadD2Ev, ptr @_ZN5Linux14PeriodicThreadD0Ev, ptr @_ZN5Linux14PeriodicThread4_runEv] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global ptr
@_ZTSN5Linux14PeriodicThreadE = dso_local constant [25 x i8] c"N5Linux14PeriodicThreadE\00", align 1
@_ZTIN5Linux14PeriodicThreadE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5Linux14PeriodicThreadE, ptr @_ZTIN5Linux6ThreadE }, align 8

@_ZN5Linux14RCOutput_BebopC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN5Linux14RCOutput_BebopC2Ev

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN5Linux19OpticalFlow_Onboard4initE7FunctorIvJRfS2_S2_EE(ptr noundef nonnull align 8 dereferenceable(196) %0, ptr %1, ptr %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !dbg !2010 {
  %4 = alloca %struct.__pthread_internal_list, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %union.pthread_attr_t, align 8
  %14 = alloca %struct.sched_param, align 4
  %15 = alloca ptr, align 8
  %16 = alloca %"class.std::vector", align 8
  %17 = alloca ptr, align 8
  %18 = alloca i32, align 4
  %19 = alloca ptr, align 8
  %20 = alloca %"class.AP_HAL::OpticalFlow", align 8
  %21 = alloca %"class.AP_HAL::OpticalFlow", align 8
  %22 = alloca i32, align 4
  %23 = getelementptr inbounds { ptr, ptr }, ptr %4, i32 0, i32 0
  store ptr %1, ptr %23, align 8
  %24 = getelementptr inbounds { ptr, ptr }, ptr %4, i32 0, i32 1
  store ptr %2, ptr %24, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2011, metadata !DIExpression()), !dbg !2012
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2013, metadata !DIExpression()), !dbg !2014
  %25 = load ptr, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2015, metadata !DIExpression()), !dbg !2016
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2017, metadata !DIExpression()), !dbg !2018
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2019, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2021, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2023, metadata !DIExpression()), !dbg !2024
  store i32 1, ptr %10, align 4, !dbg !2024
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2025, metadata !DIExpression()), !dbg !2026
  store i32 0, ptr %11, align 4, !dbg !2026
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2027, metadata !DIExpression()), !dbg !2028
  call void @llvm.dbg.declare(metadata ptr %13, metadata !2029, metadata !DIExpression()), !dbg !2038
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2039, metadata !DIExpression()), !dbg !2044
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %14, ptr align 4 @__const._ZN5Linux19OpticalFlow_Onboard4initE7FunctorIvJRfS2_S2_EE.param, i64 4, i1 false), !dbg !2044
  %26 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 8, !dbg !2045
  %27 = load i8, ptr %26, align 8, !dbg !2045
  %28 = trunc i8 %27 to i1, !dbg !2045
  br i1 %28, label %29, label %30, !dbg !2047

29:                                               ; preds = %3
  br label %203, !dbg !2048

30:                                               ; preds = %3
  %31 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 26, !dbg !2050
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %31, ptr align 8 %4, i64 16, i1 false), !dbg !2051
  %32 = call noalias noundef nonnull ptr @_Znwm(i64 noundef 48) #16, !dbg !2052, !heapallocsite !679
  call void @_ZN5Linux7VideoInC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %32) #17, !dbg !2053
  %33 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 1, !dbg !2054
  store ptr %32, ptr %33, align 8, !dbg !2055
  call void @llvm.dbg.declare(metadata ptr %15, metadata !2056, metadata !DIExpression()), !dbg !2057
  store ptr @.str, ptr %15, align 8, !dbg !2057
  store i32 1, ptr %10, align 4, !dbg !2058
  store i32 8, ptr %11, align 4, !dbg !2059
  %34 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 14, !dbg !2060
  store i32 64, ptr %34, align 4, !dbg !2061
  %35 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 15, !dbg !2062
  store i32 64, ptr %35, align 8, !dbg !2063
  store i32 240, ptr %8, align 4, !dbg !2064
  store i32 240, ptr %9, align 4, !dbg !2065
  store i32 0, ptr %6, align 4, !dbg !2066
  store i32 40, ptr %7, align 4, !dbg !2067
  %36 = load ptr, ptr %15, align 8, !dbg !2068
  %37 = icmp eq ptr %36, null, !dbg !2070
  br i1 %37, label %44, label %38, !dbg !2071

38:                                               ; preds = %30
  %39 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 1, !dbg !2072
  %40 = load ptr, ptr %39, align 8, !dbg !2072
  %41 = load ptr, ptr %15, align 8, !dbg !2073
  %42 = load i32, ptr %10, align 4, !dbg !2074
  %43 = call noundef zeroext i1 @_ZN5Linux7VideoIn11open_deviceEPKcj(ptr noundef nonnull align 8 dereferenceable(48) %40, ptr noundef %41, i32 noundef %42), !dbg !2075
  br i1 %43, label %45, label %44, !dbg !2076

44:                                               ; preds = %38, %30
  call void (ptr, ...) @_ZN6AP_HAL5panicEPKcz(ptr noundef @.str.1) #18, !dbg !2077
  unreachable, !dbg !2077

45:                                               ; preds = %38
  call void @llvm.dbg.declare(metadata ptr %16, metadata !2079, metadata !DIExpression()), !dbg !2080
  call void @_ZNSt6vectorIjSaIjEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %16) #17, !dbg !2080
  %46 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 1, !dbg !2081
  %47 = load ptr, ptr %46, align 8, !dbg !2081
  invoke void @_ZN5Linux7VideoIn17get_pixel_formatsEPSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(48) %47, ptr noundef %16)
          to label %48 unwind label %68, !dbg !2082

48:                                               ; preds = %45
  call void @llvm.dbg.declare(metadata ptr %19, metadata !2083, metadata !DIExpression()), !dbg !2085
  store ptr %16, ptr %19, align 8, !dbg !2086
  call void @llvm.dbg.declare(metadata ptr %20, metadata !2087, metadata !DIExpression()), !dbg !2085
  %49 = load ptr, ptr %19, align 8, !dbg !2088
  %50 = call ptr @_ZNSt6vectorIjSaIjEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %49) #17, !dbg !2088
  %51 = getelementptr inbounds %"class.AP_HAL::OpticalFlow", ptr %20, i32 0, i32 0, !dbg !2088
  store ptr %50, ptr %51, align 8, !dbg !2088
  call void @llvm.dbg.declare(metadata ptr %21, metadata !2089, metadata !DIExpression()), !dbg !2085
  %52 = load ptr, ptr %19, align 8, !dbg !2088
  %53 = call ptr @_ZNSt6vectorIjSaIjEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %52) #17, !dbg !2088
  %54 = getelementptr inbounds %"class.AP_HAL::OpticalFlow", ptr %21, i32 0, i32 0, !dbg !2088
  store ptr %53, ptr %54, align 8, !dbg !2088
  br label %55, !dbg !2088

55:                                               ; preds = %79, %48
  %56 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPjSt6vectorIjSaIjEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(8) %21) #17, !dbg !2088
  br i1 %56, label %57, label %81, !dbg !2088

57:                                               ; preds = %55
  call void @llvm.dbg.declare(metadata ptr %22, metadata !2090, metadata !DIExpression()), !dbg !2092
  %58 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %20) #17, !dbg !2093
  %59 = load i32, ptr %58, align 4, !dbg !2093
  store i32 %59, ptr %22, align 4, !dbg !2092
  %60 = load i32, ptr %22, align 4, !dbg !2094
  %61 = icmp eq i32 %60, 842094158, !dbg !2097
  br i1 %61, label %65, label %62, !dbg !2098

62:                                               ; preds = %57
  %63 = load i32, ptr %22, align 4, !dbg !2099
  %64 = icmp eq i32 %63, 1497715271, !dbg !2100
  br i1 %64, label %65, label %72, !dbg !2101

65:                                               ; preds = %62, %57
  %66 = load i32, ptr %22, align 4, !dbg !2102
  %67 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 16, !dbg !2104
  store i32 %66, ptr %67, align 4, !dbg !2105
  br label %81, !dbg !2106

68:                                               ; preds = %199, %189, %179, %166, %163, %161, %155, %128, %105, %91, %81, %45
  %69 = landingpad { ptr, i32 }
          cleanup, !dbg !2107
  %70 = extractvalue { ptr, i32 } %69, 0, !dbg !2107
  store ptr %70, ptr %17, align 8, !dbg !2107
  %71 = extractvalue { ptr, i32 } %69, 1, !dbg !2107
  store i32 %71, ptr %18, align 4, !dbg !2107
  br label %204, !dbg !2107

72:                                               ; preds = %62
  %73 = load i32, ptr %22, align 4, !dbg !2108
  %74 = icmp eq i32 %73, 1448695129, !dbg !2110
  br i1 %74, label %75, label %78, !dbg !2111

75:                                               ; preds = %72
  %76 = load i32, ptr %22, align 4, !dbg !2112
  %77 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 16, !dbg !2114
  store i32 %76, ptr %77, align 4, !dbg !2115
  br label %78, !dbg !2116

78:                                               ; preds = %75, %72
  br label %79, !dbg !2117

79:                                               ; preds = %78
  %80 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %20) #17, !dbg !2088
  br label %55, !dbg !2088, !llvm.loop !2118

81:                                               ; preds = %65, %55
  %82 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 1, !dbg !2120
  %83 = load ptr, ptr %82, align 8, !dbg !2120
  %84 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 14, !dbg !2122
  %85 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 15, !dbg !2123
  %86 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 16, !dbg !2124
  %87 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 17, !dbg !2125
  %88 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 18, !dbg !2126
  %89 = invoke noundef zeroext i1 @_ZN5Linux7VideoIn10set_formatEPjS1_S1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(48) %83, ptr noundef %84, ptr noundef %85, ptr noundef %86, ptr noundef %87, ptr noundef %88)
          to label %90 unwind label %68, !dbg !2127

90:                                               ; preds = %81
  br i1 %89, label %93, label %91, !dbg !2128

91:                                               ; preds = %90
  invoke void (ptr, ...) @_ZN6AP_HAL5panicEPKcz(ptr noundef @.str.2) #18
          to label %92 unwind label %68, !dbg !2129

92:                                               ; preds = %91
  unreachable, !dbg !2129

93:                                               ; preds = %90
  %94 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 16, !dbg !2131
  %95 = load i32, ptr %94, align 4, !dbg !2131
  %96 = icmp ne i32 %95, 842094158, !dbg !2133
  br i1 %96, label %97, label %107, !dbg !2134

97:                                               ; preds = %93
  %98 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 16, !dbg !2135
  %99 = load i32, ptr %98, align 4, !dbg !2135
  %100 = icmp ne i32 %99, 1497715271, !dbg !2136
  br i1 %100, label %101, label %107, !dbg !2137

101:                                              ; preds = %97
  %102 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 16, !dbg !2138
  %103 = load i32, ptr %102, align 4, !dbg !2138
  %104 = icmp ne i32 %103, 1448695129, !dbg !2139
  br i1 %104, label %105, label %107, !dbg !2140

105:                                              ; preds = %101
  invoke void (ptr, ...) @_ZN6AP_HAL5panicEPKcz(ptr noundef @.str.3) #18
          to label %106 unwind label %68, !dbg !2141

106:                                              ; preds = %105
  unreachable, !dbg !2141

107:                                              ; preds = %101, %97, %93
  %108 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 14, !dbg !2143
  %109 = load i32, ptr %108, align 4, !dbg !2143
  %110 = icmp eq i32 %109, 64, !dbg !2145
  br i1 %110, label %111, label %117, !dbg !2146

111:                                              ; preds = %107
  %112 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 15, !dbg !2147
  %113 = load i32, ptr %112, align 8, !dbg !2147
  %114 = icmp eq i32 %113, 64, !dbg !2148
  br i1 %114, label %115, label %117, !dbg !2149

115:                                              ; preds = %111
  %116 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 11, !dbg !2150
  store i8 0, ptr %116, align 1, !dbg !2152
  br label %128, !dbg !2153

117:                                              ; preds = %111, %107
  %118 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 11, !dbg !2154
  store i8 1, ptr %118, align 1, !dbg !2156
  %119 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 14, !dbg !2157
  %120 = load i32, ptr %119, align 4, !dbg !2157
  %121 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 12, !dbg !2158
  store i32 %120, ptr %121, align 4, !dbg !2159
  %122 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 15, !dbg !2160
  %123 = load i32, ptr %122, align 8, !dbg !2160
  %124 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 13, !dbg !2161
  store i32 %123, ptr %124, align 8, !dbg !2162
  %125 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 14, !dbg !2163
  store i32 64, ptr %125, align 4, !dbg !2164
  %126 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 15, !dbg !2165
  store i32 64, ptr %126, align 8, !dbg !2166
  %127 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 17, !dbg !2167
  store i32 64, ptr %127, align 8, !dbg !2168
  br label %128

128:                                              ; preds = %117, %115
  %129 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 1, !dbg !2169
  %130 = load ptr, ptr %129, align 8, !dbg !2169
  %131 = load i32, ptr %7, align 4, !dbg !2171
  %132 = load i32, ptr %6, align 4, !dbg !2172
  %133 = load i32, ptr %8, align 4, !dbg !2173
  %134 = load i32, ptr %9, align 4, !dbg !2174
  %135 = invoke noundef zeroext i1 @_ZN5Linux7VideoIn8set_cropEjjjj(ptr noundef nonnull align 8 dereferenceable(48) %130, i32 noundef %131, i32 noundef %132, i32 noundef %133, i32 noundef %134)
          to label %136 unwind label %68, !dbg !2175

136:                                              ; preds = %128
  br i1 %135, label %137, label %139, !dbg !2176

137:                                              ; preds = %136
  %138 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 10, !dbg !2177
  store i8 0, ptr %138, align 2, !dbg !2179
  br label %155, !dbg !2180

139:                                              ; preds = %136
  %140 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 10, !dbg !2181
  store i8 1, ptr %140, align 2, !dbg !2183
  %141 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 11, !dbg !2184
  %142 = load i8, ptr %141, align 1, !dbg !2184
  %143 = trunc i8 %142 to i1, !dbg !2184
  br i1 %143, label %154, label %144, !dbg !2186

144:                                              ; preds = %139
  %145 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 14, !dbg !2187
  %146 = load i32, ptr %145, align 4, !dbg !2187
  %147 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 12, !dbg !2189
  store i32 %146, ptr %147, align 4, !dbg !2190
  %148 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 15, !dbg !2191
  %149 = load i32, ptr %148, align 8, !dbg !2191
  %150 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 13, !dbg !2192
  store i32 %149, ptr %150, align 8, !dbg !2193
  %151 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 14, !dbg !2194
  store i32 64, ptr %151, align 4, !dbg !2195
  %152 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 15, !dbg !2196
  store i32 64, ptr %152, align 8, !dbg !2197
  %153 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 17, !dbg !2198
  store i32 64, ptr %153, align 8, !dbg !2199
  br label %154, !dbg !2200

154:                                              ; preds = %144, %139
  br label %155

155:                                              ; preds = %154, %137
  %156 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 1, !dbg !2201
  %157 = load ptr, ptr %156, align 8, !dbg !2201
  %158 = load i32, ptr %11, align 4, !dbg !2203
  %159 = invoke noundef zeroext i1 @_ZN5Linux7VideoIn16allocate_buffersEj(ptr noundef nonnull align 8 dereferenceable(48) %157, i32 noundef %158)
          to label %160 unwind label %68, !dbg !2204

160:                                              ; preds = %155
  br i1 %159, label %163, label %161, !dbg !2205

161:                                              ; preds = %160
  invoke void (ptr, ...) @_ZN6AP_HAL5panicEPKcz(ptr noundef @.str.4) #18
          to label %162 unwind label %68, !dbg !2206

162:                                              ; preds = %161
  unreachable, !dbg !2206

163:                                              ; preds = %160
  %164 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 1, !dbg !2208
  %165 = load ptr, ptr %164, align 8, !dbg !2208
  invoke void @_ZN5Linux7VideoIn15prepare_captureEv(ptr noundef nonnull align 8 dereferenceable(48) %165)
          to label %166 unwind label %68, !dbg !2209

166:                                              ; preds = %163
  %167 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef 28) #16
          to label %168 unwind label %68, !dbg !2210, !heapallocsite !1306

168:                                              ; preds = %166
  %169 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 14, !dbg !2211
  %170 = load i32, ptr %169, align 4, !dbg !2211
  %171 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 17, !dbg !2212
  %172 = load i32, ptr %171, align 8, !dbg !2212
  invoke void @_ZN5Linux8Flow_PX4C1Ejjjff(ptr noundef nonnull align 4 dereferenceable(27) %167, i32 noundef %170, i32 noundef %172, i32 noundef 4, float noundef 3.000000e+01, float noundef 5.000000e+03)
          to label %173 unwind label %181, !dbg !2213

173:                                              ; preds = %168
  %174 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 5, !dbg !2214
  store ptr %167, ptr %174, align 8, !dbg !2215
  %175 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 7, !dbg !2216
  %176 = call i32 @pthread_mutex_init(ptr noundef %175, ptr noundef null) #17, !dbg !2217
  store i32 %176, ptr %12, align 4, !dbg !2218
  %177 = load i32, ptr %12, align 4, !dbg !2219
  %178 = icmp ne i32 %177, 0, !dbg !2221
  br i1 %178, label %179, label %185, !dbg !2222

179:                                              ; preds = %173
  invoke void (ptr, ...) @_ZN6AP_HAL5panicEPKcz(ptr noundef @.str.5) #18
          to label %180 unwind label %68, !dbg !2223

180:                                              ; preds = %179
  unreachable, !dbg !2223

181:                                              ; preds = %168
  %182 = landingpad { ptr, i32 }
          cleanup, !dbg !2107
  %183 = extractvalue { ptr, i32 } %182, 0, !dbg !2107
  store ptr %183, ptr %17, align 8, !dbg !2107
  %184 = extractvalue { ptr, i32 } %182, 1, !dbg !2107
  store i32 %184, ptr %18, align 4, !dbg !2107
  call void @_ZdlPv(ptr noundef %167) #19, !dbg !2210
  br label %204, !dbg !2210

185:                                              ; preds = %173
  %186 = call i32 @pthread_attr_init(ptr noundef %13) #17, !dbg !2225
  store i32 %186, ptr %12, align 4, !dbg !2226
  %187 = load i32, ptr %12, align 4, !dbg !2227
  %188 = icmp ne i32 %187, 0, !dbg !2229
  br i1 %188, label %189, label %191, !dbg !2230

189:                                              ; preds = %185
  invoke void (ptr, ...) @_ZN6AP_HAL5panicEPKcz(ptr noundef @.str.6) #18
          to label %190 unwind label %68, !dbg !2231

190:                                              ; preds = %189
  unreachable, !dbg !2231

191:                                              ; preds = %185
  %192 = call i32 @pthread_attr_setinheritsched(ptr noundef %13, i32 noundef 1) #17, !dbg !2233
  %193 = call i32 @pthread_attr_setschedpolicy(ptr noundef %13, i32 noundef 1) #17, !dbg !2234
  %194 = call i32 @pthread_attr_setschedparam(ptr noundef %13, ptr noundef %14) #17, !dbg !2235
  %195 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 6, !dbg !2236
  %196 = call i32 @pthread_create(ptr noundef %195, ptr noundef %13, ptr noundef @_ZN5Linux19OpticalFlow_Onboard12_read_threadEPv, ptr noundef %25) #17, !dbg !2237
  store i32 %196, ptr %12, align 4, !dbg !2238
  %197 = load i32, ptr %12, align 4, !dbg !2239
  %198 = icmp ne i32 %197, 0, !dbg !2241
  br i1 %198, label %199, label %201, !dbg !2242

199:                                              ; preds = %191
  invoke void (ptr, ...) @_ZN6AP_HAL5panicEPKcz(ptr noundef @.str.7) #18
          to label %200 unwind label %68, !dbg !2243

200:                                              ; preds = %199
  unreachable, !dbg !2243

201:                                              ; preds = %191
  %202 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %25, i32 0, i32 8, !dbg !2245
  store i8 1, ptr %202, align 8, !dbg !2246
  call void @_ZNSt6vectorIjSaIjEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %16) #17, !dbg !2107
  br label %203, !dbg !2107

203:                                              ; preds = %201, %29
  ret void, !dbg !2107

204:                                              ; preds = %181, %68
  call void @_ZNSt6vectorIjSaIjEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %16) #17, !dbg !2107
  br label %205, !dbg !2107

205:                                              ; preds = %204
  %206 = load ptr, ptr %17, align 8, !dbg !2107
  %207 = load i32, ptr %18, align 4, !dbg !2107
  %208 = insertvalue { ptr, i32 } poison, ptr %206, 0, !dbg !2107
  %209 = insertvalue { ptr, i32 } %208, i32 %207, 1, !dbg !2107
  resume { ptr, i32 } %209, !dbg !2107
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef zeroext i1 @_ZN5Linux19OpticalFlow_Onboard4readERN6AP_HAL11OpticalFlow10Data_FrameE(ptr noundef nonnull align 8 dereferenceable(196) %0, ptr noundef nonnull align 4 dereferenceable(24) %1) unnamed_addr #1 align 2 !dbg !2247 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i8, align 1
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2248, metadata !DIExpression()), !dbg !2249
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2250, metadata !DIExpression()), !dbg !2251
  %6 = load ptr, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2252, metadata !DIExpression()), !dbg !2253
  %7 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %6, i32 0, i32 7, !dbg !2254
  %8 = call i32 @pthread_mutex_lock(ptr noundef %7) #17, !dbg !2255
  %9 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %6, i32 0, i32 9, !dbg !2256
  %10 = load i8, ptr %9, align 1, !dbg !2256
  %11 = trunc i8 %10 to i1, !dbg !2256
  br i1 %11, label %13, label %12, !dbg !2258

12:                                               ; preds = %2
  store i8 0, ptr %5, align 1, !dbg !2259
  br label %44, !dbg !2261

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %6, i32 0, i32 19, !dbg !2262
  %15 = load float, ptr %14, align 8, !dbg !2262
  %16 = load ptr, ptr %4, align 8, !dbg !2263
  %17 = getelementptr inbounds %"class.AP_HAL::OpticalFlow::Data_Frame", ptr %16, i32 0, i32 0, !dbg !2264
  store float %15, ptr %17, align 4, !dbg !2265
  %18 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %6, i32 0, i32 20, !dbg !2266
  %19 = load float, ptr %18, align 4, !dbg !2266
  %20 = load ptr, ptr %4, align 8, !dbg !2267
  %21 = getelementptr inbounds %"class.AP_HAL::OpticalFlow::Data_Frame", ptr %20, i32 0, i32 1, !dbg !2268
  store float %19, ptr %21, align 4, !dbg !2269
  %22 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %6, i32 0, i32 21, !dbg !2270
  %23 = load float, ptr %22, align 8, !dbg !2270
  %24 = load ptr, ptr %4, align 8, !dbg !2271
  %25 = getelementptr inbounds %"class.AP_HAL::OpticalFlow::Data_Frame", ptr %24, i32 0, i32 2, !dbg !2272
  store float %23, ptr %25, align 4, !dbg !2273
  %26 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %6, i32 0, i32 22, !dbg !2274
  %27 = load float, ptr %26, align 4, !dbg !2274
  %28 = load ptr, ptr %4, align 8, !dbg !2275
  %29 = getelementptr inbounds %"class.AP_HAL::OpticalFlow::Data_Frame", ptr %28, i32 0, i32 3, !dbg !2276
  store float %27, ptr %29, align 4, !dbg !2277
  %30 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %6, i32 0, i32 23, !dbg !2278
  %31 = load i32, ptr %30, align 8, !dbg !2278
  %32 = load ptr, ptr %4, align 8, !dbg !2279
  %33 = getelementptr inbounds %"class.AP_HAL::OpticalFlow::Data_Frame", ptr %32, i32 0, i32 4, !dbg !2280
  store i32 %31, ptr %33, align 4, !dbg !2281
  %34 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %6, i32 0, i32 24, !dbg !2282
  %35 = load i8, ptr %34, align 4, !dbg !2282
  %36 = load ptr, ptr %4, align 8, !dbg !2283
  %37 = getelementptr inbounds %"class.AP_HAL::OpticalFlow::Data_Frame", ptr %36, i32 0, i32 5, !dbg !2284
  store i8 %35, ptr %37, align 4, !dbg !2285
  %38 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %6, i32 0, i32 23, !dbg !2286
  store i32 0, ptr %38, align 8, !dbg !2287
  %39 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %6, i32 0, i32 19, !dbg !2288
  store float 0.000000e+00, ptr %39, align 8, !dbg !2289
  %40 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %6, i32 0, i32 20, !dbg !2290
  store float 0.000000e+00, ptr %40, align 4, !dbg !2291
  %41 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %6, i32 0, i32 21, !dbg !2292
  store float 0.000000e+00, ptr %41, align 8, !dbg !2293
  %42 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %6, i32 0, i32 22, !dbg !2294
  store float 0.000000e+00, ptr %42, align 4, !dbg !2295
  %43 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %6, i32 0, i32 9, !dbg !2296
  store i8 0, ptr %43, align 1, !dbg !2297
  store i8 1, ptr %5, align 1, !dbg !2298
  br label %44, !dbg !2299

44:                                               ; preds = %13, %12
  call void @llvm.dbg.label(metadata !2300), !dbg !2301
  %45 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %6, i32 0, i32 7, !dbg !2302
  %46 = call i32 @pthread_mutex_unlock(ptr noundef %45) #17, !dbg !2303
  %47 = load i8, ptr %5, align 1, !dbg !2304
  %48 = trunc i8 %47 to i1, !dbg !2304
  ret i1 %48, !dbg !2305
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN5Linux7VideoInC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 !dbg !2306 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2308, metadata !DIExpression()), !dbg !2309
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.Linux::VideoIn", ptr %3, i32 0, i32 0, !dbg !2310
  store i32 -1, ptr %4, align 8, !dbg !2310
  %5 = getelementptr inbounds %"class.Linux::VideoIn", ptr %3, i32 0, i32 9, !dbg !2311
  store i32 1, ptr %5, align 4, !dbg !2311
  ret void, !dbg !2312
}

declare noundef zeroext i1 @_ZN5Linux7VideoIn11open_deviceEPKcj(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef) #7

; Function Attrs: noreturn
declare void @_ZN6AP_HAL5panicEPKcz(ptr noundef, ...) #8

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIjSaIjEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 !dbg !2313 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2314, metadata !DIExpression()), !dbg !2315
  %3 = load ptr, ptr %2, align 8
  call void @_ZNSt12_Vector_baseIjSaIjEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #17, !dbg !2316
  ret void, !dbg !2317
}

declare void @_ZN5Linux7VideoIn17get_pixel_formatsEPSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) #7

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIjSaIjEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #1 comdat align 2 !dbg !2318 {
  %2 = alloca %"class.AP_HAL::OpticalFlow", align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2319, metadata !DIExpression()), !dbg !2320
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %"struct.std::_Vector_base", ptr %4, i32 0, i32 0, !dbg !2321
  %6 = getelementptr inbounds %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data", ptr %5, i32 0, i32 0, !dbg !2322
  call void @_ZN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %6) #17, !dbg !2323
  %7 = getelementptr inbounds %"class.AP_HAL::OpticalFlow", ptr %2, i32 0, i32 0, !dbg !2324
  %8 = load ptr, ptr %7, align 8, !dbg !2324
  ret ptr %8, !dbg !2324
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIjSaIjEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #1 comdat align 2 !dbg !2325 {
  %2 = alloca %"class.AP_HAL::OpticalFlow", align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2326, metadata !DIExpression()), !dbg !2327
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %"struct.std::_Vector_base", ptr %4, i32 0, i32 0, !dbg !2328
  %6 = getelementptr inbounds %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data", ptr %5, i32 0, i32 1, !dbg !2329
  call void @_ZN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %6) #17, !dbg !2330
  %7 = getelementptr inbounds %"class.AP_HAL::OpticalFlow", ptr %2, i32 0, i32 0, !dbg !2331
  %8 = load ptr, ptr %7, align 8, !dbg !2331
  ret ptr %8, !dbg !2331
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxxneIPjSt6vectorIjSaIjEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #1 comdat !dbg !2332 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2336, metadata !DIExpression()), !dbg !2337
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2338, metadata !DIExpression()), !dbg !2339
  %5 = load ptr, ptr %3, align 8, !dbg !2340
  %6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #17, !dbg !2341
  %7 = load ptr, ptr %6, align 8, !dbg !2341
  %8 = load ptr, ptr %4, align 8, !dbg !2342
  %9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #17, !dbg !2343
  %10 = load ptr, ptr %9, align 8, !dbg !2343
  %11 = icmp ne ptr %7, %10, !dbg !2344
  ret i1 %11, !dbg !2345
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #1 comdat align 2 !dbg !2346 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2347, metadata !DIExpression()), !dbg !2349
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.AP_HAL::OpticalFlow", ptr %3, i32 0, i32 0, !dbg !2350
  %5 = load ptr, ptr %4, align 8, !dbg !2350
  ret ptr %5, !dbg !2351
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #1 comdat align 2 !dbg !2352 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2353, metadata !DIExpression()), !dbg !2355
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.AP_HAL::OpticalFlow", ptr %3, i32 0, i32 0, !dbg !2356
  %5 = load ptr, ptr %4, align 8, !dbg !2357
  %6 = getelementptr inbounds i32, ptr %5, i32 1, !dbg !2357
  store ptr %6, ptr %4, align 8, !dbg !2357
  ret ptr %3, !dbg !2358
}

declare noundef zeroext i1 @_ZN5Linux7VideoIn10set_formatEPjS1_S1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #7

declare noundef zeroext i1 @_ZN5Linux7VideoIn8set_cropEjjjj(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, i32 noundef, i32 noundef, i32 noundef) #7

declare noundef zeroext i1 @_ZN5Linux7VideoIn16allocate_buffersEj(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) #7

declare void @_ZN5Linux7VideoIn15prepare_captureEv(ptr noundef nonnull align 8 dereferenceable(48)) #7

declare void @_ZN5Linux8Flow_PX4C1Ejjjff(ptr noundef nonnull align 4 dereferenceable(27), i32 noundef, i32 noundef, i32 noundef, float noundef, float noundef) unnamed_addr #7

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) #9

; Function Attrs: nounwind
declare i32 @pthread_attr_init(ptr noundef) #3

; Function Attrs: nounwind
declare i32 @pthread_attr_setinheritsched(ptr noundef, i32 noundef) #3

; Function Attrs: nounwind
declare i32 @pthread_attr_setschedpolicy(ptr noundef, i32 noundef) #3

; Function Attrs: nounwind
declare i32 @pthread_attr_setschedparam(ptr noundef, ptr noundef) #3

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef ptr @_ZN5Linux19OpticalFlow_Onboard12_read_threadEPv(ptr noundef %0) #0 align 2 !dbg !2359 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2360, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2362, metadata !DIExpression()), !dbg !2363
  %4 = load ptr, ptr %2, align 8, !dbg !2364
  store ptr %4, ptr %3, align 8, !dbg !2363
  %5 = load ptr, ptr %3, align 8, !dbg !2365
  call void @_ZN5Linux19OpticalFlow_Onboard12_run_optflowEv(ptr noundef nonnull align 8 dereferenceable(196) %5), !dbg !2366
  ret ptr null, !dbg !2367
}

; Function Attrs: nounwind
declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIjSaIjEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !dbg !2368 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2369, metadata !DIExpression()), !dbg !2370
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base", ptr %3, i32 0, i32 0, !dbg !2371
  %5 = getelementptr inbounds %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data", ptr %4, i32 0, i32 0, !dbg !2373
  %6 = load ptr, ptr %5, align 8, !dbg !2373
  %7 = getelementptr inbounds %"struct.std::_Vector_base", ptr %3, i32 0, i32 0, !dbg !2374
  %8 = getelementptr inbounds %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data", ptr %7, i32 0, i32 1, !dbg !2375
  %9 = load ptr, ptr %8, align 8, !dbg !2375
  %10 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #17, !dbg !2376
  invoke void @_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E(ptr noundef %6, ptr noundef %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %11 unwind label %12, !dbg !2377

11:                                               ; preds = %1
  call void @_ZNSt12_Vector_baseIjSaIjEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #17, !dbg !2378
  ret void, !dbg !2379

12:                                               ; preds = %1
  %13 = landingpad { ptr, i32 }
          catch ptr null, !dbg !2377
  %14 = extractvalue { ptr, i32 } %13, 0, !dbg !2377
  call void @__clang_call_terminate(ptr %14) #20, !dbg !2377
  unreachable, !dbg !2377
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #1 comdat align 2 !dbg !2380 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2381, metadata !DIExpression()), !dbg !2383
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base", ptr %3, i32 0, i32 0, !dbg !2384
  ret ptr %4, !dbg !2385
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #0 comdat !dbg !2386 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2391, metadata !DIExpression()), !dbg !2392
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2393, metadata !DIExpression()), !dbg !2394
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2395, metadata !DIExpression()), !dbg !2396
  %7 = load ptr, ptr %4, align 8, !dbg !2397
  %8 = load ptr, ptr %5, align 8, !dbg !2398
  call void @_ZSt8_DestroyIPjEvT_S1_(ptr noundef %7, ptr noundef %8), !dbg !2399
  ret void, !dbg !2400
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIjSaIjEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !dbg !2401 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2402, metadata !DIExpression()), !dbg !2403
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base", ptr %3, i32 0, i32 0, !dbg !2404
  %5 = getelementptr inbounds %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data", ptr %4, i32 0, i32 0, !dbg !2406
  %6 = load ptr, ptr %5, align 8, !dbg !2406
  %7 = getelementptr inbounds %"struct.std::_Vector_base", ptr %3, i32 0, i32 0, !dbg !2407
  %8 = getelementptr inbounds %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data", ptr %7, i32 0, i32 2, !dbg !2408
  %9 = load ptr, ptr %8, align 8, !dbg !2408
  %10 = getelementptr inbounds %"struct.std::_Vector_base", ptr %3, i32 0, i32 0, !dbg !2409
  %11 = getelementptr inbounds %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data", ptr %10, i32 0, i32 0, !dbg !2410
  %12 = load ptr, ptr %11, align 8, !dbg !2410
  %13 = ptrtoint ptr %9 to i64, !dbg !2411
  %14 = ptrtoint ptr %12 to i64, !dbg !2411
  %15 = sub i64 %13, %14, !dbg !2411
  %16 = sdiv exact i64 %15, 4, !dbg !2411
  invoke void @_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %6, i64 noundef %16)
          to label %17 unwind label %19, !dbg !2412

17:                                               ; preds = %1
  %18 = getelementptr inbounds %"struct.std::_Vector_base", ptr %3, i32 0, i32 0, !dbg !2413
  call void @_ZNSt12_Vector_baseIjSaIjEE12_Vector_implD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %18) #17, !dbg !2413
  ret void, !dbg !2414

19:                                               ; preds = %1
  %20 = landingpad { ptr, i32 }
          catch ptr null, !dbg !2412
  %21 = extractvalue { ptr, i32 } %20, 0, !dbg !2412
  call void @__clang_call_terminate(ptr %21) #20, !dbg !2412
  unreachable, !dbg !2412
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) #10 comdat {
  %2 = call ptr @__cxa_begin_catch(ptr %0) #17
  call void @_ZSt9terminatev() #20
  unreachable
}

declare ptr @__cxa_begin_catch(ptr)

declare void @_ZSt9terminatev()

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) #0 comdat align 2 !dbg !2415 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2416, metadata !DIExpression()), !dbg !2417
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2418, metadata !DIExpression()), !dbg !2419
  store i64 %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2420, metadata !DIExpression()), !dbg !2421
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8, !dbg !2422
  %9 = icmp ne ptr %8, null, !dbg !2422
  br i1 %9, label %10, label %14, !dbg !2424

10:                                               ; preds = %3
  %11 = getelementptr inbounds %"struct.std::_Vector_base", ptr %7, i32 0, i32 0, !dbg !2425
  %12 = load ptr, ptr %5, align 8, !dbg !2426
  %13 = load i64, ptr %6, align 8, !dbg !2427
  call void @_ZNSt16allocator_traitsISaIjEE10deallocateERS0_Pjm(ptr noundef nonnull align 1 dereferenceable(1) %11, ptr noundef %12, i64 noundef %13), !dbg !2428
  br label %14, !dbg !2428

14:                                               ; preds = %10, %3
  ret void, !dbg !2429
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIjSaIjEE12_Vector_implD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 !dbg !2430 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2432, metadata !DIExpression()), !dbg !2434
  %3 = load ptr, ptr %2, align 8
  call void @_ZNSaIjED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #17, !dbg !2435
  ret void, !dbg !2437
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaIjED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #6 comdat align 2 !dbg !2438 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2439, metadata !DIExpression()), !dbg !2441
  %3 = load ptr, ptr %2, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIjED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #17, !dbg !2442
  ret void, !dbg !2444
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIjED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #6 comdat align 2 !dbg !2445 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2446, metadata !DIExpression()), !dbg !2448
  %3 = load ptr, ptr %2, align 8
  ret void, !dbg !2449
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIjEE10deallocateERS0_Pjm(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #0 comdat align 2 !dbg !2450 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2451, metadata !DIExpression()), !dbg !2452
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2453, metadata !DIExpression()), !dbg !2454
  store i64 %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2455, metadata !DIExpression()), !dbg !2456
  %7 = load ptr, ptr %4, align 8, !dbg !2457
  %8 = load ptr, ptr %5, align 8, !dbg !2458
  %9 = load i64, ptr %6, align 8, !dbg !2459
  call void @_ZN9__gnu_cxx13new_allocatorIjE10deallocateEPjm(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef %8, i64 noundef %9), !dbg !2460
  ret void, !dbg !2461
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIjE10deallocateEPjm(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #1 comdat align 2 !dbg !2462 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2463, metadata !DIExpression()), !dbg !2464
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2465, metadata !DIExpression()), !dbg !2466
  store i64 %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2467, metadata !DIExpression()), !dbg !2468
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8, !dbg !2469
  call void @_ZdlPv(ptr noundef %8) #17, !dbg !2470
  ret void, !dbg !2471
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPjEvT_S1_(ptr noundef %0, ptr noundef %1) #0 comdat !dbg !2472 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2477, metadata !DIExpression()), !dbg !2478
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2479, metadata !DIExpression()), !dbg !2480
  %5 = load ptr, ptr %3, align 8, !dbg !2481
  %6 = load ptr, ptr %4, align 8, !dbg !2482
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPjEEvT_S3_(ptr noundef %5, ptr noundef %6), !dbg !2483
  ret void, !dbg !2484
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPjEEvT_S3_(ptr noundef %0, ptr noundef %1) #1 comdat align 2 !dbg !2485 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2490, metadata !DIExpression()), !dbg !2491
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2492, metadata !DIExpression()), !dbg !2493
  ret void, !dbg !2494
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN5Linux19OpticalFlow_Onboard12_run_optflowEv(ptr noundef nonnull align 8 dereferenceable(196) %0) #0 align 2 !dbg !2495 {
  %2 = alloca ptr, align 8
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca %class.Vector3, align 4
  %7 = alloca %struct.Vector2, align 4
  %8 = alloca %"class.Linux::VideoIn::Frame", align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca i8, align 1
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2496, metadata !DIExpression()), !dbg !2497
  %21 = load ptr, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2498, metadata !DIExpression()), !dbg !2499
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2500, metadata !DIExpression()), !dbg !2501
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2502, metadata !DIExpression()), !dbg !2503
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2504, metadata !DIExpression()), !dbg !2505
  call void @_ZN7Vector3IfEC2Ev(ptr noundef nonnull align 4 dereferenceable(12) %6), !dbg !2505
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2506, metadata !DIExpression()), !dbg !2508
  call void @_ZN7Vector2IfEC2Ev(ptr noundef nonnull align 4 dereferenceable(8) %7), !dbg !2508
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2509, metadata !DIExpression()), !dbg !2510
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2511, metadata !DIExpression()), !dbg !2512
  store i32 0, ptr %9, align 4, !dbg !2512
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2513, metadata !DIExpression()), !dbg !2514
  store i32 0, ptr %10, align 4, !dbg !2514
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2515, metadata !DIExpression()), !dbg !2516
  store i32 0, ptr %11, align 4, !dbg !2516
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2517, metadata !DIExpression()), !dbg !2518
  store i32 0, ptr %12, align 4, !dbg !2518
  call void @llvm.dbg.declare(metadata ptr %13, metadata !2519, metadata !DIExpression()), !dbg !2520
  store i32 0, ptr %13, align 4, !dbg !2520
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2521, metadata !DIExpression()), !dbg !2522
  store i32 0, ptr %14, align 4, !dbg !2522
  call void @llvm.dbg.declare(metadata ptr %15, metadata !2523, metadata !DIExpression()), !dbg !2524
  store i32 0, ptr %15, align 4, !dbg !2524
  call void @llvm.dbg.declare(metadata ptr %16, metadata !2525, metadata !DIExpression()), !dbg !2526
  store i32 0, ptr %16, align 4, !dbg !2526
  call void @llvm.dbg.declare(metadata ptr %17, metadata !2527, metadata !DIExpression()), !dbg !2528
  store i32 0, ptr %17, align 4, !dbg !2528
  call void @llvm.dbg.declare(metadata ptr %18, metadata !2529, metadata !DIExpression()), !dbg !2530
  store ptr null, ptr %18, align 8, !dbg !2530
  call void @llvm.dbg.declare(metadata ptr %19, metadata !2531, metadata !DIExpression()), !dbg !2532
  store ptr null, ptr %19, align 8, !dbg !2532
  call void @llvm.dbg.declare(metadata ptr %20, metadata !2533, metadata !DIExpression()), !dbg !2534
  %22 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 16, !dbg !2535
  %23 = load i32, ptr %22, align 4, !dbg !2535
  %24 = icmp eq i32 %23, 1448695129, !dbg !2537
  br i1 %24, label %25, label %53, !dbg !2538

25:                                               ; preds = %1
  %26 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 11, !dbg !2539
  %27 = load i8, ptr %26, align 1, !dbg !2539
  %28 = trunc i8 %27 to i1, !dbg !2539
  br i1 %28, label %33, label %29, !dbg !2542

29:                                               ; preds = %25
  %30 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 10, !dbg !2543
  %31 = load i8, ptr %30, align 2, !dbg !2543
  %32 = trunc i8 %31 to i1, !dbg !2543
  br i1 %32, label %33, label %39, !dbg !2544

33:                                               ; preds = %29, %25
  %34 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 12, !dbg !2545
  %35 = load i32, ptr %34, align 4, !dbg !2545
  %36 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 13, !dbg !2547
  %37 = load i32, ptr %36, align 8, !dbg !2547
  %38 = mul i32 %35, %37, !dbg !2548
  store i32 %38, ptr %9, align 4, !dbg !2549
  br label %45, !dbg !2550

39:                                               ; preds = %29
  %40 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 14, !dbg !2551
  %41 = load i32, ptr %40, align 4, !dbg !2551
  %42 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 15, !dbg !2553
  %43 = load i32, ptr %42, align 8, !dbg !2553
  %44 = mul i32 %41, %43, !dbg !2554
  store i32 %44, ptr %9, align 4, !dbg !2555
  br label %45

45:                                               ; preds = %39, %33
  %46 = load i32, ptr %9, align 4, !dbg !2556
  %47 = zext i32 %46 to i64, !dbg !2556
  %48 = call noalias ptr @malloc(i64 noundef %47) #21, !dbg !2557
  store ptr %48, ptr %18, align 8, !dbg !2558
  %49 = load ptr, ptr %18, align 8, !dbg !2559
  %50 = icmp ne ptr %49, null, !dbg !2559
  br i1 %50, label %52, label %51, !dbg !2561

51:                                               ; preds = %45
  call void (ptr, ...) @_ZN6AP_HAL5panicEPKcz(ptr noundef @.str.8) #18, !dbg !2562
  unreachable, !dbg !2562

52:                                               ; preds = %45
  br label %53, !dbg !2564

53:                                               ; preds = %52, %1
  %54 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 11, !dbg !2565
  %55 = load i8, ptr %54, align 1, !dbg !2565
  %56 = trunc i8 %55 to i1, !dbg !2565
  br i1 %56, label %61, label %57, !dbg !2567

57:                                               ; preds = %53
  %58 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 10, !dbg !2568
  %59 = load i8, ptr %58, align 2, !dbg !2568
  %60 = trunc i8 %59 to i1, !dbg !2568
  br i1 %60, label %61, label %74, !dbg !2569

61:                                               ; preds = %57, %53
  store i32 4096, ptr %10, align 4, !dbg !2570
  %62 = load i32, ptr %10, align 4, !dbg !2572
  %63 = zext i32 %62 to i64, !dbg !2572
  %64 = call noalias ptr @malloc(i64 noundef %63) #21, !dbg !2573
  store ptr %64, ptr %19, align 8, !dbg !2574
  %65 = load ptr, ptr %19, align 8, !dbg !2575
  %66 = icmp ne ptr %65, null, !dbg !2575
  br i1 %66, label %73, label %67, !dbg !2577

67:                                               ; preds = %61
  %68 = load ptr, ptr %18, align 8, !dbg !2578
  %69 = icmp ne ptr %68, null, !dbg !2578
  br i1 %69, label %70, label %72, !dbg !2581

70:                                               ; preds = %67
  %71 = load ptr, ptr %18, align 8, !dbg !2582
  call void @free(ptr noundef %71) #17, !dbg !2584
  br label %72, !dbg !2585

72:                                               ; preds = %70, %67
  call void (ptr, ...) @_ZN6AP_HAL5panicEPKcz(ptr noundef @.str.9) #18, !dbg !2586
  unreachable, !dbg !2586

73:                                               ; preds = %61
  br label %74, !dbg !2587

74:                                               ; preds = %73, %57
  %75 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 11, !dbg !2588
  %76 = load i8, ptr %75, align 1, !dbg !2588
  %77 = trunc i8 %76 to i1, !dbg !2588
  br i1 %77, label %78, label %107, !dbg !2590

78:                                               ; preds = %74
  %79 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 12, !dbg !2591
  %80 = load i32, ptr %79, align 4, !dbg !2591
  %81 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 13, !dbg !2594
  %82 = load i32, ptr %81, align 8, !dbg !2594
  %83 = icmp ugt i32 %80, %82, !dbg !2595
  br i1 %83, label %84, label %88, !dbg !2596

84:                                               ; preds = %78
  %85 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 13, !dbg !2597
  %86 = load i32, ptr %85, align 8, !dbg !2597
  %87 = udiv i32 %86, 64, !dbg !2599
  store i32 %87, ptr %13, align 4, !dbg !2600
  br label %92, !dbg !2601

88:                                               ; preds = %78
  %89 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 12, !dbg !2602
  %90 = load i32, ptr %89, align 4, !dbg !2602
  %91 = udiv i32 %90, 64, !dbg !2604
  store i32 %91, ptr %13, align 4, !dbg !2605
  br label %92

92:                                               ; preds = %88, %84
  %93 = load i32, ptr %13, align 4, !dbg !2606
  %94 = mul i32 64, %93, !dbg !2607
  store i32 %94, ptr %14, align 4, !dbg !2608
  %95 = load i32, ptr %13, align 4, !dbg !2609
  %96 = mul i32 64, %95, !dbg !2610
  store i32 %96, ptr %15, align 4, !dbg !2611
  %97 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 12, !dbg !2612
  %98 = load i32, ptr %97, align 4, !dbg !2612
  %99 = load i32, ptr %14, align 4, !dbg !2613
  %100 = sub i32 %98, %99, !dbg !2614
  %101 = udiv i32 %100, 2, !dbg !2615
  store i32 %101, ptr %16, align 4, !dbg !2616
  %102 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 13, !dbg !2617
  %103 = load i32, ptr %102, align 8, !dbg !2617
  %104 = load i32, ptr %15, align 4, !dbg !2618
  %105 = sub i32 %103, %104, !dbg !2619
  %106 = udiv i32 %105, 2, !dbg !2620
  store i32 %106, ptr %17, align 4, !dbg !2621
  br label %121, !dbg !2622

107:                                              ; preds = %74
  %108 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 10, !dbg !2623
  %109 = load i8, ptr %108, align 2, !dbg !2623
  %110 = trunc i8 %109 to i1, !dbg !2623
  br i1 %110, label %111, label %120, !dbg !2625

111:                                              ; preds = %107
  %112 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 12, !dbg !2626
  %113 = load i32, ptr %112, align 4, !dbg !2626
  %114 = udiv i32 %113, 2, !dbg !2628
  %115 = sub i32 %114, 32, !dbg !2629
  store i32 %115, ptr %11, align 4, !dbg !2630
  %116 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 13, !dbg !2631
  %117 = load i32, ptr %116, align 8, !dbg !2631
  %118 = udiv i32 %117, 2, !dbg !2632
  %119 = sub i32 %118, 32, !dbg !2633
  store i32 %119, ptr %12, align 4, !dbg !2634
  br label %120, !dbg !2635

120:                                              ; preds = %111, %107
  br label %121

121:                                              ; preds = %120, %92
  br label %122, !dbg !2636

122:                                              ; preds = %221, %219, %121
  %123 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 1, !dbg !2637
  %124 = load ptr, ptr %123, align 8, !dbg !2637
  %125 = call noundef zeroext i1 @_ZN5Linux7VideoIn9get_frameERNS0_5FrameE(ptr noundef nonnull align 8 dereferenceable(48) %124, ptr noundef nonnull align 8 dereferenceable(20) %8), !dbg !2640
  br i1 %125, label %137, label %126, !dbg !2641

126:                                              ; preds = %122
  %127 = load ptr, ptr %18, align 8, !dbg !2642
  %128 = icmp ne ptr %127, null, !dbg !2642
  br i1 %128, label %129, label %131, !dbg !2645

129:                                              ; preds = %126
  %130 = load ptr, ptr %18, align 8, !dbg !2646
  call void @free(ptr noundef %130) #17, !dbg !2648
  br label %131, !dbg !2649

131:                                              ; preds = %129, %126
  %132 = load ptr, ptr %19, align 8, !dbg !2650
  %133 = icmp ne ptr %132, null, !dbg !2650
  br i1 %133, label %134, label %136, !dbg !2652

134:                                              ; preds = %131
  %135 = load ptr, ptr %19, align 8, !dbg !2653
  call void @free(ptr noundef %135) #17, !dbg !2655
  br label %136, !dbg !2656

136:                                              ; preds = %134, %131
  call void (ptr, ...) @_ZN6AP_HAL5panicEPKcz(ptr noundef @.str.10) #18, !dbg !2657
  unreachable, !dbg !2657

137:                                              ; preds = %122
  %138 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 16, !dbg !2658
  %139 = load i32, ptr %138, align 4, !dbg !2658
  %140 = icmp eq i32 %139, 1448695129, !dbg !2660
  br i1 %140, label %141, label %157, !dbg !2661

141:                                              ; preds = %137
  %142 = getelementptr inbounds %"class.Linux::VideoIn::Frame", ptr %8, i32 0, i32 2, !dbg !2662
  %143 = load ptr, ptr %142, align 8, !dbg !2662
  %144 = load i32, ptr %9, align 4, !dbg !2664
  %145 = mul i32 %144, 2, !dbg !2665
  %146 = load ptr, ptr %18, align 8, !dbg !2666
  call void @_ZN5Linux7VideoIn12yuyv_to_greyEPhjS1_(ptr noundef %143, i32 noundef %145, ptr noundef %146), !dbg !2667
  %147 = getelementptr inbounds %"class.Linux::VideoIn::Frame", ptr %8, i32 0, i32 2, !dbg !2668
  %148 = load ptr, ptr %147, align 8, !dbg !2668
  %149 = load i32, ptr %9, align 4, !dbg !2669
  %150 = mul i32 %149, 2, !dbg !2670
  %151 = zext i32 %150 to i64, !dbg !2669
  call void @llvm.memset.p0.i64(ptr align 1 %148, i8 0, i64 %151, i1 false), !dbg !2671
  %152 = getelementptr inbounds %"class.Linux::VideoIn::Frame", ptr %8, i32 0, i32 2, !dbg !2672
  %153 = load ptr, ptr %152, align 8, !dbg !2672
  %154 = load ptr, ptr %18, align 8, !dbg !2673
  %155 = load i32, ptr %9, align 4, !dbg !2674
  %156 = zext i32 %155 to i64, !dbg !2674
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %153, ptr align 1 %154, i64 %156, i1 false), !dbg !2675
  br label %157, !dbg !2676

157:                                              ; preds = %141, %137
  %158 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 11, !dbg !2677
  %159 = load i8, ptr %158, align 1, !dbg !2677
  %160 = trunc i8 %159 to i1, !dbg !2677
  br i1 %160, label %161, label %188, !dbg !2679

161:                                              ; preds = %157
  %162 = getelementptr inbounds %"class.Linux::VideoIn::Frame", ptr %8, i32 0, i32 2, !dbg !2680
  %163 = load ptr, ptr %162, align 8, !dbg !2680
  %164 = load ptr, ptr %19, align 8, !dbg !2682
  %165 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 12, !dbg !2683
  %166 = load i32, ptr %165, align 4, !dbg !2683
  %167 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 13, !dbg !2684
  %168 = load i32, ptr %167, align 8, !dbg !2684
  %169 = load i32, ptr %16, align 4, !dbg !2685
  %170 = load i32, ptr %14, align 4, !dbg !2686
  %171 = load i32, ptr %17, align 4, !dbg !2687
  %172 = load i32, ptr %15, align 4, !dbg !2688
  %173 = load i32, ptr %13, align 4, !dbg !2689
  %174 = load i32, ptr %13, align 4, !dbg !2690
  call void @_ZN5Linux7VideoIn11shrink_8bppEPhS1_jjjjjjjj(ptr noundef %163, ptr noundef %164, i32 noundef %166, i32 noundef %168, i32 noundef %169, i32 noundef %170, i32 noundef %171, i32 noundef %172, i32 noundef %173, i32 noundef %174), !dbg !2691
  %175 = getelementptr inbounds %"class.Linux::VideoIn::Frame", ptr %8, i32 0, i32 2, !dbg !2692
  %176 = load ptr, ptr %175, align 8, !dbg !2692
  %177 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 12, !dbg !2693
  %178 = load i32, ptr %177, align 4, !dbg !2693
  %179 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 13, !dbg !2694
  %180 = load i32, ptr %179, align 8, !dbg !2694
  %181 = mul i32 %178, %180, !dbg !2695
  %182 = zext i32 %181 to i64, !dbg !2693
  call void @llvm.memset.p0.i64(ptr align 1 %176, i8 0, i64 %182, i1 false), !dbg !2696
  %183 = getelementptr inbounds %"class.Linux::VideoIn::Frame", ptr %8, i32 0, i32 2, !dbg !2697
  %184 = load ptr, ptr %183, align 8, !dbg !2697
  %185 = load ptr, ptr %19, align 8, !dbg !2698
  %186 = load i32, ptr %10, align 4, !dbg !2699
  %187 = zext i32 %186 to i64, !dbg !2699
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %184, ptr align 1 %185, i64 %187, i1 false), !dbg !2700
  br label %214, !dbg !2701

188:                                              ; preds = %157
  %189 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 10, !dbg !2702
  %190 = load i8, ptr %189, align 2, !dbg !2702
  %191 = trunc i8 %190 to i1, !dbg !2702
  br i1 %191, label %192, label %213, !dbg !2704

192:                                              ; preds = %188
  %193 = getelementptr inbounds %"class.Linux::VideoIn::Frame", ptr %8, i32 0, i32 2, !dbg !2705
  %194 = load ptr, ptr %193, align 8, !dbg !2705
  %195 = load ptr, ptr %19, align 8, !dbg !2707
  %196 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 12, !dbg !2708
  %197 = load i32, ptr %196, align 4, !dbg !2708
  %198 = load i32, ptr %11, align 4, !dbg !2709
  %199 = load i32, ptr %12, align 4, !dbg !2710
  call void @_ZN5Linux7VideoIn9crop_8bppEPhS1_jjjjj(ptr noundef %194, ptr noundef %195, i32 noundef %197, i32 noundef %198, i32 noundef 64, i32 noundef %199, i32 noundef 64), !dbg !2711
  %200 = getelementptr inbounds %"class.Linux::VideoIn::Frame", ptr %8, i32 0, i32 2, !dbg !2712
  %201 = load ptr, ptr %200, align 8, !dbg !2712
  %202 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 12, !dbg !2713
  %203 = load i32, ptr %202, align 4, !dbg !2713
  %204 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 13, !dbg !2714
  %205 = load i32, ptr %204, align 8, !dbg !2714
  %206 = mul i32 %203, %205, !dbg !2715
  %207 = zext i32 %206 to i64, !dbg !2713
  call void @llvm.memset.p0.i64(ptr align 1 %201, i8 0, i64 %207, i1 false), !dbg !2716
  %208 = getelementptr inbounds %"class.Linux::VideoIn::Frame", ptr %8, i32 0, i32 2, !dbg !2717
  %209 = load ptr, ptr %208, align 8, !dbg !2717
  %210 = load ptr, ptr %19, align 8, !dbg !2718
  %211 = load i32, ptr %10, align 4, !dbg !2719
  %212 = zext i32 %211 to i64, !dbg !2719
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %209, ptr align 1 %210, i64 %212, i1 false), !dbg !2720
  br label %213, !dbg !2721

213:                                              ; preds = %192, %188
  br label %214

214:                                              ; preds = %213, %161
  %215 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 2, !dbg !2722
  %216 = getelementptr inbounds %"class.Linux::VideoIn::Frame", ptr %215, i32 0, i32 2, !dbg !2724
  %217 = load ptr, ptr %216, align 8, !dbg !2724
  %218 = icmp eq ptr %217, null, !dbg !2725
  br i1 %218, label %219, label %221, !dbg !2726

219:                                              ; preds = %214
  %220 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 2, !dbg !2727
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %220, ptr align 8 %8, i64 20, i1 false), !dbg !2729
  br label %122, !dbg !2730, !llvm.loop !2731

221:                                              ; preds = %214
  %222 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 26, !dbg !2734
  call void @_ZNK7FunctorIvJRfS0_S0_EEclES0_S0_S0_(ptr noundef nonnull align 8 dereferenceable(16) %222, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5), !dbg !2734
  %223 = load float, ptr %3, align 4, !dbg !2735
  %224 = getelementptr inbounds %class.Vector3, ptr %6, i32 0, i32 0, !dbg !2736
  store float %223, ptr %224, align 4, !dbg !2737
  %225 = load float, ptr %4, align 4, !dbg !2738
  %226 = getelementptr inbounds %class.Vector3, ptr %6, i32 0, i32 1, !dbg !2739
  store float %225, ptr %226, align 4, !dbg !2740
  %227 = load float, ptr %5, align 4, !dbg !2741
  %228 = getelementptr inbounds %class.Vector3, ptr %6, i32 0, i32 2, !dbg !2742
  store float %227, ptr %228, align 4, !dbg !2743
  %229 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 5, !dbg !2744
  %230 = load ptr, ptr %229, align 8, !dbg !2744
  %231 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 2, !dbg !2745
  %232 = getelementptr inbounds %"class.Linux::VideoIn::Frame", ptr %231, i32 0, i32 2, !dbg !2746
  %233 = load ptr, ptr %232, align 8, !dbg !2746
  %234 = getelementptr inbounds %"class.Linux::VideoIn::Frame", ptr %8, i32 0, i32 2, !dbg !2747
  %235 = load ptr, ptr %234, align 8, !dbg !2747
  %236 = getelementptr inbounds %"class.Linux::VideoIn::Frame", ptr %8, i32 0, i32 0, !dbg !2748
  %237 = load i32, ptr %236, align 8, !dbg !2748
  %238 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 2, !dbg !2749
  %239 = getelementptr inbounds %"class.Linux::VideoIn::Frame", ptr %238, i32 0, i32 0, !dbg !2750
  %240 = load i32, ptr %239, align 8, !dbg !2750
  %241 = sub i32 %237, %240, !dbg !2751
  %242 = getelementptr inbounds %struct.Vector2, ptr %7, i32 0, i32 0, !dbg !2752
  %243 = getelementptr inbounds %struct.Vector2, ptr %7, i32 0, i32 1, !dbg !2753
  %244 = call noundef zeroext i8 @_ZN5Linux8Flow_PX412compute_flowEPhS1_jPfS2_(ptr noundef nonnull align 4 dereferenceable(27) %230, ptr noundef %233, ptr noundef %235, i32 noundef %241, ptr noundef %242, ptr noundef %243), !dbg !2754
  store i8 %244, ptr %20, align 1, !dbg !2755
  %245 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 7, !dbg !2756
  %246 = call i32 @pthread_mutex_lock(ptr noundef %245) #17, !dbg !2757
  %247 = getelementptr inbounds %struct.Vector2, ptr %7, i32 0, i32 0, !dbg !2758
  %248 = load float, ptr %247, align 4, !dbg !2758
  %249 = fpext float %248 to double, !dbg !2759
  %250 = fdiv double %249, 0x3FC8618618618618, !dbg !2760
  %251 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 19, !dbg !2761
  %252 = load float, ptr %251, align 8, !dbg !2762
  %253 = fpext float %252 to double, !dbg !2762
  %254 = fadd double %253, %250, !dbg !2762
  %255 = fptrunc double %254 to float, !dbg !2762
  store float %255, ptr %251, align 8, !dbg !2762
  %256 = getelementptr inbounds %struct.Vector2, ptr %7, i32 0, i32 1, !dbg !2763
  %257 = load float, ptr %256, align 4, !dbg !2763
  %258 = fpext float %257 to double, !dbg !2764
  %259 = fdiv double %258, 0x3FC8618618618618, !dbg !2765
  %260 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 20, !dbg !2766
  %261 = load float, ptr %260, align 4, !dbg !2767
  %262 = fpext float %261 to double, !dbg !2767
  %263 = fadd double %262, %259, !dbg !2767
  %264 = fptrunc double %263 to float, !dbg !2767
  store float %264, ptr %260, align 4, !dbg !2767
  %265 = getelementptr inbounds %"class.Linux::VideoIn::Frame", ptr %8, i32 0, i32 0, !dbg !2768
  %266 = load i32, ptr %265, align 8, !dbg !2768
  %267 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 2, !dbg !2769
  %268 = getelementptr inbounds %"class.Linux::VideoIn::Frame", ptr %267, i32 0, i32 0, !dbg !2770
  %269 = load i32, ptr %268, align 8, !dbg !2770
  %270 = sub i32 %266, %269, !dbg !2771
  %271 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 23, !dbg !2772
  %272 = load i32, ptr %271, align 8, !dbg !2773
  %273 = add i32 %272, %270, !dbg !2773
  store i32 %273, ptr %271, align 8, !dbg !2773
  %274 = getelementptr inbounds %class.Vector3, ptr %6, i32 0, i32 0, !dbg !2774
  %275 = load float, ptr %274, align 4, !dbg !2774
  %276 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 27, !dbg !2775
  %277 = getelementptr inbounds %class.Vector3, ptr %276, i32 0, i32 0, !dbg !2776
  %278 = load float, ptr %277, align 8, !dbg !2776
  %279 = fadd float %275, %278, !dbg !2777
  %280 = fdiv float %279, 2.000000e+00, !dbg !2778
  %281 = getelementptr inbounds %"class.Linux::VideoIn::Frame", ptr %8, i32 0, i32 0, !dbg !2779
  %282 = load i32, ptr %281, align 8, !dbg !2779
  %283 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 2, !dbg !2780
  %284 = getelementptr inbounds %"class.Linux::VideoIn::Frame", ptr %283, i32 0, i32 0, !dbg !2781
  %285 = load i32, ptr %284, align 8, !dbg !2781
  %286 = sub i32 %282, %285, !dbg !2782
  %287 = uitofp i32 %286 to float, !dbg !2783
  %288 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 21, !dbg !2784
  %289 = load float, ptr %288, align 8, !dbg !2785
  %290 = call float @llvm.fmuladd.f32(float %280, float %287, float %289), !dbg !2785
  store float %290, ptr %288, align 8, !dbg !2785
  %291 = getelementptr inbounds %class.Vector3, ptr %6, i32 0, i32 1, !dbg !2786
  %292 = load float, ptr %291, align 4, !dbg !2786
  %293 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 27, !dbg !2787
  %294 = getelementptr inbounds %class.Vector3, ptr %293, i32 0, i32 1, !dbg !2788
  %295 = load float, ptr %294, align 4, !dbg !2788
  %296 = fadd float %292, %295, !dbg !2789
  %297 = fdiv float %296, 2.000000e+00, !dbg !2790
  %298 = getelementptr inbounds %"class.Linux::VideoIn::Frame", ptr %8, i32 0, i32 0, !dbg !2791
  %299 = load i32, ptr %298, align 8, !dbg !2791
  %300 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 2, !dbg !2792
  %301 = getelementptr inbounds %"class.Linux::VideoIn::Frame", ptr %300, i32 0, i32 0, !dbg !2793
  %302 = load i32, ptr %301, align 8, !dbg !2793
  %303 = sub i32 %299, %302, !dbg !2794
  %304 = uitofp i32 %303 to float, !dbg !2795
  %305 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 22, !dbg !2796
  %306 = load float, ptr %305, align 4, !dbg !2797
  %307 = call float @llvm.fmuladd.f32(float %297, float %304, float %306), !dbg !2797
  store float %307, ptr %305, align 4, !dbg !2797
  %308 = load i8, ptr %20, align 1, !dbg !2798
  %309 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 24, !dbg !2799
  store i8 %308, ptr %309, align 4, !dbg !2800
  %310 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 9, !dbg !2801
  store i8 1, ptr %310, align 1, !dbg !2802
  %311 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 7, !dbg !2803
  %312 = call i32 @pthread_mutex_unlock(ptr noundef %311) #17, !dbg !2804
  %313 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 1, !dbg !2805
  %314 = load ptr, ptr %313, align 8, !dbg !2805
  %315 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 2, !dbg !2806
  call void @_ZN5Linux7VideoIn9put_frameERNS0_5FrameE(ptr noundef nonnull align 8 dereferenceable(48) %314, ptr noundef nonnull align 8 dereferenceable(20) %315), !dbg !2807
  %316 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 2, !dbg !2808
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %316, ptr align 8 %8, i64 20, i1 false), !dbg !2809
  %317 = getelementptr inbounds %"class.Linux::OpticalFlow_Onboard", ptr %21, i32 0, i32 27, !dbg !2810
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %317, ptr align 4 %6, i64 12, i1 false), !dbg !2811
  br label %122, !dbg !2636, !llvm.loop !2731
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7Vector3IfEC2Ev(ptr noundef nonnull align 4 dereferenceable(12) %0) unnamed_addr #6 comdat align 2 !dbg !2812 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2813, metadata !DIExpression()), !dbg !2815
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %class.Vector3, ptr %3, i32 0, i32 2, !dbg !2816
  store float 0.000000e+00, ptr %4, align 4, !dbg !2818
  %5 = getelementptr inbounds %class.Vector3, ptr %3, i32 0, i32 1, !dbg !2819
  store float 0.000000e+00, ptr %5, align 4, !dbg !2820
  %6 = getelementptr inbounds %class.Vector3, ptr %3, i32 0, i32 0, !dbg !2821
  store float 0.000000e+00, ptr %6, align 4, !dbg !2822
  ret void, !dbg !2823
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7Vector2IfEC2Ev(ptr noundef nonnull align 4 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 !dbg !2824 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2825, metadata !DIExpression()), !dbg !2827
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.Vector2, ptr %3, i32 0, i32 1, !dbg !2828
  store float 0.000000e+00, ptr %4, align 4, !dbg !2830
  %5 = getelementptr inbounds %struct.Vector2, ptr %3, i32 0, i32 0, !dbg !2831
  store float 0.000000e+00, ptr %5, align 4, !dbg !2832
  ret void, !dbg !2833
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #11

; Function Attrs: nounwind
declare void @free(ptr noundef) #3

declare noundef zeroext i1 @_ZN5Linux7VideoIn9get_frameERNS0_5FrameE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(20)) #7

declare void @_ZN5Linux7VideoIn12yuyv_to_greyEPhjS1_(ptr noundef, i32 noundef, ptr noundef) #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

declare void @_ZN5Linux7VideoIn11shrink_8bppEPhS1_jjjjjjjj(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #7

declare void @_ZN5Linux7VideoIn9crop_8bppEPhS1_jjjjj(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #7

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNK7FunctorIvJRfS0_S0_EEclES0_S0_S0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) #0 comdat align 2 !dbg !2834 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2835, metadata !DIExpression()), !dbg !2837
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2838, metadata !DIExpression()), !dbg !2839
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2840, metadata !DIExpression()), !dbg !2839
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2841, metadata !DIExpression()), !dbg !2839
  %9 = load ptr, ptr %5, align 8
  %10 = getelementptr inbounds %struct.__pthread_internal_list, ptr %9, i32 0, i32 1, !dbg !2842
  %11 = load ptr, ptr %10, align 8, !dbg !2842
  %12 = getelementptr inbounds %struct.__pthread_internal_list, ptr %9, i32 0, i32 0, !dbg !2843
  %13 = load ptr, ptr %12, align 8, !dbg !2843
  %14 = load ptr, ptr %6, align 8, !dbg !2844
  %15 = load ptr, ptr %7, align 8, !dbg !2844
  %16 = load ptr, ptr %8, align 8, !dbg !2844
  call void %11(ptr noundef %13, ptr noundef nonnull align 4 dereferenceable(4) %14, ptr noundef nonnull align 4 dereferenceable(4) %15, ptr noundef nonnull align 4 dereferenceable(4) %16), !dbg !2842
  ret void, !dbg !2845
}

declare noundef zeroext i8 @_ZN5Linux8Flow_PX412compute_flowEPhS1_jPfS2_(ptr noundef nonnull align 4 dereferenceable(27), ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

declare void @_ZN5Linux7VideoIn9put_frameERNS0_5FrameE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(20)) #7

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #1 comdat align 2 !dbg !2846 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2847, metadata !DIExpression()), !dbg !2848
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.AP_HAL::OpticalFlow", ptr %3, i32 0, i32 0, !dbg !2849
  ret ptr %4, !dbg !2850
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #6 comdat align 2 !dbg !2851 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2852, metadata !DIExpression()), !dbg !2853
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2854, metadata !DIExpression()), !dbg !2855
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"class.AP_HAL::OpticalFlow", ptr %5, i32 0, i32 0, !dbg !2856
  %7 = load ptr, ptr %4, align 8, !dbg !2857
  %8 = load ptr, ptr %7, align 8, !dbg !2857
  store ptr %8, ptr %6, align 8, !dbg !2856
  ret void, !dbg !2858
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIjSaIjEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 !dbg !2859 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2860, metadata !DIExpression()), !dbg !2861
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base", ptr %3, i32 0, i32 0, !dbg !2862
  call void @_ZNSt12_Vector_baseIjSaIjEE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #17, !dbg !2862
  ret void, !dbg !2863
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIjSaIjEE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 !dbg !2864 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2865, metadata !DIExpression()), !dbg !2866
  %3 = load ptr, ptr %2, align 8
  call void @_ZNSaIjEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #17, !dbg !2867
  call void @_ZNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #17, !dbg !2868
  ret void, !dbg !2869
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaIjEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #6 comdat align 2 !dbg !2870 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2871, metadata !DIExpression()), !dbg !2872
  %3 = load ptr, ptr %2, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIjEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #17, !dbg !2873
  ret void, !dbg !2874
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 !dbg !2875 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2876, metadata !DIExpression()), !dbg !2878
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data", ptr %3, i32 0, i32 0, !dbg !2879
  store ptr null, ptr %4, align 8, !dbg !2879
  %5 = getelementptr inbounds %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data", ptr %3, i32 0, i32 1, !dbg !2880
  store ptr null, ptr %5, align 8, !dbg !2880
  %6 = getelementptr inbounds %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data", ptr %3, i32 0, i32 2, !dbg !2881
  store ptr null, ptr %6, align 8, !dbg !2881
  ret void, !dbg !2882
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIjEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #6 comdat align 2 !dbg !2883 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2884, metadata !DIExpression()), !dbg !2885
  %3 = load ptr, ptr %2, align 8
  ret void, !dbg !2886
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN5Linux14RCOutput_Bebop4initEv(ptr noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #0 align 2 !dbg !2887 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sched_param, align 4
  %5 = alloca %union.pthread_attr_t, align 8
  %6 = alloca %struct.sched_param, align 4
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2888, metadata !DIExpression()), !dbg !2889
  %7 = load ptr, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2890, metadata !DIExpression()), !dbg !2891
  store i32 0, ptr %3, align 4, !dbg !2891
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2892, metadata !DIExpression()), !dbg !2893
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %4, ptr align 4 @__const._ZN5Linux14RCOutput_Bebop4initEv.param, i64 4, i1 false), !dbg !2893
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2894, metadata !DIExpression()), !dbg !2895
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2896, metadata !DIExpression()), !dbg !2903
  %8 = load ptr, ptr @_ZL3hal, align 8, !dbg !2904
  %9 = getelementptr inbounds %"class.AP_HAL::HAL", ptr %8, i32 0, i32 9, !dbg !2905
  %10 = load ptr, ptr %9, align 8, !dbg !2905
  %11 = load ptr, ptr %10, align 8, !dbg !2906
  %12 = getelementptr inbounds ptr, ptr %11, i64 13, !dbg !2906
  %13 = load ptr, ptr %12, align 8, !dbg !2906
  %14 = call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(9) %10), !dbg !2906
  %15 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %7, i32 0, i32 1, !dbg !2907
  store ptr %14, ptr %15, align 8, !dbg !2908
  %16 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %7, i32 0, i32 1, !dbg !2909
  %17 = load ptr, ptr %16, align 8, !dbg !2909
  %18 = icmp eq ptr %17, null, !dbg !2911
  br i1 %18, label %19, label %20, !dbg !2912

19:                                               ; preds = %1
  call void (ptr, ...) @_ZN6AP_HAL5panicEPKcz(ptr noundef @.str.1.1) #18, !dbg !2913
  unreachable, !dbg !2913

20:                                               ; preds = %1
  %21 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %7, i32 0, i32 12, !dbg !2915
  %22 = call i32 @pthread_mutex_init(ptr noundef %21, ptr noundef null) #17, !dbg !2916
  store i32 %22, ptr %3, align 4, !dbg !2917
  %23 = load i32, ptr %3, align 4, !dbg !2918
  %24 = icmp ne i32 %23, 0, !dbg !2920
  br i1 %24, label %25, label %26, !dbg !2921

25:                                               ; preds = %20
  call void @perror(ptr noundef @.str.2.2), !dbg !2922
  br label %56, !dbg !2924

26:                                               ; preds = %20
  %27 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %7, i32 0, i32 12, !dbg !2925
  %28 = call i32 @pthread_mutex_lock(ptr noundef %27) #17, !dbg !2926
  %29 = call i32 @pthread_condattr_init(ptr noundef %6) #17, !dbg !2927
  %30 = call i32 @pthread_condattr_setclock(ptr noundef %6, i32 noundef 1) #17, !dbg !2928
  %31 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %7, i32 0, i32 13, !dbg !2929
  %32 = call i32 @pthread_cond_init(ptr noundef %31, ptr noundef %6) #17, !dbg !2930
  store i32 %32, ptr %3, align 4, !dbg !2931
  %33 = call i32 @pthread_condattr_destroy(ptr noundef %6) #17, !dbg !2932
  %34 = load i32, ptr %3, align 4, !dbg !2933
  %35 = icmp ne i32 %34, 0, !dbg !2935
  br i1 %35, label %36, label %37, !dbg !2936

36:                                               ; preds = %26
  call void @perror(ptr noundef @.str.3.3), !dbg !2937
  br label %53, !dbg !2939

37:                                               ; preds = %26
  %38 = call i32 @pthread_attr_init(ptr noundef %5) #17, !dbg !2940
  store i32 %38, ptr %3, align 4, !dbg !2941
  %39 = load i32, ptr %3, align 4, !dbg !2942
  %40 = icmp ne i32 %39, 0, !dbg !2944
  br i1 %40, label %41, label %42, !dbg !2945

41:                                               ; preds = %37
  call void @perror(ptr noundef @.str.4.4), !dbg !2946
  br label %53, !dbg !2948

42:                                               ; preds = %37
  %43 = call i32 @pthread_attr_setinheritsched(ptr noundef %5, i32 noundef 1) #17, !dbg !2949
  %44 = call i32 @pthread_attr_setschedpolicy(ptr noundef %5, i32 noundef 1) #17, !dbg !2950
  %45 = call i32 @pthread_attr_setschedparam(ptr noundef %5, ptr noundef %4) #17, !dbg !2951
  %46 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %7, i32 0, i32 11, !dbg !2952
  %47 = call i32 @pthread_create(ptr noundef %46, ptr noundef %5, ptr noundef @_ZN5Linux14RCOutput_Bebop15_control_threadEPv, ptr noundef %7) #17, !dbg !2953
  store i32 %47, ptr %3, align 4, !dbg !2954
  %48 = load i32, ptr %3, align 4, !dbg !2955
  %49 = icmp ne i32 %48, 0, !dbg !2957
  br i1 %49, label %50, label %51, !dbg !2958

50:                                               ; preds = %42
  call void @perror(ptr noundef @.str.5.5), !dbg !2959
  br label %53, !dbg !2961

51:                                               ; preds = %42
  call void @_ZN5Linux14RCOutput_Bebop12_clear_errorEv(ptr noundef nonnull align 8 dereferenceable(152) %7), !dbg !2962
  %52 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %7, i32 0, i32 5, !dbg !2963
  store i16 50, ptr %52, align 8, !dbg !2964
  br label %53, !dbg !2963

53:                                               ; preds = %51, %50, %41, %36
  call void @llvm.dbg.label(metadata !2965), !dbg !2966
  %54 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %7, i32 0, i32 12, !dbg !2967
  %55 = call i32 @pthread_mutex_unlock(ptr noundef %54) #17, !dbg !2968
  br label %56, !dbg !2969

56:                                               ; preds = %53, %25
  ret void, !dbg !2970
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_ZN5Linux14RCOutput_Bebop8set_freqEjt(ptr noundef nonnull align 8 dereferenceable(152) %0, i32 noundef %1, i16 noundef zeroext %2) unnamed_addr #1 align 2 !dbg !2971 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2972, metadata !DIExpression()), !dbg !2973
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2974, metadata !DIExpression()), !dbg !2975
  store i16 %2, ptr %6, align 2
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2976, metadata !DIExpression()), !dbg !2977
  %7 = load ptr, ptr %4, align 8
  %8 = load i16, ptr %6, align 2, !dbg !2978
  %9 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %7, i32 0, i32 5, !dbg !2979
  store i16 %8, ptr %9, align 8, !dbg !2980
  ret void, !dbg !2981
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef zeroext i16 @_ZN5Linux14RCOutput_Bebop8get_freqEh(ptr noundef nonnull align 8 dereferenceable(152) %0, i8 noundef zeroext %1) unnamed_addr #1 align 2 !dbg !2982 {
  %3 = alloca ptr, align 8
  %4 = alloca i8, align 1
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2983, metadata !DIExpression()), !dbg !2984
  store i8 %1, ptr %4, align 1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2985, metadata !DIExpression()), !dbg !2986
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %5, i32 0, i32 5, !dbg !2987
  %7 = load i16, ptr %6, align 8, !dbg !2987
  ret i16 %7, !dbg !2988
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_ZN5Linux14RCOutput_Bebop9enable_chEh(ptr noundef nonnull align 8 dereferenceable(152) %0, i8 noundef zeroext %1) unnamed_addr #1 align 2 !dbg !2989 {
  %3 = alloca ptr, align 8
  %4 = alloca i8, align 1
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2990, metadata !DIExpression()), !dbg !2991
  store i8 %1, ptr %4, align 1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2992, metadata !DIExpression()), !dbg !2993
  %5 = load ptr, ptr %3, align 8
  ret void, !dbg !2994
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN5Linux14RCOutput_Bebop10disable_chEh(ptr noundef nonnull align 8 dereferenceable(152) %0, i8 noundef zeroext %1) unnamed_addr #0 align 2 !dbg !2995 {
  %3 = alloca ptr, align 8
  %4 = alloca i8, align 1
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2996, metadata !DIExpression()), !dbg !2997
  store i8 %1, ptr %4, align 1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2998, metadata !DIExpression()), !dbg !2999
  %5 = load ptr, ptr %3, align 8
  call void @_ZN5Linux14RCOutput_Bebop10_stop_propEv(ptr noundef nonnull align 8 dereferenceable(152) %5), !dbg !3000
  ret void, !dbg !3001
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN5Linux14RCOutput_Bebop5writeEht(ptr noundef nonnull align 8 dereferenceable(152) %0, i8 noundef zeroext %1, i16 noundef zeroext %2) unnamed_addr #0 align 2 !dbg !3002 {
  %4 = alloca ptr, align 8
  %5 = alloca i8, align 1
  %6 = alloca i16, align 2
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3003, metadata !DIExpression()), !dbg !3004
  store i8 %1, ptr %5, align 1
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3005, metadata !DIExpression()), !dbg !3006
  store i16 %2, ptr %6, align 2
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3007, metadata !DIExpression()), !dbg !3008
  %7 = load ptr, ptr %4, align 8
  %8 = load i8, ptr %5, align 1, !dbg !3009
  %9 = zext i8 %8 to i32, !dbg !3009
  %10 = icmp sge i32 %9, 4, !dbg !3011
  br i1 %10, label %11, label %12, !dbg !3012

11:                                               ; preds = %3
  br label %25, !dbg !3013

12:                                               ; preds = %3
  %13 = load i16, ptr %6, align 2, !dbg !3014
  %14 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %7, i32 0, i32 2, !dbg !3015
  %15 = load i8, ptr %5, align 1, !dbg !3016
  %16 = zext i8 %15 to i64, !dbg !3015
  %17 = getelementptr inbounds [4 x i16], ptr %14, i64 0, i64 %16, !dbg !3015
  store i16 %13, ptr %17, align 2, !dbg !3017
  %18 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %7, i32 0, i32 9, !dbg !3018
  %19 = load i8, ptr %18, align 1, !dbg !3018
  %20 = trunc i8 %19 to i1, !dbg !3018
  br i1 %20, label %25, label %21, !dbg !3020

21:                                               ; preds = %12
  %22 = load ptr, ptr %7, align 8, !dbg !3021
  %23 = getelementptr inbounds ptr, ptr %22, i64 7, !dbg !3021
  %24 = load ptr, ptr %23, align 8, !dbg !3021
  call void %24(ptr noundef nonnull align 8 dereferenceable(152) %7), !dbg !3021
  br label %25, !dbg !3021

25:                                               ; preds = %21, %12, %11
  ret void, !dbg !3022
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_ZN5Linux14RCOutput_Bebop4corkEv(ptr noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #1 align 2 !dbg !3023 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3024, metadata !DIExpression()), !dbg !3025
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %3, i32 0, i32 9, !dbg !3026
  store i8 1, ptr %4, align 1, !dbg !3027
  ret void, !dbg !3028
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_ZN5Linux14RCOutput_Bebop4pushEv(ptr noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #1 align 2 !dbg !3029 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3030, metadata !DIExpression()), !dbg !3031
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %3, i32 0, i32 9, !dbg !3032
  store i8 0, ptr %4, align 1, !dbg !3033
  %5 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %3, i32 0, i32 12, !dbg !3034
  %6 = call i32 @pthread_mutex_lock(ptr noundef %5) #17, !dbg !3035
  %7 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %3, i32 0, i32 3, !dbg !3036
  %8 = getelementptr inbounds [4 x i16], ptr %7, i64 0, i64 0, !dbg !3037
  %9 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %3, i32 0, i32 2, !dbg !3038
  %10 = getelementptr inbounds [4 x i16], ptr %9, i64 0, i64 0, !dbg !3037
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %8, ptr align 8 %10, i64 8, i1 false), !dbg !3037
  %11 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %3, i32 0, i32 13, !dbg !3039
  %12 = call i32 @pthread_cond_signal(ptr noundef %11) #17, !dbg !3040
  %13 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %3, i32 0, i32 12, !dbg !3041
  %14 = call i32 @pthread_mutex_unlock(ptr noundef %13) #17, !dbg !3042
  %15 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %3, i32 0, i32 2, !dbg !3043
  %16 = getelementptr inbounds [4 x i16], ptr %15, i64 0, i64 0, !dbg !3044
  call void @llvm.memset.p0.i64(ptr align 8 %16, i8 0, i64 8, i1 false), !dbg !3044
  ret void, !dbg !3045
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef zeroext i16 @_ZN5Linux14RCOutput_Bebop4readEh(ptr noundef nonnull align 8 dereferenceable(152) %0, i8 noundef zeroext %1) unnamed_addr #1 align 2 !dbg !3046 {
  %3 = alloca i16, align 2
  %4 = alloca ptr, align 8
  %5 = alloca i8, align 1
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3047, metadata !DIExpression()), !dbg !3048
  store i8 %1, ptr %5, align 1
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3049, metadata !DIExpression()), !dbg !3050
  %6 = load ptr, ptr %4, align 8
  %7 = load i8, ptr %5, align 1, !dbg !3051
  %8 = zext i8 %7 to i32, !dbg !3051
  %9 = icmp slt i32 %8, 4, !dbg !3053
  br i1 %9, label %10, label %16, !dbg !3054

10:                                               ; preds = %2
  %11 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %6, i32 0, i32 3, !dbg !3055
  %12 = load i8, ptr %5, align 1, !dbg !3057
  %13 = zext i8 %12 to i64, !dbg !3055
  %14 = getelementptr inbounds [4 x i16], ptr %11, i64 0, i64 %13, !dbg !3055
  %15 = load i16, ptr %14, align 2, !dbg !3055
  store i16 %15, ptr %3, align 2, !dbg !3058
  br label %17, !dbg !3058

16:                                               ; preds = %2
  store i16 0, ptr %3, align 2, !dbg !3059
  br label %17, !dbg !3059

17:                                               ; preds = %16, %10
  %18 = load i16, ptr %3, align 2, !dbg !3061
  ret i16 %18, !dbg !3061
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN5Linux14RCOutput_Bebop4readEPth(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 align 2 !dbg !3062 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3063, metadata !DIExpression()), !dbg !3064
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3065, metadata !DIExpression()), !dbg !3066
  store i8 %2, ptr %6, align 1
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3067, metadata !DIExpression()), !dbg !3068
  %8 = load ptr, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3069, metadata !DIExpression()), !dbg !3071
  store i32 0, ptr %7, align 4, !dbg !3071
  br label %9, !dbg !3072

9:                                                ; preds = %26, %3
  %10 = load i32, ptr %7, align 4, !dbg !3073
  %11 = load i8, ptr %6, align 1, !dbg !3075
  %12 = zext i8 %11 to i32, !dbg !3075
  %13 = icmp slt i32 %10, %12, !dbg !3076
  br i1 %13, label %14, label %29, !dbg !3077

14:                                               ; preds = %9
  %15 = load i32, ptr %7, align 4, !dbg !3078
  %16 = add nsw i32 0, %15, !dbg !3079
  %17 = trunc i32 %16 to i8, !dbg !3080
  %18 = load ptr, ptr %8, align 8, !dbg !3081
  %19 = getelementptr inbounds ptr, ptr %18, i64 8, !dbg !3081
  %20 = load ptr, ptr %19, align 8, !dbg !3081
  %21 = call noundef zeroext i16 %20(ptr noundef nonnull align 8 dereferenceable(152) %8, i8 noundef zeroext %17), !dbg !3081
  %22 = load ptr, ptr %5, align 8, !dbg !3082
  %23 = load i32, ptr %7, align 4, !dbg !3083
  %24 = sext i32 %23 to i64, !dbg !3082
  %25 = getelementptr inbounds i16, ptr %22, i64 %24, !dbg !3082
  store i16 %21, ptr %25, align 2, !dbg !3084
  br label %26, !dbg !3082

26:                                               ; preds = %14
  %27 = load i32, ptr %7, align 4, !dbg !3085
  %28 = add nsw i32 %27, 1, !dbg !3085
  store i32 %28, ptr %7, align 4, !dbg !3085
  br label %9, !dbg !3086, !llvm.loop !3087

29:                                               ; preds = %9
  ret void, !dbg !3089
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef zeroext i16 @_ZN6AP_HAL8RCOutput14read_last_sentEh(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef zeroext %1) unnamed_addr #0 comdat align 2 !dbg !3090 {
  %3 = alloca ptr, align 8
  %4 = alloca i8, align 1
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3091, metadata !DIExpression()), !dbg !3092
  store i8 %1, ptr %4, align 1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3093, metadata !DIExpression()), !dbg !3094
  %5 = load ptr, ptr %3, align 8
  %6 = load i8, ptr %4, align 1, !dbg !3095
  %7 = load ptr, ptr %5, align 8, !dbg !3096
  %8 = getelementptr inbounds ptr, ptr %7, i64 8, !dbg !3096
  %9 = load ptr, ptr %8, align 8, !dbg !3096
  %10 = call noundef zeroext i16 %9(ptr noundef nonnull align 8 dereferenceable(8) %5, i8 noundef zeroext %6), !dbg !3096
  ret i16 %10, !dbg !3097
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN6AP_HAL8RCOutput14read_last_sentEPth(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 comdat align 2 !dbg !3098 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i8, align 1
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3099, metadata !DIExpression()), !dbg !3100
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3101, metadata !DIExpression()), !dbg !3102
  store i8 %2, ptr %6, align 1
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3103, metadata !DIExpression()), !dbg !3104
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8, !dbg !3105
  %9 = load i8, ptr %6, align 1, !dbg !3106
  %10 = load ptr, ptr %7, align 8, !dbg !3107
  %11 = getelementptr inbounds ptr, ptr %10, i64 9, !dbg !3107
  %12 = load ptr, ptr %11, align 8, !dbg !3107
  call void %12(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %8, i8 noundef zeroext %9), !dbg !3107
  ret void, !dbg !3108
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN6AP_HAL8RCOutput14set_safety_pwmEjt(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1, i16 noundef zeroext %2) unnamed_addr #1 comdat align 2 !dbg !3109 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3110, metadata !DIExpression()), !dbg !3111
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3112, metadata !DIExpression()), !dbg !3113
  store i16 %2, ptr %6, align 2
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3114, metadata !DIExpression()), !dbg !3115
  %7 = load ptr, ptr %4, align 8
  ret void, !dbg !3116
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN6AP_HAL8RCOutput16set_failsafe_pwmEjt(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1, i16 noundef zeroext %2) unnamed_addr #1 comdat align 2 !dbg !3117 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3118, metadata !DIExpression()), !dbg !3119
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3120, metadata !DIExpression()), !dbg !3121
  store i16 %2, ptr %6, align 2
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3122, metadata !DIExpression()), !dbg !3123
  %7 = load ptr, ptr %4, align 8
  ret void, !dbg !3124
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN6AP_HAL8RCOutput15force_safety_onEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !dbg !3125 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3126, metadata !DIExpression()), !dbg !3127
  %3 = load ptr, ptr %2, align 8
  ret i1 false, !dbg !3128
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN6AP_HAL8RCOutput16force_safety_offEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !dbg !3129 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3130, metadata !DIExpression()), !dbg !3131
  %3 = load ptr, ptr %2, align 8
  ret void, !dbg !3132
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_ZN5Linux14RCOutput_Bebop15set_esc_scalingEtt(ptr noundef nonnull align 8 dereferenceable(152) %0, i16 noundef zeroext %1, i16 noundef zeroext %2) unnamed_addr #1 align 2 !dbg !3133 {
  %4 = alloca ptr, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3134, metadata !DIExpression()), !dbg !3135
  store i16 %1, ptr %5, align 2
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3136, metadata !DIExpression()), !dbg !3137
  store i16 %2, ptr %6, align 2
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3138, metadata !DIExpression()), !dbg !3139
  %7 = load ptr, ptr %4, align 8
  %8 = load i16, ptr %5, align 2, !dbg !3140
  %9 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %7, i32 0, i32 6, !dbg !3141
  store i16 %8, ptr %9, align 2, !dbg !3142
  %10 = load i16, ptr %6, align 2, !dbg !3143
  %11 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %7, i32 0, i32 7, !dbg !3144
  store i16 %10, ptr %11, align 4, !dbg !3145
  ret void, !dbg !3146
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN6AP_HAL8RCOutput15enable_sbus_outEt(ptr noundef nonnull align 8 dereferenceable(8) %0, i16 noundef zeroext %1) unnamed_addr #1 comdat align 2 !dbg !3147 {
  %3 = alloca ptr, align 8
  %4 = alloca i16, align 2
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3148, metadata !DIExpression()), !dbg !3149
  store i16 %1, ptr %4, align 2
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3150, metadata !DIExpression()), !dbg !3151
  %5 = load ptr, ptr %3, align 8
  ret i1 false, !dbg !3152
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN6AP_HAL8RCOutput15set_output_modeENS0_11output_modeE(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) unnamed_addr #1 comdat align 2 !dbg !3153 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3154, metadata !DIExpression()), !dbg !3155
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3156, metadata !DIExpression()), !dbg !3157
  %5 = load ptr, ptr %3, align 8
  ret void, !dbg !3158
}

; Function Attrs: nounwind
declare i32 @pthread_cond_signal(ptr noundef) #3

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN5Linux14RCOutput_Bebop10_stop_propEv(ptr noundef nonnull align 8 dereferenceable(152) %0) #0 align 2 !dbg !3159 {
  %2 = alloca ptr, align 8
  %3 = alloca i8, align 1
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3160, metadata !DIExpression()), !dbg !3161
  %4 = load ptr, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3162, metadata !DIExpression()), !dbg !3163
  store i8 96, ptr %3, align 1, !dbg !3163
  %5 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %4, i32 0, i32 8, !dbg !3164
  store i8 1, ptr %5, align 2, !dbg !3165
  %6 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %4, i32 0, i32 1, !dbg !3166
  %7 = load ptr, ptr %6, align 8, !dbg !3166
  %8 = load ptr, ptr %7, align 8, !dbg !3168
  %9 = getelementptr inbounds ptr, ptr %8, i64 0, !dbg !3168
  %10 = load ptr, ptr %9, align 8, !dbg !3168
  %11 = call noundef zeroext i1 %10(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 0), !dbg !3168
  br i1 %11, label %13, label %12, !dbg !3169

12:                                               ; preds = %1
  br label %27, !dbg !3170

13:                                               ; preds = %1
  %14 = load ptr, ptr @_ZL3hal, align 8, !dbg !3171
  %15 = getelementptr inbounds %"class.AP_HAL::HAL", ptr %14, i32 0, i32 9, !dbg !3172
  %16 = load ptr, ptr %15, align 8, !dbg !3172
  %17 = load ptr, ptr %16, align 8, !dbg !3173
  %18 = getelementptr inbounds ptr, ptr %17, i64 4, !dbg !3173
  %19 = load ptr, ptr %18, align 8, !dbg !3173
  %20 = call noundef zeroext i8 %19(ptr noundef nonnull align 8 dereferenceable(9) %16, i8 noundef zeroext 8, i8 noundef zeroext 1, ptr noundef %3), !dbg !3173
  %21 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %4, i32 0, i32 1, !dbg !3174
  %22 = load ptr, ptr %21, align 8, !dbg !3174
  %23 = load ptr, ptr %22, align 8, !dbg !3175
  %24 = getelementptr inbounds ptr, ptr %23, i64 2, !dbg !3175
  %25 = load ptr, ptr %24, align 8, !dbg !3175
  %26 = call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(8) %22), !dbg !3175
  br label %27, !dbg !3176

27:                                               ; preds = %13, %12
  ret void, !dbg !3176
}

declare void @perror(ptr noundef) #7

; Function Attrs: nounwind
declare i32 @pthread_condattr_init(ptr noundef) #3

; Function Attrs: nounwind
declare i32 @pthread_condattr_setclock(ptr noundef, i32 noundef) #3

; Function Attrs: nounwind
declare i32 @pthread_cond_init(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind
declare i32 @pthread_condattr_destroy(ptr noundef) #3

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef ptr @_ZN5Linux14RCOutput_Bebop15_control_threadEPv(ptr noundef %0) #0 align 2 !dbg !3177 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3178, metadata !DIExpression()), !dbg !3179
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3180, metadata !DIExpression()), !dbg !3181
  %4 = load ptr, ptr %2, align 8, !dbg !3182
  store ptr %4, ptr %3, align 8, !dbg !3181
  %5 = load ptr, ptr %3, align 8, !dbg !3183
  call void @_ZN5Linux14RCOutput_Bebop10_run_rcoutEv(ptr noundef nonnull align 8 dereferenceable(152) %5), !dbg !3184
  ret ptr null, !dbg !3185
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN5Linux14RCOutput_Bebop12_clear_errorEv(ptr noundef nonnull align 8 dereferenceable(152) %0) #0 align 2 !dbg !3186 {
  %2 = alloca ptr, align 8
  %3 = alloca i8, align 1
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3187, metadata !DIExpression()), !dbg !3188
  %4 = load ptr, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3189, metadata !DIExpression()), !dbg !3190
  store i8 -128, ptr %3, align 1, !dbg !3190
  %5 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %4, i32 0, i32 1, !dbg !3191
  %6 = load ptr, ptr %5, align 8, !dbg !3191
  %7 = load ptr, ptr %6, align 8, !dbg !3193
  %8 = getelementptr inbounds ptr, ptr %7, i64 0, !dbg !3193
  %9 = load ptr, ptr %8, align 8, !dbg !3193
  %10 = call noundef zeroext i1 %9(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 0), !dbg !3193
  br i1 %10, label %12, label %11, !dbg !3194

11:                                               ; preds = %1
  br label %26, !dbg !3195

12:                                               ; preds = %1
  %13 = load ptr, ptr @_ZL3hal, align 8, !dbg !3196
  %14 = getelementptr inbounds %"class.AP_HAL::HAL", ptr %13, i32 0, i32 9, !dbg !3197
  %15 = load ptr, ptr %14, align 8, !dbg !3197
  %16 = load ptr, ptr %15, align 8, !dbg !3198
  %17 = getelementptr inbounds ptr, ptr %16, i64 4, !dbg !3198
  %18 = load ptr, ptr %17, align 8, !dbg !3198
  %19 = call noundef zeroext i8 %18(ptr noundef nonnull align 8 dereferenceable(9) %15, i8 noundef zeroext 8, i8 noundef zeroext 1, ptr noundef %3), !dbg !3198
  %20 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %4, i32 0, i32 1, !dbg !3199
  %21 = load ptr, ptr %20, align 8, !dbg !3199
  %22 = load ptr, ptr %21, align 8, !dbg !3200
  %23 = getelementptr inbounds ptr, ptr %22, i64 2, !dbg !3200
  %24 = load ptr, ptr %23, align 8, !dbg !3200
  %25 = call noundef zeroext i1 %24(ptr noundef nonnull align 8 dereferenceable(8) %21), !dbg !3200
  br label %26, !dbg !3201

26:                                               ; preds = %12, %11
  ret void, !dbg !3201
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN5Linux14RCOutput_Bebop10_run_rcoutEv(ptr noundef nonnull align 8 dereferenceable(152) %0) #0 align 2 !dbg !3202 {
  %2 = alloca ptr, align 8
  %3 = alloca [4 x i16], align 2
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca %struct.timespec, align 8
  %7 = alloca %struct.bldc_info, align 1
  %8 = alloca [4 x i8], align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3203, metadata !DIExpression()), !dbg !3204
  %14 = load ptr, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3205, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3207, metadata !DIExpression()), !dbg !3208
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3209, metadata !DIExpression()), !dbg !3210
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3211, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3219, metadata !DIExpression()), !dbg !3220
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3221, metadata !DIExpression()), !dbg !3222
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3223, metadata !DIExpression()), !dbg !3224
  call void @llvm.dbg.declare(metadata ptr %10, metadata !3225, metadata !DIExpression()), !dbg !3226
  call void @llvm.dbg.declare(metadata ptr %11, metadata !3227, metadata !DIExpression()), !dbg !3228
  call void @llvm.dbg.declare(metadata ptr %12, metadata !3229, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.declare(metadata ptr %13, metadata !3231, metadata !DIExpression()), !dbg !3232
  %15 = getelementptr inbounds [4 x i16], ptr %3, i64 0, i64 0, !dbg !3233
  call void @llvm.memset.p0.i64(ptr align 2 %15, i8 0, i64 8, i1 false), !dbg !3233
  %16 = call noundef zeroext i1 @_ZN5Linux14RCOutput_Bebop9_get_infoEP9bldc_info(ptr noundef nonnull align 8 dereferenceable(152) %14, ptr noundef %7), !dbg !3234
  br i1 %16, label %18, label %17, !dbg !3236

17:                                               ; preds = %1
  call void (ptr, ...) @_ZN6AP_HAL5panicEPKcz(ptr noundef @.str.6.6) #18, !dbg !3237
  unreachable, !dbg !3237

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.bldc_info, ptr %7, i32 0, i32 0, !dbg !3239
  %20 = load i8, ptr %19, align 1, !dbg !3239
  %21 = zext i8 %20 to i32, !dbg !3241
  %22 = icmp eq i32 %21, 1, !dbg !3242
  br i1 %22, label %23, label %24, !dbg !3243

23:                                               ; preds = %18
  store i8 0, ptr %9, align 1, !dbg !3244
  store i8 1, ptr %10, align 1, !dbg !3246
  store i8 2, ptr %11, align 1, !dbg !3247
  store i8 3, ptr %12, align 1, !dbg !3248
  br label %25, !dbg !3249

24:                                               ; preds = %18
  store i8 1, ptr %9, align 1, !dbg !3250
  store i8 0, ptr %10, align 1, !dbg !3252
  store i8 3, ptr %11, align 1, !dbg !3253
  store i8 2, ptr %12, align 1, !dbg !3254
  br label %25

25:                                               ; preds = %24, %23
  %26 = load i8, ptr %9, align 1, !dbg !3255
  %27 = getelementptr inbounds [4 x i8], ptr %8, i64 0, i64 0, !dbg !3256
  store i8 %26, ptr %27, align 1, !dbg !3257
  %28 = load i8, ptr %11, align 1, !dbg !3258
  %29 = getelementptr inbounds [4 x i8], ptr %8, i64 0, i64 1, !dbg !3259
  store i8 %28, ptr %29, align 1, !dbg !3260
  %30 = load i8, ptr %10, align 1, !dbg !3261
  %31 = getelementptr inbounds [4 x i8], ptr %8, i64 0, i64 2, !dbg !3262
  store i8 %30, ptr %31, align 1, !dbg !3263
  %32 = load i8, ptr %12, align 1, !dbg !3264
  %33 = getelementptr inbounds [4 x i8], ptr %8, i64 0, i64 3, !dbg !3265
  store i8 %32, ptr %33, align 1, !dbg !3266
  %34 = load ptr, ptr @_ZL3hal, align 8, !dbg !3267
  %35 = getelementptr inbounds %"class.AP_HAL::HAL", ptr %34, i32 0, i32 19, !dbg !3268
  %36 = load ptr, ptr %35, align 8, !dbg !3268
  %37 = call noundef ptr @_ZN5Linux4Util4fromEPN6AP_HAL4UtilE(ptr noundef %36), !dbg !3269
  %38 = call noundef i32 @_ZN5Linux4Util12get_hw_arm32Ev(ptr noundef nonnull align 8 dereferenceable(64) %37), !dbg !3270
  store i32 %38, ptr %13, align 4, !dbg !3271
  %39 = load i32, ptr %13, align 4, !dbg !3272
  %40 = icmp eq i32 %39, 2, !dbg !3274
  br i1 %40, label %41, label %43, !dbg !3275

41:                                               ; preds = %25
  %42 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %14, i32 0, i32 10, !dbg !3276
  store i16 11000, ptr %42, align 8, !dbg !3278
  br label %57, !dbg !3279

43:                                               ; preds = %25
  %44 = load i32, ptr %13, align 4, !dbg !3280
  %45 = icmp eq i32 %44, 3, !dbg !3282
  br i1 %45, label %46, label %48, !dbg !3283

46:                                               ; preds = %43
  %47 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %14, i32 0, i32 10, !dbg !3284
  store i16 12200, ptr %47, align 8, !dbg !3286
  br label %56, !dbg !3287

48:                                               ; preds = %43
  %49 = load i32, ptr %13, align 4, !dbg !3288
  %50 = icmp slt i32 %49, 0, !dbg !3290
  br i1 %50, label %51, label %54, !dbg !3291

51:                                               ; preds = %48
  %52 = load i32, ptr %13, align 4, !dbg !3292
  %53 = call ptr @strerror(i32 noundef %52) #17, !dbg !3294
  call void (ptr, ...) @_ZN6AP_HAL5panicEPKcz(ptr noundef @.str.7.7, ptr noundef %53) #18, !dbg !3295
  unreachable, !dbg !3295

54:                                               ; preds = %48
  %55 = load i32, ptr %13, align 4, !dbg !3296
  call void (ptr, ...) @_ZN6AP_HAL5panicEPKcz(ptr noundef @.str.8.8, i32 noundef %55) #18, !dbg !3298
  unreachable, !dbg !3298

56:                                               ; preds = %46
  br label %57

57:                                               ; preds = %56, %41
  br label %58, !dbg !3299

58:                                               ; preds = %158, %57
  %59 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %14, i32 0, i32 12, !dbg !3300
  %60 = call i32 @pthread_mutex_lock(ptr noundef %59) #17, !dbg !3302
  %61 = call i32 @clock_gettime(i32 noundef 1, ptr noundef %6) #17, !dbg !3303
  store i32 %61, ptr %5, align 4, !dbg !3304
  %62 = load i32, ptr %5, align 4, !dbg !3305
  %63 = icmp ne i32 %62, 0, !dbg !3307
  br i1 %63, label %64, label %69, !dbg !3308

64:                                               ; preds = %58
  %65 = load ptr, ptr @_ZL3hal, align 8, !dbg !3309
  %66 = getelementptr inbounds %"class.AP_HAL::HAL", ptr %65, i32 0, i32 14, !dbg !3310
  %67 = load ptr, ptr %66, align 8, !dbg !3310
  %68 = call noundef i64 @_ZN6AP_HAL5Print7printlnEPKc(ptr noundef nonnull align 8 dereferenceable(8) %67, ptr noundef @.str.11), !dbg !3311
  br label %69, !dbg !3309

69:                                               ; preds = %64, %58
  %70 = getelementptr inbounds %struct.timespec, ptr %6, i32 0, i32 1, !dbg !3312
  %71 = load i64, ptr %70, align 8, !dbg !3312
  %72 = icmp sgt i64 %71, 500000000, !dbg !3314
  br i1 %72, label %73, label %82, !dbg !3315

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.timespec, ptr %6, i32 0, i32 0, !dbg !3316
  %75 = load i64, ptr %74, align 8, !dbg !3318
  %76 = add nsw i64 %75, 1, !dbg !3318
  store i64 %76, ptr %74, align 8, !dbg !3318
  %77 = getelementptr inbounds %struct.timespec, ptr %6, i32 0, i32 1, !dbg !3319
  %78 = load i64, ptr %77, align 8, !dbg !3319
  %79 = add nsw i64 %78, 500000000, !dbg !3320
  %80 = sub nsw i64 %79, 1000000000, !dbg !3321
  %81 = getelementptr inbounds %struct.timespec, ptr %6, i32 0, i32 1, !dbg !3322
  store i64 %80, ptr %81, align 8, !dbg !3323
  br label %86, !dbg !3324

82:                                               ; preds = %69
  %83 = getelementptr inbounds %struct.timespec, ptr %6, i32 0, i32 1, !dbg !3325
  %84 = load i64, ptr %83, align 8, !dbg !3327
  %85 = add nsw i64 %84, 500000000, !dbg !3327
  store i64 %85, ptr %83, align 8, !dbg !3327
  br label %86

86:                                               ; preds = %82, %73
  store i32 0, ptr %5, align 4, !dbg !3328
  br label %87, !dbg !3329

87:                                               ; preds = %98, %86
  %88 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %14, i32 0, i32 3, !dbg !3330
  %89 = getelementptr inbounds [4 x i16], ptr %88, i64 0, i64 0, !dbg !3330
  %90 = getelementptr inbounds [4 x i16], ptr %3, i64 0, i64 0, !dbg !3331
  %91 = call i32 @memcmp(ptr noundef %89, ptr noundef %90, i64 noundef 8) #22, !dbg !3332
  %92 = icmp eq i32 %91, 0, !dbg !3333
  br i1 %92, label %93, label %96, !dbg !3334

93:                                               ; preds = %87
  %94 = load i32, ptr %5, align 4, !dbg !3335
  %95 = icmp eq i32 %94, 0, !dbg !3336
  br label %96

96:                                               ; preds = %93, %87
  %97 = phi i1 [ false, %87 ], [ %95, %93 ], !dbg !3337
  br i1 %97, label %98, label %102, !dbg !3329

98:                                               ; preds = %96
  %99 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %14, i32 0, i32 13, !dbg !3338
  %100 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %14, i32 0, i32 12, !dbg !3339
  %101 = call i32 @pthread_cond_timedwait(ptr noundef %99, ptr noundef %100, ptr noundef %6), !dbg !3340
  store i32 %101, ptr %5, align 4, !dbg !3341
  br label %87, !dbg !3329, !llvm.loop !3342

102:                                              ; preds = %96
  %103 = getelementptr inbounds [4 x i16], ptr %3, i64 0, i64 0, !dbg !3344
  %104 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %14, i32 0, i32 3, !dbg !3345
  %105 = getelementptr inbounds [4 x i16], ptr %104, i64 0, i64 0, !dbg !3344
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %103, ptr align 8 %105, i64 8, i1 false), !dbg !3344
  %106 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %14, i32 0, i32 12, !dbg !3346
  %107 = call i32 @pthread_mutex_unlock(ptr noundef %106) #17, !dbg !3347
  store i8 0, ptr %4, align 1, !dbg !3348
  br label %108, !dbg !3350

108:                                              ; preds = %137, %102
  %109 = load i8, ptr %4, align 1, !dbg !3351
  %110 = zext i8 %109 to i32, !dbg !3351
  %111 = icmp slt i32 %110, 4, !dbg !3353
  br i1 %111, label %112, label %140, !dbg !3354

112:                                              ; preds = %108
  %113 = load i8, ptr %4, align 1, !dbg !3355
  %114 = zext i8 %113 to i64, !dbg !3358
  %115 = getelementptr inbounds [4 x i16], ptr %3, i64 0, i64 %114, !dbg !3358
  %116 = load i16, ptr %115, align 2, !dbg !3358
  %117 = zext i16 %116 to i32, !dbg !3358
  %118 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %14, i32 0, i32 6, !dbg !3359
  %119 = load i16, ptr %118, align 2, !dbg !3359
  %120 = zext i16 %119 to i32, !dbg !3359
  %121 = add nsw i32 %120, 50, !dbg !3360
  %122 = icmp sle i32 %117, %121, !dbg !3361
  br i1 %122, label %123, label %124, !dbg !3362

123:                                              ; preds = %112
  br label %140, !dbg !3363

124:                                              ; preds = %112
  %125 = load i8, ptr %4, align 1, !dbg !3364
  %126 = zext i8 %125 to i64, !dbg !3365
  %127 = getelementptr inbounds [4 x i16], ptr %3, i64 0, i64 %126, !dbg !3365
  %128 = load i16, ptr %127, align 2, !dbg !3365
  %129 = call noundef zeroext i16 @_ZN5Linux14RCOutput_Bebop17_period_us_to_rpmEt(ptr noundef nonnull align 8 dereferenceable(152) %14, i16 noundef zeroext %128), !dbg !3366
  %130 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %14, i32 0, i32 4, !dbg !3367
  %131 = load i8, ptr %4, align 1, !dbg !3368
  %132 = zext i8 %131 to i64, !dbg !3369
  %133 = getelementptr inbounds [4 x i8], ptr %8, i64 0, i64 %132, !dbg !3369
  %134 = load i8, ptr %133, align 1, !dbg !3369
  %135 = zext i8 %134 to i64, !dbg !3367
  %136 = getelementptr inbounds [4 x i16], ptr %130, i64 0, i64 %135, !dbg !3367
  store i16 %129, ptr %136, align 2, !dbg !3370
  br label %137, !dbg !3371

137:                                              ; preds = %124
  %138 = load i8, ptr %4, align 1, !dbg !3372
  %139 = add i8 %138, 1, !dbg !3372
  store i8 %139, ptr %4, align 1, !dbg !3372
  br label %108, !dbg !3373, !llvm.loop !3374

140:                                              ; preds = %123, %108
  %141 = load i8, ptr %4, align 1, !dbg !3376
  %142 = zext i8 %141 to i32, !dbg !3376
  %143 = icmp slt i32 %142, 4, !dbg !3378
  br i1 %143, label %144, label %151, !dbg !3379

144:                                              ; preds = %140
  %145 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %14, i32 0, i32 8, !dbg !3380
  %146 = load i8, ptr %145, align 2, !dbg !3380
  %147 = zext i8 %146 to i32, !dbg !3380
  %148 = icmp eq i32 %147, 0, !dbg !3383
  br i1 %148, label %149, label %150, !dbg !3384

149:                                              ; preds = %144
  call void @_ZN5Linux14RCOutput_Bebop10_stop_propEv(ptr noundef nonnull align 8 dereferenceable(152) %14), !dbg !3385
  call void @_ZN5Linux14RCOutput_Bebop12_clear_errorEv(ptr noundef nonnull align 8 dereferenceable(152) %14), !dbg !3387
  br label %150, !dbg !3388

150:                                              ; preds = %149, %144
  br label %158, !dbg !3389

151:                                              ; preds = %140
  %152 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %14, i32 0, i32 8, !dbg !3390
  %153 = load i8, ptr %152, align 2, !dbg !3390
  %154 = zext i8 %153 to i32, !dbg !3390
  %155 = icmp eq i32 %154, 1, !dbg !3393
  br i1 %155, label %156, label %157, !dbg !3394

156:                                              ; preds = %151
  call void @_ZN5Linux14RCOutput_Bebop11_start_propEv(ptr noundef nonnull align 8 dereferenceable(152) %14), !dbg !3395
  br label %157, !dbg !3395

157:                                              ; preds = %156, %151
  br label %158

158:                                              ; preds = %157, %150
  %159 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %14, i32 0, i32 4, !dbg !3396
  %160 = getelementptr inbounds [4 x i16], ptr %159, i64 0, i64 0, !dbg !3396
  call void @_ZN5Linux14RCOutput_Bebop14_set_ref_speedEPt(ptr noundef nonnull align 8 dereferenceable(152) %14, ptr noundef %160), !dbg !3397
  br label %58, !dbg !3299, !llvm.loop !3398
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef zeroext i1 @_ZN5Linux14RCOutput_Bebop9_get_infoEP9bldc_info(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %1) #0 align 2 !dbg !3400 {
  %3 = alloca i1, align 1
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3401, metadata !DIExpression()), !dbg !3402
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3403, metadata !DIExpression()), !dbg !3404
  %6 = load ptr, ptr %4, align 8
  %7 = load ptr, ptr %5, align 8, !dbg !3405
  %8 = icmp eq ptr %7, null, !dbg !3407
  br i1 %8, label %9, label %10, !dbg !3408

9:                                                ; preds = %2
  store i1 false, ptr %3, align 1, !dbg !3409
  br label %34, !dbg !3409

10:                                               ; preds = %2
  %11 = load ptr, ptr %5, align 8, !dbg !3411
  call void @llvm.memset.p0.i64(ptr align 1 %11, i8 0, i64 13, i1 false), !dbg !3412
  %12 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %6, i32 0, i32 1, !dbg !3413
  %13 = load ptr, ptr %12, align 8, !dbg !3413
  %14 = load ptr, ptr %13, align 8, !dbg !3415
  %15 = getelementptr inbounds ptr, ptr %14, i64 0, !dbg !3415
  %16 = load ptr, ptr %15, align 8, !dbg !3415
  %17 = call noundef zeroext i1 %16(ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef 0), !dbg !3415
  br i1 %17, label %19, label %18, !dbg !3416

18:                                               ; preds = %10
  store i1 false, ptr %3, align 1, !dbg !3417
  br label %34, !dbg !3417

19:                                               ; preds = %10
  %20 = load ptr, ptr @_ZL3hal, align 8, !dbg !3419
  %21 = getelementptr inbounds %"class.AP_HAL::HAL", ptr %20, i32 0, i32 9, !dbg !3420
  %22 = load ptr, ptr %21, align 8, !dbg !3420
  %23 = load ptr, ptr %5, align 8, !dbg !3421
  %24 = load ptr, ptr %22, align 8, !dbg !3422
  %25 = getelementptr inbounds ptr, ptr %24, i64 9, !dbg !3422
  %26 = load ptr, ptr %25, align 8, !dbg !3422
  %27 = call noundef zeroext i8 %26(ptr noundef nonnull align 8 dereferenceable(9) %22, i8 noundef zeroext 8, i8 noundef zeroext -96, i8 noundef zeroext 13, ptr noundef %23), !dbg !3422
  %28 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %6, i32 0, i32 1, !dbg !3423
  %29 = load ptr, ptr %28, align 8, !dbg !3423
  %30 = load ptr, ptr %29, align 8, !dbg !3424
  %31 = getelementptr inbounds ptr, ptr %30, i64 2, !dbg !3424
  %32 = load ptr, ptr %31, align 8, !dbg !3424
  %33 = call noundef zeroext i1 %32(ptr noundef nonnull align 8 dereferenceable(8) %29), !dbg !3424
  store i1 true, ptr %3, align 1, !dbg !3425
  br label %34, !dbg !3425

34:                                               ; preds = %19, %18, %9
  %35 = load i1, ptr %3, align 1, !dbg !3426
  ret i1 %35, !dbg !3426
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZN5Linux4Util4fromEPN6AP_HAL4UtilE(ptr noundef %0) #1 comdat align 2 !dbg !3427 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3434, metadata !DIExpression()), !dbg !3435
  %3 = load ptr, ptr %2, align 8, !dbg !3436
  ret ptr %3, !dbg !3437
}

declare noundef i32 @_ZN5Linux4Util12get_hw_arm32Ev(ptr noundef nonnull align 8 dereferenceable(64)) #7

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) #3

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) #3

declare noundef i64 @_ZN6AP_HAL5Print7printlnEPKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #7

; Function Attrs: nounwind willreturn memory(read)
declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #13

declare i32 @pthread_cond_timedwait(ptr noundef, ptr noundef, ptr noundef) #7

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef zeroext i16 @_ZN5Linux14RCOutput_Bebop17_period_us_to_rpmEt(ptr noundef nonnull align 8 dereferenceable(152) %0, i16 noundef zeroext %1) #1 align 2 !dbg !3438 {
  %3 = alloca ptr, align 8
  %4 = alloca i16, align 2
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3439, metadata !DIExpression()), !dbg !3440
  store i16 %1, ptr %4, align 2
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3441, metadata !DIExpression()), !dbg !3442
  %7 = load ptr, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3443, metadata !DIExpression()), !dbg !3444
  %8 = load i16, ptr %4, align 2, !dbg !3445
  %9 = uitofp i16 %8 to float, !dbg !3445
  store float %9, ptr %5, align 4, !dbg !3444
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3446, metadata !DIExpression()), !dbg !3447
  %10 = load float, ptr %5, align 4, !dbg !3448
  %11 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %7, i32 0, i32 6, !dbg !3449
  %12 = load i16, ptr %11, align 2, !dbg !3449
  %13 = zext i16 %12 to i32, !dbg !3449
  %14 = sitofp i32 %13 to float, !dbg !3449
  %15 = fsub float %10, %14, !dbg !3450
  %16 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %7, i32 0, i32 7, !dbg !3451
  %17 = load i16, ptr %16, align 4, !dbg !3451
  %18 = zext i16 %17 to i32, !dbg !3451
  %19 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %7, i32 0, i32 6, !dbg !3452
  %20 = load i16, ptr %19, align 2, !dbg !3452
  %21 = zext i16 %20 to i32, !dbg !3452
  %22 = sub nsw i32 %18, %21, !dbg !3453
  %23 = sitofp i32 %22 to float, !dbg !3454
  %24 = fdiv float %15, %23, !dbg !3455
  %25 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %7, i32 0, i32 10, !dbg !3456
  %26 = load i16, ptr %25, align 8, !dbg !3456
  %27 = zext i16 %26 to i32, !dbg !3456
  %28 = sub nsw i32 %27, 3000, !dbg !3457
  %29 = sitofp i32 %28 to float, !dbg !3458
  %30 = call float @llvm.fmuladd.f32(float %24, float %29, float 3.000000e+03), !dbg !3459
  store float %30, ptr %6, align 4, !dbg !3447
  %31 = load float, ptr %6, align 4, !dbg !3460
  %32 = fptoui float %31 to i16, !dbg !3460
  ret i16 %32, !dbg !3461
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN5Linux14RCOutput_Bebop11_start_propEv(ptr noundef nonnull align 8 dereferenceable(152) %0) #0 align 2 !dbg !3462 {
  %2 = alloca ptr, align 8
  %3 = alloca i8, align 1
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3463, metadata !DIExpression()), !dbg !3464
  %4 = load ptr, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3465, metadata !DIExpression()), !dbg !3466
  store i8 64, ptr %3, align 1, !dbg !3466
  %5 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %4, i32 0, i32 1, !dbg !3467
  %6 = load ptr, ptr %5, align 8, !dbg !3467
  %7 = load ptr, ptr %6, align 8, !dbg !3469
  %8 = getelementptr inbounds ptr, ptr %7, i64 0, !dbg !3469
  %9 = load ptr, ptr %8, align 8, !dbg !3469
  %10 = call noundef zeroext i1 %9(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 0), !dbg !3469
  br i1 %10, label %12, label %11, !dbg !3470

11:                                               ; preds = %1
  br label %27, !dbg !3471

12:                                               ; preds = %1
  %13 = load ptr, ptr @_ZL3hal, align 8, !dbg !3472
  %14 = getelementptr inbounds %"class.AP_HAL::HAL", ptr %13, i32 0, i32 9, !dbg !3473
  %15 = load ptr, ptr %14, align 8, !dbg !3473
  %16 = load ptr, ptr %15, align 8, !dbg !3474
  %17 = getelementptr inbounds ptr, ptr %16, i64 4, !dbg !3474
  %18 = load ptr, ptr %17, align 8, !dbg !3474
  %19 = call noundef zeroext i8 %18(ptr noundef nonnull align 8 dereferenceable(9) %15, i8 noundef zeroext 8, i8 noundef zeroext 1, ptr noundef %3), !dbg !3474
  %20 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %4, i32 0, i32 1, !dbg !3475
  %21 = load ptr, ptr %20, align 8, !dbg !3475
  %22 = load ptr, ptr %21, align 8, !dbg !3476
  %23 = getelementptr inbounds ptr, ptr %22, i64 2, !dbg !3476
  %24 = load ptr, ptr %23, align 8, !dbg !3476
  %25 = call noundef zeroext i1 %24(ptr noundef nonnull align 8 dereferenceable(8) %21), !dbg !3476
  %26 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %4, i32 0, i32 8, !dbg !3477
  store i8 0, ptr %26, align 2, !dbg !3478
  br label %27, !dbg !3479

27:                                               ; preds = %12, %11
  ret void, !dbg !3479
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN5Linux14RCOutput_Bebop14_set_ref_speedEPt(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %1) #0 align 2 !dbg !3480 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.bldc_ref_speed_data, align 1
  %6 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3481, metadata !DIExpression()), !dbg !3482
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3483, metadata !DIExpression()), !dbg !3484
  %7 = load ptr, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3485, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3493, metadata !DIExpression()), !dbg !3494
  %8 = getelementptr inbounds %struct.bldc_ref_speed_data, ptr %5, i32 0, i32 0, !dbg !3495
  store i8 2, ptr %8, align 1, !dbg !3496
  store i32 0, ptr %6, align 4, !dbg !3497
  br label %9, !dbg !3499

9:                                                ; preds = %23, %2
  %10 = load i32, ptr %6, align 4, !dbg !3500
  %11 = icmp slt i32 %10, 4, !dbg !3502
  br i1 %11, label %12, label %26, !dbg !3503

12:                                               ; preds = %9
  %13 = load ptr, ptr %4, align 8, !dbg !3504
  %14 = load i32, ptr %6, align 4, !dbg !3504
  %15 = sext i32 %14 to i64, !dbg !3504
  %16 = getelementptr inbounds i16, ptr %13, i64 %15, !dbg !3504
  %17 = load i16, ptr %16, align 2, !dbg !3504
  %18 = call noundef zeroext i16 @_ZL10__bswap_16t(i16 noundef zeroext %17), !dbg !3504
  %19 = getelementptr inbounds %struct.bldc_ref_speed_data, ptr %5, i32 0, i32 1, !dbg !3505
  %20 = load i32, ptr %6, align 4, !dbg !3506
  %21 = sext i32 %20 to i64, !dbg !3507
  %22 = getelementptr inbounds [4 x i16], ptr %19, i64 0, i64 %21, !dbg !3507
  store i16 %18, ptr %22, align 1, !dbg !3508
  br label %23, !dbg !3507

23:                                               ; preds = %12
  %24 = load i32, ptr %6, align 4, !dbg !3509
  %25 = add nsw i32 %24, 1, !dbg !3509
  store i32 %25, ptr %6, align 4, !dbg !3509
  br label %9, !dbg !3510, !llvm.loop !3511

26:                                               ; preds = %9
  %27 = getelementptr inbounds %struct.bldc_ref_speed_data, ptr %5, i32 0, i32 2, !dbg !3513
  store i8 0, ptr %27, align 1, !dbg !3514
  %28 = call noundef zeroext i8 @_ZN5Linux14RCOutput_Bebop9_checksumEPhj(ptr noundef nonnull align 8 dereferenceable(152) %7, ptr noundef %5, i32 noundef 10), !dbg !3515
  %29 = getelementptr inbounds %struct.bldc_ref_speed_data, ptr %5, i32 0, i32 3, !dbg !3516
  store i8 %28, ptr %29, align 1, !dbg !3517
  %30 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %7, i32 0, i32 1, !dbg !3518
  %31 = load ptr, ptr %30, align 8, !dbg !3518
  %32 = load ptr, ptr %31, align 8, !dbg !3520
  %33 = getelementptr inbounds ptr, ptr %32, i64 0, !dbg !3520
  %34 = load ptr, ptr %33, align 8, !dbg !3520
  %35 = call noundef zeroext i1 %34(ptr noundef nonnull align 8 dereferenceable(8) %31, i32 noundef 0), !dbg !3520
  br i1 %35, label %37, label %36, !dbg !3521

36:                                               ; preds = %26
  br label %51, !dbg !3522

37:                                               ; preds = %26
  %38 = load ptr, ptr @_ZL3hal, align 8, !dbg !3523
  %39 = getelementptr inbounds %"class.AP_HAL::HAL", ptr %38, i32 0, i32 9, !dbg !3524
  %40 = load ptr, ptr %39, align 8, !dbg !3524
  %41 = load ptr, ptr %40, align 8, !dbg !3525
  %42 = getelementptr inbounds ptr, ptr %41, i64 4, !dbg !3525
  %43 = load ptr, ptr %42, align 8, !dbg !3525
  %44 = call noundef zeroext i8 %43(ptr noundef nonnull align 8 dereferenceable(9) %40, i8 noundef zeroext 8, i8 noundef zeroext 11, ptr noundef %5), !dbg !3525
  %45 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %7, i32 0, i32 1, !dbg !3526
  %46 = load ptr, ptr %45, align 8, !dbg !3526
  %47 = load ptr, ptr %46, align 8, !dbg !3527
  %48 = getelementptr inbounds ptr, ptr %47, i64 2, !dbg !3527
  %49 = load ptr, ptr %48, align 8, !dbg !3527
  %50 = call noundef zeroext i1 %49(ptr noundef nonnull align 8 dereferenceable(8) %46), !dbg !3527
  br label %51, !dbg !3528

51:                                               ; preds = %37, %36
  ret void, !dbg !3528
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define internal noundef zeroext i16 @_ZL10__bswap_16t(i16 noundef zeroext %0) #1 !dbg !3529 {
  %2 = alloca i16, align 2
  store i16 %0, ptr %2, align 2
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3533, metadata !DIExpression()), !dbg !3534
  %3 = load i16, ptr %2, align 2, !dbg !3535
  %4 = zext i16 %3 to i32, !dbg !3535
  %5 = ashr i32 %4, 8, !dbg !3535
  %6 = and i32 %5, 255, !dbg !3535
  %7 = load i16, ptr %2, align 2, !dbg !3535
  %8 = zext i16 %7 to i32, !dbg !3535
  %9 = and i32 %8, 255, !dbg !3535
  %10 = shl i32 %9, 8, !dbg !3535
  %11 = or i32 %6, %10, !dbg !3535
  %12 = trunc i32 %11 to i16, !dbg !3535
  ret i16 %12, !dbg !3536
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef zeroext i8 @_ZN5Linux14RCOutput_Bebop9_checksumEPhj(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %1, i32 noundef %2) #1 align 2 !dbg !3537 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3538, metadata !DIExpression()), !dbg !3539
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3540, metadata !DIExpression()), !dbg !3541
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3542, metadata !DIExpression()), !dbg !3543
  %9 = load ptr, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3544, metadata !DIExpression()), !dbg !3545
  %10 = load ptr, ptr %5, align 8, !dbg !3546
  %11 = getelementptr inbounds i8, ptr %10, i64 0, !dbg !3546
  %12 = load i8, ptr %11, align 1, !dbg !3546
  store i8 %12, ptr %7, align 1, !dbg !3545
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3547, metadata !DIExpression()), !dbg !3548
  store i32 1, ptr %8, align 4, !dbg !3549
  br label %13, !dbg !3551

13:                                               ; preds = %28, %3
  %14 = load i32, ptr %8, align 4, !dbg !3552
  %15 = load i32, ptr %6, align 4, !dbg !3554
  %16 = icmp ult i32 %14, %15, !dbg !3555
  br i1 %16, label %17, label %31, !dbg !3556

17:                                               ; preds = %13
  %18 = load i8, ptr %7, align 1, !dbg !3557
  %19 = zext i8 %18 to i32, !dbg !3557
  %20 = load ptr, ptr %5, align 8, !dbg !3558
  %21 = load i32, ptr %8, align 4, !dbg !3559
  %22 = zext i32 %21 to i64, !dbg !3558
  %23 = getelementptr inbounds i8, ptr %20, i64 %22, !dbg !3558
  %24 = load i8, ptr %23, align 1, !dbg !3558
  %25 = zext i8 %24 to i32, !dbg !3558
  %26 = xor i32 %19, %25, !dbg !3560
  %27 = trunc i32 %26 to i8, !dbg !3557
  store i8 %27, ptr %7, align 1, !dbg !3561
  br label %28, !dbg !3562

28:                                               ; preds = %17
  %29 = load i32, ptr %8, align 4, !dbg !3563
  %30 = add i32 %29, 1, !dbg !3563
  store i32 %30, ptr %8, align 4, !dbg !3563
  br label %13, !dbg !3564, !llvm.loop !3565

31:                                               ; preds = %13
  %32 = load i8, ptr %7, align 1, !dbg !3567
  ret i8 %32, !dbg !3568
}

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_RCOutput_Bebop.cpp() #14 section ".text.startup" !dbg !3569 {
  call void @__cxx_global_var_init(), !dbg !3572
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #14 section ".text.startup" !dbg !3573 {
  %1 = call noundef nonnull align 8 dereferenceable(168) ptr @_ZN6AP_HAL7get_HALEv(), !dbg !3574
  store ptr %1, ptr @_ZL3hal, align 8, !dbg !3576
  ret void, !dbg !3574
}

declare noundef nonnull align 8 dereferenceable(168) ptr @_ZN6AP_HAL7get_HALEv() #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_ZN5Linux14RCOutput_BebopC2Ev(ptr noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #6 align 2 !dbg !3577 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3578, metadata !DIExpression()), !dbg !3579
  %3 = load ptr, ptr %2, align 8
  call void @_ZN6AP_HAL8RCOutputC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #17, !dbg !3580
  store ptr getelementptr inbounds ({ [21 x ptr] }, ptr @_ZTVN5Linux14RCOutput_BebopE, i32 0, inrange i32 0, i32 2), ptr %3, align 8, !dbg !3581
  %4 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %3, i32 0, i32 1, !dbg !3582
  store ptr null, ptr %4, align 8, !dbg !3582
  %5 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %3, i32 0, i32 6, !dbg !3583
  store i16 1100, ptr %5, align 2, !dbg !3583
  %6 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %3, i32 0, i32 7, !dbg !3584
  store i16 1900, ptr %6, align 4, !dbg !3584
  %7 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %3, i32 0, i32 8, !dbg !3585
  store i8 1, ptr %7, align 2, !dbg !3585
  %8 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %3, i32 0, i32 9, !dbg !3586
  store i8 0, ptr %8, align 1, !dbg !3586
  %9 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %3, i32 0, i32 12, !dbg !3588
  %10 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %3, i32 0, i32 13, !dbg !3588
  %11 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %3, i32 0, i32 3, !dbg !3590
  %12 = getelementptr inbounds [4 x i16], ptr %11, i64 0, i64 0, !dbg !3592
  call void @llvm.memset.p0.i64(ptr align 8 %12, i8 0, i64 8, i1 false), !dbg !3592
  %13 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %3, i32 0, i32 2, !dbg !3593
  %14 = getelementptr inbounds [4 x i16], ptr %13, i64 0, i64 0, !dbg !3594
  call void @llvm.memset.p0.i64(ptr align 8 %14, i8 0, i64 8, i1 false), !dbg !3594
  %15 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %3, i32 0, i32 4, !dbg !3595
  %16 = getelementptr inbounds [4 x i16], ptr %15, i64 0, i64 0, !dbg !3596
  call void @llvm.memset.p0.i64(ptr align 8 %16, i8 0, i64 8, i1 false), !dbg !3596
  ret void, !dbg !3597
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN6AP_HAL8RCOutputC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 !dbg !3598 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3600, metadata !DIExpression()), !dbg !3601
  %3 = load ptr, ptr %2, align 8
  store ptr getelementptr inbounds ({ [21 x ptr] }, ptr @_ZTVN6AP_HAL8RCOutputE, i32 0, inrange i32 0, i32 2), ptr %3, align 8, !dbg !3602
  ret void, !dbg !3602
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN6AP_HAL8RCOutput4corkEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !dbg !3603 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3604, metadata !DIExpression()), !dbg !3605
  %3 = load ptr, ptr %2, align 8
  ret void, !dbg !3606
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN6AP_HAL8RCOutput4pushEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !dbg !3607 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3608, metadata !DIExpression()), !dbg !3609
  %3 = load ptr, ptr %2, align 8
  ret void, !dbg !3610
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN6AP_HAL8RCOutput15set_esc_scalingEtt(ptr noundef nonnull align 8 dereferenceable(8) %0, i16 noundef zeroext %1, i16 noundef zeroext %2) unnamed_addr #1 comdat align 2 !dbg !3611 {
  %4 = alloca ptr, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3612, metadata !DIExpression()), !dbg !3613
  store i16 %1, ptr %5, align 2
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3614, metadata !DIExpression()), !dbg !3615
  store i16 %2, ptr %6, align 2
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3616, metadata !DIExpression()), !dbg !3617
  %7 = load ptr, ptr %4, align 8
  ret void, !dbg !3618
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef i32 @_ZN5Linux14RCOutput_Bebop13read_obs_dataER17BebopBLDC_ObsData(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 2 dereferenceable(18) %1) #0 align 2 !dbg !3619 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct.bldc_obs_data, align 1
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3620, metadata !DIExpression()), !dbg !3621
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3622, metadata !DIExpression()), !dbg !3623
  %8 = load ptr, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3624, metadata !DIExpression()), !dbg !3634
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3635, metadata !DIExpression()), !dbg !3636
  call void @llvm.memset.p0.i64(ptr align 1 %6, i8 0, i64 15, i1 false), !dbg !3637
  %9 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %8, i32 0, i32 1, !dbg !3638
  %10 = load ptr, ptr %9, align 8, !dbg !3638
  %11 = load ptr, ptr %10, align 8, !dbg !3640
  %12 = getelementptr inbounds ptr, ptr %11, i64 0, !dbg !3640
  %13 = load ptr, ptr %12, align 8, !dbg !3640
  %14 = call noundef zeroext i1 %13(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef 0), !dbg !3640
  br i1 %14, label %16, label %15, !dbg !3641

15:                                               ; preds = %2
  store i32 -16, ptr %3, align 4, !dbg !3642
  br label %123, !dbg !3642

16:                                               ; preds = %2
  %17 = load ptr, ptr @_ZL3hal, align 8, !dbg !3643
  %18 = getelementptr inbounds %"class.AP_HAL::HAL", ptr %17, i32 0, i32 9, !dbg !3644
  %19 = load ptr, ptr %18, align 8, !dbg !3644
  %20 = load ptr, ptr %19, align 8, !dbg !3645
  %21 = getelementptr inbounds ptr, ptr %20, i64 9, !dbg !3645
  %22 = load ptr, ptr %21, align 8, !dbg !3645
  %23 = call noundef zeroext i8 %22(ptr noundef nonnull align 8 dereferenceable(9) %19, i8 noundef zeroext 8, i8 noundef zeroext 32, i8 noundef zeroext 15, ptr noundef %6), !dbg !3645
  %24 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %8, i32 0, i32 1, !dbg !3646
  %25 = load ptr, ptr %24, align 8, !dbg !3646
  %26 = load ptr, ptr %25, align 8, !dbg !3647
  %27 = getelementptr inbounds ptr, ptr %26, i64 2, !dbg !3647
  %28 = load ptr, ptr %27, align 8, !dbg !3647
  %29 = call noundef zeroext i1 %28(ptr noundef nonnull align 8 dereferenceable(8) %25), !dbg !3647
  %30 = getelementptr inbounds %struct.bldc_obs_data, ptr %6, i32 0, i32 6, !dbg !3648
  %31 = load i8, ptr %30, align 1, !dbg !3648
  %32 = zext i8 %31 to i32, !dbg !3650
  %33 = call noundef zeroext i8 @_ZN5Linux14RCOutput_Bebop9_checksumEPhj(ptr noundef nonnull align 8 dereferenceable(152) %8, ptr noundef %6, i32 noundef 14), !dbg !3651
  %34 = zext i8 %33 to i32, !dbg !3651
  %35 = icmp ne i32 %32, %34, !dbg !3652
  br i1 %35, label %36, label %43, !dbg !3653

36:                                               ; preds = %16
  %37 = load ptr, ptr @_ZL3hal, align 8, !dbg !3654
  %38 = getelementptr inbounds %"class.AP_HAL::HAL", ptr %37, i32 0, i32 14, !dbg !3655
  %39 = load ptr, ptr %38, align 8, !dbg !3655
  %40 = load ptr, ptr %39, align 8, !dbg !3656
  %41 = getelementptr inbounds ptr, ptr %40, i64 5, !dbg !3656
  %42 = load ptr, ptr %41, align 8, !dbg !3656
  call void (ptr, ptr, ...) %42(ptr noundef nonnull align 8 dereferenceable(8) %39, ptr noundef @.str.11), !dbg !3656
  br label %43, !dbg !3654

43:                                               ; preds = %36, %16
  store i32 0, ptr %7, align 4, !dbg !3657
  br label %44, !dbg !3659

44:                                               ; preds = %98, %43
  %45 = load i32, ptr %7, align 4, !dbg !3660
  %46 = icmp slt i32 %45, 4, !dbg !3662
  br i1 %46, label %47, label %101, !dbg !3663

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.bldc_obs_data, ptr %6, i32 0, i32 0, !dbg !3664
  %49 = load i32, ptr %7, align 4, !dbg !3666
  %50 = sext i32 %49 to i64, !dbg !3667
  %51 = getelementptr inbounds [4 x i16], ptr %48, i64 0, i64 %50, !dbg !3667
  %52 = load i16, ptr %51, align 1, !dbg !3667
  %53 = zext i16 %52 to i32, !dbg !3667
  %54 = and i32 %53, 128, !dbg !3668
  %55 = icmp ne i32 %54, 0, !dbg !3669
  %56 = zext i1 %55 to i64, !dbg !3669
  %57 = select i1 %55, i32 1, i32 0, !dbg !3669
  %58 = trunc i32 %57 to i8, !dbg !3669
  %59 = load ptr, ptr %5, align 8, !dbg !3670
  %60 = getelementptr inbounds %class.BebopBLDC_ObsData, ptr %59, i32 0, i32 1, !dbg !3671
  %61 = load i32, ptr %7, align 4, !dbg !3672
  %62 = sext i32 %61 to i64, !dbg !3670
  %63 = getelementptr inbounds [4 x i8], ptr %60, i64 0, i64 %62, !dbg !3670
  store i8 %58, ptr %63, align 1, !dbg !3673
  %64 = getelementptr inbounds %struct.bldc_obs_data, ptr %6, i32 0, i32 0, !dbg !3674
  %65 = load i32, ptr %7, align 4, !dbg !3675
  %66 = sext i32 %65 to i64, !dbg !3676
  %67 = getelementptr inbounds [4 x i16], ptr %64, i64 0, i64 %66, !dbg !3676
  %68 = load i16, ptr %67, align 1, !dbg !3677
  %69 = zext i16 %68 to i32, !dbg !3677
  %70 = and i32 %69, 65407, !dbg !3677
  %71 = trunc i32 %70 to i16, !dbg !3677
  store i16 %71, ptr %67, align 1, !dbg !3677
  %72 = getelementptr inbounds %struct.bldc_obs_data, ptr %6, i32 0, i32 0, !dbg !3678
  %73 = load i32, ptr %7, align 4, !dbg !3678
  %74 = sext i32 %73 to i64, !dbg !3678
  %75 = getelementptr inbounds [4 x i16], ptr %72, i64 0, i64 %74, !dbg !3678
  %76 = load i16, ptr %75, align 1, !dbg !3678
  %77 = call noundef zeroext i16 @_ZL10__bswap_16t(i16 noundef zeroext %76), !dbg !3678
  %78 = load ptr, ptr %5, align 8, !dbg !3679
  %79 = getelementptr inbounds %class.BebopBLDC_ObsData, ptr %78, i32 0, i32 0, !dbg !3680
  %80 = load i32, ptr %7, align 4, !dbg !3681
  %81 = sext i32 %80 to i64, !dbg !3679
  %82 = getelementptr inbounds [4 x i16], ptr %79, i64 0, i64 %81, !dbg !3679
  store i16 %77, ptr %82, align 2, !dbg !3682
  %83 = load ptr, ptr %5, align 8, !dbg !3683
  %84 = getelementptr inbounds %class.BebopBLDC_ObsData, ptr %83, i32 0, i32 0, !dbg !3685
  %85 = load i32, ptr %7, align 4, !dbg !3686
  %86 = sext i32 %85 to i64, !dbg !3683
  %87 = getelementptr inbounds [4 x i16], ptr %84, i64 0, i64 %86, !dbg !3683
  %88 = load i16, ptr %87, align 2, !dbg !3683
  %89 = zext i16 %88 to i32, !dbg !3683
  %90 = icmp eq i32 %89, 0, !dbg !3687
  br i1 %90, label %91, label %97, !dbg !3688

91:                                               ; preds = %47
  %92 = load ptr, ptr %5, align 8, !dbg !3689
  %93 = getelementptr inbounds %class.BebopBLDC_ObsData, ptr %92, i32 0, i32 1, !dbg !3690
  %94 = load i32, ptr %7, align 4, !dbg !3691
  %95 = sext i32 %94 to i64, !dbg !3689
  %96 = getelementptr inbounds [4 x i8], ptr %93, i64 0, i64 %95, !dbg !3689
  store i8 0, ptr %96, align 1, !dbg !3692
  br label %97, !dbg !3689

97:                                               ; preds = %91, %47
  br label %98, !dbg !3693

98:                                               ; preds = %97
  %99 = load i32, ptr %7, align 4, !dbg !3694
  %100 = add nsw i32 %99, 1, !dbg !3694
  store i32 %100, ptr %7, align 4, !dbg !3694
  br label %44, !dbg !3695, !llvm.loop !3696

101:                                              ; preds = %44
  %102 = getelementptr inbounds %struct.bldc_obs_data, ptr %6, i32 0, i32 1, !dbg !3698
  %103 = load i16, ptr %102, align 1, !dbg !3698
  %104 = call noundef zeroext i16 @_ZL10__bswap_16t(i16 noundef zeroext %103), !dbg !3698
  %105 = load ptr, ptr %5, align 8, !dbg !3699
  %106 = getelementptr inbounds %class.BebopBLDC_ObsData, ptr %105, i32 0, i32 2, !dbg !3700
  store i16 %104, ptr %106, align 2, !dbg !3701
  %107 = getelementptr inbounds %struct.bldc_obs_data, ptr %6, i32 0, i32 2, !dbg !3702
  %108 = load i8, ptr %107, align 1, !dbg !3702
  %109 = load ptr, ptr %5, align 8, !dbg !3703
  %110 = getelementptr inbounds %class.BebopBLDC_ObsData, ptr %109, i32 0, i32 3, !dbg !3704
  store i8 %108, ptr %110, align 2, !dbg !3705
  %111 = getelementptr inbounds %struct.bldc_obs_data, ptr %6, i32 0, i32 3, !dbg !3706
  %112 = load i8, ptr %111, align 1, !dbg !3706
  %113 = load ptr, ptr %5, align 8, !dbg !3707
  %114 = getelementptr inbounds %class.BebopBLDC_ObsData, ptr %113, i32 0, i32 4, !dbg !3708
  store i8 %112, ptr %114, align 1, !dbg !3709
  %115 = getelementptr inbounds %struct.bldc_obs_data, ptr %6, i32 0, i32 4, !dbg !3710
  %116 = load i8, ptr %115, align 1, !dbg !3710
  %117 = load ptr, ptr %5, align 8, !dbg !3711
  %118 = getelementptr inbounds %class.BebopBLDC_ObsData, ptr %117, i32 0, i32 5, !dbg !3712
  store i8 %116, ptr %118, align 2, !dbg !3713
  %119 = getelementptr inbounds %struct.bldc_obs_data, ptr %6, i32 0, i32 5, !dbg !3714
  %120 = load i8, ptr %119, align 1, !dbg !3714
  %121 = load ptr, ptr %5, align 8, !dbg !3715
  %122 = getelementptr inbounds %class.BebopBLDC_ObsData, ptr %121, i32 0, i32 6, !dbg !3716
  store i8 %120, ptr %122, align 1, !dbg !3717
  store i32 0, ptr %3, align 4, !dbg !3718
  br label %123, !dbg !3718

123:                                              ; preds = %101, %15
  %124 = load i32, ptr %3, align 4, !dbg !3719
  ret i32 %124, !dbg !3719
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN5Linux14RCOutput_Bebop12_toggle_gpioEh(ptr noundef nonnull align 8 dereferenceable(152) %0, i8 noundef zeroext %1) #0 align 2 !dbg !3720 {
  %3 = alloca ptr, align 8
  %4 = alloca i8, align 1
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3721, metadata !DIExpression()), !dbg !3722
  store i8 %1, ptr %4, align 1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3723, metadata !DIExpression()), !dbg !3724
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %5, i32 0, i32 1, !dbg !3725
  %7 = load ptr, ptr %6, align 8, !dbg !3725
  %8 = load ptr, ptr %7, align 8, !dbg !3727
  %9 = getelementptr inbounds ptr, ptr %8, i64 0, !dbg !3727
  %10 = load ptr, ptr %9, align 8, !dbg !3727
  %11 = call noundef zeroext i1 %10(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 0), !dbg !3727
  br i1 %11, label %13, label %12, !dbg !3728

12:                                               ; preds = %2
  br label %28, !dbg !3729

13:                                               ; preds = %2
  %14 = load ptr, ptr @_ZL3hal, align 8, !dbg !3730
  %15 = getelementptr inbounds %"class.AP_HAL::HAL", ptr %14, i32 0, i32 9, !dbg !3731
  %16 = load ptr, ptr %15, align 8, !dbg !3731
  %17 = load i8, ptr %4, align 1, !dbg !3732
  %18 = load ptr, ptr %16, align 8, !dbg !3733
  %19 = getelementptr inbounds ptr, ptr %18, i64 5, !dbg !3733
  %20 = load ptr, ptr %19, align 8, !dbg !3733
  %21 = call noundef zeroext i8 %20(ptr noundef nonnull align 8 dereferenceable(9) %16, i8 noundef zeroext 8, i8 noundef zeroext 77, i8 noundef zeroext %17), !dbg !3733
  %22 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %5, i32 0, i32 1, !dbg !3734
  %23 = load ptr, ptr %22, align 8, !dbg !3734
  %24 = load ptr, ptr %23, align 8, !dbg !3735
  %25 = getelementptr inbounds ptr, ptr %24, i64 2, !dbg !3735
  %26 = load ptr, ptr %25, align 8, !dbg !3735
  %27 = call noundef zeroext i1 %26(ptr noundef nonnull align 8 dereferenceable(8) %23), !dbg !3735
  br label %28, !dbg !3736

28:                                               ; preds = %13, %12
  ret void, !dbg !3736
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN5Linux14RCOutput_Bebop11_play_soundEh(ptr noundef nonnull align 8 dereferenceable(152) %0, i8 noundef zeroext %1) #0 align 2 !dbg !3737 {
  %3 = alloca ptr, align 8
  %4 = alloca i8, align 1
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3738, metadata !DIExpression()), !dbg !3739
  store i8 %1, ptr %4, align 1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3740, metadata !DIExpression()), !dbg !3741
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %5, i32 0, i32 1, !dbg !3742
  %7 = load ptr, ptr %6, align 8, !dbg !3742
  %8 = load ptr, ptr %7, align 8, !dbg !3744
  %9 = getelementptr inbounds ptr, ptr %8, i64 0, !dbg !3744
  %10 = load ptr, ptr %9, align 8, !dbg !3744
  %11 = call noundef zeroext i1 %10(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 0), !dbg !3744
  br i1 %11, label %13, label %12, !dbg !3745

12:                                               ; preds = %2
  br label %28, !dbg !3746

13:                                               ; preds = %2
  %14 = load ptr, ptr @_ZL3hal, align 8, !dbg !3747
  %15 = getelementptr inbounds %"class.AP_HAL::HAL", ptr %14, i32 0, i32 9, !dbg !3748
  %16 = load ptr, ptr %15, align 8, !dbg !3748
  %17 = load i8, ptr %4, align 1, !dbg !3749
  %18 = load ptr, ptr %16, align 8, !dbg !3750
  %19 = getelementptr inbounds ptr, ptr %18, i64 5, !dbg !3750
  %20 = load ptr, ptr %19, align 8, !dbg !3750
  %21 = call noundef zeroext i8 %20(ptr noundef nonnull align 8 dereferenceable(9) %16, i8 noundef zeroext 8, i8 noundef zeroext -126, i8 noundef zeroext %17), !dbg !3750
  %22 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %5, i32 0, i32 1, !dbg !3751
  %23 = load ptr, ptr %22, align 8, !dbg !3751
  %24 = load ptr, ptr %23, align 8, !dbg !3752
  %25 = getelementptr inbounds ptr, ptr %24, i64 2, !dbg !3752
  %26 = load ptr, ptr %25, align 8, !dbg !3752
  %27 = call noundef zeroext i1 %26(ptr noundef nonnull align 8 dereferenceable(8) %23), !dbg !3752
  br label %28, !dbg !3753

28:                                               ; preds = %13, %12
  ret void, !dbg !3753
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN5Linux6ThreadD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 !dbg !3754 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3755, metadata !DIExpression()), !dbg !3756
  %3 = load ptr, ptr %2, align 8
  ret void, !dbg !3757
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN5Linux6ThreadD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 !dbg !3758 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3759, metadata !DIExpression()), !dbg !3760
  %3 = load ptr, ptr %2, align 8
  call void @_ZN5Linux6ThreadD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %3) #17, !dbg !3761
  call void @_ZdlPv(ptr noundef %3) #19, !dbg !3761
  ret void, !dbg !3762
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef zeroext i1 @_ZN5Linux6Thread4_runEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 align 2 !dbg !3763 {
  %2 = alloca i1, align 1
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3764, metadata !DIExpression()), !dbg !3765
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %"class.Linux::Thread", ptr %4, i32 0, i32 1, !dbg !3766
  %6 = call noundef zeroext i1 @_ZNK7FunctorIvJEEcvbEv(ptr noundef nonnull align 8 dereferenceable(16) %5), !dbg !3766
  br i1 %6, label %8, label %7, !dbg !3768

7:                                                ; preds = %1
  store i1 false, ptr %2, align 1, !dbg !3769
  br label %10, !dbg !3769

8:                                                ; preds = %1
  %9 = getelementptr inbounds %"class.Linux::Thread", ptr %4, i32 0, i32 1, !dbg !3771
  call void @_ZNK7FunctorIvJEEclEv(ptr noundef nonnull align 8 dereferenceable(16) %9), !dbg !3771
  store i1 true, ptr %2, align 1, !dbg !3772
  br label %10, !dbg !3772

10:                                               ; preds = %8, %7
  %11 = load i1, ptr %2, align 1, !dbg !3773
  ret i1 %11, !dbg !3773
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7FunctorIvJEEcvbEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #1 comdat align 2 !dbg !3774 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3775, metadata !DIExpression()), !dbg !3777
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.__pthread_internal_list, ptr %3, i32 0, i32 1, !dbg !3778
  %5 = load ptr, ptr %4, align 8, !dbg !3778
  %6 = icmp ne ptr %5, null, !dbg !3779
  ret i1 %6, !dbg !3780
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNK7FunctorIvJEEclEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #0 comdat align 2 !dbg !3781 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3782, metadata !DIExpression()), !dbg !3783
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.__pthread_internal_list, ptr %3, i32 0, i32 1, !dbg !3784
  %5 = load ptr, ptr %4, align 8, !dbg !3784
  %6 = getelementptr inbounds %struct.__pthread_internal_list, ptr %3, i32 0, i32 0, !dbg !3785
  %7 = load ptr, ptr %6, align 8, !dbg !3785
  call void %5(ptr noundef %7), !dbg !3784
  ret void, !dbg !3786
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN5Linux14PeriodicThreadD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 !dbg !3787 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3807, metadata !DIExpression()), !dbg !3809
  %3 = load ptr, ptr %2, align 8
  call void @_ZN5Linux6ThreadD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %3) #17, !dbg !3810
  ret void, !dbg !3812
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN5Linux14PeriodicThreadD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 !dbg !3813 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3814, metadata !DIExpression()), !dbg !3815
  %3 = load ptr, ptr %2, align 8
  call void @_ZN5Linux14PeriodicThreadD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %3) #17, !dbg !3816
  call void @_ZdlPv(ptr noundef %3) #19, !dbg !3816
  ret void, !dbg !3816
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef zeroext i1 @_ZN5Linux14PeriodicThread4_runEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 align 2 !dbg !3817 {
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3818, metadata !DIExpression()), !dbg !3819
  %5 = load ptr, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3820, metadata !DIExpression()), !dbg !3821
  %6 = call noundef i64 @_ZN6AP_HAL8micros64Ev(), !dbg !3822
  %7 = getelementptr inbounds %"class.Linux::PeriodicThread", ptr %5, i32 0, i32 1, !dbg !3823
  %8 = load i64, ptr %7, align 8, !dbg !3823
  %9 = add i64 %6, %8, !dbg !3824
  store i64 %9, ptr %3, align 8, !dbg !3821
  br label %10, !dbg !3825

10:                                               ; preds = %27, %1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3826, metadata !DIExpression()), !dbg !3828
  %11 = load i64, ptr %3, align 8, !dbg !3829
  %12 = call noundef i64 @_ZN6AP_HAL8micros64Ev(), !dbg !3830
  %13 = sub i64 %11, %12, !dbg !3831
  store i64 %13, ptr %4, align 8, !dbg !3828
  %14 = load i64, ptr %4, align 8, !dbg !3832
  %15 = getelementptr inbounds %"class.Linux::PeriodicThread", ptr %5, i32 0, i32 1, !dbg !3834
  %16 = load i64, ptr %15, align 8, !dbg !3834
  %17 = icmp ugt i64 %14, %16, !dbg !3835
  br i1 %17, label %18, label %20, !dbg !3836

18:                                               ; preds = %10
  %19 = call noundef i64 @_ZN6AP_HAL8micros64Ev(), !dbg !3837
  store i64 %19, ptr %3, align 8, !dbg !3839
  br label %27, !dbg !3840

20:                                               ; preds = %10
  %21 = load ptr, ptr @hal, align 8, !dbg !3841
  %22 = getelementptr inbounds %"class.AP_HAL::HAL", ptr %21, i32 0, i32 18, !dbg !3843
  %23 = load ptr, ptr %22, align 8, !dbg !3843
  %24 = call noundef ptr @_ZN5Linux9Scheduler4fromEPN6AP_HAL9SchedulerE(ptr noundef %23), !dbg !3844
  %25 = load i64, ptr %4, align 8, !dbg !3845
  %26 = trunc i64 %25 to i32, !dbg !3845
  call void @_ZN5Linux9Scheduler10microsleepEj(ptr noundef nonnull align 8 dereferenceable(1040) %24, i32 noundef %26), !dbg !3846
  br label %27

27:                                               ; preds = %20, %18
  %28 = getelementptr inbounds %"class.Linux::PeriodicThread", ptr %5, i32 0, i32 1, !dbg !3847
  %29 = load i64, ptr %28, align 8, !dbg !3847
  %30 = load i64, ptr %3, align 8, !dbg !3848
  %31 = add i64 %30, %29, !dbg !3848
  store i64 %31, ptr %3, align 8, !dbg !3848
  %32 = getelementptr inbounds %"class.Linux::Thread", ptr %5, i32 0, i32 1, !dbg !3849
  call void @_ZNK7FunctorIvJEEclEv(ptr noundef nonnull align 8 dereferenceable(16) %32), !dbg !3849
  br label %10, !dbg !3825, !llvm.loop !3850
}

declare noundef i64 @_ZN6AP_HAL8micros64Ev() #7

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZN5Linux9Scheduler4fromEPN6AP_HAL9SchedulerE(ptr noundef %0) #1 comdat align 2 !dbg !3852 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3859, metadata !DIExpression()), !dbg !3860
  %3 = load ptr, ptr %2, align 8, !dbg !3861
  ret ptr %3, !dbg !3862
}

declare void @_ZN5Linux9Scheduler10microsleepEj(ptr noundef nonnull align 8 dereferenceable(1040), i32 noundef) #7

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef ptr @_ZN5Linux6Thread15_run_trampolineEPv(ptr noundef %0) #0 align 2 !dbg !3863 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3864, metadata !DIExpression()), !dbg !3865
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3866, metadata !DIExpression()), !dbg !3867
  %4 = load ptr, ptr %2, align 8, !dbg !3868
  store ptr %4, ptr %3, align 8, !dbg !3867
  %5 = load ptr, ptr %3, align 8, !dbg !3869
  %6 = load ptr, ptr %5, align 8, !dbg !3870
  %7 = getelementptr inbounds ptr, ptr %6, i64 2, !dbg !3870
  %8 = load ptr, ptr %7, align 8, !dbg !3870
  %9 = call noundef zeroext i1 %8(ptr noundef nonnull align 8 dereferenceable(40) %5), !dbg !3870
  ret ptr null, !dbg !3871
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef zeroext i1 @_ZN5Linux6Thread5startEPKcii(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 align 2 !dbg !3872 {
  %5 = alloca i1, align 1
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sched_param, align 4
  %11 = alloca %union.pthread_attr_t, align 8
  %12 = alloca i32, align 4
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3873, metadata !DIExpression()), !dbg !3874
  store ptr %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3875, metadata !DIExpression()), !dbg !3876
  store i32 %2, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3877, metadata !DIExpression()), !dbg !3878
  store i32 %3, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3879, metadata !DIExpression()), !dbg !3880
  %13 = load ptr, ptr %6, align 8
  %14 = getelementptr inbounds %"class.Linux::Thread", ptr %13, i32 0, i32 2, !dbg !3881
  %15 = load i8, ptr %14, align 8, !dbg !3881
  %16 = trunc i8 %15 to i1, !dbg !3881
  br i1 %16, label %17, label %18, !dbg !3883

17:                                               ; preds = %4
  store i1 false, ptr %5, align 1, !dbg !3884
  br label %60, !dbg !3884

18:                                               ; preds = %4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !3886, metadata !DIExpression()), !dbg !3887
  %19 = getelementptr inbounds %struct.sched_param, ptr %10, i32 0, i32 0, !dbg !3888
  %20 = load i32, ptr %9, align 4, !dbg !3889
  store i32 %20, ptr %19, align 4, !dbg !3888
  call void @llvm.dbg.declare(metadata ptr %11, metadata !3890, metadata !DIExpression()), !dbg !3891
  call void @llvm.dbg.declare(metadata ptr %12, metadata !3892, metadata !DIExpression()), !dbg !3893
  %21 = call i32 @pthread_attr_init(ptr noundef %11) #17, !dbg !3894
  %22 = call i32 @geteuid() #17, !dbg !3895
  %23 = icmp eq i32 %22, 0, !dbg !3897
  br i1 %23, label %24, label %40, !dbg !3898

24:                                               ; preds = %18
  %25 = call i32 @pthread_attr_setinheritsched(ptr noundef %11, i32 noundef 1) #17, !dbg !3899
  store i32 %25, ptr %12, align 4, !dbg !3902
  %26 = icmp ne i32 %25, 0, !dbg !3903
  br i1 %26, label %35, label %27, !dbg !3904

27:                                               ; preds = %24
  %28 = load i32, ptr %8, align 4, !dbg !3905
  %29 = call i32 @pthread_attr_setschedpolicy(ptr noundef %11, i32 noundef %28) #17, !dbg !3906
  store i32 %29, ptr %12, align 4, !dbg !3907
  %30 = icmp ne i32 %29, 0, !dbg !3908
  br i1 %30, label %35, label %31, !dbg !3909

31:                                               ; preds = %27
  %32 = call i32 @pthread_attr_setschedparam(ptr noundef %11, ptr noundef %10) #17, !dbg !3910
  %33 = icmp ne i32 %32, 0, !dbg !3911
  %34 = zext i1 %33 to i32, !dbg !3910
  store i32 %34, ptr %12, align 4, !dbg !3912
  br i1 %33, label %35, label %39, !dbg !3913

35:                                               ; preds = %31, %27, %24
  %36 = load ptr, ptr %7, align 8, !dbg !3914
  %37 = load i32, ptr %12, align 4, !dbg !3916
  %38 = call ptr @strerror(i32 noundef %37) #17, !dbg !3917
  call void (ptr, ...) @_ZN6AP_HAL5panicEPKcz(ptr noundef @.str.12, ptr noundef %36, ptr noundef %38) #18, !dbg !3918
  unreachable, !dbg !3918

39:                                               ; preds = %31
  br label %40, !dbg !3919

40:                                               ; preds = %39, %18
  %41 = getelementptr inbounds %"class.Linux::Thread", ptr %13, i32 0, i32 3, !dbg !3920
  %42 = call i32 @pthread_create(ptr noundef %41, ptr noundef %11, ptr noundef @_ZN5Linux6Thread15_run_trampolineEPv, ptr noundef %13) #17, !dbg !3921
  store i32 %42, ptr %12, align 4, !dbg !3922
  %43 = load i32, ptr %12, align 4, !dbg !3923
  %44 = icmp ne i32 %43, 0, !dbg !3925
  br i1 %44, label %45, label %49, !dbg !3926

45:                                               ; preds = %40
  %46 = load ptr, ptr %7, align 8, !dbg !3927
  %47 = load i32, ptr %12, align 4, !dbg !3929
  %48 = call ptr @strerror(i32 noundef %47) #17, !dbg !3930
  call void (ptr, ...) @_ZN6AP_HAL5panicEPKcz(ptr noundef @.str.1.13, ptr noundef %46, ptr noundef %48) #18, !dbg !3931
  unreachable, !dbg !3931

49:                                               ; preds = %40
  %50 = call i32 @pthread_attr_destroy(ptr noundef %11) #17, !dbg !3932
  %51 = load ptr, ptr %7, align 8, !dbg !3933
  %52 = icmp ne ptr %51, null, !dbg !3933
  br i1 %52, label %53, label %58, !dbg !3935

53:                                               ; preds = %49
  %54 = getelementptr inbounds %"class.Linux::Thread", ptr %13, i32 0, i32 3, !dbg !3936
  %55 = load i64, ptr %54, align 8, !dbg !3936
  %56 = load ptr, ptr %7, align 8, !dbg !3938
  %57 = call i32 @pthread_setname_np(i64 noundef %55, ptr noundef %56) #17, !dbg !3939
  br label %58, !dbg !3940

58:                                               ; preds = %53, %49
  %59 = getelementptr inbounds %"class.Linux::Thread", ptr %13, i32 0, i32 2, !dbg !3941
  store i8 1, ptr %59, align 8, !dbg !3942
  store i1 true, ptr %5, align 1, !dbg !3943
  br label %60, !dbg !3943

60:                                               ; preds = %58, %17
  %61 = load i1, ptr %5, align 1, !dbg !3944
  ret i1 %61, !dbg !3944
}

; Function Attrs: nounwind
declare i32 @geteuid() #3

; Function Attrs: nounwind
declare i32 @pthread_attr_destroy(ptr noundef) #3

; Function Attrs: nounwind
declare i32 @pthread_setname_np(i64 noundef, ptr noundef) #3

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef zeroext i1 @_ZN5Linux6Thread17is_current_threadEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #1 align 2 !dbg !3945 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3946, metadata !DIExpression()), !dbg !3947
  %3 = load ptr, ptr %2, align 8
  %4 = call i64 @pthread_self() #23, !dbg !3948
  %5 = getelementptr inbounds %"class.Linux::Thread", ptr %3, i32 0, i32 3, !dbg !3949
  %6 = load i64, ptr %5, align 8, !dbg !3949
  %7 = call i32 @pthread_equal(i64 noundef %4, i64 noundef %6) #23, !dbg !3950
  %8 = icmp ne i32 %7, 0, !dbg !3950
  ret i1 %8, !dbg !3951
}

; Function Attrs: nounwind willreturn memory(none)
declare i64 @pthread_self() #15

; Function Attrs: nounwind willreturn memory(none)
declare i32 @pthread_equal(i64 noundef, i64 noundef) #15

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef zeroext i1 @_ZN5Linux14PeriodicThread8set_rateEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) #0 align 2 !dbg !3952 {
  %3 = alloca i1, align 1
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3953, metadata !DIExpression()), !dbg !3954
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3955, metadata !DIExpression()), !dbg !3956
  %6 = load ptr, ptr %4, align 8
  %7 = getelementptr inbounds %"class.Linux::Thread", ptr %6, i32 0, i32 2, !dbg !3957
  %8 = load i8, ptr %7, align 8, !dbg !3957
  %9 = trunc i8 %8 to i1, !dbg !3957
  br i1 %9, label %13, label %10, !dbg !3959

10:                                               ; preds = %2
  %11 = load i32, ptr %5, align 4, !dbg !3960
  %12 = icmp eq i32 %11, 0, !dbg !3961
  br i1 %12, label %13, label %14, !dbg !3962

13:                                               ; preds = %10, %2
  store i1 false, ptr %3, align 1, !dbg !3963
  br label %19, !dbg !3963

14:                                               ; preds = %10
  %15 = load i32, ptr %5, align 4, !dbg !3965
  %16 = call noundef i32 @_Z10hz_to_usecj(i32 noundef %15), !dbg !3966
  %17 = zext i32 %16 to i64, !dbg !3966
  %18 = getelementptr inbounds %"class.Linux::PeriodicThread", ptr %6, i32 0, i32 1, !dbg !3967
  store i64 %17, ptr %18, align 8, !dbg !3968
  store i1 true, ptr %3, align 1, !dbg !3969
  br label %19, !dbg !3969

19:                                               ; preds = %14, %13
  %20 = load i1, ptr %3, align 1, !dbg !3970
  ret i1 %20, !dbg !3970
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @_Z10hz_to_usecj(i32 noundef %0) #1 comdat !dbg !3971 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3975, metadata !DIExpression()), !dbg !3976
  %3 = load i32, ptr %2, align 4, !dbg !3977
  %4 = zext i32 %3 to i64, !dbg !3977
  %5 = udiv i64 1000000, %4, !dbg !3978
  %6 = trunc i64 %5 to i32, !dbg !3979
  ret i32 %6, !dbg !3980
}

attributes #0 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noinline noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { builtin allocsize(0) }
attributes #17 = { nounwind }
attributes #18 = { noreturn }
attributes #19 = { builtin nounwind }
attributes #20 = { noreturn nounwind }
attributes #21 = { nounwind allocsize(0) }
attributes #22 = { nounwind willreturn memory(read) }
attributes #23 = { nounwind willreturn memory(none) }

!llvm.dbg.cu = !{!614, !57, !1908}
!llvm.ident = !{!2002, !2002, !2002}
!llvm.module.flags = !{!2003, !2004, !2005, !2006, !2007, !2008, !2009}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 61, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "ardupilot/libraries/AP_HAL_Linux/OpticalFlow_Onboard.cpp", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "39989a6ca62b51870b8b66b5593f6083")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !6)
!4 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !{!7}
!7 = !DISubrange(count: 12)
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(scope: null, file: !2, line: 75, type: !10, isLocal: true, isDefinition: true)
!10 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !11)
!11 = !{!12}
!12 = !DISubrange(count: 48)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(scope: null, file: !2, line: 116, type: !15, isLocal: true, isDefinition: true)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 376, elements: !16)
!16 = !{!17}
!17 = !DISubrange(count: 47)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(scope: null, file: !2, line: 121, type: !20, isLocal: true, isDefinition: true)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 344, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 43)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !2, line: 161, type: !25, isLocal: true, isDefinition: true)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 424, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 53)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(scope: null, file: !2, line: 176, type: !30, isLocal: true, isDefinition: true)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 42)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !2, line: 181, type: !35, isLocal: true, isDefinition: true)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 41)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(scope: null, file: !2, line: 188, type: !40, isLocal: true, isDefinition: true)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 360, elements: !41)
!41 = !{!42}
!42 = !DISubrange(count: 45)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(scope: null, file: !2, line: 251, type: !45, isLocal: true, isDefinition: true)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 464, elements: !46)
!46 = !{!47}
!47 = !DISubrange(count: 58)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(scope: null, file: !2, line: 265, type: !50, isLocal: true, isDefinition: true)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !51)
!51 = !{!52}
!52 = !DISubrange(count: 52)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(scope: null, file: !2, line: 301, type: !35, isLocal: true, isDefinition: true)
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(name: "hal", linkageName: "_ZL3hal", scope: !57, file: !61, line: 73, type: !602, isLocal: true, isDefinition: true)
!57 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !58, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !59, retainedTypes: !153, globals: !322, imports: !359, splitDebugInlining: false, nameTableKind: None)
!58 = !DIFile(filename: "/home/raj/ardupilot/libraries/AP_HAL_Linux/RCOutput_Bebop.cpp", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "96ffff83eeeaf56fe2bf37bd1a24ebee")
!59 = !{!60, !66, !74, !79, !87}
!60 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !61, line: 66, baseType: !62, size: 32, elements: !63)
!61 = !DIFile(filename: "ardupilot/libraries/AP_HAL_Linux/RCOutput_Bebop.cpp", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "96ffff83eeeaf56fe2bf37bd1a24ebee")
!62 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!63 = !{!64, !65}
!64 = !DIEnumerator(name: "BEBOP_BLDC_STARTED", value: 0, isUnsigned: true)
!65 = !DIEnumerator(name: "BEBOP_BLDC_STOPPED", value: 1, isUnsigned: true)
!66 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "bebop_bldc_motor", file: !67, line: 5, baseType: !62, size: 32, elements: !68, identifier: "_ZTS16bebop_bldc_motor")
!67 = !DIFile(filename: "ardupilot/libraries/AP_HAL_Linux/RCOutput_Bebop.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "08241026a11acb5d9d66b6635490a9b0")
!68 = !{!69, !70, !71, !72, !73}
!69 = !DIEnumerator(name: "BEBOP_BLDC_MOTOR_1", value: 0, isUnsigned: true)
!70 = !DIEnumerator(name: "BEBOP_BLDC_MOTOR_2", value: 1, isUnsigned: true)
!71 = !DIEnumerator(name: "BEBOP_BLDC_MOTOR_3", value: 2, isUnsigned: true)
!72 = !DIEnumerator(name: "BEBOP_BLDC_MOTOR_4", value: 3, isUnsigned: true)
!73 = !DIEnumerator(name: "BEBOP_BLDC_MOTORS_NUM", value: 4, isUnsigned: true)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !75, line: 124, baseType: !62, size: 32, elements: !76)
!75 = !DIFile(filename: "/usr/include/pthread.h", directory: "", checksumkind: CSK_MD5, checksum: "5205981c6f80cc3dc1e81231df63d8ef")
!76 = !{!77, !78}
!77 = !DIEnumerator(name: "PTHREAD_INHERIT_SCHED", value: 0, isUnsigned: true)
!78 = !DIEnumerator(name: "PTHREAD_EXPLICIT_SCHED", value: 1, isUnsigned: true)
!79 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "hw_type", file: !80, line: 10, baseType: !62, size: 32, elements: !81, identifier: "_ZTS7hw_type")
!80 = !DIFile(filename: "ardupilot/libraries/AP_HAL_Linux/Util.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "5ae01f950b4e3c71cb44c23bc1198fc5")
!81 = !{!82, !83, !84, !85, !86}
!82 = !DIEnumerator(name: "UTIL_HARDWARE_RPI1", value: 0, isUnsigned: true)
!83 = !DIEnumerator(name: "UTIL_HARDWARE_RPI2", value: 1, isUnsigned: true)
!84 = !DIEnumerator(name: "UTIL_HARDWARE_BEBOP", value: 2, isUnsigned: true)
!85 = !DIEnumerator(name: "UTIL_HARDWARE_BEBOP2", value: 3, isUnsigned: true)
!86 = !DIEnumerator(name: "UTIL_NUM_HARDWARES", value: 4, isUnsigned: true)
!87 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "output_mode", scope: !89, file: !88, line: 119, baseType: !62, size: 32, elements: !150, identifier: "_ZTSN6AP_HAL8RCOutput11output_modeE")
!88 = !DIFile(filename: "ardupilot/libraries/AP_HAL/RCOutput.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "ad0613ee10b38c6ce33c58543afd8bad")
!89 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "RCOutput", scope: !90, file: !88, line: 31, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !91, vtableHolder: !89, identifier: "_ZTSN6AP_HAL8RCOutputE")
!90 = !DINamespace(name: "AP_HAL", scope: null)
!91 = !{!92, !98, !102, !112, !118, !121, !122, !125, !126, !127, !128, !132, !133, !134, !135, !136, !140, !141, !144, !147}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$RCOutput", scope: !88, file: !88, baseType: !93, size: 64, flags: DIFlagArtificial)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "__vtbl_ptr_type", baseType: !95, size: 64)
!95 = !DISubroutineType(types: !96)
!96 = !{!97}
!97 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!98 = !DISubprogram(name: "init", linkageName: "_ZN6AP_HAL8RCOutput4initEv", scope: !89, file: !88, line: 33, type: !99, scopeLine: 33, containingType: !89, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual)
!99 = !DISubroutineType(types: !100)
!100 = !{null, !101}
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!102 = !DISubprogram(name: "set_freq", linkageName: "_ZN6AP_HAL8RCOutput8set_freqEjt", scope: !89, file: !88, line: 36, type: !103, scopeLine: 36, containingType: !89, virtualIndex: 1, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual)
!103 = !DISubroutineType(types: !104)
!104 = !{null, !101, !105, !109}
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !106, line: 26, baseType: !107)
!106 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !108, line: 42, baseType: !62)
!108 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !106, line: 25, baseType: !110)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !108, line: 40, baseType: !111)
!111 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!112 = !DISubprogram(name: "get_freq", linkageName: "_ZN6AP_HAL8RCOutput8get_freqEh", scope: !89, file: !88, line: 37, type: !113, scopeLine: 37, containingType: !89, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual)
!113 = !DISubroutineType(types: !114)
!114 = !{!109, !101, !115}
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !106, line: 24, baseType: !116)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !108, line: 38, baseType: !117)
!117 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!118 = !DISubprogram(name: "enable_ch", linkageName: "_ZN6AP_HAL8RCOutput9enable_chEh", scope: !89, file: !88, line: 41, type: !119, scopeLine: 41, containingType: !89, virtualIndex: 3, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual)
!119 = !DISubroutineType(types: !120)
!120 = !{null, !101, !115}
!121 = !DISubprogram(name: "disable_ch", linkageName: "_ZN6AP_HAL8RCOutput10disable_chEh", scope: !89, file: !88, line: 42, type: !119, scopeLine: 42, containingType: !89, virtualIndex: 4, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual)
!122 = !DISubprogram(name: "write", linkageName: "_ZN6AP_HAL8RCOutput5writeEht", scope: !89, file: !88, line: 48, type: !123, scopeLine: 48, containingType: !89, virtualIndex: 5, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual)
!123 = !DISubroutineType(types: !124)
!124 = !{null, !101, !115, !109}
!125 = !DISubprogram(name: "cork", linkageName: "_ZN6AP_HAL8RCOutput4corkEv", scope: !89, file: !88, line: 58, type: !99, scopeLine: 58, containingType: !89, virtualIndex: 6, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!126 = !DISubprogram(name: "push", linkageName: "_ZN6AP_HAL8RCOutput4pushEv", scope: !89, file: !88, line: 67, type: !99, scopeLine: 67, containingType: !89, virtualIndex: 7, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!127 = !DISubprogram(name: "read", linkageName: "_ZN6AP_HAL8RCOutput4readEh", scope: !89, file: !88, line: 73, type: !113, scopeLine: 73, containingType: !89, virtualIndex: 8, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual)
!128 = !DISubprogram(name: "read", linkageName: "_ZN6AP_HAL8RCOutput4readEPth", scope: !89, file: !88, line: 74, type: !129, scopeLine: 74, containingType: !89, virtualIndex: 9, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual)
!129 = !DISubroutineType(types: !130)
!130 = !{null, !101, !131, !115}
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!132 = !DISubprogram(name: "read_last_sent", linkageName: "_ZN6AP_HAL8RCOutput14read_last_sentEh", scope: !89, file: !88, line: 77, type: !113, scopeLine: 77, containingType: !89, virtualIndex: 10, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!133 = !DISubprogram(name: "read_last_sent", linkageName: "_ZN6AP_HAL8RCOutput14read_last_sentEPth", scope: !89, file: !88, line: 78, type: !129, scopeLine: 78, containingType: !89, virtualIndex: 11, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!134 = !DISubprogram(name: "set_safety_pwm", linkageName: "_ZN6AP_HAL8RCOutput14set_safety_pwmEjt", scope: !89, file: !88, line: 84, type: !103, scopeLine: 84, containingType: !89, virtualIndex: 12, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!135 = !DISubprogram(name: "set_failsafe_pwm", linkageName: "_ZN6AP_HAL8RCOutput16set_failsafe_pwmEjt", scope: !89, file: !88, line: 89, type: !103, scopeLine: 89, containingType: !89, virtualIndex: 13, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!136 = !DISubprogram(name: "force_safety_on", linkageName: "_ZN6AP_HAL8RCOutput15force_safety_onEv", scope: !89, file: !88, line: 96, type: !137, scopeLine: 96, containingType: !89, virtualIndex: 14, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!137 = !DISubroutineType(types: !138)
!138 = !{!139, !101}
!139 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!140 = !DISubprogram(name: "force_safety_off", linkageName: "_ZN6AP_HAL8RCOutput16force_safety_offEv", scope: !89, file: !88, line: 101, type: !99, scopeLine: 101, containingType: !89, virtualIndex: 15, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!141 = !DISubprogram(name: "set_esc_scaling", linkageName: "_ZN6AP_HAL8RCOutput15set_esc_scalingEtt", scope: !89, file: !88, line: 109, type: !142, scopeLine: 109, containingType: !89, virtualIndex: 16, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!142 = !DISubroutineType(types: !143)
!143 = !{null, !101, !109, !109}
!144 = !DISubprogram(name: "enable_sbus_out", linkageName: "_ZN6AP_HAL8RCOutput15enable_sbus_outEt", scope: !89, file: !88, line: 114, type: !145, scopeLine: 114, containingType: !89, virtualIndex: 17, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!145 = !DISubroutineType(types: !146)
!146 = !{!139, !101, !109}
!147 = !DISubprogram(name: "set_output_mode", linkageName: "_ZN6AP_HAL8RCOutput15set_output_modeENS0_11output_modeE", scope: !89, file: !88, line: 123, type: !148, scopeLine: 123, containingType: !89, virtualIndex: 18, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!148 = !DISubroutineType(types: !149)
!149 = !{null, !101, !87}
!150 = !{!151, !152}
!151 = !DIEnumerator(name: "MODE_PWM_NORMAL", value: 0, isUnsigned: true)
!152 = !DIEnumerator(name: "MODE_PWM_ONESHOT", value: 1, isUnsigned: true)
!153 = !{!154, !109, !155, !110, !320}
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "RCOutput_Bebop", scope: !157, file: !67, line: 60, size: 1216, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !158, vtableHolder: !89)
!157 = !DINamespace(name: "Linux", scope: null)
!158 = !{!159, !160, !164, !168, !169, !170, !171, !172, !173, !174, !175, !176, !180, !210, !242, !246, !250, !251, !254, !257, !260, !261, !264, !265, !266, !267, !270, !273, !287, !290, !291, !292, !295, !309, !310, !311, !312, !315, !316}
!159 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !156, baseType: !89, flags: DIFlagPublic, extraData: i32 0)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_i2c_sem", scope: !156, file: !67, line: 82, baseType: !161, size: 64, offset: 64)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Semaphore", scope: !90, file: !163, line: 7, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN6AP_HAL9SemaphoreE")
!163 = !DIFile(filename: "ardupilot/libraries/AP_HAL/Semaphores.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "adfc5c77867951e90e4bb54608b881db")
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_request_period_us", scope: !156, file: !67, line: 83, baseType: !165, size: 64, offset: 128)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 64, elements: !166)
!166 = !{!167}
!167 = !DISubrange(count: 4)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_period_us", scope: !156, file: !67, line: 84, baseType: !165, size: 64, offset: 192)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_rpm", scope: !156, file: !67, line: 85, baseType: !165, size: 64, offset: 256)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_frequency", scope: !156, file: !67, line: 86, baseType: !109, size: 16, offset: 320)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_min_pwm", scope: !156, file: !67, line: 87, baseType: !109, size: 16, offset: 336)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_max_pwm", scope: !156, file: !67, line: 88, baseType: !109, size: 16, offset: 352)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_state", scope: !156, file: !67, line: 89, baseType: !115, size: 8, offset: 368)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_corking", scope: !156, file: !67, line: 90, baseType: !139, size: 8, offset: 376)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_max_rpm", scope: !156, file: !67, line: 91, baseType: !109, size: 16, offset: 384)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_thread", scope: !156, file: !67, line: 104, baseType: !177, size: 64, offset: 448)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !178, line: 27, baseType: !179)
!178 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!179 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_mutex", scope: !156, file: !67, line: 105, baseType: !181, size: 320, offset: 512)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !178, line: 72, baseType: !182)
!182 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !178, line: 67, size: 320, flags: DIFlagTypePassByValue, elements: !183, identifier: "_ZTS15pthread_mutex_t")
!183 = !{!184, !204, !208}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !182, file: !178, line: 69, baseType: !185, size: 320)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !186, line: 22, size: 320, flags: DIFlagTypePassByValue, elements: !187, identifier: "_ZTS17__pthread_mutex_s")
!186 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "584baedd80e6041b81caae7f496091c0")
!187 = !{!188, !189, !190, !191, !192, !193, !195, !196}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !185, file: !186, line: 24, baseType: !97, size: 32)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !185, file: !186, line: 25, baseType: !62, size: 32, offset: 32)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !185, file: !186, line: 26, baseType: !97, size: 32, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !185, file: !186, line: 28, baseType: !62, size: 32, offset: 96)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !185, file: !186, line: 32, baseType: !97, size: 32, offset: 128)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !185, file: !186, line: 34, baseType: !194, size: 16, offset: 160)
!194 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !185, file: !186, line: 35, baseType: !194, size: 16, offset: 176)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !185, file: !186, line: 36, baseType: !197, size: 128, offset: 192)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !198, line: 55, baseType: !199)
!198 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "04c81e86d34dad9c99ad006d32e47a0d")
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !198, line: 51, size: 128, flags: DIFlagTypePassByValue, elements: !200, identifier: "_ZTS23__pthread_internal_list")
!200 = !{!201, !203}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !199, file: !198, line: 53, baseType: !202, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !199, file: !198, line: 54, baseType: !202, size: 64, offset: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !182, file: !178, line: 70, baseType: !205, size: 320)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 320, elements: !206)
!206 = !{!207}
!207 = !DISubrange(count: 40)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !182, file: !178, line: 71, baseType: !209, size: 64)
!209 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_cond", scope: !156, file: !67, line: 106, baseType: !211, size: 384, offset: 832)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_cond_t", file: !178, line: 80, baseType: !212)
!212 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !178, line: 75, size: 384, flags: DIFlagTypePassByValue, elements: !213, identifier: "_ZTS14pthread_cond_t")
!213 = !{!214, !238, !240}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !212, file: !178, line: 77, baseType: !215, size: 384)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_cond_s", file: !198, line: 94, size: 384, flags: DIFlagTypePassByValue, elements: !216, identifier: "_ZTS16__pthread_cond_s")
!216 = !{!217, !229, !230, !234, !235, !236, !237}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "__wseq", scope: !215, file: !198, line: 96, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "__atomic_wide_counter", file: !219, line: 33, baseType: !220)
!219 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/atomic_wide_counter.h", directory: "", checksumkind: CSK_MD5, checksum: "2708e6e61e266abad2d765ccef838dbe")
!220 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !219, line: 25, size: 64, flags: DIFlagTypePassByValue, elements: !221, identifier: "_ZTS21__atomic_wide_counter")
!221 = !{!222, !224}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "__value64", scope: !220, file: !219, line: 27, baseType: !223, size: 64)
!223 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "__value32", scope: !220, file: !219, line: 32, baseType: !225, size: 64)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !220, file: !219, line: 28, size: 64, flags: DIFlagTypePassByValue, elements: !226, identifier: "_ZTSN21__atomic_wide_counterUt_E")
!226 = !{!227, !228}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "__low", scope: !225, file: !219, line: 30, baseType: !62, size: 32)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "__high", scope: !225, file: !219, line: 31, baseType: !62, size: 32, offset: 32)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_start", scope: !215, file: !198, line: 97, baseType: !218, size: 64, offset: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "__g_refs", scope: !215, file: !198, line: 98, baseType: !231, size: 64, offset: 128)
!231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 64, elements: !232)
!232 = !{!233}
!233 = !DISubrange(count: 2)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "__g_size", scope: !215, file: !198, line: 99, baseType: !231, size: 64, offset: 192)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_orig_size", scope: !215, file: !198, line: 100, baseType: !62, size: 32, offset: 256)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "__wrefs", scope: !215, file: !198, line: 101, baseType: !62, size: 32, offset: 288)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "__g_signals", scope: !215, file: !198, line: 102, baseType: !231, size: 64, offset: 320)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !212, file: !178, line: 78, baseType: !239, size: 384)
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 384, elements: !11)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !212, file: !178, line: 79, baseType: !241, size: 64)
!241 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!242 = !DISubprogram(name: "RCOutput_Bebop", scope: !156, file: !67, line: 62, type: !243, scopeLine: 62, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!243 = !DISubroutineType(types: !244)
!244 = !{null, !245}
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!246 = !DISubprogram(name: "from", linkageName: "_ZN5Linux14RCOutput_Bebop4fromEPN6AP_HAL8RCOutputE", scope: !156, file: !67, line: 64, type: !247, scopeLine: 64, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!247 = !DISubroutineType(types: !248)
!248 = !{!155, !249}
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!250 = !DISubprogram(name: "init", linkageName: "_ZN5Linux14RCOutput_Bebop4initEv", scope: !156, file: !67, line: 68, type: !243, scopeLine: 68, containingType: !156, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!251 = !DISubprogram(name: "set_freq", linkageName: "_ZN5Linux14RCOutput_Bebop8set_freqEjt", scope: !156, file: !67, line: 69, type: !252, scopeLine: 69, containingType: !156, virtualIndex: 1, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!252 = !DISubroutineType(types: !253)
!253 = !{null, !245, !105, !109}
!254 = !DISubprogram(name: "get_freq", linkageName: "_ZN5Linux14RCOutput_Bebop8get_freqEh", scope: !156, file: !67, line: 70, type: !255, scopeLine: 70, containingType: !156, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!255 = !DISubroutineType(types: !256)
!256 = !{!109, !245, !115}
!257 = !DISubprogram(name: "enable_ch", linkageName: "_ZN5Linux14RCOutput_Bebop9enable_chEh", scope: !156, file: !67, line: 71, type: !258, scopeLine: 71, containingType: !156, virtualIndex: 3, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!258 = !DISubroutineType(types: !259)
!259 = !{null, !245, !115}
!260 = !DISubprogram(name: "disable_ch", linkageName: "_ZN5Linux14RCOutput_Bebop10disable_chEh", scope: !156, file: !67, line: 72, type: !258, scopeLine: 72, containingType: !156, virtualIndex: 4, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!261 = !DISubprogram(name: "write", linkageName: "_ZN5Linux14RCOutput_Bebop5writeEht", scope: !156, file: !67, line: 73, type: !262, scopeLine: 73, containingType: !156, virtualIndex: 5, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!262 = !DISubroutineType(types: !263)
!263 = !{null, !245, !115, !109}
!264 = !DISubprogram(name: "cork", linkageName: "_ZN5Linux14RCOutput_Bebop4corkEv", scope: !156, file: !67, line: 74, type: !243, scopeLine: 74, containingType: !156, virtualIndex: 6, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!265 = !DISubprogram(name: "push", linkageName: "_ZN5Linux14RCOutput_Bebop4pushEv", scope: !156, file: !67, line: 75, type: !243, scopeLine: 75, containingType: !156, virtualIndex: 7, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!266 = !DISubprogram(name: "read", linkageName: "_ZN5Linux14RCOutput_Bebop4readEh", scope: !156, file: !67, line: 76, type: !255, scopeLine: 76, containingType: !156, virtualIndex: 8, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!267 = !DISubprogram(name: "read", linkageName: "_ZN5Linux14RCOutput_Bebop4readEPth", scope: !156, file: !67, line: 77, type: !268, scopeLine: 77, containingType: !156, virtualIndex: 9, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!268 = !DISubroutineType(types: !269)
!269 = !{null, !245, !131, !115}
!270 = !DISubprogram(name: "set_esc_scaling", linkageName: "_ZN5Linux14RCOutput_Bebop15set_esc_scalingEtt", scope: !156, file: !67, line: 78, type: !271, scopeLine: 78, containingType: !156, virtualIndex: 16, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!271 = !DISubroutineType(types: !272)
!272 = !{null, !245, !109, !109}
!273 = !DISubprogram(name: "read_obs_data", linkageName: "_ZN5Linux14RCOutput_Bebop13read_obs_dataER17BebopBLDC_ObsData", scope: !156, file: !67, line: 79, type: !274, scopeLine: 79, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!274 = !DISubroutineType(types: !275)
!275 = !{!97, !245, !276}
!276 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !277, size: 64)
!277 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "BebopBLDC_ObsData", file: !67, line: 38, size: 144, flags: DIFlagTypePassByValue, elements: !278, identifier: "_ZTS17BebopBLDC_ObsData")
!278 = !{!279, !280, !282, !283, !284, !285, !286}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "rpm", scope: !277, file: !67, line: 40, baseType: !165, size: 64, flags: DIFlagPublic)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "rpm_saturated", scope: !277, file: !67, line: 41, baseType: !281, size: 32, offset: 64, flags: DIFlagPublic)
!281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 32, elements: !166)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "batt_mv", scope: !277, file: !67, line: 42, baseType: !109, size: 16, offset: 96, flags: DIFlagPublic)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !277, file: !67, line: 43, baseType: !115, size: 8, offset: 112, flags: DIFlagPublic)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !277, file: !67, line: 44, baseType: !115, size: 8, offset: 120, flags: DIFlagPublic)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "motors_err", scope: !277, file: !67, line: 45, baseType: !115, size: 8, offset: 128, flags: DIFlagPublic)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "temperature", scope: !277, file: !67, line: 46, baseType: !115, size: 8, offset: 136, flags: DIFlagPublic)
!287 = !DISubprogram(name: "_checksum", linkageName: "_ZN5Linux14RCOutput_Bebop9_checksumEPhj", scope: !156, file: !67, line: 93, type: !288, scopeLine: 93, flags: DIFlagPrototyped, spFlags: 0)
!288 = !DISubroutineType(types: !289)
!289 = !{!115, !245, !154, !62}
!290 = !DISubprogram(name: "_start_prop", linkageName: "_ZN5Linux14RCOutput_Bebop11_start_propEv", scope: !156, file: !67, line: 94, type: !243, scopeLine: 94, flags: DIFlagPrototyped, spFlags: 0)
!291 = !DISubprogram(name: "_toggle_gpio", linkageName: "_ZN5Linux14RCOutput_Bebop12_toggle_gpioEh", scope: !156, file: !67, line: 95, type: !258, scopeLine: 95, flags: DIFlagPrototyped, spFlags: 0)
!292 = !DISubprogram(name: "_set_ref_speed", linkageName: "_ZN5Linux14RCOutput_Bebop14_set_ref_speedEPt", scope: !156, file: !67, line: 96, type: !293, scopeLine: 96, flags: DIFlagPrototyped, spFlags: 0)
!293 = !DISubroutineType(types: !294)
!294 = !{null, !245, !131}
!295 = !DISubprogram(name: "_get_info", linkageName: "_ZN5Linux14RCOutput_Bebop9_get_infoEP9bldc_info", scope: !156, file: !67, line: 97, type: !296, scopeLine: 97, flags: DIFlagPrototyped, spFlags: 0)
!296 = !DISubroutineType(types: !297)
!297 = !{!139, !245, !298}
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bldc_info", file: !67, line: 49, size: 104, flags: DIFlagTypePassByValue, elements: !300, identifier: "_ZTS9bldc_info")
!300 = !{!301, !302, !303, !304, !305, !306, !307, !308}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "version_maj", scope: !299, file: !67, line: 50, baseType: !115, size: 8)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "version_min", scope: !299, file: !67, line: 51, baseType: !115, size: 8, offset: 8)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !299, file: !67, line: 52, baseType: !115, size: 8, offset: 16)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "n_motors", scope: !299, file: !67, line: 53, baseType: !115, size: 8, offset: 24)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "n_flights", scope: !299, file: !67, line: 54, baseType: !109, size: 16, offset: 32)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "last_flight_time", scope: !299, file: !67, line: 55, baseType: !109, size: 16, offset: 48)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "total_flight_time", scope: !299, file: !67, line: 56, baseType: !105, size: 32, offset: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "last_error", scope: !299, file: !67, line: 57, baseType: !115, size: 8, offset: 96)
!309 = !DISubprogram(name: "_stop_prop", linkageName: "_ZN5Linux14RCOutput_Bebop10_stop_propEv", scope: !156, file: !67, line: 98, type: !243, scopeLine: 98, flags: DIFlagPrototyped, spFlags: 0)
!310 = !DISubprogram(name: "_clear_error", linkageName: "_ZN5Linux14RCOutput_Bebop12_clear_errorEv", scope: !156, file: !67, line: 99, type: !243, scopeLine: 99, flags: DIFlagPrototyped, spFlags: 0)
!311 = !DISubprogram(name: "_play_sound", linkageName: "_ZN5Linux14RCOutput_Bebop11_play_soundEh", scope: !156, file: !67, line: 100, type: !258, scopeLine: 100, flags: DIFlagPrototyped, spFlags: 0)
!312 = !DISubprogram(name: "_period_us_to_rpm", linkageName: "_ZN5Linux14RCOutput_Bebop17_period_us_to_rpmEt", scope: !156, file: !67, line: 101, type: !313, scopeLine: 101, flags: DIFlagPrototyped, spFlags: 0)
!313 = !DISubroutineType(types: !314)
!314 = !{!109, !245, !109}
!315 = !DISubprogram(name: "_run_rcout", linkageName: "_ZN5Linux14RCOutput_Bebop10_run_rcoutEv", scope: !156, file: !67, line: 107, type: !243, scopeLine: 107, flags: DIFlagPrototyped, spFlags: 0)
!316 = !DISubprogram(name: "_control_thread", linkageName: "_ZN5Linux14RCOutput_Bebop15_control_threadEPv", scope: !156, file: !67, line: 108, type: !317, scopeLine: 108, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!317 = !DISubroutineType(types: !318)
!318 = !{!319, !319}
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DICompositeType(tag: DW_TAG_class_type, name: "Util", scope: !157, file: !80, line: 18, size: 512, flags: DIFlagFwdDecl | DIFlagNonTrivial)
!322 = !{!55, !323, !325, !330, !335, !337, !339, !344, !349, !354}
!323 = !DIGlobalVariableExpression(var: !324, expr: !DIExpression())
!324 = distinct !DIGlobalVariable(scope: null, file: !61, line: 161, type: !35, isLocal: true, isDefinition: true)
!325 = !DIGlobalVariableExpression(var: !326, expr: !DIExpression())
!326 = distinct !DIGlobalVariable(scope: null, file: !61, line: 246, type: !327, isLocal: true, isDefinition: true)
!327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !328)
!328 = !{!329}
!329 = !DISubrange(count: 34)
!330 = !DIGlobalVariableExpression(var: !331, expr: !DIExpression())
!331 = distinct !DIGlobalVariable(scope: null, file: !61, line: 253, type: !332, isLocal: true, isDefinition: true)
!332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !333)
!333 = !{!334}
!334 = !DISubrange(count: 35)
!335 = !DIGlobalVariableExpression(var: !336, expr: !DIExpression())
!336 = distinct !DIGlobalVariable(scope: null, file: !61, line: 264, type: !327, isLocal: true, isDefinition: true)
!337 = !DIGlobalVariableExpression(var: !338, expr: !DIExpression())
!338 = distinct !DIGlobalVariable(scope: null, file: !61, line: 270, type: !327, isLocal: true, isDefinition: true)
!339 = !DIGlobalVariableExpression(var: !340, expr: !DIExpression())
!340 = distinct !DIGlobalVariable(scope: null, file: !61, line: 278, type: !341, isLocal: true, isDefinition: true)
!341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !342)
!342 = !{!343}
!343 = !DISubrange(count: 38)
!344 = !DIGlobalVariableExpression(var: !345, expr: !DIExpression())
!345 = distinct !DIGlobalVariable(scope: null, file: !61, line: 381, type: !346, isLocal: true, isDefinition: true)
!346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !347)
!347 = !{!348}
!348 = !DISubrange(count: 24)
!349 = !DIGlobalVariableExpression(var: !350, expr: !DIExpression())
!350 = distinct !DIGlobalVariable(scope: null, file: !61, line: 411, type: !351, isLocal: true, isDefinition: true)
!351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !352)
!352 = !{!353}
!353 = !DISubrange(count: 28)
!354 = !DIGlobalVariableExpression(var: !355, expr: !DIExpression())
!355 = distinct !DIGlobalVariable(scope: null, file: !61, line: 413, type: !356, isLocal: true, isDefinition: true)
!356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !357)
!357 = !{!358}
!358 = !DISubrange(count: 26)
!359 = !{!360, !366, !372, !376, !382, !386, !392, !397, !399, !405, !409, !413, !423, !425, !429, !433, !437, !442, !446, !450, !454, !458, !466, !470, !474, !476, !478, !482, !486, !492, !496, !500, !502, !510, !514, !521, !523, !527, !531, !535, !539, !543, !548, !553, !554, !555, !556, !558, !559, !560, !561, !562, !563, !564, !566, !567, !568, !569, !570, !571, !572, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601}
!360 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !362, file: !365, line: 58)
!361 = !DINamespace(name: "std", scope: null)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "max_align_t", file: !363, line: 24, baseType: !364)
!363 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/__stddef_max_align_t.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "48e8e2456f77e6cda35d245130fa7259")
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !363, line: 19, size: 256, flags: DIFlagFwdDecl, identifier: "_ZTS11max_align_t")
!365 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cstddef", directory: "")
!366 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !367, file: !371, line: 52)
!367 = !DISubprogram(name: "abs", scope: !368, file: !368, line: 848, type: !369, flags: DIFlagPrototyped, spFlags: 0)
!368 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!369 = !DISubroutineType(types: !370)
!370 = !{!97, !97}
!371 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/std_abs.h", directory: "")
!372 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !373, file: !375, line: 127)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !368, line: 63, baseType: !374)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !368, line: 59, size: 64, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!375 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cstdlib", directory: "")
!376 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !377, file: !375, line: 128)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !368, line: 71, baseType: !378)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !368, line: 67, size: 128, flags: DIFlagTypePassByValue, elements: !379, identifier: "_ZTS6ldiv_t")
!379 = !{!380, !381}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !378, file: !368, line: 69, baseType: !209, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !378, file: !368, line: 70, baseType: !209, size: 64, offset: 64)
!382 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !383, file: !375, line: 130)
!383 = !DISubprogram(name: "abort", scope: !368, file: !368, line: 598, type: !384, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!384 = !DISubroutineType(types: !385)
!385 = !{null}
!386 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !387, file: !375, line: 132)
!387 = !DISubprogram(name: "aligned_alloc", scope: !368, file: !368, line: 592, type: !388, flags: DIFlagPrototyped, spFlags: 0)
!388 = !DISubroutineType(types: !389)
!389 = !{!319, !390, !390}
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !391, line: 46, baseType: !179)
!391 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!392 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !393, file: !375, line: 134)
!393 = !DISubprogram(name: "atexit", scope: !368, file: !368, line: 602, type: !394, flags: DIFlagPrototyped, spFlags: 0)
!394 = !DISubroutineType(types: !395)
!395 = !{!97, !396}
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!397 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !398, file: !375, line: 137)
!398 = !DISubprogram(name: "at_quick_exit", scope: !368, file: !368, line: 607, type: !394, flags: DIFlagPrototyped, spFlags: 0)
!399 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !400, file: !375, line: 140)
!400 = !DISubprogram(name: "atof", scope: !368, file: !368, line: 102, type: !401, flags: DIFlagPrototyped, spFlags: 0)
!401 = !DISubroutineType(types: !402)
!402 = !{!403, !404}
!403 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!405 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !406, file: !375, line: 141)
!406 = !DISubprogram(name: "atoi", scope: !368, file: !368, line: 105, type: !407, flags: DIFlagPrototyped, spFlags: 0)
!407 = !DISubroutineType(types: !408)
!408 = !{!97, !404}
!409 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !410, file: !375, line: 142)
!410 = !DISubprogram(name: "atol", scope: !368, file: !368, line: 108, type: !411, flags: DIFlagPrototyped, spFlags: 0)
!411 = !DISubroutineType(types: !412)
!412 = !{!209, !404}
!413 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !414, file: !375, line: 143)
!414 = !DISubprogram(name: "bsearch", scope: !368, file: !368, line: 828, type: !415, flags: DIFlagPrototyped, spFlags: 0)
!415 = !DISubroutineType(types: !416)
!416 = !{!319, !417, !417, !390, !390, !419}
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !368, line: 816, baseType: !420)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DISubroutineType(types: !422)
!422 = !{!97, !417, !417}
!423 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !424, file: !375, line: 144)
!424 = !DISubprogram(name: "calloc", scope: !368, file: !368, line: 543, type: !388, flags: DIFlagPrototyped, spFlags: 0)
!425 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !426, file: !375, line: 145)
!426 = !DISubprogram(name: "div", scope: !368, file: !368, line: 860, type: !427, flags: DIFlagPrototyped, spFlags: 0)
!427 = !DISubroutineType(types: !428)
!428 = !{!373, !97, !97}
!429 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !430, file: !375, line: 146)
!430 = !DISubprogram(name: "exit", scope: !368, file: !368, line: 624, type: !431, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!431 = !DISubroutineType(types: !432)
!432 = !{null, !97}
!433 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !434, file: !375, line: 147)
!434 = !DISubprogram(name: "free", scope: !368, file: !368, line: 555, type: !435, flags: DIFlagPrototyped, spFlags: 0)
!435 = !DISubroutineType(types: !436)
!436 = !{null, !319}
!437 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !438, file: !375, line: 148)
!438 = !DISubprogram(name: "getenv", scope: !368, file: !368, line: 641, type: !439, flags: DIFlagPrototyped, spFlags: 0)
!439 = !DISubroutineType(types: !440)
!440 = !{!441, !404}
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!442 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !443, file: !375, line: 149)
!443 = !DISubprogram(name: "labs", scope: !368, file: !368, line: 849, type: !444, flags: DIFlagPrototyped, spFlags: 0)
!444 = !DISubroutineType(types: !445)
!445 = !{!209, !209}
!446 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !447, file: !375, line: 150)
!447 = !DISubprogram(name: "ldiv", scope: !368, file: !368, line: 862, type: !448, flags: DIFlagPrototyped, spFlags: 0)
!448 = !DISubroutineType(types: !449)
!449 = !{!377, !209, !209}
!450 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !451, file: !375, line: 151)
!451 = !DISubprogram(name: "malloc", scope: !368, file: !368, line: 540, type: !452, flags: DIFlagPrototyped, spFlags: 0)
!452 = !DISubroutineType(types: !453)
!453 = !{!319, !390}
!454 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !455, file: !375, line: 153)
!455 = !DISubprogram(name: "mblen", scope: !368, file: !368, line: 930, type: !456, flags: DIFlagPrototyped, spFlags: 0)
!456 = !DISubroutineType(types: !457)
!457 = !{!97, !404, !390}
!458 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !459, file: !375, line: 154)
!459 = !DISubprogram(name: "mbstowcs", scope: !368, file: !368, line: 941, type: !460, flags: DIFlagPrototyped, spFlags: 0)
!460 = !DISubroutineType(types: !461)
!461 = !{!390, !462, !465, !390}
!462 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !463)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!465 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !404)
!466 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !467, file: !375, line: 155)
!467 = !DISubprogram(name: "mbtowc", scope: !368, file: !368, line: 933, type: !468, flags: DIFlagPrototyped, spFlags: 0)
!468 = !DISubroutineType(types: !469)
!469 = !{!97, !462, !465, !390}
!470 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !471, file: !375, line: 157)
!471 = !DISubprogram(name: "qsort", scope: !368, file: !368, line: 838, type: !472, flags: DIFlagPrototyped, spFlags: 0)
!472 = !DISubroutineType(types: !473)
!473 = !{null, !319, !390, !390, !419}
!474 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !475, file: !375, line: 160)
!475 = !DISubprogram(name: "quick_exit", scope: !368, file: !368, line: 630, type: !431, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!476 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !477, file: !375, line: 163)
!477 = !DISubprogram(name: "rand", scope: !368, file: !368, line: 454, type: !95, flags: DIFlagPrototyped, spFlags: 0)
!478 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !479, file: !375, line: 164)
!479 = !DISubprogram(name: "realloc", scope: !368, file: !368, line: 551, type: !480, flags: DIFlagPrototyped, spFlags: 0)
!480 = !DISubroutineType(types: !481)
!481 = !{!319, !319, !390}
!482 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !483, file: !375, line: 165)
!483 = !DISubprogram(name: "srand", scope: !368, file: !368, line: 456, type: !484, flags: DIFlagPrototyped, spFlags: 0)
!484 = !DISubroutineType(types: !485)
!485 = !{null, !62}
!486 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !487, file: !375, line: 166)
!487 = !DISubprogram(name: "strtod", scope: !368, file: !368, line: 118, type: !488, flags: DIFlagPrototyped, spFlags: 0)
!488 = !DISubroutineType(types: !489)
!489 = !{!403, !465, !490}
!490 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !491)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!492 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !493, file: !375, line: 167)
!493 = !DISubprogram(name: "strtol", scope: !368, file: !368, line: 177, type: !494, flags: DIFlagPrototyped, spFlags: 0)
!494 = !DISubroutineType(types: !495)
!495 = !{!209, !465, !490, !97}
!496 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !497, file: !375, line: 168)
!497 = !DISubprogram(name: "strtoul", scope: !368, file: !368, line: 181, type: !498, flags: DIFlagPrototyped, spFlags: 0)
!498 = !DISubroutineType(types: !499)
!499 = !{!179, !465, !490, !97}
!500 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !501, file: !375, line: 169)
!501 = !DISubprogram(name: "system", scope: !368, file: !368, line: 791, type: !407, flags: DIFlagPrototyped, spFlags: 0)
!502 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !503, file: !375, line: 171)
!503 = !DISubprogram(name: "wcstombs", scope: !368, file: !368, line: 945, type: !504, flags: DIFlagPrototyped, spFlags: 0)
!504 = !DISubroutineType(types: !505)
!505 = !{!390, !506, !507, !390}
!506 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !441)
!507 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !508)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !464)
!510 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !511, file: !375, line: 172)
!511 = !DISubprogram(name: "wctomb", scope: !368, file: !368, line: 937, type: !512, flags: DIFlagPrototyped, spFlags: 0)
!512 = !DISubroutineType(types: !513)
!513 = !{!97, !441, !464}
!514 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !515, entity: !516, file: !375, line: 200)
!515 = !DINamespace(name: "__gnu_cxx", scope: null)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !368, line: 81, baseType: !517)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !368, line: 77, size: 128, flags: DIFlagTypePassByValue, elements: !518, identifier: "_ZTS7lldiv_t")
!518 = !{!519, !520}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !517, file: !368, line: 79, baseType: !241, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !517, file: !368, line: 80, baseType: !241, size: 64, offset: 64)
!521 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !515, entity: !522, file: !375, line: 206)
!522 = !DISubprogram(name: "_Exit", scope: !368, file: !368, line: 636, type: !431, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!523 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !515, entity: !524, file: !375, line: 210)
!524 = !DISubprogram(name: "llabs", scope: !368, file: !368, line: 852, type: !525, flags: DIFlagPrototyped, spFlags: 0)
!525 = !DISubroutineType(types: !526)
!526 = !{!241, !241}
!527 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !515, entity: !528, file: !375, line: 216)
!528 = !DISubprogram(name: "lldiv", scope: !368, file: !368, line: 866, type: !529, flags: DIFlagPrototyped, spFlags: 0)
!529 = !DISubroutineType(types: !530)
!530 = !{!516, !241, !241}
!531 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !515, entity: !532, file: !375, line: 227)
!532 = !DISubprogram(name: "atoll", scope: !368, file: !368, line: 113, type: !533, flags: DIFlagPrototyped, spFlags: 0)
!533 = !DISubroutineType(types: !534)
!534 = !{!241, !404}
!535 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !515, entity: !536, file: !375, line: 228)
!536 = !DISubprogram(name: "strtoll", scope: !368, file: !368, line: 201, type: !537, flags: DIFlagPrototyped, spFlags: 0)
!537 = !DISubroutineType(types: !538)
!538 = !{!241, !465, !490, !97}
!539 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !515, entity: !540, file: !375, line: 229)
!540 = !DISubprogram(name: "strtoull", scope: !368, file: !368, line: 206, type: !541, flags: DIFlagPrototyped, spFlags: 0)
!541 = !DISubroutineType(types: !542)
!542 = !{!223, !465, !490, !97}
!543 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !515, entity: !544, file: !375, line: 231)
!544 = !DISubprogram(name: "strtof", scope: !368, file: !368, line: 124, type: !545, flags: DIFlagPrototyped, spFlags: 0)
!545 = !DISubroutineType(types: !546)
!546 = !{!547, !465, !490}
!547 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!548 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !515, entity: !549, file: !375, line: 232)
!549 = !DISubprogram(name: "strtold", scope: !368, file: !368, line: 127, type: !550, flags: DIFlagPrototyped, spFlags: 0)
!550 = !DISubroutineType(types: !551)
!551 = !{!552, !465, !490}
!552 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!553 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !516, file: !375, line: 240)
!554 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !522, file: !375, line: 242)
!555 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !524, file: !375, line: 244)
!556 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !557, file: !375, line: 245)
!557 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !515, file: !375, line: 213, type: !529, flags: DIFlagPrototyped, spFlags: 0)
!558 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !528, file: !375, line: 246)
!559 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !532, file: !375, line: 248)
!560 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !544, file: !375, line: 249)
!561 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !536, file: !375, line: 250)
!562 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !540, file: !375, line: 251)
!563 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !549, file: !375, line: 252)
!564 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !57, entity: !383, file: !565, line: 38)
!565 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "0f5b773a303c24013fb112082e6d18a5")
!566 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !57, entity: !393, file: !565, line: 39)
!567 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !57, entity: !430, file: !565, line: 40)
!568 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !57, entity: !398, file: !565, line: 43)
!569 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !57, entity: !475, file: !565, line: 46)
!570 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !57, entity: !373, file: !565, line: 51)
!571 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !57, entity: !377, file: !565, line: 52)
!572 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !57, entity: !573, file: !565, line: 54)
!573 = !DISubprogram(name: "abs", linkageName: "_ZSt3absg", scope: !361, file: !371, line: 103, type: !574, flags: DIFlagPrototyped, spFlags: 0)
!574 = !DISubroutineType(types: !575)
!575 = !{!576, !576}
!576 = !DIBasicType(name: "__float128", size: 128, encoding: DW_ATE_float)
!577 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !57, entity: !400, file: !565, line: 55)
!578 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !57, entity: !406, file: !565, line: 56)
!579 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !57, entity: !410, file: !565, line: 57)
!580 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !57, entity: !414, file: !565, line: 58)
!581 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !57, entity: !424, file: !565, line: 59)
!582 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !57, entity: !557, file: !565, line: 60)
!583 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !57, entity: !434, file: !565, line: 61)
!584 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !57, entity: !438, file: !565, line: 62)
!585 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !57, entity: !443, file: !565, line: 63)
!586 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !57, entity: !447, file: !565, line: 64)
!587 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !57, entity: !451, file: !565, line: 65)
!588 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !57, entity: !455, file: !565, line: 67)
!589 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !57, entity: !459, file: !565, line: 68)
!590 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !57, entity: !467, file: !565, line: 69)
!591 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !57, entity: !471, file: !565, line: 71)
!592 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !57, entity: !477, file: !565, line: 72)
!593 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !57, entity: !479, file: !565, line: 73)
!594 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !57, entity: !483, file: !565, line: 74)
!595 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !57, entity: !487, file: !565, line: 75)
!596 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !57, entity: !493, file: !565, line: 76)
!597 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !57, entity: !497, file: !565, line: 77)
!598 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !57, entity: !501, file: !565, line: 78)
!599 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !57, entity: !503, file: !565, line: 80)
!600 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !57, entity: !511, file: !565, line: 81)
!601 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !57, entity: !157, file: !61, line: 71)
!602 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !603, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !604)
!604 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "HAL", scope: !90, file: !605, line: 15, size: 1344, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN6AP_HAL3HALE")
!605 = !DIFile(filename: "ardupilot/libraries/AP_HAL/HAL.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "3f0a0f0e062a4283fcf90f261aa65082")
!606 = !DIGlobalVariableExpression(var: !607, expr: !DIExpression())
!607 = distinct !DIGlobalVariable(scope: null, file: !608, line: 73, type: !40, isLocal: true, isDefinition: true)
!608 = !DIFile(filename: "ardupilot/libraries/AP_HAL_Linux/Thread.cpp", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "9e005ab91942cff649f1dfc4afc480f7")
!609 = !DIGlobalVariableExpression(var: !610, expr: !DIExpression())
!610 = distinct !DIGlobalVariable(scope: null, file: !608, line: 80, type: !611, isLocal: true, isDefinition: true)
!611 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !612)
!612 = !{!613}
!613 = !DISubrange(count: 33)
!614 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !615, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !616, retainedTypes: !667, globals: !1540, imports: !1541, splitDebugInlining: false, nameTableKind: None)
!615 = !DIFile(filename: "/home/raj/ardupilot/libraries/AP_HAL_Linux/OpticalFlow_Onboard.cpp", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "39989a6ca62b51870b8b66b5593f6083")
!616 = !{!617, !74, !624}
!617 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "v4l2_memory", file: !618, line: 185, baseType: !62, size: 32, elements: !619, identifier: "_ZTS11v4l2_memory")
!618 = !DIFile(filename: "/usr/include/linux/videodev2.h", directory: "", checksumkind: CSK_MD5, checksum: "3cc097f94f263de2816b0907cfe35b21")
!619 = !{!620, !621, !622, !623}
!620 = !DIEnumerator(name: "V4L2_MEMORY_MMAP", value: 1, isUnsigned: true)
!621 = !DIEnumerator(name: "V4L2_MEMORY_USERPTR", value: 2, isUnsigned: true)
!622 = !DIEnumerator(name: "V4L2_MEMORY_OVERLAY", value: 3, isUnsigned: true)
!623 = !DIEnumerator(name: "V4L2_MEMORY_DMABUF", value: 4, isUnsigned: true)
!624 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "Rotation", file: !625, line: 28, baseType: !62, size: 32, elements: !626, identifier: "_ZTS8Rotation")
!625 = !DIFile(filename: "ardupilot/libraries/AP_Math/rotations.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "04a17862c10c9a57597560af0328029e")
!626 = !{!627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666}
!627 = !DIEnumerator(name: "ROTATION_NONE", value: 0, isUnsigned: true)
!628 = !DIEnumerator(name: "ROTATION_YAW_45", value: 1, isUnsigned: true)
!629 = !DIEnumerator(name: "ROTATION_YAW_90", value: 2, isUnsigned: true)
!630 = !DIEnumerator(name: "ROTATION_YAW_135", value: 3, isUnsigned: true)
!631 = !DIEnumerator(name: "ROTATION_YAW_180", value: 4, isUnsigned: true)
!632 = !DIEnumerator(name: "ROTATION_YAW_225", value: 5, isUnsigned: true)
!633 = !DIEnumerator(name: "ROTATION_YAW_270", value: 6, isUnsigned: true)
!634 = !DIEnumerator(name: "ROTATION_YAW_315", value: 7, isUnsigned: true)
!635 = !DIEnumerator(name: "ROTATION_ROLL_180", value: 8, isUnsigned: true)
!636 = !DIEnumerator(name: "ROTATION_ROLL_180_YAW_45", value: 9, isUnsigned: true)
!637 = !DIEnumerator(name: "ROTATION_ROLL_180_YAW_90", value: 10, isUnsigned: true)
!638 = !DIEnumerator(name: "ROTATION_ROLL_180_YAW_135", value: 11, isUnsigned: true)
!639 = !DIEnumerator(name: "ROTATION_PITCH_180", value: 12, isUnsigned: true)
!640 = !DIEnumerator(name: "ROTATION_ROLL_180_YAW_225", value: 13, isUnsigned: true)
!641 = !DIEnumerator(name: "ROTATION_ROLL_180_YAW_270", value: 14, isUnsigned: true)
!642 = !DIEnumerator(name: "ROTATION_ROLL_180_YAW_315", value: 15, isUnsigned: true)
!643 = !DIEnumerator(name: "ROTATION_ROLL_90", value: 16, isUnsigned: true)
!644 = !DIEnumerator(name: "ROTATION_ROLL_90_YAW_45", value: 17, isUnsigned: true)
!645 = !DIEnumerator(name: "ROTATION_ROLL_90_YAW_90", value: 18, isUnsigned: true)
!646 = !DIEnumerator(name: "ROTATION_ROLL_90_YAW_135", value: 19, isUnsigned: true)
!647 = !DIEnumerator(name: "ROTATION_ROLL_270", value: 20, isUnsigned: true)
!648 = !DIEnumerator(name: "ROTATION_ROLL_270_YAW_45", value: 21, isUnsigned: true)
!649 = !DIEnumerator(name: "ROTATION_ROLL_270_YAW_90", value: 22, isUnsigned: true)
!650 = !DIEnumerator(name: "ROTATION_ROLL_270_YAW_135", value: 23, isUnsigned: true)
!651 = !DIEnumerator(name: "ROTATION_PITCH_90", value: 24, isUnsigned: true)
!652 = !DIEnumerator(name: "ROTATION_PITCH_270", value: 25, isUnsigned: true)
!653 = !DIEnumerator(name: "ROTATION_PITCH_180_YAW_90", value: 26, isUnsigned: true)
!654 = !DIEnumerator(name: "ROTATION_PITCH_180_YAW_270", value: 27, isUnsigned: true)
!655 = !DIEnumerator(name: "ROTATION_ROLL_90_PITCH_90", value: 28, isUnsigned: true)
!656 = !DIEnumerator(name: "ROTATION_ROLL_180_PITCH_90", value: 29, isUnsigned: true)
!657 = !DIEnumerator(name: "ROTATION_ROLL_270_PITCH_90", value: 30, isUnsigned: true)
!658 = !DIEnumerator(name: "ROTATION_ROLL_90_PITCH_180", value: 31, isUnsigned: true)
!659 = !DIEnumerator(name: "ROTATION_ROLL_270_PITCH_180", value: 32, isUnsigned: true)
!660 = !DIEnumerator(name: "ROTATION_ROLL_90_PITCH_270", value: 33, isUnsigned: true)
!661 = !DIEnumerator(name: "ROTATION_ROLL_180_PITCH_270", value: 34, isUnsigned: true)
!662 = !DIEnumerator(name: "ROTATION_ROLL_270_PITCH_270", value: 35, isUnsigned: true)
!663 = !DIEnumerator(name: "ROTATION_ROLL_90_PITCH_180_YAW_90", value: 36, isUnsigned: true)
!664 = !DIEnumerator(name: "ROTATION_ROLL_90_YAW_270", value: 37, isUnsigned: true)
!665 = !DIEnumerator(name: "ROTATION_ROLL_90_PITCH_68_YAW_293", value: 38, isUnsigned: true)
!666 = !DIEnumerator(name: "ROTATION_MAX", value: 39, isUnsigned: true)
!667 = !{!668, !670, !154, !105, !1059, !1329, !1060, !679, !724, !728, !731, !751, !757, !851, !1369, !1475}
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !669, line: 27, baseType: !62)
!669 = !DIFile(filename: "/usr/include/asm-generic/int-ll64.h", directory: "", checksumkind: CSK_MD5, checksum: "b810f270733e106319b67ef512c6246e")
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "OpticalFlow_Onboard", scope: !157, file: !672, line: 27, size: 1600, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !673, vtableHolder: !675)
!672 = !DIFile(filename: "ardupilot/libraries/AP_HAL_Linux/OpticalFlow_Onboard.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "7b4c9e700f27d160076bb32dcc190a2a")
!673 = !{!674, !677, !1295, !1296, !1300, !1304, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1366, !1455, !1459, !1471, !1474}
!674 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !671, baseType: !675, flags: DIFlagPublic, extraData: i32 0)
!675 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "OpticalFlow", scope: !90, file: !676, line: 17, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN6AP_HAL11OpticalFlowE")
!676 = !DIFile(filename: "ardupilot/libraries/AP_HAL/OpticalFlow.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "9f9f121a90eb4c8138cfdc938010b02e")
!677 = !DIDerivedType(tag: DW_TAG_member, name: "_videoin", scope: !671, file: !672, line: 35, baseType: !678, size: 64, offset: 64)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "VideoIn", scope: !157, file: !680, line: 26, size: 384, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !681, identifier: "_ZTSN5Linux7VideoInE")
!680 = !DIFile(filename: "ardupilot/libraries/AP_HAL_Linux/VideoIn.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "af2f23b8636078178400514c9d07cdfc")
!681 = !{!682, !683, !686, !687, !688, !689, !690, !691, !692, !693, !694, !705, !708, !711, !714, !717, !720, !1260, !1264, !1267, !1268, !1271, !1274, !1277, !1280, !1283, !1284}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !679, file: !680, line: 72, baseType: !97, size: 32)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "_buffers", scope: !679, file: !680, line: 73, baseType: !684, size: 64, offset: 64)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "buffer", file: !680, line: 21, size: 128, flags: DIFlagFwdDecl, identifier: "_ZTS6buffer")
!686 = !DIDerivedType(tag: DW_TAG_member, name: "_nbufs", scope: !679, file: !680, line: 74, baseType: !62, size: 32, offset: 128)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "_streaming", scope: !679, file: !680, line: 75, baseType: !139, size: 8, offset: 160)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "_width", scope: !679, file: !680, line: 76, baseType: !105, size: 32, offset: 192)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "_height", scope: !679, file: !680, line: 77, baseType: !105, size: 32, offset: 224)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "_format", scope: !679, file: !680, line: 78, baseType: !105, size: 32, offset: 256)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "_bytesperline", scope: !679, file: !680, line: 79, baseType: !105, size: 32, offset: 288)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "_sizeimage", scope: !679, file: !680, line: 80, baseType: !105, size: 32, offset: 320)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "_memtype", scope: !679, file: !680, line: 81, baseType: !105, size: 32, offset: 352)
!694 = !DISubprogram(name: "get_frame", linkageName: "_ZN5Linux7VideoIn9get_frameERNS0_5FrameE", scope: !679, file: !680, line: 41, type: !695, scopeLine: 41, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!695 = !DISubroutineType(types: !696)
!696 = !{!139, !697, !698}
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!698 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !699, size: 64)
!699 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Frame", scope: !679, file: !680, line: 31, size: 192, flags: DIFlagPublic | DIFlagTypePassByValue, elements: !700, identifier: "_ZTSN5Linux7VideoIn5FrameE")
!700 = !{!701, !702, !703, !704}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !699, file: !680, line: 34, baseType: !105, size: 32, flags: DIFlagPublic)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !699, file: !680, line: 35, baseType: !105, size: 32, offset: 32, flags: DIFlagPublic)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !699, file: !680, line: 36, baseType: !319, size: 64, offset: 64, flags: DIFlagPublic)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "buf_index", scope: !699, file: !680, line: 38, baseType: !105, size: 32, offset: 128)
!705 = !DISubprogram(name: "put_frame", linkageName: "_ZN5Linux7VideoIn9put_frameERNS0_5FrameE", scope: !679, file: !680, line: 42, type: !706, scopeLine: 42, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!706 = !DISubroutineType(types: !707)
!707 = !{null, !697, !698}
!708 = !DISubprogram(name: "set_device_path", linkageName: "_ZN5Linux7VideoIn15set_device_pathEPKc", scope: !679, file: !680, line: 43, type: !709, scopeLine: 43, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!709 = !DISubroutineType(types: !710)
!710 = !{null, !697, !404}
!711 = !DISubprogram(name: "init", linkageName: "_ZN5Linux7VideoIn4initEv", scope: !679, file: !680, line: 44, type: !712, scopeLine: 44, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!712 = !DISubroutineType(types: !713)
!713 = !{null, !697}
!714 = !DISubprogram(name: "open_device", linkageName: "_ZN5Linux7VideoIn11open_deviceEPKcj", scope: !679, file: !680, line: 45, type: !715, scopeLine: 45, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!715 = !DISubroutineType(types: !716)
!716 = !{!139, !697, !404, !105}
!717 = !DISubprogram(name: "allocate_buffers", linkageName: "_ZN5Linux7VideoIn16allocate_buffersEj", scope: !679, file: !680, line: 46, type: !718, scopeLine: 46, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!718 = !DISubroutineType(types: !719)
!719 = !{!139, !697, !105}
!720 = !DISubprogram(name: "get_pixel_formats", linkageName: "_ZN5Linux7VideoIn17get_pixel_formatsEPSt6vectorIjSaIjEE", scope: !679, file: !680, line: 47, type: !721, scopeLine: 47, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!721 = !DISubroutineType(types: !722)
!722 = !{null, !697, !723}
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "vector<unsigned int, std::allocator<unsigned int> >", scope: !361, file: !725, line: 389, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !726, templateParams: !1258, identifier: "_ZTSSt6vectorIjSaIjEE")
!725 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/stl_vector.h", directory: "", checksumkind: CSK_MD5, checksum: "abcaf00227294b9790605822a1c03477")
!726 = !{!727, !945, !964, !980, !981, !987, !990, !993, !997, !1003, !1007, !1013, !1018, !1022, !1025, !1028, !1031, !1034, !1039, !1040, !1044, !1047, !1050, !1053, !1056, !1117, !1123, !1124, !1125, !1130, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1144, !1145, !1148, !1149, !1150, !1151, !1154, !1155, !1163, !1170, !1173, !1174, !1175, !1178, !1181, !1182, !1183, !1186, !1189, !1192, !1196, !1197, !1200, !1203, !1206, !1209, !1212, !1215, !1218, !1219, !1220, !1221, !1222, !1225, !1226, !1229, !1230, !1231, !1235, !1238, !1243, !1246, !1249, !1252, !1255}
!727 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !724, baseType: !728, flags: DIFlagProtected, extraData: i32 0)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Vector_base<unsigned int, std::allocator<unsigned int> >", scope: !361, file: !725, line: 84, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !729, templateParams: !944, identifier: "_ZTSSt12_Vector_baseIjSaIjEE")
!729 = !{!730, !895, !900, !905, !909, !912, !917, !920, !923, !927, !930, !933, !936, !937, !940, !943}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "_M_impl", scope: !728, file: !725, line: 340, baseType: !731, size: 192)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Vector_impl", scope: !728, file: !725, line: 128, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !732, identifier: "_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE")
!732 = !{!733, !850, !875, !879, !884, !888, !892}
!733 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !731, baseType: !734, extraData: i32 0)
!734 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Tp_alloc_type", scope: !728, file: !725, line: 87, baseType: !735)
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "other", scope: !737, file: !736, line: 120, baseType: !849)
!736 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/ext/alloc_traits.h", directory: "")
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rebind<unsigned int>", scope: !738, file: !736, line: 119, size: 8, flags: DIFlagTypePassByValue, elements: !848, templateParams: !798, identifier: "_ZTSN9__gnu_cxx14__alloc_traitsISaIjEjE6rebindIjEE")
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__alloc_traits<std::allocator<unsigned int>, unsigned int>", scope: !515, file: !736, line: 48, size: 8, flags: DIFlagTypePassByValue, elements: !739, templateParams: !846, identifier: "_ZTSN9__gnu_cxx14__alloc_traitsISaIjEjEE")
!739 = !{!740, !833, !836, !839, !842, !843, !844, !845}
!740 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !738, baseType: !741, extraData: i32 0)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "allocator_traits<std::allocator<unsigned int> >", scope: !361, file: !742, line: 411, size: 8, flags: DIFlagTypePassByValue, elements: !743, templateParams: !831, identifier: "_ZTSSt16allocator_traitsISaIjEE")
!742 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/alloc_traits.h", directory: "", checksumkind: CSK_MD5, checksum: "937e9d7f00d3ed7cff7ec8fafeb8a8bc")
!743 = !{!744, !815, !819, !822, !828}
!744 = !DISubprogram(name: "allocate", linkageName: "_ZNSt16allocator_traitsISaIjEE8allocateERS0_m", scope: !741, file: !742, line: 463, type: !745, scopeLine: 463, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!745 = !DISubroutineType(types: !746)
!746 = !{!747, !749, !814}
!747 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !741, file: !742, line: 420, baseType: !748)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !750, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocator_type", scope: !741, file: !742, line: 414, baseType: !751)
!751 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "allocator<unsigned int>", scope: !361, file: !752, line: 124, size: 8, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !753, templateParams: !798, identifier: "_ZTSSaIjE")
!752 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/allocator.h", directory: "", checksumkind: CSK_MD5, checksum: "52abf05a7426983321ecef80fe4251be")
!753 = !{!754, !800, !804, !809, !813}
!754 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !751, baseType: !755, flags: DIFlagPublic, extraData: i32 0)
!755 = !DIDerivedType(tag: DW_TAG_typedef, name: "__allocator_base<unsigned int>", scope: !361, file: !756, line: 48, baseType: !757)
!756 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/x86_64-linux-gnu/c++/11/bits/c++allocator.h", directory: "", checksumkind: CSK_MD5, checksum: "fcdcf111c9228da351f93cd81039e6d6")
!757 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "new_allocator<unsigned int>", scope: !515, file: !758, line: 55, size: 8, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !759, templateParams: !798, identifier: "_ZTSN9__gnu_cxx13new_allocatorIjEE")
!758 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/ext/new_allocator.h", directory: "", checksumkind: CSK_MD5, checksum: "4493add5a3fa57e0ec30b90cd4e81c11")
!759 = !{!760, !764, !769, !770, !777, !785, !791, !794, !797}
!760 = !DISubprogram(name: "new_allocator", scope: !757, file: !758, line: 79, type: !761, scopeLine: 79, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!761 = !DISubroutineType(types: !762)
!762 = !{null, !763}
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!764 = !DISubprogram(name: "new_allocator", scope: !757, file: !758, line: 82, type: !765, scopeLine: 82, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!765 = !DISubroutineType(types: !766)
!766 = !{null, !763, !767}
!767 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !768, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !757)
!769 = !DISubprogram(name: "~new_allocator", scope: !757, file: !758, line: 89, type: !761, scopeLine: 89, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!770 = !DISubprogram(name: "address", linkageName: "_ZNK9__gnu_cxx13new_allocatorIjE7addressERj", scope: !757, file: !758, line: 92, type: !771, scopeLine: 92, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!771 = !DISubroutineType(types: !772)
!772 = !{!773, !774, !775}
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !757, file: !758, line: 62, baseType: !748, flags: DIFlagPublic)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !757, file: !758, line: 64, baseType: !776, flags: DIFlagPublic)
!776 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !62, size: 64)
!777 = !DISubprogram(name: "address", linkageName: "_ZNK9__gnu_cxx13new_allocatorIjE7addressERKj", scope: !757, file: !758, line: 96, type: !778, scopeLine: 96, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!778 = !DISubroutineType(types: !779)
!779 = !{!780, !774, !783}
!780 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_pointer", scope: !757, file: !758, line: 63, baseType: !781, flags: DIFlagPublic)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !757, file: !758, line: 65, baseType: !784, flags: DIFlagPublic)
!784 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !782, size: 64)
!785 = !DISubprogram(name: "allocate", linkageName: "_ZN9__gnu_cxx13new_allocatorIjE8allocateEmPKv", scope: !757, file: !758, line: 103, type: !786, scopeLine: 103, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!786 = !DISubroutineType(types: !787)
!787 = !{!748, !763, !788, !417}
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", file: !758, line: 59, baseType: !789, flags: DIFlagPublic)
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", scope: !361, file: !790, line: 280, baseType: !179)
!790 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/x86_64-linux-gnu/c++/11/bits/c++config.h", directory: "", checksumkind: CSK_MD5, checksum: "b09addf8bea7ac9bf251a76b15f26064")
!791 = !DISubprogram(name: "deallocate", linkageName: "_ZN9__gnu_cxx13new_allocatorIjE10deallocateEPjm", scope: !757, file: !758, line: 132, type: !792, scopeLine: 132, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!792 = !DISubroutineType(types: !793)
!793 = !{null, !763, !748, !788}
!794 = !DISubprogram(name: "max_size", linkageName: "_ZNK9__gnu_cxx13new_allocatorIjE8max_sizeEv", scope: !757, file: !758, line: 154, type: !795, scopeLine: 154, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!795 = !DISubroutineType(types: !796)
!796 = !{!788, !774}
!797 = !DISubprogram(name: "_M_max_size", linkageName: "_ZNK9__gnu_cxx13new_allocatorIjE11_M_max_sizeEv", scope: !757, file: !758, line: 197, type: !795, scopeLine: 197, flags: DIFlagPrototyped, spFlags: 0)
!798 = !{!799}
!799 = !DITemplateTypeParameter(name: "_Tp", type: !62)
!800 = !DISubprogram(name: "allocator", scope: !751, file: !752, line: 156, type: !801, scopeLine: 156, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!801 = !DISubroutineType(types: !802)
!802 = !{null, !803}
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!804 = !DISubprogram(name: "allocator", scope: !751, file: !752, line: 159, type: !805, scopeLine: 159, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!805 = !DISubroutineType(types: !806)
!806 = !{null, !803, !807}
!807 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !808, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !751)
!809 = !DISubprogram(name: "operator=", linkageName: "_ZNSaIjEaSERKS_", scope: !751, file: !752, line: 164, type: !810, scopeLine: 164, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!810 = !DISubroutineType(types: !811)
!811 = !{!812, !803, !807}
!812 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !751, size: 64)
!813 = !DISubprogram(name: "~allocator", scope: !751, file: !752, line: 174, type: !801, scopeLine: 174, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!814 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", file: !742, line: 435, baseType: !789)
!815 = !DISubprogram(name: "allocate", linkageName: "_ZNSt16allocator_traitsISaIjEE8allocateERS0_mPKv", scope: !741, file: !742, line: 477, type: !816, scopeLine: 477, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!816 = !DISubroutineType(types: !817)
!817 = !{!747, !749, !814, !818}
!818 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_void_pointer", file: !742, line: 429, baseType: !417)
!819 = !DISubprogram(name: "deallocate", linkageName: "_ZNSt16allocator_traitsISaIjEE10deallocateERS0_Pjm", scope: !741, file: !742, line: 495, type: !820, scopeLine: 495, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!820 = !DISubroutineType(types: !821)
!821 = !{null, !749, !747, !814}
!822 = !DISubprogram(name: "max_size", linkageName: "_ZNSt16allocator_traitsISaIjEE8max_sizeERKS0_", scope: !741, file: !742, line: 547, type: !823, scopeLine: 547, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!823 = !DISubroutineType(types: !824)
!824 = !{!825, !826}
!825 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !741, file: !742, line: 435, baseType: !789)
!826 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !827, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !750)
!828 = !DISubprogram(name: "select_on_container_copy_construction", linkageName: "_ZNSt16allocator_traitsISaIjEE37select_on_container_copy_constructionERKS0_", scope: !741, file: !742, line: 562, type: !829, scopeLine: 562, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!829 = !DISubroutineType(types: !830)
!830 = !{!750, !826}
!831 = !{!832}
!832 = !DITemplateTypeParameter(name: "_Alloc", type: !751)
!833 = !DISubprogram(name: "_S_select_on_copy", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIjEjE17_S_select_on_copyERKS1_", scope: !738, file: !736, line: 97, type: !834, scopeLine: 97, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!834 = !DISubroutineType(types: !835)
!835 = !{!751, !807}
!836 = !DISubprogram(name: "_S_on_swap", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIjEjE10_S_on_swapERS1_S3_", scope: !738, file: !736, line: 100, type: !837, scopeLine: 100, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!837 = !DISubroutineType(types: !838)
!838 = !{null, !812, !812}
!839 = !DISubprogram(name: "_S_propagate_on_copy_assign", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIjEjE27_S_propagate_on_copy_assignEv", scope: !738, file: !736, line: 103, type: !840, scopeLine: 103, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!840 = !DISubroutineType(types: !841)
!841 = !{!139}
!842 = !DISubprogram(name: "_S_propagate_on_move_assign", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIjEjE27_S_propagate_on_move_assignEv", scope: !738, file: !736, line: 106, type: !840, scopeLine: 106, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!843 = !DISubprogram(name: "_S_propagate_on_swap", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIjEjE20_S_propagate_on_swapEv", scope: !738, file: !736, line: 109, type: !840, scopeLine: 109, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!844 = !DISubprogram(name: "_S_always_equal", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIjEjE15_S_always_equalEv", scope: !738, file: !736, line: 112, type: !840, scopeLine: 112, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!845 = !DISubprogram(name: "_S_nothrow_move", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIjEjE15_S_nothrow_moveEv", scope: !738, file: !736, line: 115, type: !840, scopeLine: 115, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!846 = !{!832, !847}
!847 = !DITemplateTypeParameter(type: !62)
!848 = !{}
!849 = !DIDerivedType(tag: DW_TAG_typedef, name: "rebind_alloc<unsigned int>", scope: !741, file: !742, line: 450, baseType: !751)
!850 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !731, baseType: !851, extraData: i32 0)
!851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Vector_impl_data", scope: !728, file: !725, line: 91, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !852, identifier: "_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE")
!852 = !{!853, !856, !857, !858, !862, !866, !871}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "_M_start", scope: !851, file: !725, line: 93, baseType: !854, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !728, file: !725, line: 89, baseType: !855)
!855 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !738, file: !736, line: 57, baseType: !747)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "_M_finish", scope: !851, file: !725, line: 94, baseType: !854, size: 64, offset: 64)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "_M_end_of_storage", scope: !851, file: !725, line: 95, baseType: !854, size: 64, offset: 128)
!858 = !DISubprogram(name: "_Vector_impl_data", scope: !851, file: !725, line: 97, type: !859, scopeLine: 97, flags: DIFlagPrototyped, spFlags: 0)
!859 = !DISubroutineType(types: !860)
!860 = !{null, !861}
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!862 = !DISubprogram(name: "_Vector_impl_data", scope: !851, file: !725, line: 102, type: !863, scopeLine: 102, flags: DIFlagPrototyped, spFlags: 0)
!863 = !DISubroutineType(types: !864)
!864 = !{null, !861, !865}
!865 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !851, size: 64)
!866 = !DISubprogram(name: "_M_copy_data", linkageName: "_ZNSt12_Vector_baseIjSaIjEE17_Vector_impl_data12_M_copy_dataERKS2_", scope: !851, file: !725, line: 109, type: !867, scopeLine: 109, flags: DIFlagPrototyped, spFlags: 0)
!867 = !DISubroutineType(types: !868)
!868 = !{null, !861, !869}
!869 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !870, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !851)
!871 = !DISubprogram(name: "_M_swap_data", linkageName: "_ZNSt12_Vector_baseIjSaIjEE17_Vector_impl_data12_M_swap_dataERS2_", scope: !851, file: !725, line: 117, type: !872, scopeLine: 117, flags: DIFlagPrototyped, spFlags: 0)
!872 = !DISubroutineType(types: !873)
!873 = !{null, !861, !874}
!874 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !851, size: 64)
!875 = !DISubprogram(name: "_Vector_impl", scope: !731, file: !725, line: 131, type: !876, scopeLine: 131, flags: DIFlagPrototyped, spFlags: 0)
!876 = !DISubroutineType(types: !877)
!877 = !{null, !878}
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!879 = !DISubprogram(name: "_Vector_impl", scope: !731, file: !725, line: 136, type: !880, scopeLine: 136, flags: DIFlagPrototyped, spFlags: 0)
!880 = !DISubroutineType(types: !881)
!881 = !{null, !878, !882}
!882 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !883, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !734)
!884 = !DISubprogram(name: "_Vector_impl", scope: !731, file: !725, line: 143, type: !885, scopeLine: 143, flags: DIFlagPrototyped, spFlags: 0)
!885 = !DISubroutineType(types: !886)
!886 = !{null, !878, !887}
!887 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !731, size: 64)
!888 = !DISubprogram(name: "_Vector_impl", scope: !731, file: !725, line: 147, type: !889, scopeLine: 147, flags: DIFlagPrototyped, spFlags: 0)
!889 = !DISubroutineType(types: !890)
!890 = !{null, !878, !891}
!891 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !734, size: 64)
!892 = !DISubprogram(name: "_Vector_impl", scope: !731, file: !725, line: 151, type: !893, scopeLine: 151, flags: DIFlagPrototyped, spFlags: 0)
!893 = !DISubroutineType(types: !894)
!894 = !{null, !878, !891, !887}
!895 = !DISubprogram(name: "_M_get_Tp_allocator", linkageName: "_ZNSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv", scope: !728, file: !725, line: 276, type: !896, scopeLine: 276, flags: DIFlagPrototyped, spFlags: 0)
!896 = !DISubroutineType(types: !897)
!897 = !{!898, !899}
!898 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !734, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!900 = !DISubprogram(name: "_M_get_Tp_allocator", linkageName: "_ZNKSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv", scope: !728, file: !725, line: 280, type: !901, scopeLine: 280, flags: DIFlagPrototyped, spFlags: 0)
!901 = !DISubroutineType(types: !902)
!902 = !{!882, !903}
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!904 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !728)
!905 = !DISubprogram(name: "get_allocator", linkageName: "_ZNKSt12_Vector_baseIjSaIjEE13get_allocatorEv", scope: !728, file: !725, line: 284, type: !906, scopeLine: 284, flags: DIFlagPrototyped, spFlags: 0)
!906 = !DISubroutineType(types: !907)
!907 = !{!908, !903}
!908 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocator_type", scope: !728, file: !725, line: 273, baseType: !751)
!909 = !DISubprogram(name: "_Vector_base", scope: !728, file: !725, line: 288, type: !910, scopeLine: 288, flags: DIFlagPrototyped, spFlags: 0)
!910 = !DISubroutineType(types: !911)
!911 = !{null, !899}
!912 = !DISubprogram(name: "_Vector_base", scope: !728, file: !725, line: 293, type: !913, scopeLine: 293, flags: DIFlagPrototyped, spFlags: 0)
!913 = !DISubroutineType(types: !914)
!914 = !{null, !899, !915}
!915 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !916, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !908)
!917 = !DISubprogram(name: "_Vector_base", scope: !728, file: !725, line: 298, type: !918, scopeLine: 298, flags: DIFlagPrototyped, spFlags: 0)
!918 = !DISubroutineType(types: !919)
!919 = !{null, !899, !789}
!920 = !DISubprogram(name: "_Vector_base", scope: !728, file: !725, line: 303, type: !921, scopeLine: 303, flags: DIFlagPrototyped, spFlags: 0)
!921 = !DISubroutineType(types: !922)
!922 = !{null, !899, !789, !915}
!923 = !DISubprogram(name: "_Vector_base", scope: !728, file: !725, line: 308, type: !924, scopeLine: 308, flags: DIFlagPrototyped, spFlags: 0)
!924 = !DISubroutineType(types: !925)
!925 = !{null, !899, !926}
!926 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !728, size: 64)
!927 = !DISubprogram(name: "_Vector_base", scope: !728, file: !725, line: 312, type: !928, scopeLine: 312, flags: DIFlagPrototyped, spFlags: 0)
!928 = !DISubroutineType(types: !929)
!929 = !{null, !899, !891}
!930 = !DISubprogram(name: "_Vector_base", scope: !728, file: !725, line: 315, type: !931, scopeLine: 315, flags: DIFlagPrototyped, spFlags: 0)
!931 = !DISubroutineType(types: !932)
!932 = !{null, !899, !926, !915}
!933 = !DISubprogram(name: "_Vector_base", scope: !728, file: !725, line: 328, type: !934, scopeLine: 328, flags: DIFlagPrototyped, spFlags: 0)
!934 = !DISubroutineType(types: !935)
!935 = !{null, !899, !915, !926}
!936 = !DISubprogram(name: "~_Vector_base", scope: !728, file: !725, line: 333, type: !910, scopeLine: 333, flags: DIFlagPrototyped, spFlags: 0)
!937 = !DISubprogram(name: "_M_allocate", linkageName: "_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm", scope: !728, file: !725, line: 343, type: !938, scopeLine: 343, flags: DIFlagPrototyped, spFlags: 0)
!938 = !DISubroutineType(types: !939)
!939 = !{!854, !899, !789}
!940 = !DISubprogram(name: "_M_deallocate", linkageName: "_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm", scope: !728, file: !725, line: 350, type: !941, scopeLine: 350, flags: DIFlagPrototyped, spFlags: 0)
!941 = !DISubroutineType(types: !942)
!942 = !{null, !899, !854, !789}
!943 = !DISubprogram(name: "_M_create_storage", linkageName: "_ZNSt12_Vector_baseIjSaIjEE17_M_create_storageEm", scope: !728, file: !725, line: 359, type: !918, scopeLine: 359, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!944 = !{!799, !832}
!945 = !DISubprogram(name: "_S_nothrow_relocate", linkageName: "_ZNSt6vectorIjSaIjEE19_S_nothrow_relocateESt17integral_constantIbLb1EE", scope: !724, file: !725, line: 431, type: !946, scopeLine: 431, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!946 = !DISubroutineType(types: !947)
!947 = !{!139, !948}
!948 = !DIDerivedType(tag: DW_TAG_typedef, name: "true_type", scope: !361, file: !949, line: 83, baseType: !950)
!949 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/type_traits", directory: "")
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "integral_constant<bool, true>", scope: !361, file: !949, line: 65, size: 8, flags: DIFlagTypePassByValue, elements: !951, templateParams: !961, identifier: "_ZTSSt17integral_constantIbLb1EE")
!951 = !{!952, !954, !960}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !950, file: !949, line: 67, baseType: !953, flags: DIFlagStaticMember, extraData: i1 true)
!953 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !139)
!954 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt17integral_constantIbLb1EEcvbEv", scope: !950, file: !949, line: 70, type: !955, scopeLine: 70, flags: DIFlagPrototyped, spFlags: 0)
!955 = !DISubroutineType(types: !956)
!956 = !{!957, !958}
!957 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !950, file: !949, line: 68, baseType: !139)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!959 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !950)
!960 = !DISubprogram(name: "operator()", linkageName: "_ZNKSt17integral_constantIbLb1EEclEv", scope: !950, file: !949, line: 75, type: !955, scopeLine: 75, flags: DIFlagPrototyped, spFlags: 0)
!961 = !{!962, !963}
!962 = !DITemplateTypeParameter(name: "_Tp", type: !139)
!963 = !DITemplateValueParameter(name: "__v", type: !139, value: i1 true)
!964 = !DISubprogram(name: "_S_nothrow_relocate", linkageName: "_ZNSt6vectorIjSaIjEE19_S_nothrow_relocateESt17integral_constantIbLb0EE", scope: !724, file: !725, line: 440, type: !965, scopeLine: 440, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!965 = !DISubroutineType(types: !966)
!966 = !{!139, !967}
!967 = !DIDerivedType(tag: DW_TAG_typedef, name: "false_type", scope: !361, file: !949, line: 86, baseType: !968)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "integral_constant<bool, false>", scope: !361, file: !949, line: 65, size: 8, flags: DIFlagTypePassByValue, elements: !969, templateParams: !978, identifier: "_ZTSSt17integral_constantIbLb0EE")
!969 = !{!970, !971, !977}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !968, file: !949, line: 67, baseType: !953, flags: DIFlagStaticMember, extraData: i1 false)
!971 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt17integral_constantIbLb0EEcvbEv", scope: !968, file: !949, line: 70, type: !972, scopeLine: 70, flags: DIFlagPrototyped, spFlags: 0)
!972 = !DISubroutineType(types: !973)
!973 = !{!974, !975}
!974 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !968, file: !949, line: 68, baseType: !139)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!976 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !968)
!977 = !DISubprogram(name: "operator()", linkageName: "_ZNKSt17integral_constantIbLb0EEclEv", scope: !968, file: !949, line: 75, type: !972, scopeLine: 75, flags: DIFlagPrototyped, spFlags: 0)
!978 = !{!962, !979}
!979 = !DITemplateValueParameter(name: "__v", type: !139, value: i1 false)
!980 = !DISubprogram(name: "_S_use_relocate", linkageName: "_ZNSt6vectorIjSaIjEE15_S_use_relocateEv", scope: !724, file: !725, line: 444, type: !840, scopeLine: 444, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!981 = !DISubprogram(name: "_S_do_relocate", linkageName: "_ZNSt6vectorIjSaIjEE14_S_do_relocateEPjS2_S2_RS0_St17integral_constantIbLb1EE", scope: !724, file: !725, line: 453, type: !982, scopeLine: 453, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!982 = !DISubroutineType(types: !983)
!983 = !{!984, !984, !984, !984, !985, !948}
!984 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !724, file: !725, line: 415, baseType: !854, flags: DIFlagPublic)
!985 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !986, size: 64)
!986 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Tp_alloc_type", scope: !724, file: !725, line: 410, baseType: !734)
!987 = !DISubprogram(name: "_S_do_relocate", linkageName: "_ZNSt6vectorIjSaIjEE14_S_do_relocateEPjS2_S2_RS0_St17integral_constantIbLb0EE", scope: !724, file: !725, line: 460, type: !988, scopeLine: 460, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!988 = !DISubroutineType(types: !989)
!989 = !{!984, !984, !984, !984, !985, !967}
!990 = !DISubprogram(name: "_S_relocate", linkageName: "_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_", scope: !724, file: !725, line: 465, type: !991, scopeLine: 465, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!991 = !DISubroutineType(types: !992)
!992 = !{!984, !984, !984, !984, !985}
!993 = !DISubprogram(name: "vector", scope: !724, file: !725, line: 487, type: !994, scopeLine: 487, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!994 = !DISubroutineType(types: !995)
!995 = !{null, !996}
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!997 = !DISubprogram(name: "vector", scope: !724, file: !725, line: 497, type: !998, scopeLine: 497, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!998 = !DISubroutineType(types: !999)
!999 = !{null, !996, !1000}
!1000 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1001, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1002)
!1002 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocator_type", scope: !724, file: !725, line: 426, baseType: !751, flags: DIFlagPublic)
!1003 = !DISubprogram(name: "vector", scope: !724, file: !725, line: 510, type: !1004, scopeLine: 510, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{null, !996, !1006, !1000}
!1006 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", file: !725, line: 424, baseType: !789, flags: DIFlagPublic)
!1007 = !DISubprogram(name: "vector", scope: !724, file: !725, line: 522, type: !1008, scopeLine: 522, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{null, !996, !1006, !1010, !1000}
!1010 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1011, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1012)
!1012 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !724, file: !725, line: 414, baseType: !62, flags: DIFlagPublic)
!1013 = !DISubprogram(name: "vector", scope: !724, file: !725, line: 553, type: !1014, scopeLine: 553, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1014 = !DISubroutineType(types: !1015)
!1015 = !{null, !996, !1016}
!1016 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1017, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !724)
!1018 = !DISubprogram(name: "vector", scope: !724, file: !725, line: 572, type: !1019, scopeLine: 572, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1019 = !DISubroutineType(types: !1020)
!1020 = !{null, !996, !1021}
!1021 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !724, size: 64)
!1022 = !DISubprogram(name: "vector", scope: !724, file: !725, line: 575, type: !1023, scopeLine: 575, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1023 = !DISubroutineType(types: !1024)
!1024 = !{null, !996, !1016, !1000}
!1025 = !DISubprogram(name: "vector", scope: !724, file: !725, line: 585, type: !1026, scopeLine: 585, flags: DIFlagPrototyped, spFlags: 0)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{null, !996, !1021, !1000, !948}
!1028 = !DISubprogram(name: "vector", scope: !724, file: !725, line: 589, type: !1029, scopeLine: 589, flags: DIFlagPrototyped, spFlags: 0)
!1029 = !DISubroutineType(types: !1030)
!1030 = !{null, !996, !1021, !1000, !967}
!1031 = !DISubprogram(name: "vector", scope: !724, file: !725, line: 607, type: !1032, scopeLine: 607, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1032 = !DISubroutineType(types: !1033)
!1033 = !{null, !996, !1021, !1000}
!1034 = !DISubprogram(name: "vector", scope: !724, file: !725, line: 625, type: !1035, scopeLine: 625, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{null, !996, !1037, !1000}
!1037 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "initializer_list<unsigned int>", scope: !361, file: !1038, line: 47, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16initializer_listIjE")
!1038 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/initializer_list", directory: "")
!1039 = !DISubprogram(name: "~vector", scope: !724, file: !725, line: 678, type: !994, scopeLine: 678, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1040 = !DISubprogram(name: "operator=", linkageName: "_ZNSt6vectorIjSaIjEEaSERKS1_", scope: !724, file: !725, line: 695, type: !1041, scopeLine: 695, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!1043, !996, !1016}
!1043 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !724, size: 64)
!1044 = !DISubprogram(name: "operator=", linkageName: "_ZNSt6vectorIjSaIjEEaSEOS1_", scope: !724, file: !725, line: 709, type: !1045, scopeLine: 709, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!1043, !996, !1021}
!1047 = !DISubprogram(name: "operator=", linkageName: "_ZNSt6vectorIjSaIjEEaSESt16initializer_listIjE", scope: !724, file: !725, line: 730, type: !1048, scopeLine: 730, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{!1043, !996, !1037}
!1050 = !DISubprogram(name: "assign", linkageName: "_ZNSt6vectorIjSaIjEE6assignEmRKj", scope: !724, file: !725, line: 749, type: !1051, scopeLine: 749, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{null, !996, !1006, !1010}
!1053 = !DISubprogram(name: "assign", linkageName: "_ZNSt6vectorIjSaIjEE6assignESt16initializer_listIjE", scope: !724, file: !725, line: 794, type: !1054, scopeLine: 794, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1054 = !DISubroutineType(types: !1055)
!1055 = !{null, !996, !1037}
!1056 = !DISubprogram(name: "begin", linkageName: "_ZNSt6vectorIjSaIjEE5beginEv", scope: !724, file: !725, line: 811, type: !1057, scopeLine: 811, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1057 = !DISubroutineType(types: !1058)
!1058 = !{!1059, !996}
!1059 = !DIDerivedType(tag: DW_TAG_typedef, name: "iterator", scope: !724, file: !725, line: 419, baseType: !1060, flags: DIFlagPublic)
!1060 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__normal_iterator<unsigned int *, std::vector<unsigned int, std::allocator<unsigned int> > >", scope: !515, file: !1061, line: 1004, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !1062, templateParams: !1115, identifier: "_ZTSN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEE")
!1061 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/stl_iterator.h", directory: "", checksumkind: CSK_MD5, checksum: "adfbaa72dad2c93f2f61417c54c47efb")
!1062 = !{!1063, !1064, !1068, !1073, !1084, !1089, !1093, !1096, !1097, !1098, !1104, !1107, !1110, !1111, !1112}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "_M_current", scope: !1060, file: !1061, line: 1007, baseType: !748, size: 64, flags: DIFlagProtected)
!1064 = !DISubprogram(name: "__normal_iterator", scope: !1060, file: !1061, line: 1023, type: !1065, scopeLine: 1023, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{null, !1067}
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1068 = !DISubprogram(name: "__normal_iterator", scope: !1060, file: !1061, line: 1027, type: !1069, scopeLine: 1027, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{null, !1067, !1071}
!1071 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1072, size: 64)
!1072 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !748)
!1073 = !DISubprogram(name: "operator*", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEdeEv", scope: !1060, file: !1061, line: 1042, type: !1074, scopeLine: 1042, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1074 = !DISubroutineType(types: !1075)
!1075 = !{!1076, !1082}
!1076 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !1060, file: !1061, line: 1016, baseType: !1077, flags: DIFlagPublic)
!1077 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !1079, file: !1078, line: 216, baseType: !776)
!1078 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/stl_iterator_base_types.h", directory: "")
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iterator_traits<unsigned int *>", scope: !361, file: !1078, line: 210, size: 8, flags: DIFlagTypePassByValue, elements: !848, templateParams: !1080, identifier: "_ZTSSt15iterator_traitsIPjE")
!1080 = !{!1081}
!1081 = !DITemplateTypeParameter(name: "_Iterator", type: !748)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1083 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1060)
!1084 = !DISubprogram(name: "operator->", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEptEv", scope: !1060, file: !1061, line: 1047, type: !1085, scopeLine: 1047, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{!1087, !1082}
!1087 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !1060, file: !1061, line: 1017, baseType: !1088, flags: DIFlagPublic)
!1088 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !1079, file: !1078, line: 215, baseType: !748)
!1089 = !DISubprogram(name: "operator++", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEppEv", scope: !1060, file: !1061, line: 1052, type: !1090, scopeLine: 1052, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{!1092, !1067}
!1092 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1060, size: 64)
!1093 = !DISubprogram(name: "operator++", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEppEi", scope: !1060, file: !1061, line: 1060, type: !1094, scopeLine: 1060, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{!1060, !1067, !97}
!1096 = !DISubprogram(name: "operator--", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEmmEv", scope: !1060, file: !1061, line: 1066, type: !1090, scopeLine: 1066, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1097 = !DISubprogram(name: "operator--", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEmmEi", scope: !1060, file: !1061, line: 1074, type: !1094, scopeLine: 1074, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1098 = !DISubprogram(name: "operator[]", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEixEl", scope: !1060, file: !1061, line: 1080, type: !1099, scopeLine: 1080, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{!1076, !1082, !1101}
!1101 = !DIDerivedType(tag: DW_TAG_typedef, name: "difference_type", scope: !1060, file: !1061, line: 1015, baseType: !1102, flags: DIFlagPublic)
!1102 = !DIDerivedType(tag: DW_TAG_typedef, name: "difference_type", scope: !1079, file: !1078, line: 214, baseType: !1103)
!1103 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", scope: !361, file: !790, line: 281, baseType: !209)
!1104 = !DISubprogram(name: "operator+=", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEpLEl", scope: !1060, file: !1061, line: 1085, type: !1105, scopeLine: 1085, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1105 = !DISubroutineType(types: !1106)
!1106 = !{!1092, !1067, !1101}
!1107 = !DISubprogram(name: "operator+", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEplEl", scope: !1060, file: !1061, line: 1090, type: !1108, scopeLine: 1090, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1108 = !DISubroutineType(types: !1109)
!1109 = !{!1060, !1082, !1101}
!1110 = !DISubprogram(name: "operator-=", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEmIEl", scope: !1060, file: !1061, line: 1095, type: !1105, scopeLine: 1095, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1111 = !DISubprogram(name: "operator-", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEmiEl", scope: !1060, file: !1061, line: 1100, type: !1108, scopeLine: 1100, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1112 = !DISubprogram(name: "base", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEE4baseEv", scope: !1060, file: !1061, line: 1105, type: !1113, scopeLine: 1105, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1113 = !DISubroutineType(types: !1114)
!1114 = !{!1071, !1082}
!1115 = !{!1081, !1116}
!1116 = !DITemplateTypeParameter(name: "_Container", type: !724)
!1117 = !DISubprogram(name: "begin", linkageName: "_ZNKSt6vectorIjSaIjEE5beginEv", scope: !724, file: !725, line: 820, type: !1118, scopeLine: 820, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1118 = !DISubroutineType(types: !1119)
!1119 = !{!1120, !1122}
!1120 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_iterator", scope: !724, file: !725, line: 421, baseType: !1121, flags: DIFlagPublic)
!1121 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__normal_iterator<const unsigned int *, std::vector<unsigned int, std::allocator<unsigned int> > >", scope: !515, file: !1061, line: 1004, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEE")
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1123 = !DISubprogram(name: "end", linkageName: "_ZNSt6vectorIjSaIjEE3endEv", scope: !724, file: !725, line: 829, type: !1057, scopeLine: 829, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1124 = !DISubprogram(name: "end", linkageName: "_ZNKSt6vectorIjSaIjEE3endEv", scope: !724, file: !725, line: 838, type: !1118, scopeLine: 838, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1125 = !DISubprogram(name: "rbegin", linkageName: "_ZNSt6vectorIjSaIjEE6rbeginEv", scope: !724, file: !725, line: 847, type: !1126, scopeLine: 847, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1126 = !DISubroutineType(types: !1127)
!1127 = !{!1128, !996}
!1128 = !DIDerivedType(tag: DW_TAG_typedef, name: "reverse_iterator", scope: !724, file: !725, line: 423, baseType: !1129, flags: DIFlagPublic)
!1129 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<__gnu_cxx::__normal_iterator<unsigned int *, std::vector<unsigned int, std::allocator<unsigned int> > > >", scope: !361, file: !1061, line: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEE")
!1130 = !DISubprogram(name: "rbegin", linkageName: "_ZNKSt6vectorIjSaIjEE6rbeginEv", scope: !724, file: !725, line: 856, type: !1131, scopeLine: 856, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{!1133, !1122}
!1133 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reverse_iterator", scope: !724, file: !725, line: 422, baseType: !1134, flags: DIFlagPublic)
!1134 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<__gnu_cxx::__normal_iterator<const unsigned int *, std::vector<unsigned int, std::allocator<unsigned int> > > >", scope: !361, file: !1061, line: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEE")
!1135 = !DISubprogram(name: "rend", linkageName: "_ZNSt6vectorIjSaIjEE4rendEv", scope: !724, file: !725, line: 865, type: !1126, scopeLine: 865, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1136 = !DISubprogram(name: "rend", linkageName: "_ZNKSt6vectorIjSaIjEE4rendEv", scope: !724, file: !725, line: 874, type: !1131, scopeLine: 874, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1137 = !DISubprogram(name: "cbegin", linkageName: "_ZNKSt6vectorIjSaIjEE6cbeginEv", scope: !724, file: !725, line: 884, type: !1118, scopeLine: 884, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1138 = !DISubprogram(name: "cend", linkageName: "_ZNKSt6vectorIjSaIjEE4cendEv", scope: !724, file: !725, line: 893, type: !1118, scopeLine: 893, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1139 = !DISubprogram(name: "crbegin", linkageName: "_ZNKSt6vectorIjSaIjEE7crbeginEv", scope: !724, file: !725, line: 902, type: !1131, scopeLine: 902, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1140 = !DISubprogram(name: "crend", linkageName: "_ZNKSt6vectorIjSaIjEE5crendEv", scope: !724, file: !725, line: 911, type: !1131, scopeLine: 911, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1141 = !DISubprogram(name: "size", linkageName: "_ZNKSt6vectorIjSaIjEE4sizeEv", scope: !724, file: !725, line: 918, type: !1142, scopeLine: 918, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1142 = !DISubroutineType(types: !1143)
!1143 = !{!1006, !1122}
!1144 = !DISubprogram(name: "max_size", linkageName: "_ZNKSt6vectorIjSaIjEE8max_sizeEv", scope: !724, file: !725, line: 923, type: !1142, scopeLine: 923, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1145 = !DISubprogram(name: "resize", linkageName: "_ZNSt6vectorIjSaIjEE6resizeEm", scope: !724, file: !725, line: 937, type: !1146, scopeLine: 937, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{null, !996, !1006}
!1148 = !DISubprogram(name: "resize", linkageName: "_ZNSt6vectorIjSaIjEE6resizeEmRKj", scope: !724, file: !725, line: 957, type: !1051, scopeLine: 957, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1149 = !DISubprogram(name: "shrink_to_fit", linkageName: "_ZNSt6vectorIjSaIjEE13shrink_to_fitEv", scope: !724, file: !725, line: 989, type: !994, scopeLine: 989, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1150 = !DISubprogram(name: "capacity", linkageName: "_ZNKSt6vectorIjSaIjEE8capacityEv", scope: !724, file: !725, line: 998, type: !1142, scopeLine: 998, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1151 = !DISubprogram(name: "empty", linkageName: "_ZNKSt6vectorIjSaIjEE5emptyEv", scope: !724, file: !725, line: 1007, type: !1152, scopeLine: 1007, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1152 = !DISubroutineType(types: !1153)
!1153 = !{!139, !1122}
!1154 = !DISubprogram(name: "reserve", linkageName: "_ZNSt6vectorIjSaIjEE7reserveEm", scope: !724, file: !725, line: 1028, type: !1146, scopeLine: 1028, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1155 = !DISubprogram(name: "operator[]", linkageName: "_ZNSt6vectorIjSaIjEEixEm", scope: !724, file: !725, line: 1043, type: !1156, scopeLine: 1043, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1156 = !DISubroutineType(types: !1157)
!1157 = !{!1158, !996, !1006}
!1158 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !724, file: !725, line: 417, baseType: !1159, flags: DIFlagPublic)
!1159 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !738, file: !736, line: 62, baseType: !1160)
!1160 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1161, size: 64)
!1161 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !738, file: !736, line: 56, baseType: !1162)
!1162 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !741, file: !742, line: 417, baseType: !62)
!1163 = !DISubprogram(name: "operator[]", linkageName: "_ZNKSt6vectorIjSaIjEEixEm", scope: !724, file: !725, line: 1061, type: !1164, scopeLine: 1061, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1164 = !DISubroutineType(types: !1165)
!1165 = !{!1166, !1122, !1006}
!1166 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !724, file: !725, line: 418, baseType: !1167, flags: DIFlagPublic)
!1167 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !738, file: !736, line: 63, baseType: !1168)
!1168 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1169, size: 64)
!1169 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1161)
!1170 = !DISubprogram(name: "_M_range_check", linkageName: "_ZNKSt6vectorIjSaIjEE14_M_range_checkEm", scope: !724, file: !725, line: 1070, type: !1171, scopeLine: 1070, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!1171 = !DISubroutineType(types: !1172)
!1172 = !{null, !1122, !1006}
!1173 = !DISubprogram(name: "at", linkageName: "_ZNSt6vectorIjSaIjEE2atEm", scope: !724, file: !725, line: 1092, type: !1156, scopeLine: 1092, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1174 = !DISubprogram(name: "at", linkageName: "_ZNKSt6vectorIjSaIjEE2atEm", scope: !724, file: !725, line: 1110, type: !1164, scopeLine: 1110, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1175 = !DISubprogram(name: "front", linkageName: "_ZNSt6vectorIjSaIjEE5frontEv", scope: !724, file: !725, line: 1121, type: !1176, scopeLine: 1121, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1176 = !DISubroutineType(types: !1177)
!1177 = !{!1158, !996}
!1178 = !DISubprogram(name: "front", linkageName: "_ZNKSt6vectorIjSaIjEE5frontEv", scope: !724, file: !725, line: 1132, type: !1179, scopeLine: 1132, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1179 = !DISubroutineType(types: !1180)
!1180 = !{!1166, !1122}
!1181 = !DISubprogram(name: "back", linkageName: "_ZNSt6vectorIjSaIjEE4backEv", scope: !724, file: !725, line: 1143, type: !1176, scopeLine: 1143, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1182 = !DISubprogram(name: "back", linkageName: "_ZNKSt6vectorIjSaIjEE4backEv", scope: !724, file: !725, line: 1154, type: !1179, scopeLine: 1154, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1183 = !DISubprogram(name: "data", linkageName: "_ZNSt6vectorIjSaIjEE4dataEv", scope: !724, file: !725, line: 1168, type: !1184, scopeLine: 1168, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{!748, !996}
!1186 = !DISubprogram(name: "data", linkageName: "_ZNKSt6vectorIjSaIjEE4dataEv", scope: !724, file: !725, line: 1172, type: !1187, scopeLine: 1172, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1187 = !DISubroutineType(types: !1188)
!1188 = !{!781, !1122}
!1189 = !DISubprogram(name: "push_back", linkageName: "_ZNSt6vectorIjSaIjEE9push_backERKj", scope: !724, file: !725, line: 1187, type: !1190, scopeLine: 1187, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1190 = !DISubroutineType(types: !1191)
!1191 = !{null, !996, !1010}
!1192 = !DISubprogram(name: "push_back", linkageName: "_ZNSt6vectorIjSaIjEE9push_backEOj", scope: !724, file: !725, line: 1203, type: !1193, scopeLine: 1203, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1193 = !DISubroutineType(types: !1194)
!1194 = !{null, !996, !1195}
!1195 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !1012, size: 64)
!1196 = !DISubprogram(name: "pop_back", linkageName: "_ZNSt6vectorIjSaIjEE8pop_backEv", scope: !724, file: !725, line: 1225, type: !994, scopeLine: 1225, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1197 = !DISubprogram(name: "insert", linkageName: "_ZNSt6vectorIjSaIjEE6insertEN9__gnu_cxx17__normal_iteratorIPKjS1_EERS4_", scope: !724, file: !725, line: 1263, type: !1198, scopeLine: 1263, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1198 = !DISubroutineType(types: !1199)
!1199 = !{!1059, !996, !1120, !1010}
!1200 = !DISubprogram(name: "insert", linkageName: "_ZNSt6vectorIjSaIjEE6insertEN9__gnu_cxx17__normal_iteratorIPKjS1_EEOj", scope: !724, file: !725, line: 1293, type: !1201, scopeLine: 1293, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1201 = !DISubroutineType(types: !1202)
!1202 = !{!1059, !996, !1120, !1195}
!1203 = !DISubprogram(name: "insert", linkageName: "_ZNSt6vectorIjSaIjEE6insertEN9__gnu_cxx17__normal_iteratorIPKjS1_EESt16initializer_listIjE", scope: !724, file: !725, line: 1310, type: !1204, scopeLine: 1310, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{!1059, !996, !1120, !1037}
!1206 = !DISubprogram(name: "insert", linkageName: "_ZNSt6vectorIjSaIjEE6insertEN9__gnu_cxx17__normal_iteratorIPKjS1_EEmRS4_", scope: !724, file: !725, line: 1335, type: !1207, scopeLine: 1335, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1207 = !DISubroutineType(types: !1208)
!1208 = !{!1059, !996, !1120, !1006, !1010}
!1209 = !DISubprogram(name: "erase", linkageName: "_ZNSt6vectorIjSaIjEE5eraseEN9__gnu_cxx17__normal_iteratorIPKjS1_EE", scope: !724, file: !725, line: 1430, type: !1210, scopeLine: 1430, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1210 = !DISubroutineType(types: !1211)
!1211 = !{!1059, !996, !1120}
!1212 = !DISubprogram(name: "erase", linkageName: "_ZNSt6vectorIjSaIjEE5eraseEN9__gnu_cxx17__normal_iteratorIPKjS1_EES6_", scope: !724, file: !725, line: 1457, type: !1213, scopeLine: 1457, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1213 = !DISubroutineType(types: !1214)
!1214 = !{!1059, !996, !1120, !1120}
!1215 = !DISubprogram(name: "swap", linkageName: "_ZNSt6vectorIjSaIjEE4swapERS1_", scope: !724, file: !725, line: 1480, type: !1216, scopeLine: 1480, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1216 = !DISubroutineType(types: !1217)
!1217 = !{null, !996, !1043}
!1218 = !DISubprogram(name: "clear", linkageName: "_ZNSt6vectorIjSaIjEE5clearEv", scope: !724, file: !725, line: 1498, type: !994, scopeLine: 1498, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1219 = !DISubprogram(name: "_M_fill_initialize", linkageName: "_ZNSt6vectorIjSaIjEE18_M_fill_initializeEmRKj", scope: !724, file: !725, line: 1593, type: !1051, scopeLine: 1593, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!1220 = !DISubprogram(name: "_M_default_initialize", linkageName: "_ZNSt6vectorIjSaIjEE21_M_default_initializeEm", scope: !724, file: !725, line: 1603, type: !1146, scopeLine: 1603, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!1221 = !DISubprogram(name: "_M_fill_assign", linkageName: "_ZNSt6vectorIjSaIjEE14_M_fill_assignEmRKj", scope: !724, file: !725, line: 1645, type: !1051, scopeLine: 1645, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!1222 = !DISubprogram(name: "_M_fill_insert", linkageName: "_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj", scope: !724, file: !725, line: 1684, type: !1223, scopeLine: 1684, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!1223 = !DISubroutineType(types: !1224)
!1224 = !{null, !996, !1059, !1006, !1010}
!1225 = !DISubprogram(name: "_M_default_append", linkageName: "_ZNSt6vectorIjSaIjEE17_M_default_appendEm", scope: !724, file: !725, line: 1689, type: !1146, scopeLine: 1689, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!1226 = !DISubprogram(name: "_M_shrink_to_fit", linkageName: "_ZNSt6vectorIjSaIjEE16_M_shrink_to_fitEv", scope: !724, file: !725, line: 1692, type: !1227, scopeLine: 1692, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!1227 = !DISubroutineType(types: !1228)
!1228 = !{!139, !996}
!1229 = !DISubprogram(name: "_M_insert_rval", linkageName: "_ZNSt6vectorIjSaIjEE14_M_insert_rvalEN9__gnu_cxx17__normal_iteratorIPKjS1_EEOj", scope: !724, file: !725, line: 1741, type: !1201, scopeLine: 1741, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!1230 = !DISubprogram(name: "_M_emplace_aux", linkageName: "_ZNSt6vectorIjSaIjEE14_M_emplace_auxEN9__gnu_cxx17__normal_iteratorIPKjS1_EEOj", scope: !724, file: !725, line: 1750, type: !1201, scopeLine: 1750, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!1231 = !DISubprogram(name: "_M_check_len", linkageName: "_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc", scope: !724, file: !725, line: 1756, type: !1232, scopeLine: 1756, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!1232 = !DISubroutineType(types: !1233)
!1233 = !{!1234, !1122, !1006, !404}
!1234 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !724, file: !725, line: 424, baseType: !789, flags: DIFlagPublic)
!1235 = !DISubprogram(name: "_S_check_init_len", linkageName: "_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_", scope: !724, file: !725, line: 1767, type: !1236, scopeLine: 1767, flags: DIFlagProtected | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!1236 = !DISubroutineType(types: !1237)
!1237 = !{!1234, !1006, !1000}
!1238 = !DISubprogram(name: "_S_max_size", linkageName: "_ZNSt6vectorIjSaIjEE11_S_max_sizeERKS0_", scope: !724, file: !725, line: 1776, type: !1239, scopeLine: 1776, flags: DIFlagProtected | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!1239 = !DISubroutineType(types: !1240)
!1240 = !{!1234, !1241}
!1241 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1242, size: 64)
!1242 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !986)
!1243 = !DISubprogram(name: "_M_erase_at_end", linkageName: "_ZNSt6vectorIjSaIjEE15_M_erase_at_endEPj", scope: !724, file: !725, line: 1792, type: !1244, scopeLine: 1792, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!1244 = !DISubroutineType(types: !1245)
!1245 = !{null, !996, !984}
!1246 = !DISubprogram(name: "_M_erase", linkageName: "_ZNSt6vectorIjSaIjEE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPjS1_EE", scope: !724, file: !725, line: 1804, type: !1247, scopeLine: 1804, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{!1059, !996, !1059}
!1249 = !DISubprogram(name: "_M_erase", linkageName: "_ZNSt6vectorIjSaIjEE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPjS1_EES5_", scope: !724, file: !725, line: 1807, type: !1250, scopeLine: 1807, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!1250 = !DISubroutineType(types: !1251)
!1251 = !{!1059, !996, !1059, !1059}
!1252 = !DISubprogram(name: "_M_move_assign", linkageName: "_ZNSt6vectorIjSaIjEE14_M_move_assignEOS1_St17integral_constantIbLb1EE", scope: !724, file: !725, line: 1815, type: !1253, scopeLine: 1815, flags: DIFlagPrototyped, spFlags: 0)
!1253 = !DISubroutineType(types: !1254)
!1254 = !{null, !996, !1021, !948}
!1255 = !DISubprogram(name: "_M_move_assign", linkageName: "_ZNSt6vectorIjSaIjEE14_M_move_assignEOS1_St17integral_constantIbLb0EE", scope: !724, file: !725, line: 1826, type: !1256, scopeLine: 1826, flags: DIFlagPrototyped, spFlags: 0)
!1256 = !DISubroutineType(types: !1257)
!1257 = !{null, !996, !1021, !967}
!1258 = !{!799, !1259}
!1259 = !DITemplateTypeParameter(name: "_Alloc", type: !751, defaulted: true)
!1260 = !DISubprogram(name: "set_format", linkageName: "_ZN5Linux7VideoIn10set_formatEPjS1_S1_S1_S1_", scope: !679, file: !680, line: 48, type: !1261, scopeLine: 48, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1261 = !DISubroutineType(types: !1262)
!1262 = !{!139, !697, !1263, !1263, !1263, !1263, !1263}
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!1264 = !DISubprogram(name: "set_crop", linkageName: "_ZN5Linux7VideoIn8set_cropEjjjj", scope: !679, file: !680, line: 50, type: !1265, scopeLine: 50, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{!139, !697, !105, !105, !105, !105}
!1267 = !DISubprogram(name: "prepare_capture", linkageName: "_ZN5Linux7VideoIn15prepare_captureEv", scope: !679, file: !680, line: 52, type: !712, scopeLine: 52, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1268 = !DISubprogram(name: "shrink_8bpp", linkageName: "_ZN5Linux7VideoIn11shrink_8bppEPhS1_jjjjjjjj", scope: !679, file: !680, line: 54, type: !1269, scopeLine: 54, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!1269 = !DISubroutineType(types: !1270)
!1270 = !{null, !154, !154, !105, !105, !105, !105, !105, !105, !105, !105}
!1271 = !DISubprogram(name: "crop_8bpp", linkageName: "_ZN5Linux7VideoIn9crop_8bppEPhS1_jjjjj", scope: !679, file: !680, line: 59, type: !1272, scopeLine: 59, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!1272 = !DISubroutineType(types: !1273)
!1273 = !{null, !154, !154, !105, !105, !105, !105, !105}
!1274 = !DISubprogram(name: "yuyv_to_grey", linkageName: "_ZN5Linux7VideoIn12yuyv_to_greyEPhjS1_", scope: !679, file: !680, line: 64, type: !1275, scopeLine: 64, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!1275 = !DISubroutineType(types: !1276)
!1276 = !{null, !154, !105, !154}
!1277 = !DISubprogram(name: "_queue_buffer", linkageName: "_ZN5Linux7VideoIn13_queue_bufferEi", scope: !679, file: !680, line: 68, type: !1278, scopeLine: 68, flags: DIFlagPrototyped, spFlags: 0)
!1278 = !DISubroutineType(types: !1279)
!1279 = !{null, !697, !97}
!1280 = !DISubprogram(name: "_set_streaming", linkageName: "_ZN5Linux7VideoIn14_set_streamingEb", scope: !679, file: !680, line: 69, type: !1281, scopeLine: 69, flags: DIFlagPrototyped, spFlags: 0)
!1281 = !DISubroutineType(types: !1282)
!1282 = !{!139, !697, !139}
!1283 = !DISubprogram(name: "_dequeue_frame", linkageName: "_ZN5Linux7VideoIn14_dequeue_frameERNS0_5FrameE", scope: !679, file: !680, line: 70, type: !695, scopeLine: 70, flags: DIFlagPrototyped, spFlags: 0)
!1284 = !DISubprogram(name: "_timeval_to_us", linkageName: "_ZN5Linux7VideoIn14_timeval_to_usER7timeval", scope: !679, file: !680, line: 71, type: !1285, scopeLine: 71, flags: DIFlagPrototyped, spFlags: 0)
!1285 = !DISubroutineType(types: !1286)
!1286 = !{!105, !697, !1287}
!1287 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1288, size: 64)
!1288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !1289, line: 8, size: 128, flags: DIFlagTypePassByValue, elements: !1290, identifier: "_ZTS7timeval")
!1289 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h", directory: "", checksumkind: CSK_MD5, checksum: "9b45d950050c215f216850b27bd1e8f3")
!1290 = !{!1291, !1293}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1288, file: !1289, line: 14, baseType: !1292, size: 64)
!1292 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !108, line: 160, baseType: !209)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !1288, file: !1289, line: 15, baseType: !1294, size: 64, offset: 64)
!1294 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !108, line: 162, baseType: !209)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "_last_video_frame", scope: !671, file: !672, line: 36, baseType: !699, size: 192, offset: 128)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "_pwm", scope: !671, file: !672, line: 37, baseType: !1297, size: 64, offset: 320)
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1298 = !DICompositeType(tag: DW_TAG_class_type, name: "PWM_Sysfs_Base", scope: !157, file: !1299, line: 8, size: 448, flags: DIFlagFwdDecl | DIFlagNonTrivial)
!1299 = !DIFile(filename: "ardupilot/libraries/AP_HAL_Linux/PWM_Sysfs.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "5af82f9c516108dd2231a00cd6683187")
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "_camerasensor", scope: !671, file: !672, line: 38, baseType: !1301, size: 64, offset: 384)
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "CameraSensor", scope: !157, file: !1303, line: 19, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN5Linux12CameraSensorE")
!1303 = !DIFile(filename: "ardupilot/libraries/AP_HAL_Linux/CameraSensor.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "ab06175cc466a95f4dd846f5b2b8ee79")
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "_flow", scope: !671, file: !672, line: 39, baseType: !1305, size: 64, offset: 448)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Flow_PX4", scope: !157, file: !1307, line: 19, size: 224, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN5Linux8Flow_PX4E")
!1307 = !DIFile(filename: "ardupilot/libraries/AP_HAL_Linux/Flow_PX4.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "7ee789e8cf27f3c8c3149c08ea7cb467")
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "_thread", scope: !671, file: !672, line: 40, baseType: !177, size: 64, offset: 512)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "_mutex", scope: !671, file: !672, line: 41, baseType: !181, size: 320, offset: 576)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "_initialized", scope: !671, file: !672, line: 42, baseType: !139, size: 8, offset: 896)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "_data_available", scope: !671, file: !672, line: 43, baseType: !139, size: 8, offset: 904)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "_crop_by_software", scope: !671, file: !672, line: 44, baseType: !139, size: 8, offset: 912)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "_shrink_by_software", scope: !671, file: !672, line: 45, baseType: !139, size: 8, offset: 920)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "_camera_output_width", scope: !671, file: !672, line: 46, baseType: !105, size: 32, offset: 928)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "_camera_output_height", scope: !671, file: !672, line: 47, baseType: !105, size: 32, offset: 960)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "_width", scope: !671, file: !672, line: 48, baseType: !105, size: 32, offset: 992)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "_height", scope: !671, file: !672, line: 49, baseType: !105, size: 32, offset: 1024)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "_format", scope: !671, file: !672, line: 50, baseType: !105, size: 32, offset: 1056)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "_bytesperline", scope: !671, file: !672, line: 51, baseType: !105, size: 32, offset: 1088)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "_sizeimage", scope: !671, file: !672, line: 52, baseType: !105, size: 32, offset: 1120)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "_pixel_flow_x_integral", scope: !671, file: !672, line: 53, baseType: !547, size: 32, offset: 1152)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "_pixel_flow_y_integral", scope: !671, file: !672, line: 54, baseType: !547, size: 32, offset: 1184)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "_gyro_x_integral", scope: !671, file: !672, line: 55, baseType: !547, size: 32, offset: 1216)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "_gyro_y_integral", scope: !671, file: !672, line: 56, baseType: !547, size: 32, offset: 1248)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "_integration_timespan", scope: !671, file: !672, line: 57, baseType: !105, size: 32, offset: 1280)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "_surface_quality", scope: !671, file: !672, line: 58, baseType: !115, size: 8, offset: 1312)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "_get_gyro", scope: !671, file: !672, line: 59, baseType: !1328, size: 128, offset: 1344)
!1328 = !DIDerivedType(tag: DW_TAG_typedef, name: "Gyro_Cb", scope: !675, file: !676, line: 29, baseType: !1329, flags: DIFlagPublic)
!1329 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Functor<void, float &, float &, float &>", file: !1330, line: 36, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !1331, templateParams: !1361, identifier: "_ZTS7FunctorIvJRfS0_S0_EE")
!1330 = !DIFile(filename: "ardupilot/libraries/AP_HAL/utility/functor.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "ce8d7f01a6b110e9ab9c61001786a69b")
!1331 = !{!1332, !1333, !1338, !1342, !1346, !1349, !1354, !1358}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "_obj", scope: !1329, file: !1330, line: 78, baseType: !319, size: 64)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "_method", scope: !1329, file: !1330, line: 79, baseType: !1334, size: 64, offset: 64)
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1335 = !DISubroutineType(types: !1336)
!1336 = !{null, !319, !1337, !1337, !1337}
!1337 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !547, size: 64)
!1338 = !DISubprogram(name: "Functor", scope: !1329, file: !1330, line: 39, type: !1339, scopeLine: 39, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1339 = !DISubroutineType(types: !1340)
!1340 = !{null, !1341, !319, !1334}
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1342 = !DISubprogram(name: "Functor", scope: !1329, file: !1330, line: 46, type: !1343, scopeLine: 46, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1343 = !DISubroutineType(types: !1344)
!1344 = !{null, !1341, !1345}
!1345 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "decltype(nullptr)")
!1346 = !DISubprogram(name: "Functor", scope: !1329, file: !1330, line: 49, type: !1347, scopeLine: 49, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1347 = !DISubroutineType(types: !1348)
!1348 = !{null, !1341}
!1349 = !DISubprogram(name: "operator()", linkageName: "_ZNK7FunctorIvJRfS0_S0_EEclES0_S0_S0_", scope: !1329, file: !1330, line: 53, type: !1350, scopeLine: 53, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{null, !1352, !1337, !1337, !1337}
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1353 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1329)
!1354 = !DISubprogram(name: "operator==", linkageName: "_ZN7FunctorIvJRfS0_S0_EEeqERKS1_", scope: !1329, file: !1330, line: 60, type: !1355, scopeLine: 60, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1355 = !DISubroutineType(types: !1356)
!1356 = !{!139, !1341, !1357}
!1357 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1353, size: 64)
!1358 = !DISubprogram(name: "operator bool", linkageName: "_ZNK7FunctorIvJRfS0_S0_EEcvbEv", scope: !1329, file: !1330, line: 66, type: !1359, scopeLine: 66, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!1359 = !DISubroutineType(types: !1360)
!1360 = !{!139, !1352}
!1361 = !{!1362, !1363}
!1362 = !DITemplateTypeParameter(name: "RetType", type: null)
!1363 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "Args", value: !1364)
!1364 = !{!1365, !1365, !1365}
!1365 = !DITemplateTypeParameter(type: !1337)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "_last_gyro_rate", scope: !671, file: !672, line: 60, baseType: !1367, size: 96, offset: 1472)
!1367 = !DIDerivedType(tag: DW_TAG_typedef, name: "Vector3f", file: !1368, line: 218, baseType: !1369)
!1368 = !DIFile(filename: "ardupilot/libraries/AP_Math/vector3.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "29233b5c46fd321fe8809e56c85d2bd8")
!1369 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Vector3<float>", file: !1368, line: 64, size: 96, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !1370, templateParams: !1453, identifier: "_ZTS7Vector3IfE")
!1370 = !{!1371, !1372, !1373, !1374, !1378, !1382, !1383, !1389, !1390, !1393, !1396, !1397, !1400, !1401, !1405, !1406, !1409, !1410, !1413, !1417, !1420, !1427, !1430, !1431, !1432, !1435, !1436, !1437, !1440, !1441, !1444, !1445, !1446, !1447, !1448, !1451, !1452}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1369, file: !1368, line: 68, baseType: !547, size: 32, flags: DIFlagPublic)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !1369, file: !1368, line: 68, baseType: !547, size: 32, offset: 32, flags: DIFlagPublic)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !1369, file: !1368, line: 68, baseType: !547, size: 32, offset: 64, flags: DIFlagPublic)
!1374 = !DISubprogram(name: "Vector3", scope: !1369, file: !1368, line: 71, type: !1375, scopeLine: 71, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1375 = !DISubroutineType(types: !1376)
!1376 = !{null, !1377}
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1378 = !DISubprogram(name: "Vector3", scope: !1369, file: !1368, line: 76, type: !1379, scopeLine: 76, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1379 = !DISubroutineType(types: !1380)
!1380 = !{null, !1377, !1381, !1381, !1381}
!1381 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !547)
!1382 = !DISubprogram(name: "operator()", linkageName: "_ZN7Vector3IfEclEfff", scope: !1369, file: !1368, line: 80, type: !1379, scopeLine: 80, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1383 = !DISubprogram(name: "operator==", linkageName: "_ZNK7Vector3IfEeqERKS0_", scope: !1369, file: !1368, line: 86, type: !1384, scopeLine: 86, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1384 = !DISubroutineType(types: !1385)
!1385 = !{!139, !1386, !1388}
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1387 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1369)
!1388 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1387, size: 64)
!1389 = !DISubprogram(name: "operator!=", linkageName: "_ZNK7Vector3IfEneERKS0_", scope: !1369, file: !1368, line: 89, type: !1384, scopeLine: 89, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1390 = !DISubprogram(name: "operator-", linkageName: "_ZNK7Vector3IfEngEv", scope: !1369, file: !1368, line: 92, type: !1391, scopeLine: 92, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1391 = !DISubroutineType(types: !1392)
!1392 = !{!1369, !1386}
!1393 = !DISubprogram(name: "operator+", linkageName: "_ZNK7Vector3IfEplERKS0_", scope: !1369, file: !1368, line: 95, type: !1394, scopeLine: 95, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1394 = !DISubroutineType(types: !1395)
!1395 = !{!1369, !1386, !1388}
!1396 = !DISubprogram(name: "operator-", linkageName: "_ZNK7Vector3IfEmiERKS0_", scope: !1369, file: !1368, line: 98, type: !1394, scopeLine: 98, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1397 = !DISubprogram(name: "operator*", linkageName: "_ZNK7Vector3IfEmlEf", scope: !1369, file: !1368, line: 101, type: !1398, scopeLine: 101, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1398 = !DISubroutineType(types: !1399)
!1399 = !{!1369, !1386, !1381}
!1400 = !DISubprogram(name: "operator/", linkageName: "_ZNK7Vector3IfEdvEf", scope: !1369, file: !1368, line: 104, type: !1398, scopeLine: 104, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1401 = !DISubprogram(name: "operator+=", linkageName: "_ZN7Vector3IfEpLERKS0_", scope: !1369, file: !1368, line: 107, type: !1402, scopeLine: 107, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1402 = !DISubroutineType(types: !1403)
!1403 = !{!1404, !1377, !1388}
!1404 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1369, size: 64)
!1405 = !DISubprogram(name: "operator-=", linkageName: "_ZN7Vector3IfEmIERKS0_", scope: !1369, file: !1368, line: 110, type: !1402, scopeLine: 110, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1406 = !DISubprogram(name: "operator*=", linkageName: "_ZN7Vector3IfEmLEf", scope: !1369, file: !1368, line: 113, type: !1407, scopeLine: 113, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1407 = !DISubroutineType(types: !1408)
!1408 = !{!1404, !1377, !1381}
!1409 = !DISubprogram(name: "operator/=", linkageName: "_ZN7Vector3IfEdVEf", scope: !1369, file: !1368, line: 116, type: !1407, scopeLine: 116, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1410 = !DISubprogram(name: "operator[]", linkageName: "_ZN7Vector3IfEixEh", scope: !1369, file: !1368, line: 119, type: !1411, scopeLine: 119, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1411 = !DISubroutineType(types: !1412)
!1412 = !{!1337, !1377, !115}
!1413 = !DISubprogram(name: "operator[]", linkageName: "_ZNK7Vector3IfEixEh", scope: !1369, file: !1368, line: 127, type: !1414, scopeLine: 127, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1414 = !DISubroutineType(types: !1415)
!1415 = !{!1416, !1386, !115}
!1416 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1381, size: 64)
!1417 = !DISubprogram(name: "operator*", linkageName: "_ZNK7Vector3IfEmlERKS0_", scope: !1369, file: !1368, line: 136, type: !1418, scopeLine: 136, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1418 = !DISubroutineType(types: !1419)
!1419 = !{!547, !1386, !1388}
!1420 = !DISubprogram(name: "operator*", linkageName: "_ZNK7Vector3IfEmlERK7Matrix3IfE", scope: !1369, file: !1368, line: 139, type: !1421, scopeLine: 139, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1421 = !DISubroutineType(types: !1422)
!1422 = !{!1369, !1386, !1423}
!1423 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1424, size: 64)
!1424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1425)
!1425 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Matrix3<float>", file: !1426, line: 45, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS7Matrix3IfE")
!1426 = !DIFile(filename: "ardupilot/libraries/AP_Math/matrix3.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "8c023c39d650bc76ff484f39d0e25f8b")
!1427 = !DISubprogram(name: "mul_rowcol", linkageName: "_ZNK7Vector3IfE10mul_rowcolERKS0_", scope: !1369, file: !1368, line: 142, type: !1428, scopeLine: 142, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1428 = !DISubroutineType(types: !1429)
!1429 = !{!1425, !1386, !1388}
!1430 = !DISubprogram(name: "operator%", linkageName: "_ZNK7Vector3IfErmERKS0_", scope: !1369, file: !1368, line: 145, type: !1394, scopeLine: 145, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1431 = !DISubprogram(name: "angle", linkageName: "_ZNK7Vector3IfE5angleERKS0_", scope: !1369, file: !1368, line: 148, type: !1418, scopeLine: 148, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1432 = !DISubprogram(name: "is_nan", linkageName: "_ZNK7Vector3IfE6is_nanEv", scope: !1369, file: !1368, line: 151, type: !1433, scopeLine: 151, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1433 = !DISubroutineType(types: !1434)
!1434 = !{!139, !1386}
!1435 = !DISubprogram(name: "is_inf", linkageName: "_ZNK7Vector3IfE6is_infEv", scope: !1369, file: !1368, line: 154, type: !1433, scopeLine: 154, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1436 = !DISubprogram(name: "is_zero", linkageName: "_ZNK7Vector3IfE7is_zeroEv", scope: !1369, file: !1368, line: 157, type: !1433, scopeLine: 157, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1437 = !DISubprogram(name: "rotate", linkageName: "_ZN7Vector3IfE6rotateE8Rotation", scope: !1369, file: !1368, line: 161, type: !1438, scopeLine: 161, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1438 = !DISubroutineType(types: !1439)
!1439 = !{null, !1377, !624}
!1440 = !DISubprogram(name: "rotate_inverse", linkageName: "_ZN7Vector3IfE14rotate_inverseE8Rotation", scope: !1369, file: !1368, line: 162, type: !1438, scopeLine: 162, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1441 = !DISubprogram(name: "length_squared", linkageName: "_ZNK7Vector3IfE14length_squaredEv", scope: !1369, file: !1368, line: 165, type: !1442, scopeLine: 165, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1442 = !DISubroutineType(types: !1443)
!1443 = !{!547, !1386}
!1444 = !DISubprogram(name: "length", linkageName: "_ZNK7Vector3IfE6lengthEv", scope: !1369, file: !1368, line: 171, type: !1442, scopeLine: 171, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1445 = !DISubprogram(name: "normalize", linkageName: "_ZN7Vector3IfE9normalizeEv", scope: !1369, file: !1368, line: 174, type: !1375, scopeLine: 174, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1446 = !DISubprogram(name: "zero", linkageName: "_ZN7Vector3IfE4zeroEv", scope: !1369, file: !1368, line: 180, type: !1375, scopeLine: 180, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1447 = !DISubprogram(name: "normalized", linkageName: "_ZNK7Vector3IfE10normalizedEv", scope: !1369, file: !1368, line: 186, type: !1391, scopeLine: 186, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1448 = !DISubprogram(name: "reflect", linkageName: "_ZN7Vector3IfE7reflectERKS0_", scope: !1369, file: !1368, line: 192, type: !1449, scopeLine: 192, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1449 = !DISubroutineType(types: !1450)
!1450 = !{null, !1377, !1388}
!1451 = !DISubprogram(name: "project", linkageName: "_ZN7Vector3IfE7projectERKS0_", scope: !1369, file: !1368, line: 200, type: !1449, scopeLine: 200, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1452 = !DISubprogram(name: "projected", linkageName: "_ZNK7Vector3IfE9projectedERKS0_", scope: !1369, file: !1368, line: 206, type: !1394, scopeLine: 206, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1453 = !{!1454}
!1454 = !DITemplateTypeParameter(name: "T", type: !547)
!1455 = !DISubprogram(name: "init", linkageName: "_ZN5Linux19OpticalFlow_Onboard4initE7FunctorIvJRfS2_S2_EE", scope: !671, file: !672, line: 29, type: !1456, scopeLine: 29, containingType: !671, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!1456 = !DISubroutineType(types: !1457)
!1457 = !{null, !1458, !1328}
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1459 = !DISubprogram(name: "read", linkageName: "_ZN5Linux19OpticalFlow_Onboard4readERN6AP_HAL11OpticalFlow10Data_FrameE", scope: !671, file: !672, line: 30, type: !1460, scopeLine: 30, containingType: !671, virtualIndex: 1, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!1460 = !DISubroutineType(types: !1461)
!1461 = !{!139, !1458, !1462}
!1462 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1463, size: 64)
!1463 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Data_Frame", scope: !675, file: !676, line: 19, size: 192, flags: DIFlagPublic | DIFlagTypePassByValue, elements: !1464, identifier: "_ZTSN6AP_HAL11OpticalFlow10Data_FrameE")
!1464 = !{!1465, !1466, !1467, !1468, !1469, !1470}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "pixel_flow_x_integral", scope: !1463, file: !676, line: 21, baseType: !547, size: 32, flags: DIFlagPublic)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "pixel_flow_y_integral", scope: !1463, file: !676, line: 22, baseType: !547, size: 32, offset: 32, flags: DIFlagPublic)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "gyro_x_integral", scope: !1463, file: !676, line: 23, baseType: !547, size: 32, offset: 64, flags: DIFlagPublic)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "gyro_y_integral", scope: !1463, file: !676, line: 24, baseType: !547, size: 32, offset: 96, flags: DIFlagPublic)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "delta_time", scope: !1463, file: !676, line: 25, baseType: !105, size: 32, offset: 128, flags: DIFlagPublic)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "quality", scope: !1463, file: !676, line: 26, baseType: !115, size: 8, offset: 160, flags: DIFlagPublic)
!1471 = !DISubprogram(name: "_run_optflow", linkageName: "_ZN5Linux19OpticalFlow_Onboard12_run_optflowEv", scope: !671, file: !672, line: 33, type: !1472, scopeLine: 33, flags: DIFlagPrototyped, spFlags: 0)
!1472 = !DISubroutineType(types: !1473)
!1473 = !{null, !1458}
!1474 = !DISubprogram(name: "_read_thread", linkageName: "_ZN5Linux19OpticalFlow_Onboard12_read_threadEPv", scope: !671, file: !672, line: 34, type: !317, scopeLine: 34, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!1475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Vector2<float>", file: !1476, line: 36, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !1477, templateParams: !1453, identifier: "_ZTS7Vector2IfE")
!1476 = !DIFile(filename: "ardupilot/libraries/AP_Math/vector2.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "84a3a252617a33abfb36b94d0fc43de7")
!1477 = !{!1478, !1479, !1480, !1484, !1487, !1488, !1494, !1495, !1498, !1501, !1502, !1505, !1506, !1510, !1511, !1514, !1515, !1518, !1519, !1520, !1523, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1536, !1537}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1475, file: !1476, line: 38, baseType: !547, size: 32)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !1475, file: !1476, line: 38, baseType: !547, size: 32, offset: 32)
!1480 = !DISubprogram(name: "Vector2", scope: !1475, file: !1476, line: 41, type: !1481, scopeLine: 41, flags: DIFlagPrototyped, spFlags: 0)
!1481 = !DISubroutineType(types: !1482)
!1482 = !{null, !1483}
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1484 = !DISubprogram(name: "Vector2", scope: !1475, file: !1476, line: 46, type: !1485, scopeLine: 46, flags: DIFlagPrototyped, spFlags: 0)
!1485 = !DISubroutineType(types: !1486)
!1486 = !{null, !1483, !1381, !1381}
!1487 = !DISubprogram(name: "operator()", linkageName: "_ZN7Vector2IfEclEff", scope: !1475, file: !1476, line: 50, type: !1485, scopeLine: 50, flags: DIFlagPrototyped, spFlags: 0)
!1488 = !DISubprogram(name: "operator==", linkageName: "_ZNK7Vector2IfEeqERKS0_", scope: !1475, file: !1476, line: 56, type: !1489, scopeLine: 56, flags: DIFlagPrototyped, spFlags: 0)
!1489 = !DISubroutineType(types: !1490)
!1490 = !{!139, !1491, !1493}
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1475)
!1493 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1492, size: 64)
!1494 = !DISubprogram(name: "operator!=", linkageName: "_ZNK7Vector2IfEneERKS0_", scope: !1475, file: !1476, line: 59, type: !1489, scopeLine: 59, flags: DIFlagPrototyped, spFlags: 0)
!1495 = !DISubprogram(name: "operator-", linkageName: "_ZNK7Vector2IfEngEv", scope: !1475, file: !1476, line: 62, type: !1496, scopeLine: 62, flags: DIFlagPrototyped, spFlags: 0)
!1496 = !DISubroutineType(types: !1497)
!1497 = !{!1475, !1491}
!1498 = !DISubprogram(name: "operator+", linkageName: "_ZNK7Vector2IfEplERKS0_", scope: !1475, file: !1476, line: 65, type: !1499, scopeLine: 65, flags: DIFlagPrototyped, spFlags: 0)
!1499 = !DISubroutineType(types: !1500)
!1500 = !{!1475, !1491, !1493}
!1501 = !DISubprogram(name: "operator-", linkageName: "_ZNK7Vector2IfEmiERKS0_", scope: !1475, file: !1476, line: 68, type: !1499, scopeLine: 68, flags: DIFlagPrototyped, spFlags: 0)
!1502 = !DISubprogram(name: "operator*", linkageName: "_ZNK7Vector2IfEmlEf", scope: !1475, file: !1476, line: 71, type: !1503, scopeLine: 71, flags: DIFlagPrototyped, spFlags: 0)
!1503 = !DISubroutineType(types: !1504)
!1504 = !{!1475, !1491, !1381}
!1505 = !DISubprogram(name: "operator/", linkageName: "_ZNK7Vector2IfEdvEf", scope: !1475, file: !1476, line: 74, type: !1503, scopeLine: 74, flags: DIFlagPrototyped, spFlags: 0)
!1506 = !DISubprogram(name: "operator+=", linkageName: "_ZN7Vector2IfEpLERKS0_", scope: !1475, file: !1476, line: 77, type: !1507, scopeLine: 77, flags: DIFlagPrototyped, spFlags: 0)
!1507 = !DISubroutineType(types: !1508)
!1508 = !{!1509, !1483, !1493}
!1509 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1475, size: 64)
!1510 = !DISubprogram(name: "operator-=", linkageName: "_ZN7Vector2IfEmIERKS0_", scope: !1475, file: !1476, line: 80, type: !1507, scopeLine: 80, flags: DIFlagPrototyped, spFlags: 0)
!1511 = !DISubprogram(name: "operator*=", linkageName: "_ZN7Vector2IfEmLEf", scope: !1475, file: !1476, line: 83, type: !1512, scopeLine: 83, flags: DIFlagPrototyped, spFlags: 0)
!1512 = !DISubroutineType(types: !1513)
!1513 = !{!1509, !1483, !1381}
!1514 = !DISubprogram(name: "operator/=", linkageName: "_ZN7Vector2IfEdVEf", scope: !1475, file: !1476, line: 86, type: !1512, scopeLine: 86, flags: DIFlagPrototyped, spFlags: 0)
!1515 = !DISubprogram(name: "operator*", linkageName: "_ZNK7Vector2IfEmlERKS0_", scope: !1475, file: !1476, line: 89, type: !1516, scopeLine: 89, flags: DIFlagPrototyped, spFlags: 0)
!1516 = !DISubroutineType(types: !1517)
!1517 = !{!547, !1491, !1493}
!1518 = !DISubprogram(name: "operator%", linkageName: "_ZNK7Vector2IfErmERKS0_", scope: !1475, file: !1476, line: 92, type: !1516, scopeLine: 92, flags: DIFlagPrototyped, spFlags: 0)
!1519 = !DISubprogram(name: "angle", linkageName: "_ZNK7Vector2IfE5angleERKS0_", scope: !1475, file: !1476, line: 95, type: !1516, scopeLine: 95, flags: DIFlagPrototyped, spFlags: 0)
!1520 = !DISubprogram(name: "angle", linkageName: "_ZNK7Vector2IfE5angleEv", scope: !1475, file: !1476, line: 98, type: !1521, scopeLine: 98, flags: DIFlagPrototyped, spFlags: 0)
!1521 = !DISubroutineType(types: !1522)
!1522 = !{!547, !1491}
!1523 = !DISubprogram(name: "is_nan", linkageName: "_ZNK7Vector2IfE6is_nanEv", scope: !1475, file: !1476, line: 101, type: !1524, scopeLine: 101, flags: DIFlagPrototyped, spFlags: 0)
!1524 = !DISubroutineType(types: !1525)
!1525 = !{!139, !1491}
!1526 = !DISubprogram(name: "is_inf", linkageName: "_ZNK7Vector2IfE6is_infEv", scope: !1475, file: !1476, line: 104, type: !1524, scopeLine: 104, flags: DIFlagPrototyped, spFlags: 0)
!1527 = !DISubprogram(name: "is_zero", linkageName: "_ZNK7Vector2IfE7is_zeroEv", scope: !1475, file: !1476, line: 107, type: !1524, scopeLine: 107, flags: DIFlagPrototyped, spFlags: 0)
!1528 = !DISubprogram(name: "zero", linkageName: "_ZN7Vector2IfE4zeroEv", scope: !1475, file: !1476, line: 110, type: !1481, scopeLine: 110, flags: DIFlagPrototyped, spFlags: 0)
!1529 = !DISubprogram(name: "length_squared", linkageName: "_ZNK7Vector2IfE14length_squaredEv", scope: !1475, file: !1476, line: 116, type: !1521, scopeLine: 116, flags: DIFlagPrototyped, spFlags: 0)
!1530 = !DISubprogram(name: "length", linkageName: "_ZNK7Vector2IfE6lengthEv", scope: !1475, file: !1476, line: 122, type: !1521, scopeLine: 122, flags: DIFlagPrototyped, spFlags: 0)
!1531 = !DISubprogram(name: "normalize", linkageName: "_ZN7Vector2IfE9normalizeEv", scope: !1475, file: !1476, line: 125, type: !1481, scopeLine: 125, flags: DIFlagPrototyped, spFlags: 0)
!1532 = !DISubprogram(name: "normalized", linkageName: "_ZNK7Vector2IfE10normalizedEv", scope: !1475, file: !1476, line: 131, type: !1496, scopeLine: 131, flags: DIFlagPrototyped, spFlags: 0)
!1533 = !DISubprogram(name: "reflect", linkageName: "_ZN7Vector2IfE7reflectERKS0_", scope: !1475, file: !1476, line: 137, type: !1534, scopeLine: 137, flags: DIFlagPrototyped, spFlags: 0)
!1534 = !DISubroutineType(types: !1535)
!1535 = !{null, !1483, !1493}
!1536 = !DISubprogram(name: "project", linkageName: "_ZN7Vector2IfE7projectERKS0_", scope: !1475, file: !1476, line: 145, type: !1534, scopeLine: 145, flags: DIFlagPrototyped, spFlags: 0)
!1537 = !DISubprogram(name: "projected", linkageName: "_ZN7Vector2IfE9projectedERKS0_", scope: !1475, file: !1476, line: 151, type: !1538, scopeLine: 151, flags: DIFlagPrototyped, spFlags: 0)
!1538 = !DISubroutineType(types: !1539)
!1539 = !{!1475, !1483, !1493}
!1540 = !{!0, !8, !13, !18, !23, !28, !33, !38, !43, !48, !53}
!1541 = !{!360, !366, !372, !376, !382, !386, !392, !397, !399, !405, !409, !413, !423, !425, !429, !433, !437, !442, !446, !450, !454, !458, !466, !470, !474, !476, !478, !482, !486, !492, !496, !500, !502, !510, !514, !521, !523, !527, !531, !535, !539, !543, !548, !553, !554, !555, !556, !558, !559, !560, !561, !562, !563, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1580, !1582, !1584, !1588, !1590, !1592, !1594, !1596, !1598, !1600, !1602, !1607, !1611, !1613, !1615, !1620, !1622, !1624, !1626, !1628, !1630, !1632, !1635, !1637, !1639, !1643, !1647, !1649, !1651, !1653, !1655, !1657, !1659, !1661, !1663, !1665, !1667, !1671, !1675, !1677, !1679, !1681, !1683, !1685, !1687, !1689, !1691, !1693, !1695, !1697, !1699, !1701, !1703, !1705, !1709, !1713, !1717, !1719, !1721, !1723, !1725, !1727, !1729, !1731, !1733, !1735, !1739, !1743, !1747, !1749, !1751, !1753, !1757, !1761, !1765, !1767, !1769, !1771, !1773, !1775, !1777, !1779, !1781, !1783, !1785, !1787, !1789, !1793, !1797, !1801, !1803, !1805, !1807, !1809, !1813, !1817, !1819, !1821, !1823, !1825, !1827, !1829, !1833, !1837, !1839, !1841, !1843, !1845, !1849, !1853, !1857, !1859, !1861, !1863, !1865, !1867, !1869, !1873, !1877, !1881, !1883, !1887, !1891, !1893, !1895, !1897, !1899, !1901, !1903, !1907}
!1542 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !614, entity: !383, file: !565, line: 38)
!1543 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !614, entity: !393, file: !565, line: 39)
!1544 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !614, entity: !430, file: !565, line: 40)
!1545 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !614, entity: !398, file: !565, line: 43)
!1546 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !614, entity: !475, file: !565, line: 46)
!1547 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !614, entity: !373, file: !565, line: 51)
!1548 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !614, entity: !377, file: !565, line: 52)
!1549 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !614, entity: !573, file: !565, line: 54)
!1550 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !614, entity: !400, file: !565, line: 55)
!1551 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !614, entity: !406, file: !565, line: 56)
!1552 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !614, entity: !410, file: !565, line: 57)
!1553 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !614, entity: !414, file: !565, line: 58)
!1554 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !614, entity: !424, file: !565, line: 59)
!1555 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !614, entity: !557, file: !565, line: 60)
!1556 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !614, entity: !434, file: !565, line: 61)
!1557 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !614, entity: !438, file: !565, line: 62)
!1558 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !614, entity: !443, file: !565, line: 63)
!1559 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !614, entity: !447, file: !565, line: 64)
!1560 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !614, entity: !451, file: !565, line: 65)
!1561 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !614, entity: !455, file: !565, line: 67)
!1562 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !614, entity: !459, file: !565, line: 68)
!1563 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !614, entity: !467, file: !565, line: 69)
!1564 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !614, entity: !471, file: !565, line: 71)
!1565 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !614, entity: !477, file: !565, line: 72)
!1566 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !614, entity: !479, file: !565, line: 73)
!1567 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !614, entity: !483, file: !565, line: 74)
!1568 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !614, entity: !487, file: !565, line: 75)
!1569 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !614, entity: !493, file: !565, line: 76)
!1570 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !614, entity: !497, file: !565, line: 77)
!1571 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !614, entity: !501, file: !565, line: 78)
!1572 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !614, entity: !503, file: !565, line: 80)
!1573 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !614, entity: !511, file: !565, line: 81)
!1574 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1575, file: !1579, line: 83)
!1575 = !DISubprogram(name: "acos", scope: !1576, file: !1576, line: 53, type: !1577, flags: DIFlagPrototyped, spFlags: 0)
!1576 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "8c6e2d0d2bda65bc5ba1ca02b65383b7")
!1577 = !DISubroutineType(types: !1578)
!1578 = !{!403, !403}
!1579 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cmath", directory: "")
!1580 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1581, file: !1579, line: 102)
!1581 = !DISubprogram(name: "asin", scope: !1576, file: !1576, line: 55, type: !1577, flags: DIFlagPrototyped, spFlags: 0)
!1582 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1583, file: !1579, line: 121)
!1583 = !DISubprogram(name: "atan", scope: !1576, file: !1576, line: 57, type: !1577, flags: DIFlagPrototyped, spFlags: 0)
!1584 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1585, file: !1579, line: 140)
!1585 = !DISubprogram(name: "atan2", scope: !1576, file: !1576, line: 59, type: !1586, flags: DIFlagPrototyped, spFlags: 0)
!1586 = !DISubroutineType(types: !1587)
!1587 = !{!403, !403, !403}
!1588 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1589, file: !1579, line: 161)
!1589 = !DISubprogram(name: "ceil", scope: !1576, file: !1576, line: 159, type: !1577, flags: DIFlagPrototyped, spFlags: 0)
!1590 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1591, file: !1579, line: 180)
!1591 = !DISubprogram(name: "cos", scope: !1576, file: !1576, line: 62, type: !1577, flags: DIFlagPrototyped, spFlags: 0)
!1592 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1593, file: !1579, line: 199)
!1593 = !DISubprogram(name: "cosh", scope: !1576, file: !1576, line: 71, type: !1577, flags: DIFlagPrototyped, spFlags: 0)
!1594 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1595, file: !1579, line: 218)
!1595 = !DISubprogram(name: "exp", scope: !1576, file: !1576, line: 95, type: !1577, flags: DIFlagPrototyped, spFlags: 0)
!1596 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1597, file: !1579, line: 237)
!1597 = !DISubprogram(name: "fabs", scope: !1576, file: !1576, line: 162, type: !1577, flags: DIFlagPrototyped, spFlags: 0)
!1598 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1599, file: !1579, line: 256)
!1599 = !DISubprogram(name: "floor", scope: !1576, file: !1576, line: 165, type: !1577, flags: DIFlagPrototyped, spFlags: 0)
!1600 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1601, file: !1579, line: 275)
!1601 = !DISubprogram(name: "fmod", scope: !1576, file: !1576, line: 168, type: !1586, flags: DIFlagPrototyped, spFlags: 0)
!1602 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1603, file: !1579, line: 296)
!1603 = !DISubprogram(name: "frexp", scope: !1576, file: !1576, line: 98, type: !1604, flags: DIFlagPrototyped, spFlags: 0)
!1604 = !DISubroutineType(types: !1605)
!1605 = !{!403, !403, !1606}
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!1607 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1608, file: !1579, line: 315)
!1608 = !DISubprogram(name: "ldexp", scope: !1576, file: !1576, line: 101, type: !1609, flags: DIFlagPrototyped, spFlags: 0)
!1609 = !DISubroutineType(types: !1610)
!1610 = !{!403, !403, !97}
!1611 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1612, file: !1579, line: 334)
!1612 = !DISubprogram(name: "log", scope: !1576, file: !1576, line: 104, type: !1577, flags: DIFlagPrototyped, spFlags: 0)
!1613 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1614, file: !1579, line: 353)
!1614 = !DISubprogram(name: "log10", scope: !1576, file: !1576, line: 107, type: !1577, flags: DIFlagPrototyped, spFlags: 0)
!1615 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1616, file: !1579, line: 372)
!1616 = !DISubprogram(name: "modf", scope: !1576, file: !1576, line: 110, type: !1617, flags: DIFlagPrototyped, spFlags: 0)
!1617 = !DISubroutineType(types: !1618)
!1618 = !{!403, !403, !1619}
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!1620 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1621, file: !1579, line: 384)
!1621 = !DISubprogram(name: "pow", scope: !1576, file: !1576, line: 140, type: !1586, flags: DIFlagPrototyped, spFlags: 0)
!1622 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1623, file: !1579, line: 421)
!1623 = !DISubprogram(name: "sin", scope: !1576, file: !1576, line: 64, type: !1577, flags: DIFlagPrototyped, spFlags: 0)
!1624 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1625, file: !1579, line: 440)
!1625 = !DISubprogram(name: "sinh", scope: !1576, file: !1576, line: 73, type: !1577, flags: DIFlagPrototyped, spFlags: 0)
!1626 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1627, file: !1579, line: 459)
!1627 = !DISubprogram(name: "sqrt", scope: !1576, file: !1576, line: 143, type: !1577, flags: DIFlagPrototyped, spFlags: 0)
!1628 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1629, file: !1579, line: 478)
!1629 = !DISubprogram(name: "tan", scope: !1576, file: !1576, line: 66, type: !1577, flags: DIFlagPrototyped, spFlags: 0)
!1630 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1631, file: !1579, line: 497)
!1631 = !DISubprogram(name: "tanh", scope: !1576, file: !1576, line: 75, type: !1577, flags: DIFlagPrototyped, spFlags: 0)
!1632 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1633, file: !1579, line: 1065)
!1633 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_t", file: !1634, line: 164, baseType: !403)
!1634 = !DIFile(filename: "/usr/include/math.h", directory: "", checksumkind: CSK_MD5, checksum: "f3450d1d586f704597de1a1b2bed18f3")
!1635 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1636, file: !1579, line: 1066)
!1636 = !DIDerivedType(tag: DW_TAG_typedef, name: "float_t", file: !1634, line: 163, baseType: !547)
!1637 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1638, file: !1579, line: 1069)
!1638 = !DISubprogram(name: "acosh", scope: !1576, file: !1576, line: 85, type: !1577, flags: DIFlagPrototyped, spFlags: 0)
!1639 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1640, file: !1579, line: 1070)
!1640 = !DISubprogram(name: "acoshf", scope: !1576, file: !1576, line: 85, type: !1641, flags: DIFlagPrototyped, spFlags: 0)
!1641 = !DISubroutineType(types: !1642)
!1642 = !{!547, !547}
!1643 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1644, file: !1579, line: 1071)
!1644 = !DISubprogram(name: "acoshl", scope: !1576, file: !1576, line: 85, type: !1645, flags: DIFlagPrototyped, spFlags: 0)
!1645 = !DISubroutineType(types: !1646)
!1646 = !{!552, !552}
!1647 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1648, file: !1579, line: 1073)
!1648 = !DISubprogram(name: "asinh", scope: !1576, file: !1576, line: 87, type: !1577, flags: DIFlagPrototyped, spFlags: 0)
!1649 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1650, file: !1579, line: 1074)
!1650 = !DISubprogram(name: "asinhf", scope: !1576, file: !1576, line: 87, type: !1641, flags: DIFlagPrototyped, spFlags: 0)
!1651 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1652, file: !1579, line: 1075)
!1652 = !DISubprogram(name: "asinhl", scope: !1576, file: !1576, line: 87, type: !1645, flags: DIFlagPrototyped, spFlags: 0)
!1653 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1654, file: !1579, line: 1077)
!1654 = !DISubprogram(name: "atanh", scope: !1576, file: !1576, line: 89, type: !1577, flags: DIFlagPrototyped, spFlags: 0)
!1655 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1656, file: !1579, line: 1078)
!1656 = !DISubprogram(name: "atanhf", scope: !1576, file: !1576, line: 89, type: !1641, flags: DIFlagPrototyped, spFlags: 0)
!1657 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1658, file: !1579, line: 1079)
!1658 = !DISubprogram(name: "atanhl", scope: !1576, file: !1576, line: 89, type: !1645, flags: DIFlagPrototyped, spFlags: 0)
!1659 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1660, file: !1579, line: 1081)
!1660 = !DISubprogram(name: "cbrt", scope: !1576, file: !1576, line: 152, type: !1577, flags: DIFlagPrototyped, spFlags: 0)
!1661 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1662, file: !1579, line: 1082)
!1662 = !DISubprogram(name: "cbrtf", scope: !1576, file: !1576, line: 152, type: !1641, flags: DIFlagPrototyped, spFlags: 0)
!1663 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1664, file: !1579, line: 1083)
!1664 = !DISubprogram(name: "cbrtl", scope: !1576, file: !1576, line: 152, type: !1645, flags: DIFlagPrototyped, spFlags: 0)
!1665 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1666, file: !1579, line: 1085)
!1666 = !DISubprogram(name: "copysign", scope: !1576, file: !1576, line: 198, type: !1586, flags: DIFlagPrototyped, spFlags: 0)
!1667 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1668, file: !1579, line: 1086)
!1668 = !DISubprogram(name: "copysignf", scope: !1576, file: !1576, line: 198, type: !1669, flags: DIFlagPrototyped, spFlags: 0)
!1669 = !DISubroutineType(types: !1670)
!1670 = !{!547, !547, !547}
!1671 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1672, file: !1579, line: 1087)
!1672 = !DISubprogram(name: "copysignl", scope: !1576, file: !1576, line: 198, type: !1673, flags: DIFlagPrototyped, spFlags: 0)
!1673 = !DISubroutineType(types: !1674)
!1674 = !{!552, !552, !552}
!1675 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1676, file: !1579, line: 1089)
!1676 = !DISubprogram(name: "erf", scope: !1576, file: !1576, line: 231, type: !1577, flags: DIFlagPrototyped, spFlags: 0)
!1677 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1678, file: !1579, line: 1090)
!1678 = !DISubprogram(name: "erff", scope: !1576, file: !1576, line: 231, type: !1641, flags: DIFlagPrototyped, spFlags: 0)
!1679 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1680, file: !1579, line: 1091)
!1680 = !DISubprogram(name: "erfl", scope: !1576, file: !1576, line: 231, type: !1645, flags: DIFlagPrototyped, spFlags: 0)
!1681 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1682, file: !1579, line: 1093)
!1682 = !DISubprogram(name: "erfc", scope: !1576, file: !1576, line: 232, type: !1577, flags: DIFlagPrototyped, spFlags: 0)
!1683 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1684, file: !1579, line: 1094)
!1684 = !DISubprogram(name: "erfcf", scope: !1576, file: !1576, line: 232, type: !1641, flags: DIFlagPrototyped, spFlags: 0)
!1685 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1686, file: !1579, line: 1095)
!1686 = !DISubprogram(name: "erfcl", scope: !1576, file: !1576, line: 232, type: !1645, flags: DIFlagPrototyped, spFlags: 0)
!1687 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1688, file: !1579, line: 1097)
!1688 = !DISubprogram(name: "exp2", scope: !1576, file: !1576, line: 130, type: !1577, flags: DIFlagPrototyped, spFlags: 0)
!1689 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1690, file: !1579, line: 1098)
!1690 = !DISubprogram(name: "exp2f", scope: !1576, file: !1576, line: 130, type: !1641, flags: DIFlagPrototyped, spFlags: 0)
!1691 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1692, file: !1579, line: 1099)
!1692 = !DISubprogram(name: "exp2l", scope: !1576, file: !1576, line: 130, type: !1645, flags: DIFlagPrototyped, spFlags: 0)
!1693 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1694, file: !1579, line: 1101)
!1694 = !DISubprogram(name: "expm1", scope: !1576, file: !1576, line: 119, type: !1577, flags: DIFlagPrototyped, spFlags: 0)
!1695 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1696, file: !1579, line: 1102)
!1696 = !DISubprogram(name: "expm1f", scope: !1576, file: !1576, line: 119, type: !1641, flags: DIFlagPrototyped, spFlags: 0)
!1697 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1698, file: !1579, line: 1103)
!1698 = !DISubprogram(name: "expm1l", scope: !1576, file: !1576, line: 119, type: !1645, flags: DIFlagPrototyped, spFlags: 0)
!1699 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1700, file: !1579, line: 1105)
!1700 = !DISubprogram(name: "fdim", scope: !1576, file: !1576, line: 329, type: !1586, flags: DIFlagPrototyped, spFlags: 0)
!1701 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1702, file: !1579, line: 1106)
!1702 = !DISubprogram(name: "fdimf", scope: !1576, file: !1576, line: 329, type: !1669, flags: DIFlagPrototyped, spFlags: 0)
!1703 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1704, file: !1579, line: 1107)
!1704 = !DISubprogram(name: "fdiml", scope: !1576, file: !1576, line: 329, type: !1673, flags: DIFlagPrototyped, spFlags: 0)
!1705 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1706, file: !1579, line: 1109)
!1706 = !DISubprogram(name: "fma", scope: !1576, file: !1576, line: 340, type: !1707, flags: DIFlagPrototyped, spFlags: 0)
!1707 = !DISubroutineType(types: !1708)
!1708 = !{!403, !403, !403, !403}
!1709 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1710, file: !1579, line: 1110)
!1710 = !DISubprogram(name: "fmaf", scope: !1576, file: !1576, line: 340, type: !1711, flags: DIFlagPrototyped, spFlags: 0)
!1711 = !DISubroutineType(types: !1712)
!1712 = !{!547, !547, !547, !547}
!1713 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1714, file: !1579, line: 1111)
!1714 = !DISubprogram(name: "fmal", scope: !1576, file: !1576, line: 340, type: !1715, flags: DIFlagPrototyped, spFlags: 0)
!1715 = !DISubroutineType(types: !1716)
!1716 = !{!552, !552, !552, !552}
!1717 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1718, file: !1579, line: 1113)
!1718 = !DISubprogram(name: "fmax", scope: !1576, file: !1576, line: 333, type: !1586, flags: DIFlagPrototyped, spFlags: 0)
!1719 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1720, file: !1579, line: 1114)
!1720 = !DISubprogram(name: "fmaxf", scope: !1576, file: !1576, line: 333, type: !1669, flags: DIFlagPrototyped, spFlags: 0)
!1721 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1722, file: !1579, line: 1115)
!1722 = !DISubprogram(name: "fmaxl", scope: !1576, file: !1576, line: 333, type: !1673, flags: DIFlagPrototyped, spFlags: 0)
!1723 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1724, file: !1579, line: 1117)
!1724 = !DISubprogram(name: "fmin", scope: !1576, file: !1576, line: 336, type: !1586, flags: DIFlagPrototyped, spFlags: 0)
!1725 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1726, file: !1579, line: 1118)
!1726 = !DISubprogram(name: "fminf", scope: !1576, file: !1576, line: 336, type: !1669, flags: DIFlagPrototyped, spFlags: 0)
!1727 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1728, file: !1579, line: 1119)
!1728 = !DISubprogram(name: "fminl", scope: !1576, file: !1576, line: 336, type: !1673, flags: DIFlagPrototyped, spFlags: 0)
!1729 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1730, file: !1579, line: 1121)
!1730 = !DISubprogram(name: "hypot", scope: !1576, file: !1576, line: 147, type: !1586, flags: DIFlagPrototyped, spFlags: 0)
!1731 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1732, file: !1579, line: 1122)
!1732 = !DISubprogram(name: "hypotf", scope: !1576, file: !1576, line: 147, type: !1669, flags: DIFlagPrototyped, spFlags: 0)
!1733 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1734, file: !1579, line: 1123)
!1734 = !DISubprogram(name: "hypotl", scope: !1576, file: !1576, line: 147, type: !1673, flags: DIFlagPrototyped, spFlags: 0)
!1735 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1736, file: !1579, line: 1125)
!1736 = !DISubprogram(name: "ilogb", scope: !1576, file: !1576, line: 283, type: !1737, flags: DIFlagPrototyped, spFlags: 0)
!1737 = !DISubroutineType(types: !1738)
!1738 = !{!97, !403}
!1739 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1740, file: !1579, line: 1126)
!1740 = !DISubprogram(name: "ilogbf", scope: !1576, file: !1576, line: 283, type: !1741, flags: DIFlagPrototyped, spFlags: 0)
!1741 = !DISubroutineType(types: !1742)
!1742 = !{!97, !547}
!1743 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1744, file: !1579, line: 1127)
!1744 = !DISubprogram(name: "ilogbl", scope: !1576, file: !1576, line: 283, type: !1745, flags: DIFlagPrototyped, spFlags: 0)
!1745 = !DISubroutineType(types: !1746)
!1746 = !{!97, !552}
!1747 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1748, file: !1579, line: 1129)
!1748 = !DISubprogram(name: "lgamma", scope: !1576, file: !1576, line: 233, type: !1577, flags: DIFlagPrototyped, spFlags: 0)
!1749 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1750, file: !1579, line: 1130)
!1750 = !DISubprogram(name: "lgammaf", scope: !1576, file: !1576, line: 233, type: !1641, flags: DIFlagPrototyped, spFlags: 0)
!1751 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1752, file: !1579, line: 1131)
!1752 = !DISubprogram(name: "lgammal", scope: !1576, file: !1576, line: 233, type: !1645, flags: DIFlagPrototyped, spFlags: 0)
!1753 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1754, file: !1579, line: 1134)
!1754 = !DISubprogram(name: "llrint", scope: !1576, file: !1576, line: 319, type: !1755, flags: DIFlagPrototyped, spFlags: 0)
!1755 = !DISubroutineType(types: !1756)
!1756 = !{!241, !403}
!1757 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1758, file: !1579, line: 1135)
!1758 = !DISubprogram(name: "llrintf", scope: !1576, file: !1576, line: 319, type: !1759, flags: DIFlagPrototyped, spFlags: 0)
!1759 = !DISubroutineType(types: !1760)
!1760 = !{!241, !547}
!1761 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1762, file: !1579, line: 1136)
!1762 = !DISubprogram(name: "llrintl", scope: !1576, file: !1576, line: 319, type: !1763, flags: DIFlagPrototyped, spFlags: 0)
!1763 = !DISubroutineType(types: !1764)
!1764 = !{!241, !552}
!1765 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1766, file: !1579, line: 1138)
!1766 = !DISubprogram(name: "llround", scope: !1576, file: !1576, line: 325, type: !1755, flags: DIFlagPrototyped, spFlags: 0)
!1767 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1768, file: !1579, line: 1139)
!1768 = !DISubprogram(name: "llroundf", scope: !1576, file: !1576, line: 325, type: !1759, flags: DIFlagPrototyped, spFlags: 0)
!1769 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1770, file: !1579, line: 1140)
!1770 = !DISubprogram(name: "llroundl", scope: !1576, file: !1576, line: 325, type: !1763, flags: DIFlagPrototyped, spFlags: 0)
!1771 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1772, file: !1579, line: 1143)
!1772 = !DISubprogram(name: "log1p", scope: !1576, file: !1576, line: 122, type: !1577, flags: DIFlagPrototyped, spFlags: 0)
!1773 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1774, file: !1579, line: 1144)
!1774 = !DISubprogram(name: "log1pf", scope: !1576, file: !1576, line: 122, type: !1641, flags: DIFlagPrototyped, spFlags: 0)
!1775 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1776, file: !1579, line: 1145)
!1776 = !DISubprogram(name: "log1pl", scope: !1576, file: !1576, line: 122, type: !1645, flags: DIFlagPrototyped, spFlags: 0)
!1777 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1778, file: !1579, line: 1147)
!1778 = !DISubprogram(name: "log2", scope: !1576, file: !1576, line: 133, type: !1577, flags: DIFlagPrototyped, spFlags: 0)
!1779 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1780, file: !1579, line: 1148)
!1780 = !DISubprogram(name: "log2f", scope: !1576, file: !1576, line: 133, type: !1641, flags: DIFlagPrototyped, spFlags: 0)
!1781 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1782, file: !1579, line: 1149)
!1782 = !DISubprogram(name: "log2l", scope: !1576, file: !1576, line: 133, type: !1645, flags: DIFlagPrototyped, spFlags: 0)
!1783 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1784, file: !1579, line: 1151)
!1784 = !DISubprogram(name: "logb", scope: !1576, file: !1576, line: 125, type: !1577, flags: DIFlagPrototyped, spFlags: 0)
!1785 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1786, file: !1579, line: 1152)
!1786 = !DISubprogram(name: "logbf", scope: !1576, file: !1576, line: 125, type: !1641, flags: DIFlagPrototyped, spFlags: 0)
!1787 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1788, file: !1579, line: 1153)
!1788 = !DISubprogram(name: "logbl", scope: !1576, file: !1576, line: 125, type: !1645, flags: DIFlagPrototyped, spFlags: 0)
!1789 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1790, file: !1579, line: 1155)
!1790 = !DISubprogram(name: "lrint", scope: !1576, file: !1576, line: 317, type: !1791, flags: DIFlagPrototyped, spFlags: 0)
!1791 = !DISubroutineType(types: !1792)
!1792 = !{!209, !403}
!1793 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1794, file: !1579, line: 1156)
!1794 = !DISubprogram(name: "lrintf", scope: !1576, file: !1576, line: 317, type: !1795, flags: DIFlagPrototyped, spFlags: 0)
!1795 = !DISubroutineType(types: !1796)
!1796 = !{!209, !547}
!1797 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1798, file: !1579, line: 1157)
!1798 = !DISubprogram(name: "lrintl", scope: !1576, file: !1576, line: 317, type: !1799, flags: DIFlagPrototyped, spFlags: 0)
!1799 = !DISubroutineType(types: !1800)
!1800 = !{!209, !552}
!1801 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1802, file: !1579, line: 1159)
!1802 = !DISubprogram(name: "lround", scope: !1576, file: !1576, line: 323, type: !1791, flags: DIFlagPrototyped, spFlags: 0)
!1803 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1804, file: !1579, line: 1160)
!1804 = !DISubprogram(name: "lroundf", scope: !1576, file: !1576, line: 323, type: !1795, flags: DIFlagPrototyped, spFlags: 0)
!1805 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1806, file: !1579, line: 1161)
!1806 = !DISubprogram(name: "lroundl", scope: !1576, file: !1576, line: 323, type: !1799, flags: DIFlagPrototyped, spFlags: 0)
!1807 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1808, file: !1579, line: 1163)
!1808 = !DISubprogram(name: "nan", scope: !1576, file: !1576, line: 203, type: !401, flags: DIFlagPrototyped, spFlags: 0)
!1809 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1810, file: !1579, line: 1164)
!1810 = !DISubprogram(name: "nanf", scope: !1576, file: !1576, line: 203, type: !1811, flags: DIFlagPrototyped, spFlags: 0)
!1811 = !DISubroutineType(types: !1812)
!1812 = !{!547, !404}
!1813 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1814, file: !1579, line: 1165)
!1814 = !DISubprogram(name: "nanl", scope: !1576, file: !1576, line: 203, type: !1815, flags: DIFlagPrototyped, spFlags: 0)
!1815 = !DISubroutineType(types: !1816)
!1816 = !{!552, !404}
!1817 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1818, file: !1579, line: 1167)
!1818 = !DISubprogram(name: "nearbyint", scope: !1576, file: !1576, line: 297, type: !1577, flags: DIFlagPrototyped, spFlags: 0)
!1819 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1820, file: !1579, line: 1168)
!1820 = !DISubprogram(name: "nearbyintf", scope: !1576, file: !1576, line: 297, type: !1641, flags: DIFlagPrototyped, spFlags: 0)
!1821 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1822, file: !1579, line: 1169)
!1822 = !DISubprogram(name: "nearbyintl", scope: !1576, file: !1576, line: 297, type: !1645, flags: DIFlagPrototyped, spFlags: 0)
!1823 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1824, file: !1579, line: 1171)
!1824 = !DISubprogram(name: "nextafter", scope: !1576, file: !1576, line: 262, type: !1586, flags: DIFlagPrototyped, spFlags: 0)
!1825 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1826, file: !1579, line: 1172)
!1826 = !DISubprogram(name: "nextafterf", scope: !1576, file: !1576, line: 262, type: !1669, flags: DIFlagPrototyped, spFlags: 0)
!1827 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1828, file: !1579, line: 1173)
!1828 = !DISubprogram(name: "nextafterl", scope: !1576, file: !1576, line: 262, type: !1673, flags: DIFlagPrototyped, spFlags: 0)
!1829 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1830, file: !1579, line: 1175)
!1830 = !DISubprogram(name: "nexttoward", scope: !1576, file: !1576, line: 264, type: !1831, flags: DIFlagPrototyped, spFlags: 0)
!1831 = !DISubroutineType(types: !1832)
!1832 = !{!403, !403, !552}
!1833 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1834, file: !1579, line: 1176)
!1834 = !DISubprogram(name: "nexttowardf", scope: !1576, file: !1576, line: 264, type: !1835, flags: DIFlagPrototyped, spFlags: 0)
!1835 = !DISubroutineType(types: !1836)
!1836 = !{!547, !547, !552}
!1837 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1838, file: !1579, line: 1177)
!1838 = !DISubprogram(name: "nexttowardl", scope: !1576, file: !1576, line: 264, type: !1673, flags: DIFlagPrototyped, spFlags: 0)
!1839 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1840, file: !1579, line: 1179)
!1840 = !DISubprogram(name: "remainder", scope: !1576, file: !1576, line: 275, type: !1586, flags: DIFlagPrototyped, spFlags: 0)
!1841 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1842, file: !1579, line: 1180)
!1842 = !DISubprogram(name: "remainderf", scope: !1576, file: !1576, line: 275, type: !1669, flags: DIFlagPrototyped, spFlags: 0)
!1843 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1844, file: !1579, line: 1181)
!1844 = !DISubprogram(name: "remainderl", scope: !1576, file: !1576, line: 275, type: !1673, flags: DIFlagPrototyped, spFlags: 0)
!1845 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1846, file: !1579, line: 1183)
!1846 = !DISubprogram(name: "remquo", scope: !1576, file: !1576, line: 310, type: !1847, flags: DIFlagPrototyped, spFlags: 0)
!1847 = !DISubroutineType(types: !1848)
!1848 = !{!403, !403, !403, !1606}
!1849 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1850, file: !1579, line: 1184)
!1850 = !DISubprogram(name: "remquof", scope: !1576, file: !1576, line: 310, type: !1851, flags: DIFlagPrototyped, spFlags: 0)
!1851 = !DISubroutineType(types: !1852)
!1852 = !{!547, !547, !547, !1606}
!1853 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1854, file: !1579, line: 1185)
!1854 = !DISubprogram(name: "remquol", scope: !1576, file: !1576, line: 310, type: !1855, flags: DIFlagPrototyped, spFlags: 0)
!1855 = !DISubroutineType(types: !1856)
!1856 = !{!552, !552, !552, !1606}
!1857 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1858, file: !1579, line: 1187)
!1858 = !DISubprogram(name: "rint", scope: !1576, file: !1576, line: 259, type: !1577, flags: DIFlagPrototyped, spFlags: 0)
!1859 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1860, file: !1579, line: 1188)
!1860 = !DISubprogram(name: "rintf", scope: !1576, file: !1576, line: 259, type: !1641, flags: DIFlagPrototyped, spFlags: 0)
!1861 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1862, file: !1579, line: 1189)
!1862 = !DISubprogram(name: "rintl", scope: !1576, file: !1576, line: 259, type: !1645, flags: DIFlagPrototyped, spFlags: 0)
!1863 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1864, file: !1579, line: 1191)
!1864 = !DISubprogram(name: "round", scope: !1576, file: !1576, line: 301, type: !1577, flags: DIFlagPrototyped, spFlags: 0)
!1865 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1866, file: !1579, line: 1192)
!1866 = !DISubprogram(name: "roundf", scope: !1576, file: !1576, line: 301, type: !1641, flags: DIFlagPrototyped, spFlags: 0)
!1867 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1868, file: !1579, line: 1193)
!1868 = !DISubprogram(name: "roundl", scope: !1576, file: !1576, line: 301, type: !1645, flags: DIFlagPrototyped, spFlags: 0)
!1869 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1870, file: !1579, line: 1195)
!1870 = !DISubprogram(name: "scalbln", scope: !1576, file: !1576, line: 293, type: !1871, flags: DIFlagPrototyped, spFlags: 0)
!1871 = !DISubroutineType(types: !1872)
!1872 = !{!403, !403, !209}
!1873 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1874, file: !1579, line: 1196)
!1874 = !DISubprogram(name: "scalblnf", scope: !1576, file: !1576, line: 293, type: !1875, flags: DIFlagPrototyped, spFlags: 0)
!1875 = !DISubroutineType(types: !1876)
!1876 = !{!547, !547, !209}
!1877 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1878, file: !1579, line: 1197)
!1878 = !DISubprogram(name: "scalblnl", scope: !1576, file: !1576, line: 293, type: !1879, flags: DIFlagPrototyped, spFlags: 0)
!1879 = !DISubroutineType(types: !1880)
!1880 = !{!552, !552, !209}
!1881 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1882, file: !1579, line: 1199)
!1882 = !DISubprogram(name: "scalbn", scope: !1576, file: !1576, line: 279, type: !1609, flags: DIFlagPrototyped, spFlags: 0)
!1883 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1884, file: !1579, line: 1200)
!1884 = !DISubprogram(name: "scalbnf", scope: !1576, file: !1576, line: 279, type: !1885, flags: DIFlagPrototyped, spFlags: 0)
!1885 = !DISubroutineType(types: !1886)
!1886 = !{!547, !547, !97}
!1887 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1888, file: !1579, line: 1201)
!1888 = !DISubprogram(name: "scalbnl", scope: !1576, file: !1576, line: 279, type: !1889, flags: DIFlagPrototyped, spFlags: 0)
!1889 = !DISubroutineType(types: !1890)
!1890 = !{!552, !552, !97}
!1891 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1892, file: !1579, line: 1203)
!1892 = !DISubprogram(name: "tgamma", scope: !1576, file: !1576, line: 238, type: !1577, flags: DIFlagPrototyped, spFlags: 0)
!1893 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1894, file: !1579, line: 1204)
!1894 = !DISubprogram(name: "tgammaf", scope: !1576, file: !1576, line: 238, type: !1641, flags: DIFlagPrototyped, spFlags: 0)
!1895 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1896, file: !1579, line: 1205)
!1896 = !DISubprogram(name: "tgammal", scope: !1576, file: !1576, line: 238, type: !1645, flags: DIFlagPrototyped, spFlags: 0)
!1897 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1898, file: !1579, line: 1207)
!1898 = !DISubprogram(name: "trunc", scope: !1576, file: !1576, line: 305, type: !1577, flags: DIFlagPrototyped, spFlags: 0)
!1899 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1900, file: !1579, line: 1208)
!1900 = !DISubprogram(name: "truncf", scope: !1576, file: !1576, line: 305, type: !1641, flags: DIFlagPrototyped, spFlags: 0)
!1901 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !361, entity: !1902, file: !1579, line: 1209)
!1902 = !DISubprogram(name: "truncl", scope: !1576, file: !1576, line: 305, type: !1645, flags: DIFlagPrototyped, spFlags: 0)
!1903 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !1904, entity: !1905, file: !1906, line: 58)
!1904 = !DINamespace(name: "__gnu_debug", scope: null)
!1905 = !DINamespace(name: "__debug", scope: !361)
!1906 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/debug/debug.h", directory: "", checksumkind: CSK_MD5, checksum: "982c0103e1e5f86b0818efdfc5273c3c")
!1907 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !614, entity: !157, file: !2, line: 40)
!1908 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1909, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !1910, retainedTypes: !1911, globals: !1968, imports: !1969, splitDebugInlining: false, nameTableKind: None)
!1909 = !DIFile(filename: "/home/raj/ardupilot/libraries/AP_HAL_Linux/Thread.cpp", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "9e005ab91942cff649f1dfc4afc480f7")
!1910 = !{!74}
!1911 = !{!1912, !1965, !1919}
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Thread", scope: !157, file: !1914, line: 33, size: 320, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1915, vtableHolder: !1913)
!1914 = !DIFile(filename: "ardupilot/libraries/AP_HAL_Linux/Thread.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "7c87f4fcc7b9fb6d38e39705a52c39be")
!1915 = !{!1916, !1917, !1948, !1949, !1950, !1954, !1957, !1960, !1963, !1964}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$Thread", scope: !1914, file: !1914, baseType: !93, size: 64, flags: DIFlagArtificial)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "_task", scope: !1913, file: !1914, line: 55, baseType: !1918, size: 128, offset: 64, flags: DIFlagProtected)
!1918 = !DIDerivedType(tag: DW_TAG_typedef, name: "task_t", scope: !1913, file: !1914, line: 35, baseType: !1919, flags: DIFlagPublic)
!1919 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Functor<void>", file: !1330, line: 36, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !1920, templateParams: !1946, identifier: "_ZTS7FunctorIvJEE")
!1920 = !{!1921, !1922, !1924, !1928, !1931, !1934, !1939, !1943}
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "_obj", scope: !1919, file: !1330, line: 78, baseType: !319, size: 64)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "_method", scope: !1919, file: !1330, line: 79, baseType: !1923, size: 64, offset: 64)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!1924 = !DISubprogram(name: "Functor", scope: !1919, file: !1330, line: 39, type: !1925, scopeLine: 39, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1925 = !DISubroutineType(types: !1926)
!1926 = !{null, !1927, !319, !1923}
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1928 = !DISubprogram(name: "Functor", scope: !1919, file: !1330, line: 46, type: !1929, scopeLine: 46, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1929 = !DISubroutineType(types: !1930)
!1930 = !{null, !1927, !1345}
!1931 = !DISubprogram(name: "Functor", scope: !1919, file: !1330, line: 49, type: !1932, scopeLine: 49, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1932 = !DISubroutineType(types: !1933)
!1933 = !{null, !1927}
!1934 = !DISubprogram(name: "operator()", linkageName: "_ZNK7FunctorIvJEEclEv", scope: !1919, file: !1330, line: 53, type: !1935, scopeLine: 53, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1935 = !DISubroutineType(types: !1936)
!1936 = !{null, !1937}
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1938 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1919)
!1939 = !DISubprogram(name: "operator==", linkageName: "_ZN7FunctorIvJEEeqERKS0_", scope: !1919, file: !1330, line: 60, type: !1940, scopeLine: 60, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1940 = !DISubroutineType(types: !1941)
!1941 = !{!139, !1927, !1942}
!1942 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1938, size: 64)
!1943 = !DISubprogram(name: "operator bool", linkageName: "_ZNK7FunctorIvJEEcvbEv", scope: !1919, file: !1330, line: 66, type: !1944, scopeLine: 66, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!1944 = !DISubroutineType(types: !1945)
!1945 = !{!139, !1937}
!1946 = !{!1362, !1947}
!1947 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "Args", value: !848)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "_started", scope: !1913, file: !1914, line: 56, baseType: !139, size: 8, offset: 192, flags: DIFlagProtected)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "_ctx", scope: !1913, file: !1914, line: 57, baseType: !177, size: 64, offset: 256, flags: DIFlagProtected)
!1950 = !DISubprogram(name: "Thread", scope: !1913, file: !1914, line: 37, type: !1951, scopeLine: 37, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1951 = !DISubroutineType(types: !1952)
!1952 = !{null, !1953, !1918}
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1954 = !DISubprogram(name: "~Thread", scope: !1913, file: !1914, line: 39, type: !1955, scopeLine: 39, containingType: !1913, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!1955 = !DISubroutineType(types: !1956)
!1956 = !{null, !1953}
!1957 = !DISubprogram(name: "start", linkageName: "_ZN5Linux6Thread5startEPKcii", scope: !1913, file: !1914, line: 41, type: !1958, scopeLine: 41, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1958 = !DISubroutineType(types: !1959)
!1959 = !{!139, !1953, !404, !97, !97}
!1960 = !DISubprogram(name: "is_current_thread", linkageName: "_ZN5Linux6Thread17is_current_threadEv", scope: !1913, file: !1914, line: 43, type: !1961, scopeLine: 43, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1961 = !DISubroutineType(types: !1962)
!1962 = !{!139, !1953}
!1963 = !DISubprogram(name: "_run_trampoline", linkageName: "_ZN5Linux6Thread15_run_trampolineEPv", scope: !1913, file: !1914, line: 46, type: !317, scopeLine: 46, flags: DIFlagProtected | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!1964 = !DISubprogram(name: "_run", linkageName: "_ZN5Linux6Thread4_runEv", scope: !1913, file: !1914, line: 53, type: !1961, scopeLine: 53, containingType: !1913, virtualIndex: 2, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = !DICompositeType(tag: DW_TAG_class_type, name: "Scheduler", scope: !157, file: !1967, line: 13, size: 8320, flags: DIFlagFwdDecl | DIFlagNonTrivial)
!1967 = !DIFile(filename: "ardupilot/libraries/AP_HAL_Linux/Scheduler.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "ef825d8f36c427cd1c29f67aa34fefa8")
!1968 = !{!606, !609}
!1969 = !{!366, !372, !376, !382, !386, !392, !397, !399, !405, !409, !413, !423, !425, !429, !433, !437, !442, !446, !450, !454, !458, !466, !470, !474, !476, !478, !482, !486, !492, !496, !500, !502, !510, !514, !521, !523, !527, !531, !535, !539, !543, !548, !553, !554, !555, !556, !558, !559, !560, !561, !562, !563, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !1983, !1984, !1985, !1986, !1987, !1988, !1989, !1990, !1991, !1992, !1993, !1994, !1995, !1996, !1997, !1998, !1999, !2000, !2001, !360, !1574, !1580, !1582, !1584, !1588, !1590, !1592, !1594, !1596, !1598, !1600, !1602, !1607, !1611, !1613, !1615, !1620, !1622, !1624, !1626, !1628, !1630, !1632, !1635, !1637, !1639, !1643, !1647, !1649, !1651, !1653, !1655, !1657, !1659, !1661, !1663, !1665, !1667, !1671, !1675, !1677, !1679, !1681, !1683, !1685, !1687, !1689, !1691, !1693, !1695, !1697, !1699, !1701, !1703, !1705, !1709, !1713, !1717, !1719, !1721, !1723, !1725, !1727, !1729, !1731, !1733, !1735, !1739, !1743, !1747, !1749, !1751, !1753, !1757, !1761, !1765, !1767, !1769, !1771, !1773, !1775, !1777, !1779, !1781, !1783, !1785, !1787, !1789, !1793, !1797, !1801, !1803, !1805, !1807, !1809, !1813, !1817, !1819, !1821, !1823, !1825, !1827, !1829, !1833, !1837, !1839, !1841, !1843, !1845, !1849, !1853, !1857, !1859, !1861, !1863, !1865, !1867, !1869, !1873, !1877, !1881, !1883, !1887, !1891, !1893, !1895, !1897, !1899, !1901, !1903}
!1970 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !1908, entity: !383, file: !565, line: 38)
!1971 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !1908, entity: !393, file: !565, line: 39)
!1972 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !1908, entity: !430, file: !565, line: 40)
!1973 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !1908, entity: !398, file: !565, line: 43)
!1974 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !1908, entity: !475, file: !565, line: 46)
!1975 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !1908, entity: !373, file: !565, line: 51)
!1976 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !1908, entity: !377, file: !565, line: 52)
!1977 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !1908, entity: !573, file: !565, line: 54)
!1978 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !1908, entity: !400, file: !565, line: 55)
!1979 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !1908, entity: !406, file: !565, line: 56)
!1980 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !1908, entity: !410, file: !565, line: 57)
!1981 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !1908, entity: !414, file: !565, line: 58)
!1982 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !1908, entity: !424, file: !565, line: 59)
!1983 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !1908, entity: !557, file: !565, line: 60)
!1984 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !1908, entity: !434, file: !565, line: 61)
!1985 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !1908, entity: !438, file: !565, line: 62)
!1986 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !1908, entity: !443, file: !565, line: 63)
!1987 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !1908, entity: !447, file: !565, line: 64)
!1988 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !1908, entity: !451, file: !565, line: 65)
!1989 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !1908, entity: !455, file: !565, line: 67)
!1990 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !1908, entity: !459, file: !565, line: 68)
!1991 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !1908, entity: !467, file: !565, line: 69)
!1992 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !1908, entity: !471, file: !565, line: 71)
!1993 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !1908, entity: !477, file: !565, line: 72)
!1994 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !1908, entity: !479, file: !565, line: 73)
!1995 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !1908, entity: !483, file: !565, line: 74)
!1996 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !1908, entity: !487, file: !565, line: 75)
!1997 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !1908, entity: !493, file: !565, line: 76)
!1998 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !1908, entity: !497, file: !565, line: 77)
!1999 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !1908, entity: !501, file: !565, line: 78)
!2000 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !1908, entity: !503, file: !565, line: 80)
!2001 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !1908, entity: !511, file: !565, line: 81)
!2002 = !{!"clang version 16.0.0"}
!2003 = !{i32 7, !"Dwarf Version", i32 5}
!2004 = !{i32 2, !"Debug Info Version", i32 3}
!2005 = !{i32 1, !"wchar_size", i32 4}
!2006 = !{i32 8, !"PIC Level", i32 2}
!2007 = !{i32 7, !"PIE Level", i32 2}
!2008 = !{i32 7, !"uwtable", i32 2}
!2009 = !{i32 7, !"frame-pointer", i32 2}
!2010 = distinct !DISubprogram(name: "init", linkageName: "_ZN5Linux19OpticalFlow_Onboard4initE7FunctorIvJRfS2_S2_EE", scope: !671, file: !2, line: 43, type: !1456, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !614, declaration: !1455, retainedNodes: !848)
!2011 = !DILocalVariable(name: "this", arg: 1, scope: !2010, type: !670, flags: DIFlagArtificial | DIFlagObjectPointer)
!2012 = !DILocation(line: 0, scope: !2010)
!2013 = !DILocalVariable(name: "get_gyro", arg: 2, scope: !2010, file: !2, line: 43, type: !1328)
!2014 = !DILocation(line: 43, column: 61, scope: !2010)
!2015 = !DILocalVariable(name: "top", scope: !2010, file: !2, line: 45, type: !105)
!2016 = !DILocation(line: 45, column: 14, scope: !2010)
!2017 = !DILocalVariable(name: "left", scope: !2010, file: !2, line: 45, type: !105)
!2018 = !DILocation(line: 45, column: 19, scope: !2010)
!2019 = !DILocalVariable(name: "crop_width", scope: !2010, file: !2, line: 46, type: !105)
!2020 = !DILocation(line: 46, column: 14, scope: !2010)
!2021 = !DILocalVariable(name: "crop_height", scope: !2010, file: !2, line: 46, type: !105)
!2022 = !DILocation(line: 46, column: 26, scope: !2010)
!2023 = !DILocalVariable(name: "memtype", scope: !2010, file: !2, line: 47, type: !105)
!2024 = !DILocation(line: 47, column: 14, scope: !2010)
!2025 = !DILocalVariable(name: "nbufs", scope: !2010, file: !2, line: 48, type: !62)
!2026 = !DILocation(line: 48, column: 18, scope: !2010)
!2027 = !DILocalVariable(name: "ret", scope: !2010, file: !2, line: 49, type: !97)
!2028 = !DILocation(line: 49, column: 9, scope: !2010)
!2029 = !DILocalVariable(name: "attr", scope: !2010, file: !2, line: 50, type: !2030)
!2030 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_attr_t", file: !178, line: 62, baseType: !2031)
!2031 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "pthread_attr_t", file: !178, line: 56, size: 448, flags: DIFlagTypePassByValue, elements: !2032, identifier: "_ZTS14pthread_attr_t")
!2032 = !{!2033, !2037}
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !2031, file: !178, line: 58, baseType: !2034, size: 448)
!2034 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 448, elements: !2035)
!2035 = !{!2036}
!2036 = !DISubrange(count: 56)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !2031, file: !178, line: 59, baseType: !209, size: 64)
!2038 = !DILocation(line: 50, column: 20, scope: !2010)
!2039 = !DILocalVariable(name: "param", scope: !2010, file: !2, line: 51, type: !2040)
!2040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_param", file: !2041, line: 23, size: 32, flags: DIFlagTypePassByValue, elements: !2042, identifier: "_ZTS11sched_param")
!2041 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_sched_param.h", directory: "", checksumkind: CSK_MD5, checksum: "13c2f29d5f5dc39597ef32d201b78292")
!2042 = !{!2043}
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "sched_priority", scope: !2040, file: !2041, line: 25, baseType: !97, size: 32)
!2044 = !DILocation(line: 51, column: 24, scope: !2010)
!2045 = !DILocation(line: 55, column: 9, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2010, file: !2, line: 55, column: 9)
!2047 = !DILocation(line: 55, column: 9, scope: !2010)
!2048 = !DILocation(line: 56, column: 9, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !2046, file: !2, line: 55, column: 23)
!2050 = !DILocation(line: 59, column: 5, scope: !2010)
!2051 = !DILocation(line: 59, column: 15, scope: !2010)
!2052 = !DILocation(line: 60, column: 16, scope: !2010)
!2053 = !DILocation(line: 60, column: 20, scope: !2010)
!2054 = !DILocation(line: 60, column: 5, scope: !2010)
!2055 = !DILocation(line: 60, column: 14, scope: !2010)
!2056 = !DILocalVariable(name: "device_path", scope: !2010, file: !2, line: 61, type: !404)
!2057 = !DILocation(line: 61, column: 17, scope: !2010)
!2058 = !DILocation(line: 62, column: 13, scope: !2010)
!2059 = !DILocation(line: 63, column: 11, scope: !2010)
!2060 = !DILocation(line: 64, column: 5, scope: !2010)
!2061 = !DILocation(line: 64, column: 12, scope: !2010)
!2062 = !DILocation(line: 65, column: 5, scope: !2010)
!2063 = !DILocation(line: 65, column: 13, scope: !2010)
!2064 = !DILocation(line: 66, column: 16, scope: !2010)
!2065 = !DILocation(line: 67, column: 17, scope: !2010)
!2066 = !DILocation(line: 68, column: 9, scope: !2010)
!2067 = !DILocation(line: 70, column: 10, scope: !2010)
!2068 = !DILocation(line: 73, column: 9, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2010, file: !2, line: 73, column: 9)
!2070 = !DILocation(line: 73, column: 21, scope: !2069)
!2071 = !DILocation(line: 73, column: 29, scope: !2069)
!2072 = !DILocation(line: 74, column: 10, scope: !2069)
!2073 = !DILocation(line: 74, column: 32, scope: !2069)
!2074 = !DILocation(line: 74, column: 45, scope: !2069)
!2075 = !DILocation(line: 74, column: 20, scope: !2069)
!2076 = !DILocation(line: 73, column: 9, scope: !2010)
!2077 = !DILocation(line: 75, column: 9, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !2069, file: !2, line: 74, column: 55)
!2079 = !DILocalVariable(name: "pixel_formats", scope: !2010, file: !2, line: 96, type: !724)
!2080 = !DILocation(line: 96, column: 27, scope: !2010)
!2081 = !DILocation(line: 98, column: 5, scope: !2010)
!2082 = !DILocation(line: 98, column: 15, scope: !2010)
!2083 = !DILocalVariable(name: "__range1", scope: !2084, type: !1043, flags: DIFlagArtificial)
!2084 = distinct !DILexicalBlock(scope: !2010, file: !2, line: 100, column: 5)
!2085 = !DILocation(line: 0, scope: !2084)
!2086 = !DILocation(line: 100, column: 28, scope: !2084)
!2087 = !DILocalVariable(name: "__begin1", scope: !2084, type: !1059, flags: DIFlagArtificial)
!2088 = !DILocation(line: 100, column: 26, scope: !2084)
!2089 = !DILocalVariable(name: "__end1", scope: !2084, type: !1059, flags: DIFlagArtificial)
!2090 = !DILocalVariable(name: "px_fmt", scope: !2091, file: !2, line: 100, type: !105)
!2091 = distinct !DILexicalBlock(scope: !2084, file: !2, line: 100, column: 5)
!2092 = !DILocation(line: 100, column: 19, scope: !2091)
!2093 = !DILocation(line: 100, column: 26, scope: !2091)
!2094 = !DILocation(line: 101, column: 13, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !2096, file: !2, line: 101, column: 13)
!2096 = distinct !DILexicalBlock(scope: !2091, file: !2, line: 100, column: 43)
!2097 = !DILocation(line: 101, column: 20, scope: !2095)
!2098 = !DILocation(line: 101, column: 41, scope: !2095)
!2099 = !DILocation(line: 101, column: 44, scope: !2095)
!2100 = !DILocation(line: 101, column: 51, scope: !2095)
!2101 = !DILocation(line: 101, column: 13, scope: !2096)
!2102 = !DILocation(line: 102, column: 23, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2095, file: !2, line: 101, column: 73)
!2104 = !DILocation(line: 102, column: 13, scope: !2103)
!2105 = !DILocation(line: 102, column: 21, scope: !2103)
!2106 = !DILocation(line: 103, column: 13, scope: !2103)
!2107 = !DILocation(line: 192, column: 1, scope: !2010)
!2108 = !DILocation(line: 108, column: 13, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2096, file: !2, line: 108, column: 13)
!2110 = !DILocation(line: 108, column: 20, scope: !2109)
!2111 = !DILocation(line: 108, column: 13, scope: !2096)
!2112 = !DILocation(line: 109, column: 23, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2109, file: !2, line: 108, column: 42)
!2114 = !DILocation(line: 109, column: 13, scope: !2113)
!2115 = !DILocation(line: 109, column: 21, scope: !2113)
!2116 = !DILocation(line: 110, column: 9, scope: !2113)
!2117 = !DILocation(line: 100, column: 5, scope: !2084)
!2118 = distinct !{!2118, !2117, !2119}
!2119 = !DILocation(line: 111, column: 5, scope: !2084)
!2120 = !DILocation(line: 114, column: 10, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2010, file: !2, line: 114, column: 9)
!2122 = !DILocation(line: 114, column: 32, scope: !2121)
!2123 = !DILocation(line: 114, column: 41, scope: !2121)
!2124 = !DILocation(line: 114, column: 51, scope: !2121)
!2125 = !DILocation(line: 114, column: 61, scope: !2121)
!2126 = !DILocation(line: 115, column: 32, scope: !2121)
!2127 = !DILocation(line: 114, column: 20, scope: !2121)
!2128 = !DILocation(line: 114, column: 9, scope: !2010)
!2129 = !DILocation(line: 116, column: 9, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !2121, file: !2, line: 115, column: 45)
!2131 = !DILocation(line: 119, column: 9, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2010, file: !2, line: 119, column: 9)
!2133 = !DILocation(line: 119, column: 17, scope: !2132)
!2134 = !DILocation(line: 119, column: 38, scope: !2132)
!2135 = !DILocation(line: 119, column: 41, scope: !2132)
!2136 = !DILocation(line: 119, column: 49, scope: !2132)
!2137 = !DILocation(line: 119, column: 70, scope: !2132)
!2138 = !DILocation(line: 120, column: 9, scope: !2132)
!2139 = !DILocation(line: 120, column: 17, scope: !2132)
!2140 = !DILocation(line: 119, column: 9, scope: !2010)
!2141 = !DILocation(line: 121, column: 9, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2132, file: !2, line: 120, column: 39)
!2143 = !DILocation(line: 124, column: 9, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2010, file: !2, line: 124, column: 9)
!2145 = !DILocation(line: 124, column: 16, scope: !2144)
!2146 = !DILocation(line: 124, column: 52, scope: !2144)
!2147 = !DILocation(line: 125, column: 9, scope: !2144)
!2148 = !DILocation(line: 125, column: 17, scope: !2144)
!2149 = !DILocation(line: 124, column: 9, scope: !2010)
!2150 = !DILocation(line: 126, column: 9, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2144, file: !2, line: 125, column: 55)
!2152 = !DILocation(line: 126, column: 29, scope: !2151)
!2153 = !DILocation(line: 127, column: 5, scope: !2151)
!2154 = !DILocation(line: 130, column: 9, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2144, file: !2, line: 127, column: 12)
!2156 = !DILocation(line: 130, column: 29, scope: !2155)
!2157 = !DILocation(line: 131, column: 32, scope: !2155)
!2158 = !DILocation(line: 131, column: 9, scope: !2155)
!2159 = !DILocation(line: 131, column: 30, scope: !2155)
!2160 = !DILocation(line: 132, column: 33, scope: !2155)
!2161 = !DILocation(line: 132, column: 9, scope: !2155)
!2162 = !DILocation(line: 132, column: 31, scope: !2155)
!2163 = !DILocation(line: 136, column: 9, scope: !2155)
!2164 = !DILocation(line: 136, column: 16, scope: !2155)
!2165 = !DILocation(line: 137, column: 9, scope: !2155)
!2166 = !DILocation(line: 137, column: 17, scope: !2155)
!2167 = !DILocation(line: 138, column: 9, scope: !2155)
!2168 = !DILocation(line: 138, column: 23, scope: !2155)
!2169 = !DILocation(line: 141, column: 9, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !2010, file: !2, line: 141, column: 9)
!2171 = !DILocation(line: 141, column: 28, scope: !2170)
!2172 = !DILocation(line: 141, column: 34, scope: !2170)
!2173 = !DILocation(line: 141, column: 39, scope: !2170)
!2174 = !DILocation(line: 141, column: 51, scope: !2170)
!2175 = !DILocation(line: 141, column: 19, scope: !2170)
!2176 = !DILocation(line: 141, column: 9, scope: !2010)
!2177 = !DILocation(line: 142, column: 9, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2170, file: !2, line: 141, column: 65)
!2179 = !DILocation(line: 142, column: 27, scope: !2178)
!2180 = !DILocation(line: 143, column: 5, scope: !2178)
!2181 = !DILocation(line: 144, column: 9, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2170, file: !2, line: 143, column: 12)
!2183 = !DILocation(line: 144, column: 27, scope: !2182)
!2184 = !DILocation(line: 146, column: 14, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2182, file: !2, line: 146, column: 13)
!2186 = !DILocation(line: 146, column: 13, scope: !2182)
!2187 = !DILocation(line: 149, column: 36, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2185, file: !2, line: 146, column: 35)
!2189 = !DILocation(line: 149, column: 13, scope: !2188)
!2190 = !DILocation(line: 149, column: 34, scope: !2188)
!2191 = !DILocation(line: 150, column: 37, scope: !2188)
!2192 = !DILocation(line: 150, column: 13, scope: !2188)
!2193 = !DILocation(line: 150, column: 35, scope: !2188)
!2194 = !DILocation(line: 154, column: 13, scope: !2188)
!2195 = !DILocation(line: 154, column: 20, scope: !2188)
!2196 = !DILocation(line: 155, column: 13, scope: !2188)
!2197 = !DILocation(line: 155, column: 21, scope: !2188)
!2198 = !DILocation(line: 156, column: 13, scope: !2188)
!2199 = !DILocation(line: 156, column: 27, scope: !2188)
!2200 = !DILocation(line: 157, column: 9, scope: !2188)
!2201 = !DILocation(line: 160, column: 10, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2010, file: !2, line: 160, column: 9)
!2203 = !DILocation(line: 160, column: 37, scope: !2202)
!2204 = !DILocation(line: 160, column: 20, scope: !2202)
!2205 = !DILocation(line: 160, column: 9, scope: !2010)
!2206 = !DILocation(line: 161, column: 9, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2202, file: !2, line: 160, column: 45)
!2208 = !DILocation(line: 164, column: 5, scope: !2010)
!2209 = !DILocation(line: 164, column: 15, scope: !2010)
!2210 = !DILocation(line: 167, column: 13, scope: !2010)
!2211 = !DILocation(line: 167, column: 26, scope: !2010)
!2212 = !DILocation(line: 167, column: 34, scope: !2010)
!2213 = !DILocation(line: 167, column: 17, scope: !2010)
!2214 = !DILocation(line: 167, column: 5, scope: !2010)
!2215 = !DILocation(line: 167, column: 11, scope: !2010)
!2216 = !DILocation(line: 174, column: 31, scope: !2010)
!2217 = !DILocation(line: 174, column: 11, scope: !2010)
!2218 = !DILocation(line: 174, column: 9, scope: !2010)
!2219 = !DILocation(line: 175, column: 9, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2010, file: !2, line: 175, column: 9)
!2221 = !DILocation(line: 175, column: 13, scope: !2220)
!2222 = !DILocation(line: 175, column: 9, scope: !2010)
!2223 = !DILocation(line: 176, column: 9, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2220, file: !2, line: 175, column: 19)
!2225 = !DILocation(line: 179, column: 11, scope: !2010)
!2226 = !DILocation(line: 179, column: 9, scope: !2010)
!2227 = !DILocation(line: 180, column: 9, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2010, file: !2, line: 180, column: 9)
!2229 = !DILocation(line: 180, column: 13, scope: !2228)
!2230 = !DILocation(line: 180, column: 9, scope: !2010)
!2231 = !DILocation(line: 181, column: 9, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2228, file: !2, line: 180, column: 19)
!2233 = !DILocation(line: 183, column: 5, scope: !2010)
!2234 = !DILocation(line: 184, column: 5, scope: !2010)
!2235 = !DILocation(line: 185, column: 5, scope: !2010)
!2236 = !DILocation(line: 186, column: 27, scope: !2010)
!2237 = !DILocation(line: 186, column: 11, scope: !2010)
!2238 = !DILocation(line: 186, column: 9, scope: !2010)
!2239 = !DILocation(line: 187, column: 9, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2010, file: !2, line: 187, column: 9)
!2241 = !DILocation(line: 187, column: 13, scope: !2240)
!2242 = !DILocation(line: 187, column: 9, scope: !2010)
!2243 = !DILocation(line: 188, column: 9, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2240, file: !2, line: 187, column: 19)
!2245 = !DILocation(line: 191, column: 5, scope: !2010)
!2246 = !DILocation(line: 191, column: 18, scope: !2010)
!2247 = distinct !DISubprogram(name: "read", linkageName: "_ZN5Linux19OpticalFlow_Onboard4readERN6AP_HAL11OpticalFlow10Data_FrameE", scope: !671, file: !2, line: 194, type: !1460, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !614, declaration: !1459, retainedNodes: !848)
!2248 = !DILocalVariable(name: "this", arg: 1, scope: !2247, type: !670, flags: DIFlagArtificial | DIFlagObjectPointer)
!2249 = !DILocation(line: 0, scope: !2247)
!2250 = !DILocalVariable(name: "frame", arg: 2, scope: !2247, file: !2, line: 194, type: !1462)
!2251 = !DILocation(line: 194, column: 65, scope: !2247)
!2252 = !DILocalVariable(name: "ret", scope: !2247, file: !2, line: 196, type: !139)
!2253 = !DILocation(line: 196, column: 10, scope: !2247)
!2254 = !DILocation(line: 198, column: 25, scope: !2247)
!2255 = !DILocation(line: 198, column: 5, scope: !2247)
!2256 = !DILocation(line: 199, column: 10, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2247, file: !2, line: 199, column: 9)
!2258 = !DILocation(line: 199, column: 9, scope: !2247)
!2259 = !DILocation(line: 200, column: 13, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2257, file: !2, line: 199, column: 27)
!2261 = !DILocation(line: 201, column: 9, scope: !2260)
!2262 = !DILocation(line: 203, column: 35, scope: !2247)
!2263 = !DILocation(line: 203, column: 5, scope: !2247)
!2264 = !DILocation(line: 203, column: 11, scope: !2247)
!2265 = !DILocation(line: 203, column: 33, scope: !2247)
!2266 = !DILocation(line: 204, column: 35, scope: !2247)
!2267 = !DILocation(line: 204, column: 5, scope: !2247)
!2268 = !DILocation(line: 204, column: 11, scope: !2247)
!2269 = !DILocation(line: 204, column: 33, scope: !2247)
!2270 = !DILocation(line: 205, column: 29, scope: !2247)
!2271 = !DILocation(line: 205, column: 5, scope: !2247)
!2272 = !DILocation(line: 205, column: 11, scope: !2247)
!2273 = !DILocation(line: 205, column: 27, scope: !2247)
!2274 = !DILocation(line: 206, column: 29, scope: !2247)
!2275 = !DILocation(line: 206, column: 5, scope: !2247)
!2276 = !DILocation(line: 206, column: 11, scope: !2247)
!2277 = !DILocation(line: 206, column: 27, scope: !2247)
!2278 = !DILocation(line: 207, column: 24, scope: !2247)
!2279 = !DILocation(line: 207, column: 5, scope: !2247)
!2280 = !DILocation(line: 207, column: 11, scope: !2247)
!2281 = !DILocation(line: 207, column: 22, scope: !2247)
!2282 = !DILocation(line: 208, column: 21, scope: !2247)
!2283 = !DILocation(line: 208, column: 5, scope: !2247)
!2284 = !DILocation(line: 208, column: 11, scope: !2247)
!2285 = !DILocation(line: 208, column: 19, scope: !2247)
!2286 = !DILocation(line: 209, column: 5, scope: !2247)
!2287 = !DILocation(line: 209, column: 27, scope: !2247)
!2288 = !DILocation(line: 210, column: 5, scope: !2247)
!2289 = !DILocation(line: 210, column: 28, scope: !2247)
!2290 = !DILocation(line: 211, column: 5, scope: !2247)
!2291 = !DILocation(line: 211, column: 28, scope: !2247)
!2292 = !DILocation(line: 212, column: 5, scope: !2247)
!2293 = !DILocation(line: 212, column: 22, scope: !2247)
!2294 = !DILocation(line: 213, column: 5, scope: !2247)
!2295 = !DILocation(line: 213, column: 22, scope: !2247)
!2296 = !DILocation(line: 214, column: 5, scope: !2247)
!2297 = !DILocation(line: 214, column: 21, scope: !2247)
!2298 = !DILocation(line: 215, column: 9, scope: !2247)
!2299 = !DILocation(line: 215, column: 5, scope: !2247)
!2300 = !DILabel(scope: !2247, name: "end", file: !2, line: 216)
!2301 = !DILocation(line: 216, column: 1, scope: !2247)
!2302 = !DILocation(line: 217, column: 27, scope: !2247)
!2303 = !DILocation(line: 217, column: 5, scope: !2247)
!2304 = !DILocation(line: 218, column: 12, scope: !2247)
!2305 = !DILocation(line: 218, column: 5, scope: !2247)
!2306 = distinct !DISubprogram(name: "VideoIn", linkageName: "_ZN5Linux7VideoInC2Ev", scope: !679, file: !680, line: 26, type: !712, scopeLine: 26, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !614, declaration: !2307, retainedNodes: !848)
!2307 = !DISubprogram(name: "VideoIn", scope: !679, type: !712, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!2308 = !DILocalVariable(name: "this", arg: 1, scope: !2306, type: !678, flags: DIFlagArtificial | DIFlagObjectPointer)
!2309 = !DILocation(line: 0, scope: !2306)
!2310 = !DILocation(line: 72, column: 9, scope: !2306)
!2311 = !DILocation(line: 81, column: 14, scope: !2306)
!2312 = !DILocation(line: 26, column: 14, scope: !2306)
!2313 = distinct !DISubprogram(name: "vector", linkageName: "_ZNSt6vectorIjSaIjEEC2Ev", scope: !724, file: !725, line: 487, type: !994, scopeLine: 487, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !614, declaration: !993, retainedNodes: !848)
!2314 = !DILocalVariable(name: "this", arg: 1, scope: !2313, type: !723, flags: DIFlagArtificial | DIFlagObjectPointer)
!2315 = !DILocation(line: 0, scope: !2313)
!2316 = !DILocation(line: 487, column: 7, scope: !2313)
!2317 = !DILocation(line: 487, column: 24, scope: !2313)
!2318 = distinct !DISubprogram(name: "begin", linkageName: "_ZNSt6vectorIjSaIjEE5beginEv", scope: !724, file: !725, line: 811, type: !1057, scopeLine: 812, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !614, declaration: !1056, retainedNodes: !848)
!2319 = !DILocalVariable(name: "this", arg: 1, scope: !2318, type: !723, flags: DIFlagArtificial | DIFlagObjectPointer)
!2320 = !DILocation(line: 0, scope: !2318)
!2321 = !DILocation(line: 812, column: 31, scope: !2318)
!2322 = !DILocation(line: 812, column: 39, scope: !2318)
!2323 = !DILocation(line: 812, column: 16, scope: !2318)
!2324 = !DILocation(line: 812, column: 9, scope: !2318)
!2325 = distinct !DISubprogram(name: "end", linkageName: "_ZNSt6vectorIjSaIjEE3endEv", scope: !724, file: !725, line: 829, type: !1057, scopeLine: 830, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !614, declaration: !1123, retainedNodes: !848)
!2326 = !DILocalVariable(name: "this", arg: 1, scope: !2325, type: !723, flags: DIFlagArtificial | DIFlagObjectPointer)
!2327 = !DILocation(line: 0, scope: !2325)
!2328 = !DILocation(line: 830, column: 31, scope: !2325)
!2329 = !DILocation(line: 830, column: 39, scope: !2325)
!2330 = !DILocation(line: 830, column: 16, scope: !2325)
!2331 = !DILocation(line: 830, column: 9, scope: !2325)
!2332 = distinct !DISubprogram(name: "operator!=<unsigned int *, std::vector<unsigned int, std::allocator<unsigned int> > >", linkageName: "_ZN9__gnu_cxxneIPjSt6vectorIjSaIjEEEEbRKNS_17__normal_iteratorIT_T0_EESA_", scope: !515, file: !1061, line: 1179, type: !2333, scopeLine: 1182, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !614, templateParams: !1115, retainedNodes: !848)
!2333 = !DISubroutineType(types: !2334)
!2334 = !{!139, !2335, !2335}
!2335 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1083, size: 64)
!2336 = !DILocalVariable(name: "__lhs", arg: 1, scope: !2332, file: !1061, line: 1179, type: !2335)
!2337 = !DILocation(line: 1179, column: 64, scope: !2332)
!2338 = !DILocalVariable(name: "__rhs", arg: 2, scope: !2332, file: !1061, line: 1180, type: !2335)
!2339 = !DILocation(line: 1180, column: 57, scope: !2332)
!2340 = !DILocation(line: 1182, column: 14, scope: !2332)
!2341 = !DILocation(line: 1182, column: 20, scope: !2332)
!2342 = !DILocation(line: 1182, column: 30, scope: !2332)
!2343 = !DILocation(line: 1182, column: 36, scope: !2332)
!2344 = !DILocation(line: 1182, column: 27, scope: !2332)
!2345 = !DILocation(line: 1182, column: 7, scope: !2332)
!2346 = distinct !DISubprogram(name: "operator*", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEdeEv", scope: !1060, file: !1061, line: 1042, type: !1074, scopeLine: 1043, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !614, declaration: !1073, retainedNodes: !848)
!2347 = !DILocalVariable(name: "this", arg: 1, scope: !2346, type: !2348, flags: DIFlagArtificial | DIFlagObjectPointer)
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!2349 = !DILocation(line: 0, scope: !2346)
!2350 = !DILocation(line: 1043, column: 17, scope: !2346)
!2351 = !DILocation(line: 1043, column: 9, scope: !2346)
!2352 = distinct !DISubprogram(name: "operator++", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEppEv", scope: !1060, file: !1061, line: 1052, type: !1090, scopeLine: 1053, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !614, declaration: !1089, retainedNodes: !848)
!2353 = !DILocalVariable(name: "this", arg: 1, scope: !2352, type: !2354, flags: DIFlagArtificial | DIFlagObjectPointer)
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!2355 = !DILocation(line: 0, scope: !2352)
!2356 = !DILocation(line: 1054, column: 4, scope: !2352)
!2357 = !DILocation(line: 1054, column: 2, scope: !2352)
!2358 = !DILocation(line: 1055, column: 2, scope: !2352)
!2359 = distinct !DISubprogram(name: "_read_thread", linkageName: "_ZN5Linux19OpticalFlow_Onboard12_read_threadEPv", scope: !671, file: !2, line: 221, type: !317, scopeLine: 222, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !614, declaration: !1474, retainedNodes: !848)
!2360 = !DILocalVariable(name: "arg", arg: 1, scope: !2359, file: !2, line: 221, type: !319)
!2361 = !DILocation(line: 221, column: 47, scope: !2359)
!2362 = !DILocalVariable(name: "optflow_onboard", scope: !2359, file: !2, line: 223, type: !670)
!2363 = !DILocation(line: 223, column: 26, scope: !2359)
!2364 = !DILocation(line: 223, column: 68, scope: !2359)
!2365 = !DILocation(line: 225, column: 5, scope: !2359)
!2366 = !DILocation(line: 225, column: 22, scope: !2359)
!2367 = !DILocation(line: 226, column: 5, scope: !2359)
!2368 = distinct !DISubprogram(name: "~vector", linkageName: "_ZNSt6vectorIjSaIjEED2Ev", scope: !724, file: !725, line: 678, type: !994, scopeLine: 679, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !614, declaration: !1039, retainedNodes: !848)
!2369 = !DILocalVariable(name: "this", arg: 1, scope: !2368, type: !723, flags: DIFlagArtificial | DIFlagObjectPointer)
!2370 = !DILocation(line: 0, scope: !2368)
!2371 = !DILocation(line: 680, column: 22, scope: !2372)
!2372 = distinct !DILexicalBlock(scope: !2368, file: !725, line: 679, column: 7)
!2373 = !DILocation(line: 680, column: 30, scope: !2372)
!2374 = !DILocation(line: 680, column: 46, scope: !2372)
!2375 = !DILocation(line: 680, column: 54, scope: !2372)
!2376 = !DILocation(line: 681, column: 9, scope: !2372)
!2377 = !DILocation(line: 680, column: 2, scope: !2372)
!2378 = !DILocation(line: 683, column: 7, scope: !2372)
!2379 = !DILocation(line: 683, column: 7, scope: !2368)
!2380 = distinct !DISubprogram(name: "_M_get_Tp_allocator", linkageName: "_ZNSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv", scope: !728, file: !725, line: 276, type: !896, scopeLine: 277, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !614, declaration: !895, retainedNodes: !848)
!2381 = !DILocalVariable(name: "this", arg: 1, scope: !2380, type: !2382, flags: DIFlagArtificial | DIFlagObjectPointer)
!2382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!2383 = !DILocation(line: 0, scope: !2380)
!2384 = !DILocation(line: 277, column: 22, scope: !2380)
!2385 = !DILocation(line: 277, column: 9, scope: !2380)
!2386 = distinct !DISubprogram(name: "_Destroy<unsigned int *, unsigned int>", linkageName: "_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E", scope: !361, file: !742, line: 845, type: !2387, scopeLine: 847, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !614, templateParams: !2389, retainedNodes: !848)
!2387 = !DISubroutineType(types: !2388)
!2388 = !{null, !748, !748, !812}
!2389 = !{!2390, !799}
!2390 = !DITemplateTypeParameter(name: "_ForwardIterator", type: !748)
!2391 = !DILocalVariable(name: "__first", arg: 1, scope: !2386, file: !742, line: 845, type: !748)
!2392 = !DILocation(line: 845, column: 31, scope: !2386)
!2393 = !DILocalVariable(name: "__last", arg: 2, scope: !2386, file: !742, line: 845, type: !748)
!2394 = !DILocation(line: 845, column: 57, scope: !2386)
!2395 = !DILocalVariable(arg: 3, scope: !2386, file: !742, line: 846, type: !812)
!2396 = !DILocation(line: 846, column: 22, scope: !2386)
!2397 = !DILocation(line: 848, column: 16, scope: !2386)
!2398 = !DILocation(line: 848, column: 25, scope: !2386)
!2399 = !DILocation(line: 848, column: 7, scope: !2386)
!2400 = !DILocation(line: 849, column: 5, scope: !2386)
!2401 = distinct !DISubprogram(name: "~_Vector_base", linkageName: "_ZNSt12_Vector_baseIjSaIjEED2Ev", scope: !728, file: !725, line: 333, type: !910, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !614, declaration: !936, retainedNodes: !848)
!2402 = !DILocalVariable(name: "this", arg: 1, scope: !2401, type: !2382, flags: DIFlagArtificial | DIFlagObjectPointer)
!2403 = !DILocation(line: 0, scope: !2401)
!2404 = !DILocation(line: 335, column: 16, scope: !2405)
!2405 = distinct !DILexicalBlock(scope: !2401, file: !725, line: 334, column: 7)
!2406 = !DILocation(line: 335, column: 24, scope: !2405)
!2407 = !DILocation(line: 336, column: 9, scope: !2405)
!2408 = !DILocation(line: 336, column: 17, scope: !2405)
!2409 = !DILocation(line: 336, column: 37, scope: !2405)
!2410 = !DILocation(line: 336, column: 45, scope: !2405)
!2411 = !DILocation(line: 336, column: 35, scope: !2405)
!2412 = !DILocation(line: 335, column: 2, scope: !2405)
!2413 = !DILocation(line: 337, column: 7, scope: !2405)
!2414 = !DILocation(line: 337, column: 7, scope: !2401)
!2415 = distinct !DISubprogram(name: "_M_deallocate", linkageName: "_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm", scope: !728, file: !725, line: 350, type: !941, scopeLine: 351, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !614, declaration: !940, retainedNodes: !848)
!2416 = !DILocalVariable(name: "this", arg: 1, scope: !2415, type: !2382, flags: DIFlagArtificial | DIFlagObjectPointer)
!2417 = !DILocation(line: 0, scope: !2415)
!2418 = !DILocalVariable(name: "__p", arg: 2, scope: !2415, file: !725, line: 350, type: !854)
!2419 = !DILocation(line: 350, column: 29, scope: !2415)
!2420 = !DILocalVariable(name: "__n", arg: 3, scope: !2415, file: !725, line: 350, type: !789)
!2421 = !DILocation(line: 350, column: 41, scope: !2415)
!2422 = !DILocation(line: 353, column: 6, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2415, file: !725, line: 353, column: 6)
!2424 = !DILocation(line: 353, column: 6, scope: !2415)
!2425 = !DILocation(line: 354, column: 20, scope: !2423)
!2426 = !DILocation(line: 354, column: 29, scope: !2423)
!2427 = !DILocation(line: 354, column: 34, scope: !2423)
!2428 = !DILocation(line: 354, column: 4, scope: !2423)
!2429 = !DILocation(line: 355, column: 7, scope: !2415)
!2430 = distinct !DISubprogram(name: "~_Vector_impl", linkageName: "_ZNSt12_Vector_baseIjSaIjEE12_Vector_implD2Ev", scope: !731, file: !725, line: 128, type: !876, scopeLine: 128, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !614, declaration: !2431, retainedNodes: !848)
!2431 = !DISubprogram(name: "~_Vector_impl", scope: !731, type: !876, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!2432 = !DILocalVariable(name: "this", arg: 1, scope: !2430, type: !2433, flags: DIFlagArtificial | DIFlagObjectPointer)
!2433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!2434 = !DILocation(line: 0, scope: !2430)
!2435 = !DILocation(line: 128, column: 14, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2430, file: !725, line: 128, column: 14)
!2437 = !DILocation(line: 128, column: 14, scope: !2430)
!2438 = distinct !DISubprogram(name: "~allocator", linkageName: "_ZNSaIjED2Ev", scope: !751, file: !752, line: 174, type: !801, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !614, declaration: !813, retainedNodes: !848)
!2439 = !DILocalVariable(name: "this", arg: 1, scope: !2438, type: !2440, flags: DIFlagArtificial | DIFlagObjectPointer)
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!2441 = !DILocation(line: 0, scope: !2438)
!2442 = !DILocation(line: 174, column: 39, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2438, file: !752, line: 174, column: 37)
!2444 = !DILocation(line: 174, column: 39, scope: !2438)
!2445 = distinct !DISubprogram(name: "~new_allocator", linkageName: "_ZN9__gnu_cxx13new_allocatorIjED2Ev", scope: !757, file: !758, line: 89, type: !761, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !614, declaration: !769, retainedNodes: !848)
!2446 = !DILocalVariable(name: "this", arg: 1, scope: !2445, type: !2447, flags: DIFlagArtificial | DIFlagObjectPointer)
!2447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!2448 = !DILocation(line: 0, scope: !2445)
!2449 = !DILocation(line: 89, column: 48, scope: !2445)
!2450 = distinct !DISubprogram(name: "deallocate", linkageName: "_ZNSt16allocator_traitsISaIjEE10deallocateERS0_Pjm", scope: !741, file: !742, line: 495, type: !820, scopeLine: 496, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !614, declaration: !819, retainedNodes: !848)
!2451 = !DILocalVariable(name: "__a", arg: 1, scope: !2450, file: !742, line: 495, type: !749)
!2452 = !DILocation(line: 495, column: 34, scope: !2450)
!2453 = !DILocalVariable(name: "__p", arg: 2, scope: !2450, file: !742, line: 495, type: !747)
!2454 = !DILocation(line: 495, column: 47, scope: !2450)
!2455 = !DILocalVariable(name: "__n", arg: 3, scope: !2450, file: !742, line: 495, type: !814)
!2456 = !DILocation(line: 495, column: 62, scope: !2450)
!2457 = !DILocation(line: 496, column: 9, scope: !2450)
!2458 = !DILocation(line: 496, column: 24, scope: !2450)
!2459 = !DILocation(line: 496, column: 29, scope: !2450)
!2460 = !DILocation(line: 496, column: 13, scope: !2450)
!2461 = !DILocation(line: 496, column: 35, scope: !2450)
!2462 = distinct !DISubprogram(name: "deallocate", linkageName: "_ZN9__gnu_cxx13new_allocatorIjE10deallocateEPjm", scope: !757, file: !758, line: 132, type: !792, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !614, declaration: !791, retainedNodes: !848)
!2463 = !DILocalVariable(name: "this", arg: 1, scope: !2462, type: !2447, flags: DIFlagArtificial | DIFlagObjectPointer)
!2464 = !DILocation(line: 0, scope: !2462)
!2465 = !DILocalVariable(name: "__p", arg: 2, scope: !2462, file: !758, line: 132, type: !748)
!2466 = !DILocation(line: 132, column: 23, scope: !2462)
!2467 = !DILocalVariable(name: "__t", arg: 3, scope: !2462, file: !758, line: 132, type: !788)
!2468 = !DILocation(line: 132, column: 38, scope: !2462)
!2469 = !DILocation(line: 145, column: 20, scope: !2462)
!2470 = !DILocation(line: 145, column: 2, scope: !2462)
!2471 = !DILocation(line: 150, column: 7, scope: !2462)
!2472 = distinct !DISubprogram(name: "_Destroy<unsigned int *>", linkageName: "_ZSt8_DestroyIPjEvT_S1_", scope: !361, file: !2473, line: 182, type: !2474, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !614, templateParams: !2476, retainedNodes: !848)
!2473 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/stl_construct.h", directory: "", checksumkind: CSK_MD5, checksum: "d13395651729d9a26632373217b7daf3")
!2474 = !DISubroutineType(types: !2475)
!2475 = !{null, !748, !748}
!2476 = !{!2390}
!2477 = !DILocalVariable(name: "__first", arg: 1, scope: !2472, file: !2473, line: 182, type: !748)
!2478 = !DILocation(line: 182, column: 31, scope: !2472)
!2479 = !DILocalVariable(name: "__last", arg: 2, scope: !2472, file: !2473, line: 182, type: !748)
!2480 = !DILocation(line: 182, column: 57, scope: !2472)
!2481 = !DILocation(line: 196, column: 12, scope: !2472)
!2482 = !DILocation(line: 196, column: 21, scope: !2472)
!2483 = !DILocation(line: 195, column: 7, scope: !2472)
!2484 = !DILocation(line: 197, column: 5, scope: !2472)
!2485 = distinct !DISubprogram(name: "__destroy<unsigned int *>", linkageName: "_ZNSt12_Destroy_auxILb1EE9__destroyIPjEEvT_S3_", scope: !2486, file: !2473, line: 172, type: !2474, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !614, templateParams: !2476, declaration: !2489, retainedNodes: !848)
!2486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Destroy_aux<true>", scope: !361, file: !2473, line: 168, size: 8, flags: DIFlagTypePassByValue, elements: !848, templateParams: !2487, identifier: "_ZTSSt12_Destroy_auxILb1EE")
!2487 = !{!2488}
!2488 = !DITemplateValueParameter(type: !139, value: i1 true)
!2489 = !DISubprogram(name: "__destroy<unsigned int *>", linkageName: "_ZNSt12_Destroy_auxILb1EE9__destroyIPjEEvT_S3_", scope: !2486, file: !2473, line: 172, type: !2474, scopeLine: 172, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0, templateParams: !2476)
!2490 = !DILocalVariable(arg: 1, scope: !2485, file: !2473, line: 172, type: !748)
!2491 = !DILocation(line: 172, column: 35, scope: !2485)
!2492 = !DILocalVariable(arg: 2, scope: !2485, file: !2473, line: 172, type: !748)
!2493 = !DILocation(line: 172, column: 53, scope: !2485)
!2494 = !DILocation(line: 172, column: 57, scope: !2485)
!2495 = distinct !DISubprogram(name: "_run_optflow", linkageName: "_ZN5Linux19OpticalFlow_Onboard12_run_optflowEv", scope: !671, file: !2, line: 229, type: !1472, scopeLine: 230, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !614, declaration: !1471, retainedNodes: !848)
!2496 = !DILocalVariable(name: "this", arg: 1, scope: !2495, type: !670, flags: DIFlagArtificial | DIFlagObjectPointer)
!2497 = !DILocation(line: 0, scope: !2495)
!2498 = !DILocalVariable(name: "rate_x", scope: !2495, file: !2, line: 231, type: !547)
!2499 = !DILocation(line: 231, column: 11, scope: !2495)
!2500 = !DILocalVariable(name: "rate_y", scope: !2495, file: !2, line: 231, type: !547)
!2501 = !DILocation(line: 231, column: 19, scope: !2495)
!2502 = !DILocalVariable(name: "rate_z", scope: !2495, file: !2, line: 231, type: !547)
!2503 = !DILocation(line: 231, column: 27, scope: !2495)
!2504 = !DILocalVariable(name: "gyro_rate", scope: !2495, file: !2, line: 232, type: !1367)
!2505 = !DILocation(line: 232, column: 14, scope: !2495)
!2506 = !DILocalVariable(name: "flow_rate", scope: !2495, file: !2, line: 233, type: !2507)
!2507 = !DIDerivedType(tag: DW_TAG_typedef, name: "Vector2f", file: !1476, line: 161, baseType: !1475)
!2508 = !DILocation(line: 233, column: 14, scope: !2495)
!2509 = !DILocalVariable(name: "video_frame", scope: !2495, file: !2, line: 234, type: !699)
!2510 = !DILocation(line: 234, column: 20, scope: !2495)
!2511 = !DILocalVariable(name: "convert_buffer_size", scope: !2495, file: !2, line: 235, type: !105)
!2512 = !DILocation(line: 235, column: 14, scope: !2495)
!2513 = !DILocalVariable(name: "output_buffer_size", scope: !2495, file: !2, line: 235, type: !105)
!2514 = !DILocation(line: 235, column: 39, scope: !2495)
!2515 = !DILocalVariable(name: "crop_left", scope: !2495, file: !2, line: 236, type: !105)
!2516 = !DILocation(line: 236, column: 14, scope: !2495)
!2517 = !DILocalVariable(name: "crop_top", scope: !2495, file: !2, line: 236, type: !105)
!2518 = !DILocation(line: 236, column: 29, scope: !2495)
!2519 = !DILocalVariable(name: "shrink_scale", scope: !2495, file: !2, line: 237, type: !105)
!2520 = !DILocation(line: 237, column: 14, scope: !2495)
!2521 = !DILocalVariable(name: "shrink_width", scope: !2495, file: !2, line: 237, type: !105)
!2522 = !DILocation(line: 237, column: 32, scope: !2495)
!2523 = !DILocalVariable(name: "shrink_height", scope: !2495, file: !2, line: 237, type: !105)
!2524 = !DILocation(line: 237, column: 50, scope: !2495)
!2525 = !DILocalVariable(name: "shrink_width_offset", scope: !2495, file: !2, line: 238, type: !105)
!2526 = !DILocation(line: 238, column: 14, scope: !2495)
!2527 = !DILocalVariable(name: "shrink_height_offset", scope: !2495, file: !2, line: 238, type: !105)
!2528 = !DILocation(line: 238, column: 39, scope: !2495)
!2529 = !DILocalVariable(name: "convert_buffer", scope: !2495, file: !2, line: 239, type: !154)
!2530 = !DILocation(line: 239, column: 14, scope: !2495)
!2531 = !DILocalVariable(name: "output_buffer", scope: !2495, file: !2, line: 239, type: !154)
!2532 = !DILocation(line: 239, column: 38, scope: !2495)
!2533 = !DILocalVariable(name: "qual", scope: !2495, file: !2, line: 240, type: !115)
!2534 = !DILocation(line: 240, column: 13, scope: !2495)
!2535 = !DILocation(line: 242, column: 9, scope: !2536)
!2536 = distinct !DILexicalBlock(scope: !2495, file: !2, line: 242, column: 9)
!2537 = !DILocation(line: 242, column: 17, scope: !2536)
!2538 = !DILocation(line: 242, column: 9, scope: !2495)
!2539 = !DILocation(line: 243, column: 13, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2541, file: !2, line: 243, column: 13)
!2541 = distinct !DILexicalBlock(scope: !2536, file: !2, line: 242, column: 39)
!2542 = !DILocation(line: 243, column: 33, scope: !2540)
!2543 = !DILocation(line: 243, column: 36, scope: !2540)
!2544 = !DILocation(line: 243, column: 13, scope: !2541)
!2545 = !DILocation(line: 244, column: 35, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2540, file: !2, line: 243, column: 55)
!2547 = !DILocation(line: 244, column: 58, scope: !2546)
!2548 = !DILocation(line: 244, column: 56, scope: !2546)
!2549 = !DILocation(line: 244, column: 33, scope: !2546)
!2550 = !DILocation(line: 245, column: 9, scope: !2546)
!2551 = !DILocation(line: 246, column: 35, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2540, file: !2, line: 245, column: 16)
!2553 = !DILocation(line: 246, column: 44, scope: !2552)
!2554 = !DILocation(line: 246, column: 42, scope: !2552)
!2555 = !DILocation(line: 246, column: 33, scope: !2552)
!2556 = !DILocation(line: 249, column: 44, scope: !2541)
!2557 = !DILocation(line: 249, column: 37, scope: !2541)
!2558 = !DILocation(line: 249, column: 24, scope: !2541)
!2559 = !DILocation(line: 250, column: 14, scope: !2560)
!2560 = distinct !DILexicalBlock(scope: !2541, file: !2, line: 250, column: 13)
!2561 = !DILocation(line: 250, column: 13, scope: !2541)
!2562 = !DILocation(line: 251, column: 13, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2560, file: !2, line: 250, column: 30)
!2564 = !DILocation(line: 253, column: 5, scope: !2541)
!2565 = !DILocation(line: 255, column: 9, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2495, file: !2, line: 255, column: 9)
!2567 = !DILocation(line: 255, column: 29, scope: !2566)
!2568 = !DILocation(line: 255, column: 32, scope: !2566)
!2569 = !DILocation(line: 255, column: 9, scope: !2495)
!2570 = !DILocation(line: 256, column: 28, scope: !2571)
!2571 = distinct !DILexicalBlock(scope: !2566, file: !2, line: 255, column: 51)
!2572 = !DILocation(line: 259, column: 43, scope: !2571)
!2573 = !DILocation(line: 259, column: 36, scope: !2571)
!2574 = !DILocation(line: 259, column: 23, scope: !2571)
!2575 = !DILocation(line: 260, column: 14, scope: !2576)
!2576 = distinct !DILexicalBlock(scope: !2571, file: !2, line: 260, column: 13)
!2577 = !DILocation(line: 260, column: 13, scope: !2571)
!2578 = !DILocation(line: 261, column: 17, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !2580, file: !2, line: 261, column: 17)
!2580 = distinct !DILexicalBlock(scope: !2576, file: !2, line: 260, column: 29)
!2581 = !DILocation(line: 261, column: 17, scope: !2580)
!2582 = !DILocation(line: 262, column: 22, scope: !2583)
!2583 = distinct !DILexicalBlock(scope: !2579, file: !2, line: 261, column: 33)
!2584 = !DILocation(line: 262, column: 17, scope: !2583)
!2585 = !DILocation(line: 263, column: 13, scope: !2583)
!2586 = !DILocation(line: 265, column: 13, scope: !2580)
!2587 = !DILocation(line: 267, column: 5, scope: !2571)
!2588 = !DILocation(line: 269, column: 9, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !2495, file: !2, line: 269, column: 9)
!2590 = !DILocation(line: 269, column: 9, scope: !2495)
!2591 = !DILocation(line: 270, column: 13, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !2593, file: !2, line: 270, column: 13)
!2593 = distinct !DILexicalBlock(scope: !2589, file: !2, line: 269, column: 30)
!2594 = !DILocation(line: 270, column: 36, scope: !2592)
!2595 = !DILocation(line: 270, column: 34, scope: !2592)
!2596 = !DILocation(line: 270, column: 13, scope: !2593)
!2597 = !DILocation(line: 271, column: 39, scope: !2598)
!2598 = distinct !DILexicalBlock(scope: !2592, file: !2, line: 270, column: 59)
!2599 = !DILocation(line: 271, column: 61, scope: !2598)
!2600 = !DILocation(line: 271, column: 26, scope: !2598)
!2601 = !DILocation(line: 273, column: 9, scope: !2598)
!2602 = !DILocation(line: 274, column: 39, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !2592, file: !2, line: 273, column: 16)
!2604 = !DILocation(line: 274, column: 60, scope: !2603)
!2605 = !DILocation(line: 274, column: 26, scope: !2603)
!2606 = !DILocation(line: 278, column: 59, scope: !2593)
!2607 = !DILocation(line: 278, column: 57, scope: !2593)
!2608 = !DILocation(line: 278, column: 22, scope: !2593)
!2609 = !DILocation(line: 279, column: 61, scope: !2593)
!2610 = !DILocation(line: 279, column: 59, scope: !2593)
!2611 = !DILocation(line: 279, column: 23, scope: !2593)
!2612 = !DILocation(line: 281, column: 32, scope: !2593)
!2613 = !DILocation(line: 281, column: 55, scope: !2593)
!2614 = !DILocation(line: 281, column: 53, scope: !2593)
!2615 = !DILocation(line: 281, column: 69, scope: !2593)
!2616 = !DILocation(line: 281, column: 29, scope: !2593)
!2617 = !DILocation(line: 282, column: 33, scope: !2593)
!2618 = !DILocation(line: 282, column: 57, scope: !2593)
!2619 = !DILocation(line: 282, column: 55, scope: !2593)
!2620 = !DILocation(line: 282, column: 72, scope: !2593)
!2621 = !DILocation(line: 282, column: 30, scope: !2593)
!2622 = !DILocation(line: 283, column: 5, scope: !2593)
!2623 = !DILocation(line: 283, column: 16, scope: !2624)
!2624 = distinct !DILexicalBlock(scope: !2589, file: !2, line: 283, column: 16)
!2625 = !DILocation(line: 283, column: 16, scope: !2589)
!2626 = !DILocation(line: 284, column: 21, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !2624, file: !2, line: 283, column: 35)
!2628 = !DILocation(line: 284, column: 42, scope: !2627)
!2629 = !DILocation(line: 284, column: 46, scope: !2627)
!2630 = !DILocation(line: 284, column: 19, scope: !2627)
!2631 = !DILocation(line: 286, column: 20, scope: !2627)
!2632 = !DILocation(line: 286, column: 42, scope: !2627)
!2633 = !DILocation(line: 286, column: 46, scope: !2627)
!2634 = !DILocation(line: 286, column: 18, scope: !2627)
!2635 = !DILocation(line: 288, column: 5, scope: !2627)
!2636 = !DILocation(line: 290, column: 5, scope: !2495)
!2637 = !DILocation(line: 292, column: 14, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !2639, file: !2, line: 292, column: 13)
!2639 = distinct !DILexicalBlock(scope: !2495, file: !2, line: 290, column: 17)
!2640 = !DILocation(line: 292, column: 24, scope: !2638)
!2641 = !DILocation(line: 292, column: 13, scope: !2639)
!2642 = !DILocation(line: 293, column: 17, scope: !2643)
!2643 = distinct !DILexicalBlock(scope: !2644, file: !2, line: 293, column: 17)
!2644 = distinct !DILexicalBlock(scope: !2638, file: !2, line: 292, column: 48)
!2645 = !DILocation(line: 293, column: 17, scope: !2644)
!2646 = !DILocation(line: 294, column: 21, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2643, file: !2, line: 293, column: 33)
!2648 = !DILocation(line: 294, column: 16, scope: !2647)
!2649 = !DILocation(line: 295, column: 13, scope: !2647)
!2650 = !DILocation(line: 297, column: 17, scope: !2651)
!2651 = distinct !DILexicalBlock(scope: !2644, file: !2, line: 297, column: 17)
!2652 = !DILocation(line: 297, column: 17, scope: !2644)
!2653 = !DILocation(line: 298, column: 21, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2651, file: !2, line: 297, column: 32)
!2655 = !DILocation(line: 298, column: 16, scope: !2654)
!2656 = !DILocation(line: 299, column: 13, scope: !2654)
!2657 = !DILocation(line: 301, column: 13, scope: !2644)
!2658 = !DILocation(line: 304, column: 13, scope: !2659)
!2659 = distinct !DILexicalBlock(scope: !2639, file: !2, line: 304, column: 13)
!2660 = !DILocation(line: 304, column: 21, scope: !2659)
!2661 = !DILocation(line: 304, column: 13, scope: !2639)
!2662 = !DILocation(line: 305, column: 58, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2659, file: !2, line: 304, column: 43)
!2664 = !DILocation(line: 306, column: 17, scope: !2663)
!2665 = !DILocation(line: 306, column: 37, scope: !2663)
!2666 = !DILocation(line: 306, column: 42, scope: !2663)
!2667 = !DILocation(line: 305, column: 13, scope: !2663)
!2668 = !DILocation(line: 308, column: 32, scope: !2663)
!2669 = !DILocation(line: 308, column: 41, scope: !2663)
!2670 = !DILocation(line: 308, column: 61, scope: !2663)
!2671 = !DILocation(line: 308, column: 13, scope: !2663)
!2672 = !DILocation(line: 309, column: 32, scope: !2663)
!2673 = !DILocation(line: 309, column: 38, scope: !2663)
!2674 = !DILocation(line: 309, column: 54, scope: !2663)
!2675 = !DILocation(line: 309, column: 13, scope: !2663)
!2676 = !DILocation(line: 310, column: 9, scope: !2663)
!2677 = !DILocation(line: 312, column: 13, scope: !2678)
!2678 = distinct !DILexicalBlock(scope: !2639, file: !2, line: 312, column: 13)
!2679 = !DILocation(line: 312, column: 13, scope: !2639)
!2680 = !DILocation(line: 315, column: 57, scope: !2681)
!2681 = distinct !DILexicalBlock(scope: !2678, file: !2, line: 312, column: 34)
!2682 = !DILocation(line: 315, column: 63, scope: !2681)
!2683 = !DILocation(line: 316, column: 34, scope: !2681)
!2684 = !DILocation(line: 316, column: 56, scope: !2681)
!2685 = !DILocation(line: 317, column: 34, scope: !2681)
!2686 = !DILocation(line: 317, column: 55, scope: !2681)
!2687 = !DILocation(line: 318, column: 34, scope: !2681)
!2688 = !DILocation(line: 318, column: 56, scope: !2681)
!2689 = !DILocation(line: 319, column: 34, scope: !2681)
!2690 = !DILocation(line: 319, column: 48, scope: !2681)
!2691 = !DILocation(line: 315, column: 13, scope: !2681)
!2692 = !DILocation(line: 320, column: 32, scope: !2681)
!2693 = !DILocation(line: 320, column: 41, scope: !2681)
!2694 = !DILocation(line: 320, column: 64, scope: !2681)
!2695 = !DILocation(line: 320, column: 62, scope: !2681)
!2696 = !DILocation(line: 320, column: 13, scope: !2681)
!2697 = !DILocation(line: 321, column: 32, scope: !2681)
!2698 = !DILocation(line: 321, column: 38, scope: !2681)
!2699 = !DILocation(line: 321, column: 53, scope: !2681)
!2700 = !DILocation(line: 321, column: 13, scope: !2681)
!2701 = !DILocation(line: 322, column: 9, scope: !2681)
!2702 = !DILocation(line: 322, column: 20, scope: !2703)
!2703 = distinct !DILexicalBlock(scope: !2678, file: !2, line: 322, column: 20)
!2704 = !DILocation(line: 322, column: 20, scope: !2678)
!2705 = !DILocation(line: 323, column: 55, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !2703, file: !2, line: 322, column: 39)
!2707 = !DILocation(line: 323, column: 61, scope: !2706)
!2708 = !DILocation(line: 324, column: 32, scope: !2706)
!2709 = !DILocation(line: 325, column: 32, scope: !2706)
!2710 = !DILocation(line: 326, column: 32, scope: !2706)
!2711 = !DILocation(line: 323, column: 13, scope: !2706)
!2712 = !DILocation(line: 328, column: 32, scope: !2706)
!2713 = !DILocation(line: 328, column: 41, scope: !2706)
!2714 = !DILocation(line: 328, column: 64, scope: !2706)
!2715 = !DILocation(line: 328, column: 62, scope: !2706)
!2716 = !DILocation(line: 328, column: 13, scope: !2706)
!2717 = !DILocation(line: 329, column: 32, scope: !2706)
!2718 = !DILocation(line: 329, column: 38, scope: !2706)
!2719 = !DILocation(line: 329, column: 53, scope: !2706)
!2720 = !DILocation(line: 329, column: 13, scope: !2706)
!2721 = !DILocation(line: 330, column: 9, scope: !2706)
!2722 = !DILocation(line: 334, column: 13, scope: !2723)
!2723 = distinct !DILexicalBlock(scope: !2639, file: !2, line: 334, column: 13)
!2724 = !DILocation(line: 334, column: 31, scope: !2723)
!2725 = !DILocation(line: 334, column: 36, scope: !2723)
!2726 = !DILocation(line: 334, column: 13, scope: !2639)
!2727 = !DILocation(line: 335, column: 13, scope: !2728)
!2728 = distinct !DILexicalBlock(scope: !2723, file: !2, line: 334, column: 45)
!2729 = !DILocation(line: 335, column: 31, scope: !2728)
!2730 = !DILocation(line: 336, column: 13, scope: !2728)
!2731 = distinct !{!2731, !2636, !2732, !2733}
!2732 = !DILocation(line: 395, column: 5, scope: !2495)
!2733 = !{!"llvm.loop.mustprogress"}
!2734 = !DILocation(line: 340, column: 9, scope: !2639)
!2735 = !DILocation(line: 341, column: 23, scope: !2639)
!2736 = !DILocation(line: 341, column: 19, scope: !2639)
!2737 = !DILocation(line: 341, column: 21, scope: !2639)
!2738 = !DILocation(line: 342, column: 23, scope: !2639)
!2739 = !DILocation(line: 342, column: 19, scope: !2639)
!2740 = !DILocation(line: 342, column: 21, scope: !2639)
!2741 = !DILocation(line: 343, column: 23, scope: !2639)
!2742 = !DILocation(line: 343, column: 19, scope: !2639)
!2743 = !DILocation(line: 343, column: 21, scope: !2639)
!2744 = !DILocation(line: 367, column: 16, scope: !2639)
!2745 = !DILocation(line: 367, column: 46, scope: !2639)
!2746 = !DILocation(line: 367, column: 64, scope: !2639)
!2747 = !DILocation(line: 368, column: 59, scope: !2639)
!2748 = !DILocation(line: 369, column: 48, scope: !2639)
!2749 = !DILocation(line: 370, column: 36, scope: !2639)
!2750 = !DILocation(line: 370, column: 54, scope: !2639)
!2751 = !DILocation(line: 369, column: 58, scope: !2639)
!2752 = !DILocation(line: 371, column: 47, scope: !2639)
!2753 = !DILocation(line: 371, column: 61, scope: !2639)
!2754 = !DILocation(line: 367, column: 23, scope: !2639)
!2755 = !DILocation(line: 367, column: 14, scope: !2639)
!2756 = !DILocation(line: 374, column: 29, scope: !2639)
!2757 = !DILocation(line: 374, column: 9, scope: !2639)
!2758 = !DILocation(line: 375, column: 45, scope: !2639)
!2759 = !DILocation(line: 375, column: 35, scope: !2639)
!2760 = !DILocation(line: 375, column: 47, scope: !2639)
!2761 = !DILocation(line: 375, column: 9, scope: !2639)
!2762 = !DILocation(line: 375, column: 32, scope: !2639)
!2763 = !DILocation(line: 377, column: 45, scope: !2639)
!2764 = !DILocation(line: 377, column: 35, scope: !2639)
!2765 = !DILocation(line: 377, column: 47, scope: !2639)
!2766 = !DILocation(line: 377, column: 9, scope: !2639)
!2767 = !DILocation(line: 377, column: 32, scope: !2639)
!2768 = !DILocation(line: 379, column: 46, scope: !2639)
!2769 = !DILocation(line: 380, column: 34, scope: !2639)
!2770 = !DILocation(line: 380, column: 52, scope: !2639)
!2771 = !DILocation(line: 379, column: 56, scope: !2639)
!2772 = !DILocation(line: 379, column: 9, scope: !2639)
!2773 = !DILocation(line: 379, column: 31, scope: !2639)
!2774 = !DILocation(line: 381, column: 46, scope: !2639)
!2775 = !DILocation(line: 381, column: 50, scope: !2639)
!2776 = !DILocation(line: 381, column: 66, scope: !2639)
!2777 = !DILocation(line: 381, column: 48, scope: !2639)
!2778 = !DILocation(line: 381, column: 69, scope: !2639)
!2779 = !DILocation(line: 382, column: 48, scope: !2639)
!2780 = !DILocation(line: 383, column: 35, scope: !2639)
!2781 = !DILocation(line: 383, column: 53, scope: !2639)
!2782 = !DILocation(line: 382, column: 58, scope: !2639)
!2783 = !DILocation(line: 382, column: 35, scope: !2639)
!2784 = !DILocation(line: 381, column: 9, scope: !2639)
!2785 = !DILocation(line: 381, column: 32, scope: !2639)
!2786 = !DILocation(line: 384, column: 46, scope: !2639)
!2787 = !DILocation(line: 384, column: 50, scope: !2639)
!2788 = !DILocation(line: 384, column: 66, scope: !2639)
!2789 = !DILocation(line: 384, column: 48, scope: !2639)
!2790 = !DILocation(line: 384, column: 69, scope: !2639)
!2791 = !DILocation(line: 385, column: 48, scope: !2639)
!2792 = !DILocation(line: 386, column: 35, scope: !2639)
!2793 = !DILocation(line: 386, column: 53, scope: !2639)
!2794 = !DILocation(line: 385, column: 58, scope: !2639)
!2795 = !DILocation(line: 385, column: 35, scope: !2639)
!2796 = !DILocation(line: 384, column: 9, scope: !2639)
!2797 = !DILocation(line: 384, column: 32, scope: !2639)
!2798 = !DILocation(line: 387, column: 28, scope: !2639)
!2799 = !DILocation(line: 387, column: 9, scope: !2639)
!2800 = !DILocation(line: 387, column: 26, scope: !2639)
!2801 = !DILocation(line: 388, column: 9, scope: !2639)
!2802 = !DILocation(line: 388, column: 25, scope: !2639)
!2803 = !DILocation(line: 389, column: 31, scope: !2639)
!2804 = !DILocation(line: 389, column: 9, scope: !2639)
!2805 = !DILocation(line: 392, column: 9, scope: !2639)
!2806 = !DILocation(line: 392, column: 29, scope: !2639)
!2807 = !DILocation(line: 392, column: 19, scope: !2639)
!2808 = !DILocation(line: 393, column: 9, scope: !2639)
!2809 = !DILocation(line: 393, column: 27, scope: !2639)
!2810 = !DILocation(line: 394, column: 9, scope: !2639)
!2811 = !DILocation(line: 394, column: 25, scope: !2639)
!2812 = distinct !DISubprogram(name: "Vector3", linkageName: "_ZN7Vector3IfEC2Ev", scope: !1369, file: !1368, line: 71, type: !1375, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !614, declaration: !1374, retainedNodes: !848)
!2813 = !DILocalVariable(name: "this", arg: 1, scope: !2812, type: !2814, flags: DIFlagArtificial | DIFlagObjectPointer)
!2814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!2815 = !DILocation(line: 0, scope: !2812)
!2816 = !DILocation(line: 72, column: 17, scope: !2817)
!2817 = distinct !DILexicalBlock(scope: !2812, file: !1368, line: 71, column: 18)
!2818 = !DILocation(line: 72, column: 19, scope: !2817)
!2819 = !DILocation(line: 72, column: 13, scope: !2817)
!2820 = !DILocation(line: 72, column: 15, scope: !2817)
!2821 = !DILocation(line: 72, column: 9, scope: !2817)
!2822 = !DILocation(line: 72, column: 11, scope: !2817)
!2823 = !DILocation(line: 73, column: 5, scope: !2812)
!2824 = distinct !DISubprogram(name: "Vector2", linkageName: "_ZN7Vector2IfEC2Ev", scope: !1475, file: !1476, line: 41, type: !1481, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !614, declaration: !1480, retainedNodes: !848)
!2825 = !DILocalVariable(name: "this", arg: 1, scope: !2824, type: !2826, flags: DIFlagArtificial | DIFlagObjectPointer)
!2826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64)
!2827 = !DILocation(line: 0, scope: !2824)
!2828 = !DILocation(line: 42, column: 13, scope: !2829)
!2829 = distinct !DILexicalBlock(scope: !2824, file: !1476, line: 41, column: 18)
!2830 = !DILocation(line: 42, column: 15, scope: !2829)
!2831 = !DILocation(line: 42, column: 9, scope: !2829)
!2832 = !DILocation(line: 42, column: 11, scope: !2829)
!2833 = !DILocation(line: 43, column: 5, scope: !2824)
!2834 = distinct !DISubprogram(name: "operator()", linkageName: "_ZNK7FunctorIvJRfS0_S0_EEclES0_S0_S0_", scope: !1329, file: !1330, line: 53, type: !1350, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !614, declaration: !1349, retainedNodes: !848)
!2835 = !DILocalVariable(name: "this", arg: 1, scope: !2834, type: !2836, flags: DIFlagArtificial | DIFlagObjectPointer)
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!2837 = !DILocation(line: 0, scope: !2834)
!2838 = !DILocalVariable(name: "args", arg: 2, scope: !2834, file: !1330, line: 53, type: !1337)
!2839 = !DILocation(line: 53, column: 32, scope: !2834)
!2840 = !DILocalVariable(name: "args", arg: 3, scope: !2834, file: !1330, line: 53, type: !1337)
!2841 = !DILocalVariable(name: "args", arg: 4, scope: !2834, file: !1330, line: 53, type: !1337)
!2842 = !DILocation(line: 55, column: 16, scope: !2834)
!2843 = !DILocation(line: 55, column: 24, scope: !2834)
!2844 = !DILocation(line: 55, column: 30, scope: !2834)
!2845 = !DILocation(line: 55, column: 9, scope: !2834)
!2846 = distinct !DISubprogram(name: "base", linkageName: "_ZNK9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEE4baseEv", scope: !1060, file: !1061, line: 1105, type: !1113, scopeLine: 1106, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !614, declaration: !1112, retainedNodes: !848)
!2847 = !DILocalVariable(name: "this", arg: 1, scope: !2846, type: !2348, flags: DIFlagArtificial | DIFlagObjectPointer)
!2848 = !DILocation(line: 0, scope: !2846)
!2849 = !DILocation(line: 1106, column: 16, scope: !2846)
!2850 = !DILocation(line: 1106, column: 9, scope: !2846)
!2851 = distinct !DISubprogram(name: "__normal_iterator", linkageName: "_ZN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEC2ERKS1_", scope: !1060, file: !1061, line: 1027, type: !1069, scopeLine: 1028, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !614, declaration: !1068, retainedNodes: !848)
!2852 = !DILocalVariable(name: "this", arg: 1, scope: !2851, type: !2354, flags: DIFlagArtificial | DIFlagObjectPointer)
!2853 = !DILocation(line: 0, scope: !2851)
!2854 = !DILocalVariable(name: "__i", arg: 2, scope: !2851, file: !1061, line: 1027, type: !1071)
!2855 = !DILocation(line: 1027, column: 42, scope: !2851)
!2856 = !DILocation(line: 1028, column: 9, scope: !2851)
!2857 = !DILocation(line: 1028, column: 20, scope: !2851)
!2858 = !DILocation(line: 1028, column: 27, scope: !2851)
!2859 = distinct !DISubprogram(name: "_Vector_base", linkageName: "_ZNSt12_Vector_baseIjSaIjEEC2Ev", scope: !728, file: !725, line: 288, type: !910, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !614, declaration: !909, retainedNodes: !848)
!2860 = !DILocalVariable(name: "this", arg: 1, scope: !2859, type: !2382, flags: DIFlagArtificial | DIFlagObjectPointer)
!2861 = !DILocation(line: 0, scope: !2859)
!2862 = !DILocation(line: 288, column: 7, scope: !2859)
!2863 = !DILocation(line: 288, column: 30, scope: !2859)
!2864 = distinct !DISubprogram(name: "_Vector_impl", linkageName: "_ZNSt12_Vector_baseIjSaIjEE12_Vector_implC2Ev", scope: !731, file: !725, line: 131, type: !876, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !614, declaration: !875, retainedNodes: !848)
!2865 = !DILocalVariable(name: "this", arg: 1, scope: !2864, type: !2433, flags: DIFlagArtificial | DIFlagObjectPointer)
!2866 = !DILocation(line: 0, scope: !2864)
!2867 = !DILocation(line: 133, column: 4, scope: !2864)
!2868 = !DILocation(line: 131, column: 2, scope: !2864)
!2869 = !DILocation(line: 134, column: 4, scope: !2864)
!2870 = distinct !DISubprogram(name: "allocator", linkageName: "_ZNSaIjEC2Ev", scope: !751, file: !752, line: 156, type: !801, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !614, declaration: !800, retainedNodes: !848)
!2871 = !DILocalVariable(name: "this", arg: 1, scope: !2870, type: !2440, flags: DIFlagArtificial | DIFlagObjectPointer)
!2872 = !DILocation(line: 0, scope: !2870)
!2873 = !DILocation(line: 156, column: 7, scope: !2870)
!2874 = !DILocation(line: 156, column: 38, scope: !2870)
!2875 = distinct !DISubprogram(name: "_Vector_impl_data", linkageName: "_ZNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataC2Ev", scope: !851, file: !725, line: 97, type: !859, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !614, declaration: !858, retainedNodes: !848)
!2876 = !DILocalVariable(name: "this", arg: 1, scope: !2875, type: !2877, flags: DIFlagArtificial | DIFlagObjectPointer)
!2877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!2878 = !DILocation(line: 0, scope: !2875)
!2879 = !DILocation(line: 98, column: 4, scope: !2875)
!2880 = !DILocation(line: 98, column: 16, scope: !2875)
!2881 = !DILocation(line: 98, column: 29, scope: !2875)
!2882 = !DILocation(line: 99, column: 4, scope: !2875)
!2883 = distinct !DISubprogram(name: "new_allocator", linkageName: "_ZN9__gnu_cxx13new_allocatorIjEC2Ev", scope: !757, file: !758, line: 79, type: !761, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !614, declaration: !760, retainedNodes: !848)
!2884 = !DILocalVariable(name: "this", arg: 1, scope: !2883, type: !2447, flags: DIFlagArtificial | DIFlagObjectPointer)
!2885 = !DILocation(line: 0, scope: !2883)
!2886 = !DILocation(line: 79, column: 47, scope: !2883)
!2887 = distinct !DISubprogram(name: "init", linkageName: "_ZN5Linux14RCOutput_Bebop4initEv", scope: !156, file: !61, line: 237, type: !243, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !57, declaration: !250, retainedNodes: !848)
!2888 = !DILocalVariable(name: "this", arg: 1, scope: !2887, type: !155, flags: DIFlagArtificial | DIFlagObjectPointer)
!2889 = !DILocation(line: 0, scope: !2887)
!2890 = !DILocalVariable(name: "ret", scope: !2887, file: !61, line: 239, type: !97)
!2891 = !DILocation(line: 239, column: 9, scope: !2887)
!2892 = !DILocalVariable(name: "param", scope: !2887, file: !61, line: 240, type: !2040)
!2893 = !DILocation(line: 240, column: 24, scope: !2887)
!2894 = !DILocalVariable(name: "attr", scope: !2887, file: !61, line: 241, type: !2030)
!2895 = !DILocation(line: 241, column: 20, scope: !2887)
!2896 = !DILocalVariable(name: "cond_attr", scope: !2887, file: !61, line: 242, type: !2897)
!2897 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_condattr_t", file: !178, line: 45, baseType: !2898)
!2898 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !178, line: 41, size: 32, flags: DIFlagTypePassByValue, elements: !2899, identifier: "_ZTS18pthread_condattr_t")
!2899 = !{!2900, !2902}
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !2898, file: !178, line: 43, baseType: !2901, size: 32)
!2901 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 32, elements: !166)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !2898, file: !178, line: 44, baseType: !97, size: 32)
!2903 = !DILocation(line: 242, column: 24, scope: !2887)
!2904 = !DILocation(line: 244, column: 16, scope: !2887)
!2905 = !DILocation(line: 244, column: 20, scope: !2887)
!2906 = !DILocation(line: 244, column: 26, scope: !2887)
!2907 = !DILocation(line: 244, column: 5, scope: !2887)
!2908 = !DILocation(line: 244, column: 14, scope: !2887)
!2909 = !DILocation(line: 245, column: 9, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !2887, file: !61, line: 245, column: 9)
!2911 = !DILocation(line: 245, column: 18, scope: !2910)
!2912 = !DILocation(line: 245, column: 9, scope: !2887)
!2913 = !DILocation(line: 246, column: 9, scope: !2914)
!2914 = distinct !DILexicalBlock(scope: !2910, file: !61, line: 245, column: 27)
!2915 = !DILocation(line: 251, column: 31, scope: !2887)
!2916 = !DILocation(line: 251, column: 11, scope: !2887)
!2917 = !DILocation(line: 251, column: 9, scope: !2887)
!2918 = !DILocation(line: 252, column: 9, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !2887, file: !61, line: 252, column: 9)
!2920 = !DILocation(line: 252, column: 13, scope: !2919)
!2921 = !DILocation(line: 252, column: 9, scope: !2887)
!2922 = !DILocation(line: 253, column: 9, scope: !2923)
!2923 = distinct !DILexicalBlock(scope: !2919, file: !61, line: 252, column: 19)
!2924 = !DILocation(line: 254, column: 9, scope: !2923)
!2925 = !DILocation(line: 257, column: 25, scope: !2887)
!2926 = !DILocation(line: 257, column: 5, scope: !2887)
!2927 = !DILocation(line: 259, column: 5, scope: !2887)
!2928 = !DILocation(line: 260, column: 5, scope: !2887)
!2929 = !DILocation(line: 261, column: 30, scope: !2887)
!2930 = !DILocation(line: 261, column: 11, scope: !2887)
!2931 = !DILocation(line: 261, column: 9, scope: !2887)
!2932 = !DILocation(line: 262, column: 5, scope: !2887)
!2933 = !DILocation(line: 263, column: 9, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2887, file: !61, line: 263, column: 9)
!2935 = !DILocation(line: 263, column: 13, scope: !2934)
!2936 = !DILocation(line: 263, column: 9, scope: !2887)
!2937 = !DILocation(line: 264, column: 9, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !2934, file: !61, line: 263, column: 19)
!2939 = !DILocation(line: 265, column: 9, scope: !2938)
!2940 = !DILocation(line: 268, column: 11, scope: !2887)
!2941 = !DILocation(line: 268, column: 9, scope: !2887)
!2942 = !DILocation(line: 269, column: 9, scope: !2943)
!2943 = distinct !DILexicalBlock(scope: !2887, file: !61, line: 269, column: 9)
!2944 = !DILocation(line: 269, column: 13, scope: !2943)
!2945 = !DILocation(line: 269, column: 9, scope: !2887)
!2946 = !DILocation(line: 270, column: 9, scope: !2947)
!2947 = distinct !DILexicalBlock(scope: !2943, file: !61, line: 269, column: 19)
!2948 = !DILocation(line: 271, column: 9, scope: !2947)
!2949 = !DILocation(line: 273, column: 5, scope: !2887)
!2950 = !DILocation(line: 274, column: 5, scope: !2887)
!2951 = !DILocation(line: 275, column: 5, scope: !2887)
!2952 = !DILocation(line: 276, column: 27, scope: !2887)
!2953 = !DILocation(line: 276, column: 11, scope: !2887)
!2954 = !DILocation(line: 276, column: 9, scope: !2887)
!2955 = !DILocation(line: 277, column: 9, scope: !2956)
!2956 = distinct !DILexicalBlock(scope: !2887, file: !61, line: 277, column: 9)
!2957 = !DILocation(line: 277, column: 13, scope: !2956)
!2958 = !DILocation(line: 277, column: 9, scope: !2887)
!2959 = !DILocation(line: 278, column: 9, scope: !2960)
!2960 = distinct !DILexicalBlock(scope: !2956, file: !61, line: 277, column: 19)
!2961 = !DILocation(line: 279, column: 9, scope: !2960)
!2962 = !DILocation(line: 282, column: 5, scope: !2887)
!2963 = !DILocation(line: 285, column: 5, scope: !2887)
!2964 = !DILocation(line: 285, column: 16, scope: !2887)
!2965 = !DILabel(scope: !2887, name: "exit", file: !61, line: 287)
!2966 = !DILocation(line: 287, column: 1, scope: !2887)
!2967 = !DILocation(line: 288, column: 27, scope: !2887)
!2968 = !DILocation(line: 288, column: 5, scope: !2887)
!2969 = !DILocation(line: 289, column: 5, scope: !2887)
!2970 = !DILocation(line: 290, column: 1, scope: !2887)
!2971 = distinct !DISubprogram(name: "set_freq", linkageName: "_ZN5Linux14RCOutput_Bebop8set_freqEjt", scope: !156, file: !61, line: 292, type: !252, scopeLine: 293, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !57, declaration: !251, retainedNodes: !848)
!2972 = !DILocalVariable(name: "this", arg: 1, scope: !2971, type: !155, flags: DIFlagArtificial | DIFlagObjectPointer)
!2973 = !DILocation(line: 0, scope: !2971)
!2974 = !DILocalVariable(name: "chmask", arg: 2, scope: !2971, file: !61, line: 292, type: !105)
!2975 = !DILocation(line: 292, column: 40, scope: !2971)
!2976 = !DILocalVariable(name: "freq_hz", arg: 3, scope: !2971, file: !61, line: 292, type: !109)
!2977 = !DILocation(line: 292, column: 57, scope: !2971)
!2978 = !DILocation(line: 294, column: 18, scope: !2971)
!2979 = !DILocation(line: 294, column: 5, scope: !2971)
!2980 = !DILocation(line: 294, column: 16, scope: !2971)
!2981 = !DILocation(line: 295, column: 1, scope: !2971)
!2982 = distinct !DISubprogram(name: "get_freq", linkageName: "_ZN5Linux14RCOutput_Bebop8get_freqEh", scope: !156, file: !61, line: 297, type: !255, scopeLine: 298, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !57, declaration: !254, retainedNodes: !848)
!2983 = !DILocalVariable(name: "this", arg: 1, scope: !2982, type: !155, flags: DIFlagArtificial | DIFlagObjectPointer)
!2984 = !DILocation(line: 0, scope: !2982)
!2985 = !DILocalVariable(name: "ch", arg: 2, scope: !2982, file: !61, line: 297, type: !115)
!2986 = !DILocation(line: 297, column: 43, scope: !2982)
!2987 = !DILocation(line: 299, column: 12, scope: !2982)
!2988 = !DILocation(line: 299, column: 5, scope: !2982)
!2989 = distinct !DISubprogram(name: "enable_ch", linkageName: "_ZN5Linux14RCOutput_Bebop9enable_chEh", scope: !156, file: !61, line: 302, type: !258, scopeLine: 303, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !57, declaration: !257, retainedNodes: !848)
!2990 = !DILocalVariable(name: "this", arg: 1, scope: !2989, type: !155, flags: DIFlagArtificial | DIFlagObjectPointer)
!2991 = !DILocation(line: 0, scope: !2989)
!2992 = !DILocalVariable(name: "ch", arg: 2, scope: !2989, file: !61, line: 302, type: !115)
!2993 = !DILocation(line: 302, column: 40, scope: !2989)
!2994 = !DILocation(line: 304, column: 1, scope: !2989)
!2995 = distinct !DISubprogram(name: "disable_ch", linkageName: "_ZN5Linux14RCOutput_Bebop10disable_chEh", scope: !156, file: !61, line: 306, type: !258, scopeLine: 307, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !57, declaration: !260, retainedNodes: !848)
!2996 = !DILocalVariable(name: "this", arg: 1, scope: !2995, type: !155, flags: DIFlagArtificial | DIFlagObjectPointer)
!2997 = !DILocation(line: 0, scope: !2995)
!2998 = !DILocalVariable(name: "ch", arg: 2, scope: !2995, file: !61, line: 306, type: !115)
!2999 = !DILocation(line: 306, column: 41, scope: !2995)
!3000 = !DILocation(line: 308, column: 5, scope: !2995)
!3001 = !DILocation(line: 309, column: 1, scope: !2995)
!3002 = distinct !DISubprogram(name: "write", linkageName: "_ZN5Linux14RCOutput_Bebop5writeEht", scope: !156, file: !61, line: 311, type: !262, scopeLine: 312, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !57, declaration: !261, retainedNodes: !848)
!3003 = !DILocalVariable(name: "this", arg: 1, scope: !3002, type: !155, flags: DIFlagArtificial | DIFlagObjectPointer)
!3004 = !DILocation(line: 0, scope: !3002)
!3005 = !DILocalVariable(name: "ch", arg: 2, scope: !3002, file: !61, line: 311, type: !115)
!3006 = !DILocation(line: 311, column: 36, scope: !3002)
!3007 = !DILocalVariable(name: "period_us", arg: 3, scope: !3002, file: !61, line: 311, type: !109)
!3008 = !DILocation(line: 311, column: 49, scope: !3002)
!3009 = !DILocation(line: 313, column: 9, scope: !3010)
!3010 = distinct !DILexicalBlock(scope: !3002, file: !61, line: 313, column: 9)
!3011 = !DILocation(line: 313, column: 12, scope: !3010)
!3012 = !DILocation(line: 313, column: 9, scope: !3002)
!3013 = !DILocation(line: 314, column: 9, scope: !3010)
!3014 = !DILocation(line: 316, column: 30, scope: !3002)
!3015 = !DILocation(line: 316, column: 5, scope: !3002)
!3016 = !DILocation(line: 316, column: 24, scope: !3002)
!3017 = !DILocation(line: 316, column: 28, scope: !3002)
!3018 = !DILocation(line: 318, column: 10, scope: !3019)
!3019 = distinct !DILexicalBlock(scope: !3002, file: !61, line: 318, column: 9)
!3020 = !DILocation(line: 318, column: 9, scope: !3002)
!3021 = !DILocation(line: 319, column: 9, scope: !3019)
!3022 = !DILocation(line: 320, column: 1, scope: !3002)
!3023 = distinct !DISubprogram(name: "cork", linkageName: "_ZN5Linux14RCOutput_Bebop4corkEv", scope: !156, file: !61, line: 322, type: !243, scopeLine: 323, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !57, declaration: !264, retainedNodes: !848)
!3024 = !DILocalVariable(name: "this", arg: 1, scope: !3023, type: !155, flags: DIFlagArtificial | DIFlagObjectPointer)
!3025 = !DILocation(line: 0, scope: !3023)
!3026 = !DILocation(line: 324, column: 5, scope: !3023)
!3027 = !DILocation(line: 324, column: 14, scope: !3023)
!3028 = !DILocation(line: 325, column: 1, scope: !3023)
!3029 = distinct !DISubprogram(name: "push", linkageName: "_ZN5Linux14RCOutput_Bebop4pushEv", scope: !156, file: !61, line: 327, type: !243, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !57, declaration: !265, retainedNodes: !848)
!3030 = !DILocalVariable(name: "this", arg: 1, scope: !3029, type: !155, flags: DIFlagArtificial | DIFlagObjectPointer)
!3031 = !DILocation(line: 0, scope: !3029)
!3032 = !DILocation(line: 329, column: 5, scope: !3029)
!3033 = !DILocation(line: 329, column: 14, scope: !3029)
!3034 = !DILocation(line: 330, column: 25, scope: !3029)
!3035 = !DILocation(line: 330, column: 5, scope: !3029)
!3036 = !DILocation(line: 331, column: 12, scope: !3029)
!3037 = !DILocation(line: 331, column: 5, scope: !3029)
!3038 = !DILocation(line: 331, column: 24, scope: !3029)
!3039 = !DILocation(line: 332, column: 26, scope: !3029)
!3040 = !DILocation(line: 332, column: 5, scope: !3029)
!3041 = !DILocation(line: 333, column: 27, scope: !3029)
!3042 = !DILocation(line: 333, column: 5, scope: !3029)
!3043 = !DILocation(line: 334, column: 12, scope: !3029)
!3044 = !DILocation(line: 334, column: 5, scope: !3029)
!3045 = !DILocation(line: 335, column: 1, scope: !3029)
!3046 = distinct !DISubprogram(name: "read", linkageName: "_ZN5Linux14RCOutput_Bebop4readEh", scope: !156, file: !61, line: 337, type: !255, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !57, declaration: !266, retainedNodes: !848)
!3047 = !DILocalVariable(name: "this", arg: 1, scope: !3046, type: !155, flags: DIFlagArtificial | DIFlagObjectPointer)
!3048 = !DILocation(line: 0, scope: !3046)
!3049 = !DILocalVariable(name: "ch", arg: 2, scope: !3046, file: !61, line: 337, type: !115)
!3050 = !DILocation(line: 337, column: 39, scope: !3046)
!3051 = !DILocation(line: 339, column: 9, scope: !3052)
!3052 = distinct !DILexicalBlock(scope: !3046, file: !61, line: 339, column: 9)
!3053 = !DILocation(line: 339, column: 12, scope: !3052)
!3054 = !DILocation(line: 339, column: 9, scope: !3046)
!3055 = !DILocation(line: 340, column: 16, scope: !3056)
!3056 = distinct !DILexicalBlock(scope: !3052, file: !61, line: 339, column: 37)
!3057 = !DILocation(line: 340, column: 27, scope: !3056)
!3058 = !DILocation(line: 340, column: 9, scope: !3056)
!3059 = !DILocation(line: 342, column: 9, scope: !3060)
!3060 = distinct !DILexicalBlock(scope: !3052, file: !61, line: 341, column: 12)
!3061 = !DILocation(line: 344, column: 1, scope: !3046)
!3062 = distinct !DISubprogram(name: "read", linkageName: "_ZN5Linux14RCOutput_Bebop4readEPth", scope: !156, file: !61, line: 346, type: !268, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !57, declaration: !267, retainedNodes: !848)
!3063 = !DILocalVariable(name: "this", arg: 1, scope: !3062, type: !155, flags: DIFlagArtificial | DIFlagObjectPointer)
!3064 = !DILocation(line: 0, scope: !3062)
!3065 = !DILocalVariable(name: "period_us", arg: 2, scope: !3062, file: !61, line: 346, type: !131)
!3066 = !DILocation(line: 346, column: 37, scope: !3062)
!3067 = !DILocalVariable(name: "len", arg: 3, scope: !3062, file: !61, line: 346, type: !115)
!3068 = !DILocation(line: 346, column: 56, scope: !3062)
!3069 = !DILocalVariable(name: "i", scope: !3070, file: !61, line: 348, type: !97)
!3070 = distinct !DILexicalBlock(scope: !3062, file: !61, line: 348, column: 5)
!3071 = !DILocation(line: 348, column: 14, scope: !3070)
!3072 = !DILocation(line: 348, column: 10, scope: !3070)
!3073 = !DILocation(line: 348, column: 21, scope: !3074)
!3074 = distinct !DILexicalBlock(scope: !3070, file: !61, line: 348, column: 5)
!3075 = !DILocation(line: 348, column: 25, scope: !3074)
!3076 = !DILocation(line: 348, column: 23, scope: !3074)
!3077 = !DILocation(line: 348, column: 5, scope: !3070)
!3078 = !DILocation(line: 349, column: 33, scope: !3074)
!3079 = !DILocation(line: 349, column: 31, scope: !3074)
!3080 = !DILocation(line: 349, column: 29, scope: !3074)
!3081 = !DILocation(line: 349, column: 24, scope: !3074)
!3082 = !DILocation(line: 349, column: 9, scope: !3074)
!3083 = !DILocation(line: 349, column: 19, scope: !3074)
!3084 = !DILocation(line: 349, column: 22, scope: !3074)
!3085 = !DILocation(line: 348, column: 31, scope: !3074)
!3086 = !DILocation(line: 348, column: 5, scope: !3074)
!3087 = distinct !{!3087, !3077, !3088, !2733}
!3088 = !DILocation(line: 349, column: 34, scope: !3070)
!3089 = !DILocation(line: 350, column: 1, scope: !3062)
!3090 = distinct !DISubprogram(name: "read_last_sent", linkageName: "_ZN6AP_HAL8RCOutput14read_last_sentEh", scope: !89, file: !88, line: 77, type: !113, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !57, declaration: !132, retainedNodes: !848)
!3091 = !DILocalVariable(name: "this", arg: 1, scope: !3090, type: !249, flags: DIFlagArtificial | DIFlagObjectPointer)
!3092 = !DILocation(line: 0, scope: !3090)
!3093 = !DILocalVariable(name: "ch", arg: 2, scope: !3090, file: !88, line: 77, type: !115)
!3094 = !DILocation(line: 77, column: 45, scope: !3090)
!3095 = !DILocation(line: 77, column: 63, scope: !3090)
!3096 = !DILocation(line: 77, column: 58, scope: !3090)
!3097 = !DILocation(line: 77, column: 51, scope: !3090)
!3098 = distinct !DISubprogram(name: "read_last_sent", linkageName: "_ZN6AP_HAL8RCOutput14read_last_sentEPth", scope: !89, file: !88, line: 78, type: !129, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !57, declaration: !133, retainedNodes: !848)
!3099 = !DILocalVariable(name: "this", arg: 1, scope: !3098, type: !249, flags: DIFlagArtificial | DIFlagObjectPointer)
!3100 = !DILocation(line: 0, scope: !3098)
!3101 = !DILocalVariable(name: "period_us", arg: 2, scope: !3098, file: !88, line: 78, type: !131)
!3102 = !DILocation(line: 78, column: 47, scope: !3098)
!3103 = !DILocalVariable(name: "len", arg: 3, scope: !3098, file: !88, line: 78, type: !115)
!3104 = !DILocation(line: 78, column: 66, scope: !3098)
!3105 = !DILocation(line: 78, column: 78, scope: !3098)
!3106 = !DILocation(line: 78, column: 89, scope: !3098)
!3107 = !DILocation(line: 78, column: 73, scope: !3098)
!3108 = !DILocation(line: 78, column: 95, scope: !3098)
!3109 = distinct !DISubprogram(name: "set_safety_pwm", linkageName: "_ZN6AP_HAL8RCOutput14set_safety_pwmEjt", scope: !89, file: !88, line: 84, type: !103, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !57, declaration: !134, retainedNodes: !848)
!3110 = !DILocalVariable(name: "this", arg: 1, scope: !3109, type: !249, flags: DIFlagArtificial | DIFlagObjectPointer)
!3111 = !DILocation(line: 0, scope: !3109)
!3112 = !DILocalVariable(name: "chmask", arg: 2, scope: !3109, file: !88, line: 84, type: !105)
!3113 = !DILocation(line: 84, column: 46, scope: !3109)
!3114 = !DILocalVariable(name: "period_us", arg: 3, scope: !3109, file: !88, line: 84, type: !109)
!3115 = !DILocation(line: 84, column: 63, scope: !3109)
!3116 = !DILocation(line: 84, column: 75, scope: !3109)
!3117 = distinct !DISubprogram(name: "set_failsafe_pwm", linkageName: "_ZN6AP_HAL8RCOutput16set_failsafe_pwmEjt", scope: !89, file: !88, line: 89, type: !103, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !57, declaration: !135, retainedNodes: !848)
!3118 = !DILocalVariable(name: "this", arg: 1, scope: !3117, type: !249, flags: DIFlagArtificial | DIFlagObjectPointer)
!3119 = !DILocation(line: 0, scope: !3117)
!3120 = !DILocalVariable(name: "chmask", arg: 2, scope: !3117, file: !88, line: 89, type: !105)
!3121 = !DILocation(line: 89, column: 48, scope: !3117)
!3122 = !DILocalVariable(name: "period_us", arg: 3, scope: !3117, file: !88, line: 89, type: !109)
!3123 = !DILocation(line: 89, column: 65, scope: !3117)
!3124 = !DILocation(line: 89, column: 77, scope: !3117)
!3125 = distinct !DISubprogram(name: "force_safety_on", linkageName: "_ZN6AP_HAL8RCOutput15force_safety_onEv", scope: !89, file: !88, line: 96, type: !137, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !57, declaration: !136, retainedNodes: !848)
!3126 = !DILocalVariable(name: "this", arg: 1, scope: !3125, type: !249, flags: DIFlagArtificial | DIFlagObjectPointer)
!3127 = !DILocation(line: 0, scope: !3125)
!3128 = !DILocation(line: 96, column: 46, scope: !3125)
!3129 = distinct !DISubprogram(name: "force_safety_off", linkageName: "_ZN6AP_HAL8RCOutput16force_safety_offEv", scope: !89, file: !88, line: 101, type: !99, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !57, declaration: !140, retainedNodes: !848)
!3130 = !DILocalVariable(name: "this", arg: 1, scope: !3129, type: !249, flags: DIFlagArtificial | DIFlagObjectPointer)
!3131 = !DILocation(line: 0, scope: !3129)
!3132 = !DILocation(line: 101, column: 46, scope: !3129)
!3133 = distinct !DISubprogram(name: "set_esc_scaling", linkageName: "_ZN5Linux14RCOutput_Bebop15set_esc_scalingEtt", scope: !156, file: !61, line: 352, type: !271, scopeLine: 353, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !57, declaration: !270, retainedNodes: !848)
!3134 = !DILocalVariable(name: "this", arg: 1, scope: !3133, type: !155, flags: DIFlagArtificial | DIFlagObjectPointer)
!3135 = !DILocation(line: 0, scope: !3133)
!3136 = !DILocalVariable(name: "min_pwm", arg: 2, scope: !3133, file: !61, line: 352, type: !109)
!3137 = !DILocation(line: 352, column: 47, scope: !3133)
!3138 = !DILocalVariable(name: "max_pwm", arg: 3, scope: !3133, file: !61, line: 352, type: !109)
!3139 = !DILocation(line: 352, column: 65, scope: !3133)
!3140 = !DILocation(line: 354, column: 16, scope: !3133)
!3141 = !DILocation(line: 354, column: 5, scope: !3133)
!3142 = !DILocation(line: 354, column: 14, scope: !3133)
!3143 = !DILocation(line: 355, column: 16, scope: !3133)
!3144 = !DILocation(line: 355, column: 5, scope: !3133)
!3145 = !DILocation(line: 355, column: 14, scope: !3133)
!3146 = !DILocation(line: 356, column: 1, scope: !3133)
!3147 = distinct !DISubprogram(name: "enable_sbus_out", linkageName: "_ZN6AP_HAL8RCOutput15enable_sbus_outEt", scope: !89, file: !88, line: 114, type: !145, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !57, declaration: !144, retainedNodes: !848)
!3148 = !DILocalVariable(name: "this", arg: 1, scope: !3147, type: !249, flags: DIFlagArtificial | DIFlagObjectPointer)
!3149 = !DILocation(line: 0, scope: !3147)
!3150 = !DILocalVariable(name: "rate_gz", arg: 2, scope: !3147, file: !88, line: 114, type: !109)
!3151 = !DILocation(line: 114, column: 47, scope: !3147)
!3152 = !DILocation(line: 114, column: 58, scope: !3147)
!3153 = distinct !DISubprogram(name: "set_output_mode", linkageName: "_ZN6AP_HAL8RCOutput15set_output_modeENS0_11output_modeE", scope: !89, file: !88, line: 123, type: !148, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !57, declaration: !147, retainedNodes: !848)
!3154 = !DILocalVariable(name: "this", arg: 1, scope: !3153, type: !249, flags: DIFlagArtificial | DIFlagObjectPointer)
!3155 = !DILocation(line: 0, scope: !3153)
!3156 = !DILocalVariable(name: "mode", arg: 2, scope: !3153, file: !88, line: 123, type: !87)
!3157 = !DILocation(line: 123, column: 54, scope: !3153)
!3158 = !DILocation(line: 123, column: 61, scope: !3153)
!3159 = distinct !DISubprogram(name: "_stop_prop", linkageName: "_ZN5Linux14RCOutput_Bebop10_stop_propEv", scope: !156, file: !61, line: 192, type: !243, scopeLine: 193, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !57, declaration: !309, retainedNodes: !848)
!3160 = !DILocalVariable(name: "this", arg: 1, scope: !3159, type: !155, flags: DIFlagArtificial | DIFlagObjectPointer)
!3161 = !DILocation(line: 0, scope: !3159)
!3162 = !DILocalVariable(name: "data", scope: !3159, file: !61, line: 194, type: !115)
!3163 = !DILocation(line: 194, column: 13, scope: !3159)
!3164 = !DILocation(line: 195, column: 5, scope: !3159)
!3165 = !DILocation(line: 195, column: 12, scope: !3159)
!3166 = !DILocation(line: 197, column: 10, scope: !3167)
!3167 = distinct !DILexicalBlock(scope: !3159, file: !61, line: 197, column: 9)
!3168 = !DILocation(line: 197, column: 20, scope: !3167)
!3169 = !DILocation(line: 197, column: 9, scope: !3159)
!3170 = !DILocation(line: 198, column: 9, scope: !3167)
!3171 = !DILocation(line: 200, column: 5, scope: !3159)
!3172 = !DILocation(line: 200, column: 9, scope: !3159)
!3173 = !DILocation(line: 200, column: 15, scope: !3159)
!3174 = !DILocation(line: 202, column: 5, scope: !3159)
!3175 = !DILocation(line: 202, column: 15, scope: !3159)
!3176 = !DILocation(line: 203, column: 1, scope: !3159)
!3177 = distinct !DISubprogram(name: "_control_thread", linkageName: "_ZN5Linux14RCOutput_Bebop15_control_threadEPv", scope: !156, file: !61, line: 359, type: !317, scopeLine: 359, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !57, declaration: !316, retainedNodes: !848)
!3178 = !DILocalVariable(name: "arg", arg: 1, scope: !3177, file: !61, line: 359, type: !319)
!3179 = !DILocation(line: 359, column: 45, scope: !3177)
!3180 = !DILocalVariable(name: "rcout", scope: !3177, file: !61, line: 360, type: !155)
!3181 = !DILocation(line: 360, column: 21, scope: !3177)
!3182 = !DILocation(line: 360, column: 48, scope: !3177)
!3183 = !DILocation(line: 362, column: 5, scope: !3177)
!3184 = !DILocation(line: 362, column: 12, scope: !3177)
!3185 = !DILocation(line: 363, column: 5, scope: !3177)
!3186 = distinct !DISubprogram(name: "_clear_error", linkageName: "_ZN5Linux14RCOutput_Bebop12_clear_errorEv", scope: !156, file: !61, line: 205, type: !243, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !57, declaration: !310, retainedNodes: !848)
!3187 = !DILocalVariable(name: "this", arg: 1, scope: !3186, type: !155, flags: DIFlagArtificial | DIFlagObjectPointer)
!3188 = !DILocation(line: 0, scope: !3186)
!3189 = !DILocalVariable(name: "data", scope: !3186, file: !61, line: 207, type: !115)
!3190 = !DILocation(line: 207, column: 13, scope: !3186)
!3191 = !DILocation(line: 209, column: 10, scope: !3192)
!3192 = distinct !DILexicalBlock(scope: !3186, file: !61, line: 209, column: 9)
!3193 = !DILocation(line: 209, column: 20, scope: !3192)
!3194 = !DILocation(line: 209, column: 9, scope: !3186)
!3195 = !DILocation(line: 210, column: 9, scope: !3192)
!3196 = !DILocation(line: 212, column: 5, scope: !3186)
!3197 = !DILocation(line: 212, column: 9, scope: !3186)
!3198 = !DILocation(line: 212, column: 15, scope: !3186)
!3199 = !DILocation(line: 214, column: 5, scope: !3186)
!3200 = !DILocation(line: 214, column: 15, scope: !3186)
!3201 = !DILocation(line: 215, column: 1, scope: !3186)
!3202 = distinct !DISubprogram(name: "_run_rcout", linkageName: "_ZN5Linux14RCOutput_Bebop10_run_rcoutEv", scope: !156, file: !61, line: 366, type: !243, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !57, declaration: !315, retainedNodes: !848)
!3203 = !DILocalVariable(name: "this", arg: 1, scope: !3202, type: !155, flags: DIFlagArtificial | DIFlagObjectPointer)
!3204 = !DILocation(line: 0, scope: !3202)
!3205 = !DILocalVariable(name: "current_period_us", scope: !3202, file: !61, line: 368, type: !165)
!3206 = !DILocation(line: 368, column: 14, scope: !3202)
!3207 = !DILocalVariable(name: "i", scope: !3202, file: !61, line: 369, type: !115)
!3208 = !DILocation(line: 369, column: 13, scope: !3202)
!3209 = !DILocalVariable(name: "ret", scope: !3202, file: !61, line: 370, type: !97)
!3210 = !DILocation(line: 370, column: 9, scope: !3202)
!3211 = !DILocalVariable(name: "ts", scope: !3202, file: !61, line: 371, type: !3212)
!3212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !3213, line: 11, size: 128, flags: DIFlagTypePassByValue, elements: !3214, identifier: "_ZTS8timespec")
!3213 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!3214 = !{!3215, !3216}
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3212, file: !3213, line: 16, baseType: !1292, size: 64)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3212, file: !3213, line: 21, baseType: !3217, size: 64, offset: 64)
!3217 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !108, line: 197, baseType: !209)
!3218 = !DILocation(line: 371, column: 21, scope: !3202)
!3219 = !DILocalVariable(name: "info", scope: !3202, file: !61, line: 372, type: !299)
!3220 = !DILocation(line: 372, column: 22, scope: !3202)
!3221 = !DILocalVariable(name: "bebop_bldc_channels", scope: !3202, file: !61, line: 373, type: !281)
!3222 = !DILocation(line: 373, column: 13, scope: !3202)
!3223 = !DILocalVariable(name: "bebop_bldc_right_front", scope: !3202, file: !61, line: 374, type: !115)
!3224 = !DILocation(line: 374, column: 13, scope: !3202)
!3225 = !DILocalVariable(name: "bebop_bldc_left_front", scope: !3202, file: !61, line: 374, type: !115)
!3226 = !DILocation(line: 374, column: 37, scope: !3202)
!3227 = !DILocalVariable(name: "bebop_bldc_left_back", scope: !3202, file: !61, line: 375, type: !115)
!3228 = !DILocation(line: 375, column: 13, scope: !3202)
!3229 = !DILocalVariable(name: "bebop_bldc_right_back", scope: !3202, file: !61, line: 375, type: !115)
!3230 = !DILocation(line: 375, column: 35, scope: !3202)
!3231 = !DILocalVariable(name: "hw_version", scope: !3202, file: !61, line: 376, type: !97)
!3232 = !DILocation(line: 376, column: 9, scope: !3202)
!3233 = !DILocation(line: 378, column: 5, scope: !3202)
!3234 = !DILocation(line: 380, column: 10, scope: !3235)
!3235 = distinct !DILexicalBlock(scope: !3202, file: !61, line: 380, column: 9)
!3236 = !DILocation(line: 380, column: 9, scope: !3202)
!3237 = !DILocation(line: 381, column: 9, scope: !3238)
!3238 = distinct !DILexicalBlock(scope: !3235, file: !61, line: 380, column: 28)
!3239 = !DILocation(line: 388, column: 14, scope: !3240)
!3240 = distinct !DILexicalBlock(scope: !3202, file: !61, line: 388, column: 9)
!3241 = !DILocation(line: 388, column: 9, scope: !3240)
!3242 = !DILocation(line: 388, column: 26, scope: !3240)
!3243 = !DILocation(line: 388, column: 9, scope: !3202)
!3244 = !DILocation(line: 389, column: 32, scope: !3245)
!3245 = distinct !DILexicalBlock(scope: !3240, file: !61, line: 388, column: 32)
!3246 = !DILocation(line: 390, column: 32, scope: !3245)
!3247 = !DILocation(line: 391, column: 32, scope: !3245)
!3248 = !DILocation(line: 392, column: 32, scope: !3245)
!3249 = !DILocation(line: 393, column: 5, scope: !3245)
!3250 = !DILocation(line: 394, column: 32, scope: !3251)
!3251 = distinct !DILexicalBlock(scope: !3240, file: !61, line: 393, column: 12)
!3252 = !DILocation(line: 395, column: 32, scope: !3251)
!3253 = !DILocation(line: 396, column: 32, scope: !3251)
!3254 = !DILocation(line: 397, column: 32, scope: !3251)
!3255 = !DILocation(line: 400, column: 30, scope: !3202)
!3256 = !DILocation(line: 400, column: 5, scope: !3202)
!3257 = !DILocation(line: 400, column: 28, scope: !3202)
!3258 = !DILocation(line: 401, column: 30, scope: !3202)
!3259 = !DILocation(line: 401, column: 5, scope: !3202)
!3260 = !DILocation(line: 401, column: 28, scope: !3202)
!3261 = !DILocation(line: 402, column: 30, scope: !3202)
!3262 = !DILocation(line: 402, column: 5, scope: !3202)
!3263 = !DILocation(line: 402, column: 28, scope: !3202)
!3264 = !DILocation(line: 403, column: 30, scope: !3202)
!3265 = !DILocation(line: 403, column: 5, scope: !3202)
!3266 = !DILocation(line: 403, column: 28, scope: !3202)
!3267 = !DILocation(line: 405, column: 29, scope: !3202)
!3268 = !DILocation(line: 405, column: 33, scope: !3202)
!3269 = !DILocation(line: 405, column: 18, scope: !3202)
!3270 = !DILocation(line: 405, column: 40, scope: !3202)
!3271 = !DILocation(line: 405, column: 16, scope: !3202)
!3272 = !DILocation(line: 406, column: 9, scope: !3273)
!3273 = distinct !DILexicalBlock(scope: !3202, file: !61, line: 406, column: 9)
!3274 = !DILocation(line: 406, column: 20, scope: !3273)
!3275 = !DILocation(line: 406, column: 9, scope: !3202)
!3276 = !DILocation(line: 407, column: 9, scope: !3277)
!3277 = distinct !DILexicalBlock(scope: !3273, file: !61, line: 406, column: 44)
!3278 = !DILocation(line: 407, column: 18, scope: !3277)
!3279 = !DILocation(line: 408, column: 5, scope: !3277)
!3280 = !DILocation(line: 408, column: 16, scope: !3281)
!3281 = distinct !DILexicalBlock(scope: !3273, file: !61, line: 408, column: 16)
!3282 = !DILocation(line: 408, column: 27, scope: !3281)
!3283 = !DILocation(line: 408, column: 16, scope: !3273)
!3284 = !DILocation(line: 409, column: 9, scope: !3285)
!3285 = distinct !DILexicalBlock(scope: !3281, file: !61, line: 408, column: 52)
!3286 = !DILocation(line: 409, column: 18, scope: !3285)
!3287 = !DILocation(line: 410, column: 5, scope: !3285)
!3288 = !DILocation(line: 410, column: 16, scope: !3289)
!3289 = distinct !DILexicalBlock(scope: !3281, file: !61, line: 410, column: 16)
!3290 = !DILocation(line: 410, column: 27, scope: !3289)
!3291 = !DILocation(line: 410, column: 16, scope: !3281)
!3292 = !DILocation(line: 411, column: 63, scope: !3293)
!3293 = distinct !DILexicalBlock(scope: !3289, file: !61, line: 410, column: 32)
!3294 = !DILocation(line: 411, column: 54, scope: !3293)
!3295 = !DILocation(line: 411, column: 9, scope: !3293)
!3296 = !DILocation(line: 413, column: 52, scope: !3297)
!3297 = distinct !DILexicalBlock(scope: !3289, file: !61, line: 412, column: 12)
!3298 = !DILocation(line: 413, column: 9, scope: !3297)
!3299 = !DILocation(line: 416, column: 5, scope: !3202)
!3300 = !DILocation(line: 417, column: 29, scope: !3301)
!3301 = distinct !DILexicalBlock(scope: !3202, file: !61, line: 416, column: 18)
!3302 = !DILocation(line: 417, column: 9, scope: !3301)
!3303 = !DILocation(line: 418, column: 15, scope: !3301)
!3304 = !DILocation(line: 418, column: 13, scope: !3301)
!3305 = !DILocation(line: 419, column: 13, scope: !3306)
!3306 = distinct !DILexicalBlock(scope: !3301, file: !61, line: 419, column: 13)
!3307 = !DILocation(line: 419, column: 17, scope: !3306)
!3308 = !DILocation(line: 419, column: 13, scope: !3301)
!3309 = !DILocation(line: 420, column: 13, scope: !3306)
!3310 = !DILocation(line: 420, column: 17, scope: !3306)
!3311 = !DILocation(line: 420, column: 26, scope: !3306)
!3312 = !DILocation(line: 422, column: 16, scope: !3313)
!3313 = distinct !DILexicalBlock(scope: !3301, file: !61, line: 422, column: 13)
!3314 = !DILocation(line: 422, column: 24, scope: !3313)
!3315 = !DILocation(line: 422, column: 13, scope: !3301)
!3316 = !DILocation(line: 424, column: 16, scope: !3317)
!3317 = distinct !DILexicalBlock(scope: !3313, file: !61, line: 423, column: 9)
!3318 = !DILocation(line: 424, column: 23, scope: !3317)
!3319 = !DILocation(line: 425, column: 29, scope: !3317)
!3320 = !DILocation(line: 425, column: 37, scope: !3317)
!3321 = !DILocation(line: 425, column: 61, scope: !3317)
!3322 = !DILocation(line: 425, column: 16, scope: !3317)
!3323 = !DILocation(line: 425, column: 24, scope: !3317)
!3324 = !DILocation(line: 426, column: 9, scope: !3317)
!3325 = !DILocation(line: 427, column: 16, scope: !3326)
!3326 = distinct !DILexicalBlock(scope: !3313, file: !61, line: 426, column: 16)
!3327 = !DILocation(line: 427, column: 24, scope: !3326)
!3328 = !DILocation(line: 430, column: 13, scope: !3301)
!3329 = !DILocation(line: 431, column: 9, scope: !3301)
!3330 = !DILocation(line: 431, column: 24, scope: !3301)
!3331 = !DILocation(line: 431, column: 36, scope: !3301)
!3332 = !DILocation(line: 431, column: 17, scope: !3301)
!3333 = !DILocation(line: 431, column: 75, scope: !3301)
!3334 = !DILocation(line: 431, column: 81, scope: !3301)
!3335 = !DILocation(line: 431, column: 85, scope: !3301)
!3336 = !DILocation(line: 431, column: 89, scope: !3301)
!3337 = !DILocation(line: 0, scope: !3301)
!3338 = !DILocation(line: 432, column: 43, scope: !3301)
!3339 = !DILocation(line: 432, column: 51, scope: !3301)
!3340 = !DILocation(line: 432, column: 19, scope: !3301)
!3341 = !DILocation(line: 432, column: 17, scope: !3301)
!3342 = distinct !{!3342, !3329, !3343, !2733}
!3343 = !DILocation(line: 432, column: 62, scope: !3301)
!3344 = !DILocation(line: 434, column: 9, scope: !3301)
!3345 = !DILocation(line: 434, column: 35, scope: !3301)
!3346 = !DILocation(line: 435, column: 31, scope: !3301)
!3347 = !DILocation(line: 435, column: 9, scope: !3301)
!3348 = !DILocation(line: 439, column: 16, scope: !3349)
!3349 = distinct !DILexicalBlock(scope: !3301, file: !61, line: 439, column: 9)
!3350 = !DILocation(line: 439, column: 14, scope: !3349)
!3351 = !DILocation(line: 439, column: 21, scope: !3352)
!3352 = distinct !DILexicalBlock(scope: !3349, file: !61, line: 439, column: 9)
!3353 = !DILocation(line: 439, column: 23, scope: !3352)
!3354 = !DILocation(line: 439, column: 9, scope: !3349)
!3355 = !DILocation(line: 440, column: 35, scope: !3356)
!3356 = distinct !DILexicalBlock(scope: !3357, file: !61, line: 440, column: 17)
!3357 = distinct !DILexicalBlock(scope: !3352, file: !61, line: 439, column: 53)
!3358 = !DILocation(line: 440, column: 17, scope: !3356)
!3359 = !DILocation(line: 440, column: 41, scope: !3356)
!3360 = !DILocation(line: 440, column: 50, scope: !3356)
!3361 = !DILocation(line: 440, column: 38, scope: !3356)
!3362 = !DILocation(line: 440, column: 17, scope: !3357)
!3363 = !DILocation(line: 441, column: 17, scope: !3356)
!3364 = !DILocation(line: 442, column: 80, scope: !3357)
!3365 = !DILocation(line: 442, column: 62, scope: !3357)
!3366 = !DILocation(line: 442, column: 44, scope: !3357)
!3367 = !DILocation(line: 442, column: 13, scope: !3357)
!3368 = !DILocation(line: 442, column: 38, scope: !3357)
!3369 = !DILocation(line: 442, column: 18, scope: !3357)
!3370 = !DILocation(line: 442, column: 42, scope: !3357)
!3371 = !DILocation(line: 443, column: 9, scope: !3357)
!3372 = !DILocation(line: 439, column: 49, scope: !3352)
!3373 = !DILocation(line: 439, column: 9, scope: !3352)
!3374 = distinct !{!3374, !3354, !3375, !2733}
!3375 = !DILocation(line: 443, column: 9, scope: !3349)
!3376 = !DILocation(line: 445, column: 13, scope: !3377)
!3377 = distinct !DILexicalBlock(scope: !3301, file: !61, line: 445, column: 13)
!3378 = !DILocation(line: 445, column: 15, scope: !3377)
!3379 = !DILocation(line: 445, column: 13, scope: !3301)
!3380 = !DILocation(line: 448, column: 17, scope: !3381)
!3381 = distinct !DILexicalBlock(scope: !3382, file: !61, line: 448, column: 17)
!3382 = distinct !DILexicalBlock(scope: !3377, file: !61, line: 445, column: 40)
!3383 = !DILocation(line: 448, column: 24, scope: !3381)
!3384 = !DILocation(line: 448, column: 17, scope: !3382)
!3385 = !DILocation(line: 449, column: 17, scope: !3386)
!3386 = distinct !DILexicalBlock(scope: !3381, file: !61, line: 448, column: 47)
!3387 = !DILocation(line: 450, column: 17, scope: !3386)
!3388 = !DILocation(line: 451, column: 13, scope: !3386)
!3389 = !DILocation(line: 452, column: 9, scope: !3382)
!3390 = !DILocation(line: 455, column: 17, scope: !3391)
!3391 = distinct !DILexicalBlock(scope: !3392, file: !61, line: 455, column: 17)
!3392 = distinct !DILexicalBlock(scope: !3377, file: !61, line: 452, column: 16)
!3393 = !DILocation(line: 455, column: 24, scope: !3391)
!3394 = !DILocation(line: 455, column: 17, scope: !3392)
!3395 = !DILocation(line: 456, column: 17, scope: !3391)
!3396 = !DILocation(line: 458, column: 24, scope: !3301)
!3397 = !DILocation(line: 458, column: 9, scope: !3301)
!3398 = distinct !{!3398, !3299, !3399, !2733}
!3399 = !DILocation(line: 459, column: 5, scope: !3202)
!3400 = distinct !DISubprogram(name: "_get_info", linkageName: "_ZN5Linux14RCOutput_Bebop9_get_infoEP9bldc_info", scope: !156, file: !61, line: 131, type: !296, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !57, declaration: !295, retainedNodes: !848)
!3401 = !DILocalVariable(name: "this", arg: 1, scope: !3400, type: !155, flags: DIFlagArtificial | DIFlagObjectPointer)
!3402 = !DILocation(line: 0, scope: !3400)
!3403 = !DILocalVariable(name: "info", arg: 2, scope: !3400, file: !61, line: 131, type: !298)
!3404 = !DILocation(line: 131, column: 50, scope: !3400)
!3405 = !DILocation(line: 133, column: 9, scope: !3406)
!3406 = distinct !DILexicalBlock(scope: !3400, file: !61, line: 133, column: 9)
!3407 = !DILocation(line: 133, column: 14, scope: !3406)
!3408 = !DILocation(line: 133, column: 9, scope: !3400)
!3409 = !DILocation(line: 134, column: 9, scope: !3410)
!3410 = distinct !DILexicalBlock(scope: !3406, file: !61, line: 133, column: 23)
!3411 = !DILocation(line: 136, column: 12, scope: !3400)
!3412 = !DILocation(line: 136, column: 5, scope: !3400)
!3413 = !DILocation(line: 137, column: 10, scope: !3414)
!3414 = distinct !DILexicalBlock(scope: !3400, file: !61, line: 137, column: 9)
!3415 = !DILocation(line: 137, column: 20, scope: !3414)
!3416 = !DILocation(line: 137, column: 9, scope: !3400)
!3417 = !DILocation(line: 138, column: 9, scope: !3418)
!3418 = distinct !DILexicalBlock(scope: !3414, file: !61, line: 137, column: 29)
!3419 = !DILocation(line: 140, column: 5, scope: !3400)
!3420 = !DILocation(line: 140, column: 9, scope: !3400)
!3421 = !DILocation(line: 141, column: 66, scope: !3400)
!3422 = !DILocation(line: 140, column: 15, scope: !3400)
!3423 = !DILocation(line: 142, column: 5, scope: !3400)
!3424 = !DILocation(line: 142, column: 15, scope: !3400)
!3425 = !DILocation(line: 143, column: 5, scope: !3400)
!3426 = !DILocation(line: 144, column: 1, scope: !3400)
!3427 = distinct !DISubprogram(name: "from", linkageName: "_ZN5Linux4Util4fromEPN6AP_HAL4UtilE", scope: !321, file: !80, line: 20, type: !3428, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !57, declaration: !3433, retainedNodes: !848)
!3428 = !DISubroutineType(types: !3429)
!3429 = !{!320, !3430}
!3430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3431, size: 64)
!3431 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Util", scope: !90, file: !3432, line: 6, size: 192, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN6AP_HAL4UtilE")
!3432 = !DIFile(filename: "ardupilot/libraries/AP_HAL/Util.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f7e8461e15dcfac2de317f6cb16a69b8")
!3433 = !DISubprogram(name: "from", linkageName: "_ZN5Linux4Util4fromEPN6AP_HAL4UtilE", scope: !321, file: !80, line: 20, type: !3428, scopeLine: 20, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!3434 = !DILocalVariable(name: "util", arg: 1, scope: !3427, file: !80, line: 20, type: !3430)
!3435 = !DILocation(line: 20, column: 37, scope: !3427)
!3436 = !DILocation(line: 21, column: 35, scope: !3427)
!3437 = !DILocation(line: 21, column: 9, scope: !3427)
!3438 = distinct !DISubprogram(name: "_period_us_to_rpm", linkageName: "_ZN5Linux14RCOutput_Bebop17_period_us_to_rpmEt", scope: !156, file: !61, line: 227, type: !313, scopeLine: 228, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !57, declaration: !312, retainedNodes: !848)
!3439 = !DILocalVariable(name: "this", arg: 1, scope: !3438, type: !155, flags: DIFlagArtificial | DIFlagObjectPointer)
!3440 = !DILocation(line: 0, scope: !3438)
!3441 = !DILocalVariable(name: "period_us", arg: 2, scope: !3438, file: !61, line: 227, type: !109)
!3442 = !DILocation(line: 227, column: 53, scope: !3438)
!3443 = !DILocalVariable(name: "period_us_fl", scope: !3438, file: !61, line: 229, type: !547)
!3444 = !DILocation(line: 229, column: 11, scope: !3438)
!3445 = !DILocation(line: 229, column: 26, scope: !3438)
!3446 = !DILocalVariable(name: "rpm_fl", scope: !3438, file: !61, line: 231, type: !547)
!3447 = !DILocation(line: 231, column: 11, scope: !3438)
!3448 = !DILocation(line: 231, column: 21, scope: !3438)
!3449 = !DILocation(line: 231, column: 36, scope: !3438)
!3450 = !DILocation(line: 231, column: 34, scope: !3438)
!3451 = !DILocation(line: 231, column: 47, scope: !3438)
!3452 = !DILocation(line: 231, column: 58, scope: !3438)
!3453 = !DILocation(line: 231, column: 56, scope: !3438)
!3454 = !DILocation(line: 231, column: 46, scope: !3438)
!3455 = !DILocation(line: 231, column: 45, scope: !3438)
!3456 = !DILocation(line: 232, column: 22, scope: !3438)
!3457 = !DILocation(line: 232, column: 31, scope: !3438)
!3458 = !DILocation(line: 232, column: 21, scope: !3438)
!3459 = !DILocation(line: 232, column: 53, scope: !3438)
!3460 = !DILocation(line: 234, column: 22, scope: !3438)
!3461 = !DILocation(line: 234, column: 5, scope: !3438)
!3462 = distinct !DISubprogram(name: "_start_prop", linkageName: "_ZN5Linux14RCOutput_Bebop11_start_propEv", scope: !156, file: !61, line: 97, type: !243, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !57, declaration: !290, retainedNodes: !848)
!3463 = !DILocalVariable(name: "this", arg: 1, scope: !3462, type: !155, flags: DIFlagArtificial | DIFlagObjectPointer)
!3464 = !DILocation(line: 0, scope: !3462)
!3465 = !DILocalVariable(name: "data", scope: !3462, file: !61, line: 99, type: !115)
!3466 = !DILocation(line: 99, column: 13, scope: !3462)
!3467 = !DILocation(line: 101, column: 10, scope: !3468)
!3468 = distinct !DILexicalBlock(scope: !3462, file: !61, line: 101, column: 9)
!3469 = !DILocation(line: 101, column: 20, scope: !3468)
!3470 = !DILocation(line: 101, column: 9, scope: !3462)
!3471 = !DILocation(line: 102, column: 9, scope: !3468)
!3472 = !DILocation(line: 104, column: 5, scope: !3462)
!3473 = !DILocation(line: 104, column: 9, scope: !3462)
!3474 = !DILocation(line: 104, column: 15, scope: !3462)
!3475 = !DILocation(line: 106, column: 5, scope: !3462)
!3476 = !DILocation(line: 106, column: 15, scope: !3462)
!3477 = !DILocation(line: 107, column: 5, scope: !3462)
!3478 = !DILocation(line: 107, column: 12, scope: !3462)
!3479 = !DILocation(line: 108, column: 1, scope: !3462)
!3480 = distinct !DISubprogram(name: "_set_ref_speed", linkageName: "_ZN5Linux14RCOutput_Bebop14_set_ref_speedEPt", scope: !156, file: !61, line: 110, type: !293, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !57, declaration: !292, retainedNodes: !848)
!3481 = !DILocalVariable(name: "this", arg: 1, scope: !3480, type: !155, flags: DIFlagArtificial | DIFlagObjectPointer)
!3482 = !DILocation(line: 0, scope: !3480)
!3483 = !DILocalVariable(name: "rpm", arg: 2, scope: !3480, file: !61, line: 110, type: !131)
!3484 = !DILocation(line: 110, column: 46, scope: !3480)
!3485 = !DILocalVariable(name: "data", scope: !3480, file: !61, line: 112, type: !3486)
!3486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bldc_ref_speed_data", file: !61, line: 21, size: 88, flags: DIFlagTypePassByValue, elements: !3487, identifier: "_ZTS19bldc_ref_speed_data")
!3487 = !{!3488, !3489, !3490, !3491}
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !3486, file: !61, line: 22, baseType: !115, size: 8)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "rpm", scope: !3486, file: !61, line: 23, baseType: !165, size: 64, offset: 8)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "enable_security", scope: !3486, file: !61, line: 24, baseType: !115, size: 8, offset: 72)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !3486, file: !61, line: 25, baseType: !115, size: 8, offset: 80)
!3492 = !DILocation(line: 112, column: 32, scope: !3480)
!3493 = !DILocalVariable(name: "i", scope: !3480, file: !61, line: 113, type: !97)
!3494 = !DILocation(line: 113, column: 9, scope: !3480)
!3495 = !DILocation(line: 115, column: 10, scope: !3480)
!3496 = !DILocation(line: 115, column: 14, scope: !3480)
!3497 = !DILocation(line: 117, column: 11, scope: !3498)
!3498 = distinct !DILexicalBlock(scope: !3480, file: !61, line: 117, column: 5)
!3499 = !DILocation(line: 117, column: 10, scope: !3498)
!3500 = !DILocation(line: 117, column: 15, scope: !3501)
!3501 = distinct !DILexicalBlock(scope: !3498, file: !61, line: 117, column: 5)
!3502 = !DILocation(line: 117, column: 16, scope: !3501)
!3503 = !DILocation(line: 117, column: 5, scope: !3498)
!3504 = !DILocation(line: 118, column: 23, scope: !3501)
!3505 = !DILocation(line: 118, column: 14, scope: !3501)
!3506 = !DILocation(line: 118, column: 18, scope: !3501)
!3507 = !DILocation(line: 118, column: 9, scope: !3501)
!3508 = !DILocation(line: 118, column: 21, scope: !3501)
!3509 = !DILocation(line: 117, column: 41, scope: !3501)
!3510 = !DILocation(line: 117, column: 5, scope: !3501)
!3511 = distinct !{!3511, !3503, !3512, !2733}
!3512 = !DILocation(line: 118, column: 23, scope: !3498)
!3513 = !DILocation(line: 120, column: 10, scope: !3480)
!3514 = !DILocation(line: 120, column: 26, scope: !3480)
!3515 = !DILocation(line: 121, column: 21, scope: !3480)
!3516 = !DILocation(line: 121, column: 10, scope: !3480)
!3517 = !DILocation(line: 121, column: 19, scope: !3480)
!3518 = !DILocation(line: 123, column: 10, scope: !3519)
!3519 = distinct !DILexicalBlock(scope: !3480, file: !61, line: 123, column: 9)
!3520 = !DILocation(line: 123, column: 20, scope: !3519)
!3521 = !DILocation(line: 123, column: 9, scope: !3480)
!3522 = !DILocation(line: 124, column: 9, scope: !3519)
!3523 = !DILocation(line: 126, column: 5, scope: !3480)
!3524 = !DILocation(line: 126, column: 9, scope: !3480)
!3525 = !DILocation(line: 126, column: 15, scope: !3480)
!3526 = !DILocation(line: 128, column: 5, scope: !3480)
!3527 = !DILocation(line: 128, column: 15, scope: !3480)
!3528 = !DILocation(line: 129, column: 1, scope: !3480)
!3529 = distinct !DISubprogram(name: "__bswap_16", linkageName: "_ZL10__bswap_16t", scope: !3530, file: !3530, line: 34, type: !3531, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !57, retainedNodes: !848)
!3530 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/byteswap.h", directory: "", checksumkind: CSK_MD5, checksum: "98f83253ffd9c64e7486789204e9fa05")
!3531 = !DISubroutineType(types: !3532)
!3532 = !{!110, !110}
!3533 = !DILocalVariable(name: "__bsx", arg: 1, scope: !3529, file: !3530, line: 34, type: !110)
!3534 = !DILocation(line: 34, column: 24, scope: !3529)
!3535 = !DILocation(line: 39, column: 10, scope: !3529)
!3536 = !DILocation(line: 39, column: 3, scope: !3529)
!3537 = distinct !DISubprogram(name: "_checksum", linkageName: "_ZN5Linux14RCOutput_Bebop9_checksumEPhj", scope: !156, file: !61, line: 86, type: !288, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !57, declaration: !287, retainedNodes: !848)
!3538 = !DILocalVariable(name: "this", arg: 1, scope: !3537, type: !155, flags: DIFlagArtificial | DIFlagObjectPointer)
!3539 = !DILocation(line: 0, scope: !3537)
!3540 = !DILocalVariable(name: "data", arg: 2, scope: !3537, file: !61, line: 86, type: !154)
!3541 = !DILocation(line: 86, column: 44, scope: !3537)
!3542 = !DILocalVariable(name: "len", arg: 3, scope: !3537, file: !61, line: 86, type: !62)
!3543 = !DILocation(line: 86, column: 63, scope: !3537)
!3544 = !DILocalVariable(name: "checksum", scope: !3537, file: !61, line: 88, type: !115)
!3545 = !DILocation(line: 88, column: 13, scope: !3537)
!3546 = !DILocation(line: 88, column: 24, scope: !3537)
!3547 = !DILocalVariable(name: "i", scope: !3537, file: !61, line: 89, type: !62)
!3548 = !DILocation(line: 89, column: 18, scope: !3537)
!3549 = !DILocation(line: 91, column: 12, scope: !3550)
!3550 = distinct !DILexicalBlock(scope: !3537, file: !61, line: 91, column: 5)
!3551 = !DILocation(line: 91, column: 10, scope: !3550)
!3552 = !DILocation(line: 91, column: 17, scope: !3553)
!3553 = distinct !DILexicalBlock(scope: !3550, file: !61, line: 91, column: 5)
!3554 = !DILocation(line: 91, column: 21, scope: !3553)
!3555 = !DILocation(line: 91, column: 19, scope: !3553)
!3556 = !DILocation(line: 91, column: 5, scope: !3550)
!3557 = !DILocation(line: 92, column: 20, scope: !3553)
!3558 = !DILocation(line: 92, column: 31, scope: !3553)
!3559 = !DILocation(line: 92, column: 36, scope: !3553)
!3560 = !DILocation(line: 92, column: 29, scope: !3553)
!3561 = !DILocation(line: 92, column: 18, scope: !3553)
!3562 = !DILocation(line: 92, column: 9, scope: !3553)
!3563 = !DILocation(line: 91, column: 27, scope: !3553)
!3564 = !DILocation(line: 91, column: 5, scope: !3553)
!3565 = distinct !{!3565, !3556, !3566, !2733}
!3566 = !DILocation(line: 92, column: 37, scope: !3550)
!3567 = !DILocation(line: 94, column: 12, scope: !3537)
!3568 = !DILocation(line: 94, column: 5, scope: !3537)
!3569 = distinct !DISubprogram(linkageName: "_GLOBAL__sub_I_RCOutput_Bebop.cpp", scope: !3570, file: !3570, type: !3571, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !57, retainedNodes: !848)
!3570 = !DIFile(filename: "ardupilot/libraries/AP_HAL_Linux/RCOutput_Bebop.cpp", directory: "/home/raj")
!3571 = !DISubroutineType(types: !848)
!3572 = !DILocation(line: 0, scope: !3569)
!3573 = distinct !DISubprogram(name: "__cxx_global_var_init", scope: !3570, file: !3570, type: !384, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !57, retainedNodes: !848)
!3574 = !DILocation(line: 73, column: 33, scope: !3575)
!3575 = !DILexicalBlockFile(scope: !3573, file: !61, discriminator: 0)
!3576 = !DILocation(line: 0, scope: !3573)
!3577 = distinct !DISubprogram(name: "RCOutput_Bebop", linkageName: "_ZN5Linux14RCOutput_BebopC2Ev", scope: !156, file: !61, line: 75, type: !243, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !57, declaration: !242, retainedNodes: !848)
!3578 = !DILocalVariable(name: "this", arg: 1, scope: !3577, type: !155, flags: DIFlagArtificial | DIFlagObjectPointer)
!3579 = !DILocation(line: 0, scope: !3577)
!3580 = !DILocation(line: 75, column: 17, scope: !3577)
!3581 = !DILocation(line: 80, column: 1, scope: !3577)
!3582 = !DILocation(line: 76, column: 5, scope: !3577)
!3583 = !DILocation(line: 77, column: 5, scope: !3577)
!3584 = !DILocation(line: 78, column: 5, scope: !3577)
!3585 = !DILocation(line: 79, column: 5, scope: !3577)
!3586 = !DILocation(line: 90, column: 14, scope: !3587)
!3587 = !DILexicalBlockFile(scope: !3577, file: !67, discriminator: 0)
!3588 = !DILocation(line: 75, column: 17, scope: !3589)
!3589 = !DILexicalBlockFile(scope: !3577, file: !61, discriminator: 0)
!3590 = !DILocation(line: 81, column: 12, scope: !3591)
!3591 = distinct !DILexicalBlock(scope: !3589, file: !61, line: 80, column: 1)
!3592 = !DILocation(line: 81, column: 5, scope: !3591)
!3593 = !DILocation(line: 82, column: 12, scope: !3591)
!3594 = !DILocation(line: 82, column: 5, scope: !3591)
!3595 = !DILocation(line: 83, column: 12, scope: !3591)
!3596 = !DILocation(line: 83, column: 5, scope: !3591)
!3597 = !DILocation(line: 84, column: 1, scope: !3589)
!3598 = distinct !DISubprogram(name: "RCOutput", linkageName: "_ZN6AP_HAL8RCOutputC2Ev", scope: !89, file: !88, line: 31, type: !99, scopeLine: 31, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !57, declaration: !3599, retainedNodes: !848)
!3599 = !DISubprogram(name: "RCOutput", scope: !89, type: !99, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!3600 = !DILocalVariable(name: "this", arg: 1, scope: !3598, type: !249, flags: DIFlagArtificial | DIFlagObjectPointer)
!3601 = !DILocation(line: 0, scope: !3598)
!3602 = !DILocation(line: 31, column: 15, scope: !3598)
!3603 = distinct !DISubprogram(name: "cork", linkageName: "_ZN6AP_HAL8RCOutput4corkEv", scope: !89, file: !88, line: 58, type: !99, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !57, declaration: !125, retainedNodes: !848)
!3604 = !DILocalVariable(name: "this", arg: 1, scope: !3603, type: !249, flags: DIFlagArtificial | DIFlagObjectPointer)
!3605 = !DILocation(line: 0, scope: !3603)
!3606 = !DILocation(line: 58, column: 31, scope: !3603)
!3607 = distinct !DISubprogram(name: "push", linkageName: "_ZN6AP_HAL8RCOutput4pushEv", scope: !89, file: !88, line: 67, type: !99, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !57, declaration: !126, retainedNodes: !848)
!3608 = !DILocalVariable(name: "this", arg: 1, scope: !3607, type: !249, flags: DIFlagArtificial | DIFlagObjectPointer)
!3609 = !DILocation(line: 0, scope: !3607)
!3610 = !DILocation(line: 67, column: 31, scope: !3607)
!3611 = distinct !DISubprogram(name: "set_esc_scaling", linkageName: "_ZN6AP_HAL8RCOutput15set_esc_scalingEtt", scope: !89, file: !88, line: 109, type: !142, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !57, declaration: !141, retainedNodes: !848)
!3612 = !DILocalVariable(name: "this", arg: 1, scope: !3611, type: !249, flags: DIFlagArtificial | DIFlagObjectPointer)
!3613 = !DILocation(line: 0, scope: !3611)
!3614 = !DILocalVariable(name: "min_pwm", arg: 2, scope: !3611, file: !88, line: 109, type: !109)
!3615 = !DILocation(line: 109, column: 47, scope: !3611)
!3616 = !DILocalVariable(name: "max_pwm", arg: 3, scope: !3611, file: !88, line: 109, type: !109)
!3617 = !DILocation(line: 109, column: 65, scope: !3611)
!3618 = !DILocation(line: 109, column: 75, scope: !3611)
!3619 = distinct !DISubprogram(name: "read_obs_data", linkageName: "_ZN5Linux14RCOutput_Bebop13read_obs_dataER17BebopBLDC_ObsData", scope: !156, file: !61, line: 146, type: !274, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !57, declaration: !273, retainedNodes: !848)
!3620 = !DILocalVariable(name: "this", arg: 1, scope: !3619, type: !155, flags: DIFlagArtificial | DIFlagObjectPointer)
!3621 = !DILocation(line: 0, scope: !3619)
!3622 = !DILocalVariable(name: "obs", arg: 2, scope: !3619, file: !61, line: 146, type: !276)
!3623 = !DILocation(line: 146, column: 54, scope: !3619)
!3624 = !DILocalVariable(name: "data", scope: !3619, file: !61, line: 148, type: !3625)
!3625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bldc_obs_data", file: !61, line: 29, size: 120, flags: DIFlagTypePassByValue, elements: !3626, identifier: "_ZTS13bldc_obs_data")
!3626 = !{!3627, !3628, !3629, !3630, !3631, !3632, !3633}
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "rpm", scope: !3625, file: !61, line: 30, baseType: !165, size: 64)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "batt_mv", scope: !3625, file: !61, line: 31, baseType: !109, size: 16, offset: 64)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3625, file: !61, line: 32, baseType: !115, size: 8, offset: 80)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !3625, file: !61, line: 33, baseType: !115, size: 8, offset: 88)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "motors_err", scope: !3625, file: !61, line: 34, baseType: !115, size: 8, offset: 96)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !3625, file: !61, line: 35, baseType: !115, size: 8, offset: 104)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !3625, file: !61, line: 36, baseType: !115, size: 8, offset: 112)
!3634 = !DILocation(line: 148, column: 26, scope: !3619)
!3635 = !DILocalVariable(name: "i", scope: !3619, file: !61, line: 149, type: !97)
!3636 = !DILocation(line: 149, column: 9, scope: !3619)
!3637 = !DILocation(line: 151, column: 5, scope: !3619)
!3638 = !DILocation(line: 152, column: 10, scope: !3639)
!3639 = distinct !DILexicalBlock(scope: !3619, file: !61, line: 152, column: 9)
!3640 = !DILocation(line: 152, column: 20, scope: !3639)
!3641 = !DILocation(line: 152, column: 9, scope: !3619)
!3642 = !DILocation(line: 153, column: 9, scope: !3639)
!3643 = !DILocation(line: 155, column: 5, scope: !3619)
!3644 = !DILocation(line: 155, column: 9, scope: !3619)
!3645 = !DILocation(line: 155, column: 15, scope: !3619)
!3646 = !DILocation(line: 158, column: 5, scope: !3619)
!3647 = !DILocation(line: 158, column: 15, scope: !3619)
!3648 = !DILocation(line: 160, column: 14, scope: !3649)
!3649 = distinct !DILexicalBlock(scope: !3619, file: !61, line: 160, column: 9)
!3650 = !DILocation(line: 160, column: 9, scope: !3649)
!3651 = !DILocation(line: 160, column: 26, scope: !3649)
!3652 = !DILocation(line: 160, column: 23, scope: !3649)
!3653 = !DILocation(line: 160, column: 9, scope: !3619)
!3654 = !DILocation(line: 161, column: 9, scope: !3649)
!3655 = !DILocation(line: 161, column: 13, scope: !3649)
!3656 = !DILocation(line: 161, column: 22, scope: !3649)
!3657 = !DILocation(line: 164, column: 12, scope: !3658)
!3658 = distinct !DILexicalBlock(scope: !3619, file: !61, line: 164, column: 5)
!3659 = !DILocation(line: 164, column: 10, scope: !3658)
!3660 = !DILocation(line: 164, column: 17, scope: !3661)
!3661 = distinct !DILexicalBlock(scope: !3658, file: !61, line: 164, column: 5)
!3662 = !DILocation(line: 164, column: 19, scope: !3661)
!3663 = !DILocation(line: 164, column: 5, scope: !3658)
!3664 = !DILocation(line: 166, column: 38, scope: !3665)
!3665 = distinct !DILexicalBlock(scope: !3661, file: !61, line: 164, column: 49)
!3666 = !DILocation(line: 166, column: 42, scope: !3665)
!3667 = !DILocation(line: 166, column: 33, scope: !3665)
!3668 = !DILocation(line: 166, column: 45, scope: !3665)
!3669 = !DILocation(line: 166, column: 32, scope: !3665)
!3670 = !DILocation(line: 166, column: 9, scope: !3665)
!3671 = !DILocation(line: 166, column: 13, scope: !3665)
!3672 = !DILocation(line: 166, column: 27, scope: !3665)
!3673 = !DILocation(line: 166, column: 30, scope: !3665)
!3674 = !DILocation(line: 168, column: 14, scope: !3665)
!3675 = !DILocation(line: 168, column: 18, scope: !3665)
!3676 = !DILocation(line: 168, column: 9, scope: !3665)
!3677 = !DILocation(line: 168, column: 21, scope: !3665)
!3678 = !DILocation(line: 169, column: 22, scope: !3665)
!3679 = !DILocation(line: 169, column: 9, scope: !3665)
!3680 = !DILocation(line: 169, column: 13, scope: !3665)
!3681 = !DILocation(line: 169, column: 17, scope: !3665)
!3682 = !DILocation(line: 169, column: 20, scope: !3665)
!3683 = !DILocation(line: 170, column: 13, scope: !3684)
!3684 = distinct !DILexicalBlock(scope: !3665, file: !61, line: 170, column: 13)
!3685 = !DILocation(line: 170, column: 17, scope: !3684)
!3686 = !DILocation(line: 170, column: 21, scope: !3684)
!3687 = !DILocation(line: 170, column: 24, scope: !3684)
!3688 = !DILocation(line: 170, column: 13, scope: !3665)
!3689 = !DILocation(line: 171, column: 13, scope: !3684)
!3690 = !DILocation(line: 171, column: 17, scope: !3684)
!3691 = !DILocation(line: 171, column: 31, scope: !3684)
!3692 = !DILocation(line: 171, column: 34, scope: !3684)
!3693 = !DILocation(line: 172, column: 5, scope: !3665)
!3694 = !DILocation(line: 164, column: 45, scope: !3661)
!3695 = !DILocation(line: 164, column: 5, scope: !3661)
!3696 = distinct !{!3696, !3663, !3697, !2733}
!3697 = !DILocation(line: 172, column: 5, scope: !3658)
!3698 = !DILocation(line: 174, column: 19, scope: !3619)
!3699 = !DILocation(line: 174, column: 5, scope: !3619)
!3700 = !DILocation(line: 174, column: 9, scope: !3619)
!3701 = !DILocation(line: 174, column: 17, scope: !3619)
!3702 = !DILocation(line: 175, column: 23, scope: !3619)
!3703 = !DILocation(line: 175, column: 5, scope: !3619)
!3704 = !DILocation(line: 175, column: 9, scope: !3619)
!3705 = !DILocation(line: 175, column: 16, scope: !3619)
!3706 = !DILocation(line: 176, column: 22, scope: !3619)
!3707 = !DILocation(line: 176, column: 5, scope: !3619)
!3708 = !DILocation(line: 176, column: 9, scope: !3619)
!3709 = !DILocation(line: 176, column: 15, scope: !3619)
!3710 = !DILocation(line: 177, column: 27, scope: !3619)
!3711 = !DILocation(line: 177, column: 5, scope: !3619)
!3712 = !DILocation(line: 177, column: 9, scope: !3619)
!3713 = !DILocation(line: 177, column: 20, scope: !3619)
!3714 = !DILocation(line: 178, column: 28, scope: !3619)
!3715 = !DILocation(line: 178, column: 5, scope: !3619)
!3716 = !DILocation(line: 178, column: 9, scope: !3619)
!3717 = !DILocation(line: 178, column: 21, scope: !3619)
!3718 = !DILocation(line: 179, column: 5, scope: !3619)
!3719 = !DILocation(line: 180, column: 1, scope: !3619)
!3720 = distinct !DISubprogram(name: "_toggle_gpio", linkageName: "_ZN5Linux14RCOutput_Bebop12_toggle_gpioEh", scope: !156, file: !61, line: 182, type: !258, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !57, declaration: !291, retainedNodes: !848)
!3721 = !DILocalVariable(name: "this", arg: 1, scope: !3720, type: !155, flags: DIFlagArtificial | DIFlagObjectPointer)
!3722 = !DILocation(line: 0, scope: !3720)
!3723 = !DILocalVariable(name: "mask", arg: 2, scope: !3720, file: !61, line: 182, type: !115)
!3724 = !DILocation(line: 182, column: 43, scope: !3720)
!3725 = !DILocation(line: 184, column: 10, scope: !3726)
!3726 = distinct !DILexicalBlock(scope: !3720, file: !61, line: 184, column: 9)
!3727 = !DILocation(line: 184, column: 20, scope: !3726)
!3728 = !DILocation(line: 184, column: 9, scope: !3720)
!3729 = !DILocation(line: 185, column: 9, scope: !3726)
!3730 = !DILocation(line: 187, column: 5, scope: !3720)
!3731 = !DILocation(line: 187, column: 9, scope: !3720)
!3732 = !DILocation(line: 187, column: 74, scope: !3720)
!3733 = !DILocation(line: 187, column: 15, scope: !3720)
!3734 = !DILocation(line: 189, column: 5, scope: !3720)
!3735 = !DILocation(line: 189, column: 15, scope: !3720)
!3736 = !DILocation(line: 190, column: 1, scope: !3720)
!3737 = distinct !DISubprogram(name: "_play_sound", linkageName: "_ZN5Linux14RCOutput_Bebop11_play_soundEh", scope: !156, file: !61, line: 217, type: !258, scopeLine: 218, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !57, declaration: !311, retainedNodes: !848)
!3738 = !DILocalVariable(name: "this", arg: 1, scope: !3737, type: !155, flags: DIFlagArtificial | DIFlagObjectPointer)
!3739 = !DILocation(line: 0, scope: !3737)
!3740 = !DILocalVariable(name: "sound", arg: 2, scope: !3737, file: !61, line: 217, type: !115)
!3741 = !DILocation(line: 217, column: 42, scope: !3737)
!3742 = !DILocation(line: 219, column: 10, scope: !3743)
!3743 = distinct !DILexicalBlock(scope: !3737, file: !61, line: 219, column: 9)
!3744 = !DILocation(line: 219, column: 20, scope: !3743)
!3745 = !DILocation(line: 219, column: 9, scope: !3737)
!3746 = !DILocation(line: 220, column: 9, scope: !3743)
!3747 = !DILocation(line: 222, column: 5, scope: !3737)
!3748 = !DILocation(line: 222, column: 9, scope: !3737)
!3749 = !DILocation(line: 222, column: 73, scope: !3737)
!3750 = !DILocation(line: 222, column: 15, scope: !3737)
!3751 = !DILocation(line: 224, column: 5, scope: !3737)
!3752 = !DILocation(line: 224, column: 15, scope: !3737)
!3753 = !DILocation(line: 225, column: 1, scope: !3737)
!3754 = distinct !DISubprogram(name: "~Thread", linkageName: "_ZN5Linux6ThreadD2Ev", scope: !1913, file: !1914, line: 39, type: !1955, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1908, declaration: !1954, retainedNodes: !848)
!3755 = !DILocalVariable(name: "this", arg: 1, scope: !3754, type: !1912, flags: DIFlagArtificial | DIFlagObjectPointer)
!3756 = !DILocation(line: 0, scope: !3754)
!3757 = !DILocation(line: 39, column: 25, scope: !3754)
!3758 = distinct !DISubprogram(name: "~Thread", linkageName: "_ZN5Linux6ThreadD0Ev", scope: !1913, file: !1914, line: 39, type: !1955, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1908, declaration: !1954, retainedNodes: !848)
!3759 = !DILocalVariable(name: "this", arg: 1, scope: !3758, type: !1912, flags: DIFlagArtificial | DIFlagObjectPointer)
!3760 = !DILocation(line: 0, scope: !3758)
!3761 = !DILocation(line: 39, column: 23, scope: !3758)
!3762 = !DILocation(line: 39, column: 25, scope: !3758)
!3763 = distinct !DISubprogram(name: "_run", linkageName: "_ZN5Linux6Thread4_runEv", scope: !1913, file: !608, line: 41, type: !1961, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1908, declaration: !1964, retainedNodes: !848)
!3764 = !DILocalVariable(name: "this", arg: 1, scope: !3763, type: !1912, flags: DIFlagArtificial | DIFlagObjectPointer)
!3765 = !DILocation(line: 0, scope: !3763)
!3766 = !DILocation(line: 43, column: 10, scope: !3767)
!3767 = distinct !DILexicalBlock(scope: !3763, file: !608, line: 43, column: 9)
!3768 = !DILocation(line: 43, column: 9, scope: !3763)
!3769 = !DILocation(line: 44, column: 9, scope: !3770)
!3770 = distinct !DILexicalBlock(scope: !3767, file: !608, line: 43, column: 17)
!3771 = !DILocation(line: 47, column: 5, scope: !3763)
!3772 = !DILocation(line: 49, column: 5, scope: !3763)
!3773 = !DILocation(line: 50, column: 1, scope: !3763)
!3774 = distinct !DISubprogram(name: "operator bool", linkageName: "_ZNK7FunctorIvJEEcvbEv", scope: !1919, file: !1330, line: 66, type: !1944, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1908, declaration: !1943, retainedNodes: !848)
!3775 = !DILocalVariable(name: "this", arg: 1, scope: !3774, type: !3776, flags: DIFlagArtificial | DIFlagObjectPointer)
!3776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!3777 = !DILocation(line: 0, scope: !3774)
!3778 = !DILocation(line: 68, column: 16, scope: !3774)
!3779 = !DILocation(line: 68, column: 24, scope: !3774)
!3780 = !DILocation(line: 68, column: 9, scope: !3774)
!3781 = distinct !DISubprogram(name: "operator()", linkageName: "_ZNK7FunctorIvJEEclEv", scope: !1919, file: !1330, line: 53, type: !1935, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1908, declaration: !1934, retainedNodes: !848)
!3782 = !DILocalVariable(name: "this", arg: 1, scope: !3781, type: !3776, flags: DIFlagArtificial | DIFlagObjectPointer)
!3783 = !DILocation(line: 0, scope: !3781)
!3784 = !DILocation(line: 55, column: 16, scope: !3781)
!3785 = !DILocation(line: 55, column: 24, scope: !3781)
!3786 = !DILocation(line: 55, column: 9, scope: !3781)
!3787 = distinct !DISubprogram(name: "~PeriodicThread", linkageName: "_ZN5Linux14PeriodicThreadD2Ev", scope: !3788, file: !1914, line: 60, type: !3804, scopeLine: 60, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1908, declaration: !3806, retainedNodes: !848)
!3788 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "PeriodicThread", scope: !157, file: !1914, line: 60, size: 384, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !3789, vtableHolder: !1913)
!3789 = !{!3790, !3791, !3794, !3798, !3801}
!3790 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !3788, baseType: !1913, flags: DIFlagPublic, extraData: i32 0)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "_period_usec", scope: !3788, file: !1914, line: 71, baseType: !3792, size: 64, offset: 320, flags: DIFlagProtected)
!3792 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !106, line: 27, baseType: !3793)
!3793 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !108, line: 45, baseType: !179)
!3794 = !DISubprogram(name: "PeriodicThread", scope: !3788, file: !1914, line: 62, type: !3795, scopeLine: 62, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3795 = !DISubroutineType(types: !3796)
!3796 = !{null, !3797, !1918}
!3797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3788, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3798 = !DISubprogram(name: "set_rate", linkageName: "_ZN5Linux14PeriodicThread8set_rateEj", scope: !3788, file: !1914, line: 66, type: !3799, scopeLine: 66, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!3799 = !DISubroutineType(types: !3800)
!3800 = !{!139, !3797, !105}
!3801 = !DISubprogram(name: "_run", linkageName: "_ZN5Linux14PeriodicThread4_runEv", scope: !3788, file: !1914, line: 69, type: !3802, scopeLine: 69, containingType: !3788, virtualIndex: 2, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!3802 = !DISubroutineType(types: !3803)
!3803 = !{!139, !3797}
!3804 = !DISubroutineType(types: !3805)
!3805 = !{null, !3797}
!3806 = !DISubprogram(name: "~PeriodicThread", scope: !3788, type: !3804, containingType: !3788, virtualIndex: 0, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!3807 = !DILocalVariable(name: "this", arg: 1, scope: !3787, type: !3808, flags: DIFlagArtificial | DIFlagObjectPointer)
!3808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3788, size: 64)
!3809 = !DILocation(line: 0, scope: !3787)
!3810 = !DILocation(line: 60, column: 7, scope: !3811)
!3811 = distinct !DILexicalBlock(scope: !3787, file: !1914, line: 60, column: 7)
!3812 = !DILocation(line: 60, column: 7, scope: !3787)
!3813 = distinct !DISubprogram(name: "~PeriodicThread", linkageName: "_ZN5Linux14PeriodicThreadD0Ev", scope: !3788, file: !1914, line: 60, type: !3804, scopeLine: 60, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1908, declaration: !3806, retainedNodes: !848)
!3814 = !DILocalVariable(name: "this", arg: 1, scope: !3813, type: !3808, flags: DIFlagArtificial | DIFlagObjectPointer)
!3815 = !DILocation(line: 0, scope: !3813)
!3816 = !DILocation(line: 60, column: 7, scope: !3813)
!3817 = distinct !DISubprogram(name: "_run", linkageName: "_ZN5Linux14PeriodicThread4_runEv", scope: !3788, file: !608, line: 110, type: !3802, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1908, declaration: !3801, retainedNodes: !848)
!3818 = !DILocalVariable(name: "this", arg: 1, scope: !3817, type: !3808, flags: DIFlagArtificial | DIFlagObjectPointer)
!3819 = !DILocation(line: 0, scope: !3817)
!3820 = !DILocalVariable(name: "next_run_usec", scope: !3817, file: !608, line: 112, type: !3792)
!3821 = !DILocation(line: 112, column: 14, scope: !3817)
!3822 = !DILocation(line: 112, column: 30, scope: !3817)
!3823 = !DILocation(line: 112, column: 51, scope: !3817)
!3824 = !DILocation(line: 112, column: 49, scope: !3817)
!3825 = !DILocation(line: 114, column: 5, scope: !3817)
!3826 = !DILocalVariable(name: "dt", scope: !3827, file: !608, line: 115, type: !3792)
!3827 = distinct !DILexicalBlock(scope: !3817, file: !608, line: 114, column: 18)
!3828 = !DILocation(line: 115, column: 18, scope: !3827)
!3829 = !DILocation(line: 115, column: 23, scope: !3827)
!3830 = !DILocation(line: 115, column: 39, scope: !3827)
!3831 = !DILocation(line: 115, column: 37, scope: !3827)
!3832 = !DILocation(line: 116, column: 13, scope: !3833)
!3833 = distinct !DILexicalBlock(scope: !3827, file: !608, line: 116, column: 13)
!3834 = !DILocation(line: 116, column: 18, scope: !3833)
!3835 = !DILocation(line: 116, column: 16, scope: !3833)
!3836 = !DILocation(line: 116, column: 13, scope: !3827)
!3837 = !DILocation(line: 118, column: 29, scope: !3838)
!3838 = distinct !DILexicalBlock(scope: !3833, file: !608, line: 116, column: 32)
!3839 = !DILocation(line: 118, column: 27, scope: !3838)
!3840 = !DILocation(line: 119, column: 9, scope: !3838)
!3841 = !DILocation(line: 120, column: 29, scope: !3842)
!3842 = distinct !DILexicalBlock(scope: !3833, file: !608, line: 119, column: 16)
!3843 = !DILocation(line: 120, column: 33, scope: !3842)
!3844 = !DILocation(line: 120, column: 13, scope: !3842)
!3845 = !DILocation(line: 120, column: 56, scope: !3842)
!3846 = !DILocation(line: 120, column: 45, scope: !3842)
!3847 = !DILocation(line: 122, column: 26, scope: !3827)
!3848 = !DILocation(line: 122, column: 23, scope: !3827)
!3849 = !DILocation(line: 124, column: 9, scope: !3827)
!3850 = distinct !{!3850, !3825, !3851, !2733}
!3851 = !DILocation(line: 125, column: 5, scope: !3817)
!3852 = distinct !DISubprogram(name: "from", linkageName: "_ZN5Linux9Scheduler4fromEPN6AP_HAL9SchedulerE", scope: !1966, file: !1967, line: 17, type: !3853, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1908, declaration: !3858, retainedNodes: !848)
!3853 = !DISubroutineType(types: !3854)
!3854 = !{!1965, !3855}
!3855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3856, size: 64)
!3856 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Scheduler", scope: !90, file: !3857, line: 11, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN6AP_HAL9SchedulerE")
!3857 = !DIFile(filename: "ardupilot/libraries/AP_HAL/Scheduler.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "119a3b279a40882181ff95570153760b")
!3858 = !DISubprogram(name: "from", linkageName: "_ZN5Linux9Scheduler4fromEPN6AP_HAL9SchedulerE", scope: !1966, file: !1967, line: 17, type: !3853, scopeLine: 17, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!3859 = !DILocalVariable(name: "scheduler", arg: 1, scope: !3852, file: !1967, line: 17, type: !3855)
!3860 = !DILocation(line: 17, column: 47, scope: !3852)
!3861 = !DILocation(line: 18, column: 40, scope: !3852)
!3862 = !DILocation(line: 18, column: 9, scope: !3852)
!3863 = distinct !DISubprogram(name: "_run_trampoline", linkageName: "_ZN5Linux6Thread15_run_trampolineEPv", scope: !1913, file: !608, line: 33, type: !317, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1908, declaration: !1963, retainedNodes: !848)
!3864 = !DILocalVariable(name: "arg", arg: 1, scope: !3863, file: !608, line: 33, type: !319)
!3865 = !DILocation(line: 33, column: 37, scope: !3863)
!3866 = !DILocalVariable(name: "thread", scope: !3863, file: !608, line: 35, type: !1912)
!3867 = !DILocation(line: 35, column: 13, scope: !3863)
!3868 = !DILocation(line: 35, column: 44, scope: !3863)
!3869 = !DILocation(line: 36, column: 5, scope: !3863)
!3870 = !DILocation(line: 36, column: 13, scope: !3863)
!3871 = !DILocation(line: 38, column: 5, scope: !3863)
!3872 = distinct !DISubprogram(name: "start", linkageName: "_ZN5Linux6Thread5startEPKcii", scope: !1913, file: !608, line: 52, type: !1958, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1908, declaration: !1957, retainedNodes: !848)
!3873 = !DILocalVariable(name: "this", arg: 1, scope: !3872, type: !1912, flags: DIFlagArtificial | DIFlagObjectPointer)
!3874 = !DILocation(line: 0, scope: !3872)
!3875 = !DILocalVariable(name: "name", arg: 2, scope: !3872, file: !608, line: 52, type: !404)
!3876 = !DILocation(line: 52, column: 32, scope: !3872)
!3877 = !DILocalVariable(name: "policy", arg: 3, scope: !3872, file: !608, line: 52, type: !97)
!3878 = !DILocation(line: 52, column: 42, scope: !3872)
!3879 = !DILocalVariable(name: "prio", arg: 4, scope: !3872, file: !608, line: 52, type: !97)
!3880 = !DILocation(line: 52, column: 54, scope: !3872)
!3881 = !DILocation(line: 54, column: 9, scope: !3882)
!3882 = distinct !DILexicalBlock(scope: !3872, file: !608, line: 54, column: 9)
!3883 = !DILocation(line: 54, column: 9, scope: !3872)
!3884 = !DILocation(line: 55, column: 9, scope: !3885)
!3885 = distinct !DILexicalBlock(scope: !3882, file: !608, line: 54, column: 19)
!3886 = !DILocalVariable(name: "param", scope: !3872, file: !608, line: 58, type: !2040)
!3887 = !DILocation(line: 58, column: 24, scope: !3872)
!3888 = !DILocation(line: 58, column: 32, scope: !3872)
!3889 = !DILocation(line: 58, column: 52, scope: !3872)
!3890 = !DILocalVariable(name: "attr", scope: !3872, file: !608, line: 59, type: !2030)
!3891 = !DILocation(line: 59, column: 20, scope: !3872)
!3892 = !DILocalVariable(name: "r", scope: !3872, file: !608, line: 60, type: !97)
!3893 = !DILocation(line: 60, column: 9, scope: !3872)
!3894 = !DILocation(line: 62, column: 5, scope: !3872)
!3895 = !DILocation(line: 69, column: 9, scope: !3896)
!3896 = distinct !DILexicalBlock(scope: !3872, file: !608, line: 69, column: 9)
!3897 = !DILocation(line: 69, column: 19, scope: !3896)
!3898 = !DILocation(line: 69, column: 9, scope: !3872)
!3899 = !DILocation(line: 70, column: 18, scope: !3900)
!3900 = distinct !DILexicalBlock(scope: !3901, file: !608, line: 70, column: 13)
!3901 = distinct !DILexicalBlock(scope: !3896, file: !608, line: 69, column: 25)
!3902 = !DILocation(line: 70, column: 16, scope: !3900)
!3903 = !DILocation(line: 70, column: 79, scope: !3900)
!3904 = !DILocation(line: 70, column: 84, scope: !3900)
!3905 = !DILocation(line: 71, column: 53, scope: !3900)
!3906 = !DILocation(line: 71, column: 18, scope: !3900)
!3907 = !DILocation(line: 71, column: 16, scope: !3900)
!3908 = !DILocation(line: 71, column: 62, scope: !3900)
!3909 = !DILocation(line: 71, column: 67, scope: !3900)
!3910 = !DILocation(line: 72, column: 18, scope: !3900)
!3911 = !DILocation(line: 72, column: 60, scope: !3900)
!3912 = !DILocation(line: 72, column: 16, scope: !3900)
!3913 = !DILocation(line: 70, column: 13, scope: !3901)
!3914 = !DILocation(line: 74, column: 27, scope: !3915)
!3915 = distinct !DILexicalBlock(scope: !3900, file: !608, line: 72, column: 67)
!3916 = !DILocation(line: 74, column: 42, scope: !3915)
!3917 = !DILocation(line: 74, column: 33, scope: !3915)
!3918 = !DILocation(line: 73, column: 13, scope: !3915)
!3919 = !DILocation(line: 76, column: 5, scope: !3901)
!3920 = !DILocation(line: 78, column: 25, scope: !3872)
!3921 = !DILocation(line: 78, column: 9, scope: !3872)
!3922 = !DILocation(line: 78, column: 7, scope: !3872)
!3923 = !DILocation(line: 79, column: 9, scope: !3924)
!3924 = distinct !DILexicalBlock(scope: !3872, file: !608, line: 79, column: 9)
!3925 = !DILocation(line: 79, column: 11, scope: !3924)
!3926 = !DILocation(line: 79, column: 9, scope: !3872)
!3927 = !DILocation(line: 81, column: 23, scope: !3928)
!3928 = distinct !DILexicalBlock(scope: !3924, file: !608, line: 79, column: 17)
!3929 = !DILocation(line: 81, column: 38, scope: !3928)
!3930 = !DILocation(line: 81, column: 29, scope: !3928)
!3931 = !DILocation(line: 80, column: 9, scope: !3928)
!3932 = !DILocation(line: 83, column: 5, scope: !3872)
!3933 = !DILocation(line: 85, column: 9, scope: !3934)
!3934 = distinct !DILexicalBlock(scope: !3872, file: !608, line: 85, column: 9)
!3935 = !DILocation(line: 85, column: 9, scope: !3872)
!3936 = !DILocation(line: 86, column: 28, scope: !3937)
!3937 = distinct !DILexicalBlock(scope: !3934, file: !608, line: 85, column: 15)
!3938 = !DILocation(line: 86, column: 34, scope: !3937)
!3939 = !DILocation(line: 86, column: 9, scope: !3937)
!3940 = !DILocation(line: 87, column: 5, scope: !3937)
!3941 = !DILocation(line: 89, column: 5, scope: !3872)
!3942 = !DILocation(line: 89, column: 14, scope: !3872)
!3943 = !DILocation(line: 91, column: 5, scope: !3872)
!3944 = !DILocation(line: 92, column: 1, scope: !3872)
!3945 = distinct !DISubprogram(name: "is_current_thread", linkageName: "_ZN5Linux6Thread17is_current_threadEv", scope: !1913, file: !608, line: 94, type: !1961, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1908, declaration: !1960, retainedNodes: !848)
!3946 = !DILocalVariable(name: "this", arg: 1, scope: !3945, type: !1912, flags: DIFlagArtificial | DIFlagObjectPointer)
!3947 = !DILocation(line: 0, scope: !3945)
!3948 = !DILocation(line: 96, column: 26, scope: !3945)
!3949 = !DILocation(line: 96, column: 42, scope: !3945)
!3950 = !DILocation(line: 96, column: 12, scope: !3945)
!3951 = !DILocation(line: 96, column: 5, scope: !3945)
!3952 = distinct !DISubprogram(name: "set_rate", linkageName: "_ZN5Linux14PeriodicThread8set_rateEj", scope: !3788, file: !608, line: 99, type: !3799, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1908, declaration: !3798, retainedNodes: !848)
!3953 = !DILocalVariable(name: "this", arg: 1, scope: !3952, type: !3808, flags: DIFlagArtificial | DIFlagObjectPointer)
!3954 = !DILocation(line: 0, scope: !3952)
!3955 = !DILocalVariable(name: "rate_hz", arg: 2, scope: !3952, file: !608, line: 99, type: !105)
!3956 = !DILocation(line: 99, column: 40, scope: !3952)
!3957 = !DILocation(line: 101, column: 9, scope: !3958)
!3958 = distinct !DILexicalBlock(scope: !3952, file: !608, line: 101, column: 9)
!3959 = !DILocation(line: 101, column: 18, scope: !3958)
!3960 = !DILocation(line: 101, column: 21, scope: !3958)
!3961 = !DILocation(line: 101, column: 29, scope: !3958)
!3962 = !DILocation(line: 101, column: 9, scope: !3952)
!3963 = !DILocation(line: 102, column: 9, scope: !3964)
!3964 = distinct !DILexicalBlock(scope: !3958, file: !608, line: 101, column: 35)
!3965 = !DILocation(line: 105, column: 31, scope: !3952)
!3966 = !DILocation(line: 105, column: 20, scope: !3952)
!3967 = !DILocation(line: 105, column: 5, scope: !3952)
!3968 = !DILocation(line: 105, column: 18, scope: !3952)
!3969 = !DILocation(line: 107, column: 5, scope: !3952)
!3970 = !DILocation(line: 108, column: 1, scope: !3952)
!3971 = distinct !DISubprogram(name: "hz_to_usec", linkageName: "_Z10hz_to_usecj", scope: !3972, file: !3972, line: 188, type: !3973, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1908, retainedNodes: !848)
!3972 = !DIFile(filename: "ardupilot/libraries/AP_Math/AP_Math.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "5c5ea847c687760afafe3a9867bb78eb")
!3973 = !DISubroutineType(types: !3974)
!3974 = !{!105, !105}
!3975 = !DILocalVariable(name: "freq", arg: 1, scope: !3971, file: !3972, line: 188, type: !105)
!3976 = !DILocation(line: 188, column: 37, scope: !3971)
!3977 = !DILocation(line: 190, column: 27, scope: !3971)
!3978 = !DILocation(line: 190, column: 25, scope: !3971)
!3979 = !DILocation(line: 190, column: 12, scope: !3971)
!3980 = !DILocation(line: 190, column: 5, scope: !3971)
