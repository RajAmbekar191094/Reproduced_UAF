; ModuleID = '/home/raj/ardupilot/libraries/AP_HAL_Linux/Thread.cpp'
source_filename = "/home/raj/ardupilot/libraries/AP_HAL_Linux/Thread.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.Linux::Thread" = type { ptr, %class.Functor, i8, i64 }
%class.Functor = type { ptr, ptr }
%struct.sched_param = type { i32 }
%union.pthread_attr_t = type { i64, [48 x i8] }
%"class.Linux::PeriodicThread" = type { %"class.Linux::Thread", i64 }
%"class.AP_HAL::HAL" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

$_ZNK7FunctorIvJEEcvbEv = comdat any

$_ZNK7FunctorIvJEEclEv = comdat any

$_Z10hz_to_usecj = comdat any

$_ZN5Linux9Scheduler4fromEPN6AP_HAL9SchedulerE = comdat any

$_ZN5Linux6ThreadD2Ev = comdat any

$_ZN5Linux6ThreadD0Ev = comdat any

$_ZN5Linux14PeriodicThreadD2Ev = comdat any

$_ZN5Linux14PeriodicThreadD0Ev = comdat any

@.str = private unnamed_addr constant [45 x i8] c"Failed to set attributes for thread '%s': %s\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to create thread '%s': %s\00", align 1, !dbg !8
@hal = external constant ptr, align 8
@_ZTVN5Linux6ThreadE = dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5Linux6ThreadE, ptr @_ZN5Linux6ThreadD2Ev, ptr @_ZN5Linux6ThreadD0Ev, ptr @_ZN5Linux6Thread4_runEv] }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global ptr
@_ZTSN5Linux6ThreadE = dso_local constant [16 x i8] c"N5Linux6ThreadE\00", align 1
@_ZTIN5Linux6ThreadE = dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN5Linux6ThreadE }, align 8
@_ZTVN5Linux14PeriodicThreadE = dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5Linux14PeriodicThreadE, ptr @_ZN5Linux14PeriodicThreadD2Ev, ptr @_ZN5Linux14PeriodicThreadD0Ev, ptr @_ZN5Linux14PeriodicThread4_runEv] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global ptr
@_ZTSN5Linux14PeriodicThreadE = dso_local constant [25 x i8] c"N5Linux14PeriodicThreadE\00", align 1
@_ZTIN5Linux14PeriodicThreadE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5Linux14PeriodicThreadE, ptr @_ZTIN5Linux6ThreadE }, align 8

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef ptr @_ZN5Linux6Thread15_run_trampolineEPv(ptr noundef %0) #0 align 2 !dbg !683 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !684, metadata !DIExpression()), !dbg !685
  call void @llvm.dbg.declare(metadata ptr %3, metadata !686, metadata !DIExpression()), !dbg !687
  %4 = load ptr, ptr %2, align 8, !dbg !688
  store ptr %4, ptr %3, align 8, !dbg !687
  %5 = load ptr, ptr %3, align 8, !dbg !689
  %6 = load ptr, ptr %5, align 8, !dbg !690
  %7 = getelementptr inbounds ptr, ptr %6, i64 2, !dbg !690
  %8 = load ptr, ptr %7, align 8, !dbg !690
  %9 = call noundef zeroext i1 %8(ptr noundef nonnull align 8 dereferenceable(40) %5), !dbg !690
  ret ptr null, !dbg !691
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef zeroext i1 @_ZN5Linux6Thread4_runEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 align 2 !dbg !692 {
  %2 = alloca i1, align 1
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !693, metadata !DIExpression()), !dbg !694
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %"class.Linux::Thread", ptr %4, i32 0, i32 1, !dbg !695
  %6 = call noundef zeroext i1 @_ZNK7FunctorIvJEEcvbEv(ptr noundef nonnull align 8 dereferenceable(16) %5), !dbg !695
  br i1 %6, label %8, label %7, !dbg !697

7:                                                ; preds = %1
  store i1 false, ptr %2, align 1, !dbg !698
  br label %10, !dbg !698

8:                                                ; preds = %1
  %9 = getelementptr inbounds %"class.Linux::Thread", ptr %4, i32 0, i32 1, !dbg !700
  call void @_ZNK7FunctorIvJEEclEv(ptr noundef nonnull align 8 dereferenceable(16) %9), !dbg !700
  store i1 true, ptr %2, align 1, !dbg !701
  br label %10, !dbg !701

10:                                               ; preds = %8, %7
  %11 = load i1, ptr %2, align 1, !dbg !702
  ret i1 %11, !dbg !702
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7FunctorIvJEEcvbEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #2 comdat align 2 !dbg !703 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !704, metadata !DIExpression()), !dbg !706
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %class.Functor, ptr %3, i32 0, i32 1, !dbg !707
  %5 = load ptr, ptr %4, align 8, !dbg !707
  %6 = icmp ne ptr %5, null, !dbg !708
  ret i1 %6, !dbg !709
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNK7FunctorIvJEEclEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #0 comdat align 2 !dbg !710 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !711, metadata !DIExpression()), !dbg !712
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %class.Functor, ptr %3, i32 0, i32 1, !dbg !713
  %5 = load ptr, ptr %4, align 8, !dbg !713
  %6 = getelementptr inbounds %class.Functor, ptr %3, i32 0, i32 0, !dbg !714
  %7 = load ptr, ptr %6, align 8, !dbg !714
  call void %5(ptr noundef %7), !dbg !713
  ret void, !dbg !715
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef zeroext i1 @_ZN5Linux6Thread5startEPKcii(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 align 2 !dbg !716 {
  %5 = alloca i1, align 1
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sched_param, align 4
  %11 = alloca %union.pthread_attr_t, align 8
  %12 = alloca i32, align 4
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !717, metadata !DIExpression()), !dbg !718
  store ptr %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !719, metadata !DIExpression()), !dbg !720
  store i32 %2, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !721, metadata !DIExpression()), !dbg !722
  store i32 %3, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !723, metadata !DIExpression()), !dbg !724
  %13 = load ptr, ptr %6, align 8
  %14 = getelementptr inbounds %"class.Linux::Thread", ptr %13, i32 0, i32 2, !dbg !725
  %15 = load i8, ptr %14, align 8, !dbg !725
  %16 = trunc i8 %15 to i1, !dbg !725
  br i1 %16, label %17, label %18, !dbg !727

17:                                               ; preds = %4
  store i1 false, ptr %5, align 1, !dbg !728
  br label %60, !dbg !728

18:                                               ; preds = %4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !730, metadata !DIExpression()), !dbg !735
  %19 = getelementptr inbounds %struct.sched_param, ptr %10, i32 0, i32 0, !dbg !736
  %20 = load i32, ptr %9, align 4, !dbg !737
  store i32 %20, ptr %19, align 4, !dbg !736
  call void @llvm.dbg.declare(metadata ptr %11, metadata !738, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.declare(metadata ptr %12, metadata !748, metadata !DIExpression()), !dbg !749
  %21 = call i32 @pthread_attr_init(ptr noundef %11) #9, !dbg !750
  %22 = call i32 @geteuid() #9, !dbg !751
  %23 = icmp eq i32 %22, 0, !dbg !753
  br i1 %23, label %24, label %40, !dbg !754

24:                                               ; preds = %18
  %25 = call i32 @pthread_attr_setinheritsched(ptr noundef %11, i32 noundef 1) #9, !dbg !755
  store i32 %25, ptr %12, align 4, !dbg !758
  %26 = icmp ne i32 %25, 0, !dbg !759
  br i1 %26, label %35, label %27, !dbg !760

27:                                               ; preds = %24
  %28 = load i32, ptr %8, align 4, !dbg !761
  %29 = call i32 @pthread_attr_setschedpolicy(ptr noundef %11, i32 noundef %28) #9, !dbg !762
  store i32 %29, ptr %12, align 4, !dbg !763
  %30 = icmp ne i32 %29, 0, !dbg !764
  br i1 %30, label %35, label %31, !dbg !765

31:                                               ; preds = %27
  %32 = call i32 @pthread_attr_setschedparam(ptr noundef %11, ptr noundef %10) #9, !dbg !766
  %33 = icmp ne i32 %32, 0, !dbg !767
  %34 = zext i1 %33 to i32, !dbg !766
  store i32 %34, ptr %12, align 4, !dbg !768
  br i1 %33, label %35, label %39, !dbg !769

35:                                               ; preds = %31, %27, %24
  %36 = load ptr, ptr %7, align 8, !dbg !770
  %37 = load i32, ptr %12, align 4, !dbg !772
  %38 = call ptr @strerror(i32 noundef %37) #9, !dbg !773
  call void (ptr, ...) @_ZN6AP_HAL5panicEPKcz(ptr noundef @.str, ptr noundef %36, ptr noundef %38) #10, !dbg !774
  unreachable, !dbg !774

39:                                               ; preds = %31
  br label %40, !dbg !775

40:                                               ; preds = %39, %18
  %41 = getelementptr inbounds %"class.Linux::Thread", ptr %13, i32 0, i32 3, !dbg !776
  %42 = call i32 @pthread_create(ptr noundef %41, ptr noundef %11, ptr noundef @_ZN5Linux6Thread15_run_trampolineEPv, ptr noundef %13) #9, !dbg !777
  store i32 %42, ptr %12, align 4, !dbg !778
  %43 = load i32, ptr %12, align 4, !dbg !779
  %44 = icmp ne i32 %43, 0, !dbg !781
  br i1 %44, label %45, label %49, !dbg !782

45:                                               ; preds = %40
  %46 = load ptr, ptr %7, align 8, !dbg !783
  %47 = load i32, ptr %12, align 4, !dbg !785
  %48 = call ptr @strerror(i32 noundef %47) #9, !dbg !786
  call void (ptr, ...) @_ZN6AP_HAL5panicEPKcz(ptr noundef @.str.1, ptr noundef %46, ptr noundef %48) #10, !dbg !787
  unreachable, !dbg !787

49:                                               ; preds = %40
  %50 = call i32 @pthread_attr_destroy(ptr noundef %11) #9, !dbg !788
  %51 = load ptr, ptr %7, align 8, !dbg !789
  %52 = icmp ne ptr %51, null, !dbg !789
  br i1 %52, label %53, label %58, !dbg !791

53:                                               ; preds = %49
  %54 = getelementptr inbounds %"class.Linux::Thread", ptr %13, i32 0, i32 3, !dbg !792
  %55 = load i64, ptr %54, align 8, !dbg !792
  %56 = load ptr, ptr %7, align 8, !dbg !794
  %57 = call i32 @pthread_setname_np(i64 noundef %55, ptr noundef %56) #9, !dbg !795
  br label %58, !dbg !796

58:                                               ; preds = %53, %49
  %59 = getelementptr inbounds %"class.Linux::Thread", ptr %13, i32 0, i32 2, !dbg !797
  store i8 1, ptr %59, align 8, !dbg !798
  store i1 true, ptr %5, align 1, !dbg !799
  br label %60, !dbg !799

60:                                               ; preds = %58, %17
  %61 = load i1, ptr %5, align 1, !dbg !800
  ret i1 %61, !dbg !800
}

; Function Attrs: nounwind
declare i32 @pthread_attr_init(ptr noundef) #3

; Function Attrs: nounwind
declare i32 @geteuid() #3

; Function Attrs: nounwind
declare i32 @pthread_attr_setinheritsched(ptr noundef, i32 noundef) #3

; Function Attrs: nounwind
declare i32 @pthread_attr_setschedpolicy(ptr noundef, i32 noundef) #3

; Function Attrs: nounwind
declare i32 @pthread_attr_setschedparam(ptr noundef, ptr noundef) #3

; Function Attrs: noreturn
declare void @_ZN6AP_HAL5panicEPKcz(ptr noundef, ...) #4

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) #3

; Function Attrs: nounwind
declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind
declare i32 @pthread_attr_destroy(ptr noundef) #3

; Function Attrs: nounwind
declare i32 @pthread_setname_np(i64 noundef, ptr noundef) #3

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef zeroext i1 @_ZN5Linux6Thread17is_current_threadEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #2 align 2 !dbg !801 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !802, metadata !DIExpression()), !dbg !803
  %3 = load ptr, ptr %2, align 8
  %4 = call i64 @pthread_self() #11, !dbg !804
  %5 = getelementptr inbounds %"class.Linux::Thread", ptr %3, i32 0, i32 3, !dbg !805
  %6 = load i64, ptr %5, align 8, !dbg !805
  %7 = call i32 @pthread_equal(i64 noundef %4, i64 noundef %6) #11, !dbg !806
  %8 = icmp ne i32 %7, 0, !dbg !806
  ret i1 %8, !dbg !807
}

; Function Attrs: nounwind willreturn memory(none)
declare i32 @pthread_equal(i64 noundef, i64 noundef) #5

; Function Attrs: nounwind willreturn memory(none)
declare i64 @pthread_self() #5

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef zeroext i1 @_ZN5Linux14PeriodicThread8set_rateEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) #0 align 2 !dbg !808 {
  %3 = alloca i1, align 1
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !829, metadata !DIExpression()), !dbg !831
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !832, metadata !DIExpression()), !dbg !833
  %6 = load ptr, ptr %4, align 8
  %7 = getelementptr inbounds %"class.Linux::Thread", ptr %6, i32 0, i32 2, !dbg !834
  %8 = load i8, ptr %7, align 8, !dbg !834
  %9 = trunc i8 %8 to i1, !dbg !834
  br i1 %9, label %13, label %10, !dbg !836

10:                                               ; preds = %2
  %11 = load i32, ptr %5, align 4, !dbg !837
  %12 = icmp eq i32 %11, 0, !dbg !838
  br i1 %12, label %13, label %14, !dbg !839

13:                                               ; preds = %10, %2
  store i1 false, ptr %3, align 1, !dbg !840
  br label %19, !dbg !840

14:                                               ; preds = %10
  %15 = load i32, ptr %5, align 4, !dbg !842
  %16 = call noundef i32 @_Z10hz_to_usecj(i32 noundef %15), !dbg !843
  %17 = zext i32 %16 to i64, !dbg !843
  %18 = getelementptr inbounds %"class.Linux::PeriodicThread", ptr %6, i32 0, i32 1, !dbg !844
  store i64 %17, ptr %18, align 8, !dbg !845
  store i1 true, ptr %3, align 1, !dbg !846
  br label %19, !dbg !846

19:                                               ; preds = %14, %13
  %20 = load i1, ptr %3, align 1, !dbg !847
  ret i1 %20, !dbg !847
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @_Z10hz_to_usecj(i32 noundef %0) #2 comdat !dbg !848 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !852, metadata !DIExpression()), !dbg !853
  %3 = load i32, ptr %2, align 4, !dbg !854
  %4 = zext i32 %3 to i64, !dbg !854
  %5 = udiv i64 1000000, %4, !dbg !855
  %6 = trunc i64 %5 to i32, !dbg !856
  ret i32 %6, !dbg !857
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef zeroext i1 @_ZN5Linux14PeriodicThread4_runEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 align 2 !dbg !858 {
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !859, metadata !DIExpression()), !dbg !860
  %5 = load ptr, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !861, metadata !DIExpression()), !dbg !862
  %6 = call noundef i64 @_ZN6AP_HAL8micros64Ev(), !dbg !863
  %7 = getelementptr inbounds %"class.Linux::PeriodicThread", ptr %5, i32 0, i32 1, !dbg !864
  %8 = load i64, ptr %7, align 8, !dbg !864
  %9 = add i64 %6, %8, !dbg !865
  store i64 %9, ptr %3, align 8, !dbg !862
  br label %10, !dbg !866

10:                                               ; preds = %1, %27
  call void @llvm.dbg.declare(metadata ptr %4, metadata !867, metadata !DIExpression()), !dbg !869
  %11 = load i64, ptr %3, align 8, !dbg !870
  %12 = call noundef i64 @_ZN6AP_HAL8micros64Ev(), !dbg !871
  %13 = sub i64 %11, %12, !dbg !872
  store i64 %13, ptr %4, align 8, !dbg !869
  %14 = load i64, ptr %4, align 8, !dbg !873
  %15 = getelementptr inbounds %"class.Linux::PeriodicThread", ptr %5, i32 0, i32 1, !dbg !875
  %16 = load i64, ptr %15, align 8, !dbg !875
  %17 = icmp ugt i64 %14, %16, !dbg !876
  br i1 %17, label %18, label %20, !dbg !877

18:                                               ; preds = %10
  %19 = call noundef i64 @_ZN6AP_HAL8micros64Ev(), !dbg !878
  store i64 %19, ptr %3, align 8, !dbg !880
  br label %27, !dbg !881

20:                                               ; preds = %10
  %21 = load ptr, ptr @hal, align 8, !dbg !882
  %22 = getelementptr inbounds %"class.AP_HAL::HAL", ptr %21, i32 0, i32 18, !dbg !884
  %23 = load ptr, ptr %22, align 8, !dbg !884
  %24 = call noundef ptr @_ZN5Linux9Scheduler4fromEPN6AP_HAL9SchedulerE(ptr noundef %23), !dbg !885
  %25 = load i64, ptr %4, align 8, !dbg !886
  %26 = trunc i64 %25 to i32, !dbg !886
  call void @_ZN5Linux9Scheduler10microsleepEj(ptr noundef nonnull align 8 dereferenceable(1040) %24, i32 noundef %26), !dbg !887
  br label %27

27:                                               ; preds = %20, %18
  %28 = getelementptr inbounds %"class.Linux::PeriodicThread", ptr %5, i32 0, i32 1, !dbg !888
  %29 = load i64, ptr %28, align 8, !dbg !888
  %30 = load i64, ptr %3, align 8, !dbg !889
  %31 = add i64 %30, %29, !dbg !889
  store i64 %31, ptr %3, align 8, !dbg !889
  %32 = getelementptr inbounds %"class.Linux::Thread", ptr %5, i32 0, i32 1, !dbg !890
  call void @_ZNK7FunctorIvJEEclEv(ptr noundef nonnull align 8 dereferenceable(16) %32), !dbg !890
  br label %10, !dbg !866, !llvm.loop !891
}

declare noundef i64 @_ZN6AP_HAL8micros64Ev() #6

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZN5Linux9Scheduler4fromEPN6AP_HAL9SchedulerE(ptr noundef %0) #2 comdat align 2 !dbg !894 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !902, metadata !DIExpression()), !dbg !903
  %3 = load ptr, ptr %2, align 8, !dbg !904
  ret ptr %3, !dbg !905
}

declare void @_ZN5Linux9Scheduler10microsleepEj(ptr noundef nonnull align 8 dereferenceable(1040), i32 noundef) #6

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN5Linux6ThreadD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #7 comdat align 2 !dbg !906 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !907, metadata !DIExpression()), !dbg !908
  %3 = load ptr, ptr %2, align 8
  ret void, !dbg !909
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN5Linux6ThreadD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #7 comdat align 2 !dbg !910 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !911, metadata !DIExpression()), !dbg !912
  %3 = load ptr, ptr %2, align 8
  call void @_ZN5Linux6ThreadD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %3) #9, !dbg !913
  call void @_ZdlPv(ptr noundef %3) #12, !dbg !913
  ret void, !dbg !914
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN5Linux14PeriodicThreadD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 !dbg !915 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !919, metadata !DIExpression()), !dbg !920
  %3 = load ptr, ptr %2, align 8
  call void @_ZN5Linux6ThreadD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %3) #9, !dbg !921
  ret void, !dbg !923
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN5Linux14PeriodicThreadD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 !dbg !924 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !925, metadata !DIExpression()), !dbg !926
  %3 = load ptr, ptr %2, align 8
  call void @_ZN5Linux14PeriodicThreadD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %3) #9, !dbg !927
  call void @_ZdlPv(ptr noundef %3) #12, !dbg !927
  ret void, !dbg !927
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) #8

attributes #0 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { noreturn }
attributes #11 = { nounwind willreturn memory(none) }
attributes #12 = { builtin nounwind }

!llvm.dbg.cu = !{!13}
!llvm.module.flags = !{!675, !676, !677, !678, !679, !680, !681}
!llvm.ident = !{!682}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 73, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "ardupilot/libraries/AP_HAL_Linux/Thread.cpp", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "9e005ab91942cff649f1dfc4afc480f7")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 360, elements: !6)
!4 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !{!7}
!7 = !DISubrange(count: 45)
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(scope: null, file: !2, line: 80, type: !10, isLocal: true, isDefinition: true)
!10 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !11)
!11 = !{!12}
!12 = !DISubrange(count: 33)
!13 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !14, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !15, retainedTypes: !22, globals: !99, imports: !100, splitDebugInlining: false, nameTableKind: None)
!14 = !DIFile(filename: "/home/raj/ardupilot/libraries/AP_HAL_Linux/Thread.cpp", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "9e005ab91942cff649f1dfc4afc480f7")
!15 = !{!16}
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !17, line: 124, baseType: !18, size: 32, elements: !19)
!17 = !DIFile(filename: "/usr/include/pthread.h", directory: "", checksumkind: CSK_MD5, checksum: "5205981c6f80cc3dc1e81231df63d8ef")
!18 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!19 = !{!20, !21}
!20 = !DIEnumerator(name: "PTHREAD_INHERIT_SCHED", value: 0, isUnsigned: true)
!21 = !DIEnumerator(name: "PTHREAD_EXPLICIT_SCHED", value: 1, isUnsigned: true)
!22 = !{!23, !96, !36}
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Thread", scope: !26, file: !25, line: 33, size: 320, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !27, vtableHolder: !24)
!25 = !DIFile(filename: "ardupilot/libraries/AP_HAL_Linux/Thread.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "7c87f4fcc7b9fb6d38e39705a52c39be")
!26 = !DINamespace(name: "Linux", scope: null)
!27 = !{!28, !34, !73, !74, !78, !82, !85, !89, !92, !95}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$Thread", scope: !25, file: !25, baseType: !29, size: 64, flags: DIFlagArtificial)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "__vtbl_ptr_type", baseType: !31, size: 64)
!31 = !DISubroutineType(types: !32)
!32 = !{!33}
!33 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_task", scope: !24, file: !25, line: 55, baseType: !35, size: 128, offset: 64, flags: DIFlagProtected)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "task_t", scope: !24, file: !25, line: 35, baseType: !36, flags: DIFlagPublic)
!36 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Functor<void>", file: !37, line: 36, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !38, templateParams: !69, identifier: "_ZTS7FunctorIvJEE")
!37 = !DIFile(filename: "ardupilot/libraries/AP_HAL/utility/functor.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "ce8d7f01a6b110e9ab9c61001786a69b")
!38 = !{!39, !41, !45, !49, !53, !56, !61, !66}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_obj", scope: !36, file: !37, line: 78, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_method", scope: !36, file: !37, line: 79, baseType: !42, size: 64, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DISubroutineType(types: !44)
!44 = !{null, !40}
!45 = !DISubprogram(name: "Functor", scope: !36, file: !37, line: 39, type: !46, scopeLine: 39, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!46 = !DISubroutineType(types: !47)
!47 = !{null, !48, !40, !42}
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!49 = !DISubprogram(name: "Functor", scope: !36, file: !37, line: 46, type: !50, scopeLine: 46, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!50 = !DISubroutineType(types: !51)
!51 = !{null, !48, !52}
!52 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "decltype(nullptr)")
!53 = !DISubprogram(name: "Functor", scope: !36, file: !37, line: 49, type: !54, scopeLine: 49, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!54 = !DISubroutineType(types: !55)
!55 = !{null, !48}
!56 = !DISubprogram(name: "operator()", linkageName: "_ZNK7FunctorIvJEEclEv", scope: !36, file: !37, line: 53, type: !57, scopeLine: 53, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!57 = !DISubroutineType(types: !58)
!58 = !{null, !59}
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!60 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!61 = !DISubprogram(name: "operator==", linkageName: "_ZN7FunctorIvJEEeqERKS0_", scope: !36, file: !37, line: 60, type: !62, scopeLine: 60, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!62 = !DISubroutineType(types: !63)
!63 = !{!64, !48, !65}
!64 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!65 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !60, size: 64)
!66 = !DISubprogram(name: "operator bool", linkageName: "_ZNK7FunctorIvJEEcvbEv", scope: !36, file: !37, line: 66, type: !67, scopeLine: 66, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!67 = !DISubroutineType(types: !68)
!68 = !{!64, !59}
!69 = !{!70, !71}
!70 = !DITemplateTypeParameter(name: "RetType", type: null)
!71 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "Args", value: !72)
!72 = !{}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_started", scope: !24, file: !25, line: 56, baseType: !64, size: 8, offset: 192, flags: DIFlagProtected)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_ctx", scope: !24, file: !25, line: 57, baseType: !75, size: 64, offset: 256, flags: DIFlagProtected)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !76, line: 27, baseType: !77)
!76 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!77 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!78 = !DISubprogram(name: "Thread", scope: !24, file: !25, line: 37, type: !79, scopeLine: 37, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!79 = !DISubroutineType(types: !80)
!80 = !{null, !81, !35}
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!82 = !DISubprogram(name: "~Thread", scope: !24, file: !25, line: 39, type: !83, scopeLine: 39, containingType: !24, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!83 = !DISubroutineType(types: !84)
!84 = !{null, !81}
!85 = !DISubprogram(name: "start", linkageName: "_ZN5Linux6Thread5startEPKcii", scope: !24, file: !25, line: 41, type: !86, scopeLine: 41, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!86 = !DISubroutineType(types: !87)
!87 = !{!64, !81, !88, !33, !33}
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!89 = !DISubprogram(name: "is_current_thread", linkageName: "_ZN5Linux6Thread17is_current_threadEv", scope: !24, file: !25, line: 43, type: !90, scopeLine: 43, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!90 = !DISubroutineType(types: !91)
!91 = !{!64, !81}
!92 = !DISubprogram(name: "_run_trampoline", linkageName: "_ZN5Linux6Thread15_run_trampolineEPv", scope: !24, file: !25, line: 46, type: !93, scopeLine: 46, flags: DIFlagProtected | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!93 = !DISubroutineType(types: !94)
!94 = !{!40, !40}
!95 = !DISubprogram(name: "_run", linkageName: "_ZN5Linux6Thread4_runEv", scope: !24, file: !25, line: 53, type: !90, scopeLine: 53, containingType: !24, virtualIndex: 2, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DICompositeType(tag: DW_TAG_class_type, name: "Scheduler", scope: !26, file: !98, line: 13, size: 8320, flags: DIFlagFwdDecl | DIFlagNonTrivial)
!98 = !DIFile(filename: "ardupilot/libraries/AP_HAL_Linux/Scheduler.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "ef825d8f36c427cd1c29f67aa34fefa8")
!99 = !{!0, !8}
!100 = !{!101, !108, !112, !119, !123, !129, !134, !136, !141, !145, !149, !159, !161, !165, !169, !171, !176, !180, !184, !188, !192, !200, !204, !208, !210, !212, !216, !220, !226, !230, !234, !236, !244, !248, !256, !258, !262, !266, !270, !274, !279, !284, !289, !290, !291, !292, !294, !295, !296, !297, !298, !299, !300, !302, !303, !304, !305, !306, !307, !308, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !342, !348, !350, !352, !356, !358, !360, !362, !364, !366, !368, !370, !375, !379, !381, !383, !388, !390, !392, !394, !396, !398, !400, !403, !405, !407, !411, !415, !417, !419, !421, !423, !425, !427, !429, !431, !433, !435, !439, !443, !445, !447, !449, !451, !453, !455, !457, !459, !461, !463, !465, !467, !469, !471, !473, !477, !481, !485, !487, !489, !491, !493, !495, !497, !499, !501, !503, !507, !511, !515, !517, !519, !521, !525, !529, !533, !535, !537, !539, !541, !543, !545, !547, !549, !551, !553, !555, !557, !561, !565, !569, !571, !573, !575, !577, !581, !585, !587, !589, !591, !593, !595, !597, !601, !605, !607, !609, !611, !613, !617, !621, !625, !627, !629, !631, !633, !635, !637, !641, !645, !649, !651, !655, !659, !661, !663, !665, !667, !669, !671}
!101 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !103, file: !107, line: 52)
!102 = !DINamespace(name: "std", scope: null)
!103 = !DISubprogram(name: "abs", scope: !104, file: !104, line: 848, type: !105, flags: DIFlagPrototyped, spFlags: 0)
!104 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!105 = !DISubroutineType(types: !106)
!106 = !{!33, !33}
!107 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/std_abs.h", directory: "")
!108 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !109, file: !111, line: 127)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !104, line: 63, baseType: !110)
!110 = !DICompositeType(tag: DW_TAG_structure_type, file: !104, line: 59, size: 64, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!111 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cstdlib", directory: "")
!112 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !113, file: !111, line: 128)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !104, line: 71, baseType: !114)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !104, line: 67, size: 128, flags: DIFlagTypePassByValue, elements: !115, identifier: "_ZTS6ldiv_t")
!115 = !{!116, !118}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !114, file: !104, line: 69, baseType: !117, size: 64)
!117 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !114, file: !104, line: 70, baseType: !117, size: 64, offset: 64)
!119 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !120, file: !111, line: 130)
!120 = !DISubprogram(name: "abort", scope: !104, file: !104, line: 598, type: !121, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!121 = !DISubroutineType(types: !122)
!122 = !{null}
!123 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !124, file: !111, line: 132)
!124 = !DISubprogram(name: "aligned_alloc", scope: !104, file: !104, line: 592, type: !125, flags: DIFlagPrototyped, spFlags: 0)
!125 = !DISubroutineType(types: !126)
!126 = !{!40, !127, !127}
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !128, line: 46, baseType: !77)
!128 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!129 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !130, file: !111, line: 134)
!130 = !DISubprogram(name: "atexit", scope: !104, file: !104, line: 602, type: !131, flags: DIFlagPrototyped, spFlags: 0)
!131 = !DISubroutineType(types: !132)
!132 = !{!33, !133}
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!134 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !135, file: !111, line: 137)
!135 = !DISubprogram(name: "at_quick_exit", scope: !104, file: !104, line: 607, type: !131, flags: DIFlagPrototyped, spFlags: 0)
!136 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !137, file: !111, line: 140)
!137 = !DISubprogram(name: "atof", scope: !104, file: !104, line: 102, type: !138, flags: DIFlagPrototyped, spFlags: 0)
!138 = !DISubroutineType(types: !139)
!139 = !{!140, !88}
!140 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!141 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !142, file: !111, line: 141)
!142 = !DISubprogram(name: "atoi", scope: !104, file: !104, line: 105, type: !143, flags: DIFlagPrototyped, spFlags: 0)
!143 = !DISubroutineType(types: !144)
!144 = !{!33, !88}
!145 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !146, file: !111, line: 142)
!146 = !DISubprogram(name: "atol", scope: !104, file: !104, line: 108, type: !147, flags: DIFlagPrototyped, spFlags: 0)
!147 = !DISubroutineType(types: !148)
!148 = !{!117, !88}
!149 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !150, file: !111, line: 143)
!150 = !DISubprogram(name: "bsearch", scope: !104, file: !104, line: 828, type: !151, flags: DIFlagPrototyped, spFlags: 0)
!151 = !DISubroutineType(types: !152)
!152 = !{!40, !153, !153, !127, !127, !155}
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !104, line: 816, baseType: !156)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DISubroutineType(types: !158)
!158 = !{!33, !153, !153}
!159 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !160, file: !111, line: 144)
!160 = !DISubprogram(name: "calloc", scope: !104, file: !104, line: 543, type: !125, flags: DIFlagPrototyped, spFlags: 0)
!161 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !162, file: !111, line: 145)
!162 = !DISubprogram(name: "div", scope: !104, file: !104, line: 860, type: !163, flags: DIFlagPrototyped, spFlags: 0)
!163 = !DISubroutineType(types: !164)
!164 = !{!109, !33, !33}
!165 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !166, file: !111, line: 146)
!166 = !DISubprogram(name: "exit", scope: !104, file: !104, line: 624, type: !167, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!167 = !DISubroutineType(types: !168)
!168 = !{null, !33}
!169 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !170, file: !111, line: 147)
!170 = !DISubprogram(name: "free", scope: !104, file: !104, line: 555, type: !43, flags: DIFlagPrototyped, spFlags: 0)
!171 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !172, file: !111, line: 148)
!172 = !DISubprogram(name: "getenv", scope: !104, file: !104, line: 641, type: !173, flags: DIFlagPrototyped, spFlags: 0)
!173 = !DISubroutineType(types: !174)
!174 = !{!175, !88}
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!176 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !177, file: !111, line: 149)
!177 = !DISubprogram(name: "labs", scope: !104, file: !104, line: 849, type: !178, flags: DIFlagPrototyped, spFlags: 0)
!178 = !DISubroutineType(types: !179)
!179 = !{!117, !117}
!180 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !181, file: !111, line: 150)
!181 = !DISubprogram(name: "ldiv", scope: !104, file: !104, line: 862, type: !182, flags: DIFlagPrototyped, spFlags: 0)
!182 = !DISubroutineType(types: !183)
!183 = !{!113, !117, !117}
!184 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !185, file: !111, line: 151)
!185 = !DISubprogram(name: "malloc", scope: !104, file: !104, line: 540, type: !186, flags: DIFlagPrototyped, spFlags: 0)
!186 = !DISubroutineType(types: !187)
!187 = !{!40, !127}
!188 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !189, file: !111, line: 153)
!189 = !DISubprogram(name: "mblen", scope: !104, file: !104, line: 930, type: !190, flags: DIFlagPrototyped, spFlags: 0)
!190 = !DISubroutineType(types: !191)
!191 = !{!33, !88, !127}
!192 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !193, file: !111, line: 154)
!193 = !DISubprogram(name: "mbstowcs", scope: !104, file: !104, line: 941, type: !194, flags: DIFlagPrototyped, spFlags: 0)
!194 = !DISubroutineType(types: !195)
!195 = !{!127, !196, !199, !127}
!196 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !197)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!199 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !88)
!200 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !201, file: !111, line: 155)
!201 = !DISubprogram(name: "mbtowc", scope: !104, file: !104, line: 933, type: !202, flags: DIFlagPrototyped, spFlags: 0)
!202 = !DISubroutineType(types: !203)
!203 = !{!33, !196, !199, !127}
!204 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !205, file: !111, line: 157)
!205 = !DISubprogram(name: "qsort", scope: !104, file: !104, line: 838, type: !206, flags: DIFlagPrototyped, spFlags: 0)
!206 = !DISubroutineType(types: !207)
!207 = !{null, !40, !127, !127, !155}
!208 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !209, file: !111, line: 160)
!209 = !DISubprogram(name: "quick_exit", scope: !104, file: !104, line: 630, type: !167, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!210 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !211, file: !111, line: 163)
!211 = !DISubprogram(name: "rand", scope: !104, file: !104, line: 454, type: !31, flags: DIFlagPrototyped, spFlags: 0)
!212 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !213, file: !111, line: 164)
!213 = !DISubprogram(name: "realloc", scope: !104, file: !104, line: 551, type: !214, flags: DIFlagPrototyped, spFlags: 0)
!214 = !DISubroutineType(types: !215)
!215 = !{!40, !40, !127}
!216 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !217, file: !111, line: 165)
!217 = !DISubprogram(name: "srand", scope: !104, file: !104, line: 456, type: !218, flags: DIFlagPrototyped, spFlags: 0)
!218 = !DISubroutineType(types: !219)
!219 = !{null, !18}
!220 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !221, file: !111, line: 166)
!221 = !DISubprogram(name: "strtod", scope: !104, file: !104, line: 118, type: !222, flags: DIFlagPrototyped, spFlags: 0)
!222 = !DISubroutineType(types: !223)
!223 = !{!140, !199, !224}
!224 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !225)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!226 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !227, file: !111, line: 167)
!227 = !DISubprogram(name: "strtol", scope: !104, file: !104, line: 177, type: !228, flags: DIFlagPrototyped, spFlags: 0)
!228 = !DISubroutineType(types: !229)
!229 = !{!117, !199, !224, !33}
!230 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !231, file: !111, line: 168)
!231 = !DISubprogram(name: "strtoul", scope: !104, file: !104, line: 181, type: !232, flags: DIFlagPrototyped, spFlags: 0)
!232 = !DISubroutineType(types: !233)
!233 = !{!77, !199, !224, !33}
!234 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !235, file: !111, line: 169)
!235 = !DISubprogram(name: "system", scope: !104, file: !104, line: 791, type: !143, flags: DIFlagPrototyped, spFlags: 0)
!236 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !237, file: !111, line: 171)
!237 = !DISubprogram(name: "wcstombs", scope: !104, file: !104, line: 945, type: !238, flags: DIFlagPrototyped, spFlags: 0)
!238 = !DISubroutineType(types: !239)
!239 = !{!127, !240, !241, !127}
!240 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !175)
!241 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !242)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !198)
!244 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !245, file: !111, line: 172)
!245 = !DISubprogram(name: "wctomb", scope: !104, file: !104, line: 937, type: !246, flags: DIFlagPrototyped, spFlags: 0)
!246 = !DISubroutineType(types: !247)
!247 = !{!33, !175, !198}
!248 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !249, entity: !250, file: !111, line: 200)
!249 = !DINamespace(name: "__gnu_cxx", scope: null)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !104, line: 81, baseType: !251)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !104, line: 77, size: 128, flags: DIFlagTypePassByValue, elements: !252, identifier: "_ZTS7lldiv_t")
!252 = !{!253, !255}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !251, file: !104, line: 79, baseType: !254, size: 64)
!254 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !251, file: !104, line: 80, baseType: !254, size: 64, offset: 64)
!256 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !249, entity: !257, file: !111, line: 206)
!257 = !DISubprogram(name: "_Exit", scope: !104, file: !104, line: 636, type: !167, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!258 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !249, entity: !259, file: !111, line: 210)
!259 = !DISubprogram(name: "llabs", scope: !104, file: !104, line: 852, type: !260, flags: DIFlagPrototyped, spFlags: 0)
!260 = !DISubroutineType(types: !261)
!261 = !{!254, !254}
!262 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !249, entity: !263, file: !111, line: 216)
!263 = !DISubprogram(name: "lldiv", scope: !104, file: !104, line: 866, type: !264, flags: DIFlagPrototyped, spFlags: 0)
!264 = !DISubroutineType(types: !265)
!265 = !{!250, !254, !254}
!266 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !249, entity: !267, file: !111, line: 227)
!267 = !DISubprogram(name: "atoll", scope: !104, file: !104, line: 113, type: !268, flags: DIFlagPrototyped, spFlags: 0)
!268 = !DISubroutineType(types: !269)
!269 = !{!254, !88}
!270 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !249, entity: !271, file: !111, line: 228)
!271 = !DISubprogram(name: "strtoll", scope: !104, file: !104, line: 201, type: !272, flags: DIFlagPrototyped, spFlags: 0)
!272 = !DISubroutineType(types: !273)
!273 = !{!254, !199, !224, !33}
!274 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !249, entity: !275, file: !111, line: 229)
!275 = !DISubprogram(name: "strtoull", scope: !104, file: !104, line: 206, type: !276, flags: DIFlagPrototyped, spFlags: 0)
!276 = !DISubroutineType(types: !277)
!277 = !{!278, !199, !224, !33}
!278 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!279 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !249, entity: !280, file: !111, line: 231)
!280 = !DISubprogram(name: "strtof", scope: !104, file: !104, line: 124, type: !281, flags: DIFlagPrototyped, spFlags: 0)
!281 = !DISubroutineType(types: !282)
!282 = !{!283, !199, !224}
!283 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!284 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !249, entity: !285, file: !111, line: 232)
!285 = !DISubprogram(name: "strtold", scope: !104, file: !104, line: 127, type: !286, flags: DIFlagPrototyped, spFlags: 0)
!286 = !DISubroutineType(types: !287)
!287 = !{!288, !199, !224}
!288 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!289 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !250, file: !111, line: 240)
!290 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !257, file: !111, line: 242)
!291 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !259, file: !111, line: 244)
!292 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !293, file: !111, line: 245)
!293 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !249, file: !111, line: 213, type: !264, flags: DIFlagPrototyped, spFlags: 0)
!294 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !263, file: !111, line: 246)
!295 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !267, file: !111, line: 248)
!296 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !280, file: !111, line: 249)
!297 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !271, file: !111, line: 250)
!298 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !275, file: !111, line: 251)
!299 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !285, file: !111, line: 252)
!300 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !120, file: !301, line: 38)
!301 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "0f5b773a303c24013fb112082e6d18a5")
!302 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !130, file: !301, line: 39)
!303 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !166, file: !301, line: 40)
!304 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !135, file: !301, line: 43)
!305 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !209, file: !301, line: 46)
!306 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !109, file: !301, line: 51)
!307 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !113, file: !301, line: 52)
!308 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !309, file: !301, line: 54)
!309 = !DISubprogram(name: "abs", linkageName: "_ZSt3absg", scope: !102, file: !107, line: 103, type: !310, flags: DIFlagPrototyped, spFlags: 0)
!310 = !DISubroutineType(types: !311)
!311 = !{!312, !312}
!312 = !DIBasicType(name: "__float128", size: 128, encoding: DW_ATE_float)
!313 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !137, file: !301, line: 55)
!314 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !142, file: !301, line: 56)
!315 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !146, file: !301, line: 57)
!316 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !150, file: !301, line: 58)
!317 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !160, file: !301, line: 59)
!318 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !293, file: !301, line: 60)
!319 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !170, file: !301, line: 61)
!320 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !172, file: !301, line: 62)
!321 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !177, file: !301, line: 63)
!322 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !181, file: !301, line: 64)
!323 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !185, file: !301, line: 65)
!324 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !189, file: !301, line: 67)
!325 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !193, file: !301, line: 68)
!326 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !201, file: !301, line: 69)
!327 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !205, file: !301, line: 71)
!328 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !211, file: !301, line: 72)
!329 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !213, file: !301, line: 73)
!330 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !217, file: !301, line: 74)
!331 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !221, file: !301, line: 75)
!332 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !227, file: !301, line: 76)
!333 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !231, file: !301, line: 77)
!334 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !235, file: !301, line: 78)
!335 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !237, file: !301, line: 80)
!336 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !13, entity: !245, file: !301, line: 81)
!337 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !338, file: !341, line: 58)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "max_align_t", file: !339, line: 24, baseType: !340)
!339 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/__stddef_max_align_t.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "48e8e2456f77e6cda35d245130fa7259")
!340 = !DICompositeType(tag: DW_TAG_structure_type, file: !339, line: 19, size: 256, flags: DIFlagFwdDecl, identifier: "_ZTS11max_align_t")
!341 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cstddef", directory: "")
!342 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !343, file: !347, line: 83)
!343 = !DISubprogram(name: "acos", scope: !344, file: !344, line: 53, type: !345, flags: DIFlagPrototyped, spFlags: 0)
!344 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "8c6e2d0d2bda65bc5ba1ca02b65383b7")
!345 = !DISubroutineType(types: !346)
!346 = !{!140, !140}
!347 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cmath", directory: "")
!348 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !349, file: !347, line: 102)
!349 = !DISubprogram(name: "asin", scope: !344, file: !344, line: 55, type: !345, flags: DIFlagPrototyped, spFlags: 0)
!350 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !351, file: !347, line: 121)
!351 = !DISubprogram(name: "atan", scope: !344, file: !344, line: 57, type: !345, flags: DIFlagPrototyped, spFlags: 0)
!352 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !353, file: !347, line: 140)
!353 = !DISubprogram(name: "atan2", scope: !344, file: !344, line: 59, type: !354, flags: DIFlagPrototyped, spFlags: 0)
!354 = !DISubroutineType(types: !355)
!355 = !{!140, !140, !140}
!356 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !357, file: !347, line: 161)
!357 = !DISubprogram(name: "ceil", scope: !344, file: !344, line: 159, type: !345, flags: DIFlagPrototyped, spFlags: 0)
!358 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !359, file: !347, line: 180)
!359 = !DISubprogram(name: "cos", scope: !344, file: !344, line: 62, type: !345, flags: DIFlagPrototyped, spFlags: 0)
!360 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !361, file: !347, line: 199)
!361 = !DISubprogram(name: "cosh", scope: !344, file: !344, line: 71, type: !345, flags: DIFlagPrototyped, spFlags: 0)
!362 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !363, file: !347, line: 218)
!363 = !DISubprogram(name: "exp", scope: !344, file: !344, line: 95, type: !345, flags: DIFlagPrototyped, spFlags: 0)
!364 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !365, file: !347, line: 237)
!365 = !DISubprogram(name: "fabs", scope: !344, file: !344, line: 162, type: !345, flags: DIFlagPrototyped, spFlags: 0)
!366 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !367, file: !347, line: 256)
!367 = !DISubprogram(name: "floor", scope: !344, file: !344, line: 165, type: !345, flags: DIFlagPrototyped, spFlags: 0)
!368 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !369, file: !347, line: 275)
!369 = !DISubprogram(name: "fmod", scope: !344, file: !344, line: 168, type: !354, flags: DIFlagPrototyped, spFlags: 0)
!370 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !371, file: !347, line: 296)
!371 = !DISubprogram(name: "frexp", scope: !344, file: !344, line: 98, type: !372, flags: DIFlagPrototyped, spFlags: 0)
!372 = !DISubroutineType(types: !373)
!373 = !{!140, !140, !374}
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!375 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !376, file: !347, line: 315)
!376 = !DISubprogram(name: "ldexp", scope: !344, file: !344, line: 101, type: !377, flags: DIFlagPrototyped, spFlags: 0)
!377 = !DISubroutineType(types: !378)
!378 = !{!140, !140, !33}
!379 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !380, file: !347, line: 334)
!380 = !DISubprogram(name: "log", scope: !344, file: !344, line: 104, type: !345, flags: DIFlagPrototyped, spFlags: 0)
!381 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !382, file: !347, line: 353)
!382 = !DISubprogram(name: "log10", scope: !344, file: !344, line: 107, type: !345, flags: DIFlagPrototyped, spFlags: 0)
!383 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !384, file: !347, line: 372)
!384 = !DISubprogram(name: "modf", scope: !344, file: !344, line: 110, type: !385, flags: DIFlagPrototyped, spFlags: 0)
!385 = !DISubroutineType(types: !386)
!386 = !{!140, !140, !387}
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!388 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !389, file: !347, line: 384)
!389 = !DISubprogram(name: "pow", scope: !344, file: !344, line: 140, type: !354, flags: DIFlagPrototyped, spFlags: 0)
!390 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !391, file: !347, line: 421)
!391 = !DISubprogram(name: "sin", scope: !344, file: !344, line: 64, type: !345, flags: DIFlagPrototyped, spFlags: 0)
!392 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !393, file: !347, line: 440)
!393 = !DISubprogram(name: "sinh", scope: !344, file: !344, line: 73, type: !345, flags: DIFlagPrototyped, spFlags: 0)
!394 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !395, file: !347, line: 459)
!395 = !DISubprogram(name: "sqrt", scope: !344, file: !344, line: 143, type: !345, flags: DIFlagPrototyped, spFlags: 0)
!396 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !397, file: !347, line: 478)
!397 = !DISubprogram(name: "tan", scope: !344, file: !344, line: 66, type: !345, flags: DIFlagPrototyped, spFlags: 0)
!398 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !399, file: !347, line: 497)
!399 = !DISubprogram(name: "tanh", scope: !344, file: !344, line: 75, type: !345, flags: DIFlagPrototyped, spFlags: 0)
!400 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !401, file: !347, line: 1065)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_t", file: !402, line: 164, baseType: !140)
!402 = !DIFile(filename: "/usr/include/math.h", directory: "", checksumkind: CSK_MD5, checksum: "f3450d1d586f704597de1a1b2bed18f3")
!403 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !404, file: !347, line: 1066)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "float_t", file: !402, line: 163, baseType: !283)
!405 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !406, file: !347, line: 1069)
!406 = !DISubprogram(name: "acosh", scope: !344, file: !344, line: 85, type: !345, flags: DIFlagPrototyped, spFlags: 0)
!407 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !408, file: !347, line: 1070)
!408 = !DISubprogram(name: "acoshf", scope: !344, file: !344, line: 85, type: !409, flags: DIFlagPrototyped, spFlags: 0)
!409 = !DISubroutineType(types: !410)
!410 = !{!283, !283}
!411 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !412, file: !347, line: 1071)
!412 = !DISubprogram(name: "acoshl", scope: !344, file: !344, line: 85, type: !413, flags: DIFlagPrototyped, spFlags: 0)
!413 = !DISubroutineType(types: !414)
!414 = !{!288, !288}
!415 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !416, file: !347, line: 1073)
!416 = !DISubprogram(name: "asinh", scope: !344, file: !344, line: 87, type: !345, flags: DIFlagPrototyped, spFlags: 0)
!417 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !418, file: !347, line: 1074)
!418 = !DISubprogram(name: "asinhf", scope: !344, file: !344, line: 87, type: !409, flags: DIFlagPrototyped, spFlags: 0)
!419 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !420, file: !347, line: 1075)
!420 = !DISubprogram(name: "asinhl", scope: !344, file: !344, line: 87, type: !413, flags: DIFlagPrototyped, spFlags: 0)
!421 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !422, file: !347, line: 1077)
!422 = !DISubprogram(name: "atanh", scope: !344, file: !344, line: 89, type: !345, flags: DIFlagPrototyped, spFlags: 0)
!423 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !424, file: !347, line: 1078)
!424 = !DISubprogram(name: "atanhf", scope: !344, file: !344, line: 89, type: !409, flags: DIFlagPrototyped, spFlags: 0)
!425 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !426, file: !347, line: 1079)
!426 = !DISubprogram(name: "atanhl", scope: !344, file: !344, line: 89, type: !413, flags: DIFlagPrototyped, spFlags: 0)
!427 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !428, file: !347, line: 1081)
!428 = !DISubprogram(name: "cbrt", scope: !344, file: !344, line: 152, type: !345, flags: DIFlagPrototyped, spFlags: 0)
!429 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !430, file: !347, line: 1082)
!430 = !DISubprogram(name: "cbrtf", scope: !344, file: !344, line: 152, type: !409, flags: DIFlagPrototyped, spFlags: 0)
!431 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !432, file: !347, line: 1083)
!432 = !DISubprogram(name: "cbrtl", scope: !344, file: !344, line: 152, type: !413, flags: DIFlagPrototyped, spFlags: 0)
!433 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !434, file: !347, line: 1085)
!434 = !DISubprogram(name: "copysign", scope: !344, file: !344, line: 198, type: !354, flags: DIFlagPrototyped, spFlags: 0)
!435 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !436, file: !347, line: 1086)
!436 = !DISubprogram(name: "copysignf", scope: !344, file: !344, line: 198, type: !437, flags: DIFlagPrototyped, spFlags: 0)
!437 = !DISubroutineType(types: !438)
!438 = !{!283, !283, !283}
!439 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !440, file: !347, line: 1087)
!440 = !DISubprogram(name: "copysignl", scope: !344, file: !344, line: 198, type: !441, flags: DIFlagPrototyped, spFlags: 0)
!441 = !DISubroutineType(types: !442)
!442 = !{!288, !288, !288}
!443 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !444, file: !347, line: 1089)
!444 = !DISubprogram(name: "erf", scope: !344, file: !344, line: 231, type: !345, flags: DIFlagPrototyped, spFlags: 0)
!445 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !446, file: !347, line: 1090)
!446 = !DISubprogram(name: "erff", scope: !344, file: !344, line: 231, type: !409, flags: DIFlagPrototyped, spFlags: 0)
!447 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !448, file: !347, line: 1091)
!448 = !DISubprogram(name: "erfl", scope: !344, file: !344, line: 231, type: !413, flags: DIFlagPrototyped, spFlags: 0)
!449 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !450, file: !347, line: 1093)
!450 = !DISubprogram(name: "erfc", scope: !344, file: !344, line: 232, type: !345, flags: DIFlagPrototyped, spFlags: 0)
!451 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !452, file: !347, line: 1094)
!452 = !DISubprogram(name: "erfcf", scope: !344, file: !344, line: 232, type: !409, flags: DIFlagPrototyped, spFlags: 0)
!453 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !454, file: !347, line: 1095)
!454 = !DISubprogram(name: "erfcl", scope: !344, file: !344, line: 232, type: !413, flags: DIFlagPrototyped, spFlags: 0)
!455 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !456, file: !347, line: 1097)
!456 = !DISubprogram(name: "exp2", scope: !344, file: !344, line: 130, type: !345, flags: DIFlagPrototyped, spFlags: 0)
!457 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !458, file: !347, line: 1098)
!458 = !DISubprogram(name: "exp2f", scope: !344, file: !344, line: 130, type: !409, flags: DIFlagPrototyped, spFlags: 0)
!459 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !460, file: !347, line: 1099)
!460 = !DISubprogram(name: "exp2l", scope: !344, file: !344, line: 130, type: !413, flags: DIFlagPrototyped, spFlags: 0)
!461 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !462, file: !347, line: 1101)
!462 = !DISubprogram(name: "expm1", scope: !344, file: !344, line: 119, type: !345, flags: DIFlagPrototyped, spFlags: 0)
!463 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !464, file: !347, line: 1102)
!464 = !DISubprogram(name: "expm1f", scope: !344, file: !344, line: 119, type: !409, flags: DIFlagPrototyped, spFlags: 0)
!465 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !466, file: !347, line: 1103)
!466 = !DISubprogram(name: "expm1l", scope: !344, file: !344, line: 119, type: !413, flags: DIFlagPrototyped, spFlags: 0)
!467 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !468, file: !347, line: 1105)
!468 = !DISubprogram(name: "fdim", scope: !344, file: !344, line: 329, type: !354, flags: DIFlagPrototyped, spFlags: 0)
!469 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !470, file: !347, line: 1106)
!470 = !DISubprogram(name: "fdimf", scope: !344, file: !344, line: 329, type: !437, flags: DIFlagPrototyped, spFlags: 0)
!471 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !472, file: !347, line: 1107)
!472 = !DISubprogram(name: "fdiml", scope: !344, file: !344, line: 329, type: !441, flags: DIFlagPrototyped, spFlags: 0)
!473 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !474, file: !347, line: 1109)
!474 = !DISubprogram(name: "fma", scope: !344, file: !344, line: 340, type: !475, flags: DIFlagPrototyped, spFlags: 0)
!475 = !DISubroutineType(types: !476)
!476 = !{!140, !140, !140, !140}
!477 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !478, file: !347, line: 1110)
!478 = !DISubprogram(name: "fmaf", scope: !344, file: !344, line: 340, type: !479, flags: DIFlagPrototyped, spFlags: 0)
!479 = !DISubroutineType(types: !480)
!480 = !{!283, !283, !283, !283}
!481 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !482, file: !347, line: 1111)
!482 = !DISubprogram(name: "fmal", scope: !344, file: !344, line: 340, type: !483, flags: DIFlagPrototyped, spFlags: 0)
!483 = !DISubroutineType(types: !484)
!484 = !{!288, !288, !288, !288}
!485 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !486, file: !347, line: 1113)
!486 = !DISubprogram(name: "fmax", scope: !344, file: !344, line: 333, type: !354, flags: DIFlagPrototyped, spFlags: 0)
!487 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !488, file: !347, line: 1114)
!488 = !DISubprogram(name: "fmaxf", scope: !344, file: !344, line: 333, type: !437, flags: DIFlagPrototyped, spFlags: 0)
!489 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !490, file: !347, line: 1115)
!490 = !DISubprogram(name: "fmaxl", scope: !344, file: !344, line: 333, type: !441, flags: DIFlagPrototyped, spFlags: 0)
!491 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !492, file: !347, line: 1117)
!492 = !DISubprogram(name: "fmin", scope: !344, file: !344, line: 336, type: !354, flags: DIFlagPrototyped, spFlags: 0)
!493 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !494, file: !347, line: 1118)
!494 = !DISubprogram(name: "fminf", scope: !344, file: !344, line: 336, type: !437, flags: DIFlagPrototyped, spFlags: 0)
!495 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !496, file: !347, line: 1119)
!496 = !DISubprogram(name: "fminl", scope: !344, file: !344, line: 336, type: !441, flags: DIFlagPrototyped, spFlags: 0)
!497 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !498, file: !347, line: 1121)
!498 = !DISubprogram(name: "hypot", scope: !344, file: !344, line: 147, type: !354, flags: DIFlagPrototyped, spFlags: 0)
!499 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !500, file: !347, line: 1122)
!500 = !DISubprogram(name: "hypotf", scope: !344, file: !344, line: 147, type: !437, flags: DIFlagPrototyped, spFlags: 0)
!501 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !502, file: !347, line: 1123)
!502 = !DISubprogram(name: "hypotl", scope: !344, file: !344, line: 147, type: !441, flags: DIFlagPrototyped, spFlags: 0)
!503 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !504, file: !347, line: 1125)
!504 = !DISubprogram(name: "ilogb", scope: !344, file: !344, line: 283, type: !505, flags: DIFlagPrototyped, spFlags: 0)
!505 = !DISubroutineType(types: !506)
!506 = !{!33, !140}
!507 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !508, file: !347, line: 1126)
!508 = !DISubprogram(name: "ilogbf", scope: !344, file: !344, line: 283, type: !509, flags: DIFlagPrototyped, spFlags: 0)
!509 = !DISubroutineType(types: !510)
!510 = !{!33, !283}
!511 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !512, file: !347, line: 1127)
!512 = !DISubprogram(name: "ilogbl", scope: !344, file: !344, line: 283, type: !513, flags: DIFlagPrototyped, spFlags: 0)
!513 = !DISubroutineType(types: !514)
!514 = !{!33, !288}
!515 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !516, file: !347, line: 1129)
!516 = !DISubprogram(name: "lgamma", scope: !344, file: !344, line: 233, type: !345, flags: DIFlagPrototyped, spFlags: 0)
!517 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !518, file: !347, line: 1130)
!518 = !DISubprogram(name: "lgammaf", scope: !344, file: !344, line: 233, type: !409, flags: DIFlagPrototyped, spFlags: 0)
!519 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !520, file: !347, line: 1131)
!520 = !DISubprogram(name: "lgammal", scope: !344, file: !344, line: 233, type: !413, flags: DIFlagPrototyped, spFlags: 0)
!521 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !522, file: !347, line: 1134)
!522 = !DISubprogram(name: "llrint", scope: !344, file: !344, line: 319, type: !523, flags: DIFlagPrototyped, spFlags: 0)
!523 = !DISubroutineType(types: !524)
!524 = !{!254, !140}
!525 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !526, file: !347, line: 1135)
!526 = !DISubprogram(name: "llrintf", scope: !344, file: !344, line: 319, type: !527, flags: DIFlagPrototyped, spFlags: 0)
!527 = !DISubroutineType(types: !528)
!528 = !{!254, !283}
!529 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !530, file: !347, line: 1136)
!530 = !DISubprogram(name: "llrintl", scope: !344, file: !344, line: 319, type: !531, flags: DIFlagPrototyped, spFlags: 0)
!531 = !DISubroutineType(types: !532)
!532 = !{!254, !288}
!533 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !534, file: !347, line: 1138)
!534 = !DISubprogram(name: "llround", scope: !344, file: !344, line: 325, type: !523, flags: DIFlagPrototyped, spFlags: 0)
!535 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !536, file: !347, line: 1139)
!536 = !DISubprogram(name: "llroundf", scope: !344, file: !344, line: 325, type: !527, flags: DIFlagPrototyped, spFlags: 0)
!537 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !538, file: !347, line: 1140)
!538 = !DISubprogram(name: "llroundl", scope: !344, file: !344, line: 325, type: !531, flags: DIFlagPrototyped, spFlags: 0)
!539 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !540, file: !347, line: 1143)
!540 = !DISubprogram(name: "log1p", scope: !344, file: !344, line: 122, type: !345, flags: DIFlagPrototyped, spFlags: 0)
!541 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !542, file: !347, line: 1144)
!542 = !DISubprogram(name: "log1pf", scope: !344, file: !344, line: 122, type: !409, flags: DIFlagPrototyped, spFlags: 0)
!543 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !544, file: !347, line: 1145)
!544 = !DISubprogram(name: "log1pl", scope: !344, file: !344, line: 122, type: !413, flags: DIFlagPrototyped, spFlags: 0)
!545 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !546, file: !347, line: 1147)
!546 = !DISubprogram(name: "log2", scope: !344, file: !344, line: 133, type: !345, flags: DIFlagPrototyped, spFlags: 0)
!547 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !548, file: !347, line: 1148)
!548 = !DISubprogram(name: "log2f", scope: !344, file: !344, line: 133, type: !409, flags: DIFlagPrototyped, spFlags: 0)
!549 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !550, file: !347, line: 1149)
!550 = !DISubprogram(name: "log2l", scope: !344, file: !344, line: 133, type: !413, flags: DIFlagPrototyped, spFlags: 0)
!551 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !552, file: !347, line: 1151)
!552 = !DISubprogram(name: "logb", scope: !344, file: !344, line: 125, type: !345, flags: DIFlagPrototyped, spFlags: 0)
!553 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !554, file: !347, line: 1152)
!554 = !DISubprogram(name: "logbf", scope: !344, file: !344, line: 125, type: !409, flags: DIFlagPrototyped, spFlags: 0)
!555 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !556, file: !347, line: 1153)
!556 = !DISubprogram(name: "logbl", scope: !344, file: !344, line: 125, type: !413, flags: DIFlagPrototyped, spFlags: 0)
!557 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !558, file: !347, line: 1155)
!558 = !DISubprogram(name: "lrint", scope: !344, file: !344, line: 317, type: !559, flags: DIFlagPrototyped, spFlags: 0)
!559 = !DISubroutineType(types: !560)
!560 = !{!117, !140}
!561 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !562, file: !347, line: 1156)
!562 = !DISubprogram(name: "lrintf", scope: !344, file: !344, line: 317, type: !563, flags: DIFlagPrototyped, spFlags: 0)
!563 = !DISubroutineType(types: !564)
!564 = !{!117, !283}
!565 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !566, file: !347, line: 1157)
!566 = !DISubprogram(name: "lrintl", scope: !344, file: !344, line: 317, type: !567, flags: DIFlagPrototyped, spFlags: 0)
!567 = !DISubroutineType(types: !568)
!568 = !{!117, !288}
!569 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !570, file: !347, line: 1159)
!570 = !DISubprogram(name: "lround", scope: !344, file: !344, line: 323, type: !559, flags: DIFlagPrototyped, spFlags: 0)
!571 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !572, file: !347, line: 1160)
!572 = !DISubprogram(name: "lroundf", scope: !344, file: !344, line: 323, type: !563, flags: DIFlagPrototyped, spFlags: 0)
!573 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !574, file: !347, line: 1161)
!574 = !DISubprogram(name: "lroundl", scope: !344, file: !344, line: 323, type: !567, flags: DIFlagPrototyped, spFlags: 0)
!575 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !576, file: !347, line: 1163)
!576 = !DISubprogram(name: "nan", scope: !344, file: !344, line: 203, type: !138, flags: DIFlagPrototyped, spFlags: 0)
!577 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !578, file: !347, line: 1164)
!578 = !DISubprogram(name: "nanf", scope: !344, file: !344, line: 203, type: !579, flags: DIFlagPrototyped, spFlags: 0)
!579 = !DISubroutineType(types: !580)
!580 = !{!283, !88}
!581 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !582, file: !347, line: 1165)
!582 = !DISubprogram(name: "nanl", scope: !344, file: !344, line: 203, type: !583, flags: DIFlagPrototyped, spFlags: 0)
!583 = !DISubroutineType(types: !584)
!584 = !{!288, !88}
!585 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !586, file: !347, line: 1167)
!586 = !DISubprogram(name: "nearbyint", scope: !344, file: !344, line: 297, type: !345, flags: DIFlagPrototyped, spFlags: 0)
!587 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !588, file: !347, line: 1168)
!588 = !DISubprogram(name: "nearbyintf", scope: !344, file: !344, line: 297, type: !409, flags: DIFlagPrototyped, spFlags: 0)
!589 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !590, file: !347, line: 1169)
!590 = !DISubprogram(name: "nearbyintl", scope: !344, file: !344, line: 297, type: !413, flags: DIFlagPrototyped, spFlags: 0)
!591 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !592, file: !347, line: 1171)
!592 = !DISubprogram(name: "nextafter", scope: !344, file: !344, line: 262, type: !354, flags: DIFlagPrototyped, spFlags: 0)
!593 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !594, file: !347, line: 1172)
!594 = !DISubprogram(name: "nextafterf", scope: !344, file: !344, line: 262, type: !437, flags: DIFlagPrototyped, spFlags: 0)
!595 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !596, file: !347, line: 1173)
!596 = !DISubprogram(name: "nextafterl", scope: !344, file: !344, line: 262, type: !441, flags: DIFlagPrototyped, spFlags: 0)
!597 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !598, file: !347, line: 1175)
!598 = !DISubprogram(name: "nexttoward", scope: !344, file: !344, line: 264, type: !599, flags: DIFlagPrototyped, spFlags: 0)
!599 = !DISubroutineType(types: !600)
!600 = !{!140, !140, !288}
!601 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !602, file: !347, line: 1176)
!602 = !DISubprogram(name: "nexttowardf", scope: !344, file: !344, line: 264, type: !603, flags: DIFlagPrototyped, spFlags: 0)
!603 = !DISubroutineType(types: !604)
!604 = !{!283, !283, !288}
!605 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !606, file: !347, line: 1177)
!606 = !DISubprogram(name: "nexttowardl", scope: !344, file: !344, line: 264, type: !441, flags: DIFlagPrototyped, spFlags: 0)
!607 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !608, file: !347, line: 1179)
!608 = !DISubprogram(name: "remainder", scope: !344, file: !344, line: 275, type: !354, flags: DIFlagPrototyped, spFlags: 0)
!609 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !610, file: !347, line: 1180)
!610 = !DISubprogram(name: "remainderf", scope: !344, file: !344, line: 275, type: !437, flags: DIFlagPrototyped, spFlags: 0)
!611 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !612, file: !347, line: 1181)
!612 = !DISubprogram(name: "remainderl", scope: !344, file: !344, line: 275, type: !441, flags: DIFlagPrototyped, spFlags: 0)
!613 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !614, file: !347, line: 1183)
!614 = !DISubprogram(name: "remquo", scope: !344, file: !344, line: 310, type: !615, flags: DIFlagPrototyped, spFlags: 0)
!615 = !DISubroutineType(types: !616)
!616 = !{!140, !140, !140, !374}
!617 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !618, file: !347, line: 1184)
!618 = !DISubprogram(name: "remquof", scope: !344, file: !344, line: 310, type: !619, flags: DIFlagPrototyped, spFlags: 0)
!619 = !DISubroutineType(types: !620)
!620 = !{!283, !283, !283, !374}
!621 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !622, file: !347, line: 1185)
!622 = !DISubprogram(name: "remquol", scope: !344, file: !344, line: 310, type: !623, flags: DIFlagPrototyped, spFlags: 0)
!623 = !DISubroutineType(types: !624)
!624 = !{!288, !288, !288, !374}
!625 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !626, file: !347, line: 1187)
!626 = !DISubprogram(name: "rint", scope: !344, file: !344, line: 259, type: !345, flags: DIFlagPrototyped, spFlags: 0)
!627 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !628, file: !347, line: 1188)
!628 = !DISubprogram(name: "rintf", scope: !344, file: !344, line: 259, type: !409, flags: DIFlagPrototyped, spFlags: 0)
!629 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !630, file: !347, line: 1189)
!630 = !DISubprogram(name: "rintl", scope: !344, file: !344, line: 259, type: !413, flags: DIFlagPrototyped, spFlags: 0)
!631 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !632, file: !347, line: 1191)
!632 = !DISubprogram(name: "round", scope: !344, file: !344, line: 301, type: !345, flags: DIFlagPrototyped, spFlags: 0)
!633 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !634, file: !347, line: 1192)
!634 = !DISubprogram(name: "roundf", scope: !344, file: !344, line: 301, type: !409, flags: DIFlagPrototyped, spFlags: 0)
!635 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !636, file: !347, line: 1193)
!636 = !DISubprogram(name: "roundl", scope: !344, file: !344, line: 301, type: !413, flags: DIFlagPrototyped, spFlags: 0)
!637 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !638, file: !347, line: 1195)
!638 = !DISubprogram(name: "scalbln", scope: !344, file: !344, line: 293, type: !639, flags: DIFlagPrototyped, spFlags: 0)
!639 = !DISubroutineType(types: !640)
!640 = !{!140, !140, !117}
!641 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !642, file: !347, line: 1196)
!642 = !DISubprogram(name: "scalblnf", scope: !344, file: !344, line: 293, type: !643, flags: DIFlagPrototyped, spFlags: 0)
!643 = !DISubroutineType(types: !644)
!644 = !{!283, !283, !117}
!645 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !646, file: !347, line: 1197)
!646 = !DISubprogram(name: "scalblnl", scope: !344, file: !344, line: 293, type: !647, flags: DIFlagPrototyped, spFlags: 0)
!647 = !DISubroutineType(types: !648)
!648 = !{!288, !288, !117}
!649 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !650, file: !347, line: 1199)
!650 = !DISubprogram(name: "scalbn", scope: !344, file: !344, line: 279, type: !377, flags: DIFlagPrototyped, spFlags: 0)
!651 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !652, file: !347, line: 1200)
!652 = !DISubprogram(name: "scalbnf", scope: !344, file: !344, line: 279, type: !653, flags: DIFlagPrototyped, spFlags: 0)
!653 = !DISubroutineType(types: !654)
!654 = !{!283, !283, !33}
!655 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !656, file: !347, line: 1201)
!656 = !DISubprogram(name: "scalbnl", scope: !344, file: !344, line: 279, type: !657, flags: DIFlagPrototyped, spFlags: 0)
!657 = !DISubroutineType(types: !658)
!658 = !{!288, !288, !33}
!659 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !660, file: !347, line: 1203)
!660 = !DISubprogram(name: "tgamma", scope: !344, file: !344, line: 238, type: !345, flags: DIFlagPrototyped, spFlags: 0)
!661 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !662, file: !347, line: 1204)
!662 = !DISubprogram(name: "tgammaf", scope: !344, file: !344, line: 238, type: !409, flags: DIFlagPrototyped, spFlags: 0)
!663 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !664, file: !347, line: 1205)
!664 = !DISubprogram(name: "tgammal", scope: !344, file: !344, line: 238, type: !413, flags: DIFlagPrototyped, spFlags: 0)
!665 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !666, file: !347, line: 1207)
!666 = !DISubprogram(name: "trunc", scope: !344, file: !344, line: 305, type: !345, flags: DIFlagPrototyped, spFlags: 0)
!667 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !668, file: !347, line: 1208)
!668 = !DISubprogram(name: "truncf", scope: !344, file: !344, line: 305, type: !409, flags: DIFlagPrototyped, spFlags: 0)
!669 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !670, file: !347, line: 1209)
!670 = !DISubprogram(name: "truncl", scope: !344, file: !344, line: 305, type: !413, flags: DIFlagPrototyped, spFlags: 0)
!671 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !672, entity: !673, file: !674, line: 58)
!672 = !DINamespace(name: "__gnu_debug", scope: null)
!673 = !DINamespace(name: "__debug", scope: !102)
!674 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/debug/debug.h", directory: "", checksumkind: CSK_MD5, checksum: "982c0103e1e5f86b0818efdfc5273c3c")
!675 = !{i32 7, !"Dwarf Version", i32 5}
!676 = !{i32 2, !"Debug Info Version", i32 3}
!677 = !{i32 1, !"wchar_size", i32 4}
!678 = !{i32 8, !"PIC Level", i32 2}
!679 = !{i32 7, !"PIE Level", i32 2}
!680 = !{i32 7, !"uwtable", i32 2}
!681 = !{i32 7, !"frame-pointer", i32 2}
!682 = !{!"clang version 16.0.0"}
!683 = distinct !DISubprogram(name: "_run_trampoline", linkageName: "_ZN5Linux6Thread15_run_trampolineEPv", scope: !24, file: !2, line: 33, type: !93, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, declaration: !92, retainedNodes: !72)
!684 = !DILocalVariable(name: "arg", arg: 1, scope: !683, file: !2, line: 33, type: !40)
!685 = !DILocation(line: 33, column: 37, scope: !683)
!686 = !DILocalVariable(name: "thread", scope: !683, file: !2, line: 35, type: !23)
!687 = !DILocation(line: 35, column: 13, scope: !683)
!688 = !DILocation(line: 35, column: 44, scope: !683)
!689 = !DILocation(line: 36, column: 5, scope: !683)
!690 = !DILocation(line: 36, column: 13, scope: !683)
!691 = !DILocation(line: 38, column: 5, scope: !683)
!692 = distinct !DISubprogram(name: "_run", linkageName: "_ZN5Linux6Thread4_runEv", scope: !24, file: !2, line: 41, type: !90, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, declaration: !95, retainedNodes: !72)
!693 = !DILocalVariable(name: "this", arg: 1, scope: !692, type: !23, flags: DIFlagArtificial | DIFlagObjectPointer)
!694 = !DILocation(line: 0, scope: !692)
!695 = !DILocation(line: 43, column: 10, scope: !696)
!696 = distinct !DILexicalBlock(scope: !692, file: !2, line: 43, column: 9)
!697 = !DILocation(line: 43, column: 9, scope: !692)
!698 = !DILocation(line: 44, column: 9, scope: !699)
!699 = distinct !DILexicalBlock(scope: !696, file: !2, line: 43, column: 17)
!700 = !DILocation(line: 47, column: 5, scope: !692)
!701 = !DILocation(line: 49, column: 5, scope: !692)
!702 = !DILocation(line: 50, column: 1, scope: !692)
!703 = distinct !DISubprogram(name: "operator bool", linkageName: "_ZNK7FunctorIvJEEcvbEv", scope: !36, file: !37, line: 66, type: !67, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, declaration: !66, retainedNodes: !72)
!704 = !DILocalVariable(name: "this", arg: 1, scope: !703, type: !705, flags: DIFlagArtificial | DIFlagObjectPointer)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!706 = !DILocation(line: 0, scope: !703)
!707 = !DILocation(line: 68, column: 16, scope: !703)
!708 = !DILocation(line: 68, column: 24, scope: !703)
!709 = !DILocation(line: 68, column: 9, scope: !703)
!710 = distinct !DISubprogram(name: "operator()", linkageName: "_ZNK7FunctorIvJEEclEv", scope: !36, file: !37, line: 53, type: !57, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, declaration: !56, retainedNodes: !72)
!711 = !DILocalVariable(name: "this", arg: 1, scope: !710, type: !705, flags: DIFlagArtificial | DIFlagObjectPointer)
!712 = !DILocation(line: 0, scope: !710)
!713 = !DILocation(line: 55, column: 16, scope: !710)
!714 = !DILocation(line: 55, column: 24, scope: !710)
!715 = !DILocation(line: 55, column: 9, scope: !710)
!716 = distinct !DISubprogram(name: "start", linkageName: "_ZN5Linux6Thread5startEPKcii", scope: !24, file: !2, line: 52, type: !86, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, declaration: !85, retainedNodes: !72)
!717 = !DILocalVariable(name: "this", arg: 1, scope: !716, type: !23, flags: DIFlagArtificial | DIFlagObjectPointer)
!718 = !DILocation(line: 0, scope: !716)
!719 = !DILocalVariable(name: "name", arg: 2, scope: !716, file: !2, line: 52, type: !88)
!720 = !DILocation(line: 52, column: 32, scope: !716)
!721 = !DILocalVariable(name: "policy", arg: 3, scope: !716, file: !2, line: 52, type: !33)
!722 = !DILocation(line: 52, column: 42, scope: !716)
!723 = !DILocalVariable(name: "prio", arg: 4, scope: !716, file: !2, line: 52, type: !33)
!724 = !DILocation(line: 52, column: 54, scope: !716)
!725 = !DILocation(line: 54, column: 9, scope: !726)
!726 = distinct !DILexicalBlock(scope: !716, file: !2, line: 54, column: 9)
!727 = !DILocation(line: 54, column: 9, scope: !716)
!728 = !DILocation(line: 55, column: 9, scope: !729)
!729 = distinct !DILexicalBlock(scope: !726, file: !2, line: 54, column: 19)
!730 = !DILocalVariable(name: "param", scope: !716, file: !2, line: 58, type: !731)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_param", file: !732, line: 23, size: 32, flags: DIFlagTypePassByValue, elements: !733, identifier: "_ZTS11sched_param")
!732 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_sched_param.h", directory: "", checksumkind: CSK_MD5, checksum: "13c2f29d5f5dc39597ef32d201b78292")
!733 = !{!734}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "sched_priority", scope: !731, file: !732, line: 25, baseType: !33, size: 32)
!735 = !DILocation(line: 58, column: 24, scope: !716)
!736 = !DILocation(line: 58, column: 32, scope: !716)
!737 = !DILocation(line: 58, column: 52, scope: !716)
!738 = !DILocalVariable(name: "attr", scope: !716, file: !2, line: 59, type: !739)
!739 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_attr_t", file: !76, line: 62, baseType: !740)
!740 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "pthread_attr_t", file: !76, line: 56, size: 448, flags: DIFlagTypePassByValue, elements: !741, identifier: "_ZTS14pthread_attr_t")
!741 = !{!742, !746}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !740, file: !76, line: 58, baseType: !743, size: 448)
!743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 448, elements: !744)
!744 = !{!745}
!745 = !DISubrange(count: 56)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !740, file: !76, line: 59, baseType: !117, size: 64)
!747 = !DILocation(line: 59, column: 20, scope: !716)
!748 = !DILocalVariable(name: "r", scope: !716, file: !2, line: 60, type: !33)
!749 = !DILocation(line: 60, column: 9, scope: !716)
!750 = !DILocation(line: 62, column: 5, scope: !716)
!751 = !DILocation(line: 69, column: 9, scope: !752)
!752 = distinct !DILexicalBlock(scope: !716, file: !2, line: 69, column: 9)
!753 = !DILocation(line: 69, column: 19, scope: !752)
!754 = !DILocation(line: 69, column: 9, scope: !716)
!755 = !DILocation(line: 70, column: 18, scope: !756)
!756 = distinct !DILexicalBlock(scope: !757, file: !2, line: 70, column: 13)
!757 = distinct !DILexicalBlock(scope: !752, file: !2, line: 69, column: 25)
!758 = !DILocation(line: 70, column: 16, scope: !756)
!759 = !DILocation(line: 70, column: 79, scope: !756)
!760 = !DILocation(line: 70, column: 84, scope: !756)
!761 = !DILocation(line: 71, column: 53, scope: !756)
!762 = !DILocation(line: 71, column: 18, scope: !756)
!763 = !DILocation(line: 71, column: 16, scope: !756)
!764 = !DILocation(line: 71, column: 62, scope: !756)
!765 = !DILocation(line: 71, column: 67, scope: !756)
!766 = !DILocation(line: 72, column: 18, scope: !756)
!767 = !DILocation(line: 72, column: 60, scope: !756)
!768 = !DILocation(line: 72, column: 16, scope: !756)
!769 = !DILocation(line: 70, column: 13, scope: !757)
!770 = !DILocation(line: 74, column: 27, scope: !771)
!771 = distinct !DILexicalBlock(scope: !756, file: !2, line: 72, column: 67)
!772 = !DILocation(line: 74, column: 42, scope: !771)
!773 = !DILocation(line: 74, column: 33, scope: !771)
!774 = !DILocation(line: 73, column: 13, scope: !771)
!775 = !DILocation(line: 76, column: 5, scope: !757)
!776 = !DILocation(line: 78, column: 25, scope: !716)
!777 = !DILocation(line: 78, column: 9, scope: !716)
!778 = !DILocation(line: 78, column: 7, scope: !716)
!779 = !DILocation(line: 79, column: 9, scope: !780)
!780 = distinct !DILexicalBlock(scope: !716, file: !2, line: 79, column: 9)
!781 = !DILocation(line: 79, column: 11, scope: !780)
!782 = !DILocation(line: 79, column: 9, scope: !716)
!783 = !DILocation(line: 81, column: 23, scope: !784)
!784 = distinct !DILexicalBlock(scope: !780, file: !2, line: 79, column: 17)
!785 = !DILocation(line: 81, column: 38, scope: !784)
!786 = !DILocation(line: 81, column: 29, scope: !784)
!787 = !DILocation(line: 80, column: 9, scope: !784)
!788 = !DILocation(line: 83, column: 5, scope: !716)
!789 = !DILocation(line: 85, column: 9, scope: !790)
!790 = distinct !DILexicalBlock(scope: !716, file: !2, line: 85, column: 9)
!791 = !DILocation(line: 85, column: 9, scope: !716)
!792 = !DILocation(line: 86, column: 28, scope: !793)
!793 = distinct !DILexicalBlock(scope: !790, file: !2, line: 85, column: 15)
!794 = !DILocation(line: 86, column: 34, scope: !793)
!795 = !DILocation(line: 86, column: 9, scope: !793)
!796 = !DILocation(line: 87, column: 5, scope: !793)
!797 = !DILocation(line: 89, column: 5, scope: !716)
!798 = !DILocation(line: 89, column: 14, scope: !716)
!799 = !DILocation(line: 91, column: 5, scope: !716)
!800 = !DILocation(line: 92, column: 1, scope: !716)
!801 = distinct !DISubprogram(name: "is_current_thread", linkageName: "_ZN5Linux6Thread17is_current_threadEv", scope: !24, file: !2, line: 94, type: !90, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, declaration: !89, retainedNodes: !72)
!802 = !DILocalVariable(name: "this", arg: 1, scope: !801, type: !23, flags: DIFlagArtificial | DIFlagObjectPointer)
!803 = !DILocation(line: 0, scope: !801)
!804 = !DILocation(line: 96, column: 26, scope: !801)
!805 = !DILocation(line: 96, column: 42, scope: !801)
!806 = !DILocation(line: 96, column: 12, scope: !801)
!807 = !DILocation(line: 96, column: 5, scope: !801)
!808 = distinct !DISubprogram(name: "set_rate", linkageName: "_ZN5Linux14PeriodicThread8set_rateEj", scope: !809, file: !2, line: 99, type: !822, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, declaration: !821, retainedNodes: !72)
!809 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "PeriodicThread", scope: !26, file: !25, line: 60, size: 384, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !810, vtableHolder: !24)
!810 = !{!811, !812, !817, !821, !826}
!811 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !809, baseType: !24, flags: DIFlagPublic, extraData: i32 0)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "_period_usec", scope: !809, file: !25, line: 71, baseType: !813, size: 64, offset: 320, flags: DIFlagProtected)
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !814, line: 27, baseType: !815)
!814 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!815 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !816, line: 45, baseType: !77)
!816 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!817 = !DISubprogram(name: "PeriodicThread", scope: !809, file: !25, line: 62, type: !818, scopeLine: 62, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!818 = !DISubroutineType(types: !819)
!819 = !{null, !820, !35}
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!821 = !DISubprogram(name: "set_rate", linkageName: "_ZN5Linux14PeriodicThread8set_rateEj", scope: !809, file: !25, line: 66, type: !822, scopeLine: 66, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!822 = !DISubroutineType(types: !823)
!823 = !{!64, !820, !824}
!824 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !814, line: 26, baseType: !825)
!825 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !816, line: 42, baseType: !18)
!826 = !DISubprogram(name: "_run", linkageName: "_ZN5Linux14PeriodicThread4_runEv", scope: !809, file: !25, line: 69, type: !827, scopeLine: 69, containingType: !809, virtualIndex: 2, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!827 = !DISubroutineType(types: !828)
!828 = !{!64, !820}
!829 = !DILocalVariable(name: "this", arg: 1, scope: !808, type: !830, flags: DIFlagArtificial | DIFlagObjectPointer)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!831 = !DILocation(line: 0, scope: !808)
!832 = !DILocalVariable(name: "rate_hz", arg: 2, scope: !808, file: !2, line: 99, type: !824)
!833 = !DILocation(line: 99, column: 40, scope: !808)
!834 = !DILocation(line: 101, column: 9, scope: !835)
!835 = distinct !DILexicalBlock(scope: !808, file: !2, line: 101, column: 9)
!836 = !DILocation(line: 101, column: 18, scope: !835)
!837 = !DILocation(line: 101, column: 21, scope: !835)
!838 = !DILocation(line: 101, column: 29, scope: !835)
!839 = !DILocation(line: 101, column: 9, scope: !808)
!840 = !DILocation(line: 102, column: 9, scope: !841)
!841 = distinct !DILexicalBlock(scope: !835, file: !2, line: 101, column: 35)
!842 = !DILocation(line: 105, column: 31, scope: !808)
!843 = !DILocation(line: 105, column: 20, scope: !808)
!844 = !DILocation(line: 105, column: 5, scope: !808)
!845 = !DILocation(line: 105, column: 18, scope: !808)
!846 = !DILocation(line: 107, column: 5, scope: !808)
!847 = !DILocation(line: 108, column: 1, scope: !808)
!848 = distinct !DISubprogram(name: "hz_to_usec", linkageName: "_Z10hz_to_usecj", scope: !849, file: !849, line: 188, type: !850, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !72)
!849 = !DIFile(filename: "ardupilot/libraries/AP_Math/AP_Math.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "5c5ea847c687760afafe3a9867bb78eb")
!850 = !DISubroutineType(types: !851)
!851 = !{!824, !824}
!852 = !DILocalVariable(name: "freq", arg: 1, scope: !848, file: !849, line: 188, type: !824)
!853 = !DILocation(line: 188, column: 37, scope: !848)
!854 = !DILocation(line: 190, column: 27, scope: !848)
!855 = !DILocation(line: 190, column: 25, scope: !848)
!856 = !DILocation(line: 190, column: 12, scope: !848)
!857 = !DILocation(line: 190, column: 5, scope: !848)
!858 = distinct !DISubprogram(name: "_run", linkageName: "_ZN5Linux14PeriodicThread4_runEv", scope: !809, file: !2, line: 110, type: !827, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, declaration: !826, retainedNodes: !72)
!859 = !DILocalVariable(name: "this", arg: 1, scope: !858, type: !830, flags: DIFlagArtificial | DIFlagObjectPointer)
!860 = !DILocation(line: 0, scope: !858)
!861 = !DILocalVariable(name: "next_run_usec", scope: !858, file: !2, line: 112, type: !813)
!862 = !DILocation(line: 112, column: 14, scope: !858)
!863 = !DILocation(line: 112, column: 30, scope: !858)
!864 = !DILocation(line: 112, column: 51, scope: !858)
!865 = !DILocation(line: 112, column: 49, scope: !858)
!866 = !DILocation(line: 114, column: 5, scope: !858)
!867 = !DILocalVariable(name: "dt", scope: !868, file: !2, line: 115, type: !813)
!868 = distinct !DILexicalBlock(scope: !858, file: !2, line: 114, column: 18)
!869 = !DILocation(line: 115, column: 18, scope: !868)
!870 = !DILocation(line: 115, column: 23, scope: !868)
!871 = !DILocation(line: 115, column: 39, scope: !868)
!872 = !DILocation(line: 115, column: 37, scope: !868)
!873 = !DILocation(line: 116, column: 13, scope: !874)
!874 = distinct !DILexicalBlock(scope: !868, file: !2, line: 116, column: 13)
!875 = !DILocation(line: 116, column: 18, scope: !874)
!876 = !DILocation(line: 116, column: 16, scope: !874)
!877 = !DILocation(line: 116, column: 13, scope: !868)
!878 = !DILocation(line: 118, column: 29, scope: !879)
!879 = distinct !DILexicalBlock(scope: !874, file: !2, line: 116, column: 32)
!880 = !DILocation(line: 118, column: 27, scope: !879)
!881 = !DILocation(line: 119, column: 9, scope: !879)
!882 = !DILocation(line: 120, column: 29, scope: !883)
!883 = distinct !DILexicalBlock(scope: !874, file: !2, line: 119, column: 16)
!884 = !DILocation(line: 120, column: 33, scope: !883)
!885 = !DILocation(line: 120, column: 13, scope: !883)
!886 = !DILocation(line: 120, column: 56, scope: !883)
!887 = !DILocation(line: 120, column: 45, scope: !883)
!888 = !DILocation(line: 122, column: 26, scope: !868)
!889 = !DILocation(line: 122, column: 23, scope: !868)
!890 = !DILocation(line: 124, column: 9, scope: !868)
!891 = distinct !{!891, !866, !892, !893}
!892 = !DILocation(line: 125, column: 5, scope: !858)
!893 = !{!"llvm.loop.mustprogress"}
!894 = distinct !DISubprogram(name: "from", linkageName: "_ZN5Linux9Scheduler4fromEPN6AP_HAL9SchedulerE", scope: !97, file: !98, line: 17, type: !895, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, declaration: !901, retainedNodes: !72)
!895 = !DISubroutineType(types: !896)
!896 = !{!96, !897}
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DICompositeType(tag: DW_TAG_class_type, name: "Scheduler", scope: !900, file: !899, line: 11, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN6AP_HAL9SchedulerE")
!899 = !DIFile(filename: "ardupilot/libraries/AP_HAL/Scheduler.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "119a3b279a40882181ff95570153760b")
!900 = !DINamespace(name: "AP_HAL", scope: null)
!901 = !DISubprogram(name: "from", linkageName: "_ZN5Linux9Scheduler4fromEPN6AP_HAL9SchedulerE", scope: !97, file: !98, line: 17, type: !895, scopeLine: 17, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!902 = !DILocalVariable(name: "scheduler", arg: 1, scope: !894, file: !98, line: 17, type: !897)
!903 = !DILocation(line: 17, column: 47, scope: !894)
!904 = !DILocation(line: 18, column: 40, scope: !894)
!905 = !DILocation(line: 18, column: 9, scope: !894)
!906 = distinct !DISubprogram(name: "~Thread", linkageName: "_ZN5Linux6ThreadD2Ev", scope: !24, file: !25, line: 39, type: !83, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, declaration: !82, retainedNodes: !72)
!907 = !DILocalVariable(name: "this", arg: 1, scope: !906, type: !23, flags: DIFlagArtificial | DIFlagObjectPointer)
!908 = !DILocation(line: 0, scope: !906)
!909 = !DILocation(line: 39, column: 25, scope: !906)
!910 = distinct !DISubprogram(name: "~Thread", linkageName: "_ZN5Linux6ThreadD0Ev", scope: !24, file: !25, line: 39, type: !83, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, declaration: !82, retainedNodes: !72)
!911 = !DILocalVariable(name: "this", arg: 1, scope: !910, type: !23, flags: DIFlagArtificial | DIFlagObjectPointer)
!912 = !DILocation(line: 0, scope: !910)
!913 = !DILocation(line: 39, column: 23, scope: !910)
!914 = !DILocation(line: 39, column: 25, scope: !910)
!915 = distinct !DISubprogram(name: "~PeriodicThread", linkageName: "_ZN5Linux14PeriodicThreadD2Ev", scope: !809, file: !25, line: 60, type: !916, scopeLine: 60, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, declaration: !918, retainedNodes: !72)
!916 = !DISubroutineType(types: !917)
!917 = !{null, !820}
!918 = !DISubprogram(name: "~PeriodicThread", scope: !809, type: !916, containingType: !809, virtualIndex: 0, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!919 = !DILocalVariable(name: "this", arg: 1, scope: !915, type: !830, flags: DIFlagArtificial | DIFlagObjectPointer)
!920 = !DILocation(line: 0, scope: !915)
!921 = !DILocation(line: 60, column: 7, scope: !922)
!922 = distinct !DILexicalBlock(scope: !915, file: !25, line: 60, column: 7)
!923 = !DILocation(line: 60, column: 7, scope: !915)
!924 = distinct !DISubprogram(name: "~PeriodicThread", linkageName: "_ZN5Linux14PeriodicThreadD0Ev", scope: !809, file: !25, line: 60, type: !916, scopeLine: 60, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, declaration: !918, retainedNodes: !72)
!925 = !DILocalVariable(name: "this", arg: 1, scope: !924, type: !830, flags: DIFlagArtificial | DIFlagObjectPointer)
!926 = !DILocation(line: 0, scope: !924)
!927 = !DILocation(line: 60, column: 7, scope: !924)
