; ModuleID = '../TrackingBenchmark/threads/Barrier.cpp'
source_filename = "../TrackingBenchmark/threads/Barrier.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.threads::BarrierInitException" = type { %"class.threads::BarrierException" }
%"class.threads::BarrierException" = type { %"class.std::exception" }
%"class.std::exception" = type { ptr }
%"class.threads::BarrierResourceException" = type { %"class.threads::BarrierException" }
%"class.threads::BarrierUnknownException" = type { %"class.threads::BarrierException" }
%"class.threads::Barrier" = type <{ %union.pthread_barrier_t, i32, [4 x i8] }>
%union.pthread_barrier_t = type { i64, [24 x i8] }
%"class.threads::BarrierDestroyException" = type { %"class.threads::BarrierException" }

$_ZN7threads20BarrierInitExceptionC2Ev = comdat any

$_ZN7threads20BarrierInitExceptionC2EOS0_ = comdat any

$_ZN7threads20BarrierInitExceptionD2Ev = comdat any

$_ZN7threads24BarrierResourceExceptionC2Ev = comdat any

$_ZN7threads24BarrierResourceExceptionC2EOS0_ = comdat any

$_ZN7threads24BarrierResourceExceptionD2Ev = comdat any

$_ZN7threads23BarrierUnknownExceptionC2Ev = comdat any

$_ZN7threads23BarrierUnknownExceptionC2EOS0_ = comdat any

$_ZN7threads23BarrierUnknownExceptionD2Ev = comdat any

$_ZN7threads23BarrierDestroyExceptionC2Ev = comdat any

$_ZN7threads23BarrierDestroyExceptionC2EOS0_ = comdat any

$_ZN7threads23BarrierDestroyExceptionD2Ev = comdat any

$_ZN7threads16BarrierExceptionC2Ev = comdat any

$_ZN7threads16BarrierExceptionC2EOS0_ = comdat any

$_ZN7threads16BarrierExceptionD2Ev = comdat any

$_ZN7threads20BarrierInitExceptionD0Ev = comdat any

$_ZNK7threads20BarrierInitException4whatEv = comdat any

$_ZNSt9exceptionC2Ev = comdat any

$_ZN7threads16BarrierExceptionD0Ev = comdat any

$_ZNK7threads16BarrierException4whatEv = comdat any

$_ZNSt9exceptionC2EOS_ = comdat any

$_ZN7threads24BarrierResourceExceptionD0Ev = comdat any

$_ZNK7threads24BarrierResourceException4whatEv = comdat any

$_ZN7threads23BarrierUnknownExceptionD0Ev = comdat any

$_ZNK7threads23BarrierUnknownException4whatEv = comdat any

$_ZN7threads23BarrierDestroyExceptionD0Ev = comdat any

$_ZNK7threads23BarrierDestroyException4whatEv = comdat any

$_ZTSN7threads16BarrierExceptionE = comdat any

$_ZTIN7threads16BarrierExceptionE = comdat any

$_ZTSN7threads20BarrierInitExceptionE = comdat any

$_ZTIN7threads20BarrierInitExceptionE = comdat any

$_ZTSN7threads24BarrierResourceExceptionE = comdat any

$_ZTIN7threads24BarrierResourceExceptionE = comdat any

$_ZTSN7threads23BarrierUnknownExceptionE = comdat any

$_ZTIN7threads23BarrierUnknownExceptionE = comdat any

$_ZTSN7threads23BarrierDestroyExceptionE = comdat any

$_ZTIN7threads23BarrierDestroyExceptionE = comdat any

$_ZTVN7threads20BarrierInitExceptionE = comdat any

$_ZTVN7threads16BarrierExceptionE = comdat any

$_ZTVN7threads24BarrierResourceExceptionE = comdat any

$_ZTVN7threads23BarrierUnknownExceptionE = comdat any

$_ZTVN7threads23BarrierDestroyExceptionE = comdat any

@_ZTVN10__cxxabiv120__si_class_type_infoE = external global ptr
@_ZTSN7threads16BarrierExceptionE = linkonce_odr dso_local constant [29 x i8] c"N7threads16BarrierExceptionE\00", comdat, align 1
@_ZTISt9exception = external constant ptr
@_ZTIN7threads16BarrierExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7threads16BarrierExceptionE, ptr @_ZTISt9exception }, comdat, align 8
@_ZTSN7threads20BarrierInitExceptionE = linkonce_odr dso_local constant [33 x i8] c"N7threads20BarrierInitExceptionE\00", comdat, align 1
@_ZTIN7threads20BarrierInitExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7threads20BarrierInitExceptionE, ptr @_ZTIN7threads16BarrierExceptionE }, comdat, align 8
@_ZTSN7threads24BarrierResourceExceptionE = linkonce_odr dso_local constant [37 x i8] c"N7threads24BarrierResourceExceptionE\00", comdat, align 1
@_ZTIN7threads24BarrierResourceExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7threads24BarrierResourceExceptionE, ptr @_ZTIN7threads16BarrierExceptionE }, comdat, align 8
@_ZTSN7threads23BarrierUnknownExceptionE = linkonce_odr dso_local constant [36 x i8] c"N7threads23BarrierUnknownExceptionE\00", comdat, align 1
@_ZTIN7threads23BarrierUnknownExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7threads23BarrierUnknownExceptionE, ptr @_ZTIN7threads16BarrierExceptionE }, comdat, align 8
@_ZTSN7threads23BarrierDestroyExceptionE = linkonce_odr dso_local constant [36 x i8] c"N7threads23BarrierDestroyExceptionE\00", comdat, align 1
@_ZTIN7threads23BarrierDestroyExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7threads23BarrierDestroyExceptionE, ptr @_ZTIN7threads16BarrierExceptionE }, comdat, align 8
@_ZTVN7threads20BarrierInitExceptionE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7threads20BarrierInitExceptionE, ptr @_ZN7threads20BarrierInitExceptionD2Ev, ptr @_ZN7threads20BarrierInitExceptionD0Ev, ptr @_ZNK7threads20BarrierInitException4whatEv] }, comdat, align 8
@_ZTVN7threads16BarrierExceptionE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7threads16BarrierExceptionE, ptr @_ZN7threads16BarrierExceptionD2Ev, ptr @_ZN7threads16BarrierExceptionD0Ev, ptr @_ZNK7threads16BarrierException4whatEv] }, comdat, align 8
@_ZTVSt9exception = external unnamed_addr constant { [5 x ptr] }, align 8
@.str = private unnamed_addr constant [26 x i8] c"Unspecified barrier error\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [45 x i8] c"Unspecified error while initializing barrier\00", align 1, !dbg !8
@_ZTVN7threads24BarrierResourceExceptionE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7threads24BarrierResourceExceptionE, ptr @_ZN7threads24BarrierResourceExceptionD2Ev, ptr @_ZN7threads24BarrierResourceExceptionD0Ev, ptr @_ZNK7threads24BarrierResourceException4whatEv] }, comdat, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"Insufficient resources\00", align 1, !dbg !13
@_ZTVN7threads23BarrierUnknownExceptionE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7threads23BarrierUnknownExceptionE, ptr @_ZN7threads23BarrierUnknownExceptionD2Ev, ptr @_ZN7threads23BarrierUnknownExceptionD0Ev, ptr @_ZNK7threads23BarrierUnknownException4whatEv] }, comdat, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"Unknown error\00", align 1, !dbg !18
@_ZTVN7threads23BarrierDestroyExceptionE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7threads23BarrierDestroyExceptionE, ptr @_ZN7threads23BarrierDestroyExceptionD2Ev, ptr @_ZN7threads23BarrierDestroyExceptionD0Ev, ptr @_ZNK7threads23BarrierDestroyException4whatEv] }, comdat, align 8
@.str.4 = private unnamed_addr constant [43 x i8] c"Unspecified error while destroying barrier\00", align 1, !dbg !23

@_ZN7threads7BarrierC1Ei = dso_local unnamed_addr alias void (ptr, i32), ptr @_ZN7threads7BarrierC2Ei
@_ZN7threads7BarrierD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN7threads7BarrierD2Ev

; Function Attrs: noinline optnone uwtable
define dso_local void @_ZN7threads7BarrierC2Ei(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !dbg !83 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %"class.threads::BarrierInitException", align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca %"class.threads::BarrierResourceException", align 8
  %10 = alloca %"class.threads::BarrierUnknownException", align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !85, metadata !DIExpression()), !dbg !87
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !88, metadata !DIExpression()), !dbg !89
  %11 = load ptr, ptr %3, align 8
  %12 = getelementptr inbounds %"class.threads::Barrier", ptr %11, i32 0, i32 0, !dbg !90
  call void @llvm.dbg.declare(metadata ptr %5, metadata !91, metadata !DIExpression()), !dbg !93
  %13 = load i32, ptr %4, align 4, !dbg !94
  %14 = getelementptr inbounds %"class.threads::Barrier", ptr %11, i32 0, i32 1, !dbg !95
  store i32 %13, ptr %14, align 8, !dbg !96
  %15 = getelementptr inbounds %"class.threads::Barrier", ptr %11, i32 0, i32 0, !dbg !97
  %16 = getelementptr inbounds %"class.threads::Barrier", ptr %11, i32 0, i32 1, !dbg !98
  %17 = load i32, ptr %16, align 8, !dbg !98
  %18 = call i32 @pthread_barrier_init(ptr noundef %15, ptr noundef null, i32 noundef %17) #7, !dbg !99
  store i32 %18, ptr %5, align 4, !dbg !100
  %19 = load i32, ptr %5, align 4, !dbg !101
  switch i32 %19, label %33 [
    i32 0, label %20
    i32 22, label %21
    i32 16, label %21
    i32 11, label %27
    i32 12, label %27
  ], !dbg !102

20:                                               ; preds = %2
  br label %44, !dbg !103

21:                                               ; preds = %2, %2
  call void @llvm.dbg.declare(metadata ptr %6, metadata !105, metadata !DIExpression()), !dbg !126
  call void @_ZN7threads20BarrierInitExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #7, !dbg !126
  %22 = call ptr @__cxa_allocate_exception(i64 8) #7, !dbg !127
  call void @_ZN7threads20BarrierInitExceptionC2EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull align 8 dereferenceable(8) %6) #7, !dbg !128
  invoke void @__cxa_throw(ptr %22, ptr @_ZTIN7threads20BarrierInitExceptionE, ptr @_ZN7threads20BarrierInitExceptionD2Ev) #8
          to label %50 unwind label %23, !dbg !127

23:                                               ; preds = %21
  %24 = landingpad { ptr, i32 }
          cleanup
          filter [1 x ptr] [ptr @_ZTIN7threads16BarrierExceptionE], !dbg !129
  %25 = extractvalue { ptr, i32 } %24, 0, !dbg !129
  store ptr %25, ptr %7, align 8, !dbg !129
  %26 = extractvalue { ptr, i32 } %24, 1, !dbg !129
  store i32 %26, ptr %8, align 4, !dbg !129
  call void @_ZN7threads20BarrierInitExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #7, !dbg !130
  br label %39, !dbg !130

27:                                               ; preds = %2, %2
  call void @llvm.dbg.declare(metadata ptr %9, metadata !131, metadata !DIExpression()), !dbg !141
  call void @_ZN7threads24BarrierResourceExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #7, !dbg !141
  %28 = call ptr @__cxa_allocate_exception(i64 8) #7, !dbg !142
  call void @_ZN7threads24BarrierResourceExceptionC2EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 8 dereferenceable(8) %9) #7, !dbg !143
  invoke void @__cxa_throw(ptr %28, ptr @_ZTIN7threads24BarrierResourceExceptionE, ptr @_ZN7threads24BarrierResourceExceptionD2Ev) #8
          to label %50 unwind label %29, !dbg !142

29:                                               ; preds = %27
  %30 = landingpad { ptr, i32 }
          cleanup
          filter [1 x ptr] [ptr @_ZTIN7threads16BarrierExceptionE], !dbg !144
  %31 = extractvalue { ptr, i32 } %30, 0, !dbg !144
  store ptr %31, ptr %7, align 8, !dbg !144
  %32 = extractvalue { ptr, i32 } %30, 1, !dbg !144
  store i32 %32, ptr %8, align 4, !dbg !144
  call void @_ZN7threads24BarrierResourceExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #7, !dbg !145
  br label %39, !dbg !145

33:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %10, metadata !146, metadata !DIExpression()), !dbg !156
  call void @_ZN7threads23BarrierUnknownExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #7, !dbg !156
  %34 = call ptr @__cxa_allocate_exception(i64 8) #7, !dbg !157
  call void @_ZN7threads23BarrierUnknownExceptionC2EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %34, ptr noundef nonnull align 8 dereferenceable(8) %10) #7, !dbg !158
  invoke void @__cxa_throw(ptr %34, ptr @_ZTIN7threads23BarrierUnknownExceptionE, ptr @_ZN7threads23BarrierUnknownExceptionD2Ev) #8
          to label %50 unwind label %35, !dbg !157

35:                                               ; preds = %33
  %36 = landingpad { ptr, i32 }
          cleanup
          filter [1 x ptr] [ptr @_ZTIN7threads16BarrierExceptionE], !dbg !159
  %37 = extractvalue { ptr, i32 } %36, 0, !dbg !159
  store ptr %37, ptr %7, align 8, !dbg !159
  %38 = extractvalue { ptr, i32 } %36, 1, !dbg !159
  store i32 %38, ptr %8, align 4, !dbg !159
  call void @_ZN7threads23BarrierUnknownExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #7, !dbg !160
  br label %39, !dbg !160

39:                                               ; preds = %35, %29, %23
  %40 = load i32, ptr %8, align 4, !dbg !161
  %41 = icmp slt i32 %40, 0, !dbg !161
  br i1 %41, label %42, label %45, !dbg !161

42:                                               ; preds = %39
  %43 = load ptr, ptr %7, align 8, !dbg !161
  call void @__cxa_call_unexpected(ptr %43) #8, !dbg !161
  unreachable, !dbg !161

44:                                               ; preds = %20
  ret void, !dbg !161

45:                                               ; preds = %39
  %46 = load ptr, ptr %7, align 8, !dbg !161
  %47 = load i32, ptr %8, align 4, !dbg !161
  %48 = insertvalue { ptr, i32 } poison, ptr %46, 0, !dbg !161
  %49 = insertvalue { ptr, i32 } %48, i32 %47, 1, !dbg !161
  resume { ptr, i32 } %49, !dbg !161

50:                                               ; preds = %33, %27, %21
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i32 @pthread_barrier_init(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7threads20BarrierInitExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 !dbg !162 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !167, metadata !DIExpression()), !dbg !169
  %3 = load ptr, ptr %2, align 8
  call void @_ZN7threads16BarrierExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #7, !dbg !170
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN7threads20BarrierInitExceptionE, i32 0, inrange i32 0, i32 2), ptr %3, align 8, !dbg !170
  ret void, !dbg !170
}

declare ptr @__cxa_allocate_exception(i64)

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7threads20BarrierInitExceptionC2EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 !dbg !171 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !176, metadata !DIExpression()), !dbg !177
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !178, metadata !DIExpression()), !dbg !177
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8, !dbg !179
  call void @_ZN7threads16BarrierExceptionC2EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) #7, !dbg !179
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN7threads20BarrierInitExceptionE, i32 0, inrange i32 0, i32 2), ptr %5, align 8, !dbg !179
  ret void, !dbg !179
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7threads20BarrierInitExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 !dbg !180 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !182, metadata !DIExpression()), !dbg !183
  %3 = load ptr, ptr %2, align 8
  call void @_ZN7threads16BarrierExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #7, !dbg !184
  ret void, !dbg !186
}

declare void @__cxa_throw(ptr, ptr, ptr)

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7threads24BarrierResourceExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 !dbg !187 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !192, metadata !DIExpression()), !dbg !194
  %3 = load ptr, ptr %2, align 8
  call void @_ZN7threads16BarrierExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #7, !dbg !195
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN7threads24BarrierResourceExceptionE, i32 0, inrange i32 0, i32 2), ptr %3, align 8, !dbg !195
  ret void, !dbg !195
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7threads24BarrierResourceExceptionC2EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 !dbg !196 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !201, metadata !DIExpression()), !dbg !202
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !203, metadata !DIExpression()), !dbg !202
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8, !dbg !204
  call void @_ZN7threads16BarrierExceptionC2EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) #7, !dbg !204
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN7threads24BarrierResourceExceptionE, i32 0, inrange i32 0, i32 2), ptr %5, align 8, !dbg !204
  ret void, !dbg !204
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7threads24BarrierResourceExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 !dbg !205 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !207, metadata !DIExpression()), !dbg !208
  %3 = load ptr, ptr %2, align 8
  call void @_ZN7threads16BarrierExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #7, !dbg !209
  ret void, !dbg !211
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7threads23BarrierUnknownExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 !dbg !212 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !217, metadata !DIExpression()), !dbg !219
  %3 = load ptr, ptr %2, align 8
  call void @_ZN7threads16BarrierExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #7, !dbg !220
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN7threads23BarrierUnknownExceptionE, i32 0, inrange i32 0, i32 2), ptr %3, align 8, !dbg !220
  ret void, !dbg !220
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7threads23BarrierUnknownExceptionC2EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 !dbg !221 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !226, metadata !DIExpression()), !dbg !227
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !228, metadata !DIExpression()), !dbg !227
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8, !dbg !229
  call void @_ZN7threads16BarrierExceptionC2EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) #7, !dbg !229
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN7threads23BarrierUnknownExceptionE, i32 0, inrange i32 0, i32 2), ptr %5, align 8, !dbg !229
  ret void, !dbg !229
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7threads23BarrierUnknownExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 !dbg !230 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !232, metadata !DIExpression()), !dbg !233
  %3 = load ptr, ptr %2, align 8
  call void @_ZN7threads16BarrierExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #7, !dbg !234
  ret void, !dbg !236
}

declare void @__cxa_call_unexpected(ptr)

; Function Attrs: noinline optnone uwtable
define dso_local void @_ZN7threads7BarrierD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !dbg !237 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca %"class.threads::BarrierDestroyException", align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca %"class.threads::BarrierUnknownException", align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !238, metadata !DIExpression()), !dbg !239
  %8 = load ptr, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !240, metadata !DIExpression()), !dbg !242
  %9 = getelementptr inbounds %"class.threads::Barrier", ptr %8, i32 0, i32 0, !dbg !243
  %10 = call i32 @pthread_barrier_destroy(ptr noundef %9) #7, !dbg !244
  store i32 %10, ptr %3, align 4, !dbg !245
  %11 = load i32, ptr %3, align 4, !dbg !246
  switch i32 %11, label %19 [
    i32 0, label %12
    i32 22, label %13
    i32 16, label %13
  ], !dbg !247

12:                                               ; preds = %1
  br label %30, !dbg !248

13:                                               ; preds = %1, %1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !250, metadata !DIExpression()), !dbg !260
  call void @_ZN7threads23BarrierDestroyExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #7, !dbg !260
  %14 = call ptr @__cxa_allocate_exception(i64 8) #7, !dbg !261
  call void @_ZN7threads23BarrierDestroyExceptionC2EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %4) #7, !dbg !262
  invoke void @__cxa_throw(ptr %14, ptr @_ZTIN7threads23BarrierDestroyExceptionE, ptr @_ZN7threads23BarrierDestroyExceptionD2Ev) #8
          to label %36 unwind label %15, !dbg !261

15:                                               ; preds = %13
  %16 = landingpad { ptr, i32 }
          cleanup
          filter [1 x ptr] [ptr @_ZTIN7threads16BarrierExceptionE], !dbg !263
  %17 = extractvalue { ptr, i32 } %16, 0, !dbg !263
  store ptr %17, ptr %5, align 8, !dbg !263
  %18 = extractvalue { ptr, i32 } %16, 1, !dbg !263
  store i32 %18, ptr %6, align 4, !dbg !263
  call void @_ZN7threads23BarrierDestroyExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #7, !dbg !264
  br label %25, !dbg !264

19:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata ptr %7, metadata !265, metadata !DIExpression()), !dbg !267
  call void @_ZN7threads23BarrierUnknownExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #7, !dbg !267
  %20 = call ptr @__cxa_allocate_exception(i64 8) #7, !dbg !268
  call void @_ZN7threads23BarrierUnknownExceptionC2EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(8) %7) #7, !dbg !269
  invoke void @__cxa_throw(ptr %20, ptr @_ZTIN7threads23BarrierUnknownExceptionE, ptr @_ZN7threads23BarrierUnknownExceptionD2Ev) #8
          to label %36 unwind label %21, !dbg !268

21:                                               ; preds = %19
  %22 = landingpad { ptr, i32 }
          cleanup
          filter [1 x ptr] [ptr @_ZTIN7threads16BarrierExceptionE], !dbg !270
  %23 = extractvalue { ptr, i32 } %22, 0, !dbg !270
  store ptr %23, ptr %5, align 8, !dbg !270
  %24 = extractvalue { ptr, i32 } %22, 1, !dbg !270
  store i32 %24, ptr %6, align 4, !dbg !270
  call void @_ZN7threads23BarrierUnknownExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #7, !dbg !271
  br label %25, !dbg !271

25:                                               ; preds = %21, %15
  %26 = load i32, ptr %6, align 4, !dbg !272
  %27 = icmp slt i32 %26, 0, !dbg !272
  br i1 %27, label %28, label %31, !dbg !272

28:                                               ; preds = %25
  %29 = load ptr, ptr %5, align 8, !dbg !272
  call void @__cxa_call_unexpected(ptr %29) #8, !dbg !272
  unreachable, !dbg !272

30:                                               ; preds = %12
  ret void, !dbg !272

31:                                               ; preds = %25
  %32 = load ptr, ptr %5, align 8, !dbg !272
  %33 = load i32, ptr %6, align 4, !dbg !272
  %34 = insertvalue { ptr, i32 } poison, ptr %32, 0, !dbg !272
  %35 = insertvalue { ptr, i32 } %34, i32 %33, 1, !dbg !272
  resume { ptr, i32 } %35, !dbg !272

36:                                               ; preds = %19, %13
  unreachable
}

; Function Attrs: nounwind
declare i32 @pthread_barrier_destroy(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7threads23BarrierDestroyExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 !dbg !273 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !278, metadata !DIExpression()), !dbg !280
  %3 = load ptr, ptr %2, align 8
  call void @_ZN7threads16BarrierExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #7, !dbg !281
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN7threads23BarrierDestroyExceptionE, i32 0, inrange i32 0, i32 2), ptr %3, align 8, !dbg !281
  ret void, !dbg !281
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7threads23BarrierDestroyExceptionC2EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 !dbg !282 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !287, metadata !DIExpression()), !dbg !288
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !289, metadata !DIExpression()), !dbg !288
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8, !dbg !290
  call void @_ZN7threads16BarrierExceptionC2EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) #7, !dbg !290
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN7threads23BarrierDestroyExceptionE, i32 0, inrange i32 0, i32 2), ptr %5, align 8, !dbg !290
  ret void, !dbg !290
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7threads23BarrierDestroyExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 !dbg !291 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !293, metadata !DIExpression()), !dbg !294
  %3 = load ptr, ptr %2, align 8
  call void @_ZN7threads16BarrierExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #7, !dbg !295
  ret void, !dbg !297
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef zeroext i1 @_ZN7threads7Barrier4WaitEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #4 align 2 personality ptr @__gxx_personality_v0 !dbg !298 {
  %2 = alloca i1, align 1
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca %"class.threads::BarrierException", align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca %"class.threads::BarrierUnknownException", align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !299, metadata !DIExpression()), !dbg !300
  %9 = load ptr, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !301, metadata !DIExpression()), !dbg !302
  %10 = getelementptr inbounds %"class.threads::Barrier", ptr %9, i32 0, i32 0, !dbg !303
  %11 = call i32 @pthread_barrier_wait(ptr noundef %10) #7, !dbg !304
  store i32 %11, ptr %4, align 4, !dbg !305
  %12 = load i32, ptr %4, align 4, !dbg !306
  switch i32 %12, label %21 [
    i32 0, label %13
    i32 -1, label %14
    i32 22, label %15
  ], !dbg !307

13:                                               ; preds = %1
  br label %32, !dbg !308

14:                                               ; preds = %1
  store i1 true, ptr %2, align 1, !dbg !310
  br label %33, !dbg !310

15:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata ptr %5, metadata !311, metadata !DIExpression()), !dbg !313
  call void @_ZN7threads16BarrierExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #7, !dbg !313
  %16 = call ptr @__cxa_allocate_exception(i64 8) #7, !dbg !314
  call void @_ZN7threads16BarrierExceptionC2EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %5) #7, !dbg !315
  invoke void @__cxa_throw(ptr %16, ptr @_ZTIN7threads16BarrierExceptionE, ptr @_ZN7threads16BarrierExceptionD2Ev) #8
          to label %40 unwind label %17, !dbg !314

17:                                               ; preds = %15
  %18 = landingpad { ptr, i32 }
          cleanup
          filter [1 x ptr] [ptr @_ZTIN7threads16BarrierExceptionE], !dbg !316
  %19 = extractvalue { ptr, i32 } %18, 0, !dbg !316
  store ptr %19, ptr %6, align 8, !dbg !316
  %20 = extractvalue { ptr, i32 } %18, 1, !dbg !316
  store i32 %20, ptr %7, align 4, !dbg !316
  call void @_ZN7threads16BarrierExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #7, !dbg !317
  br label %27, !dbg !317

21:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata ptr %8, metadata !318, metadata !DIExpression()), !dbg !320
  call void @_ZN7threads23BarrierUnknownExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #7, !dbg !320
  %22 = call ptr @__cxa_allocate_exception(i64 8) #7, !dbg !321
  call void @_ZN7threads23BarrierUnknownExceptionC2EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull align 8 dereferenceable(8) %8) #7, !dbg !322
  invoke void @__cxa_throw(ptr %22, ptr @_ZTIN7threads23BarrierUnknownExceptionE, ptr @_ZN7threads23BarrierUnknownExceptionD2Ev) #8
          to label %40 unwind label %23, !dbg !321

23:                                               ; preds = %21
  %24 = landingpad { ptr, i32 }
          cleanup
          filter [1 x ptr] [ptr @_ZTIN7threads16BarrierExceptionE], !dbg !323
  %25 = extractvalue { ptr, i32 } %24, 0, !dbg !323
  store ptr %25, ptr %6, align 8, !dbg !323
  %26 = extractvalue { ptr, i32 } %24, 1, !dbg !323
  store i32 %26, ptr %7, align 4, !dbg !323
  call void @_ZN7threads23BarrierUnknownExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #7, !dbg !324
  br label %27, !dbg !324

27:                                               ; preds = %23, %17
  %28 = load i32, ptr %7, align 4, !dbg !325
  %29 = icmp slt i32 %28, 0, !dbg !325
  br i1 %29, label %30, label %35, !dbg !325

30:                                               ; preds = %27
  %31 = load ptr, ptr %6, align 8, !dbg !325
  call void @__cxa_call_unexpected(ptr %31) #8, !dbg !325
  unreachable, !dbg !325

32:                                               ; preds = %13
  store i1 false, ptr %2, align 1, !dbg !326
  br label %33, !dbg !326

33:                                               ; preds = %32, %14
  %34 = load i1, ptr %2, align 1, !dbg !325
  ret i1 %34, !dbg !325

35:                                               ; preds = %27
  %36 = load ptr, ptr %6, align 8, !dbg !325
  %37 = load i32, ptr %7, align 4, !dbg !325
  %38 = insertvalue { ptr, i32 } poison, ptr %36, 0, !dbg !325
  %39 = insertvalue { ptr, i32 } %38, i32 %37, 1, !dbg !325
  resume { ptr, i32 } %39, !dbg !325

40:                                               ; preds = %21, %15
  unreachable
}

; Function Attrs: nounwind
declare i32 @pthread_barrier_wait(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7threads16BarrierExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 !dbg !327 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !332, metadata !DIExpression()), !dbg !334
  %3 = load ptr, ptr %2, align 8
  call void @_ZNSt9exceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #7, !dbg !335
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN7threads16BarrierExceptionE, i32 0, inrange i32 0, i32 2), ptr %3, align 8, !dbg !335
  ret void, !dbg !335
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7threads16BarrierExceptionC2EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 !dbg !336 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !341, metadata !DIExpression()), !dbg !342
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !343, metadata !DIExpression()), !dbg !342
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8, !dbg !344
  call void @_ZNSt9exceptionC2EOS_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) #7, !dbg !344
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN7threads16BarrierExceptionE, i32 0, inrange i32 0, i32 2), ptr %5, align 8, !dbg !344
  ret void, !dbg !344
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7threads16BarrierExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 !dbg !345 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !347, metadata !DIExpression()), !dbg !348
  %3 = load ptr, ptr %2, align 8
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #7, !dbg !349
  ret void, !dbg !351
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef i32 @_ZNK7threads7Barrier8nThreadsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #5 align 2 !dbg !352 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !353, metadata !DIExpression()), !dbg !355
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.threads::Barrier", ptr %3, i32 0, i32 1, !dbg !356
  %5 = load i32, ptr %4, align 8, !dbg !356
  ret i32 %5, !dbg !357
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7threads20BarrierInitExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 !dbg !358 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !359, metadata !DIExpression()), !dbg !360
  %3 = load ptr, ptr %2, align 8
  call void @_ZN7threads20BarrierInitExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #7, !dbg !361
  call void @_ZdlPv(ptr noundef %3) #9, !dbg !361
  ret void, !dbg !361
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7threads20BarrierInitException4whatEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 !dbg !362 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !363, metadata !DIExpression()), !dbg !365
  %3 = load ptr, ptr %2, align 8
  ret ptr @.str.1, !dbg !366
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt9exceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 !dbg !367 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !372, metadata !DIExpression()), !dbg !374
  %3 = load ptr, ptr %2, align 8
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVSt9exception, i32 0, inrange i32 0, i32 2), ptr %3, align 8, !dbg !375
  ret void, !dbg !376
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7threads16BarrierExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 !dbg !377 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !378, metadata !DIExpression()), !dbg !379
  %3 = load ptr, ptr %2, align 8
  call void @_ZN7threads16BarrierExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #7, !dbg !380
  call void @_ZdlPv(ptr noundef %3) #9, !dbg !380
  ret void, !dbg !380
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7threads16BarrierException4whatEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 !dbg !381 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !382, metadata !DIExpression()), !dbg !384
  %3 = load ptr, ptr %2, align 8
  ret ptr @.str, !dbg !385
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) #6

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt9exceptionC2EOS_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 !dbg !386 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !391, metadata !DIExpression()), !dbg !392
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !393, metadata !DIExpression()), !dbg !394
  %5 = load ptr, ptr %3, align 8
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVSt9exception, i32 0, inrange i32 0, i32 2), ptr %5, align 8, !dbg !395
  ret void, !dbg !395
}

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7threads24BarrierResourceExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 !dbg !396 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !397, metadata !DIExpression()), !dbg !398
  %3 = load ptr, ptr %2, align 8
  call void @_ZN7threads24BarrierResourceExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #7, !dbg !399
  call void @_ZdlPv(ptr noundef %3) #9, !dbg !399
  ret void, !dbg !399
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7threads24BarrierResourceException4whatEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 !dbg !400 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !401, metadata !DIExpression()), !dbg !403
  %3 = load ptr, ptr %2, align 8
  ret ptr @.str.2, !dbg !404
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7threads23BarrierUnknownExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 !dbg !405 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !406, metadata !DIExpression()), !dbg !407
  %3 = load ptr, ptr %2, align 8
  call void @_ZN7threads23BarrierUnknownExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #7, !dbg !408
  call void @_ZdlPv(ptr noundef %3) #9, !dbg !408
  ret void, !dbg !408
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7threads23BarrierUnknownException4whatEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 !dbg !409 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !410, metadata !DIExpression()), !dbg !412
  %3 = load ptr, ptr %2, align 8
  ret ptr @.str.3, !dbg !413
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7threads23BarrierDestroyExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 !dbg !414 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !415, metadata !DIExpression()), !dbg !416
  %3 = load ptr, ptr %2, align 8
  call void @_ZN7threads23BarrierDestroyExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #7, !dbg !417
  call void @_ZdlPv(ptr noundef %3) #9, !dbg !417
  ret void, !dbg !417
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7threads23BarrierDestroyException4whatEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 !dbg !418 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !419, metadata !DIExpression()), !dbg !421
  %3 = load ptr, ptr %2, align 8
  ret ptr @.str.4, !dbg !422
}

attributes #0 = { noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { noreturn }
attributes #9 = { builtin nounwind }

!llvm.dbg.cu = !{!28}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80, !81}
!llvm.ident = !{!82}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 33, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "../TrackingBenchmark/threads/Barrier.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/bodytrack/src/build", checksumkind: CSK_MD5, checksum: "b3eb2f8892fad8f7a524f53b8cd4784b")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !6)
!4 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !{!7}
!7 = !DISubrange(count: 26)
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(scope: null, file: !2, line: 39, type: !10, isLocal: true, isDefinition: true)
!10 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 360, elements: !11)
!11 = !{!12}
!12 = !DISubrange(count: 45)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(scope: null, file: !2, line: 51, type: !15, isLocal: true, isDefinition: true)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !16)
!16 = !{!17}
!17 = !DISubrange(count: 23)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(scope: null, file: !2, line: 57, type: !20, isLocal: true, isDefinition: true)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 14)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !2, line: 45, type: !25, isLocal: true, isDefinition: true)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 344, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 43)
!28 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !29, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !30, globals: !64, imports: !65, splitDebugInlining: false, nameTableKind: None)
!29 = !DIFile(filename: "../TrackingBenchmark/threads/Barrier.cpp", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/bodytrack/src/build", checksumkind: CSK_MD5, checksum: "f7ddac2d2a0bd15de4137c76cd44a4ca")
!30 = !{!31}
!31 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Barrier", scope: !32, file: !2, line: 61, size: 320, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !33, identifier: "_ZTSN7threads7BarrierE")
!32 = !DINamespace(name: "threads", scope: null)
!33 = !{!34, !45, !47, !51, !54, !58}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !31, file: !2, line: 73, baseType: !35, size: 256)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_barrier_t", file: !36, line: 112, baseType: !37)
!36 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!37 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !36, line: 108, size: 256, flags: DIFlagTypePassByValue, elements: !38, identifier: "_ZTS17pthread_barrier_t")
!38 = !{!39, !43}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !37, file: !36, line: 110, baseType: !40, size: 256)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 256, elements: !41)
!41 = !{!42}
!42 = !DISubrange(count: 32)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !37, file: !36, line: 111, baseType: !44, size: 64)
!44 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !31, file: !2, line: 81, baseType: !46, size: 32, offset: 256)
!46 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!47 = !DISubprogram(name: "Barrier", scope: !31, file: !2, line: 63, type: !48, scopeLine: 63, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!48 = !DISubroutineType(types: !49)
!49 = !{null, !50, !46}
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!51 = !DISubprogram(name: "~Barrier", scope: !31, file: !2, line: 64, type: !52, scopeLine: 64, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!52 = !DISubroutineType(types: !53)
!53 = !{null, !50}
!54 = !DISubprogram(name: "Wait", linkageName: "_ZN7threads7Barrier4WaitEv", scope: !31, file: !2, line: 67, type: !55, scopeLine: 67, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!55 = !DISubroutineType(types: !56)
!56 = !{!57, !50}
!57 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!58 = !DISubprogram(name: "nThreads", linkageName: "_ZNK7threads7Barrier8nThreadsEv", scope: !31, file: !2, line: 69, type: !59, scopeLine: 69, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!59 = !DISubroutineType(types: !60)
!60 = !{!61, !62}
!61 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!64 = !{!0, !8, !13, !18, !23}
!65 = !{!66, !71}
!66 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !67, entity: !68, file: !69, line: 68)
!67 = !DINamespace(name: "std", scope: null)
!68 = !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !70, file: !69, line: 90, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!69 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/exception_ptr.h", directory: "", checksumkind: CSK_MD5, checksum: "ed433011c81450fc2dabd9aa8a29a038")
!70 = !DINamespace(name: "__exception_ptr", scope: !67)
!71 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !70, entity: !72, file: !69, line: 84)
!72 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !67, file: !69, line: 80, type: !73, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!73 = !DISubroutineType(types: !74)
!74 = !{null, !68}
!75 = !{i32 7, !"Dwarf Version", i32 5}
!76 = !{i32 2, !"Debug Info Version", i32 3}
!77 = !{i32 1, !"wchar_size", i32 4}
!78 = !{i32 8, !"PIC Level", i32 2}
!79 = !{i32 7, !"PIE Level", i32 2}
!80 = !{i32 7, !"uwtable", i32 2}
!81 = !{i32 7, !"frame-pointer", i32 2}
!82 = !{!"clang version 16.0.0"}
!83 = distinct !DISubprogram(name: "Barrier", linkageName: "_ZN7threads7BarrierC2Ei", scope: !31, file: !29, line: 28, type: !48, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, declaration: !47, retainedNodes: !84)
!84 = !{}
!85 = !DILocalVariable(name: "this", arg: 1, scope: !83, type: !86, flags: DIFlagArtificial | DIFlagObjectPointer)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!87 = !DILocation(line: 0, scope: !83)
!88 = !DILocalVariable(name: "_n", arg: 2, scope: !83, file: !29, line: 28, type: !46)
!89 = !DILocation(line: 28, column: 22, scope: !83)
!90 = !DILocation(line: 28, column: 10, scope: !83)
!91 = !DILocalVariable(name: "rv", scope: !92, file: !29, line: 30, type: !46)
!92 = distinct !DILexicalBlock(scope: !83, file: !29, line: 28, column: 50)
!93 = !DILocation(line: 30, column: 7, scope: !92)
!94 = !DILocation(line: 32, column: 7, scope: !92)
!95 = !DILocation(line: 32, column: 3, scope: !92)
!96 = !DILocation(line: 32, column: 5, scope: !92)
!97 = !DILocation(line: 33, column: 30, scope: !92)
!98 = !DILocation(line: 33, column: 39, scope: !92)
!99 = !DILocation(line: 33, column: 8, scope: !92)
!100 = !DILocation(line: 33, column: 6, scope: !92)
!101 = !DILocation(line: 35, column: 10, scope: !92)
!102 = !DILocation(line: 35, column: 3, scope: !92)
!103 = !DILocation(line: 37, column: 7, scope: !104)
!104 = distinct !DILexicalBlock(scope: !92, file: !29, line: 35, column: 14)
!105 = !DILocalVariable(name: "e", scope: !106, file: !29, line: 41, type: !107)
!106 = distinct !DILexicalBlock(scope: !104, file: !29, line: 40, column: 5)
!107 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "BarrierInitException", scope: !32, file: !2, line: 37, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !108, vtableHolder: !113, identifier: "_ZTSN7threads20BarrierInitExceptionE")
!108 = !{!109, !121}
!109 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !107, baseType: !110, flags: DIFlagPublic, extraData: i32 0)
!110 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "BarrierException", scope: !32, file: !2, line: 31, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !111, vtableHolder: !113, identifier: "_ZTSN7threads16BarrierExceptionE")
!111 = !{!112, !115}
!112 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !110, baseType: !113, flags: DIFlagPublic, extraData: i32 0)
!113 = !DICompositeType(tag: DW_TAG_class_type, name: "exception", scope: !67, file: !114, line: 61, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial)
!114 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/exception.h", directory: "")
!115 = !DISubprogram(name: "what", linkageName: "_ZNK7threads16BarrierException4whatEv", scope: !110, file: !2, line: 33, type: !116, scopeLine: 33, containingType: !110, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!116 = !DISubroutineType(types: !117)
!117 = !{!118, !119}
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !110)
!121 = !DISubprogram(name: "what", linkageName: "_ZNK7threads20BarrierInitException4whatEv", scope: !107, file: !2, line: 39, type: !122, scopeLine: 39, containingType: !107, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!122 = !DISubroutineType(types: !123)
!123 = !{!118, !124}
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!125 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!126 = !DILocation(line: 41, column: 28, scope: !106)
!127 = !DILocation(line: 42, column: 7, scope: !106)
!128 = !DILocation(line: 42, column: 13, scope: !106)
!129 = !DILocation(line: 67, column: 1, scope: !106)
!130 = !DILocation(line: 44, column: 5, scope: !104)
!131 = !DILocalVariable(name: "e", scope: !132, file: !29, line: 48, type: !133)
!132 = distinct !DILexicalBlock(scope: !104, file: !29, line: 47, column: 5)
!133 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "BarrierResourceException", scope: !32, file: !2, line: 49, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !134, vtableHolder: !113, identifier: "_ZTSN7threads24BarrierResourceExceptionE")
!134 = !{!135, !136}
!135 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !133, baseType: !110, flags: DIFlagPublic, extraData: i32 0)
!136 = !DISubprogram(name: "what", linkageName: "_ZNK7threads24BarrierResourceException4whatEv", scope: !133, file: !2, line: 51, type: !137, scopeLine: 51, containingType: !133, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!137 = !DISubroutineType(types: !138)
!138 = !{!118, !139}
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !133)
!141 = !DILocation(line: 48, column: 32, scope: !132)
!142 = !DILocation(line: 49, column: 7, scope: !132)
!143 = !DILocation(line: 49, column: 13, scope: !132)
!144 = !DILocation(line: 67, column: 1, scope: !132)
!145 = !DILocation(line: 51, column: 5, scope: !104)
!146 = !DILocalVariable(name: "e", scope: !147, file: !29, line: 54, type: !148)
!147 = distinct !DILexicalBlock(scope: !104, file: !29, line: 53, column: 5)
!148 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "BarrierUnknownException", scope: !32, file: !2, line: 55, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !149, vtableHolder: !113, identifier: "_ZTSN7threads23BarrierUnknownExceptionE")
!149 = !{!150, !151}
!150 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !148, baseType: !110, flags: DIFlagPublic, extraData: i32 0)
!151 = !DISubprogram(name: "what", linkageName: "_ZNK7threads23BarrierUnknownException4whatEv", scope: !148, file: !2, line: 57, type: !152, scopeLine: 57, containingType: !148, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!152 = !DISubroutineType(types: !153)
!153 = !{!118, !154}
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !148)
!156 = !DILocation(line: 54, column: 31, scope: !147)
!157 = !DILocation(line: 55, column: 7, scope: !147)
!158 = !DILocation(line: 55, column: 13, scope: !147)
!159 = !DILocation(line: 67, column: 1, scope: !147)
!160 = !DILocation(line: 57, column: 5, scope: !104)
!161 = !DILocation(line: 67, column: 1, scope: !83)
!162 = distinct !DISubprogram(name: "BarrierInitException", linkageName: "_ZN7threads20BarrierInitExceptionC2Ev", scope: !107, file: !2, line: 37, type: !163, scopeLine: 37, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, declaration: !166, retainedNodes: !84)
!163 = !DISubroutineType(types: !164)
!164 = !{null, !165}
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!166 = !DISubprogram(name: "BarrierInitException", scope: !107, type: !163, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!167 = !DILocalVariable(name: "this", arg: 1, scope: !162, type: !168, flags: DIFlagArtificial | DIFlagObjectPointer)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!169 = !DILocation(line: 0, scope: !162)
!170 = !DILocation(line: 37, column: 7, scope: !162)
!171 = distinct !DISubprogram(name: "BarrierInitException", linkageName: "_ZN7threads20BarrierInitExceptionC2EOS0_", scope: !107, file: !2, line: 37, type: !172, scopeLine: 37, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, declaration: !175, retainedNodes: !84)
!172 = !DISubroutineType(types: !173)
!173 = !{null, !165, !174}
!174 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !107, size: 64)
!175 = !DISubprogram(name: "BarrierInitException", scope: !107, type: !172, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!176 = !DILocalVariable(name: "this", arg: 1, scope: !171, type: !168, flags: DIFlagArtificial | DIFlagObjectPointer)
!177 = !DILocation(line: 0, scope: !171)
!178 = !DILocalVariable(arg: 2, scope: !171, type: !174)
!179 = !DILocation(line: 37, column: 7, scope: !171)
!180 = distinct !DISubprogram(name: "~BarrierInitException", linkageName: "_ZN7threads20BarrierInitExceptionD2Ev", scope: !107, file: !2, line: 37, type: !163, scopeLine: 37, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, declaration: !181, retainedNodes: !84)
!181 = !DISubprogram(name: "~BarrierInitException", scope: !107, type: !163, containingType: !107, virtualIndex: 0, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!182 = !DILocalVariable(name: "this", arg: 1, scope: !180, type: !168, flags: DIFlagArtificial | DIFlagObjectPointer)
!183 = !DILocation(line: 0, scope: !180)
!184 = !DILocation(line: 37, column: 7, scope: !185)
!185 = distinct !DILexicalBlock(scope: !180, file: !2, line: 37, column: 7)
!186 = !DILocation(line: 37, column: 7, scope: !180)
!187 = distinct !DISubprogram(name: "BarrierResourceException", linkageName: "_ZN7threads24BarrierResourceExceptionC2Ev", scope: !133, file: !2, line: 49, type: !188, scopeLine: 49, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, declaration: !191, retainedNodes: !84)
!188 = !DISubroutineType(types: !189)
!189 = !{null, !190}
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!191 = !DISubprogram(name: "BarrierResourceException", scope: !133, type: !188, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!192 = !DILocalVariable(name: "this", arg: 1, scope: !187, type: !193, flags: DIFlagArtificial | DIFlagObjectPointer)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!194 = !DILocation(line: 0, scope: !187)
!195 = !DILocation(line: 49, column: 7, scope: !187)
!196 = distinct !DISubprogram(name: "BarrierResourceException", linkageName: "_ZN7threads24BarrierResourceExceptionC2EOS0_", scope: !133, file: !2, line: 49, type: !197, scopeLine: 49, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, declaration: !200, retainedNodes: !84)
!197 = !DISubroutineType(types: !198)
!198 = !{null, !190, !199}
!199 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !133, size: 64)
!200 = !DISubprogram(name: "BarrierResourceException", scope: !133, type: !197, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!201 = !DILocalVariable(name: "this", arg: 1, scope: !196, type: !193, flags: DIFlagArtificial | DIFlagObjectPointer)
!202 = !DILocation(line: 0, scope: !196)
!203 = !DILocalVariable(arg: 2, scope: !196, type: !199)
!204 = !DILocation(line: 49, column: 7, scope: !196)
!205 = distinct !DISubprogram(name: "~BarrierResourceException", linkageName: "_ZN7threads24BarrierResourceExceptionD2Ev", scope: !133, file: !2, line: 49, type: !188, scopeLine: 49, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, declaration: !206, retainedNodes: !84)
!206 = !DISubprogram(name: "~BarrierResourceException", scope: !133, type: !188, containingType: !133, virtualIndex: 0, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!207 = !DILocalVariable(name: "this", arg: 1, scope: !205, type: !193, flags: DIFlagArtificial | DIFlagObjectPointer)
!208 = !DILocation(line: 0, scope: !205)
!209 = !DILocation(line: 49, column: 7, scope: !210)
!210 = distinct !DILexicalBlock(scope: !205, file: !2, line: 49, column: 7)
!211 = !DILocation(line: 49, column: 7, scope: !205)
!212 = distinct !DISubprogram(name: "BarrierUnknownException", linkageName: "_ZN7threads23BarrierUnknownExceptionC2Ev", scope: !148, file: !2, line: 55, type: !213, scopeLine: 55, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, declaration: !216, retainedNodes: !84)
!213 = !DISubroutineType(types: !214)
!214 = !{null, !215}
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!216 = !DISubprogram(name: "BarrierUnknownException", scope: !148, type: !213, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!217 = !DILocalVariable(name: "this", arg: 1, scope: !212, type: !218, flags: DIFlagArtificial | DIFlagObjectPointer)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!219 = !DILocation(line: 0, scope: !212)
!220 = !DILocation(line: 55, column: 7, scope: !212)
!221 = distinct !DISubprogram(name: "BarrierUnknownException", linkageName: "_ZN7threads23BarrierUnknownExceptionC2EOS0_", scope: !148, file: !2, line: 55, type: !222, scopeLine: 55, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, declaration: !225, retainedNodes: !84)
!222 = !DISubroutineType(types: !223)
!223 = !{null, !215, !224}
!224 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !148, size: 64)
!225 = !DISubprogram(name: "BarrierUnknownException", scope: !148, type: !222, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!226 = !DILocalVariable(name: "this", arg: 1, scope: !221, type: !218, flags: DIFlagArtificial | DIFlagObjectPointer)
!227 = !DILocation(line: 0, scope: !221)
!228 = !DILocalVariable(arg: 2, scope: !221, type: !224)
!229 = !DILocation(line: 55, column: 7, scope: !221)
!230 = distinct !DISubprogram(name: "~BarrierUnknownException", linkageName: "_ZN7threads23BarrierUnknownExceptionD2Ev", scope: !148, file: !2, line: 55, type: !213, scopeLine: 55, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, declaration: !231, retainedNodes: !84)
!231 = !DISubprogram(name: "~BarrierUnknownException", scope: !148, type: !213, containingType: !148, virtualIndex: 0, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!232 = !DILocalVariable(name: "this", arg: 1, scope: !230, type: !218, flags: DIFlagArtificial | DIFlagObjectPointer)
!233 = !DILocation(line: 0, scope: !230)
!234 = !DILocation(line: 55, column: 7, scope: !235)
!235 = distinct !DILexicalBlock(scope: !230, file: !2, line: 55, column: 7)
!236 = !DILocation(line: 55, column: 7, scope: !230)
!237 = distinct !DISubprogram(name: "~Barrier", linkageName: "_ZN7threads7BarrierD2Ev", scope: !31, file: !29, line: 69, type: !52, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, declaration: !51, retainedNodes: !84)
!238 = !DILocalVariable(name: "this", arg: 1, scope: !237, type: !86, flags: DIFlagArtificial | DIFlagObjectPointer)
!239 = !DILocation(line: 0, scope: !237)
!240 = !DILocalVariable(name: "rv", scope: !241, file: !29, line: 71, type: !46)
!241 = distinct !DILexicalBlock(scope: !237, file: !29, line: 69, column: 45)
!242 = !DILocation(line: 71, column: 7, scope: !241)
!243 = !DILocation(line: 73, column: 33, scope: !241)
!244 = !DILocation(line: 73, column: 8, scope: !241)
!245 = !DILocation(line: 73, column: 6, scope: !241)
!246 = !DILocation(line: 75, column: 10, scope: !241)
!247 = !DILocation(line: 75, column: 3, scope: !241)
!248 = !DILocation(line: 77, column: 7, scope: !249)
!249 = distinct !DILexicalBlock(scope: !241, file: !29, line: 75, column: 14)
!250 = !DILocalVariable(name: "e", scope: !251, file: !29, line: 81, type: !252)
!251 = distinct !DILexicalBlock(scope: !249, file: !29, line: 80, column: 5)
!252 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "BarrierDestroyException", scope: !32, file: !2, line: 43, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !253, vtableHolder: !113, identifier: "_ZTSN7threads23BarrierDestroyExceptionE")
!253 = !{!254, !255}
!254 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !252, baseType: !110, flags: DIFlagPublic, extraData: i32 0)
!255 = !DISubprogram(name: "what", linkageName: "_ZNK7threads23BarrierDestroyException4whatEv", scope: !252, file: !2, line: 45, type: !256, scopeLine: 45, containingType: !252, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!256 = !DISubroutineType(types: !257)
!257 = !{!118, !258}
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !252)
!260 = !DILocation(line: 81, column: 31, scope: !251)
!261 = !DILocation(line: 82, column: 7, scope: !251)
!262 = !DILocation(line: 82, column: 13, scope: !251)
!263 = !DILocation(line: 97, column: 1, scope: !251)
!264 = !DILocation(line: 84, column: 5, scope: !249)
!265 = !DILocalVariable(name: "e", scope: !266, file: !29, line: 87, type: !148)
!266 = distinct !DILexicalBlock(scope: !249, file: !29, line: 86, column: 5)
!267 = !DILocation(line: 87, column: 31, scope: !266)
!268 = !DILocation(line: 88, column: 7, scope: !266)
!269 = !DILocation(line: 88, column: 13, scope: !266)
!270 = !DILocation(line: 97, column: 1, scope: !266)
!271 = !DILocation(line: 90, column: 5, scope: !249)
!272 = !DILocation(line: 97, column: 1, scope: !237)
!273 = distinct !DISubprogram(name: "BarrierDestroyException", linkageName: "_ZN7threads23BarrierDestroyExceptionC2Ev", scope: !252, file: !2, line: 43, type: !274, scopeLine: 43, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, declaration: !277, retainedNodes: !84)
!274 = !DISubroutineType(types: !275)
!275 = !{null, !276}
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!277 = !DISubprogram(name: "BarrierDestroyException", scope: !252, type: !274, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!278 = !DILocalVariable(name: "this", arg: 1, scope: !273, type: !279, flags: DIFlagArtificial | DIFlagObjectPointer)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!280 = !DILocation(line: 0, scope: !273)
!281 = !DILocation(line: 43, column: 7, scope: !273)
!282 = distinct !DISubprogram(name: "BarrierDestroyException", linkageName: "_ZN7threads23BarrierDestroyExceptionC2EOS0_", scope: !252, file: !2, line: 43, type: !283, scopeLine: 43, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, declaration: !286, retainedNodes: !84)
!283 = !DISubroutineType(types: !284)
!284 = !{null, !276, !285}
!285 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !252, size: 64)
!286 = !DISubprogram(name: "BarrierDestroyException", scope: !252, type: !283, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!287 = !DILocalVariable(name: "this", arg: 1, scope: !282, type: !279, flags: DIFlagArtificial | DIFlagObjectPointer)
!288 = !DILocation(line: 0, scope: !282)
!289 = !DILocalVariable(arg: 2, scope: !282, type: !285)
!290 = !DILocation(line: 43, column: 7, scope: !282)
!291 = distinct !DISubprogram(name: "~BarrierDestroyException", linkageName: "_ZN7threads23BarrierDestroyExceptionD2Ev", scope: !252, file: !2, line: 43, type: !274, scopeLine: 43, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, declaration: !292, retainedNodes: !84)
!292 = !DISubprogram(name: "~BarrierDestroyException", scope: !252, type: !274, containingType: !252, virtualIndex: 0, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!293 = !DILocalVariable(name: "this", arg: 1, scope: !291, type: !279, flags: DIFlagArtificial | DIFlagObjectPointer)
!294 = !DILocation(line: 0, scope: !291)
!295 = !DILocation(line: 43, column: 7, scope: !296)
!296 = distinct !DILexicalBlock(scope: !291, file: !2, line: 43, column: 7)
!297 = !DILocation(line: 43, column: 7, scope: !291)
!298 = distinct !DISubprogram(name: "Wait", linkageName: "_ZN7threads7Barrier4WaitEv", scope: !31, file: !29, line: 100, type: !55, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, declaration: !54, retainedNodes: !84)
!299 = !DILocalVariable(name: "this", arg: 1, scope: !298, type: !86, flags: DIFlagArtificial | DIFlagObjectPointer)
!300 = !DILocation(line: 0, scope: !298)
!301 = !DILocalVariable(name: "rv", scope: !298, file: !29, line: 102, type: !46)
!302 = !DILocation(line: 102, column: 7, scope: !298)
!303 = !DILocation(line: 104, column: 30, scope: !298)
!304 = !DILocation(line: 104, column: 8, scope: !298)
!305 = !DILocation(line: 104, column: 6, scope: !298)
!306 = !DILocation(line: 106, column: 10, scope: !298)
!307 = !DILocation(line: 106, column: 3, scope: !298)
!308 = !DILocation(line: 108, column: 7, scope: !309)
!309 = distinct !DILexicalBlock(scope: !298, file: !29, line: 106, column: 14)
!310 = !DILocation(line: 110, column: 7, scope: !309)
!311 = !DILocalVariable(name: "e", scope: !312, file: !29, line: 114, type: !110)
!312 = distinct !DILexicalBlock(scope: !309, file: !29, line: 113, column: 5)
!313 = !DILocation(line: 114, column: 24, scope: !312)
!314 = !DILocation(line: 115, column: 7, scope: !312)
!315 = !DILocation(line: 115, column: 13, scope: !312)
!316 = !DILocation(line: 164, column: 1, scope: !312)
!317 = !DILocation(line: 117, column: 5, scope: !309)
!318 = !DILocalVariable(name: "e", scope: !319, file: !29, line: 120, type: !148)
!319 = distinct !DILexicalBlock(scope: !309, file: !29, line: 119, column: 5)
!320 = !DILocation(line: 120, column: 31, scope: !319)
!321 = !DILocation(line: 121, column: 7, scope: !319)
!322 = !DILocation(line: 121, column: 13, scope: !319)
!323 = !DILocation(line: 164, column: 1, scope: !319)
!324 = !DILocation(line: 123, column: 5, scope: !309)
!325 = !DILocation(line: 164, column: 1, scope: !298)
!326 = !DILocation(line: 126, column: 3, scope: !298)
!327 = distinct !DISubprogram(name: "BarrierException", linkageName: "_ZN7threads16BarrierExceptionC2Ev", scope: !110, file: !2, line: 31, type: !328, scopeLine: 31, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, declaration: !331, retainedNodes: !84)
!328 = !DISubroutineType(types: !329)
!329 = !{null, !330}
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!331 = !DISubprogram(name: "BarrierException", scope: !110, type: !328, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!332 = !DILocalVariable(name: "this", arg: 1, scope: !327, type: !333, flags: DIFlagArtificial | DIFlagObjectPointer)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!334 = !DILocation(line: 0, scope: !327)
!335 = !DILocation(line: 31, column: 7, scope: !327)
!336 = distinct !DISubprogram(name: "BarrierException", linkageName: "_ZN7threads16BarrierExceptionC2EOS0_", scope: !110, file: !2, line: 31, type: !337, scopeLine: 31, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, declaration: !340, retainedNodes: !84)
!337 = !DISubroutineType(types: !338)
!338 = !{null, !330, !339}
!339 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !110, size: 64)
!340 = !DISubprogram(name: "BarrierException", scope: !110, type: !337, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!341 = !DILocalVariable(name: "this", arg: 1, scope: !336, type: !333, flags: DIFlagArtificial | DIFlagObjectPointer)
!342 = !DILocation(line: 0, scope: !336)
!343 = !DILocalVariable(arg: 2, scope: !336, type: !339)
!344 = !DILocation(line: 31, column: 7, scope: !336)
!345 = distinct !DISubprogram(name: "~BarrierException", linkageName: "_ZN7threads16BarrierExceptionD2Ev", scope: !110, file: !2, line: 31, type: !328, scopeLine: 31, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, declaration: !346, retainedNodes: !84)
!346 = !DISubprogram(name: "~BarrierException", scope: !110, type: !328, containingType: !110, virtualIndex: 0, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!347 = !DILocalVariable(name: "this", arg: 1, scope: !345, type: !333, flags: DIFlagArtificial | DIFlagObjectPointer)
!348 = !DILocation(line: 0, scope: !345)
!349 = !DILocation(line: 31, column: 7, scope: !350)
!350 = distinct !DILexicalBlock(scope: !345, file: !2, line: 31, column: 7)
!351 = !DILocation(line: 31, column: 7, scope: !345)
!352 = distinct !DISubprogram(name: "nThreads", linkageName: "_ZNK7threads7Barrier8nThreadsEv", scope: !31, file: !29, line: 166, type: !59, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, declaration: !58, retainedNodes: !84)
!353 = !DILocalVariable(name: "this", arg: 1, scope: !352, type: !354, flags: DIFlagArtificial | DIFlagObjectPointer)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!355 = !DILocation(line: 0, scope: !352)
!356 = !DILocation(line: 167, column: 10, scope: !352)
!357 = !DILocation(line: 167, column: 3, scope: !352)
!358 = distinct !DISubprogram(name: "~BarrierInitException", linkageName: "_ZN7threads20BarrierInitExceptionD0Ev", scope: !107, file: !2, line: 37, type: !163, scopeLine: 37, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, declaration: !181, retainedNodes: !84)
!359 = !DILocalVariable(name: "this", arg: 1, scope: !358, type: !168, flags: DIFlagArtificial | DIFlagObjectPointer)
!360 = !DILocation(line: 0, scope: !358)
!361 = !DILocation(line: 37, column: 7, scope: !358)
!362 = distinct !DISubprogram(name: "what", linkageName: "_ZNK7threads20BarrierInitException4whatEv", scope: !107, file: !2, line: 39, type: !122, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, declaration: !121, retainedNodes: !84)
!363 = !DILocalVariable(name: "this", arg: 1, scope: !362, type: !364, flags: DIFlagArtificial | DIFlagObjectPointer)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!365 = !DILocation(line: 0, scope: !362)
!366 = !DILocation(line: 39, column: 47, scope: !362)
!367 = distinct !DISubprogram(name: "exception", linkageName: "_ZNSt9exceptionC2Ev", scope: !113, file: !114, line: 64, type: !368, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, declaration: !371, retainedNodes: !84)
!368 = !DISubroutineType(types: !369)
!369 = !{null, !370}
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!371 = !DISubprogram(name: "exception", scope: !113, file: !114, line: 64, type: !368, scopeLine: 64, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!372 = !DILocalVariable(name: "this", arg: 1, scope: !367, type: !373, flags: DIFlagArtificial | DIFlagObjectPointer)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!374 = !DILocation(line: 0, scope: !367)
!375 = !DILocation(line: 64, column: 34, scope: !367)
!376 = !DILocation(line: 64, column: 36, scope: !367)
!377 = distinct !DISubprogram(name: "~BarrierException", linkageName: "_ZN7threads16BarrierExceptionD0Ev", scope: !110, file: !2, line: 31, type: !328, scopeLine: 31, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, declaration: !346, retainedNodes: !84)
!378 = !DILocalVariable(name: "this", arg: 1, scope: !377, type: !333, flags: DIFlagArtificial | DIFlagObjectPointer)
!379 = !DILocation(line: 0, scope: !377)
!380 = !DILocation(line: 31, column: 7, scope: !377)
!381 = distinct !DISubprogram(name: "what", linkageName: "_ZNK7threads16BarrierException4whatEv", scope: !110, file: !2, line: 33, type: !116, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, declaration: !115, retainedNodes: !84)
!382 = !DILocalVariable(name: "this", arg: 1, scope: !381, type: !383, flags: DIFlagArtificial | DIFlagObjectPointer)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!384 = !DILocation(line: 0, scope: !381)
!385 = !DILocation(line: 33, column: 47, scope: !381)
!386 = distinct !DISubprogram(name: "exception", linkageName: "_ZNSt9exceptionC2EOS_", scope: !113, file: !114, line: 69, type: !387, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, declaration: !390, retainedNodes: !84)
!387 = !DISubroutineType(types: !388)
!388 = !{null, !370, !389}
!389 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !113, size: 64)
!390 = !DISubprogram(name: "exception", scope: !113, file: !114, line: 69, type: !387, scopeLine: 69, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!391 = !DILocalVariable(name: "this", arg: 1, scope: !386, type: !373, flags: DIFlagArtificial | DIFlagObjectPointer)
!392 = !DILocation(line: 0, scope: !386)
!393 = !DILocalVariable(arg: 2, scope: !386, file: !114, line: 69, type: !389)
!394 = !DILocation(line: 69, column: 26, scope: !386)
!395 = !DILocation(line: 69, column: 36, scope: !386)
!396 = distinct !DISubprogram(name: "~BarrierResourceException", linkageName: "_ZN7threads24BarrierResourceExceptionD0Ev", scope: !133, file: !2, line: 49, type: !188, scopeLine: 49, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, declaration: !206, retainedNodes: !84)
!397 = !DILocalVariable(name: "this", arg: 1, scope: !396, type: !193, flags: DIFlagArtificial | DIFlagObjectPointer)
!398 = !DILocation(line: 0, scope: !396)
!399 = !DILocation(line: 49, column: 7, scope: !396)
!400 = distinct !DISubprogram(name: "what", linkageName: "_ZNK7threads24BarrierResourceException4whatEv", scope: !133, file: !2, line: 51, type: !137, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, declaration: !136, retainedNodes: !84)
!401 = !DILocalVariable(name: "this", arg: 1, scope: !400, type: !402, flags: DIFlagArtificial | DIFlagObjectPointer)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!403 = !DILocation(line: 0, scope: !400)
!404 = !DILocation(line: 51, column: 47, scope: !400)
!405 = distinct !DISubprogram(name: "~BarrierUnknownException", linkageName: "_ZN7threads23BarrierUnknownExceptionD0Ev", scope: !148, file: !2, line: 55, type: !213, scopeLine: 55, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, declaration: !231, retainedNodes: !84)
!406 = !DILocalVariable(name: "this", arg: 1, scope: !405, type: !218, flags: DIFlagArtificial | DIFlagObjectPointer)
!407 = !DILocation(line: 0, scope: !405)
!408 = !DILocation(line: 55, column: 7, scope: !405)
!409 = distinct !DISubprogram(name: "what", linkageName: "_ZNK7threads23BarrierUnknownException4whatEv", scope: !148, file: !2, line: 57, type: !152, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, declaration: !151, retainedNodes: !84)
!410 = !DILocalVariable(name: "this", arg: 1, scope: !409, type: !411, flags: DIFlagArtificial | DIFlagObjectPointer)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!412 = !DILocation(line: 0, scope: !409)
!413 = !DILocation(line: 57, column: 47, scope: !409)
!414 = distinct !DISubprogram(name: "~BarrierDestroyException", linkageName: "_ZN7threads23BarrierDestroyExceptionD0Ev", scope: !252, file: !2, line: 43, type: !274, scopeLine: 43, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, declaration: !292, retainedNodes: !84)
!415 = !DILocalVariable(name: "this", arg: 1, scope: !414, type: !279, flags: DIFlagArtificial | DIFlagObjectPointer)
!416 = !DILocation(line: 0, scope: !414)
!417 = !DILocation(line: 43, column: 7, scope: !414)
!418 = distinct !DISubprogram(name: "what", linkageName: "_ZNK7threads23BarrierDestroyException4whatEv", scope: !252, file: !2, line: 45, type: !256, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, declaration: !255, retainedNodes: !84)
!419 = !DILocalVariable(name: "this", arg: 1, scope: !418, type: !420, flags: DIFlagArtificial | DIFlagObjectPointer)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!421 = !DILocation(line: 0, scope: !418)
!422 = !DILocation(line: 45, column: 47, scope: !418)
