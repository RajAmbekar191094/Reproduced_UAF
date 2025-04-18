; ModuleID = '/home/raj/ardupilot/libraries/AP_HAL_Linux/RCOutput_Bebop.cpp'
source_filename = "/home/raj/ardupilot/libraries/AP_HAL_Linux/RCOutput_Bebop.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sched_param = type { i32 }
%"class.Linux::RCOutput_Bebop" = type { %"class.AP_HAL::RCOutput", ptr, [4 x i16], [4 x i16], [4 x i16], i16, i16, i16, i8, i8, i16, i64, %union.pthread_mutex_t, %union.pthread_cond_t }
%"class.AP_HAL::RCOutput" = type { ptr }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%union.pthread_cond_t = type { %struct.__pthread_cond_s }
%struct.__pthread_cond_s = type { %union.__atomic_wide_counter, %union.__atomic_wide_counter, [2 x i32], [2 x i32], i32, i32, [2 x i32] }
%union.__atomic_wide_counter = type { i64 }
%"class.AP_HAL::HAL" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bldc_ref_speed_data = type <{ i8, [4 x i16], i8, i8 }>
%struct.bldc_obs_data = type <{ [4 x i16], i16, i8, i8, i8, i8, i8 }>
%class.BebopBLDC_ObsData = type { [4 x i16], [4 x i8], i16, i8, i8, i8, i8 }
%union.pthread_attr_t = type { i64, [48 x i8] }
%union.pthread_condattr_t = type { i32 }
%struct.timespec = type { i64, i64 }
%struct.bldc_info = type <{ i8, i8, i8, i8, i16, i16, i32, i8 }>

$_ZN6AP_HAL8RCOutputC2Ev = comdat any

$_ZN5Linux4Util4fromEPN6AP_HAL4UtilE = comdat any

$_ZN6AP_HAL8RCOutput14read_last_sentEh = comdat any

$_ZN6AP_HAL8RCOutput14read_last_sentEPth = comdat any

$_ZN6AP_HAL8RCOutput14set_safety_pwmEjt = comdat any

$_ZN6AP_HAL8RCOutput16set_failsafe_pwmEjt = comdat any

$_ZN6AP_HAL8RCOutput15force_safety_onEv = comdat any

$_ZN6AP_HAL8RCOutput16force_safety_offEv = comdat any

$_ZN6AP_HAL8RCOutput15enable_sbus_outEt = comdat any

$_ZN6AP_HAL8RCOutput15set_output_modeENS0_11output_modeE = comdat any

$_ZN6AP_HAL8RCOutput4corkEv = comdat any

$_ZN6AP_HAL8RCOutput4pushEv = comdat any

$_ZN6AP_HAL8RCOutput15set_esc_scalingEtt = comdat any

$_ZTSN6AP_HAL8RCOutputE = comdat any

$_ZTIN6AP_HAL8RCOutputE = comdat any

$_ZTVN6AP_HAL8RCOutputE = comdat any

@_ZL3hal = internal global ptr null, align 8, !dbg !0
@_ZTVN5Linux14RCOutput_BebopE = dso_local unnamed_addr constant { [21 x ptr] } { [21 x ptr] [ptr null, ptr @_ZTIN5Linux14RCOutput_BebopE, ptr @_ZN5Linux14RCOutput_Bebop4initEv, ptr @_ZN5Linux14RCOutput_Bebop8set_freqEjt, ptr @_ZN5Linux14RCOutput_Bebop8get_freqEh, ptr @_ZN5Linux14RCOutput_Bebop9enable_chEh, ptr @_ZN5Linux14RCOutput_Bebop10disable_chEh, ptr @_ZN5Linux14RCOutput_Bebop5writeEht, ptr @_ZN5Linux14RCOutput_Bebop4corkEv, ptr @_ZN5Linux14RCOutput_Bebop4pushEv, ptr @_ZN5Linux14RCOutput_Bebop4readEh, ptr @_ZN5Linux14RCOutput_Bebop4readEPth, ptr @_ZN6AP_HAL8RCOutput14read_last_sentEh, ptr @_ZN6AP_HAL8RCOutput14read_last_sentEPth, ptr @_ZN6AP_HAL8RCOutput14set_safety_pwmEjt, ptr @_ZN6AP_HAL8RCOutput16set_failsafe_pwmEjt, ptr @_ZN6AP_HAL8RCOutput15force_safety_onEv, ptr @_ZN6AP_HAL8RCOutput16force_safety_offEv, ptr @_ZN5Linux14RCOutput_Bebop15set_esc_scalingEtt, ptr @_ZN6AP_HAL8RCOutput15enable_sbus_outEt, ptr @_ZN6AP_HAL8RCOutput15set_output_modeENS0_11output_modeE] }, align 8
@.str = private unnamed_addr constant [41 x i8] c"RCOutput_Bebop: bad checksum in obs data\00", align 1, !dbg !271
@__const._ZN5Linux14RCOutput_Bebop4initEv.param = private unnamed_addr constant %struct.sched_param { i32 14 }, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"RCOutput_Bebop: can't get i2c sem\00", align 1, !dbg !277
@.str.2 = private unnamed_addr constant [35 x i8] c"RCout_Bebop: failed to init mutex\0A\00", align 1, !dbg !282
@.str.3 = private unnamed_addr constant [34 x i8] c"RCout_Bebop: failed to init cond\0A\00", align 1, !dbg !287
@.str.4 = private unnamed_addr constant [34 x i8] c"RCOut_Bebop: failed to init attr\0A\00", align 1, !dbg !289
@.str.5 = private unnamed_addr constant [38 x i8] c"RCOut_Bebop: failed to create thread\0A\00", align 1, !dbg !291
@.str.6 = private unnamed_addr constant [24 x i8] c"failed to get BLDC info\00", align 1, !dbg !296
@.str.7 = private unnamed_addr constant [28 x i8] c"failed to get hw version %s\00", align 1, !dbg !301
@.str.8 = private unnamed_addr constant [26 x i8] c"unsupported hw version %d\00", align 1, !dbg !306
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global ptr
@_ZTSN5Linux14RCOutput_BebopE = dso_local constant [25 x i8] c"N5Linux14RCOutput_BebopE\00", align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global ptr
@_ZTSN6AP_HAL8RCOutputE = linkonce_odr dso_local constant [19 x i8] c"N6AP_HAL8RCOutputE\00", comdat, align 1
@_ZTIN6AP_HAL8RCOutputE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN6AP_HAL8RCOutputE }, comdat, align 8
@_ZTIN5Linux14RCOutput_BebopE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5Linux14RCOutput_BebopE, ptr @_ZTIN6AP_HAL8RCOutputE }, align 8
@_ZTVN6AP_HAL8RCOutputE = linkonce_odr dso_local unnamed_addr constant { [21 x ptr] } { [21 x ptr] [ptr null, ptr @_ZTIN6AP_HAL8RCOutputE, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN6AP_HAL8RCOutput4corkEv, ptr @_ZN6AP_HAL8RCOutput4pushEv, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN6AP_HAL8RCOutput14read_last_sentEh, ptr @_ZN6AP_HAL8RCOutput14read_last_sentEPth, ptr @_ZN6AP_HAL8RCOutput14set_safety_pwmEjt, ptr @_ZN6AP_HAL8RCOutput16set_failsafe_pwmEjt, ptr @_ZN6AP_HAL8RCOutput15force_safety_onEv, ptr @_ZN6AP_HAL8RCOutput16force_safety_offEv, ptr @_ZN6AP_HAL8RCOutput15set_esc_scalingEtt, ptr @_ZN6AP_HAL8RCOutput15enable_sbus_outEt, ptr @_ZN6AP_HAL8RCOutput15set_output_modeENS0_11output_modeE] }, comdat, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_RCOutput_Bebop.cpp, ptr null }]

@_ZN5Linux14RCOutput_BebopC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN5Linux14RCOutput_BebopC2Ev

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" !dbg !566 {
  %1 = call noundef nonnull align 8 dereferenceable(168) ptr @_ZN6AP_HAL7get_HALEv(), !dbg !569
  store ptr %1, ptr @_ZL3hal, align 8, !dbg !571
  ret void, !dbg !569
}

declare noundef nonnull align 8 dereferenceable(168) ptr @_ZN6AP_HAL7get_HALEv() #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_ZN5Linux14RCOutput_BebopC2Ev(ptr noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #2 align 2 !dbg !572 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !573, metadata !DIExpression()), !dbg !574
  %3 = load ptr, ptr %2, align 8
  call void @_ZN6AP_HAL8RCOutputC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #11, !dbg !575
  store ptr getelementptr inbounds ({ [21 x ptr] }, ptr @_ZTVN5Linux14RCOutput_BebopE, i32 0, inrange i32 0, i32 2), ptr %3, align 8, !dbg !576
  %4 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %3, i32 0, i32 1, !dbg !577
  store ptr null, ptr %4, align 8, !dbg !577
  %5 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %3, i32 0, i32 6, !dbg !578
  store i16 1100, ptr %5, align 2, !dbg !578
  %6 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %3, i32 0, i32 7, !dbg !579
  store i16 1900, ptr %6, align 4, !dbg !579
  %7 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %3, i32 0, i32 8, !dbg !580
  store i8 1, ptr %7, align 2, !dbg !580
  %8 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %3, i32 0, i32 9, !dbg !581
  store i8 0, ptr %8, align 1, !dbg !581
  %9 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %3, i32 0, i32 12, !dbg !583
  %10 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %3, i32 0, i32 13, !dbg !583
  %11 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %3, i32 0, i32 3, !dbg !585
  %12 = getelementptr inbounds [4 x i16], ptr %11, i64 0, i64 0, !dbg !587
  call void @llvm.memset.p0.i64(ptr align 8 %12, i8 0, i64 8, i1 false), !dbg !587
  %13 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %3, i32 0, i32 2, !dbg !588
  %14 = getelementptr inbounds [4 x i16], ptr %13, i64 0, i64 0, !dbg !589
  call void @llvm.memset.p0.i64(ptr align 8 %14, i8 0, i64 8, i1 false), !dbg !589
  %15 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %3, i32 0, i32 4, !dbg !590
  %16 = getelementptr inbounds [4 x i16], ptr %15, i64 0, i64 0, !dbg !591
  call void @llvm.memset.p0.i64(ptr align 8 %16, i8 0, i64 8, i1 false), !dbg !591
  ret void, !dbg !592
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN6AP_HAL8RCOutputC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 !dbg !593 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !595, metadata !DIExpression()), !dbg !596
  %3 = load ptr, ptr %2, align 8
  store ptr getelementptr inbounds ({ [21 x ptr] }, ptr @_ZTVN6AP_HAL8RCOutputE, i32 0, inrange i32 0, i32 2), ptr %3, align 8, !dbg !597
  ret void, !dbg !597
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef zeroext i8 @_ZN5Linux14RCOutput_Bebop9_checksumEPhj(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %1, i32 noundef %2) #5 align 2 !dbg !598 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !599, metadata !DIExpression()), !dbg !600
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !601, metadata !DIExpression()), !dbg !602
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !603, metadata !DIExpression()), !dbg !604
  %9 = load ptr, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !605, metadata !DIExpression()), !dbg !606
  %10 = load ptr, ptr %5, align 8, !dbg !607
  %11 = getelementptr inbounds i8, ptr %10, i64 0, !dbg !607
  %12 = load i8, ptr %11, align 1, !dbg !607
  store i8 %12, ptr %7, align 1, !dbg !606
  call void @llvm.dbg.declare(metadata ptr %8, metadata !608, metadata !DIExpression()), !dbg !609
  store i32 1, ptr %8, align 4, !dbg !610
  br label %13, !dbg !612

13:                                               ; preds = %28, %3
  %14 = load i32, ptr %8, align 4, !dbg !613
  %15 = load i32, ptr %6, align 4, !dbg !615
  %16 = icmp ult i32 %14, %15, !dbg !616
  br i1 %16, label %17, label %31, !dbg !617

17:                                               ; preds = %13
  %18 = load i8, ptr %7, align 1, !dbg !618
  %19 = zext i8 %18 to i32, !dbg !618
  %20 = load ptr, ptr %5, align 8, !dbg !619
  %21 = load i32, ptr %8, align 4, !dbg !620
  %22 = zext i32 %21 to i64, !dbg !619
  %23 = getelementptr inbounds i8, ptr %20, i64 %22, !dbg !619
  %24 = load i8, ptr %23, align 1, !dbg !619
  %25 = zext i8 %24 to i32, !dbg !619
  %26 = xor i32 %19, %25, !dbg !621
  %27 = trunc i32 %26 to i8, !dbg !618
  store i8 %27, ptr %7, align 1, !dbg !622
  br label %28, !dbg !623

28:                                               ; preds = %17
  %29 = load i32, ptr %8, align 4, !dbg !624
  %30 = add i32 %29, 1, !dbg !624
  store i32 %30, ptr %8, align 4, !dbg !624
  br label %13, !dbg !625, !llvm.loop !626

31:                                               ; preds = %13
  %32 = load i8, ptr %7, align 1, !dbg !629
  ret i8 %32, !dbg !630
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN5Linux14RCOutput_Bebop11_start_propEv(ptr noundef nonnull align 8 dereferenceable(152) %0) #6 align 2 !dbg !631 {
  %2 = alloca ptr, align 8
  %3 = alloca i8, align 1
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !632, metadata !DIExpression()), !dbg !633
  %4 = load ptr, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !634, metadata !DIExpression()), !dbg !635
  store i8 64, ptr %3, align 1, !dbg !635
  %5 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %4, i32 0, i32 1, !dbg !636
  %6 = load ptr, ptr %5, align 8, !dbg !636
  %7 = load ptr, ptr %6, align 8, !dbg !638
  %8 = getelementptr inbounds ptr, ptr %7, i64 0, !dbg !638
  %9 = load ptr, ptr %8, align 8, !dbg !638
  %10 = call noundef zeroext i1 %9(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 0), !dbg !638
  br i1 %10, label %12, label %11, !dbg !639

11:                                               ; preds = %1
  br label %27, !dbg !640

12:                                               ; preds = %1
  %13 = load ptr, ptr @_ZL3hal, align 8, !dbg !641
  %14 = getelementptr inbounds %"class.AP_HAL::HAL", ptr %13, i32 0, i32 9, !dbg !642
  %15 = load ptr, ptr %14, align 8, !dbg !642
  %16 = load ptr, ptr %15, align 8, !dbg !643
  %17 = getelementptr inbounds ptr, ptr %16, i64 4, !dbg !643
  %18 = load ptr, ptr %17, align 8, !dbg !643
  %19 = call noundef zeroext i8 %18(ptr noundef nonnull align 8 dereferenceable(9) %15, i8 noundef zeroext 8, i8 noundef zeroext 1, ptr noundef %3), !dbg !643
  %20 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %4, i32 0, i32 1, !dbg !644
  %21 = load ptr, ptr %20, align 8, !dbg !644
  %22 = load ptr, ptr %21, align 8, !dbg !645
  %23 = getelementptr inbounds ptr, ptr %22, i64 2, !dbg !645
  %24 = load ptr, ptr %23, align 8, !dbg !645
  %25 = call noundef zeroext i1 %24(ptr noundef nonnull align 8 dereferenceable(8) %21), !dbg !645
  %26 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %4, i32 0, i32 8, !dbg !646
  store i8 0, ptr %26, align 2, !dbg !647
  br label %27, !dbg !648

27:                                               ; preds = %12, %11
  ret void, !dbg !648
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN5Linux14RCOutput_Bebop14_set_ref_speedEPt(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %1) #6 align 2 !dbg !649 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.bldc_ref_speed_data, align 1
  %6 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !650, metadata !DIExpression()), !dbg !651
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !652, metadata !DIExpression()), !dbg !653
  %7 = load ptr, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !654, metadata !DIExpression()), !dbg !661
  call void @llvm.dbg.declare(metadata ptr %6, metadata !662, metadata !DIExpression()), !dbg !663
  %8 = getelementptr inbounds %struct.bldc_ref_speed_data, ptr %5, i32 0, i32 0, !dbg !664
  store i8 2, ptr %8, align 1, !dbg !665
  store i32 0, ptr %6, align 4, !dbg !666
  br label %9, !dbg !668

9:                                                ; preds = %23, %2
  %10 = load i32, ptr %6, align 4, !dbg !669
  %11 = icmp slt i32 %10, 4, !dbg !671
  br i1 %11, label %12, label %26, !dbg !672

12:                                               ; preds = %9
  %13 = load ptr, ptr %4, align 8, !dbg !673
  %14 = load i32, ptr %6, align 4, !dbg !673
  %15 = sext i32 %14 to i64, !dbg !673
  %16 = getelementptr inbounds i16, ptr %13, i64 %15, !dbg !673
  %17 = load i16, ptr %16, align 2, !dbg !673
  %18 = call noundef zeroext i16 @_ZL10__bswap_16t(i16 noundef zeroext %17), !dbg !673
  %19 = getelementptr inbounds %struct.bldc_ref_speed_data, ptr %5, i32 0, i32 1, !dbg !674
  %20 = load i32, ptr %6, align 4, !dbg !675
  %21 = sext i32 %20 to i64, !dbg !676
  %22 = getelementptr inbounds [4 x i16], ptr %19, i64 0, i64 %21, !dbg !676
  store i16 %18, ptr %22, align 1, !dbg !677
  br label %23, !dbg !676

23:                                               ; preds = %12
  %24 = load i32, ptr %6, align 4, !dbg !678
  %25 = add nsw i32 %24, 1, !dbg !678
  store i32 %25, ptr %6, align 4, !dbg !678
  br label %9, !dbg !679, !llvm.loop !680

26:                                               ; preds = %9
  %27 = getelementptr inbounds %struct.bldc_ref_speed_data, ptr %5, i32 0, i32 2, !dbg !682
  store i8 0, ptr %27, align 1, !dbg !683
  %28 = call noundef zeroext i8 @_ZN5Linux14RCOutput_Bebop9_checksumEPhj(ptr noundef nonnull align 8 dereferenceable(152) %7, ptr noundef %5, i32 noundef 10), !dbg !684
  %29 = getelementptr inbounds %struct.bldc_ref_speed_data, ptr %5, i32 0, i32 3, !dbg !685
  store i8 %28, ptr %29, align 1, !dbg !686
  %30 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %7, i32 0, i32 1, !dbg !687
  %31 = load ptr, ptr %30, align 8, !dbg !687
  %32 = load ptr, ptr %31, align 8, !dbg !689
  %33 = getelementptr inbounds ptr, ptr %32, i64 0, !dbg !689
  %34 = load ptr, ptr %33, align 8, !dbg !689
  %35 = call noundef zeroext i1 %34(ptr noundef nonnull align 8 dereferenceable(8) %31, i32 noundef 0), !dbg !689
  br i1 %35, label %37, label %36, !dbg !690

36:                                               ; preds = %26
  br label %51, !dbg !691

37:                                               ; preds = %26
  %38 = load ptr, ptr @_ZL3hal, align 8, !dbg !692
  %39 = getelementptr inbounds %"class.AP_HAL::HAL", ptr %38, i32 0, i32 9, !dbg !693
  %40 = load ptr, ptr %39, align 8, !dbg !693
  %41 = load ptr, ptr %40, align 8, !dbg !694
  %42 = getelementptr inbounds ptr, ptr %41, i64 4, !dbg !694
  %43 = load ptr, ptr %42, align 8, !dbg !694
  %44 = call noundef zeroext i8 %43(ptr noundef nonnull align 8 dereferenceable(9) %40, i8 noundef zeroext 8, i8 noundef zeroext 11, ptr noundef %5), !dbg !694
  %45 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %7, i32 0, i32 1, !dbg !695
  %46 = load ptr, ptr %45, align 8, !dbg !695
  %47 = load ptr, ptr %46, align 8, !dbg !696
  %48 = getelementptr inbounds ptr, ptr %47, i64 2, !dbg !696
  %49 = load ptr, ptr %48, align 8, !dbg !696
  %50 = call noundef zeroext i1 %49(ptr noundef nonnull align 8 dereferenceable(8) %46), !dbg !696
  br label %51, !dbg !697

51:                                               ; preds = %37, %36
  ret void, !dbg !697
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define internal noundef zeroext i16 @_ZL10__bswap_16t(i16 noundef zeroext %0) #5 !dbg !698 {
  %2 = alloca i16, align 2
  store i16 %0, ptr %2, align 2
  call void @llvm.dbg.declare(metadata ptr %2, metadata !702, metadata !DIExpression()), !dbg !703
  %3 = load i16, ptr %2, align 2, !dbg !704
  %4 = zext i16 %3 to i32, !dbg !704
  %5 = ashr i32 %4, 8, !dbg !704
  %6 = and i32 %5, 255, !dbg !704
  %7 = load i16, ptr %2, align 2, !dbg !704
  %8 = zext i16 %7 to i32, !dbg !704
  %9 = and i32 %8, 255, !dbg !704
  %10 = shl i32 %9, 8, !dbg !704
  %11 = or i32 %6, %10, !dbg !704
  %12 = trunc i32 %11 to i16, !dbg !704
  ret i16 %12, !dbg !705
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef zeroext i1 @_ZN5Linux14RCOutput_Bebop9_get_infoEP9bldc_info(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %1) #6 align 2 !dbg !706 {
  %3 = alloca i1, align 1
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !707, metadata !DIExpression()), !dbg !708
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !709, metadata !DIExpression()), !dbg !710
  %6 = load ptr, ptr %4, align 8
  %7 = load ptr, ptr %5, align 8, !dbg !711
  %8 = icmp eq ptr %7, null, !dbg !713
  br i1 %8, label %9, label %10, !dbg !714

9:                                                ; preds = %2
  store i1 false, ptr %3, align 1, !dbg !715
  br label %34, !dbg !715

10:                                               ; preds = %2
  %11 = load ptr, ptr %5, align 8, !dbg !717
  call void @llvm.memset.p0.i64(ptr align 1 %11, i8 0, i64 13, i1 false), !dbg !718
  %12 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %6, i32 0, i32 1, !dbg !719
  %13 = load ptr, ptr %12, align 8, !dbg !719
  %14 = load ptr, ptr %13, align 8, !dbg !721
  %15 = getelementptr inbounds ptr, ptr %14, i64 0, !dbg !721
  %16 = load ptr, ptr %15, align 8, !dbg !721
  %17 = call noundef zeroext i1 %16(ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef 0), !dbg !721
  br i1 %17, label %19, label %18, !dbg !722

18:                                               ; preds = %10
  store i1 false, ptr %3, align 1, !dbg !723
  br label %34, !dbg !723

19:                                               ; preds = %10
  %20 = load ptr, ptr @_ZL3hal, align 8, !dbg !725
  %21 = getelementptr inbounds %"class.AP_HAL::HAL", ptr %20, i32 0, i32 9, !dbg !726
  %22 = load ptr, ptr %21, align 8, !dbg !726
  %23 = load ptr, ptr %5, align 8, !dbg !727
  %24 = load ptr, ptr %22, align 8, !dbg !728
  %25 = getelementptr inbounds ptr, ptr %24, i64 9, !dbg !728
  %26 = load ptr, ptr %25, align 8, !dbg !728
  %27 = call noundef zeroext i8 %26(ptr noundef nonnull align 8 dereferenceable(9) %22, i8 noundef zeroext 8, i8 noundef zeroext -96, i8 noundef zeroext 13, ptr noundef %23), !dbg !728
  %28 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %6, i32 0, i32 1, !dbg !729
  %29 = load ptr, ptr %28, align 8, !dbg !729
  %30 = load ptr, ptr %29, align 8, !dbg !730
  %31 = getelementptr inbounds ptr, ptr %30, i64 2, !dbg !730
  %32 = load ptr, ptr %31, align 8, !dbg !730
  %33 = call noundef zeroext i1 %32(ptr noundef nonnull align 8 dereferenceable(8) %29), !dbg !730
  store i1 true, ptr %3, align 1, !dbg !731
  br label %34, !dbg !731

34:                                               ; preds = %19, %18, %9
  %35 = load i1, ptr %3, align 1, !dbg !732
  ret i1 %35, !dbg !732
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef i32 @_ZN5Linux14RCOutput_Bebop13read_obs_dataER17BebopBLDC_ObsData(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 2 dereferenceable(18) %1) #6 align 2 !dbg !733 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct.bldc_obs_data, align 1
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !734, metadata !DIExpression()), !dbg !735
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !736, metadata !DIExpression()), !dbg !737
  %8 = load ptr, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !738, metadata !DIExpression()), !dbg !748
  call void @llvm.dbg.declare(metadata ptr %7, metadata !749, metadata !DIExpression()), !dbg !750
  call void @llvm.memset.p0.i64(ptr align 1 %6, i8 0, i64 15, i1 false), !dbg !751
  %9 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %8, i32 0, i32 1, !dbg !752
  %10 = load ptr, ptr %9, align 8, !dbg !752
  %11 = load ptr, ptr %10, align 8, !dbg !754
  %12 = getelementptr inbounds ptr, ptr %11, i64 0, !dbg !754
  %13 = load ptr, ptr %12, align 8, !dbg !754
  %14 = call noundef zeroext i1 %13(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef 0), !dbg !754
  br i1 %14, label %16, label %15, !dbg !755

15:                                               ; preds = %2
  store i32 -16, ptr %3, align 4, !dbg !756
  br label %123, !dbg !756

16:                                               ; preds = %2
  %17 = load ptr, ptr @_ZL3hal, align 8, !dbg !757
  %18 = getelementptr inbounds %"class.AP_HAL::HAL", ptr %17, i32 0, i32 9, !dbg !758
  %19 = load ptr, ptr %18, align 8, !dbg !758
  %20 = load ptr, ptr %19, align 8, !dbg !759
  %21 = getelementptr inbounds ptr, ptr %20, i64 9, !dbg !759
  %22 = load ptr, ptr %21, align 8, !dbg !759
  %23 = call noundef zeroext i8 %22(ptr noundef nonnull align 8 dereferenceable(9) %19, i8 noundef zeroext 8, i8 noundef zeroext 32, i8 noundef zeroext 15, ptr noundef %6), !dbg !759
  %24 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %8, i32 0, i32 1, !dbg !760
  %25 = load ptr, ptr %24, align 8, !dbg !760
  %26 = load ptr, ptr %25, align 8, !dbg !761
  %27 = getelementptr inbounds ptr, ptr %26, i64 2, !dbg !761
  %28 = load ptr, ptr %27, align 8, !dbg !761
  %29 = call noundef zeroext i1 %28(ptr noundef nonnull align 8 dereferenceable(8) %25), !dbg !761
  %30 = getelementptr inbounds %struct.bldc_obs_data, ptr %6, i32 0, i32 6, !dbg !762
  %31 = load i8, ptr %30, align 1, !dbg !762
  %32 = zext i8 %31 to i32, !dbg !764
  %33 = call noundef zeroext i8 @_ZN5Linux14RCOutput_Bebop9_checksumEPhj(ptr noundef nonnull align 8 dereferenceable(152) %8, ptr noundef %6, i32 noundef 14), !dbg !765
  %34 = zext i8 %33 to i32, !dbg !765
  %35 = icmp ne i32 %32, %34, !dbg !766
  br i1 %35, label %36, label %43, !dbg !767

36:                                               ; preds = %16
  %37 = load ptr, ptr @_ZL3hal, align 8, !dbg !768
  %38 = getelementptr inbounds %"class.AP_HAL::HAL", ptr %37, i32 0, i32 14, !dbg !769
  %39 = load ptr, ptr %38, align 8, !dbg !769
  %40 = load ptr, ptr %39, align 8, !dbg !770
  %41 = getelementptr inbounds ptr, ptr %40, i64 5, !dbg !770
  %42 = load ptr, ptr %41, align 8, !dbg !770
  call void (ptr, ptr, ...) %42(ptr noundef nonnull align 8 dereferenceable(8) %39, ptr noundef @.str), !dbg !770
  br label %43, !dbg !768

43:                                               ; preds = %36, %16
  store i32 0, ptr %7, align 4, !dbg !771
  br label %44, !dbg !773

44:                                               ; preds = %98, %43
  %45 = load i32, ptr %7, align 4, !dbg !774
  %46 = icmp slt i32 %45, 4, !dbg !776
  br i1 %46, label %47, label %101, !dbg !777

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.bldc_obs_data, ptr %6, i32 0, i32 0, !dbg !778
  %49 = load i32, ptr %7, align 4, !dbg !780
  %50 = sext i32 %49 to i64, !dbg !781
  %51 = getelementptr inbounds [4 x i16], ptr %48, i64 0, i64 %50, !dbg !781
  %52 = load i16, ptr %51, align 1, !dbg !781
  %53 = zext i16 %52 to i32, !dbg !781
  %54 = and i32 %53, 128, !dbg !782
  %55 = icmp ne i32 %54, 0, !dbg !783
  %56 = zext i1 %55 to i64, !dbg !783
  %57 = select i1 %55, i32 1, i32 0, !dbg !783
  %58 = trunc i32 %57 to i8, !dbg !783
  %59 = load ptr, ptr %5, align 8, !dbg !784
  %60 = getelementptr inbounds %class.BebopBLDC_ObsData, ptr %59, i32 0, i32 1, !dbg !785
  %61 = load i32, ptr %7, align 4, !dbg !786
  %62 = sext i32 %61 to i64, !dbg !784
  %63 = getelementptr inbounds [4 x i8], ptr %60, i64 0, i64 %62, !dbg !784
  store i8 %58, ptr %63, align 1, !dbg !787
  %64 = getelementptr inbounds %struct.bldc_obs_data, ptr %6, i32 0, i32 0, !dbg !788
  %65 = load i32, ptr %7, align 4, !dbg !789
  %66 = sext i32 %65 to i64, !dbg !790
  %67 = getelementptr inbounds [4 x i16], ptr %64, i64 0, i64 %66, !dbg !790
  %68 = load i16, ptr %67, align 1, !dbg !791
  %69 = zext i16 %68 to i32, !dbg !791
  %70 = and i32 %69, 65407, !dbg !791
  %71 = trunc i32 %70 to i16, !dbg !791
  store i16 %71, ptr %67, align 1, !dbg !791
  %72 = getelementptr inbounds %struct.bldc_obs_data, ptr %6, i32 0, i32 0, !dbg !792
  %73 = load i32, ptr %7, align 4, !dbg !792
  %74 = sext i32 %73 to i64, !dbg !792
  %75 = getelementptr inbounds [4 x i16], ptr %72, i64 0, i64 %74, !dbg !792
  %76 = load i16, ptr %75, align 1, !dbg !792
  %77 = call noundef zeroext i16 @_ZL10__bswap_16t(i16 noundef zeroext %76), !dbg !792
  %78 = load ptr, ptr %5, align 8, !dbg !793
  %79 = getelementptr inbounds %class.BebopBLDC_ObsData, ptr %78, i32 0, i32 0, !dbg !794
  %80 = load i32, ptr %7, align 4, !dbg !795
  %81 = sext i32 %80 to i64, !dbg !793
  %82 = getelementptr inbounds [4 x i16], ptr %79, i64 0, i64 %81, !dbg !793
  store i16 %77, ptr %82, align 2, !dbg !796
  %83 = load ptr, ptr %5, align 8, !dbg !797
  %84 = getelementptr inbounds %class.BebopBLDC_ObsData, ptr %83, i32 0, i32 0, !dbg !799
  %85 = load i32, ptr %7, align 4, !dbg !800
  %86 = sext i32 %85 to i64, !dbg !797
  %87 = getelementptr inbounds [4 x i16], ptr %84, i64 0, i64 %86, !dbg !797
  %88 = load i16, ptr %87, align 2, !dbg !797
  %89 = zext i16 %88 to i32, !dbg !797
  %90 = icmp eq i32 %89, 0, !dbg !801
  br i1 %90, label %91, label %97, !dbg !802

91:                                               ; preds = %47
  %92 = load ptr, ptr %5, align 8, !dbg !803
  %93 = getelementptr inbounds %class.BebopBLDC_ObsData, ptr %92, i32 0, i32 1, !dbg !804
  %94 = load i32, ptr %7, align 4, !dbg !805
  %95 = sext i32 %94 to i64, !dbg !803
  %96 = getelementptr inbounds [4 x i8], ptr %93, i64 0, i64 %95, !dbg !803
  store i8 0, ptr %96, align 1, !dbg !806
  br label %97, !dbg !803

97:                                               ; preds = %91, %47
  br label %98, !dbg !807

98:                                               ; preds = %97
  %99 = load i32, ptr %7, align 4, !dbg !808
  %100 = add nsw i32 %99, 1, !dbg !808
  store i32 %100, ptr %7, align 4, !dbg !808
  br label %44, !dbg !809, !llvm.loop !810

101:                                              ; preds = %44
  %102 = getelementptr inbounds %struct.bldc_obs_data, ptr %6, i32 0, i32 1, !dbg !812
  %103 = load i16, ptr %102, align 1, !dbg !812
  %104 = call noundef zeroext i16 @_ZL10__bswap_16t(i16 noundef zeroext %103), !dbg !812
  %105 = load ptr, ptr %5, align 8, !dbg !813
  %106 = getelementptr inbounds %class.BebopBLDC_ObsData, ptr %105, i32 0, i32 2, !dbg !814
  store i16 %104, ptr %106, align 2, !dbg !815
  %107 = getelementptr inbounds %struct.bldc_obs_data, ptr %6, i32 0, i32 2, !dbg !816
  %108 = load i8, ptr %107, align 1, !dbg !816
  %109 = load ptr, ptr %5, align 8, !dbg !817
  %110 = getelementptr inbounds %class.BebopBLDC_ObsData, ptr %109, i32 0, i32 3, !dbg !818
  store i8 %108, ptr %110, align 2, !dbg !819
  %111 = getelementptr inbounds %struct.bldc_obs_data, ptr %6, i32 0, i32 3, !dbg !820
  %112 = load i8, ptr %111, align 1, !dbg !820
  %113 = load ptr, ptr %5, align 8, !dbg !821
  %114 = getelementptr inbounds %class.BebopBLDC_ObsData, ptr %113, i32 0, i32 4, !dbg !822
  store i8 %112, ptr %114, align 1, !dbg !823
  %115 = getelementptr inbounds %struct.bldc_obs_data, ptr %6, i32 0, i32 4, !dbg !824
  %116 = load i8, ptr %115, align 1, !dbg !824
  %117 = load ptr, ptr %5, align 8, !dbg !825
  %118 = getelementptr inbounds %class.BebopBLDC_ObsData, ptr %117, i32 0, i32 5, !dbg !826
  store i8 %116, ptr %118, align 2, !dbg !827
  %119 = getelementptr inbounds %struct.bldc_obs_data, ptr %6, i32 0, i32 5, !dbg !828
  %120 = load i8, ptr %119, align 1, !dbg !828
  %121 = load ptr, ptr %5, align 8, !dbg !829
  %122 = getelementptr inbounds %class.BebopBLDC_ObsData, ptr %121, i32 0, i32 6, !dbg !830
  store i8 %120, ptr %122, align 1, !dbg !831
  store i32 0, ptr %3, align 4, !dbg !832
  br label %123, !dbg !832

123:                                              ; preds = %101, %15
  %124 = load i32, ptr %3, align 4, !dbg !833
  ret i32 %124, !dbg !833
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN5Linux14RCOutput_Bebop12_toggle_gpioEh(ptr noundef nonnull align 8 dereferenceable(152) %0, i8 noundef zeroext %1) #6 align 2 !dbg !834 {
  %3 = alloca ptr, align 8
  %4 = alloca i8, align 1
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !835, metadata !DIExpression()), !dbg !836
  store i8 %1, ptr %4, align 1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !837, metadata !DIExpression()), !dbg !838
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %5, i32 0, i32 1, !dbg !839
  %7 = load ptr, ptr %6, align 8, !dbg !839
  %8 = load ptr, ptr %7, align 8, !dbg !841
  %9 = getelementptr inbounds ptr, ptr %8, i64 0, !dbg !841
  %10 = load ptr, ptr %9, align 8, !dbg !841
  %11 = call noundef zeroext i1 %10(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 0), !dbg !841
  br i1 %11, label %13, label %12, !dbg !842

12:                                               ; preds = %2
  br label %28, !dbg !843

13:                                               ; preds = %2
  %14 = load ptr, ptr @_ZL3hal, align 8, !dbg !844
  %15 = getelementptr inbounds %"class.AP_HAL::HAL", ptr %14, i32 0, i32 9, !dbg !845
  %16 = load ptr, ptr %15, align 8, !dbg !845
  %17 = load i8, ptr %4, align 1, !dbg !846
  %18 = load ptr, ptr %16, align 8, !dbg !847
  %19 = getelementptr inbounds ptr, ptr %18, i64 5, !dbg !847
  %20 = load ptr, ptr %19, align 8, !dbg !847
  %21 = call noundef zeroext i8 %20(ptr noundef nonnull align 8 dereferenceable(9) %16, i8 noundef zeroext 8, i8 noundef zeroext 77, i8 noundef zeroext %17), !dbg !847
  %22 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %5, i32 0, i32 1, !dbg !848
  %23 = load ptr, ptr %22, align 8, !dbg !848
  %24 = load ptr, ptr %23, align 8, !dbg !849
  %25 = getelementptr inbounds ptr, ptr %24, i64 2, !dbg !849
  %26 = load ptr, ptr %25, align 8, !dbg !849
  %27 = call noundef zeroext i1 %26(ptr noundef nonnull align 8 dereferenceable(8) %23), !dbg !849
  br label %28, !dbg !850

28:                                               ; preds = %13, %12
  ret void, !dbg !850
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN5Linux14RCOutput_Bebop10_stop_propEv(ptr noundef nonnull align 8 dereferenceable(152) %0) #6 align 2 !dbg !851 {
  %2 = alloca ptr, align 8
  %3 = alloca i8, align 1
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !852, metadata !DIExpression()), !dbg !853
  %4 = load ptr, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !854, metadata !DIExpression()), !dbg !855
  store i8 96, ptr %3, align 1, !dbg !855
  %5 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %4, i32 0, i32 8, !dbg !856
  store i8 1, ptr %5, align 2, !dbg !857
  %6 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %4, i32 0, i32 1, !dbg !858
  %7 = load ptr, ptr %6, align 8, !dbg !858
  %8 = load ptr, ptr %7, align 8, !dbg !860
  %9 = getelementptr inbounds ptr, ptr %8, i64 0, !dbg !860
  %10 = load ptr, ptr %9, align 8, !dbg !860
  %11 = call noundef zeroext i1 %10(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 0), !dbg !860
  br i1 %11, label %13, label %12, !dbg !861

12:                                               ; preds = %1
  br label %27, !dbg !862

13:                                               ; preds = %1
  %14 = load ptr, ptr @_ZL3hal, align 8, !dbg !863
  %15 = getelementptr inbounds %"class.AP_HAL::HAL", ptr %14, i32 0, i32 9, !dbg !864
  %16 = load ptr, ptr %15, align 8, !dbg !864
  %17 = load ptr, ptr %16, align 8, !dbg !865
  %18 = getelementptr inbounds ptr, ptr %17, i64 4, !dbg !865
  %19 = load ptr, ptr %18, align 8, !dbg !865
  %20 = call noundef zeroext i8 %19(ptr noundef nonnull align 8 dereferenceable(9) %16, i8 noundef zeroext 8, i8 noundef zeroext 1, ptr noundef %3), !dbg !865
  %21 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %4, i32 0, i32 1, !dbg !866
  %22 = load ptr, ptr %21, align 8, !dbg !866
  %23 = load ptr, ptr %22, align 8, !dbg !867
  %24 = getelementptr inbounds ptr, ptr %23, i64 2, !dbg !867
  %25 = load ptr, ptr %24, align 8, !dbg !867
  %26 = call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(8) %22), !dbg !867
  br label %27, !dbg !868

27:                                               ; preds = %13, %12
  ret void, !dbg !868
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN5Linux14RCOutput_Bebop12_clear_errorEv(ptr noundef nonnull align 8 dereferenceable(152) %0) #6 align 2 !dbg !869 {
  %2 = alloca ptr, align 8
  %3 = alloca i8, align 1
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !870, metadata !DIExpression()), !dbg !871
  %4 = load ptr, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !872, metadata !DIExpression()), !dbg !873
  store i8 -128, ptr %3, align 1, !dbg !873
  %5 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %4, i32 0, i32 1, !dbg !874
  %6 = load ptr, ptr %5, align 8, !dbg !874
  %7 = load ptr, ptr %6, align 8, !dbg !876
  %8 = getelementptr inbounds ptr, ptr %7, i64 0, !dbg !876
  %9 = load ptr, ptr %8, align 8, !dbg !876
  %10 = call noundef zeroext i1 %9(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 0), !dbg !876
  br i1 %10, label %12, label %11, !dbg !877

11:                                               ; preds = %1
  br label %26, !dbg !878

12:                                               ; preds = %1
  %13 = load ptr, ptr @_ZL3hal, align 8, !dbg !879
  %14 = getelementptr inbounds %"class.AP_HAL::HAL", ptr %13, i32 0, i32 9, !dbg !880
  %15 = load ptr, ptr %14, align 8, !dbg !880
  %16 = load ptr, ptr %15, align 8, !dbg !881
  %17 = getelementptr inbounds ptr, ptr %16, i64 4, !dbg !881
  %18 = load ptr, ptr %17, align 8, !dbg !881
  %19 = call noundef zeroext i8 %18(ptr noundef nonnull align 8 dereferenceable(9) %15, i8 noundef zeroext 8, i8 noundef zeroext 1, ptr noundef %3), !dbg !881
  %20 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %4, i32 0, i32 1, !dbg !882
  %21 = load ptr, ptr %20, align 8, !dbg !882
  %22 = load ptr, ptr %21, align 8, !dbg !883
  %23 = getelementptr inbounds ptr, ptr %22, i64 2, !dbg !883
  %24 = load ptr, ptr %23, align 8, !dbg !883
  %25 = call noundef zeroext i1 %24(ptr noundef nonnull align 8 dereferenceable(8) %21), !dbg !883
  br label %26, !dbg !884

26:                                               ; preds = %12, %11
  ret void, !dbg !884
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN5Linux14RCOutput_Bebop11_play_soundEh(ptr noundef nonnull align 8 dereferenceable(152) %0, i8 noundef zeroext %1) #6 align 2 !dbg !885 {
  %3 = alloca ptr, align 8
  %4 = alloca i8, align 1
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !886, metadata !DIExpression()), !dbg !887
  store i8 %1, ptr %4, align 1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !888, metadata !DIExpression()), !dbg !889
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %5, i32 0, i32 1, !dbg !890
  %7 = load ptr, ptr %6, align 8, !dbg !890
  %8 = load ptr, ptr %7, align 8, !dbg !892
  %9 = getelementptr inbounds ptr, ptr %8, i64 0, !dbg !892
  %10 = load ptr, ptr %9, align 8, !dbg !892
  %11 = call noundef zeroext i1 %10(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 0), !dbg !892
  br i1 %11, label %13, label %12, !dbg !893

12:                                               ; preds = %2
  br label %28, !dbg !894

13:                                               ; preds = %2
  %14 = load ptr, ptr @_ZL3hal, align 8, !dbg !895
  %15 = getelementptr inbounds %"class.AP_HAL::HAL", ptr %14, i32 0, i32 9, !dbg !896
  %16 = load ptr, ptr %15, align 8, !dbg !896
  %17 = load i8, ptr %4, align 1, !dbg !897
  %18 = load ptr, ptr %16, align 8, !dbg !898
  %19 = getelementptr inbounds ptr, ptr %18, i64 5, !dbg !898
  %20 = load ptr, ptr %19, align 8, !dbg !898
  %21 = call noundef zeroext i8 %20(ptr noundef nonnull align 8 dereferenceable(9) %16, i8 noundef zeroext 8, i8 noundef zeroext -126, i8 noundef zeroext %17), !dbg !898
  %22 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %5, i32 0, i32 1, !dbg !899
  %23 = load ptr, ptr %22, align 8, !dbg !899
  %24 = load ptr, ptr %23, align 8, !dbg !900
  %25 = getelementptr inbounds ptr, ptr %24, i64 2, !dbg !900
  %26 = load ptr, ptr %25, align 8, !dbg !900
  %27 = call noundef zeroext i1 %26(ptr noundef nonnull align 8 dereferenceable(8) %23), !dbg !900
  br label %28, !dbg !901

28:                                               ; preds = %13, %12
  ret void, !dbg !901
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef zeroext i16 @_ZN5Linux14RCOutput_Bebop17_period_us_to_rpmEt(ptr noundef nonnull align 8 dereferenceable(152) %0, i16 noundef zeroext %1) #5 align 2 !dbg !902 {
  %3 = alloca ptr, align 8
  %4 = alloca i16, align 2
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !903, metadata !DIExpression()), !dbg !904
  store i16 %1, ptr %4, align 2
  call void @llvm.dbg.declare(metadata ptr %4, metadata !905, metadata !DIExpression()), !dbg !906
  %7 = load ptr, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !907, metadata !DIExpression()), !dbg !908
  %8 = load i16, ptr %4, align 2, !dbg !909
  %9 = uitofp i16 %8 to float, !dbg !909
  store float %9, ptr %5, align 4, !dbg !908
  call void @llvm.dbg.declare(metadata ptr %6, metadata !910, metadata !DIExpression()), !dbg !911
  %10 = load float, ptr %5, align 4, !dbg !912
  %11 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %7, i32 0, i32 6, !dbg !913
  %12 = load i16, ptr %11, align 2, !dbg !913
  %13 = zext i16 %12 to i32, !dbg !913
  %14 = sitofp i32 %13 to float, !dbg !913
  %15 = fsub float %10, %14, !dbg !914
  %16 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %7, i32 0, i32 7, !dbg !915
  %17 = load i16, ptr %16, align 4, !dbg !915
  %18 = zext i16 %17 to i32, !dbg !915
  %19 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %7, i32 0, i32 6, !dbg !916
  %20 = load i16, ptr %19, align 2, !dbg !916
  %21 = zext i16 %20 to i32, !dbg !916
  %22 = sub nsw i32 %18, %21, !dbg !917
  %23 = sitofp i32 %22 to float, !dbg !918
  %24 = fdiv float %15, %23, !dbg !919
  %25 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %7, i32 0, i32 10, !dbg !920
  %26 = load i16, ptr %25, align 8, !dbg !920
  %27 = zext i16 %26 to i32, !dbg !920
  %28 = sub nsw i32 %27, 3000, !dbg !921
  %29 = sitofp i32 %28 to float, !dbg !922
  %30 = call float @llvm.fmuladd.f32(float %24, float %29, float 3.000000e+03), !dbg !923
  store float %30, ptr %6, align 4, !dbg !911
  %31 = load float, ptr %6, align 4, !dbg !924
  %32 = fptoui float %31 to i16, !dbg !924
  ret i16 %32, !dbg !925
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN5Linux14RCOutput_Bebop4initEv(ptr noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #6 align 2 !dbg !926 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sched_param, align 4
  %5 = alloca %union.pthread_attr_t, align 8
  %6 = alloca %union.pthread_condattr_t, align 4
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !927, metadata !DIExpression()), !dbg !928
  %7 = load ptr, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !929, metadata !DIExpression()), !dbg !930
  store i32 0, ptr %3, align 4, !dbg !930
  call void @llvm.dbg.declare(metadata ptr %4, metadata !931, metadata !DIExpression()), !dbg !936
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %4, ptr align 4 @__const._ZN5Linux14RCOutput_Bebop4initEv.param, i64 4, i1 false), !dbg !936
  call void @llvm.dbg.declare(metadata ptr %5, metadata !937, metadata !DIExpression()), !dbg !946
  call void @llvm.dbg.declare(metadata ptr %6, metadata !947, metadata !DIExpression()), !dbg !954
  %8 = load ptr, ptr @_ZL3hal, align 8, !dbg !955
  %9 = getelementptr inbounds %"class.AP_HAL::HAL", ptr %8, i32 0, i32 9, !dbg !956
  %10 = load ptr, ptr %9, align 8, !dbg !956
  %11 = load ptr, ptr %10, align 8, !dbg !957
  %12 = getelementptr inbounds ptr, ptr %11, i64 13, !dbg !957
  %13 = load ptr, ptr %12, align 8, !dbg !957
  %14 = call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(9) %10), !dbg !957
  %15 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %7, i32 0, i32 1, !dbg !958
  store ptr %14, ptr %15, align 8, !dbg !959
  %16 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %7, i32 0, i32 1, !dbg !960
  %17 = load ptr, ptr %16, align 8, !dbg !960
  %18 = icmp eq ptr %17, null, !dbg !962
  br i1 %18, label %19, label %20, !dbg !963

19:                                               ; preds = %1
  call void (ptr, ...) @_ZN6AP_HAL5panicEPKcz(ptr noundef @.str.1) #12, !dbg !964
  unreachable, !dbg !964

20:                                               ; preds = %1
  %21 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %7, i32 0, i32 12, !dbg !966
  %22 = call i32 @pthread_mutex_init(ptr noundef %21, ptr noundef null) #11, !dbg !967
  store i32 %22, ptr %3, align 4, !dbg !968
  %23 = load i32, ptr %3, align 4, !dbg !969
  %24 = icmp ne i32 %23, 0, !dbg !971
  br i1 %24, label %25, label %26, !dbg !972

25:                                               ; preds = %20
  call void @perror(ptr noundef @.str.2), !dbg !973
  br label %56, !dbg !975

26:                                               ; preds = %20
  %27 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %7, i32 0, i32 12, !dbg !976
  %28 = call i32 @pthread_mutex_lock(ptr noundef %27) #11, !dbg !977
  %29 = call i32 @pthread_condattr_init(ptr noundef %6) #11, !dbg !978
  %30 = call i32 @pthread_condattr_setclock(ptr noundef %6, i32 noundef 1) #11, !dbg !979
  %31 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %7, i32 0, i32 13, !dbg !980
  %32 = call i32 @pthread_cond_init(ptr noundef %31, ptr noundef %6) #11, !dbg !981
  store i32 %32, ptr %3, align 4, !dbg !982
  %33 = call i32 @pthread_condattr_destroy(ptr noundef %6) #11, !dbg !983
  %34 = load i32, ptr %3, align 4, !dbg !984
  %35 = icmp ne i32 %34, 0, !dbg !986
  br i1 %35, label %36, label %37, !dbg !987

36:                                               ; preds = %26
  call void @perror(ptr noundef @.str.3), !dbg !988
  br label %53, !dbg !990

37:                                               ; preds = %26
  %38 = call i32 @pthread_attr_init(ptr noundef %5) #11, !dbg !991
  store i32 %38, ptr %3, align 4, !dbg !992
  %39 = load i32, ptr %3, align 4, !dbg !993
  %40 = icmp ne i32 %39, 0, !dbg !995
  br i1 %40, label %41, label %42, !dbg !996

41:                                               ; preds = %37
  call void @perror(ptr noundef @.str.4), !dbg !997
  br label %53, !dbg !999

42:                                               ; preds = %37
  %43 = call i32 @pthread_attr_setinheritsched(ptr noundef %5, i32 noundef 1) #11, !dbg !1000
  %44 = call i32 @pthread_attr_setschedpolicy(ptr noundef %5, i32 noundef 1) #11, !dbg !1001
  %45 = call i32 @pthread_attr_setschedparam(ptr noundef %5, ptr noundef %4) #11, !dbg !1002
  %46 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %7, i32 0, i32 11, !dbg !1003
  %47 = call i32 @pthread_create(ptr noundef %46, ptr noundef %5, ptr noundef @_ZN5Linux14RCOutput_Bebop15_control_threadEPv, ptr noundef %7) #11, !dbg !1004
  store i32 %47, ptr %3, align 4, !dbg !1005
  %48 = load i32, ptr %3, align 4, !dbg !1006
  %49 = icmp ne i32 %48, 0, !dbg !1008
  br i1 %49, label %50, label %51, !dbg !1009

50:                                               ; preds = %42
  call void @perror(ptr noundef @.str.5), !dbg !1010
  br label %53, !dbg !1012

51:                                               ; preds = %42
  call void @_ZN5Linux14RCOutput_Bebop12_clear_errorEv(ptr noundef nonnull align 8 dereferenceable(152) %7), !dbg !1013
  %52 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %7, i32 0, i32 5, !dbg !1014
  store i16 50, ptr %52, align 8, !dbg !1015
  br label %53, !dbg !1014

53:                                               ; preds = %51, %50, %41, %36
  call void @llvm.dbg.label(metadata !1016), !dbg !1017
  %54 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %7, i32 0, i32 12, !dbg !1018
  %55 = call i32 @pthread_mutex_unlock(ptr noundef %54) #11, !dbg !1019
  br label %56, !dbg !1020

56:                                               ; preds = %53, %25
  ret void, !dbg !1021
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noreturn
declare void @_ZN6AP_HAL5panicEPKcz(ptr noundef, ...) #8

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) #9

declare void @perror(ptr noundef) #1

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) #9

; Function Attrs: nounwind
declare i32 @pthread_condattr_init(ptr noundef) #9

; Function Attrs: nounwind
declare i32 @pthread_condattr_setclock(ptr noundef, i32 noundef) #9

; Function Attrs: nounwind
declare i32 @pthread_cond_init(ptr noundef, ptr noundef) #9

; Function Attrs: nounwind
declare i32 @pthread_condattr_destroy(ptr noundef) #9

; Function Attrs: nounwind
declare i32 @pthread_attr_init(ptr noundef) #9

; Function Attrs: nounwind
declare i32 @pthread_attr_setinheritsched(ptr noundef, i32 noundef) #9

; Function Attrs: nounwind
declare i32 @pthread_attr_setschedpolicy(ptr noundef, i32 noundef) #9

; Function Attrs: nounwind
declare i32 @pthread_attr_setschedparam(ptr noundef, ptr noundef) #9

; Function Attrs: nounwind
declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #9

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef ptr @_ZN5Linux14RCOutput_Bebop15_control_threadEPv(ptr noundef %0) #6 align 2 !dbg !1022 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1023, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1025, metadata !DIExpression()), !dbg !1026
  %4 = load ptr, ptr %2, align 8, !dbg !1027
  store ptr %4, ptr %3, align 8, !dbg !1026
  %5 = load ptr, ptr %3, align 8, !dbg !1028
  call void @_ZN5Linux14RCOutput_Bebop10_run_rcoutEv(ptr noundef nonnull align 8 dereferenceable(152) %5), !dbg !1029
  ret ptr null, !dbg !1030
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) #9

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_ZN5Linux14RCOutput_Bebop8set_freqEjt(ptr noundef nonnull align 8 dereferenceable(152) %0, i32 noundef %1, i16 noundef zeroext %2) unnamed_addr #5 align 2 !dbg !1031 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1032, metadata !DIExpression()), !dbg !1033
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1034, metadata !DIExpression()), !dbg !1035
  store i16 %2, ptr %6, align 2
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1036, metadata !DIExpression()), !dbg !1037
  %7 = load ptr, ptr %4, align 8
  %8 = load i16, ptr %6, align 2, !dbg !1038
  %9 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %7, i32 0, i32 5, !dbg !1039
  store i16 %8, ptr %9, align 8, !dbg !1040
  ret void, !dbg !1041
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef zeroext i16 @_ZN5Linux14RCOutput_Bebop8get_freqEh(ptr noundef nonnull align 8 dereferenceable(152) %0, i8 noundef zeroext %1) unnamed_addr #5 align 2 !dbg !1042 {
  %3 = alloca ptr, align 8
  %4 = alloca i8, align 1
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1043, metadata !DIExpression()), !dbg !1044
  store i8 %1, ptr %4, align 1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1045, metadata !DIExpression()), !dbg !1046
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %5, i32 0, i32 5, !dbg !1047
  %7 = load i16, ptr %6, align 8, !dbg !1047
  ret i16 %7, !dbg !1048
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_ZN5Linux14RCOutput_Bebop9enable_chEh(ptr noundef nonnull align 8 dereferenceable(152) %0, i8 noundef zeroext %1) unnamed_addr #5 align 2 !dbg !1049 {
  %3 = alloca ptr, align 8
  %4 = alloca i8, align 1
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1050, metadata !DIExpression()), !dbg !1051
  store i8 %1, ptr %4, align 1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1052, metadata !DIExpression()), !dbg !1053
  %5 = load ptr, ptr %3, align 8
  ret void, !dbg !1054
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN5Linux14RCOutput_Bebop10disable_chEh(ptr noundef nonnull align 8 dereferenceable(152) %0, i8 noundef zeroext %1) unnamed_addr #6 align 2 !dbg !1055 {
  %3 = alloca ptr, align 8
  %4 = alloca i8, align 1
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1056, metadata !DIExpression()), !dbg !1057
  store i8 %1, ptr %4, align 1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1058, metadata !DIExpression()), !dbg !1059
  %5 = load ptr, ptr %3, align 8
  call void @_ZN5Linux14RCOutput_Bebop10_stop_propEv(ptr noundef nonnull align 8 dereferenceable(152) %5), !dbg !1060
  ret void, !dbg !1061
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN5Linux14RCOutput_Bebop5writeEht(ptr noundef nonnull align 8 dereferenceable(152) %0, i8 noundef zeroext %1, i16 noundef zeroext %2) unnamed_addr #6 align 2 !dbg !1062 {
  %4 = alloca ptr, align 8
  %5 = alloca i8, align 1
  %6 = alloca i16, align 2
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1063, metadata !DIExpression()), !dbg !1064
  store i8 %1, ptr %5, align 1
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1065, metadata !DIExpression()), !dbg !1066
  store i16 %2, ptr %6, align 2
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1067, metadata !DIExpression()), !dbg !1068
  %7 = load ptr, ptr %4, align 8
  %8 = load i8, ptr %5, align 1, !dbg !1069
  %9 = zext i8 %8 to i32, !dbg !1069
  %10 = icmp sge i32 %9, 4, !dbg !1071
  br i1 %10, label %11, label %12, !dbg !1072

11:                                               ; preds = %3
  br label %25, !dbg !1073

12:                                               ; preds = %3
  %13 = load i16, ptr %6, align 2, !dbg !1074
  %14 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %7, i32 0, i32 2, !dbg !1075
  %15 = load i8, ptr %5, align 1, !dbg !1076
  %16 = zext i8 %15 to i64, !dbg !1075
  %17 = getelementptr inbounds [4 x i16], ptr %14, i64 0, i64 %16, !dbg !1075
  store i16 %13, ptr %17, align 2, !dbg !1077
  %18 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %7, i32 0, i32 9, !dbg !1078
  %19 = load i8, ptr %18, align 1, !dbg !1078
  %20 = trunc i8 %19 to i1, !dbg !1078
  br i1 %20, label %25, label %21, !dbg !1080

21:                                               ; preds = %12
  %22 = load ptr, ptr %7, align 8, !dbg !1081
  %23 = getelementptr inbounds ptr, ptr %22, i64 7, !dbg !1081
  %24 = load ptr, ptr %23, align 8, !dbg !1081
  call void %24(ptr noundef nonnull align 8 dereferenceable(152) %7), !dbg !1081
  br label %25, !dbg !1081

25:                                               ; preds = %11, %21, %12
  ret void, !dbg !1082
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_ZN5Linux14RCOutput_Bebop4corkEv(ptr noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #5 align 2 !dbg !1083 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1084, metadata !DIExpression()), !dbg !1085
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %3, i32 0, i32 9, !dbg !1086
  store i8 1, ptr %4, align 1, !dbg !1087
  ret void, !dbg !1088
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_ZN5Linux14RCOutput_Bebop4pushEv(ptr noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #5 align 2 !dbg !1089 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1090, metadata !DIExpression()), !dbg !1091
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %3, i32 0, i32 9, !dbg !1092
  store i8 0, ptr %4, align 1, !dbg !1093
  %5 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %3, i32 0, i32 12, !dbg !1094
  %6 = call i32 @pthread_mutex_lock(ptr noundef %5) #11, !dbg !1095
  %7 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %3, i32 0, i32 3, !dbg !1096
  %8 = getelementptr inbounds [4 x i16], ptr %7, i64 0, i64 0, !dbg !1097
  %9 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %3, i32 0, i32 2, !dbg !1098
  %10 = getelementptr inbounds [4 x i16], ptr %9, i64 0, i64 0, !dbg !1097
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %8, ptr align 8 %10, i64 8, i1 false), !dbg !1097
  %11 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %3, i32 0, i32 13, !dbg !1099
  %12 = call i32 @pthread_cond_signal(ptr noundef %11) #11, !dbg !1100
  %13 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %3, i32 0, i32 12, !dbg !1101
  %14 = call i32 @pthread_mutex_unlock(ptr noundef %13) #11, !dbg !1102
  %15 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %3, i32 0, i32 2, !dbg !1103
  %16 = getelementptr inbounds [4 x i16], ptr %15, i64 0, i64 0, !dbg !1104
  call void @llvm.memset.p0.i64(ptr align 8 %16, i8 0, i64 8, i1 false), !dbg !1104
  ret void, !dbg !1105
}

; Function Attrs: nounwind
declare i32 @pthread_cond_signal(ptr noundef) #9

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef zeroext i16 @_ZN5Linux14RCOutput_Bebop4readEh(ptr noundef nonnull align 8 dereferenceable(152) %0, i8 noundef zeroext %1) unnamed_addr #5 align 2 !dbg !1106 {
  %3 = alloca i16, align 2
  %4 = alloca ptr, align 8
  %5 = alloca i8, align 1
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1107, metadata !DIExpression()), !dbg !1108
  store i8 %1, ptr %5, align 1
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1109, metadata !DIExpression()), !dbg !1110
  %6 = load ptr, ptr %4, align 8
  %7 = load i8, ptr %5, align 1, !dbg !1111
  %8 = zext i8 %7 to i32, !dbg !1111
  %9 = icmp slt i32 %8, 4, !dbg !1113
  br i1 %9, label %10, label %16, !dbg !1114

10:                                               ; preds = %2
  %11 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %6, i32 0, i32 3, !dbg !1115
  %12 = load i8, ptr %5, align 1, !dbg !1117
  %13 = zext i8 %12 to i64, !dbg !1115
  %14 = getelementptr inbounds [4 x i16], ptr %11, i64 0, i64 %13, !dbg !1115
  %15 = load i16, ptr %14, align 2, !dbg !1115
  store i16 %15, ptr %3, align 2, !dbg !1118
  br label %17, !dbg !1118

16:                                               ; preds = %2
  store i16 0, ptr %3, align 2, !dbg !1119
  br label %17, !dbg !1119

17:                                               ; preds = %16, %10
  %18 = load i16, ptr %3, align 2, !dbg !1121
  ret i16 %18, !dbg !1121
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN5Linux14RCOutput_Bebop4readEPth(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #6 align 2 !dbg !1122 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1123, metadata !DIExpression()), !dbg !1124
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1125, metadata !DIExpression()), !dbg !1126
  store i8 %2, ptr %6, align 1
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1127, metadata !DIExpression()), !dbg !1128
  %8 = load ptr, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1129, metadata !DIExpression()), !dbg !1131
  store i32 0, ptr %7, align 4, !dbg !1131
  br label %9, !dbg !1132

9:                                                ; preds = %26, %3
  %10 = load i32, ptr %7, align 4, !dbg !1133
  %11 = load i8, ptr %6, align 1, !dbg !1135
  %12 = zext i8 %11 to i32, !dbg !1135
  %13 = icmp slt i32 %10, %12, !dbg !1136
  br i1 %13, label %14, label %29, !dbg !1137

14:                                               ; preds = %9
  %15 = load i32, ptr %7, align 4, !dbg !1138
  %16 = add nsw i32 0, %15, !dbg !1139
  %17 = trunc i32 %16 to i8, !dbg !1140
  %18 = load ptr, ptr %8, align 8, !dbg !1141
  %19 = getelementptr inbounds ptr, ptr %18, i64 8, !dbg !1141
  %20 = load ptr, ptr %19, align 8, !dbg !1141
  %21 = call noundef zeroext i16 %20(ptr noundef nonnull align 8 dereferenceable(152) %8, i8 noundef zeroext %17), !dbg !1141
  %22 = load ptr, ptr %5, align 8, !dbg !1142
  %23 = load i32, ptr %7, align 4, !dbg !1143
  %24 = sext i32 %23 to i64, !dbg !1142
  %25 = getelementptr inbounds i16, ptr %22, i64 %24, !dbg !1142
  store i16 %21, ptr %25, align 2, !dbg !1144
  br label %26, !dbg !1142

26:                                               ; preds = %14
  %27 = load i32, ptr %7, align 4, !dbg !1145
  %28 = add nsw i32 %27, 1, !dbg !1145
  store i32 %28, ptr %7, align 4, !dbg !1145
  br label %9, !dbg !1146, !llvm.loop !1147

29:                                               ; preds = %9
  ret void, !dbg !1149
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_ZN5Linux14RCOutput_Bebop15set_esc_scalingEtt(ptr noundef nonnull align 8 dereferenceable(152) %0, i16 noundef zeroext %1, i16 noundef zeroext %2) unnamed_addr #5 align 2 !dbg !1150 {
  %4 = alloca ptr, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1151, metadata !DIExpression()), !dbg !1152
  store i16 %1, ptr %5, align 2
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1153, metadata !DIExpression()), !dbg !1154
  store i16 %2, ptr %6, align 2
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1155, metadata !DIExpression()), !dbg !1156
  %7 = load ptr, ptr %4, align 8
  %8 = load i16, ptr %5, align 2, !dbg !1157
  %9 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %7, i32 0, i32 6, !dbg !1158
  store i16 %8, ptr %9, align 2, !dbg !1159
  %10 = load i16, ptr %6, align 2, !dbg !1160
  %11 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %7, i32 0, i32 7, !dbg !1161
  store i16 %10, ptr %11, align 4, !dbg !1162
  ret void, !dbg !1163
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN5Linux14RCOutput_Bebop10_run_rcoutEv(ptr noundef nonnull align 8 dereferenceable(152) %0) #6 align 2 !dbg !1164 {
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
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1165, metadata !DIExpression()), !dbg !1166
  %14 = load ptr, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1167, metadata !DIExpression()), !dbg !1168
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1169, metadata !DIExpression()), !dbg !1170
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1171, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1173, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1182, metadata !DIExpression()), !dbg !1183
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1184, metadata !DIExpression()), !dbg !1185
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1186, metadata !DIExpression()), !dbg !1187
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1188, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1190, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1192, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1194, metadata !DIExpression()), !dbg !1195
  %15 = getelementptr inbounds [4 x i16], ptr %3, i64 0, i64 0, !dbg !1196
  call void @llvm.memset.p0.i64(ptr align 2 %15, i8 0, i64 8, i1 false), !dbg !1196
  %16 = call noundef zeroext i1 @_ZN5Linux14RCOutput_Bebop9_get_infoEP9bldc_info(ptr noundef nonnull align 8 dereferenceable(152) %14, ptr noundef %7), !dbg !1197
  br i1 %16, label %18, label %17, !dbg !1199

17:                                               ; preds = %1
  call void (ptr, ...) @_ZN6AP_HAL5panicEPKcz(ptr noundef @.str.6) #12, !dbg !1200
  unreachable, !dbg !1200

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.bldc_info, ptr %7, i32 0, i32 0, !dbg !1202
  %20 = load i8, ptr %19, align 1, !dbg !1202
  %21 = zext i8 %20 to i32, !dbg !1204
  %22 = icmp eq i32 %21, 1, !dbg !1205
  br i1 %22, label %23, label %24, !dbg !1206

23:                                               ; preds = %18
  store i8 0, ptr %9, align 1, !dbg !1207
  store i8 1, ptr %10, align 1, !dbg !1209
  store i8 2, ptr %11, align 1, !dbg !1210
  store i8 3, ptr %12, align 1, !dbg !1211
  br label %25, !dbg !1212

24:                                               ; preds = %18
  store i8 1, ptr %9, align 1, !dbg !1213
  store i8 0, ptr %10, align 1, !dbg !1215
  store i8 3, ptr %11, align 1, !dbg !1216
  store i8 2, ptr %12, align 1, !dbg !1217
  br label %25

25:                                               ; preds = %24, %23
  %26 = load i8, ptr %9, align 1, !dbg !1218
  %27 = getelementptr inbounds [4 x i8], ptr %8, i64 0, i64 0, !dbg !1219
  store i8 %26, ptr %27, align 1, !dbg !1220
  %28 = load i8, ptr %11, align 1, !dbg !1221
  %29 = getelementptr inbounds [4 x i8], ptr %8, i64 0, i64 1, !dbg !1222
  store i8 %28, ptr %29, align 1, !dbg !1223
  %30 = load i8, ptr %10, align 1, !dbg !1224
  %31 = getelementptr inbounds [4 x i8], ptr %8, i64 0, i64 2, !dbg !1225
  store i8 %30, ptr %31, align 1, !dbg !1226
  %32 = load i8, ptr %12, align 1, !dbg !1227
  %33 = getelementptr inbounds [4 x i8], ptr %8, i64 0, i64 3, !dbg !1228
  store i8 %32, ptr %33, align 1, !dbg !1229
  %34 = load ptr, ptr @_ZL3hal, align 8, !dbg !1230
  %35 = getelementptr inbounds %"class.AP_HAL::HAL", ptr %34, i32 0, i32 19, !dbg !1231
  %36 = load ptr, ptr %35, align 8, !dbg !1231
  %37 = call noundef ptr @_ZN5Linux4Util4fromEPN6AP_HAL4UtilE(ptr noundef %36), !dbg !1232
  %38 = call noundef i32 @_ZN5Linux4Util12get_hw_arm32Ev(ptr noundef nonnull align 8 dereferenceable(64) %37), !dbg !1233
  store i32 %38, ptr %13, align 4, !dbg !1234
  %39 = load i32, ptr %13, align 4, !dbg !1235
  %40 = icmp eq i32 %39, 2, !dbg !1237
  br i1 %40, label %41, label %43, !dbg !1238

41:                                               ; preds = %25
  %42 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %14, i32 0, i32 10, !dbg !1239
  store i16 11000, ptr %42, align 8, !dbg !1241
  br label %57, !dbg !1242

43:                                               ; preds = %25
  %44 = load i32, ptr %13, align 4, !dbg !1243
  %45 = icmp eq i32 %44, 3, !dbg !1245
  br i1 %45, label %46, label %48, !dbg !1246

46:                                               ; preds = %43
  %47 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %14, i32 0, i32 10, !dbg !1247
  store i16 12200, ptr %47, align 8, !dbg !1249
  br label %56, !dbg !1250

48:                                               ; preds = %43
  %49 = load i32, ptr %13, align 4, !dbg !1251
  %50 = icmp slt i32 %49, 0, !dbg !1253
  br i1 %50, label %51, label %54, !dbg !1254

51:                                               ; preds = %48
  %52 = load i32, ptr %13, align 4, !dbg !1255
  %53 = call ptr @strerror(i32 noundef %52) #11, !dbg !1257
  call void (ptr, ...) @_ZN6AP_HAL5panicEPKcz(ptr noundef @.str.7, ptr noundef %53) #12, !dbg !1258
  unreachable, !dbg !1258

54:                                               ; preds = %48
  %55 = load i32, ptr %13, align 4, !dbg !1259
  call void (ptr, ...) @_ZN6AP_HAL5panicEPKcz(ptr noundef @.str.8, i32 noundef %55) #12, !dbg !1261
  unreachable, !dbg !1261

56:                                               ; preds = %46
  br label %57

57:                                               ; preds = %56, %41
  br label %58, !dbg !1262

58:                                               ; preds = %57, %158
  %59 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %14, i32 0, i32 12, !dbg !1263
  %60 = call i32 @pthread_mutex_lock(ptr noundef %59) #11, !dbg !1265
  %61 = call i32 @clock_gettime(i32 noundef 1, ptr noundef %6) #11, !dbg !1266
  store i32 %61, ptr %5, align 4, !dbg !1267
  %62 = load i32, ptr %5, align 4, !dbg !1268
  %63 = icmp ne i32 %62, 0, !dbg !1270
  br i1 %63, label %64, label %69, !dbg !1271

64:                                               ; preds = %58
  %65 = load ptr, ptr @_ZL3hal, align 8, !dbg !1272
  %66 = getelementptr inbounds %"class.AP_HAL::HAL", ptr %65, i32 0, i32 14, !dbg !1273
  %67 = load ptr, ptr %66, align 8, !dbg !1273
  %68 = call noundef i64 @_ZN6AP_HAL5Print7printlnEPKc(ptr noundef nonnull align 8 dereferenceable(8) %67, ptr noundef @.str), !dbg !1274
  br label %69, !dbg !1272

69:                                               ; preds = %64, %58
  %70 = getelementptr inbounds %struct.timespec, ptr %6, i32 0, i32 1, !dbg !1275
  %71 = load i64, ptr %70, align 8, !dbg !1275
  %72 = icmp sgt i64 %71, 500000000, !dbg !1277
  br i1 %72, label %73, label %82, !dbg !1278

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.timespec, ptr %6, i32 0, i32 0, !dbg !1279
  %75 = load i64, ptr %74, align 8, !dbg !1281
  %76 = add nsw i64 %75, 1, !dbg !1281
  store i64 %76, ptr %74, align 8, !dbg !1281
  %77 = getelementptr inbounds %struct.timespec, ptr %6, i32 0, i32 1, !dbg !1282
  %78 = load i64, ptr %77, align 8, !dbg !1282
  %79 = add nsw i64 %78, 500000000, !dbg !1283
  %80 = sub nsw i64 %79, 1000000000, !dbg !1284
  %81 = getelementptr inbounds %struct.timespec, ptr %6, i32 0, i32 1, !dbg !1285
  store i64 %80, ptr %81, align 8, !dbg !1286
  br label %86, !dbg !1287

82:                                               ; preds = %69
  %83 = getelementptr inbounds %struct.timespec, ptr %6, i32 0, i32 1, !dbg !1288
  %84 = load i64, ptr %83, align 8, !dbg !1290
  %85 = add nsw i64 %84, 500000000, !dbg !1290
  store i64 %85, ptr %83, align 8, !dbg !1290
  br label %86

86:                                               ; preds = %82, %73
  store i32 0, ptr %5, align 4, !dbg !1291
  br label %87, !dbg !1292

87:                                               ; preds = %98, %86
  %88 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %14, i32 0, i32 3, !dbg !1293
  %89 = getelementptr inbounds [4 x i16], ptr %88, i64 0, i64 0, !dbg !1293
  %90 = getelementptr inbounds [4 x i16], ptr %3, i64 0, i64 0, !dbg !1294
  %91 = call i32 @memcmp(ptr noundef %89, ptr noundef %90, i64 noundef 8) #13, !dbg !1295
  %92 = icmp eq i32 %91, 0, !dbg !1296
  br i1 %92, label %93, label %96, !dbg !1297

93:                                               ; preds = %87
  %94 = load i32, ptr %5, align 4, !dbg !1298
  %95 = icmp eq i32 %94, 0, !dbg !1299
  br label %96

96:                                               ; preds = %93, %87
  %97 = phi i1 [ false, %87 ], [ %95, %93 ], !dbg !1300
  br i1 %97, label %98, label %102, !dbg !1292

98:                                               ; preds = %96
  %99 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %14, i32 0, i32 13, !dbg !1301
  %100 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %14, i32 0, i32 12, !dbg !1302
  %101 = call i32 @pthread_cond_timedwait(ptr noundef %99, ptr noundef %100, ptr noundef %6), !dbg !1303
  store i32 %101, ptr %5, align 4, !dbg !1304
  br label %87, !dbg !1292, !llvm.loop !1305

102:                                              ; preds = %96
  %103 = getelementptr inbounds [4 x i16], ptr %3, i64 0, i64 0, !dbg !1307
  %104 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %14, i32 0, i32 3, !dbg !1308
  %105 = getelementptr inbounds [4 x i16], ptr %104, i64 0, i64 0, !dbg !1307
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %103, ptr align 8 %105, i64 8, i1 false), !dbg !1307
  %106 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %14, i32 0, i32 12, !dbg !1309
  %107 = call i32 @pthread_mutex_unlock(ptr noundef %106) #11, !dbg !1310
  store i8 0, ptr %4, align 1, !dbg !1311
  br label %108, !dbg !1313

108:                                              ; preds = %137, %102
  %109 = load i8, ptr %4, align 1, !dbg !1314
  %110 = zext i8 %109 to i32, !dbg !1314
  %111 = icmp slt i32 %110, 4, !dbg !1316
  br i1 %111, label %112, label %140, !dbg !1317

112:                                              ; preds = %108
  %113 = load i8, ptr %4, align 1, !dbg !1318
  %114 = zext i8 %113 to i64, !dbg !1321
  %115 = getelementptr inbounds [4 x i16], ptr %3, i64 0, i64 %114, !dbg !1321
  %116 = load i16, ptr %115, align 2, !dbg !1321
  %117 = zext i16 %116 to i32, !dbg !1321
  %118 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %14, i32 0, i32 6, !dbg !1322
  %119 = load i16, ptr %118, align 2, !dbg !1322
  %120 = zext i16 %119 to i32, !dbg !1322
  %121 = add nsw i32 %120, 50, !dbg !1323
  %122 = icmp sle i32 %117, %121, !dbg !1324
  br i1 %122, label %123, label %124, !dbg !1325

123:                                              ; preds = %112
  br label %140, !dbg !1326

124:                                              ; preds = %112
  %125 = load i8, ptr %4, align 1, !dbg !1327
  %126 = zext i8 %125 to i64, !dbg !1328
  %127 = getelementptr inbounds [4 x i16], ptr %3, i64 0, i64 %126, !dbg !1328
  %128 = load i16, ptr %127, align 2, !dbg !1328
  %129 = call noundef zeroext i16 @_ZN5Linux14RCOutput_Bebop17_period_us_to_rpmEt(ptr noundef nonnull align 8 dereferenceable(152) %14, i16 noundef zeroext %128), !dbg !1329
  %130 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %14, i32 0, i32 4, !dbg !1330
  %131 = load i8, ptr %4, align 1, !dbg !1331
  %132 = zext i8 %131 to i64, !dbg !1332
  %133 = getelementptr inbounds [4 x i8], ptr %8, i64 0, i64 %132, !dbg !1332
  %134 = load i8, ptr %133, align 1, !dbg !1332
  %135 = zext i8 %134 to i64, !dbg !1330
  %136 = getelementptr inbounds [4 x i16], ptr %130, i64 0, i64 %135, !dbg !1330
  store i16 %129, ptr %136, align 2, !dbg !1333
  br label %137, !dbg !1334

137:                                              ; preds = %124
  %138 = load i8, ptr %4, align 1, !dbg !1335
  %139 = add i8 %138, 1, !dbg !1335
  store i8 %139, ptr %4, align 1, !dbg !1335
  br label %108, !dbg !1336, !llvm.loop !1337

140:                                              ; preds = %123, %108
  %141 = load i8, ptr %4, align 1, !dbg !1339
  %142 = zext i8 %141 to i32, !dbg !1339
  %143 = icmp slt i32 %142, 4, !dbg !1341
  br i1 %143, label %144, label %151, !dbg !1342

144:                                              ; preds = %140
  %145 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %14, i32 0, i32 8, !dbg !1343
  %146 = load i8, ptr %145, align 2, !dbg !1343
  %147 = zext i8 %146 to i32, !dbg !1343
  %148 = icmp eq i32 %147, 0, !dbg !1346
  br i1 %148, label %149, label %150, !dbg !1347

149:                                              ; preds = %144
  call void @_ZN5Linux14RCOutput_Bebop10_stop_propEv(ptr noundef nonnull align 8 dereferenceable(152) %14), !dbg !1348
  call void @_ZN5Linux14RCOutput_Bebop12_clear_errorEv(ptr noundef nonnull align 8 dereferenceable(152) %14), !dbg !1350
  br label %150, !dbg !1351

150:                                              ; preds = %149, %144
  br label %158, !dbg !1352

151:                                              ; preds = %140
  %152 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %14, i32 0, i32 8, !dbg !1353
  %153 = load i8, ptr %152, align 2, !dbg !1353
  %154 = zext i8 %153 to i32, !dbg !1353
  %155 = icmp eq i32 %154, 1, !dbg !1356
  br i1 %155, label %156, label %157, !dbg !1357

156:                                              ; preds = %151
  call void @_ZN5Linux14RCOutput_Bebop11_start_propEv(ptr noundef nonnull align 8 dereferenceable(152) %14), !dbg !1358
  br label %157, !dbg !1358

157:                                              ; preds = %156, %151
  br label %158

158:                                              ; preds = %157, %150
  %159 = getelementptr inbounds %"class.Linux::RCOutput_Bebop", ptr %14, i32 0, i32 4, !dbg !1359
  %160 = getelementptr inbounds [4 x i16], ptr %159, i64 0, i64 0, !dbg !1359
  call void @_ZN5Linux14RCOutput_Bebop14_set_ref_speedEPt(ptr noundef nonnull align 8 dereferenceable(152) %14, ptr noundef %160), !dbg !1360
  br label %58, !dbg !1262, !llvm.loop !1361
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZN5Linux4Util4fromEPN6AP_HAL4UtilE(ptr noundef %0) #5 comdat align 2 !dbg !1363 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1370, metadata !DIExpression()), !dbg !1371
  %3 = load ptr, ptr %2, align 8, !dbg !1372
  ret ptr %3, !dbg !1373
}

declare noundef i32 @_ZN5Linux4Util12get_hw_arm32Ev(ptr noundef nonnull align 8 dereferenceable(64)) #1

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) #9

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) #9

declare noundef i64 @_ZN6AP_HAL5Print7printlnEPKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #10

declare i32 @pthread_cond_timedwait(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef zeroext i16 @_ZN6AP_HAL8RCOutput14read_last_sentEh(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef zeroext %1) unnamed_addr #6 comdat align 2 !dbg !1374 {
  %3 = alloca ptr, align 8
  %4 = alloca i8, align 1
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1375, metadata !DIExpression()), !dbg !1376
  store i8 %1, ptr %4, align 1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1377, metadata !DIExpression()), !dbg !1378
  %5 = load ptr, ptr %3, align 8
  %6 = load i8, ptr %4, align 1, !dbg !1379
  %7 = load ptr, ptr %5, align 8, !dbg !1380
  %8 = getelementptr inbounds ptr, ptr %7, i64 8, !dbg !1380
  %9 = load ptr, ptr %8, align 8, !dbg !1380
  %10 = call noundef zeroext i16 %9(ptr noundef nonnull align 8 dereferenceable(8) %5, i8 noundef zeroext %6), !dbg !1380
  ret i16 %10, !dbg !1381
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN6AP_HAL8RCOutput14read_last_sentEPth(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #6 comdat align 2 !dbg !1382 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i8, align 1
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1383, metadata !DIExpression()), !dbg !1384
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1385, metadata !DIExpression()), !dbg !1386
  store i8 %2, ptr %6, align 1
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1387, metadata !DIExpression()), !dbg !1388
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8, !dbg !1389
  %9 = load i8, ptr %6, align 1, !dbg !1390
  %10 = load ptr, ptr %7, align 8, !dbg !1391
  %11 = getelementptr inbounds ptr, ptr %10, i64 9, !dbg !1391
  %12 = load ptr, ptr %11, align 8, !dbg !1391
  call void %12(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %8, i8 noundef zeroext %9), !dbg !1391
  ret void, !dbg !1392
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN6AP_HAL8RCOutput14set_safety_pwmEjt(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1, i16 noundef zeroext %2) unnamed_addr #5 comdat align 2 !dbg !1393 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1394, metadata !DIExpression()), !dbg !1395
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1396, metadata !DIExpression()), !dbg !1397
  store i16 %2, ptr %6, align 2
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1398, metadata !DIExpression()), !dbg !1399
  %7 = load ptr, ptr %4, align 8
  ret void, !dbg !1400
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN6AP_HAL8RCOutput16set_failsafe_pwmEjt(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1, i16 noundef zeroext %2) unnamed_addr #5 comdat align 2 !dbg !1401 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1402, metadata !DIExpression()), !dbg !1403
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1404, metadata !DIExpression()), !dbg !1405
  store i16 %2, ptr %6, align 2
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1406, metadata !DIExpression()), !dbg !1407
  %7 = load ptr, ptr %4, align 8
  ret void, !dbg !1408
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN6AP_HAL8RCOutput15force_safety_onEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 !dbg !1409 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1410, metadata !DIExpression()), !dbg !1411
  %3 = load ptr, ptr %2, align 8
  ret i1 false, !dbg !1412
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN6AP_HAL8RCOutput16force_safety_offEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 !dbg !1413 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1414, metadata !DIExpression()), !dbg !1415
  %3 = load ptr, ptr %2, align 8
  ret void, !dbg !1416
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN6AP_HAL8RCOutput15enable_sbus_outEt(ptr noundef nonnull align 8 dereferenceable(8) %0, i16 noundef zeroext %1) unnamed_addr #5 comdat align 2 !dbg !1417 {
  %3 = alloca ptr, align 8
  %4 = alloca i16, align 2
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1418, metadata !DIExpression()), !dbg !1419
  store i16 %1, ptr %4, align 2
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1420, metadata !DIExpression()), !dbg !1421
  %5 = load ptr, ptr %3, align 8
  ret i1 false, !dbg !1422
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN6AP_HAL8RCOutput15set_output_modeENS0_11output_modeE(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) unnamed_addr #5 comdat align 2 !dbg !1423 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1424, metadata !DIExpression()), !dbg !1425
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1426, metadata !DIExpression()), !dbg !1427
  %5 = load ptr, ptr %3, align 8
  ret void, !dbg !1428
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN6AP_HAL8RCOutput4corkEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 !dbg !1429 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1430, metadata !DIExpression()), !dbg !1431
  %3 = load ptr, ptr %2, align 8
  ret void, !dbg !1432
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN6AP_HAL8RCOutput4pushEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 !dbg !1433 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1434, metadata !DIExpression()), !dbg !1435
  %3 = load ptr, ptr %2, align 8
  ret void, !dbg !1436
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN6AP_HAL8RCOutput15set_esc_scalingEtt(ptr noundef nonnull align 8 dereferenceable(8) %0, i16 noundef zeroext %1, i16 noundef zeroext %2) unnamed_addr #5 comdat align 2 !dbg !1437 {
  %4 = alloca ptr, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1438, metadata !DIExpression()), !dbg !1439
  store i16 %1, ptr %5, align 2
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1440, metadata !DIExpression()), !dbg !1441
  store i16 %2, ptr %6, align 2
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1442, metadata !DIExpression()), !dbg !1443
  %7 = load ptr, ptr %4, align 8
  ret void, !dbg !1444
}

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_RCOutput_Bebop.cpp() #0 section ".text.startup" !dbg !1445 {
  call void @__cxx_global_var_init(), !dbg !1447
  ret void
}

attributes #0 = { noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind }
attributes #12 = { noreturn }
attributes #13 = { nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!558, !559, !560, !561, !562, !563, !564}
!llvm.ident = !{!565}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "hal", linkageName: "_ZL3hal", scope: !2, file: !6, line: 73, type: !554, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !3, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !98, globals: !270, imports: !311, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/raj/ardupilot/libraries/AP_HAL_Linux/RCOutput_Bebop.cpp", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "96ffff83eeeaf56fe2bf37bd1a24ebee")
!4 = !{!5, !11, !19, !24, !32}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 66, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "ardupilot/libraries/AP_HAL_Linux/RCOutput_Bebop.cpp", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "96ffff83eeeaf56fe2bf37bd1a24ebee")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "BEBOP_BLDC_STARTED", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "BEBOP_BLDC_STOPPED", value: 1, isUnsigned: true)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "bebop_bldc_motor", file: !12, line: 5, baseType: !7, size: 32, elements: !13, identifier: "_ZTS16bebop_bldc_motor")
!12 = !DIFile(filename: "ardupilot/libraries/AP_HAL_Linux/RCOutput_Bebop.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "08241026a11acb5d9d66b6635490a9b0")
!13 = !{!14, !15, !16, !17, !18}
!14 = !DIEnumerator(name: "BEBOP_BLDC_MOTOR_1", value: 0, isUnsigned: true)
!15 = !DIEnumerator(name: "BEBOP_BLDC_MOTOR_2", value: 1, isUnsigned: true)
!16 = !DIEnumerator(name: "BEBOP_BLDC_MOTOR_3", value: 2, isUnsigned: true)
!17 = !DIEnumerator(name: "BEBOP_BLDC_MOTOR_4", value: 3, isUnsigned: true)
!18 = !DIEnumerator(name: "BEBOP_BLDC_MOTORS_NUM", value: 4, isUnsigned: true)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !20, line: 124, baseType: !7, size: 32, elements: !21)
!20 = !DIFile(filename: "/usr/include/pthread.h", directory: "", checksumkind: CSK_MD5, checksum: "5205981c6f80cc3dc1e81231df63d8ef")
!21 = !{!22, !23}
!22 = !DIEnumerator(name: "PTHREAD_INHERIT_SCHED", value: 0, isUnsigned: true)
!23 = !DIEnumerator(name: "PTHREAD_EXPLICIT_SCHED", value: 1, isUnsigned: true)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hw_type", file: !25, line: 10, baseType: !7, size: 32, elements: !26, identifier: "_ZTS7hw_type")
!25 = !DIFile(filename: "ardupilot/libraries/AP_HAL_Linux/Util.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "5ae01f950b4e3c71cb44c23bc1198fc5")
!26 = !{!27, !28, !29, !30, !31}
!27 = !DIEnumerator(name: "UTIL_HARDWARE_RPI1", value: 0, isUnsigned: true)
!28 = !DIEnumerator(name: "UTIL_HARDWARE_RPI2", value: 1, isUnsigned: true)
!29 = !DIEnumerator(name: "UTIL_HARDWARE_BEBOP", value: 2, isUnsigned: true)
!30 = !DIEnumerator(name: "UTIL_HARDWARE_BEBOP2", value: 3, isUnsigned: true)
!31 = !DIEnumerator(name: "UTIL_NUM_HARDWARES", value: 4, isUnsigned: true)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "output_mode", scope: !34, file: !33, line: 119, baseType: !7, size: 32, elements: !95, identifier: "_ZTSN6AP_HAL8RCOutput11output_modeE")
!33 = !DIFile(filename: "ardupilot/libraries/AP_HAL/RCOutput.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "ad0613ee10b38c6ce33c58543afd8bad")
!34 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "RCOutput", scope: !35, file: !33, line: 31, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !36, vtableHolder: !34, identifier: "_ZTSN6AP_HAL8RCOutputE")
!35 = !DINamespace(name: "AP_HAL", scope: null)
!36 = !{!37, !43, !47, !57, !63, !66, !67, !70, !71, !72, !73, !77, !78, !79, !80, !81, !85, !86, !89, !92}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$RCOutput", scope: !33, file: !33, baseType: !38, size: 64, flags: DIFlagArtificial)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "__vtbl_ptr_type", baseType: !40, size: 64)
!40 = !DISubroutineType(types: !41)
!41 = !{!42}
!42 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!43 = !DISubprogram(name: "init", linkageName: "_ZN6AP_HAL8RCOutput4initEv", scope: !34, file: !33, line: 33, type: !44, scopeLine: 33, containingType: !34, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual)
!44 = !DISubroutineType(types: !45)
!45 = !{null, !46}
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!47 = !DISubprogram(name: "set_freq", linkageName: "_ZN6AP_HAL8RCOutput8set_freqEjt", scope: !34, file: !33, line: 36, type: !48, scopeLine: 36, containingType: !34, virtualIndex: 1, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual)
!48 = !DISubroutineType(types: !49)
!49 = !{null, !46, !50, !54}
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !51, line: 26, baseType: !52)
!51 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !53, line: 42, baseType: !7)
!53 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !51, line: 25, baseType: !55)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !53, line: 40, baseType: !56)
!56 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!57 = !DISubprogram(name: "get_freq", linkageName: "_ZN6AP_HAL8RCOutput8get_freqEh", scope: !34, file: !33, line: 37, type: !58, scopeLine: 37, containingType: !34, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual)
!58 = !DISubroutineType(types: !59)
!59 = !{!54, !46, !60}
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !51, line: 24, baseType: !61)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !53, line: 38, baseType: !62)
!62 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!63 = !DISubprogram(name: "enable_ch", linkageName: "_ZN6AP_HAL8RCOutput9enable_chEh", scope: !34, file: !33, line: 41, type: !64, scopeLine: 41, containingType: !34, virtualIndex: 3, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual)
!64 = !DISubroutineType(types: !65)
!65 = !{null, !46, !60}
!66 = !DISubprogram(name: "disable_ch", linkageName: "_ZN6AP_HAL8RCOutput10disable_chEh", scope: !34, file: !33, line: 42, type: !64, scopeLine: 42, containingType: !34, virtualIndex: 4, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual)
!67 = !DISubprogram(name: "write", linkageName: "_ZN6AP_HAL8RCOutput5writeEht", scope: !34, file: !33, line: 48, type: !68, scopeLine: 48, containingType: !34, virtualIndex: 5, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual)
!68 = !DISubroutineType(types: !69)
!69 = !{null, !46, !60, !54}
!70 = !DISubprogram(name: "cork", linkageName: "_ZN6AP_HAL8RCOutput4corkEv", scope: !34, file: !33, line: 58, type: !44, scopeLine: 58, containingType: !34, virtualIndex: 6, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!71 = !DISubprogram(name: "push", linkageName: "_ZN6AP_HAL8RCOutput4pushEv", scope: !34, file: !33, line: 67, type: !44, scopeLine: 67, containingType: !34, virtualIndex: 7, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!72 = !DISubprogram(name: "read", linkageName: "_ZN6AP_HAL8RCOutput4readEh", scope: !34, file: !33, line: 73, type: !58, scopeLine: 73, containingType: !34, virtualIndex: 8, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual)
!73 = !DISubprogram(name: "read", linkageName: "_ZN6AP_HAL8RCOutput4readEPth", scope: !34, file: !33, line: 74, type: !74, scopeLine: 74, containingType: !34, virtualIndex: 9, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual)
!74 = !DISubroutineType(types: !75)
!75 = !{null, !46, !76, !60}
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!77 = !DISubprogram(name: "read_last_sent", linkageName: "_ZN6AP_HAL8RCOutput14read_last_sentEh", scope: !34, file: !33, line: 77, type: !58, scopeLine: 77, containingType: !34, virtualIndex: 10, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!78 = !DISubprogram(name: "read_last_sent", linkageName: "_ZN6AP_HAL8RCOutput14read_last_sentEPth", scope: !34, file: !33, line: 78, type: !74, scopeLine: 78, containingType: !34, virtualIndex: 11, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!79 = !DISubprogram(name: "set_safety_pwm", linkageName: "_ZN6AP_HAL8RCOutput14set_safety_pwmEjt", scope: !34, file: !33, line: 84, type: !48, scopeLine: 84, containingType: !34, virtualIndex: 12, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!80 = !DISubprogram(name: "set_failsafe_pwm", linkageName: "_ZN6AP_HAL8RCOutput16set_failsafe_pwmEjt", scope: !34, file: !33, line: 89, type: !48, scopeLine: 89, containingType: !34, virtualIndex: 13, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!81 = !DISubprogram(name: "force_safety_on", linkageName: "_ZN6AP_HAL8RCOutput15force_safety_onEv", scope: !34, file: !33, line: 96, type: !82, scopeLine: 96, containingType: !34, virtualIndex: 14, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!82 = !DISubroutineType(types: !83)
!83 = !{!84, !46}
!84 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!85 = !DISubprogram(name: "force_safety_off", linkageName: "_ZN6AP_HAL8RCOutput16force_safety_offEv", scope: !34, file: !33, line: 101, type: !44, scopeLine: 101, containingType: !34, virtualIndex: 15, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!86 = !DISubprogram(name: "set_esc_scaling", linkageName: "_ZN6AP_HAL8RCOutput15set_esc_scalingEtt", scope: !34, file: !33, line: 109, type: !87, scopeLine: 109, containingType: !34, virtualIndex: 16, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!87 = !DISubroutineType(types: !88)
!88 = !{null, !46, !54, !54}
!89 = !DISubprogram(name: "enable_sbus_out", linkageName: "_ZN6AP_HAL8RCOutput15enable_sbus_outEt", scope: !34, file: !33, line: 114, type: !90, scopeLine: 114, containingType: !34, virtualIndex: 17, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!90 = !DISubroutineType(types: !91)
!91 = !{!84, !46, !54}
!92 = !DISubprogram(name: "set_output_mode", linkageName: "_ZN6AP_HAL8RCOutput15set_output_modeENS0_11output_modeE", scope: !34, file: !33, line: 123, type: !93, scopeLine: 123, containingType: !34, virtualIndex: 18, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!93 = !DISubroutineType(types: !94)
!94 = !{null, !46, !32}
!95 = !{!96, !97}
!96 = !DIEnumerator(name: "MODE_PWM_NORMAL", value: 0, isUnsigned: true)
!97 = !DIEnumerator(name: "MODE_PWM_ONESHOT", value: 1, isUnsigned: true)
!98 = !{!99, !54, !100, !55, !268}
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "RCOutput_Bebop", scope: !102, file: !12, line: 60, size: 1216, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !103, vtableHolder: !34)
!102 = !DINamespace(name: "Linux", scope: null)
!103 = !{!104, !105, !109, !113, !114, !115, !116, !117, !118, !119, !120, !121, !125, !156, !190, !194, !198, !199, !202, !205, !208, !209, !212, !213, !214, !215, !218, !221, !235, !238, !239, !240, !243, !257, !258, !259, !260, !263, !264}
!104 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !101, baseType: !34, flags: DIFlagPublic, extraData: i32 0)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_i2c_sem", scope: !101, file: !12, line: 82, baseType: !106, size: 64, offset: 64)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DICompositeType(tag: DW_TAG_class_type, name: "Semaphore", scope: !35, file: !108, line: 7, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN6AP_HAL9SemaphoreE")
!108 = !DIFile(filename: "ardupilot/libraries/AP_HAL/Semaphores.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "adfc5c77867951e90e4bb54608b881db")
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_request_period_us", scope: !101, file: !12, line: 83, baseType: !110, size: 64, offset: 128)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 64, elements: !111)
!111 = !{!112}
!112 = !DISubrange(count: 4)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_period_us", scope: !101, file: !12, line: 84, baseType: !110, size: 64, offset: 192)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_rpm", scope: !101, file: !12, line: 85, baseType: !110, size: 64, offset: 256)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_frequency", scope: !101, file: !12, line: 86, baseType: !54, size: 16, offset: 320)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_min_pwm", scope: !101, file: !12, line: 87, baseType: !54, size: 16, offset: 336)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_max_pwm", scope: !101, file: !12, line: 88, baseType: !54, size: 16, offset: 352)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_state", scope: !101, file: !12, line: 89, baseType: !60, size: 8, offset: 368)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_corking", scope: !101, file: !12, line: 90, baseType: !84, size: 8, offset: 376)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_max_rpm", scope: !101, file: !12, line: 91, baseType: !54, size: 16, offset: 384)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_thread", scope: !101, file: !12, line: 104, baseType: !122, size: 64, offset: 448)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !123, line: 27, baseType: !124)
!123 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!124 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_mutex", scope: !101, file: !12, line: 105, baseType: !126, size: 320, offset: 512)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !123, line: 72, baseType: !127)
!127 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !123, line: 67, size: 320, flags: DIFlagTypePassByValue, elements: !128, identifier: "_ZTS15pthread_mutex_t")
!128 = !{!129, !149, !154}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !127, file: !123, line: 69, baseType: !130, size: 320)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !131, line: 22, size: 320, flags: DIFlagTypePassByValue, elements: !132, identifier: "_ZTS17__pthread_mutex_s")
!131 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "584baedd80e6041b81caae7f496091c0")
!132 = !{!133, !134, !135, !136, !137, !138, !140, !141}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !130, file: !131, line: 24, baseType: !42, size: 32)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !130, file: !131, line: 25, baseType: !7, size: 32, offset: 32)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !130, file: !131, line: 26, baseType: !42, size: 32, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !130, file: !131, line: 28, baseType: !7, size: 32, offset: 96)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !130, file: !131, line: 32, baseType: !42, size: 32, offset: 128)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !130, file: !131, line: 34, baseType: !139, size: 16, offset: 160)
!139 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !130, file: !131, line: 35, baseType: !139, size: 16, offset: 176)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !130, file: !131, line: 36, baseType: !142, size: 128, offset: 192)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !143, line: 55, baseType: !144)
!143 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "04c81e86d34dad9c99ad006d32e47a0d")
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !143, line: 51, size: 128, flags: DIFlagTypePassByValue, elements: !145, identifier: "_ZTS23__pthread_internal_list")
!145 = !{!146, !148}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !144, file: !143, line: 53, baseType: !147, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !144, file: !143, line: 54, baseType: !147, size: 64, offset: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !127, file: !123, line: 70, baseType: !150, size: 320)
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 320, elements: !152)
!151 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!152 = !{!153}
!153 = !DISubrange(count: 40)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !127, file: !123, line: 71, baseType: !155, size: 64)
!155 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_cond", scope: !101, file: !12, line: 106, baseType: !157, size: 384, offset: 832)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_cond_t", file: !123, line: 80, baseType: !158)
!158 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !123, line: 75, size: 384, flags: DIFlagTypePassByValue, elements: !159, identifier: "_ZTS14pthread_cond_t")
!159 = !{!160, !184, !188}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !158, file: !123, line: 77, baseType: !161, size: 384)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_cond_s", file: !143, line: 94, size: 384, flags: DIFlagTypePassByValue, elements: !162, identifier: "_ZTS16__pthread_cond_s")
!162 = !{!163, !175, !176, !180, !181, !182, !183}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "__wseq", scope: !161, file: !143, line: 96, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "__atomic_wide_counter", file: !165, line: 33, baseType: !166)
!165 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/atomic_wide_counter.h", directory: "", checksumkind: CSK_MD5, checksum: "2708e6e61e266abad2d765ccef838dbe")
!166 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !165, line: 25, size: 64, flags: DIFlagTypePassByValue, elements: !167, identifier: "_ZTS21__atomic_wide_counter")
!167 = !{!168, !170}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "__value64", scope: !166, file: !165, line: 27, baseType: !169, size: 64)
!169 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "__value32", scope: !166, file: !165, line: 32, baseType: !171, size: 64)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !166, file: !165, line: 28, size: 64, flags: DIFlagTypePassByValue, elements: !172, identifier: "_ZTSN21__atomic_wide_counterUt_E")
!172 = !{!173, !174}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "__low", scope: !171, file: !165, line: 30, baseType: !7, size: 32)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "__high", scope: !171, file: !165, line: 31, baseType: !7, size: 32, offset: 32)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_start", scope: !161, file: !143, line: 97, baseType: !164, size: 64, offset: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "__g_refs", scope: !161, file: !143, line: 98, baseType: !177, size: 64, offset: 128)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !178)
!178 = !{!179}
!179 = !DISubrange(count: 2)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "__g_size", scope: !161, file: !143, line: 99, baseType: !177, size: 64, offset: 192)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_orig_size", scope: !161, file: !143, line: 100, baseType: !7, size: 32, offset: 256)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "__wrefs", scope: !161, file: !143, line: 101, baseType: !7, size: 32, offset: 288)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "__g_signals", scope: !161, file: !143, line: 102, baseType: !177, size: 64, offset: 320)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !158, file: !123, line: 78, baseType: !185, size: 384)
!185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 384, elements: !186)
!186 = !{!187}
!187 = !DISubrange(count: 48)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !158, file: !123, line: 79, baseType: !189, size: 64)
!189 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!190 = !DISubprogram(name: "RCOutput_Bebop", scope: !101, file: !12, line: 62, type: !191, scopeLine: 62, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!191 = !DISubroutineType(types: !192)
!192 = !{null, !193}
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!194 = !DISubprogram(name: "from", linkageName: "_ZN5Linux14RCOutput_Bebop4fromEPN6AP_HAL8RCOutputE", scope: !101, file: !12, line: 64, type: !195, scopeLine: 64, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!195 = !DISubroutineType(types: !196)
!196 = !{!100, !197}
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!198 = !DISubprogram(name: "init", linkageName: "_ZN5Linux14RCOutput_Bebop4initEv", scope: !101, file: !12, line: 68, type: !191, scopeLine: 68, containingType: !101, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!199 = !DISubprogram(name: "set_freq", linkageName: "_ZN5Linux14RCOutput_Bebop8set_freqEjt", scope: !101, file: !12, line: 69, type: !200, scopeLine: 69, containingType: !101, virtualIndex: 1, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!200 = !DISubroutineType(types: !201)
!201 = !{null, !193, !50, !54}
!202 = !DISubprogram(name: "get_freq", linkageName: "_ZN5Linux14RCOutput_Bebop8get_freqEh", scope: !101, file: !12, line: 70, type: !203, scopeLine: 70, containingType: !101, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!203 = !DISubroutineType(types: !204)
!204 = !{!54, !193, !60}
!205 = !DISubprogram(name: "enable_ch", linkageName: "_ZN5Linux14RCOutput_Bebop9enable_chEh", scope: !101, file: !12, line: 71, type: !206, scopeLine: 71, containingType: !101, virtualIndex: 3, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!206 = !DISubroutineType(types: !207)
!207 = !{null, !193, !60}
!208 = !DISubprogram(name: "disable_ch", linkageName: "_ZN5Linux14RCOutput_Bebop10disable_chEh", scope: !101, file: !12, line: 72, type: !206, scopeLine: 72, containingType: !101, virtualIndex: 4, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!209 = !DISubprogram(name: "write", linkageName: "_ZN5Linux14RCOutput_Bebop5writeEht", scope: !101, file: !12, line: 73, type: !210, scopeLine: 73, containingType: !101, virtualIndex: 5, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!210 = !DISubroutineType(types: !211)
!211 = !{null, !193, !60, !54}
!212 = !DISubprogram(name: "cork", linkageName: "_ZN5Linux14RCOutput_Bebop4corkEv", scope: !101, file: !12, line: 74, type: !191, scopeLine: 74, containingType: !101, virtualIndex: 6, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!213 = !DISubprogram(name: "push", linkageName: "_ZN5Linux14RCOutput_Bebop4pushEv", scope: !101, file: !12, line: 75, type: !191, scopeLine: 75, containingType: !101, virtualIndex: 7, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!214 = !DISubprogram(name: "read", linkageName: "_ZN5Linux14RCOutput_Bebop4readEh", scope: !101, file: !12, line: 76, type: !203, scopeLine: 76, containingType: !101, virtualIndex: 8, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!215 = !DISubprogram(name: "read", linkageName: "_ZN5Linux14RCOutput_Bebop4readEPth", scope: !101, file: !12, line: 77, type: !216, scopeLine: 77, containingType: !101, virtualIndex: 9, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!216 = !DISubroutineType(types: !217)
!217 = !{null, !193, !76, !60}
!218 = !DISubprogram(name: "set_esc_scaling", linkageName: "_ZN5Linux14RCOutput_Bebop15set_esc_scalingEtt", scope: !101, file: !12, line: 78, type: !219, scopeLine: 78, containingType: !101, virtualIndex: 16, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!219 = !DISubroutineType(types: !220)
!220 = !{null, !193, !54, !54}
!221 = !DISubprogram(name: "read_obs_data", linkageName: "_ZN5Linux14RCOutput_Bebop13read_obs_dataER17BebopBLDC_ObsData", scope: !101, file: !12, line: 79, type: !222, scopeLine: 79, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!222 = !DISubroutineType(types: !223)
!223 = !{!42, !193, !224}
!224 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !225, size: 64)
!225 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "BebopBLDC_ObsData", file: !12, line: 38, size: 144, flags: DIFlagTypePassByValue, elements: !226, identifier: "_ZTS17BebopBLDC_ObsData")
!226 = !{!227, !228, !230, !231, !232, !233, !234}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "rpm", scope: !225, file: !12, line: 40, baseType: !110, size: 64, flags: DIFlagPublic)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "rpm_saturated", scope: !225, file: !12, line: 41, baseType: !229, size: 32, offset: 64, flags: DIFlagPublic)
!229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 32, elements: !111)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "batt_mv", scope: !225, file: !12, line: 42, baseType: !54, size: 16, offset: 96, flags: DIFlagPublic)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !225, file: !12, line: 43, baseType: !60, size: 8, offset: 112, flags: DIFlagPublic)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !225, file: !12, line: 44, baseType: !60, size: 8, offset: 120, flags: DIFlagPublic)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "motors_err", scope: !225, file: !12, line: 45, baseType: !60, size: 8, offset: 128, flags: DIFlagPublic)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "temperature", scope: !225, file: !12, line: 46, baseType: !60, size: 8, offset: 136, flags: DIFlagPublic)
!235 = !DISubprogram(name: "_checksum", linkageName: "_ZN5Linux14RCOutput_Bebop9_checksumEPhj", scope: !101, file: !12, line: 93, type: !236, scopeLine: 93, flags: DIFlagPrototyped, spFlags: 0)
!236 = !DISubroutineType(types: !237)
!237 = !{!60, !193, !99, !7}
!238 = !DISubprogram(name: "_start_prop", linkageName: "_ZN5Linux14RCOutput_Bebop11_start_propEv", scope: !101, file: !12, line: 94, type: !191, scopeLine: 94, flags: DIFlagPrototyped, spFlags: 0)
!239 = !DISubprogram(name: "_toggle_gpio", linkageName: "_ZN5Linux14RCOutput_Bebop12_toggle_gpioEh", scope: !101, file: !12, line: 95, type: !206, scopeLine: 95, flags: DIFlagPrototyped, spFlags: 0)
!240 = !DISubprogram(name: "_set_ref_speed", linkageName: "_ZN5Linux14RCOutput_Bebop14_set_ref_speedEPt", scope: !101, file: !12, line: 96, type: !241, scopeLine: 96, flags: DIFlagPrototyped, spFlags: 0)
!241 = !DISubroutineType(types: !242)
!242 = !{null, !193, !76}
!243 = !DISubprogram(name: "_get_info", linkageName: "_ZN5Linux14RCOutput_Bebop9_get_infoEP9bldc_info", scope: !101, file: !12, line: 97, type: !244, scopeLine: 97, flags: DIFlagPrototyped, spFlags: 0)
!244 = !DISubroutineType(types: !245)
!245 = !{!84, !193, !246}
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bldc_info", file: !12, line: 49, size: 104, flags: DIFlagTypePassByValue, elements: !248, identifier: "_ZTS9bldc_info")
!248 = !{!249, !250, !251, !252, !253, !254, !255, !256}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "version_maj", scope: !247, file: !12, line: 50, baseType: !60, size: 8)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "version_min", scope: !247, file: !12, line: 51, baseType: !60, size: 8, offset: 8)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !247, file: !12, line: 52, baseType: !60, size: 8, offset: 16)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "n_motors", scope: !247, file: !12, line: 53, baseType: !60, size: 8, offset: 24)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "n_flights", scope: !247, file: !12, line: 54, baseType: !54, size: 16, offset: 32)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "last_flight_time", scope: !247, file: !12, line: 55, baseType: !54, size: 16, offset: 48)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "total_flight_time", scope: !247, file: !12, line: 56, baseType: !50, size: 32, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "last_error", scope: !247, file: !12, line: 57, baseType: !60, size: 8, offset: 96)
!257 = !DISubprogram(name: "_stop_prop", linkageName: "_ZN5Linux14RCOutput_Bebop10_stop_propEv", scope: !101, file: !12, line: 98, type: !191, scopeLine: 98, flags: DIFlagPrototyped, spFlags: 0)
!258 = !DISubprogram(name: "_clear_error", linkageName: "_ZN5Linux14RCOutput_Bebop12_clear_errorEv", scope: !101, file: !12, line: 99, type: !191, scopeLine: 99, flags: DIFlagPrototyped, spFlags: 0)
!259 = !DISubprogram(name: "_play_sound", linkageName: "_ZN5Linux14RCOutput_Bebop11_play_soundEh", scope: !101, file: !12, line: 100, type: !206, scopeLine: 100, flags: DIFlagPrototyped, spFlags: 0)
!260 = !DISubprogram(name: "_period_us_to_rpm", linkageName: "_ZN5Linux14RCOutput_Bebop17_period_us_to_rpmEt", scope: !101, file: !12, line: 101, type: !261, scopeLine: 101, flags: DIFlagPrototyped, spFlags: 0)
!261 = !DISubroutineType(types: !262)
!262 = !{!54, !193, !54}
!263 = !DISubprogram(name: "_run_rcout", linkageName: "_ZN5Linux14RCOutput_Bebop10_run_rcoutEv", scope: !101, file: !12, line: 107, type: !191, scopeLine: 107, flags: DIFlagPrototyped, spFlags: 0)
!264 = !DISubprogram(name: "_control_thread", linkageName: "_ZN5Linux14RCOutput_Bebop15_control_threadEPv", scope: !101, file: !12, line: 108, type: !265, scopeLine: 108, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!265 = !DISubroutineType(types: !266)
!266 = !{!267, !267}
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DICompositeType(tag: DW_TAG_class_type, name: "Util", scope: !102, file: !25, line: 18, size: 512, flags: DIFlagFwdDecl | DIFlagNonTrivial)
!270 = !{!0, !271, !277, !282, !287, !289, !291, !296, !301, !306}
!271 = !DIGlobalVariableExpression(var: !272, expr: !DIExpression())
!272 = distinct !DIGlobalVariable(scope: null, file: !6, line: 161, type: !273, isLocal: true, isDefinition: true)
!273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !274, size: 328, elements: !275)
!274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !151)
!275 = !{!276}
!276 = !DISubrange(count: 41)
!277 = !DIGlobalVariableExpression(var: !278, expr: !DIExpression())
!278 = distinct !DIGlobalVariable(scope: null, file: !6, line: 246, type: !279, isLocal: true, isDefinition: true)
!279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !274, size: 272, elements: !280)
!280 = !{!281}
!281 = !DISubrange(count: 34)
!282 = !DIGlobalVariableExpression(var: !283, expr: !DIExpression())
!283 = distinct !DIGlobalVariable(scope: null, file: !6, line: 253, type: !284, isLocal: true, isDefinition: true)
!284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !274, size: 280, elements: !285)
!285 = !{!286}
!286 = !DISubrange(count: 35)
!287 = !DIGlobalVariableExpression(var: !288, expr: !DIExpression())
!288 = distinct !DIGlobalVariable(scope: null, file: !6, line: 264, type: !279, isLocal: true, isDefinition: true)
!289 = !DIGlobalVariableExpression(var: !290, expr: !DIExpression())
!290 = distinct !DIGlobalVariable(scope: null, file: !6, line: 270, type: !279, isLocal: true, isDefinition: true)
!291 = !DIGlobalVariableExpression(var: !292, expr: !DIExpression())
!292 = distinct !DIGlobalVariable(scope: null, file: !6, line: 278, type: !293, isLocal: true, isDefinition: true)
!293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !274, size: 304, elements: !294)
!294 = !{!295}
!295 = !DISubrange(count: 38)
!296 = !DIGlobalVariableExpression(var: !297, expr: !DIExpression())
!297 = distinct !DIGlobalVariable(scope: null, file: !6, line: 381, type: !298, isLocal: true, isDefinition: true)
!298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !274, size: 192, elements: !299)
!299 = !{!300}
!300 = !DISubrange(count: 24)
!301 = !DIGlobalVariableExpression(var: !302, expr: !DIExpression())
!302 = distinct !DIGlobalVariable(scope: null, file: !6, line: 411, type: !303, isLocal: true, isDefinition: true)
!303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !274, size: 224, elements: !304)
!304 = !{!305}
!305 = !DISubrange(count: 28)
!306 = !DIGlobalVariableExpression(var: !307, expr: !DIExpression())
!307 = distinct !DIGlobalVariable(scope: null, file: !6, line: 413, type: !308, isLocal: true, isDefinition: true)
!308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !274, size: 208, elements: !309)
!309 = !{!310}
!310 = !DISubrange(count: 26)
!311 = !{!312, !318, !324, !328, !334, !338, !344, !349, !351, !357, !361, !365, !375, !377, !381, !385, !389, !394, !398, !402, !406, !410, !418, !422, !426, !428, !430, !434, !438, !444, !448, !452, !454, !462, !466, !473, !475, !479, !483, !487, !491, !495, !500, !505, !506, !507, !508, !510, !511, !512, !513, !514, !515, !516, !518, !519, !520, !521, !522, !523, !524, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553}
!312 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !313, entity: !314, file: !317, line: 58)
!313 = !DINamespace(name: "std", scope: null)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "max_align_t", file: !315, line: 24, baseType: !316)
!315 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/__stddef_max_align_t.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "48e8e2456f77e6cda35d245130fa7259")
!316 = !DICompositeType(tag: DW_TAG_structure_type, file: !315, line: 19, size: 256, flags: DIFlagFwdDecl, identifier: "_ZTS11max_align_t")
!317 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cstddef", directory: "")
!318 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !313, entity: !319, file: !323, line: 52)
!319 = !DISubprogram(name: "abs", scope: !320, file: !320, line: 848, type: !321, flags: DIFlagPrototyped, spFlags: 0)
!320 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!321 = !DISubroutineType(types: !322)
!322 = !{!42, !42}
!323 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/std_abs.h", directory: "")
!324 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !313, entity: !325, file: !327, line: 127)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !320, line: 63, baseType: !326)
!326 = !DICompositeType(tag: DW_TAG_structure_type, file: !320, line: 59, size: 64, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!327 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cstdlib", directory: "")
!328 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !313, entity: !329, file: !327, line: 128)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !320, line: 71, baseType: !330)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !320, line: 67, size: 128, flags: DIFlagTypePassByValue, elements: !331, identifier: "_ZTS6ldiv_t")
!331 = !{!332, !333}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !330, file: !320, line: 69, baseType: !155, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !330, file: !320, line: 70, baseType: !155, size: 64, offset: 64)
!334 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !313, entity: !335, file: !327, line: 130)
!335 = !DISubprogram(name: "abort", scope: !320, file: !320, line: 598, type: !336, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!336 = !DISubroutineType(types: !337)
!337 = !{null}
!338 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !313, entity: !339, file: !327, line: 132)
!339 = !DISubprogram(name: "aligned_alloc", scope: !320, file: !320, line: 592, type: !340, flags: DIFlagPrototyped, spFlags: 0)
!340 = !DISubroutineType(types: !341)
!341 = !{!267, !342, !342}
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !343, line: 46, baseType: !124)
!343 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!344 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !313, entity: !345, file: !327, line: 134)
!345 = !DISubprogram(name: "atexit", scope: !320, file: !320, line: 602, type: !346, flags: DIFlagPrototyped, spFlags: 0)
!346 = !DISubroutineType(types: !347)
!347 = !{!42, !348}
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!349 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !313, entity: !350, file: !327, line: 137)
!350 = !DISubprogram(name: "at_quick_exit", scope: !320, file: !320, line: 607, type: !346, flags: DIFlagPrototyped, spFlags: 0)
!351 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !313, entity: !352, file: !327, line: 140)
!352 = !DISubprogram(name: "atof", scope: !320, file: !320, line: 102, type: !353, flags: DIFlagPrototyped, spFlags: 0)
!353 = !DISubroutineType(types: !354)
!354 = !{!355, !356}
!355 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!357 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !313, entity: !358, file: !327, line: 141)
!358 = !DISubprogram(name: "atoi", scope: !320, file: !320, line: 105, type: !359, flags: DIFlagPrototyped, spFlags: 0)
!359 = !DISubroutineType(types: !360)
!360 = !{!42, !356}
!361 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !313, entity: !362, file: !327, line: 142)
!362 = !DISubprogram(name: "atol", scope: !320, file: !320, line: 108, type: !363, flags: DIFlagPrototyped, spFlags: 0)
!363 = !DISubroutineType(types: !364)
!364 = !{!155, !356}
!365 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !313, entity: !366, file: !327, line: 143)
!366 = !DISubprogram(name: "bsearch", scope: !320, file: !320, line: 828, type: !367, flags: DIFlagPrototyped, spFlags: 0)
!367 = !DISubroutineType(types: !368)
!368 = !{!267, !369, !369, !342, !342, !371}
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !320, line: 816, baseType: !372)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DISubroutineType(types: !374)
!374 = !{!42, !369, !369}
!375 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !313, entity: !376, file: !327, line: 144)
!376 = !DISubprogram(name: "calloc", scope: !320, file: !320, line: 543, type: !340, flags: DIFlagPrototyped, spFlags: 0)
!377 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !313, entity: !378, file: !327, line: 145)
!378 = !DISubprogram(name: "div", scope: !320, file: !320, line: 860, type: !379, flags: DIFlagPrototyped, spFlags: 0)
!379 = !DISubroutineType(types: !380)
!380 = !{!325, !42, !42}
!381 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !313, entity: !382, file: !327, line: 146)
!382 = !DISubprogram(name: "exit", scope: !320, file: !320, line: 624, type: !383, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!383 = !DISubroutineType(types: !384)
!384 = !{null, !42}
!385 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !313, entity: !386, file: !327, line: 147)
!386 = !DISubprogram(name: "free", scope: !320, file: !320, line: 555, type: !387, flags: DIFlagPrototyped, spFlags: 0)
!387 = !DISubroutineType(types: !388)
!388 = !{null, !267}
!389 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !313, entity: !390, file: !327, line: 148)
!390 = !DISubprogram(name: "getenv", scope: !320, file: !320, line: 641, type: !391, flags: DIFlagPrototyped, spFlags: 0)
!391 = !DISubroutineType(types: !392)
!392 = !{!393, !356}
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!394 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !313, entity: !395, file: !327, line: 149)
!395 = !DISubprogram(name: "labs", scope: !320, file: !320, line: 849, type: !396, flags: DIFlagPrototyped, spFlags: 0)
!396 = !DISubroutineType(types: !397)
!397 = !{!155, !155}
!398 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !313, entity: !399, file: !327, line: 150)
!399 = !DISubprogram(name: "ldiv", scope: !320, file: !320, line: 862, type: !400, flags: DIFlagPrototyped, spFlags: 0)
!400 = !DISubroutineType(types: !401)
!401 = !{!329, !155, !155}
!402 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !313, entity: !403, file: !327, line: 151)
!403 = !DISubprogram(name: "malloc", scope: !320, file: !320, line: 540, type: !404, flags: DIFlagPrototyped, spFlags: 0)
!404 = !DISubroutineType(types: !405)
!405 = !{!267, !342}
!406 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !313, entity: !407, file: !327, line: 153)
!407 = !DISubprogram(name: "mblen", scope: !320, file: !320, line: 930, type: !408, flags: DIFlagPrototyped, spFlags: 0)
!408 = !DISubroutineType(types: !409)
!409 = !{!42, !356, !342}
!410 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !313, entity: !411, file: !327, line: 154)
!411 = !DISubprogram(name: "mbstowcs", scope: !320, file: !320, line: 941, type: !412, flags: DIFlagPrototyped, spFlags: 0)
!412 = !DISubroutineType(types: !413)
!413 = !{!342, !414, !417, !342}
!414 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !415)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!417 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !356)
!418 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !313, entity: !419, file: !327, line: 155)
!419 = !DISubprogram(name: "mbtowc", scope: !320, file: !320, line: 933, type: !420, flags: DIFlagPrototyped, spFlags: 0)
!420 = !DISubroutineType(types: !421)
!421 = !{!42, !414, !417, !342}
!422 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !313, entity: !423, file: !327, line: 157)
!423 = !DISubprogram(name: "qsort", scope: !320, file: !320, line: 838, type: !424, flags: DIFlagPrototyped, spFlags: 0)
!424 = !DISubroutineType(types: !425)
!425 = !{null, !267, !342, !342, !371}
!426 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !313, entity: !427, file: !327, line: 160)
!427 = !DISubprogram(name: "quick_exit", scope: !320, file: !320, line: 630, type: !383, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!428 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !313, entity: !429, file: !327, line: 163)
!429 = !DISubprogram(name: "rand", scope: !320, file: !320, line: 454, type: !40, flags: DIFlagPrototyped, spFlags: 0)
!430 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !313, entity: !431, file: !327, line: 164)
!431 = !DISubprogram(name: "realloc", scope: !320, file: !320, line: 551, type: !432, flags: DIFlagPrototyped, spFlags: 0)
!432 = !DISubroutineType(types: !433)
!433 = !{!267, !267, !342}
!434 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !313, entity: !435, file: !327, line: 165)
!435 = !DISubprogram(name: "srand", scope: !320, file: !320, line: 456, type: !436, flags: DIFlagPrototyped, spFlags: 0)
!436 = !DISubroutineType(types: !437)
!437 = !{null, !7}
!438 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !313, entity: !439, file: !327, line: 166)
!439 = !DISubprogram(name: "strtod", scope: !320, file: !320, line: 118, type: !440, flags: DIFlagPrototyped, spFlags: 0)
!440 = !DISubroutineType(types: !441)
!441 = !{!355, !417, !442}
!442 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !443)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!444 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !313, entity: !445, file: !327, line: 167)
!445 = !DISubprogram(name: "strtol", scope: !320, file: !320, line: 177, type: !446, flags: DIFlagPrototyped, spFlags: 0)
!446 = !DISubroutineType(types: !447)
!447 = !{!155, !417, !442, !42}
!448 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !313, entity: !449, file: !327, line: 168)
!449 = !DISubprogram(name: "strtoul", scope: !320, file: !320, line: 181, type: !450, flags: DIFlagPrototyped, spFlags: 0)
!450 = !DISubroutineType(types: !451)
!451 = !{!124, !417, !442, !42}
!452 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !313, entity: !453, file: !327, line: 169)
!453 = !DISubprogram(name: "system", scope: !320, file: !320, line: 791, type: !359, flags: DIFlagPrototyped, spFlags: 0)
!454 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !313, entity: !455, file: !327, line: 171)
!455 = !DISubprogram(name: "wcstombs", scope: !320, file: !320, line: 945, type: !456, flags: DIFlagPrototyped, spFlags: 0)
!456 = !DISubroutineType(types: !457)
!457 = !{!342, !458, !459, !342}
!458 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !393)
!459 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !460)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !416)
!462 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !313, entity: !463, file: !327, line: 172)
!463 = !DISubprogram(name: "wctomb", scope: !320, file: !320, line: 937, type: !464, flags: DIFlagPrototyped, spFlags: 0)
!464 = !DISubroutineType(types: !465)
!465 = !{!42, !393, !416}
!466 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !467, entity: !468, file: !327, line: 200)
!467 = !DINamespace(name: "__gnu_cxx", scope: null)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !320, line: 81, baseType: !469)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !320, line: 77, size: 128, flags: DIFlagTypePassByValue, elements: !470, identifier: "_ZTS7lldiv_t")
!470 = !{!471, !472}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !469, file: !320, line: 79, baseType: !189, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !469, file: !320, line: 80, baseType: !189, size: 64, offset: 64)
!473 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !467, entity: !474, file: !327, line: 206)
!474 = !DISubprogram(name: "_Exit", scope: !320, file: !320, line: 636, type: !383, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!475 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !467, entity: !476, file: !327, line: 210)
!476 = !DISubprogram(name: "llabs", scope: !320, file: !320, line: 852, type: !477, flags: DIFlagPrototyped, spFlags: 0)
!477 = !DISubroutineType(types: !478)
!478 = !{!189, !189}
!479 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !467, entity: !480, file: !327, line: 216)
!480 = !DISubprogram(name: "lldiv", scope: !320, file: !320, line: 866, type: !481, flags: DIFlagPrototyped, spFlags: 0)
!481 = !DISubroutineType(types: !482)
!482 = !{!468, !189, !189}
!483 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !467, entity: !484, file: !327, line: 227)
!484 = !DISubprogram(name: "atoll", scope: !320, file: !320, line: 113, type: !485, flags: DIFlagPrototyped, spFlags: 0)
!485 = !DISubroutineType(types: !486)
!486 = !{!189, !356}
!487 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !467, entity: !488, file: !327, line: 228)
!488 = !DISubprogram(name: "strtoll", scope: !320, file: !320, line: 201, type: !489, flags: DIFlagPrototyped, spFlags: 0)
!489 = !DISubroutineType(types: !490)
!490 = !{!189, !417, !442, !42}
!491 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !467, entity: !492, file: !327, line: 229)
!492 = !DISubprogram(name: "strtoull", scope: !320, file: !320, line: 206, type: !493, flags: DIFlagPrototyped, spFlags: 0)
!493 = !DISubroutineType(types: !494)
!494 = !{!169, !417, !442, !42}
!495 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !467, entity: !496, file: !327, line: 231)
!496 = !DISubprogram(name: "strtof", scope: !320, file: !320, line: 124, type: !497, flags: DIFlagPrototyped, spFlags: 0)
!497 = !DISubroutineType(types: !498)
!498 = !{!499, !417, !442}
!499 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!500 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !467, entity: !501, file: !327, line: 232)
!501 = !DISubprogram(name: "strtold", scope: !320, file: !320, line: 127, type: !502, flags: DIFlagPrototyped, spFlags: 0)
!502 = !DISubroutineType(types: !503)
!503 = !{!504, !417, !442}
!504 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!505 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !313, entity: !468, file: !327, line: 240)
!506 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !313, entity: !474, file: !327, line: 242)
!507 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !313, entity: !476, file: !327, line: 244)
!508 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !313, entity: !509, file: !327, line: 245)
!509 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !467, file: !327, line: 213, type: !481, flags: DIFlagPrototyped, spFlags: 0)
!510 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !313, entity: !480, file: !327, line: 246)
!511 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !313, entity: !484, file: !327, line: 248)
!512 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !313, entity: !496, file: !327, line: 249)
!513 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !313, entity: !488, file: !327, line: 250)
!514 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !313, entity: !492, file: !327, line: 251)
!515 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !313, entity: !501, file: !327, line: 252)
!516 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !335, file: !517, line: 38)
!517 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "0f5b773a303c24013fb112082e6d18a5")
!518 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !345, file: !517, line: 39)
!519 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !382, file: !517, line: 40)
!520 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !350, file: !517, line: 43)
!521 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !427, file: !517, line: 46)
!522 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !325, file: !517, line: 51)
!523 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !329, file: !517, line: 52)
!524 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !525, file: !517, line: 54)
!525 = !DISubprogram(name: "abs", linkageName: "_ZSt3absg", scope: !313, file: !323, line: 103, type: !526, flags: DIFlagPrototyped, spFlags: 0)
!526 = !DISubroutineType(types: !527)
!527 = !{!528, !528}
!528 = !DIBasicType(name: "__float128", size: 128, encoding: DW_ATE_float)
!529 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !352, file: !517, line: 55)
!530 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !358, file: !517, line: 56)
!531 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !362, file: !517, line: 57)
!532 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !366, file: !517, line: 58)
!533 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !376, file: !517, line: 59)
!534 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !509, file: !517, line: 60)
!535 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !386, file: !517, line: 61)
!536 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !390, file: !517, line: 62)
!537 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !395, file: !517, line: 63)
!538 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !399, file: !517, line: 64)
!539 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !403, file: !517, line: 65)
!540 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !407, file: !517, line: 67)
!541 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !411, file: !517, line: 68)
!542 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !419, file: !517, line: 69)
!543 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !423, file: !517, line: 71)
!544 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !429, file: !517, line: 72)
!545 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !431, file: !517, line: 73)
!546 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !435, file: !517, line: 74)
!547 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !439, file: !517, line: 75)
!548 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !445, file: !517, line: 76)
!549 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !449, file: !517, line: 77)
!550 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !453, file: !517, line: 78)
!551 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !455, file: !517, line: 80)
!552 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !463, file: !517, line: 81)
!553 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !2, entity: !102, file: !6, line: 71)
!554 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !555, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !556)
!556 = !DICompositeType(tag: DW_TAG_class_type, name: "HAL", scope: !35, file: !557, line: 15, size: 1344, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN6AP_HAL3HALE")
!557 = !DIFile(filename: "ardupilot/libraries/AP_HAL/HAL.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "3f0a0f0e062a4283fcf90f261aa65082")
!558 = !{i32 7, !"Dwarf Version", i32 5}
!559 = !{i32 2, !"Debug Info Version", i32 3}
!560 = !{i32 1, !"wchar_size", i32 4}
!561 = !{i32 8, !"PIC Level", i32 2}
!562 = !{i32 7, !"PIE Level", i32 2}
!563 = !{i32 7, !"uwtable", i32 2}
!564 = !{i32 7, !"frame-pointer", i32 2}
!565 = !{!"clang version 16.0.0"}
!566 = distinct !DISubprogram(name: "__cxx_global_var_init", scope: !567, file: !567, type: !336, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !568)
!567 = !DIFile(filename: "ardupilot/libraries/AP_HAL_Linux/RCOutput_Bebop.cpp", directory: "/home/raj")
!568 = !{}
!569 = !DILocation(line: 73, column: 33, scope: !570)
!570 = !DILexicalBlockFile(scope: !566, file: !6, discriminator: 0)
!571 = !DILocation(line: 0, scope: !566)
!572 = distinct !DISubprogram(name: "RCOutput_Bebop", linkageName: "_ZN5Linux14RCOutput_BebopC2Ev", scope: !101, file: !6, line: 75, type: !191, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !190, retainedNodes: !568)
!573 = !DILocalVariable(name: "this", arg: 1, scope: !572, type: !100, flags: DIFlagArtificial | DIFlagObjectPointer)
!574 = !DILocation(line: 0, scope: !572)
!575 = !DILocation(line: 75, column: 17, scope: !572)
!576 = !DILocation(line: 80, column: 1, scope: !572)
!577 = !DILocation(line: 76, column: 5, scope: !572)
!578 = !DILocation(line: 77, column: 5, scope: !572)
!579 = !DILocation(line: 78, column: 5, scope: !572)
!580 = !DILocation(line: 79, column: 5, scope: !572)
!581 = !DILocation(line: 90, column: 14, scope: !582)
!582 = !DILexicalBlockFile(scope: !572, file: !12, discriminator: 0)
!583 = !DILocation(line: 75, column: 17, scope: !584)
!584 = !DILexicalBlockFile(scope: !572, file: !6, discriminator: 0)
!585 = !DILocation(line: 81, column: 12, scope: !586)
!586 = distinct !DILexicalBlock(scope: !584, file: !6, line: 80, column: 1)
!587 = !DILocation(line: 81, column: 5, scope: !586)
!588 = !DILocation(line: 82, column: 12, scope: !586)
!589 = !DILocation(line: 82, column: 5, scope: !586)
!590 = !DILocation(line: 83, column: 12, scope: !586)
!591 = !DILocation(line: 83, column: 5, scope: !586)
!592 = !DILocation(line: 84, column: 1, scope: !584)
!593 = distinct !DISubprogram(name: "RCOutput", linkageName: "_ZN6AP_HAL8RCOutputC2Ev", scope: !34, file: !33, line: 31, type: !44, scopeLine: 31, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !594, retainedNodes: !568)
!594 = !DISubprogram(name: "RCOutput", scope: !34, type: !44, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!595 = !DILocalVariable(name: "this", arg: 1, scope: !593, type: !197, flags: DIFlagArtificial | DIFlagObjectPointer)
!596 = !DILocation(line: 0, scope: !593)
!597 = !DILocation(line: 31, column: 15, scope: !593)
!598 = distinct !DISubprogram(name: "_checksum", linkageName: "_ZN5Linux14RCOutput_Bebop9_checksumEPhj", scope: !101, file: !6, line: 86, type: !236, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !235, retainedNodes: !568)
!599 = !DILocalVariable(name: "this", arg: 1, scope: !598, type: !100, flags: DIFlagArtificial | DIFlagObjectPointer)
!600 = !DILocation(line: 0, scope: !598)
!601 = !DILocalVariable(name: "data", arg: 2, scope: !598, file: !6, line: 86, type: !99)
!602 = !DILocation(line: 86, column: 44, scope: !598)
!603 = !DILocalVariable(name: "len", arg: 3, scope: !598, file: !6, line: 86, type: !7)
!604 = !DILocation(line: 86, column: 63, scope: !598)
!605 = !DILocalVariable(name: "checksum", scope: !598, file: !6, line: 88, type: !60)
!606 = !DILocation(line: 88, column: 13, scope: !598)
!607 = !DILocation(line: 88, column: 24, scope: !598)
!608 = !DILocalVariable(name: "i", scope: !598, file: !6, line: 89, type: !7)
!609 = !DILocation(line: 89, column: 18, scope: !598)
!610 = !DILocation(line: 91, column: 12, scope: !611)
!611 = distinct !DILexicalBlock(scope: !598, file: !6, line: 91, column: 5)
!612 = !DILocation(line: 91, column: 10, scope: !611)
!613 = !DILocation(line: 91, column: 17, scope: !614)
!614 = distinct !DILexicalBlock(scope: !611, file: !6, line: 91, column: 5)
!615 = !DILocation(line: 91, column: 21, scope: !614)
!616 = !DILocation(line: 91, column: 19, scope: !614)
!617 = !DILocation(line: 91, column: 5, scope: !611)
!618 = !DILocation(line: 92, column: 20, scope: !614)
!619 = !DILocation(line: 92, column: 31, scope: !614)
!620 = !DILocation(line: 92, column: 36, scope: !614)
!621 = !DILocation(line: 92, column: 29, scope: !614)
!622 = !DILocation(line: 92, column: 18, scope: !614)
!623 = !DILocation(line: 92, column: 9, scope: !614)
!624 = !DILocation(line: 91, column: 27, scope: !614)
!625 = !DILocation(line: 91, column: 5, scope: !614)
!626 = distinct !{!626, !617, !627, !628}
!627 = !DILocation(line: 92, column: 37, scope: !611)
!628 = !{!"llvm.loop.mustprogress"}
!629 = !DILocation(line: 94, column: 12, scope: !598)
!630 = !DILocation(line: 94, column: 5, scope: !598)
!631 = distinct !DISubprogram(name: "_start_prop", linkageName: "_ZN5Linux14RCOutput_Bebop11_start_propEv", scope: !101, file: !6, line: 97, type: !191, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !238, retainedNodes: !568)
!632 = !DILocalVariable(name: "this", arg: 1, scope: !631, type: !100, flags: DIFlagArtificial | DIFlagObjectPointer)
!633 = !DILocation(line: 0, scope: !631)
!634 = !DILocalVariable(name: "data", scope: !631, file: !6, line: 99, type: !60)
!635 = !DILocation(line: 99, column: 13, scope: !631)
!636 = !DILocation(line: 101, column: 10, scope: !637)
!637 = distinct !DILexicalBlock(scope: !631, file: !6, line: 101, column: 9)
!638 = !DILocation(line: 101, column: 20, scope: !637)
!639 = !DILocation(line: 101, column: 9, scope: !631)
!640 = !DILocation(line: 102, column: 9, scope: !637)
!641 = !DILocation(line: 104, column: 5, scope: !631)
!642 = !DILocation(line: 104, column: 9, scope: !631)
!643 = !DILocation(line: 104, column: 15, scope: !631)
!644 = !DILocation(line: 106, column: 5, scope: !631)
!645 = !DILocation(line: 106, column: 15, scope: !631)
!646 = !DILocation(line: 107, column: 5, scope: !631)
!647 = !DILocation(line: 107, column: 12, scope: !631)
!648 = !DILocation(line: 108, column: 1, scope: !631)
!649 = distinct !DISubprogram(name: "_set_ref_speed", linkageName: "_ZN5Linux14RCOutput_Bebop14_set_ref_speedEPt", scope: !101, file: !6, line: 110, type: !241, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !240, retainedNodes: !568)
!650 = !DILocalVariable(name: "this", arg: 1, scope: !649, type: !100, flags: DIFlagArtificial | DIFlagObjectPointer)
!651 = !DILocation(line: 0, scope: !649)
!652 = !DILocalVariable(name: "rpm", arg: 2, scope: !649, file: !6, line: 110, type: !76)
!653 = !DILocation(line: 110, column: 46, scope: !649)
!654 = !DILocalVariable(name: "data", scope: !649, file: !6, line: 112, type: !655)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bldc_ref_speed_data", file: !6, line: 21, size: 88, flags: DIFlagTypePassByValue, elements: !656, identifier: "_ZTS19bldc_ref_speed_data")
!656 = !{!657, !658, !659, !660}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !655, file: !6, line: 22, baseType: !60, size: 8)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "rpm", scope: !655, file: !6, line: 23, baseType: !110, size: 64, offset: 8)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "enable_security", scope: !655, file: !6, line: 24, baseType: !60, size: 8, offset: 72)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !655, file: !6, line: 25, baseType: !60, size: 8, offset: 80)
!661 = !DILocation(line: 112, column: 32, scope: !649)
!662 = !DILocalVariable(name: "i", scope: !649, file: !6, line: 113, type: !42)
!663 = !DILocation(line: 113, column: 9, scope: !649)
!664 = !DILocation(line: 115, column: 10, scope: !649)
!665 = !DILocation(line: 115, column: 14, scope: !649)
!666 = !DILocation(line: 117, column: 11, scope: !667)
!667 = distinct !DILexicalBlock(scope: !649, file: !6, line: 117, column: 5)
!668 = !DILocation(line: 117, column: 10, scope: !667)
!669 = !DILocation(line: 117, column: 15, scope: !670)
!670 = distinct !DILexicalBlock(scope: !667, file: !6, line: 117, column: 5)
!671 = !DILocation(line: 117, column: 16, scope: !670)
!672 = !DILocation(line: 117, column: 5, scope: !667)
!673 = !DILocation(line: 118, column: 23, scope: !670)
!674 = !DILocation(line: 118, column: 14, scope: !670)
!675 = !DILocation(line: 118, column: 18, scope: !670)
!676 = !DILocation(line: 118, column: 9, scope: !670)
!677 = !DILocation(line: 118, column: 21, scope: !670)
!678 = !DILocation(line: 117, column: 41, scope: !670)
!679 = !DILocation(line: 117, column: 5, scope: !670)
!680 = distinct !{!680, !672, !681, !628}
!681 = !DILocation(line: 118, column: 23, scope: !667)
!682 = !DILocation(line: 120, column: 10, scope: !649)
!683 = !DILocation(line: 120, column: 26, scope: !649)
!684 = !DILocation(line: 121, column: 21, scope: !649)
!685 = !DILocation(line: 121, column: 10, scope: !649)
!686 = !DILocation(line: 121, column: 19, scope: !649)
!687 = !DILocation(line: 123, column: 10, scope: !688)
!688 = distinct !DILexicalBlock(scope: !649, file: !6, line: 123, column: 9)
!689 = !DILocation(line: 123, column: 20, scope: !688)
!690 = !DILocation(line: 123, column: 9, scope: !649)
!691 = !DILocation(line: 124, column: 9, scope: !688)
!692 = !DILocation(line: 126, column: 5, scope: !649)
!693 = !DILocation(line: 126, column: 9, scope: !649)
!694 = !DILocation(line: 126, column: 15, scope: !649)
!695 = !DILocation(line: 128, column: 5, scope: !649)
!696 = !DILocation(line: 128, column: 15, scope: !649)
!697 = !DILocation(line: 129, column: 1, scope: !649)
!698 = distinct !DISubprogram(name: "__bswap_16", linkageName: "_ZL10__bswap_16t", scope: !699, file: !699, line: 34, type: !700, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !568)
!699 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/byteswap.h", directory: "", checksumkind: CSK_MD5, checksum: "98f83253ffd9c64e7486789204e9fa05")
!700 = !DISubroutineType(types: !701)
!701 = !{!55, !55}
!702 = !DILocalVariable(name: "__bsx", arg: 1, scope: !698, file: !699, line: 34, type: !55)
!703 = !DILocation(line: 34, column: 24, scope: !698)
!704 = !DILocation(line: 39, column: 10, scope: !698)
!705 = !DILocation(line: 39, column: 3, scope: !698)
!706 = distinct !DISubprogram(name: "_get_info", linkageName: "_ZN5Linux14RCOutput_Bebop9_get_infoEP9bldc_info", scope: !101, file: !6, line: 131, type: !244, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !243, retainedNodes: !568)
!707 = !DILocalVariable(name: "this", arg: 1, scope: !706, type: !100, flags: DIFlagArtificial | DIFlagObjectPointer)
!708 = !DILocation(line: 0, scope: !706)
!709 = !DILocalVariable(name: "info", arg: 2, scope: !706, file: !6, line: 131, type: !246)
!710 = !DILocation(line: 131, column: 50, scope: !706)
!711 = !DILocation(line: 133, column: 9, scope: !712)
!712 = distinct !DILexicalBlock(scope: !706, file: !6, line: 133, column: 9)
!713 = !DILocation(line: 133, column: 14, scope: !712)
!714 = !DILocation(line: 133, column: 9, scope: !706)
!715 = !DILocation(line: 134, column: 9, scope: !716)
!716 = distinct !DILexicalBlock(scope: !712, file: !6, line: 133, column: 23)
!717 = !DILocation(line: 136, column: 12, scope: !706)
!718 = !DILocation(line: 136, column: 5, scope: !706)
!719 = !DILocation(line: 137, column: 10, scope: !720)
!720 = distinct !DILexicalBlock(scope: !706, file: !6, line: 137, column: 9)
!721 = !DILocation(line: 137, column: 20, scope: !720)
!722 = !DILocation(line: 137, column: 9, scope: !706)
!723 = !DILocation(line: 138, column: 9, scope: !724)
!724 = distinct !DILexicalBlock(scope: !720, file: !6, line: 137, column: 29)
!725 = !DILocation(line: 140, column: 5, scope: !706)
!726 = !DILocation(line: 140, column: 9, scope: !706)
!727 = !DILocation(line: 141, column: 66, scope: !706)
!728 = !DILocation(line: 140, column: 15, scope: !706)
!729 = !DILocation(line: 142, column: 5, scope: !706)
!730 = !DILocation(line: 142, column: 15, scope: !706)
!731 = !DILocation(line: 143, column: 5, scope: !706)
!732 = !DILocation(line: 144, column: 1, scope: !706)
!733 = distinct !DISubprogram(name: "read_obs_data", linkageName: "_ZN5Linux14RCOutput_Bebop13read_obs_dataER17BebopBLDC_ObsData", scope: !101, file: !6, line: 146, type: !222, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !221, retainedNodes: !568)
!734 = !DILocalVariable(name: "this", arg: 1, scope: !733, type: !100, flags: DIFlagArtificial | DIFlagObjectPointer)
!735 = !DILocation(line: 0, scope: !733)
!736 = !DILocalVariable(name: "obs", arg: 2, scope: !733, file: !6, line: 146, type: !224)
!737 = !DILocation(line: 146, column: 54, scope: !733)
!738 = !DILocalVariable(name: "data", scope: !733, file: !6, line: 148, type: !739)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bldc_obs_data", file: !6, line: 29, size: 120, flags: DIFlagTypePassByValue, elements: !740, identifier: "_ZTS13bldc_obs_data")
!740 = !{!741, !742, !743, !744, !745, !746, !747}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "rpm", scope: !739, file: !6, line: 30, baseType: !110, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "batt_mv", scope: !739, file: !6, line: 31, baseType: !54, size: 16, offset: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !739, file: !6, line: 32, baseType: !60, size: 8, offset: 80)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !739, file: !6, line: 33, baseType: !60, size: 8, offset: 88)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "motors_err", scope: !739, file: !6, line: 34, baseType: !60, size: 8, offset: 96)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !739, file: !6, line: 35, baseType: !60, size: 8, offset: 104)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !739, file: !6, line: 36, baseType: !60, size: 8, offset: 112)
!748 = !DILocation(line: 148, column: 26, scope: !733)
!749 = !DILocalVariable(name: "i", scope: !733, file: !6, line: 149, type: !42)
!750 = !DILocation(line: 149, column: 9, scope: !733)
!751 = !DILocation(line: 151, column: 5, scope: !733)
!752 = !DILocation(line: 152, column: 10, scope: !753)
!753 = distinct !DILexicalBlock(scope: !733, file: !6, line: 152, column: 9)
!754 = !DILocation(line: 152, column: 20, scope: !753)
!755 = !DILocation(line: 152, column: 9, scope: !733)
!756 = !DILocation(line: 153, column: 9, scope: !753)
!757 = !DILocation(line: 155, column: 5, scope: !733)
!758 = !DILocation(line: 155, column: 9, scope: !733)
!759 = !DILocation(line: 155, column: 15, scope: !733)
!760 = !DILocation(line: 158, column: 5, scope: !733)
!761 = !DILocation(line: 158, column: 15, scope: !733)
!762 = !DILocation(line: 160, column: 14, scope: !763)
!763 = distinct !DILexicalBlock(scope: !733, file: !6, line: 160, column: 9)
!764 = !DILocation(line: 160, column: 9, scope: !763)
!765 = !DILocation(line: 160, column: 26, scope: !763)
!766 = !DILocation(line: 160, column: 23, scope: !763)
!767 = !DILocation(line: 160, column: 9, scope: !733)
!768 = !DILocation(line: 161, column: 9, scope: !763)
!769 = !DILocation(line: 161, column: 13, scope: !763)
!770 = !DILocation(line: 161, column: 22, scope: !763)
!771 = !DILocation(line: 164, column: 12, scope: !772)
!772 = distinct !DILexicalBlock(scope: !733, file: !6, line: 164, column: 5)
!773 = !DILocation(line: 164, column: 10, scope: !772)
!774 = !DILocation(line: 164, column: 17, scope: !775)
!775 = distinct !DILexicalBlock(scope: !772, file: !6, line: 164, column: 5)
!776 = !DILocation(line: 164, column: 19, scope: !775)
!777 = !DILocation(line: 164, column: 5, scope: !772)
!778 = !DILocation(line: 166, column: 38, scope: !779)
!779 = distinct !DILexicalBlock(scope: !775, file: !6, line: 164, column: 49)
!780 = !DILocation(line: 166, column: 42, scope: !779)
!781 = !DILocation(line: 166, column: 33, scope: !779)
!782 = !DILocation(line: 166, column: 45, scope: !779)
!783 = !DILocation(line: 166, column: 32, scope: !779)
!784 = !DILocation(line: 166, column: 9, scope: !779)
!785 = !DILocation(line: 166, column: 13, scope: !779)
!786 = !DILocation(line: 166, column: 27, scope: !779)
!787 = !DILocation(line: 166, column: 30, scope: !779)
!788 = !DILocation(line: 168, column: 14, scope: !779)
!789 = !DILocation(line: 168, column: 18, scope: !779)
!790 = !DILocation(line: 168, column: 9, scope: !779)
!791 = !DILocation(line: 168, column: 21, scope: !779)
!792 = !DILocation(line: 169, column: 22, scope: !779)
!793 = !DILocation(line: 169, column: 9, scope: !779)
!794 = !DILocation(line: 169, column: 13, scope: !779)
!795 = !DILocation(line: 169, column: 17, scope: !779)
!796 = !DILocation(line: 169, column: 20, scope: !779)
!797 = !DILocation(line: 170, column: 13, scope: !798)
!798 = distinct !DILexicalBlock(scope: !779, file: !6, line: 170, column: 13)
!799 = !DILocation(line: 170, column: 17, scope: !798)
!800 = !DILocation(line: 170, column: 21, scope: !798)
!801 = !DILocation(line: 170, column: 24, scope: !798)
!802 = !DILocation(line: 170, column: 13, scope: !779)
!803 = !DILocation(line: 171, column: 13, scope: !798)
!804 = !DILocation(line: 171, column: 17, scope: !798)
!805 = !DILocation(line: 171, column: 31, scope: !798)
!806 = !DILocation(line: 171, column: 34, scope: !798)
!807 = !DILocation(line: 172, column: 5, scope: !779)
!808 = !DILocation(line: 164, column: 45, scope: !775)
!809 = !DILocation(line: 164, column: 5, scope: !775)
!810 = distinct !{!810, !777, !811, !628}
!811 = !DILocation(line: 172, column: 5, scope: !772)
!812 = !DILocation(line: 174, column: 19, scope: !733)
!813 = !DILocation(line: 174, column: 5, scope: !733)
!814 = !DILocation(line: 174, column: 9, scope: !733)
!815 = !DILocation(line: 174, column: 17, scope: !733)
!816 = !DILocation(line: 175, column: 23, scope: !733)
!817 = !DILocation(line: 175, column: 5, scope: !733)
!818 = !DILocation(line: 175, column: 9, scope: !733)
!819 = !DILocation(line: 175, column: 16, scope: !733)
!820 = !DILocation(line: 176, column: 22, scope: !733)
!821 = !DILocation(line: 176, column: 5, scope: !733)
!822 = !DILocation(line: 176, column: 9, scope: !733)
!823 = !DILocation(line: 176, column: 15, scope: !733)
!824 = !DILocation(line: 177, column: 27, scope: !733)
!825 = !DILocation(line: 177, column: 5, scope: !733)
!826 = !DILocation(line: 177, column: 9, scope: !733)
!827 = !DILocation(line: 177, column: 20, scope: !733)
!828 = !DILocation(line: 178, column: 28, scope: !733)
!829 = !DILocation(line: 178, column: 5, scope: !733)
!830 = !DILocation(line: 178, column: 9, scope: !733)
!831 = !DILocation(line: 178, column: 21, scope: !733)
!832 = !DILocation(line: 179, column: 5, scope: !733)
!833 = !DILocation(line: 180, column: 1, scope: !733)
!834 = distinct !DISubprogram(name: "_toggle_gpio", linkageName: "_ZN5Linux14RCOutput_Bebop12_toggle_gpioEh", scope: !101, file: !6, line: 182, type: !206, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !239, retainedNodes: !568)
!835 = !DILocalVariable(name: "this", arg: 1, scope: !834, type: !100, flags: DIFlagArtificial | DIFlagObjectPointer)
!836 = !DILocation(line: 0, scope: !834)
!837 = !DILocalVariable(name: "mask", arg: 2, scope: !834, file: !6, line: 182, type: !60)
!838 = !DILocation(line: 182, column: 43, scope: !834)
!839 = !DILocation(line: 184, column: 10, scope: !840)
!840 = distinct !DILexicalBlock(scope: !834, file: !6, line: 184, column: 9)
!841 = !DILocation(line: 184, column: 20, scope: !840)
!842 = !DILocation(line: 184, column: 9, scope: !834)
!843 = !DILocation(line: 185, column: 9, scope: !840)
!844 = !DILocation(line: 187, column: 5, scope: !834)
!845 = !DILocation(line: 187, column: 9, scope: !834)
!846 = !DILocation(line: 187, column: 74, scope: !834)
!847 = !DILocation(line: 187, column: 15, scope: !834)
!848 = !DILocation(line: 189, column: 5, scope: !834)
!849 = !DILocation(line: 189, column: 15, scope: !834)
!850 = !DILocation(line: 190, column: 1, scope: !834)
!851 = distinct !DISubprogram(name: "_stop_prop", linkageName: "_ZN5Linux14RCOutput_Bebop10_stop_propEv", scope: !101, file: !6, line: 192, type: !191, scopeLine: 193, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !257, retainedNodes: !568)
!852 = !DILocalVariable(name: "this", arg: 1, scope: !851, type: !100, flags: DIFlagArtificial | DIFlagObjectPointer)
!853 = !DILocation(line: 0, scope: !851)
!854 = !DILocalVariable(name: "data", scope: !851, file: !6, line: 194, type: !60)
!855 = !DILocation(line: 194, column: 13, scope: !851)
!856 = !DILocation(line: 195, column: 5, scope: !851)
!857 = !DILocation(line: 195, column: 12, scope: !851)
!858 = !DILocation(line: 197, column: 10, scope: !859)
!859 = distinct !DILexicalBlock(scope: !851, file: !6, line: 197, column: 9)
!860 = !DILocation(line: 197, column: 20, scope: !859)
!861 = !DILocation(line: 197, column: 9, scope: !851)
!862 = !DILocation(line: 198, column: 9, scope: !859)
!863 = !DILocation(line: 200, column: 5, scope: !851)
!864 = !DILocation(line: 200, column: 9, scope: !851)
!865 = !DILocation(line: 200, column: 15, scope: !851)
!866 = !DILocation(line: 202, column: 5, scope: !851)
!867 = !DILocation(line: 202, column: 15, scope: !851)
!868 = !DILocation(line: 203, column: 1, scope: !851)
!869 = distinct !DISubprogram(name: "_clear_error", linkageName: "_ZN5Linux14RCOutput_Bebop12_clear_errorEv", scope: !101, file: !6, line: 205, type: !191, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !258, retainedNodes: !568)
!870 = !DILocalVariable(name: "this", arg: 1, scope: !869, type: !100, flags: DIFlagArtificial | DIFlagObjectPointer)
!871 = !DILocation(line: 0, scope: !869)
!872 = !DILocalVariable(name: "data", scope: !869, file: !6, line: 207, type: !60)
!873 = !DILocation(line: 207, column: 13, scope: !869)
!874 = !DILocation(line: 209, column: 10, scope: !875)
!875 = distinct !DILexicalBlock(scope: !869, file: !6, line: 209, column: 9)
!876 = !DILocation(line: 209, column: 20, scope: !875)
!877 = !DILocation(line: 209, column: 9, scope: !869)
!878 = !DILocation(line: 210, column: 9, scope: !875)
!879 = !DILocation(line: 212, column: 5, scope: !869)
!880 = !DILocation(line: 212, column: 9, scope: !869)
!881 = !DILocation(line: 212, column: 15, scope: !869)
!882 = !DILocation(line: 214, column: 5, scope: !869)
!883 = !DILocation(line: 214, column: 15, scope: !869)
!884 = !DILocation(line: 215, column: 1, scope: !869)
!885 = distinct !DISubprogram(name: "_play_sound", linkageName: "_ZN5Linux14RCOutput_Bebop11_play_soundEh", scope: !101, file: !6, line: 217, type: !206, scopeLine: 218, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !259, retainedNodes: !568)
!886 = !DILocalVariable(name: "this", arg: 1, scope: !885, type: !100, flags: DIFlagArtificial | DIFlagObjectPointer)
!887 = !DILocation(line: 0, scope: !885)
!888 = !DILocalVariable(name: "sound", arg: 2, scope: !885, file: !6, line: 217, type: !60)
!889 = !DILocation(line: 217, column: 42, scope: !885)
!890 = !DILocation(line: 219, column: 10, scope: !891)
!891 = distinct !DILexicalBlock(scope: !885, file: !6, line: 219, column: 9)
!892 = !DILocation(line: 219, column: 20, scope: !891)
!893 = !DILocation(line: 219, column: 9, scope: !885)
!894 = !DILocation(line: 220, column: 9, scope: !891)
!895 = !DILocation(line: 222, column: 5, scope: !885)
!896 = !DILocation(line: 222, column: 9, scope: !885)
!897 = !DILocation(line: 222, column: 73, scope: !885)
!898 = !DILocation(line: 222, column: 15, scope: !885)
!899 = !DILocation(line: 224, column: 5, scope: !885)
!900 = !DILocation(line: 224, column: 15, scope: !885)
!901 = !DILocation(line: 225, column: 1, scope: !885)
!902 = distinct !DISubprogram(name: "_period_us_to_rpm", linkageName: "_ZN5Linux14RCOutput_Bebop17_period_us_to_rpmEt", scope: !101, file: !6, line: 227, type: !261, scopeLine: 228, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !260, retainedNodes: !568)
!903 = !DILocalVariable(name: "this", arg: 1, scope: !902, type: !100, flags: DIFlagArtificial | DIFlagObjectPointer)
!904 = !DILocation(line: 0, scope: !902)
!905 = !DILocalVariable(name: "period_us", arg: 2, scope: !902, file: !6, line: 227, type: !54)
!906 = !DILocation(line: 227, column: 53, scope: !902)
!907 = !DILocalVariable(name: "period_us_fl", scope: !902, file: !6, line: 229, type: !499)
!908 = !DILocation(line: 229, column: 11, scope: !902)
!909 = !DILocation(line: 229, column: 26, scope: !902)
!910 = !DILocalVariable(name: "rpm_fl", scope: !902, file: !6, line: 231, type: !499)
!911 = !DILocation(line: 231, column: 11, scope: !902)
!912 = !DILocation(line: 231, column: 21, scope: !902)
!913 = !DILocation(line: 231, column: 36, scope: !902)
!914 = !DILocation(line: 231, column: 34, scope: !902)
!915 = !DILocation(line: 231, column: 47, scope: !902)
!916 = !DILocation(line: 231, column: 58, scope: !902)
!917 = !DILocation(line: 231, column: 56, scope: !902)
!918 = !DILocation(line: 231, column: 46, scope: !902)
!919 = !DILocation(line: 231, column: 45, scope: !902)
!920 = !DILocation(line: 232, column: 22, scope: !902)
!921 = !DILocation(line: 232, column: 31, scope: !902)
!922 = !DILocation(line: 232, column: 21, scope: !902)
!923 = !DILocation(line: 232, column: 53, scope: !902)
!924 = !DILocation(line: 234, column: 22, scope: !902)
!925 = !DILocation(line: 234, column: 5, scope: !902)
!926 = distinct !DISubprogram(name: "init", linkageName: "_ZN5Linux14RCOutput_Bebop4initEv", scope: !101, file: !6, line: 237, type: !191, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !198, retainedNodes: !568)
!927 = !DILocalVariable(name: "this", arg: 1, scope: !926, type: !100, flags: DIFlagArtificial | DIFlagObjectPointer)
!928 = !DILocation(line: 0, scope: !926)
!929 = !DILocalVariable(name: "ret", scope: !926, file: !6, line: 239, type: !42)
!930 = !DILocation(line: 239, column: 9, scope: !926)
!931 = !DILocalVariable(name: "param", scope: !926, file: !6, line: 240, type: !932)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_param", file: !933, line: 23, size: 32, flags: DIFlagTypePassByValue, elements: !934, identifier: "_ZTS11sched_param")
!933 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_sched_param.h", directory: "", checksumkind: CSK_MD5, checksum: "13c2f29d5f5dc39597ef32d201b78292")
!934 = !{!935}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "sched_priority", scope: !932, file: !933, line: 25, baseType: !42, size: 32)
!936 = !DILocation(line: 240, column: 24, scope: !926)
!937 = !DILocalVariable(name: "attr", scope: !926, file: !6, line: 241, type: !938)
!938 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_attr_t", file: !123, line: 62, baseType: !939)
!939 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "pthread_attr_t", file: !123, line: 56, size: 448, flags: DIFlagTypePassByValue, elements: !940, identifier: "_ZTS14pthread_attr_t")
!940 = !{!941, !945}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !939, file: !123, line: 58, baseType: !942, size: 448)
!942 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 448, elements: !943)
!943 = !{!944}
!944 = !DISubrange(count: 56)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !939, file: !123, line: 59, baseType: !155, size: 64)
!946 = !DILocation(line: 241, column: 20, scope: !926)
!947 = !DILocalVariable(name: "cond_attr", scope: !926, file: !6, line: 242, type: !948)
!948 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_condattr_t", file: !123, line: 45, baseType: !949)
!949 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !123, line: 41, size: 32, flags: DIFlagTypePassByValue, elements: !950, identifier: "_ZTS18pthread_condattr_t")
!950 = !{!951, !953}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !949, file: !123, line: 43, baseType: !952, size: 32)
!952 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 32, elements: !111)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !949, file: !123, line: 44, baseType: !42, size: 32)
!954 = !DILocation(line: 242, column: 24, scope: !926)
!955 = !DILocation(line: 244, column: 16, scope: !926)
!956 = !DILocation(line: 244, column: 20, scope: !926)
!957 = !DILocation(line: 244, column: 26, scope: !926)
!958 = !DILocation(line: 244, column: 5, scope: !926)
!959 = !DILocation(line: 244, column: 14, scope: !926)
!960 = !DILocation(line: 245, column: 9, scope: !961)
!961 = distinct !DILexicalBlock(scope: !926, file: !6, line: 245, column: 9)
!962 = !DILocation(line: 245, column: 18, scope: !961)
!963 = !DILocation(line: 245, column: 9, scope: !926)
!964 = !DILocation(line: 246, column: 9, scope: !965)
!965 = distinct !DILexicalBlock(scope: !961, file: !6, line: 245, column: 27)
!966 = !DILocation(line: 251, column: 31, scope: !926)
!967 = !DILocation(line: 251, column: 11, scope: !926)
!968 = !DILocation(line: 251, column: 9, scope: !926)
!969 = !DILocation(line: 252, column: 9, scope: !970)
!970 = distinct !DILexicalBlock(scope: !926, file: !6, line: 252, column: 9)
!971 = !DILocation(line: 252, column: 13, scope: !970)
!972 = !DILocation(line: 252, column: 9, scope: !926)
!973 = !DILocation(line: 253, column: 9, scope: !974)
!974 = distinct !DILexicalBlock(scope: !970, file: !6, line: 252, column: 19)
!975 = !DILocation(line: 254, column: 9, scope: !974)
!976 = !DILocation(line: 257, column: 25, scope: !926)
!977 = !DILocation(line: 257, column: 5, scope: !926)
!978 = !DILocation(line: 259, column: 5, scope: !926)
!979 = !DILocation(line: 260, column: 5, scope: !926)
!980 = !DILocation(line: 261, column: 30, scope: !926)
!981 = !DILocation(line: 261, column: 11, scope: !926)
!982 = !DILocation(line: 261, column: 9, scope: !926)
!983 = !DILocation(line: 262, column: 5, scope: !926)
!984 = !DILocation(line: 263, column: 9, scope: !985)
!985 = distinct !DILexicalBlock(scope: !926, file: !6, line: 263, column: 9)
!986 = !DILocation(line: 263, column: 13, scope: !985)
!987 = !DILocation(line: 263, column: 9, scope: !926)
!988 = !DILocation(line: 264, column: 9, scope: !989)
!989 = distinct !DILexicalBlock(scope: !985, file: !6, line: 263, column: 19)
!990 = !DILocation(line: 265, column: 9, scope: !989)
!991 = !DILocation(line: 268, column: 11, scope: !926)
!992 = !DILocation(line: 268, column: 9, scope: !926)
!993 = !DILocation(line: 269, column: 9, scope: !994)
!994 = distinct !DILexicalBlock(scope: !926, file: !6, line: 269, column: 9)
!995 = !DILocation(line: 269, column: 13, scope: !994)
!996 = !DILocation(line: 269, column: 9, scope: !926)
!997 = !DILocation(line: 270, column: 9, scope: !998)
!998 = distinct !DILexicalBlock(scope: !994, file: !6, line: 269, column: 19)
!999 = !DILocation(line: 271, column: 9, scope: !998)
!1000 = !DILocation(line: 273, column: 5, scope: !926)
!1001 = !DILocation(line: 274, column: 5, scope: !926)
!1002 = !DILocation(line: 275, column: 5, scope: !926)
!1003 = !DILocation(line: 276, column: 27, scope: !926)
!1004 = !DILocation(line: 276, column: 11, scope: !926)
!1005 = !DILocation(line: 276, column: 9, scope: !926)
!1006 = !DILocation(line: 277, column: 9, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !926, file: !6, line: 277, column: 9)
!1008 = !DILocation(line: 277, column: 13, scope: !1007)
!1009 = !DILocation(line: 277, column: 9, scope: !926)
!1010 = !DILocation(line: 278, column: 9, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !1007, file: !6, line: 277, column: 19)
!1012 = !DILocation(line: 279, column: 9, scope: !1011)
!1013 = !DILocation(line: 282, column: 5, scope: !926)
!1014 = !DILocation(line: 285, column: 5, scope: !926)
!1015 = !DILocation(line: 285, column: 16, scope: !926)
!1016 = !DILabel(scope: !926, name: "exit", file: !6, line: 287)
!1017 = !DILocation(line: 287, column: 1, scope: !926)
!1018 = !DILocation(line: 288, column: 27, scope: !926)
!1019 = !DILocation(line: 288, column: 5, scope: !926)
!1020 = !DILocation(line: 289, column: 5, scope: !926)
!1021 = !DILocation(line: 290, column: 1, scope: !926)
!1022 = distinct !DISubprogram(name: "_control_thread", linkageName: "_ZN5Linux14RCOutput_Bebop15_control_threadEPv", scope: !101, file: !6, line: 359, type: !265, scopeLine: 359, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !264, retainedNodes: !568)
!1023 = !DILocalVariable(name: "arg", arg: 1, scope: !1022, file: !6, line: 359, type: !267)
!1024 = !DILocation(line: 359, column: 45, scope: !1022)
!1025 = !DILocalVariable(name: "rcout", scope: !1022, file: !6, line: 360, type: !100)
!1026 = !DILocation(line: 360, column: 21, scope: !1022)
!1027 = !DILocation(line: 360, column: 48, scope: !1022)
!1028 = !DILocation(line: 362, column: 5, scope: !1022)
!1029 = !DILocation(line: 362, column: 12, scope: !1022)
!1030 = !DILocation(line: 363, column: 5, scope: !1022)
!1031 = distinct !DISubprogram(name: "set_freq", linkageName: "_ZN5Linux14RCOutput_Bebop8set_freqEjt", scope: !101, file: !6, line: 292, type: !200, scopeLine: 293, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !199, retainedNodes: !568)
!1032 = !DILocalVariable(name: "this", arg: 1, scope: !1031, type: !100, flags: DIFlagArtificial | DIFlagObjectPointer)
!1033 = !DILocation(line: 0, scope: !1031)
!1034 = !DILocalVariable(name: "chmask", arg: 2, scope: !1031, file: !6, line: 292, type: !50)
!1035 = !DILocation(line: 292, column: 40, scope: !1031)
!1036 = !DILocalVariable(name: "freq_hz", arg: 3, scope: !1031, file: !6, line: 292, type: !54)
!1037 = !DILocation(line: 292, column: 57, scope: !1031)
!1038 = !DILocation(line: 294, column: 18, scope: !1031)
!1039 = !DILocation(line: 294, column: 5, scope: !1031)
!1040 = !DILocation(line: 294, column: 16, scope: !1031)
!1041 = !DILocation(line: 295, column: 1, scope: !1031)
!1042 = distinct !DISubprogram(name: "get_freq", linkageName: "_ZN5Linux14RCOutput_Bebop8get_freqEh", scope: !101, file: !6, line: 297, type: !203, scopeLine: 298, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !202, retainedNodes: !568)
!1043 = !DILocalVariable(name: "this", arg: 1, scope: !1042, type: !100, flags: DIFlagArtificial | DIFlagObjectPointer)
!1044 = !DILocation(line: 0, scope: !1042)
!1045 = !DILocalVariable(name: "ch", arg: 2, scope: !1042, file: !6, line: 297, type: !60)
!1046 = !DILocation(line: 297, column: 43, scope: !1042)
!1047 = !DILocation(line: 299, column: 12, scope: !1042)
!1048 = !DILocation(line: 299, column: 5, scope: !1042)
!1049 = distinct !DISubprogram(name: "enable_ch", linkageName: "_ZN5Linux14RCOutput_Bebop9enable_chEh", scope: !101, file: !6, line: 302, type: !206, scopeLine: 303, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !205, retainedNodes: !568)
!1050 = !DILocalVariable(name: "this", arg: 1, scope: !1049, type: !100, flags: DIFlagArtificial | DIFlagObjectPointer)
!1051 = !DILocation(line: 0, scope: !1049)
!1052 = !DILocalVariable(name: "ch", arg: 2, scope: !1049, file: !6, line: 302, type: !60)
!1053 = !DILocation(line: 302, column: 40, scope: !1049)
!1054 = !DILocation(line: 304, column: 1, scope: !1049)
!1055 = distinct !DISubprogram(name: "disable_ch", linkageName: "_ZN5Linux14RCOutput_Bebop10disable_chEh", scope: !101, file: !6, line: 306, type: !206, scopeLine: 307, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !208, retainedNodes: !568)
!1056 = !DILocalVariable(name: "this", arg: 1, scope: !1055, type: !100, flags: DIFlagArtificial | DIFlagObjectPointer)
!1057 = !DILocation(line: 0, scope: !1055)
!1058 = !DILocalVariable(name: "ch", arg: 2, scope: !1055, file: !6, line: 306, type: !60)
!1059 = !DILocation(line: 306, column: 41, scope: !1055)
!1060 = !DILocation(line: 308, column: 5, scope: !1055)
!1061 = !DILocation(line: 309, column: 1, scope: !1055)
!1062 = distinct !DISubprogram(name: "write", linkageName: "_ZN5Linux14RCOutput_Bebop5writeEht", scope: !101, file: !6, line: 311, type: !210, scopeLine: 312, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !209, retainedNodes: !568)
!1063 = !DILocalVariable(name: "this", arg: 1, scope: !1062, type: !100, flags: DIFlagArtificial | DIFlagObjectPointer)
!1064 = !DILocation(line: 0, scope: !1062)
!1065 = !DILocalVariable(name: "ch", arg: 2, scope: !1062, file: !6, line: 311, type: !60)
!1066 = !DILocation(line: 311, column: 36, scope: !1062)
!1067 = !DILocalVariable(name: "period_us", arg: 3, scope: !1062, file: !6, line: 311, type: !54)
!1068 = !DILocation(line: 311, column: 49, scope: !1062)
!1069 = !DILocation(line: 313, column: 9, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1062, file: !6, line: 313, column: 9)
!1071 = !DILocation(line: 313, column: 12, scope: !1070)
!1072 = !DILocation(line: 313, column: 9, scope: !1062)
!1073 = !DILocation(line: 314, column: 9, scope: !1070)
!1074 = !DILocation(line: 316, column: 30, scope: !1062)
!1075 = !DILocation(line: 316, column: 5, scope: !1062)
!1076 = !DILocation(line: 316, column: 24, scope: !1062)
!1077 = !DILocation(line: 316, column: 28, scope: !1062)
!1078 = !DILocation(line: 318, column: 10, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1062, file: !6, line: 318, column: 9)
!1080 = !DILocation(line: 318, column: 9, scope: !1062)
!1081 = !DILocation(line: 319, column: 9, scope: !1079)
!1082 = !DILocation(line: 320, column: 1, scope: !1062)
!1083 = distinct !DISubprogram(name: "cork", linkageName: "_ZN5Linux14RCOutput_Bebop4corkEv", scope: !101, file: !6, line: 322, type: !191, scopeLine: 323, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !212, retainedNodes: !568)
!1084 = !DILocalVariable(name: "this", arg: 1, scope: !1083, type: !100, flags: DIFlagArtificial | DIFlagObjectPointer)
!1085 = !DILocation(line: 0, scope: !1083)
!1086 = !DILocation(line: 324, column: 5, scope: !1083)
!1087 = !DILocation(line: 324, column: 14, scope: !1083)
!1088 = !DILocation(line: 325, column: 1, scope: !1083)
!1089 = distinct !DISubprogram(name: "push", linkageName: "_ZN5Linux14RCOutput_Bebop4pushEv", scope: !101, file: !6, line: 327, type: !191, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !213, retainedNodes: !568)
!1090 = !DILocalVariable(name: "this", arg: 1, scope: !1089, type: !100, flags: DIFlagArtificial | DIFlagObjectPointer)
!1091 = !DILocation(line: 0, scope: !1089)
!1092 = !DILocation(line: 329, column: 5, scope: !1089)
!1093 = !DILocation(line: 329, column: 14, scope: !1089)
!1094 = !DILocation(line: 330, column: 25, scope: !1089)
!1095 = !DILocation(line: 330, column: 5, scope: !1089)
!1096 = !DILocation(line: 331, column: 12, scope: !1089)
!1097 = !DILocation(line: 331, column: 5, scope: !1089)
!1098 = !DILocation(line: 331, column: 24, scope: !1089)
!1099 = !DILocation(line: 332, column: 26, scope: !1089)
!1100 = !DILocation(line: 332, column: 5, scope: !1089)
!1101 = !DILocation(line: 333, column: 27, scope: !1089)
!1102 = !DILocation(line: 333, column: 5, scope: !1089)
!1103 = !DILocation(line: 334, column: 12, scope: !1089)
!1104 = !DILocation(line: 334, column: 5, scope: !1089)
!1105 = !DILocation(line: 335, column: 1, scope: !1089)
!1106 = distinct !DISubprogram(name: "read", linkageName: "_ZN5Linux14RCOutput_Bebop4readEh", scope: !101, file: !6, line: 337, type: !203, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !214, retainedNodes: !568)
!1107 = !DILocalVariable(name: "this", arg: 1, scope: !1106, type: !100, flags: DIFlagArtificial | DIFlagObjectPointer)
!1108 = !DILocation(line: 0, scope: !1106)
!1109 = !DILocalVariable(name: "ch", arg: 2, scope: !1106, file: !6, line: 337, type: !60)
!1110 = !DILocation(line: 337, column: 39, scope: !1106)
!1111 = !DILocation(line: 339, column: 9, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1106, file: !6, line: 339, column: 9)
!1113 = !DILocation(line: 339, column: 12, scope: !1112)
!1114 = !DILocation(line: 339, column: 9, scope: !1106)
!1115 = !DILocation(line: 340, column: 16, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1112, file: !6, line: 339, column: 37)
!1117 = !DILocation(line: 340, column: 27, scope: !1116)
!1118 = !DILocation(line: 340, column: 9, scope: !1116)
!1119 = !DILocation(line: 342, column: 9, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1112, file: !6, line: 341, column: 12)
!1121 = !DILocation(line: 344, column: 1, scope: !1106)
!1122 = distinct !DISubprogram(name: "read", linkageName: "_ZN5Linux14RCOutput_Bebop4readEPth", scope: !101, file: !6, line: 346, type: !216, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !215, retainedNodes: !568)
!1123 = !DILocalVariable(name: "this", arg: 1, scope: !1122, type: !100, flags: DIFlagArtificial | DIFlagObjectPointer)
!1124 = !DILocation(line: 0, scope: !1122)
!1125 = !DILocalVariable(name: "period_us", arg: 2, scope: !1122, file: !6, line: 346, type: !76)
!1126 = !DILocation(line: 346, column: 37, scope: !1122)
!1127 = !DILocalVariable(name: "len", arg: 3, scope: !1122, file: !6, line: 346, type: !60)
!1128 = !DILocation(line: 346, column: 56, scope: !1122)
!1129 = !DILocalVariable(name: "i", scope: !1130, file: !6, line: 348, type: !42)
!1130 = distinct !DILexicalBlock(scope: !1122, file: !6, line: 348, column: 5)
!1131 = !DILocation(line: 348, column: 14, scope: !1130)
!1132 = !DILocation(line: 348, column: 10, scope: !1130)
!1133 = !DILocation(line: 348, column: 21, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1130, file: !6, line: 348, column: 5)
!1135 = !DILocation(line: 348, column: 25, scope: !1134)
!1136 = !DILocation(line: 348, column: 23, scope: !1134)
!1137 = !DILocation(line: 348, column: 5, scope: !1130)
!1138 = !DILocation(line: 349, column: 33, scope: !1134)
!1139 = !DILocation(line: 349, column: 31, scope: !1134)
!1140 = !DILocation(line: 349, column: 29, scope: !1134)
!1141 = !DILocation(line: 349, column: 24, scope: !1134)
!1142 = !DILocation(line: 349, column: 9, scope: !1134)
!1143 = !DILocation(line: 349, column: 19, scope: !1134)
!1144 = !DILocation(line: 349, column: 22, scope: !1134)
!1145 = !DILocation(line: 348, column: 31, scope: !1134)
!1146 = !DILocation(line: 348, column: 5, scope: !1134)
!1147 = distinct !{!1147, !1137, !1148, !628}
!1148 = !DILocation(line: 349, column: 34, scope: !1130)
!1149 = !DILocation(line: 350, column: 1, scope: !1122)
!1150 = distinct !DISubprogram(name: "set_esc_scaling", linkageName: "_ZN5Linux14RCOutput_Bebop15set_esc_scalingEtt", scope: !101, file: !6, line: 352, type: !219, scopeLine: 353, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !218, retainedNodes: !568)
!1151 = !DILocalVariable(name: "this", arg: 1, scope: !1150, type: !100, flags: DIFlagArtificial | DIFlagObjectPointer)
!1152 = !DILocation(line: 0, scope: !1150)
!1153 = !DILocalVariable(name: "min_pwm", arg: 2, scope: !1150, file: !6, line: 352, type: !54)
!1154 = !DILocation(line: 352, column: 47, scope: !1150)
!1155 = !DILocalVariable(name: "max_pwm", arg: 3, scope: !1150, file: !6, line: 352, type: !54)
!1156 = !DILocation(line: 352, column: 65, scope: !1150)
!1157 = !DILocation(line: 354, column: 16, scope: !1150)
!1158 = !DILocation(line: 354, column: 5, scope: !1150)
!1159 = !DILocation(line: 354, column: 14, scope: !1150)
!1160 = !DILocation(line: 355, column: 16, scope: !1150)
!1161 = !DILocation(line: 355, column: 5, scope: !1150)
!1162 = !DILocation(line: 355, column: 14, scope: !1150)
!1163 = !DILocation(line: 356, column: 1, scope: !1150)
!1164 = distinct !DISubprogram(name: "_run_rcout", linkageName: "_ZN5Linux14RCOutput_Bebop10_run_rcoutEv", scope: !101, file: !6, line: 366, type: !191, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !263, retainedNodes: !568)
!1165 = !DILocalVariable(name: "this", arg: 1, scope: !1164, type: !100, flags: DIFlagArtificial | DIFlagObjectPointer)
!1166 = !DILocation(line: 0, scope: !1164)
!1167 = !DILocalVariable(name: "current_period_us", scope: !1164, file: !6, line: 368, type: !110)
!1168 = !DILocation(line: 368, column: 14, scope: !1164)
!1169 = !DILocalVariable(name: "i", scope: !1164, file: !6, line: 369, type: !60)
!1170 = !DILocation(line: 369, column: 13, scope: !1164)
!1171 = !DILocalVariable(name: "ret", scope: !1164, file: !6, line: 370, type: !42)
!1172 = !DILocation(line: 370, column: 9, scope: !1164)
!1173 = !DILocalVariable(name: "ts", scope: !1164, file: !6, line: 371, type: !1174)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1175, line: 11, size: 128, flags: DIFlagTypePassByValue, elements: !1176, identifier: "_ZTS8timespec")
!1175 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!1176 = !{!1177, !1179}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1174, file: !1175, line: 16, baseType: !1178, size: 64)
!1178 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !53, line: 160, baseType: !155)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1174, file: !1175, line: 21, baseType: !1180, size: 64, offset: 64)
!1180 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !53, line: 197, baseType: !155)
!1181 = !DILocation(line: 371, column: 21, scope: !1164)
!1182 = !DILocalVariable(name: "info", scope: !1164, file: !6, line: 372, type: !247)
!1183 = !DILocation(line: 372, column: 22, scope: !1164)
!1184 = !DILocalVariable(name: "bebop_bldc_channels", scope: !1164, file: !6, line: 373, type: !229)
!1185 = !DILocation(line: 373, column: 13, scope: !1164)
!1186 = !DILocalVariable(name: "bebop_bldc_right_front", scope: !1164, file: !6, line: 374, type: !60)
!1187 = !DILocation(line: 374, column: 13, scope: !1164)
!1188 = !DILocalVariable(name: "bebop_bldc_left_front", scope: !1164, file: !6, line: 374, type: !60)
!1189 = !DILocation(line: 374, column: 37, scope: !1164)
!1190 = !DILocalVariable(name: "bebop_bldc_left_back", scope: !1164, file: !6, line: 375, type: !60)
!1191 = !DILocation(line: 375, column: 13, scope: !1164)
!1192 = !DILocalVariable(name: "bebop_bldc_right_back", scope: !1164, file: !6, line: 375, type: !60)
!1193 = !DILocation(line: 375, column: 35, scope: !1164)
!1194 = !DILocalVariable(name: "hw_version", scope: !1164, file: !6, line: 376, type: !42)
!1195 = !DILocation(line: 376, column: 9, scope: !1164)
!1196 = !DILocation(line: 378, column: 5, scope: !1164)
!1197 = !DILocation(line: 380, column: 10, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1164, file: !6, line: 380, column: 9)
!1199 = !DILocation(line: 380, column: 9, scope: !1164)
!1200 = !DILocation(line: 381, column: 9, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1198, file: !6, line: 380, column: 28)
!1202 = !DILocation(line: 388, column: 14, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1164, file: !6, line: 388, column: 9)
!1204 = !DILocation(line: 388, column: 9, scope: !1203)
!1205 = !DILocation(line: 388, column: 26, scope: !1203)
!1206 = !DILocation(line: 388, column: 9, scope: !1164)
!1207 = !DILocation(line: 389, column: 32, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1203, file: !6, line: 388, column: 32)
!1209 = !DILocation(line: 390, column: 32, scope: !1208)
!1210 = !DILocation(line: 391, column: 32, scope: !1208)
!1211 = !DILocation(line: 392, column: 32, scope: !1208)
!1212 = !DILocation(line: 393, column: 5, scope: !1208)
!1213 = !DILocation(line: 394, column: 32, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1203, file: !6, line: 393, column: 12)
!1215 = !DILocation(line: 395, column: 32, scope: !1214)
!1216 = !DILocation(line: 396, column: 32, scope: !1214)
!1217 = !DILocation(line: 397, column: 32, scope: !1214)
!1218 = !DILocation(line: 400, column: 30, scope: !1164)
!1219 = !DILocation(line: 400, column: 5, scope: !1164)
!1220 = !DILocation(line: 400, column: 28, scope: !1164)
!1221 = !DILocation(line: 401, column: 30, scope: !1164)
!1222 = !DILocation(line: 401, column: 5, scope: !1164)
!1223 = !DILocation(line: 401, column: 28, scope: !1164)
!1224 = !DILocation(line: 402, column: 30, scope: !1164)
!1225 = !DILocation(line: 402, column: 5, scope: !1164)
!1226 = !DILocation(line: 402, column: 28, scope: !1164)
!1227 = !DILocation(line: 403, column: 30, scope: !1164)
!1228 = !DILocation(line: 403, column: 5, scope: !1164)
!1229 = !DILocation(line: 403, column: 28, scope: !1164)
!1230 = !DILocation(line: 405, column: 29, scope: !1164)
!1231 = !DILocation(line: 405, column: 33, scope: !1164)
!1232 = !DILocation(line: 405, column: 18, scope: !1164)
!1233 = !DILocation(line: 405, column: 40, scope: !1164)
!1234 = !DILocation(line: 405, column: 16, scope: !1164)
!1235 = !DILocation(line: 406, column: 9, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1164, file: !6, line: 406, column: 9)
!1237 = !DILocation(line: 406, column: 20, scope: !1236)
!1238 = !DILocation(line: 406, column: 9, scope: !1164)
!1239 = !DILocation(line: 407, column: 9, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1236, file: !6, line: 406, column: 44)
!1241 = !DILocation(line: 407, column: 18, scope: !1240)
!1242 = !DILocation(line: 408, column: 5, scope: !1240)
!1243 = !DILocation(line: 408, column: 16, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1236, file: !6, line: 408, column: 16)
!1245 = !DILocation(line: 408, column: 27, scope: !1244)
!1246 = !DILocation(line: 408, column: 16, scope: !1236)
!1247 = !DILocation(line: 409, column: 9, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1244, file: !6, line: 408, column: 52)
!1249 = !DILocation(line: 409, column: 18, scope: !1248)
!1250 = !DILocation(line: 410, column: 5, scope: !1248)
!1251 = !DILocation(line: 410, column: 16, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1244, file: !6, line: 410, column: 16)
!1253 = !DILocation(line: 410, column: 27, scope: !1252)
!1254 = !DILocation(line: 410, column: 16, scope: !1244)
!1255 = !DILocation(line: 411, column: 63, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1252, file: !6, line: 410, column: 32)
!1257 = !DILocation(line: 411, column: 54, scope: !1256)
!1258 = !DILocation(line: 411, column: 9, scope: !1256)
!1259 = !DILocation(line: 413, column: 52, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1252, file: !6, line: 412, column: 12)
!1261 = !DILocation(line: 413, column: 9, scope: !1260)
!1262 = !DILocation(line: 416, column: 5, scope: !1164)
!1263 = !DILocation(line: 417, column: 29, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1164, file: !6, line: 416, column: 18)
!1265 = !DILocation(line: 417, column: 9, scope: !1264)
!1266 = !DILocation(line: 418, column: 15, scope: !1264)
!1267 = !DILocation(line: 418, column: 13, scope: !1264)
!1268 = !DILocation(line: 419, column: 13, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1264, file: !6, line: 419, column: 13)
!1270 = !DILocation(line: 419, column: 17, scope: !1269)
!1271 = !DILocation(line: 419, column: 13, scope: !1264)
!1272 = !DILocation(line: 420, column: 13, scope: !1269)
!1273 = !DILocation(line: 420, column: 17, scope: !1269)
!1274 = !DILocation(line: 420, column: 26, scope: !1269)
!1275 = !DILocation(line: 422, column: 16, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1264, file: !6, line: 422, column: 13)
!1277 = !DILocation(line: 422, column: 24, scope: !1276)
!1278 = !DILocation(line: 422, column: 13, scope: !1264)
!1279 = !DILocation(line: 424, column: 16, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1276, file: !6, line: 423, column: 9)
!1281 = !DILocation(line: 424, column: 23, scope: !1280)
!1282 = !DILocation(line: 425, column: 29, scope: !1280)
!1283 = !DILocation(line: 425, column: 37, scope: !1280)
!1284 = !DILocation(line: 425, column: 61, scope: !1280)
!1285 = !DILocation(line: 425, column: 16, scope: !1280)
!1286 = !DILocation(line: 425, column: 24, scope: !1280)
!1287 = !DILocation(line: 426, column: 9, scope: !1280)
!1288 = !DILocation(line: 427, column: 16, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1276, file: !6, line: 426, column: 16)
!1290 = !DILocation(line: 427, column: 24, scope: !1289)
!1291 = !DILocation(line: 430, column: 13, scope: !1264)
!1292 = !DILocation(line: 431, column: 9, scope: !1264)
!1293 = !DILocation(line: 431, column: 24, scope: !1264)
!1294 = !DILocation(line: 431, column: 36, scope: !1264)
!1295 = !DILocation(line: 431, column: 17, scope: !1264)
!1296 = !DILocation(line: 431, column: 75, scope: !1264)
!1297 = !DILocation(line: 431, column: 81, scope: !1264)
!1298 = !DILocation(line: 431, column: 85, scope: !1264)
!1299 = !DILocation(line: 431, column: 89, scope: !1264)
!1300 = !DILocation(line: 0, scope: !1264)
!1301 = !DILocation(line: 432, column: 43, scope: !1264)
!1302 = !DILocation(line: 432, column: 51, scope: !1264)
!1303 = !DILocation(line: 432, column: 19, scope: !1264)
!1304 = !DILocation(line: 432, column: 17, scope: !1264)
!1305 = distinct !{!1305, !1292, !1306, !628}
!1306 = !DILocation(line: 432, column: 62, scope: !1264)
!1307 = !DILocation(line: 434, column: 9, scope: !1264)
!1308 = !DILocation(line: 434, column: 35, scope: !1264)
!1309 = !DILocation(line: 435, column: 31, scope: !1264)
!1310 = !DILocation(line: 435, column: 9, scope: !1264)
!1311 = !DILocation(line: 439, column: 16, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1264, file: !6, line: 439, column: 9)
!1313 = !DILocation(line: 439, column: 14, scope: !1312)
!1314 = !DILocation(line: 439, column: 21, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1312, file: !6, line: 439, column: 9)
!1316 = !DILocation(line: 439, column: 23, scope: !1315)
!1317 = !DILocation(line: 439, column: 9, scope: !1312)
!1318 = !DILocation(line: 440, column: 35, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1320, file: !6, line: 440, column: 17)
!1320 = distinct !DILexicalBlock(scope: !1315, file: !6, line: 439, column: 53)
!1321 = !DILocation(line: 440, column: 17, scope: !1319)
!1322 = !DILocation(line: 440, column: 41, scope: !1319)
!1323 = !DILocation(line: 440, column: 50, scope: !1319)
!1324 = !DILocation(line: 440, column: 38, scope: !1319)
!1325 = !DILocation(line: 440, column: 17, scope: !1320)
!1326 = !DILocation(line: 441, column: 17, scope: !1319)
!1327 = !DILocation(line: 442, column: 80, scope: !1320)
!1328 = !DILocation(line: 442, column: 62, scope: !1320)
!1329 = !DILocation(line: 442, column: 44, scope: !1320)
!1330 = !DILocation(line: 442, column: 13, scope: !1320)
!1331 = !DILocation(line: 442, column: 38, scope: !1320)
!1332 = !DILocation(line: 442, column: 18, scope: !1320)
!1333 = !DILocation(line: 442, column: 42, scope: !1320)
!1334 = !DILocation(line: 443, column: 9, scope: !1320)
!1335 = !DILocation(line: 439, column: 49, scope: !1315)
!1336 = !DILocation(line: 439, column: 9, scope: !1315)
!1337 = distinct !{!1337, !1317, !1338, !628}
!1338 = !DILocation(line: 443, column: 9, scope: !1312)
!1339 = !DILocation(line: 445, column: 13, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1264, file: !6, line: 445, column: 13)
!1341 = !DILocation(line: 445, column: 15, scope: !1340)
!1342 = !DILocation(line: 445, column: 13, scope: !1264)
!1343 = !DILocation(line: 448, column: 17, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1345, file: !6, line: 448, column: 17)
!1345 = distinct !DILexicalBlock(scope: !1340, file: !6, line: 445, column: 40)
!1346 = !DILocation(line: 448, column: 24, scope: !1344)
!1347 = !DILocation(line: 448, column: 17, scope: !1345)
!1348 = !DILocation(line: 449, column: 17, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1344, file: !6, line: 448, column: 47)
!1350 = !DILocation(line: 450, column: 17, scope: !1349)
!1351 = !DILocation(line: 451, column: 13, scope: !1349)
!1352 = !DILocation(line: 452, column: 9, scope: !1345)
!1353 = !DILocation(line: 455, column: 17, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1355, file: !6, line: 455, column: 17)
!1355 = distinct !DILexicalBlock(scope: !1340, file: !6, line: 452, column: 16)
!1356 = !DILocation(line: 455, column: 24, scope: !1354)
!1357 = !DILocation(line: 455, column: 17, scope: !1355)
!1358 = !DILocation(line: 456, column: 17, scope: !1354)
!1359 = !DILocation(line: 458, column: 24, scope: !1264)
!1360 = !DILocation(line: 458, column: 9, scope: !1264)
!1361 = distinct !{!1361, !1262, !1362, !628}
!1362 = !DILocation(line: 459, column: 5, scope: !1164)
!1363 = distinct !DISubprogram(name: "from", linkageName: "_ZN5Linux4Util4fromEPN6AP_HAL4UtilE", scope: !269, file: !25, line: 20, type: !1364, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !1369, retainedNodes: !568)
!1364 = !DISubroutineType(types: !1365)
!1365 = !{!268, !1366}
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = !DICompositeType(tag: DW_TAG_class_type, name: "Util", scope: !35, file: !1368, line: 6, size: 192, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN6AP_HAL4UtilE")
!1368 = !DIFile(filename: "ardupilot/libraries/AP_HAL/Util.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f7e8461e15dcfac2de317f6cb16a69b8")
!1369 = !DISubprogram(name: "from", linkageName: "_ZN5Linux4Util4fromEPN6AP_HAL4UtilE", scope: !269, file: !25, line: 20, type: !1364, scopeLine: 20, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!1370 = !DILocalVariable(name: "util", arg: 1, scope: !1363, file: !25, line: 20, type: !1366)
!1371 = !DILocation(line: 20, column: 37, scope: !1363)
!1372 = !DILocation(line: 21, column: 35, scope: !1363)
!1373 = !DILocation(line: 21, column: 9, scope: !1363)
!1374 = distinct !DISubprogram(name: "read_last_sent", linkageName: "_ZN6AP_HAL8RCOutput14read_last_sentEh", scope: !34, file: !33, line: 77, type: !58, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !77, retainedNodes: !568)
!1375 = !DILocalVariable(name: "this", arg: 1, scope: !1374, type: !197, flags: DIFlagArtificial | DIFlagObjectPointer)
!1376 = !DILocation(line: 0, scope: !1374)
!1377 = !DILocalVariable(name: "ch", arg: 2, scope: !1374, file: !33, line: 77, type: !60)
!1378 = !DILocation(line: 77, column: 45, scope: !1374)
!1379 = !DILocation(line: 77, column: 63, scope: !1374)
!1380 = !DILocation(line: 77, column: 58, scope: !1374)
!1381 = !DILocation(line: 77, column: 51, scope: !1374)
!1382 = distinct !DISubprogram(name: "read_last_sent", linkageName: "_ZN6AP_HAL8RCOutput14read_last_sentEPth", scope: !34, file: !33, line: 78, type: !74, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !78, retainedNodes: !568)
!1383 = !DILocalVariable(name: "this", arg: 1, scope: !1382, type: !197, flags: DIFlagArtificial | DIFlagObjectPointer)
!1384 = !DILocation(line: 0, scope: !1382)
!1385 = !DILocalVariable(name: "period_us", arg: 2, scope: !1382, file: !33, line: 78, type: !76)
!1386 = !DILocation(line: 78, column: 47, scope: !1382)
!1387 = !DILocalVariable(name: "len", arg: 3, scope: !1382, file: !33, line: 78, type: !60)
!1388 = !DILocation(line: 78, column: 66, scope: !1382)
!1389 = !DILocation(line: 78, column: 78, scope: !1382)
!1390 = !DILocation(line: 78, column: 89, scope: !1382)
!1391 = !DILocation(line: 78, column: 73, scope: !1382)
!1392 = !DILocation(line: 78, column: 95, scope: !1382)
!1393 = distinct !DISubprogram(name: "set_safety_pwm", linkageName: "_ZN6AP_HAL8RCOutput14set_safety_pwmEjt", scope: !34, file: !33, line: 84, type: !48, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !79, retainedNodes: !568)
!1394 = !DILocalVariable(name: "this", arg: 1, scope: !1393, type: !197, flags: DIFlagArtificial | DIFlagObjectPointer)
!1395 = !DILocation(line: 0, scope: !1393)
!1396 = !DILocalVariable(name: "chmask", arg: 2, scope: !1393, file: !33, line: 84, type: !50)
!1397 = !DILocation(line: 84, column: 46, scope: !1393)
!1398 = !DILocalVariable(name: "period_us", arg: 3, scope: !1393, file: !33, line: 84, type: !54)
!1399 = !DILocation(line: 84, column: 63, scope: !1393)
!1400 = !DILocation(line: 84, column: 75, scope: !1393)
!1401 = distinct !DISubprogram(name: "set_failsafe_pwm", linkageName: "_ZN6AP_HAL8RCOutput16set_failsafe_pwmEjt", scope: !34, file: !33, line: 89, type: !48, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !80, retainedNodes: !568)
!1402 = !DILocalVariable(name: "this", arg: 1, scope: !1401, type: !197, flags: DIFlagArtificial | DIFlagObjectPointer)
!1403 = !DILocation(line: 0, scope: !1401)
!1404 = !DILocalVariable(name: "chmask", arg: 2, scope: !1401, file: !33, line: 89, type: !50)
!1405 = !DILocation(line: 89, column: 48, scope: !1401)
!1406 = !DILocalVariable(name: "period_us", arg: 3, scope: !1401, file: !33, line: 89, type: !54)
!1407 = !DILocation(line: 89, column: 65, scope: !1401)
!1408 = !DILocation(line: 89, column: 77, scope: !1401)
!1409 = distinct !DISubprogram(name: "force_safety_on", linkageName: "_ZN6AP_HAL8RCOutput15force_safety_onEv", scope: !34, file: !33, line: 96, type: !82, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !81, retainedNodes: !568)
!1410 = !DILocalVariable(name: "this", arg: 1, scope: !1409, type: !197, flags: DIFlagArtificial | DIFlagObjectPointer)
!1411 = !DILocation(line: 0, scope: !1409)
!1412 = !DILocation(line: 96, column: 46, scope: !1409)
!1413 = distinct !DISubprogram(name: "force_safety_off", linkageName: "_ZN6AP_HAL8RCOutput16force_safety_offEv", scope: !34, file: !33, line: 101, type: !44, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !85, retainedNodes: !568)
!1414 = !DILocalVariable(name: "this", arg: 1, scope: !1413, type: !197, flags: DIFlagArtificial | DIFlagObjectPointer)
!1415 = !DILocation(line: 0, scope: !1413)
!1416 = !DILocation(line: 101, column: 46, scope: !1413)
!1417 = distinct !DISubprogram(name: "enable_sbus_out", linkageName: "_ZN6AP_HAL8RCOutput15enable_sbus_outEt", scope: !34, file: !33, line: 114, type: !90, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !89, retainedNodes: !568)
!1418 = !DILocalVariable(name: "this", arg: 1, scope: !1417, type: !197, flags: DIFlagArtificial | DIFlagObjectPointer)
!1419 = !DILocation(line: 0, scope: !1417)
!1420 = !DILocalVariable(name: "rate_gz", arg: 2, scope: !1417, file: !33, line: 114, type: !54)
!1421 = !DILocation(line: 114, column: 47, scope: !1417)
!1422 = !DILocation(line: 114, column: 58, scope: !1417)
!1423 = distinct !DISubprogram(name: "set_output_mode", linkageName: "_ZN6AP_HAL8RCOutput15set_output_modeENS0_11output_modeE", scope: !34, file: !33, line: 123, type: !93, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !92, retainedNodes: !568)
!1424 = !DILocalVariable(name: "this", arg: 1, scope: !1423, type: !197, flags: DIFlagArtificial | DIFlagObjectPointer)
!1425 = !DILocation(line: 0, scope: !1423)
!1426 = !DILocalVariable(name: "mode", arg: 2, scope: !1423, file: !33, line: 123, type: !32)
!1427 = !DILocation(line: 123, column: 54, scope: !1423)
!1428 = !DILocation(line: 123, column: 61, scope: !1423)
!1429 = distinct !DISubprogram(name: "cork", linkageName: "_ZN6AP_HAL8RCOutput4corkEv", scope: !34, file: !33, line: 58, type: !44, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !70, retainedNodes: !568)
!1430 = !DILocalVariable(name: "this", arg: 1, scope: !1429, type: !197, flags: DIFlagArtificial | DIFlagObjectPointer)
!1431 = !DILocation(line: 0, scope: !1429)
!1432 = !DILocation(line: 58, column: 31, scope: !1429)
!1433 = distinct !DISubprogram(name: "push", linkageName: "_ZN6AP_HAL8RCOutput4pushEv", scope: !34, file: !33, line: 67, type: !44, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !71, retainedNodes: !568)
!1434 = !DILocalVariable(name: "this", arg: 1, scope: !1433, type: !197, flags: DIFlagArtificial | DIFlagObjectPointer)
!1435 = !DILocation(line: 0, scope: !1433)
!1436 = !DILocation(line: 67, column: 31, scope: !1433)
!1437 = distinct !DISubprogram(name: "set_esc_scaling", linkageName: "_ZN6AP_HAL8RCOutput15set_esc_scalingEtt", scope: !34, file: !33, line: 109, type: !87, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !86, retainedNodes: !568)
!1438 = !DILocalVariable(name: "this", arg: 1, scope: !1437, type: !197, flags: DIFlagArtificial | DIFlagObjectPointer)
!1439 = !DILocation(line: 0, scope: !1437)
!1440 = !DILocalVariable(name: "min_pwm", arg: 2, scope: !1437, file: !33, line: 109, type: !54)
!1441 = !DILocation(line: 109, column: 47, scope: !1437)
!1442 = !DILocalVariable(name: "max_pwm", arg: 3, scope: !1437, file: !33, line: 109, type: !54)
!1443 = !DILocation(line: 109, column: 65, scope: !1437)
!1444 = !DILocation(line: 109, column: 75, scope: !1437)
!1445 = distinct !DISubprogram(linkageName: "_GLOBAL__sub_I_RCOutput_Bebop.cpp", scope: !567, file: !567, type: !1446, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !568)
!1446 = !DISubroutineType(types: !568)
!1447 = !DILocation(line: 0, scope: !1445)
