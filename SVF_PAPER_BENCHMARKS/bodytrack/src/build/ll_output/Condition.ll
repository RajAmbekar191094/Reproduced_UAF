; ModuleID = '../TrackingBenchmark/threads/Condition.cpp'
source_filename = "../TrackingBenchmark/threads/Condition.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.threads::Condition" = type { ptr, i32, i32, %union.pthread_cond_t }
%union.pthread_cond_t = type { %struct.__pthread_cond_s }
%struct.__pthread_cond_s = type { %union.__atomic_wide_counter, %union.__atomic_wide_counter, [2 x i32], [2 x i32], i32, i32, [2 x i32] }
%union.__atomic_wide_counter = type { i64 }
%"class.threads::Mutex" = type { %"class.threads::LockType", %union.pthread_mutex_t }
%"class.threads::LockType" = type { ptr }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }

$_ZN7threads21CondResourceExceptionC2Ev = comdat any

$_ZN7threads21CondResourceExceptionD2Ev = comdat any

$_ZN7threads17CondInitExceptionC2Ev = comdat any

$_ZN7threads17CondInitExceptionD2Ev = comdat any

$_ZN7threads20CondUnknownExceptionC2Ev = comdat any

$_ZN7threads20CondUnknownExceptionD2Ev = comdat any

$_ZN7threads20CondDestroyExceptionC2Ev = comdat any

$_ZN7threads20CondDestroyExceptionD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN7threads13CondExceptionC2Ev = comdat any

$_ZN7threads13CondExceptionD2Ev = comdat any

$_ZN7threads21MutexLockingExceptionC2Ev = comdat any

$_ZN7threads21MutexLockingExceptionD2Ev = comdat any

$_ZN7threads21CondResourceExceptionD0Ev = comdat any

$_ZNK7threads21CondResourceException4whatEv = comdat any

$_ZNSt9exceptionC2Ev = comdat any

$_ZN7threads13CondExceptionD0Ev = comdat any

$_ZNK7threads13CondException4whatEv = comdat any

$_ZN7threads17CondInitExceptionD0Ev = comdat any

$_ZNK7threads17CondInitException4whatEv = comdat any

$_ZN7threads20CondUnknownExceptionD0Ev = comdat any

$_ZNK7threads20CondUnknownException4whatEv = comdat any

$_ZN7threads20CondDestroyExceptionD0Ev = comdat any

$_ZNK7threads20CondDestroyException4whatEv = comdat any

$_ZN7threads14MutexExceptionC2Ev = comdat any

$_ZN7threads21MutexLockingExceptionD0Ev = comdat any

$_ZNK7threads21MutexLockingException4whatEv = comdat any

$_ZN7threads14MutexExceptionD2Ev = comdat any

$_ZN7threads14MutexExceptionD0Ev = comdat any

$_ZNK7threads14MutexException4whatEv = comdat any

$_ZTSN7threads21CondResourceExceptionE = comdat any

$_ZTSN7threads13CondExceptionE = comdat any

$_ZTIN7threads13CondExceptionE = comdat any

$_ZTIN7threads21CondResourceExceptionE = comdat any

$_ZTSN7threads17CondInitExceptionE = comdat any

$_ZTIN7threads17CondInitExceptionE = comdat any

$_ZTSN7threads20CondUnknownExceptionE = comdat any

$_ZTIN7threads20CondUnknownExceptionE = comdat any

$_ZTSN7threads20CondDestroyExceptionE = comdat any

$_ZTIN7threads20CondDestroyExceptionE = comdat any

$_ZTSN7threads21MutexLockingExceptionE = comdat any

$_ZTSN7threads14MutexExceptionE = comdat any

$_ZTIN7threads14MutexExceptionE = comdat any

$_ZTIN7threads21MutexLockingExceptionE = comdat any

$_ZTVN7threads21CondResourceExceptionE = comdat any

$_ZTVN7threads13CondExceptionE = comdat any

$_ZTVN7threads17CondInitExceptionE = comdat any

$_ZTVN7threads20CondUnknownExceptionE = comdat any

$_ZTVN7threads20CondDestroyExceptionE = comdat any

$_ZTVN7threads21MutexLockingExceptionE = comdat any

$_ZTVN7threads14MutexExceptionE = comdat any

@_ZTVN10__cxxabiv120__si_class_type_infoE = external global ptr
@_ZTSN7threads21CondResourceExceptionE = linkonce_odr dso_local constant [34 x i8] c"N7threads21CondResourceExceptionE\00", comdat, align 1
@_ZTSN7threads13CondExceptionE = linkonce_odr dso_local constant [26 x i8] c"N7threads13CondExceptionE\00", comdat, align 1
@_ZTISt9exception = external constant ptr
@_ZTIN7threads13CondExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7threads13CondExceptionE, ptr @_ZTISt9exception }, comdat, align 8
@_ZTIN7threads21CondResourceExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7threads21CondResourceExceptionE, ptr @_ZTIN7threads13CondExceptionE }, comdat, align 8
@_ZTSN7threads17CondInitExceptionE = linkonce_odr dso_local constant [30 x i8] c"N7threads17CondInitExceptionE\00", comdat, align 1
@_ZTIN7threads17CondInitExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7threads17CondInitExceptionE, ptr @_ZTIN7threads13CondExceptionE }, comdat, align 8
@_ZTSN7threads20CondUnknownExceptionE = linkonce_odr dso_local constant [33 x i8] c"N7threads20CondUnknownExceptionE\00", comdat, align 1
@_ZTIN7threads20CondUnknownExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7threads20CondUnknownExceptionE, ptr @_ZTIN7threads13CondExceptionE }, comdat, align 8
@_ZTSN7threads20CondDestroyExceptionE = linkonce_odr dso_local constant [33 x i8] c"N7threads20CondDestroyExceptionE\00", comdat, align 1
@_ZTIN7threads20CondDestroyExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7threads20CondDestroyExceptionE, ptr @_ZTIN7threads13CondExceptionE }, comdat, align 8
@_ZTSN7threads21MutexLockingExceptionE = linkonce_odr dso_local constant [34 x i8] c"N7threads21MutexLockingExceptionE\00", comdat, align 1
@_ZTSN7threads14MutexExceptionE = linkonce_odr dso_local constant [27 x i8] c"N7threads14MutexExceptionE\00", comdat, align 1
@_ZTIN7threads14MutexExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7threads14MutexExceptionE, ptr @_ZTISt9exception }, comdat, align 8
@_ZTIN7threads21MutexLockingExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7threads21MutexLockingExceptionE, ptr @_ZTIN7threads14MutexExceptionE }, comdat, align 8
@_ZTVN7threads21CondResourceExceptionE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7threads21CondResourceExceptionE, ptr @_ZN7threads21CondResourceExceptionD2Ev, ptr @_ZN7threads21CondResourceExceptionD0Ev, ptr @_ZNK7threads21CondResourceException4whatEv] }, comdat, align 8
@_ZTVN7threads13CondExceptionE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7threads13CondExceptionE, ptr @_ZN7threads13CondExceptionD2Ev, ptr @_ZN7threads13CondExceptionD0Ev, ptr @_ZNK7threads13CondException4whatEv] }, comdat, align 8
@_ZTVSt9exception = external unnamed_addr constant { [5 x ptr] }, align 8
@.str = private unnamed_addr constant [28 x i8] c"Unspecified condition error\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [23 x i8] c"Insufficient resources\00", align 1, !dbg !8
@_ZTVN7threads17CondInitExceptionE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7threads17CondInitExceptionE, ptr @_ZN7threads17CondInitExceptionD2Ev, ptr @_ZN7threads17CondInitExceptionD0Ev, ptr @_ZNK7threads17CondInitException4whatEv] }, comdat, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"Error initializing condition variable\00", align 1, !dbg !13
@_ZTVN7threads20CondUnknownExceptionE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7threads20CondUnknownExceptionE, ptr @_ZN7threads20CondUnknownExceptionD2Ev, ptr @_ZN7threads20CondUnknownExceptionD0Ev, ptr @_ZNK7threads20CondUnknownException4whatEv] }, comdat, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"Unknown error\00", align 1, !dbg !18
@_ZTVN7threads20CondDestroyExceptionE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7threads20CondDestroyExceptionE, ptr @_ZN7threads20CondDestroyExceptionD2Ev, ptr @_ZN7threads20CondDestroyExceptionD0Ev, ptr @_ZNK7threads20CondDestroyException4whatEv] }, comdat, align 8
@.str.4 = private unnamed_addr constant [36 x i8] c"Error destroying condition variable\00", align 1, !dbg !23
@_ZTVN7threads21MutexLockingExceptionE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7threads21MutexLockingExceptionE, ptr @_ZN7threads21MutexLockingExceptionD2Ev, ptr @_ZN7threads21MutexLockingExceptionD0Ev, ptr @_ZNK7threads21MutexLockingException4whatEv] }, comdat, align 8
@_ZTVN7threads14MutexExceptionE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7threads14MutexExceptionE, ptr @_ZN7threads14MutexExceptionD2Ev, ptr @_ZN7threads14MutexExceptionD0Ev, ptr @_ZNK7threads14MutexException4whatEv] }, comdat, align 8
@.str.5 = private unnamed_addr constant [24 x i8] c"Unspecified mutex error\00", align 1, !dbg !28

@_ZN7threads9ConditionC1ERNS_5MutexE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN7threads9ConditionC2ERNS_5MutexE
@_ZN7threads9ConditionD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN7threads9ConditionD2Ev

; Function Attrs: noinline optnone uwtable
define dso_local void @_ZN7threads9ConditionC2ERNS_5MutexE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 align 2 !dbg !115 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !117, metadata !DIExpression()), !dbg !119
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !120, metadata !DIExpression()), !dbg !121
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds %"class.threads::Condition", ptr %6, i32 0, i32 3, !dbg !122
  %8 = load ptr, ptr %4, align 8, !dbg !123
  %9 = getelementptr inbounds %"class.threads::Condition", ptr %6, i32 0, i32 0, !dbg !125
  store ptr %8, ptr %9, align 8, !dbg !126
  %10 = getelementptr inbounds %"class.threads::Condition", ptr %6, i32 0, i32 1, !dbg !127
  store i32 0, ptr %10, align 8, !dbg !128
  %11 = getelementptr inbounds %"class.threads::Condition", ptr %6, i32 0, i32 2, !dbg !129
  store i32 0, ptr %11, align 4, !dbg !130
  call void @llvm.dbg.declare(metadata ptr %5, metadata !131, metadata !DIExpression()), !dbg !132
  %12 = getelementptr inbounds %"class.threads::Condition", ptr %6, i32 0, i32 3, !dbg !133
  %13 = call i32 @pthread_cond_init(ptr noundef %12, ptr noundef null) #10, !dbg !134
  store i32 %13, ptr %5, align 4, !dbg !132
  %14 = load i32, ptr %5, align 4, !dbg !135
  %15 = icmp eq i32 %14, 11, !dbg !137
  br i1 %15, label %19, label %16, !dbg !138

16:                                               ; preds = %2
  %17 = load i32, ptr %5, align 4, !dbg !139
  %18 = icmp eq i32 %17, 12, !dbg !140
  br i1 %18, label %19, label %21, !dbg !141

19:                                               ; preds = %16, %2
  %20 = call ptr @__cxa_allocate_exception(i64 8) #10, !dbg !142
  call void @llvm.memset.p0.i64(ptr align 16 %20, i8 0, i64 8, i1 false), !dbg !143
  call void @_ZN7threads21CondResourceExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %20) #10, !dbg !143
  call void @__cxa_throw(ptr %20, ptr @_ZTIN7threads21CondResourceExceptionE, ptr @_ZN7threads21CondResourceExceptionD2Ev) #11, !dbg !142
  unreachable, !dbg !142

21:                                               ; preds = %16
  %22 = load i32, ptr %5, align 4, !dbg !144
  %23 = icmp eq i32 %22, 16, !dbg !146
  br i1 %23, label %27, label %24, !dbg !147

24:                                               ; preds = %21
  %25 = load i32, ptr %5, align 4, !dbg !148
  %26 = icmp eq i32 %25, 22, !dbg !149
  br i1 %26, label %27, label %29, !dbg !150

27:                                               ; preds = %24, %21
  %28 = call ptr @__cxa_allocate_exception(i64 8) #10, !dbg !151
  call void @llvm.memset.p0.i64(ptr align 16 %28, i8 0, i64 8, i1 false), !dbg !152
  call void @_ZN7threads17CondInitExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %28) #10, !dbg !152
  call void @__cxa_throw(ptr %28, ptr @_ZTIN7threads17CondInitExceptionE, ptr @_ZN7threads17CondInitExceptionD2Ev) #11, !dbg !151
  unreachable, !dbg !151

29:                                               ; preds = %24
  %30 = load i32, ptr %5, align 4, !dbg !153
  %31 = icmp ne i32 %30, 0, !dbg !155
  br i1 %31, label %32, label %34, !dbg !156

32:                                               ; preds = %29
  %33 = call ptr @__cxa_allocate_exception(i64 8) #10, !dbg !157
  call void @llvm.memset.p0.i64(ptr align 16 %33, i8 0, i64 8, i1 false), !dbg !158
  call void @_ZN7threads20CondUnknownExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %33) #10, !dbg !158
  call void @__cxa_throw(ptr %33, ptr @_ZTIN7threads20CondUnknownExceptionE, ptr @_ZN7threads20CondUnknownExceptionD2Ev) #11, !dbg !157
  unreachable, !dbg !157

34:                                               ; preds = %29
  br label %35

35:                                               ; preds = %34
  br label %36

36:                                               ; preds = %35
  ret void, !dbg !159
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i32 @pthread_cond_init(ptr noundef, ptr noundef) #2

declare ptr @__cxa_allocate_exception(i64)

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7threads21CondResourceExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !dbg !160 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !184, metadata !DIExpression()), !dbg !186
  %3 = load ptr, ptr %2, align 8
  call void @_ZN7threads13CondExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #10, !dbg !187
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN7threads21CondResourceExceptionE, i32 0, inrange i32 0, i32 2), ptr %3, align 8, !dbg !187
  ret void, !dbg !187
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7threads21CondResourceExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !dbg !188 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !190, metadata !DIExpression()), !dbg !191
  %3 = load ptr, ptr %2, align 8
  call void @_ZN7threads13CondExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #10, !dbg !192
  ret void, !dbg !194
}

declare void @__cxa_throw(ptr, ptr, ptr)

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7threads17CondInitExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !dbg !195 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !208, metadata !DIExpression()), !dbg !210
  %3 = load ptr, ptr %2, align 8
  call void @_ZN7threads13CondExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #10, !dbg !211
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN7threads17CondInitExceptionE, i32 0, inrange i32 0, i32 2), ptr %3, align 8, !dbg !211
  ret void, !dbg !211
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7threads17CondInitExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !dbg !212 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !214, metadata !DIExpression()), !dbg !215
  %3 = load ptr, ptr %2, align 8
  call void @_ZN7threads13CondExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #10, !dbg !216
  ret void, !dbg !218
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7threads20CondUnknownExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !dbg !219 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !232, metadata !DIExpression()), !dbg !234
  %3 = load ptr, ptr %2, align 8
  call void @_ZN7threads13CondExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #10, !dbg !235
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN7threads20CondUnknownExceptionE, i32 0, inrange i32 0, i32 2), ptr %3, align 8, !dbg !235
  ret void, !dbg !235
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7threads20CondUnknownExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !dbg !236 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !238, metadata !DIExpression()), !dbg !239
  %3 = load ptr, ptr %2, align 8
  call void @_ZN7threads13CondExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #10, !dbg !240
  ret void, !dbg !242
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_ZN7threads9ConditionD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !dbg !243 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !244, metadata !DIExpression()), !dbg !245
  %4 = load ptr, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !246, metadata !DIExpression()), !dbg !248
  %5 = getelementptr inbounds %"class.threads::Condition", ptr %4, i32 0, i32 3, !dbg !249
  %6 = call i32 @pthread_cond_destroy(ptr noundef %5) #10, !dbg !250
  store i32 %6, ptr %3, align 4, !dbg !248
  %7 = load i32, ptr %3, align 4, !dbg !251
  %8 = icmp eq i32 %7, 16, !dbg !253
  br i1 %8, label %12, label %9, !dbg !254

9:                                                ; preds = %1
  %10 = load i32, ptr %3, align 4, !dbg !255
  %11 = icmp eq i32 %10, 22, !dbg !256
  br i1 %11, label %12, label %14, !dbg !257

12:                                               ; preds = %9, %1
  %13 = call ptr @__cxa_allocate_exception(i64 8) #10, !dbg !258
  call void @llvm.memset.p0.i64(ptr align 16 %13, i8 0, i64 8, i1 false), !dbg !259
  call void @_ZN7threads20CondDestroyExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #10, !dbg !259
  invoke void @__cxa_throw(ptr %13, ptr @_ZTIN7threads20CondDestroyExceptionE, ptr @_ZN7threads20CondDestroyExceptionD2Ev) #11
          to label %24 unwind label %21, !dbg !258

14:                                               ; preds = %9
  %15 = load i32, ptr %3, align 4, !dbg !260
  %16 = icmp ne i32 %15, 0, !dbg !262
  br i1 %16, label %17, label %19, !dbg !263

17:                                               ; preds = %14
  %18 = call ptr @__cxa_allocate_exception(i64 8) #10, !dbg !264
  call void @llvm.memset.p0.i64(ptr align 16 %18, i8 0, i64 8, i1 false), !dbg !265
  call void @_ZN7threads20CondUnknownExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %18) #10, !dbg !265
  invoke void @__cxa_throw(ptr %18, ptr @_ZTIN7threads20CondUnknownExceptionE, ptr @_ZN7threads20CondUnknownExceptionD2Ev) #11
          to label %24 unwind label %21, !dbg !264

19:                                               ; preds = %14
  br label %20

20:                                               ; preds = %19
  ret void, !dbg !266

21:                                               ; preds = %17, %12
  %22 = landingpad { ptr, i32 }
          catch ptr null, !dbg !258
  %23 = extractvalue { ptr, i32 } %22, 0, !dbg !258
  call void @__clang_call_terminate(ptr %23) #12, !dbg !258
  unreachable, !dbg !258

24:                                               ; preds = %17, %12
  unreachable
}

; Function Attrs: nounwind
declare i32 @pthread_cond_destroy(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7threads20CondDestroyExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !dbg !267 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !280, metadata !DIExpression()), !dbg !282
  %3 = load ptr, ptr %2, align 8
  call void @_ZN7threads13CondExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #10, !dbg !283
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN7threads20CondDestroyExceptionE, i32 0, inrange i32 0, i32 2), ptr %3, align 8, !dbg !283
  ret void, !dbg !283
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7threads20CondDestroyExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !dbg !284 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !286, metadata !DIExpression()), !dbg !287
  %3 = load ptr, ptr %2, align 8
  call void @_ZN7threads13CondExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #10, !dbg !288
  ret void, !dbg !290
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) #5 comdat {
  %2 = call ptr @__cxa_begin_catch(ptr %0) #10
  call void @_ZSt9terminatev() #12
  unreachable
}

declare ptr @__cxa_begin_catch(ptr)

declare void @_ZSt9terminatev()

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef i32 @_ZN7threads9Condition9NotifyOneEv(ptr noundef nonnull align 8 dereferenceable(64) %0) #6 align 2 !dbg !291 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !292, metadata !DIExpression()), !dbg !293
  %5 = load ptr, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !294, metadata !DIExpression()), !dbg !295
  %6 = getelementptr inbounds %"class.threads::Condition", ptr %5, i32 0, i32 1, !dbg !296
  %7 = load i32, ptr %6, align 8, !dbg !296
  %8 = getelementptr inbounds %"class.threads::Condition", ptr %5, i32 0, i32 2, !dbg !297
  %9 = load i32, ptr %8, align 4, !dbg !297
  %10 = sub nsw i32 %7, %9, !dbg !298
  store i32 %10, ptr %3, align 4, !dbg !295
  %11 = load i32, ptr %3, align 4, !dbg !299
  %12 = icmp sgt i32 %11, 0, !dbg !301
  br i1 %12, label %13, label %30, !dbg !302

13:                                               ; preds = %1
  %14 = getelementptr inbounds %"class.threads::Condition", ptr %5, i32 0, i32 2, !dbg !303
  %15 = load i32, ptr %14, align 4, !dbg !305
  %16 = add nsw i32 %15, 1, !dbg !305
  store i32 %16, ptr %14, align 4, !dbg !305
  call void @llvm.dbg.declare(metadata ptr %4, metadata !306, metadata !DIExpression()), !dbg !307
  %17 = getelementptr inbounds %"class.threads::Condition", ptr %5, i32 0, i32 3, !dbg !308
  %18 = call i32 @pthread_cond_signal(ptr noundef %17) #10, !dbg !309
  store i32 %18, ptr %4, align 4, !dbg !307
  %19 = load i32, ptr %4, align 4, !dbg !310
  %20 = icmp eq i32 %19, 22, !dbg !312
  br i1 %20, label %21, label %23, !dbg !313

21:                                               ; preds = %13
  %22 = call ptr @__cxa_allocate_exception(i64 8) #10, !dbg !314
  call void @llvm.memset.p0.i64(ptr align 16 %22, i8 0, i64 8, i1 false), !dbg !315
  call void @_ZN7threads13CondExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %22) #10, !dbg !315
  call void @__cxa_throw(ptr %22, ptr @_ZTIN7threads13CondExceptionE, ptr @_ZN7threads13CondExceptionD2Ev) #11, !dbg !314
  unreachable, !dbg !314

23:                                               ; preds = %13
  %24 = load i32, ptr %4, align 4, !dbg !316
  %25 = icmp ne i32 %24, 0, !dbg !318
  br i1 %25, label %26, label %28, !dbg !319

26:                                               ; preds = %23
  %27 = call ptr @__cxa_allocate_exception(i64 8) #10, !dbg !320
  call void @llvm.memset.p0.i64(ptr align 16 %27, i8 0, i64 8, i1 false), !dbg !321
  call void @_ZN7threads20CondUnknownExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %27) #10, !dbg !321
  call void @__cxa_throw(ptr %27, ptr @_ZTIN7threads20CondUnknownExceptionE, ptr @_ZN7threads20CondUnknownExceptionD2Ev) #11, !dbg !320
  unreachable, !dbg !320

28:                                               ; preds = %23
  br label %29

29:                                               ; preds = %28
  br label %30, !dbg !322

30:                                               ; preds = %29, %1
  %31 = load i32, ptr %3, align 4, !dbg !323
  ret i32 %31, !dbg !324
}

; Function Attrs: nounwind
declare i32 @pthread_cond_signal(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7threads13CondExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !dbg !325 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !330, metadata !DIExpression()), !dbg !332
  %3 = load ptr, ptr %2, align 8
  call void @_ZNSt9exceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #10, !dbg !333
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN7threads13CondExceptionE, i32 0, inrange i32 0, i32 2), ptr %3, align 8, !dbg !333
  ret void, !dbg !333
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7threads13CondExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !dbg !334 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !336, metadata !DIExpression()), !dbg !337
  %3 = load ptr, ptr %2, align 8
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #10, !dbg !338
  ret void, !dbg !340
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef i32 @_ZN7threads9Condition9NotifyAllEv(ptr noundef nonnull align 8 dereferenceable(64) %0) #6 align 2 !dbg !341 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !342, metadata !DIExpression()), !dbg !343
  %5 = load ptr, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !344, metadata !DIExpression()), !dbg !345
  %6 = getelementptr inbounds %"class.threads::Condition", ptr %5, i32 0, i32 1, !dbg !346
  %7 = load i32, ptr %6, align 8, !dbg !346
  %8 = getelementptr inbounds %"class.threads::Condition", ptr %5, i32 0, i32 2, !dbg !347
  %9 = load i32, ptr %8, align 4, !dbg !347
  %10 = sub nsw i32 %7, %9, !dbg !348
  store i32 %10, ptr %3, align 4, !dbg !345
  %11 = load i32, ptr %3, align 4, !dbg !349
  %12 = icmp sgt i32 %11, 0, !dbg !351
  br i1 %12, label %13, label %30, !dbg !352

13:                                               ; preds = %1
  %14 = getelementptr inbounds %"class.threads::Condition", ptr %5, i32 0, i32 1, !dbg !353
  %15 = load i32, ptr %14, align 8, !dbg !353
  %16 = getelementptr inbounds %"class.threads::Condition", ptr %5, i32 0, i32 2, !dbg !355
  store i32 %15, ptr %16, align 4, !dbg !356
  call void @llvm.dbg.declare(metadata ptr %4, metadata !357, metadata !DIExpression()), !dbg !358
  %17 = getelementptr inbounds %"class.threads::Condition", ptr %5, i32 0, i32 3, !dbg !359
  %18 = call i32 @pthread_cond_broadcast(ptr noundef %17) #10, !dbg !360
  store i32 %18, ptr %4, align 4, !dbg !358
  %19 = load i32, ptr %4, align 4, !dbg !361
  %20 = icmp eq i32 %19, 22, !dbg !363
  br i1 %20, label %21, label %23, !dbg !364

21:                                               ; preds = %13
  %22 = call ptr @__cxa_allocate_exception(i64 8) #10, !dbg !365
  call void @llvm.memset.p0.i64(ptr align 16 %22, i8 0, i64 8, i1 false), !dbg !366
  call void @_ZN7threads13CondExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %22) #10, !dbg !366
  call void @__cxa_throw(ptr %22, ptr @_ZTIN7threads13CondExceptionE, ptr @_ZN7threads13CondExceptionD2Ev) #11, !dbg !365
  unreachable, !dbg !365

23:                                               ; preds = %13
  %24 = load i32, ptr %4, align 4, !dbg !367
  %25 = icmp ne i32 %24, 0, !dbg !369
  br i1 %25, label %26, label %28, !dbg !370

26:                                               ; preds = %23
  %27 = call ptr @__cxa_allocate_exception(i64 8) #10, !dbg !371
  call void @llvm.memset.p0.i64(ptr align 16 %27, i8 0, i64 8, i1 false), !dbg !372
  call void @_ZN7threads20CondUnknownExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %27) #10, !dbg !372
  call void @__cxa_throw(ptr %27, ptr @_ZTIN7threads20CondUnknownExceptionE, ptr @_ZN7threads20CondUnknownExceptionD2Ev) #11, !dbg !371
  unreachable, !dbg !371

28:                                               ; preds = %23
  br label %29

29:                                               ; preds = %28
  br label %30, !dbg !373

30:                                               ; preds = %29, %1
  %31 = load i32, ptr %3, align 4, !dbg !374
  ret i32 %31, !dbg !375
}

; Function Attrs: nounwind
declare i32 @pthread_cond_broadcast(ptr noundef) #2

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN7threads9Condition4WaitEv(ptr noundef nonnull align 8 dereferenceable(64) %0) #6 align 2 !dbg !376 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !377, metadata !DIExpression()), !dbg !378
  %4 = load ptr, ptr %2, align 8
  %5 = getelementptr inbounds %"class.threads::Condition", ptr %4, i32 0, i32 1, !dbg !379
  %6 = load i32, ptr %5, align 8, !dbg !380
  %7 = add nsw i32 %6, 1, !dbg !380
  store i32 %7, ptr %5, align 8, !dbg !380
  br label %8, !dbg !381

8:                                                ; preds = %34, %1
  %9 = getelementptr inbounds %"class.threads::Condition", ptr %4, i32 0, i32 2, !dbg !382
  %10 = load i32, ptr %9, align 4, !dbg !382
  %11 = icmp eq i32 %10, 0, !dbg !383
  br i1 %11, label %12, label %35, !dbg !381

12:                                               ; preds = %8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !384, metadata !DIExpression()), !dbg !386
  %13 = getelementptr inbounds %"class.threads::Condition", ptr %4, i32 0, i32 3, !dbg !387
  %14 = getelementptr inbounds %"class.threads::Condition", ptr %4, i32 0, i32 0, !dbg !388
  %15 = load ptr, ptr %14, align 8, !dbg !388
  %16 = getelementptr inbounds %"class.threads::Mutex", ptr %15, i32 0, i32 1, !dbg !389
  %17 = call i32 @pthread_cond_wait(ptr noundef %13, ptr noundef %16), !dbg !390
  store i32 %17, ptr %3, align 4, !dbg !386
  %18 = load i32, ptr %3, align 4, !dbg !391
  %19 = icmp eq i32 %18, 22, !dbg !393
  br i1 %19, label %20, label %22, !dbg !394

20:                                               ; preds = %12
  %21 = call ptr @__cxa_allocate_exception(i64 8) #10, !dbg !395
  call void @llvm.memset.p0.i64(ptr align 16 %21, i8 0, i64 8, i1 false), !dbg !396
  call void @_ZN7threads13CondExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %21) #10, !dbg !396
  call void @__cxa_throw(ptr %21, ptr @_ZTIN7threads13CondExceptionE, ptr @_ZN7threads13CondExceptionD2Ev) #11, !dbg !395
  unreachable, !dbg !395

22:                                               ; preds = %12
  %23 = load i32, ptr %3, align 4, !dbg !397
  %24 = icmp eq i32 %23, 1, !dbg !399
  br i1 %24, label %25, label %27, !dbg !400

25:                                               ; preds = %22
  %26 = call ptr @__cxa_allocate_exception(i64 8) #10, !dbg !401
  call void @llvm.memset.p0.i64(ptr align 16 %26, i8 0, i64 8, i1 false), !dbg !402
  call void @_ZN7threads21MutexLockingExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %26) #10, !dbg !402
  call void @__cxa_throw(ptr %26, ptr @_ZTIN7threads21MutexLockingExceptionE, ptr @_ZN7threads21MutexLockingExceptionD2Ev) #11, !dbg !401
  unreachable, !dbg !401

27:                                               ; preds = %22
  %28 = load i32, ptr %3, align 4, !dbg !403
  %29 = icmp ne i32 %28, 0, !dbg !405
  br i1 %29, label %30, label %32, !dbg !406

30:                                               ; preds = %27
  %31 = call ptr @__cxa_allocate_exception(i64 8) #10, !dbg !407
  call void @llvm.memset.p0.i64(ptr align 16 %31, i8 0, i64 8, i1 false), !dbg !408
  call void @_ZN7threads20CondUnknownExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %31) #10, !dbg !408
  call void @__cxa_throw(ptr %31, ptr @_ZTIN7threads20CondUnknownExceptionE, ptr @_ZN7threads20CondUnknownExceptionD2Ev) #11, !dbg !407
  unreachable, !dbg !407

32:                                               ; preds = %27
  br label %33

33:                                               ; preds = %32
  br label %34

34:                                               ; preds = %33
  br label %8, !dbg !381, !llvm.loop !409

35:                                               ; preds = %8
  %36 = getelementptr inbounds %"class.threads::Condition", ptr %4, i32 0, i32 2, !dbg !412
  %37 = load i32, ptr %36, align 4, !dbg !413
  %38 = add nsw i32 %37, -1, !dbg !413
  store i32 %38, ptr %36, align 4, !dbg !413
  %39 = getelementptr inbounds %"class.threads::Condition", ptr %4, i32 0, i32 1, !dbg !414
  %40 = load i32, ptr %39, align 8, !dbg !415
  %41 = add nsw i32 %40, -1, !dbg !415
  store i32 %41, ptr %39, align 8, !dbg !415
  ret void, !dbg !416
}

declare i32 @pthread_cond_wait(ptr noundef, ptr noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7threads21MutexLockingExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !dbg !417 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !438, metadata !DIExpression()), !dbg !440
  %3 = load ptr, ptr %2, align 8
  call void @_ZN7threads14MutexExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #10, !dbg !441
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN7threads21MutexLockingExceptionE, i32 0, inrange i32 0, i32 2), ptr %3, align 8, !dbg !441
  ret void, !dbg !441
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7threads21MutexLockingExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !dbg !442 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !444, metadata !DIExpression()), !dbg !445
  %3 = load ptr, ptr %2, align 8
  call void @_ZN7threads14MutexExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #10, !dbg !446
  ret void, !dbg !448
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7threads21CondResourceExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !dbg !449 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !450, metadata !DIExpression()), !dbg !451
  %3 = load ptr, ptr %2, align 8
  call void @_ZN7threads21CondResourceExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #10, !dbg !452
  call void @_ZdlPv(ptr noundef %3) #13, !dbg !452
  ret void, !dbg !452
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7threads21CondResourceException4whatEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 comdat align 2 !dbg !453 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !454, metadata !DIExpression()), !dbg !456
  %3 = load ptr, ptr %2, align 8
  ret ptr @.str.1, !dbg !457
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt9exceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !dbg !458 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !463, metadata !DIExpression()), !dbg !465
  %3 = load ptr, ptr %2, align 8
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVSt9exception, i32 0, inrange i32 0, i32 2), ptr %3, align 8, !dbg !466
  ret void, !dbg !467
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7threads13CondExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !dbg !468 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !469, metadata !DIExpression()), !dbg !470
  %3 = load ptr, ptr %2, align 8
  call void @_ZN7threads13CondExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #10, !dbg !471
  call void @_ZdlPv(ptr noundef %3) #13, !dbg !471
  ret void, !dbg !471
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7threads13CondException4whatEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 comdat align 2 !dbg !472 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !473, metadata !DIExpression()), !dbg !475
  %3 = load ptr, ptr %2, align 8
  ret ptr @.str, !dbg !476
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) #9

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7threads17CondInitExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !dbg !477 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !478, metadata !DIExpression()), !dbg !479
  %3 = load ptr, ptr %2, align 8
  call void @_ZN7threads17CondInitExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #10, !dbg !480
  call void @_ZdlPv(ptr noundef %3) #13, !dbg !480
  ret void, !dbg !480
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7threads17CondInitException4whatEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 comdat align 2 !dbg !481 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !482, metadata !DIExpression()), !dbg !484
  %3 = load ptr, ptr %2, align 8
  ret ptr @.str.2, !dbg !485
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7threads20CondUnknownExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !dbg !486 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !487, metadata !DIExpression()), !dbg !488
  %3 = load ptr, ptr %2, align 8
  call void @_ZN7threads20CondUnknownExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #10, !dbg !489
  call void @_ZdlPv(ptr noundef %3) #13, !dbg !489
  ret void, !dbg !489
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7threads20CondUnknownException4whatEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 comdat align 2 !dbg !490 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !491, metadata !DIExpression()), !dbg !493
  %3 = load ptr, ptr %2, align 8
  ret ptr @.str.3, !dbg !494
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7threads20CondDestroyExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !dbg !495 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !496, metadata !DIExpression()), !dbg !497
  %3 = load ptr, ptr %2, align 8
  call void @_ZN7threads20CondDestroyExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #10, !dbg !498
  call void @_ZdlPv(ptr noundef %3) #13, !dbg !498
  ret void, !dbg !498
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7threads20CondDestroyException4whatEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 comdat align 2 !dbg !499 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !500, metadata !DIExpression()), !dbg !502
  %3 = load ptr, ptr %2, align 8
  ret ptr @.str.4, !dbg !503
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7threads14MutexExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !dbg !504 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !509, metadata !DIExpression()), !dbg !511
  %3 = load ptr, ptr %2, align 8
  call void @_ZNSt9exceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #10, !dbg !512
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN7threads14MutexExceptionE, i32 0, inrange i32 0, i32 2), ptr %3, align 8, !dbg !512
  ret void, !dbg !512
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7threads21MutexLockingExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !dbg !513 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !514, metadata !DIExpression()), !dbg !515
  %3 = load ptr, ptr %2, align 8
  call void @_ZN7threads21MutexLockingExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #10, !dbg !516
  call void @_ZdlPv(ptr noundef %3) #13, !dbg !516
  ret void, !dbg !516
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7threads21MutexLockingException4whatEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 comdat align 2 !dbg !517 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !518, metadata !DIExpression()), !dbg !520
  %3 = load ptr, ptr %2, align 8
  ret ptr @.str.5, !dbg !521
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7threads14MutexExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !dbg !522 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !524, metadata !DIExpression()), !dbg !525
  %3 = load ptr, ptr %2, align 8
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #10, !dbg !526
  ret void, !dbg !528
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7threads14MutexExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !dbg !529 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !530, metadata !DIExpression()), !dbg !531
  %3 = load ptr, ptr %2, align 8
  call void @_ZN7threads14MutexExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #10, !dbg !532
  call void @_ZdlPv(ptr noundef %3) #13, !dbg !532
  ret void, !dbg !532
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7threads14MutexException4whatEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 comdat align 2 !dbg !533 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !534, metadata !DIExpression()), !dbg !536
  %3 = load ptr, ptr %2, align 8
  ret ptr @.str.5, !dbg !537
}

attributes #0 = { noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { noreturn }
attributes #12 = { noreturn nounwind }
attributes #13 = { builtin nounwind }

!llvm.dbg.cu = !{!34}
!llvm.module.flags = !{!107, !108, !109, !110, !111, !112, !113}
!llvm.ident = !{!114}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 122, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "../TrackingBenchmark/threads/Condition.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/bodytrack/src/build", checksumkind: CSK_MD5, checksum: "5c461aeffe3d0cacdbc53bc337eec88a")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !6)
!4 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !{!7}
!7 = !DISubrange(count: 28)
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(scope: null, file: !2, line: 137, type: !10, isLocal: true, isDefinition: true)
!10 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !11)
!11 = !{!12}
!12 = !DISubrange(count: 23)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(scope: null, file: !2, line: 127, type: !15, isLocal: true, isDefinition: true)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !16)
!16 = !{!17}
!17 = !DISubrange(count: 38)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(scope: null, file: !2, line: 142, type: !20, isLocal: true, isDefinition: true)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 14)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !2, line: 132, type: !25, isLocal: true, isDefinition: true)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 36)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(scope: null, file: !30, line: 37, type: !31, isLocal: true, isDefinition: true)
!30 = !DIFile(filename: "../TrackingBenchmark/threads/Mutex.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/bodytrack/src/build", checksumkind: CSK_MD5, checksum: "f0ed03367cbf8cde9f14e92e6c75d4c7")
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 24)
!34 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !35, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !36, globals: !96, imports: !97, splitDebugInlining: false, nameTableKind: None)
!35 = !DIFile(filename: "../TrackingBenchmark/threads/Condition.cpp", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/bodytrack/src/build", checksumkind: CSK_MD5, checksum: "aa48de9d4b328caa73c3dd33ecaffadb")
!36 = !{!37}
!37 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Condition", scope: !38, file: !2, line: 146, size: 512, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !39, identifier: "_ZTSN7threads9ConditionE")
!38 = !DINamespace(name: "threads", scope: null)
!39 = !{!40, !43, !45, !46, !83, !88, !91, !94, !95}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "M", scope: !37, file: !2, line: 156, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DICompositeType(tag: DW_TAG_class_type, name: "Mutex", scope: !38, file: !30, line: 85, size: 384, flags: DIFlagFwdDecl | DIFlagNonTrivial)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "nWaiting", scope: !37, file: !2, line: 157, baseType: !44, size: 32, offset: 64)
!44 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "nWakeupTickets", scope: !37, file: !2, line: 158, baseType: !44, size: 32, offset: 96)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !37, file: !2, line: 159, baseType: !47, size: 384, offset: 128)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_cond_t", file: !48, line: 80, baseType: !49)
!48 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!49 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !48, line: 75, size: 384, flags: DIFlagTypePassByValue, elements: !50, identifier: "_ZTS14pthread_cond_t")
!50 = !{!51, !77, !81}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !49, file: !48, line: 77, baseType: !52, size: 384)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_cond_s", file: !53, line: 94, size: 384, flags: DIFlagTypePassByValue, elements: !54, identifier: "_ZTS16__pthread_cond_s")
!53 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "04c81e86d34dad9c99ad006d32e47a0d")
!54 = !{!55, !68, !69, !73, !74, !75, !76}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "__wseq", scope: !52, file: !53, line: 96, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "__atomic_wide_counter", file: !57, line: 33, baseType: !58)
!57 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/atomic_wide_counter.h", directory: "", checksumkind: CSK_MD5, checksum: "2708e6e61e266abad2d765ccef838dbe")
!58 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !57, line: 25, size: 64, flags: DIFlagTypePassByValue, elements: !59, identifier: "_ZTS21__atomic_wide_counter")
!59 = !{!60, !62}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "__value64", scope: !58, file: !57, line: 27, baseType: !61, size: 64)
!61 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "__value32", scope: !58, file: !57, line: 32, baseType: !63, size: 64)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !58, file: !57, line: 28, size: 64, flags: DIFlagTypePassByValue, elements: !64, identifier: "_ZTSN21__atomic_wide_counterUt_E")
!64 = !{!65, !67}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "__low", scope: !63, file: !57, line: 30, baseType: !66, size: 32)
!66 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "__high", scope: !63, file: !57, line: 31, baseType: !66, size: 32, offset: 32)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_start", scope: !52, file: !53, line: 97, baseType: !56, size: 64, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "__g_refs", scope: !52, file: !53, line: 98, baseType: !70, size: 64, offset: 128)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 64, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 2)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "__g_size", scope: !52, file: !53, line: 99, baseType: !70, size: 64, offset: 192)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_orig_size", scope: !52, file: !53, line: 100, baseType: !66, size: 32, offset: 256)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "__wrefs", scope: !52, file: !53, line: 101, baseType: !66, size: 32, offset: 288)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "__g_signals", scope: !52, file: !53, line: 102, baseType: !70, size: 64, offset: 320)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !49, file: !48, line: 78, baseType: !78, size: 384)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 384, elements: !79)
!79 = !{!80}
!80 = !DISubrange(count: 48)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !49, file: !48, line: 79, baseType: !82, size: 64)
!82 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!83 = !DISubprogram(name: "Condition", scope: !37, file: !2, line: 148, type: !84, scopeLine: 148, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!84 = !DISubroutineType(types: !85)
!85 = !{null, !86, !87}
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!87 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !42, size: 64)
!88 = !DISubprogram(name: "~Condition", scope: !37, file: !2, line: 149, type: !89, scopeLine: 149, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!89 = !DISubroutineType(types: !90)
!90 = !{null, !86}
!91 = !DISubprogram(name: "NotifyOne", linkageName: "_ZN7threads9Condition9NotifyOneEv", scope: !37, file: !2, line: 151, type: !92, scopeLine: 151, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!92 = !DISubroutineType(types: !93)
!93 = !{!44, !86}
!94 = !DISubprogram(name: "NotifyAll", linkageName: "_ZN7threads9Condition9NotifyAllEv", scope: !37, file: !2, line: 152, type: !92, scopeLine: 152, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!95 = !DISubprogram(name: "Wait", linkageName: "_ZN7threads9Condition4WaitEv", scope: !37, file: !2, line: 153, type: !89, scopeLine: 153, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!96 = !{!0, !8, !13, !18, !23, !28}
!97 = !{!98, !103}
!98 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !99, entity: !100, file: !101, line: 68)
!99 = !DINamespace(name: "std", scope: null)
!100 = !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !102, file: !101, line: 90, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!101 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/exception_ptr.h", directory: "", checksumkind: CSK_MD5, checksum: "ed433011c81450fc2dabd9aa8a29a038")
!102 = !DINamespace(name: "__exception_ptr", scope: !99)
!103 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !102, entity: !104, file: !101, line: 84)
!104 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !99, file: !101, line: 80, type: !105, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!105 = !DISubroutineType(types: !106)
!106 = !{null, !100}
!107 = !{i32 7, !"Dwarf Version", i32 5}
!108 = !{i32 2, !"Debug Info Version", i32 3}
!109 = !{i32 1, !"wchar_size", i32 4}
!110 = !{i32 8, !"PIC Level", i32 2}
!111 = !{i32 7, !"PIE Level", i32 2}
!112 = !{i32 7, !"uwtable", i32 2}
!113 = !{i32 7, !"frame-pointer", i32 2}
!114 = !{!"clang version 16.0.0"}
!115 = distinct !DISubprogram(name: "Condition", linkageName: "_ZN7threads9ConditionC2ERNS_5MutexE", scope: !37, file: !35, line: 284, type: !84, scopeLine: 284, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, declaration: !83, retainedNodes: !116)
!116 = !{}
!117 = !DILocalVariable(name: "this", arg: 1, scope: !115, type: !118, flags: DIFlagArtificial | DIFlagObjectPointer)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!119 = !DILocation(line: 0, scope: !115)
!120 = !DILocalVariable(name: "_M", arg: 2, scope: !115, file: !35, line: 284, type: !87)
!121 = !DILocation(line: 284, column: 29, scope: !115)
!122 = !DILocation(line: 284, column: 12, scope: !115)
!123 = !DILocation(line: 285, column: 10, scope: !124)
!124 = distinct !DILexicalBlock(scope: !115, file: !35, line: 284, column: 33)
!125 = !DILocation(line: 285, column: 5, scope: !124)
!126 = !DILocation(line: 285, column: 7, scope: !124)
!127 = !DILocation(line: 286, column: 5, scope: !124)
!128 = !DILocation(line: 286, column: 14, scope: !124)
!129 = !DILocation(line: 287, column: 5, scope: !124)
!130 = !DILocation(line: 287, column: 20, scope: !124)
!131 = !DILocalVariable(name: "rv", scope: !124, file: !35, line: 289, type: !44)
!132 = !DILocation(line: 289, column: 9, scope: !124)
!133 = !DILocation(line: 289, column: 33, scope: !124)
!134 = !DILocation(line: 289, column: 14, scope: !124)
!135 = !DILocation(line: 290, column: 9, scope: !136)
!136 = distinct !DILexicalBlock(scope: !124, file: !35, line: 290, column: 9)
!137 = !DILocation(line: 290, column: 12, scope: !136)
!138 = !DILocation(line: 290, column: 22, scope: !136)
!139 = !DILocation(line: 290, column: 25, scope: !136)
!140 = !DILocation(line: 290, column: 28, scope: !136)
!141 = !DILocation(line: 290, column: 9, scope: !124)
!142 = !DILocation(line: 291, column: 9, scope: !136)
!143 = !DILocation(line: 291, column: 15, scope: !136)
!144 = !DILocation(line: 292, column: 14, scope: !145)
!145 = distinct !DILexicalBlock(scope: !136, file: !35, line: 292, column: 14)
!146 = !DILocation(line: 292, column: 17, scope: !145)
!147 = !DILocation(line: 292, column: 26, scope: !145)
!148 = !DILocation(line: 292, column: 29, scope: !145)
!149 = !DILocation(line: 292, column: 32, scope: !145)
!150 = !DILocation(line: 292, column: 14, scope: !136)
!151 = !DILocation(line: 293, column: 9, scope: !145)
!152 = !DILocation(line: 293, column: 15, scope: !145)
!153 = !DILocation(line: 294, column: 14, scope: !154)
!154 = distinct !DILexicalBlock(scope: !145, file: !35, line: 294, column: 14)
!155 = !DILocation(line: 294, column: 17, scope: !154)
!156 = !DILocation(line: 294, column: 14, scope: !145)
!157 = !DILocation(line: 295, column: 9, scope: !154)
!158 = !DILocation(line: 295, column: 15, scope: !154)
!159 = !DILocation(line: 296, column: 1, scope: !115)
!160 = distinct !DISubprogram(name: "CondResourceException", linkageName: "_ZN7threads21CondResourceExceptionC2Ev", scope: !161, file: !2, line: 135, type: !180, scopeLine: 135, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, declaration: !183, retainedNodes: !116)
!161 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "CondResourceException", scope: !38, file: !2, line: 135, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !162, vtableHolder: !167, identifier: "_ZTSN7threads21CondResourceExceptionE")
!162 = !{!163, !175}
!163 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !161, baseType: !164, flags: DIFlagPublic, extraData: i32 0)
!164 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "CondException", scope: !38, file: !2, line: 120, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !165, vtableHolder: !167, identifier: "_ZTSN7threads13CondExceptionE")
!165 = !{!166, !169}
!166 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !164, baseType: !167, flags: DIFlagPublic, extraData: i32 0)
!167 = !DICompositeType(tag: DW_TAG_class_type, name: "exception", scope: !99, file: !168, line: 61, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial)
!168 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/exception.h", directory: "")
!169 = !DISubprogram(name: "what", linkageName: "_ZNK7threads13CondException4whatEv", scope: !164, file: !2, line: 122, type: !170, scopeLine: 122, containingType: !164, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!170 = !DISubroutineType(types: !171)
!171 = !{!172, !173}
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!174 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !164)
!175 = !DISubprogram(name: "what", linkageName: "_ZNK7threads21CondResourceException4whatEv", scope: !161, file: !2, line: 137, type: !176, scopeLine: 137, containingType: !161, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!176 = !DISubroutineType(types: !177)
!177 = !{!172, !178}
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !161)
!180 = !DISubroutineType(types: !181)
!181 = !{null, !182}
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!183 = !DISubprogram(name: "CondResourceException", scope: !161, type: !180, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!184 = !DILocalVariable(name: "this", arg: 1, scope: !160, type: !185, flags: DIFlagArtificial | DIFlagObjectPointer)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!186 = !DILocation(line: 0, scope: !160)
!187 = !DILocation(line: 135, column: 7, scope: !160)
!188 = distinct !DISubprogram(name: "~CondResourceException", linkageName: "_ZN7threads21CondResourceExceptionD2Ev", scope: !161, file: !2, line: 135, type: !180, scopeLine: 135, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, declaration: !189, retainedNodes: !116)
!189 = !DISubprogram(name: "~CondResourceException", scope: !161, type: !180, containingType: !161, virtualIndex: 0, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!190 = !DILocalVariable(name: "this", arg: 1, scope: !188, type: !185, flags: DIFlagArtificial | DIFlagObjectPointer)
!191 = !DILocation(line: 0, scope: !188)
!192 = !DILocation(line: 135, column: 7, scope: !193)
!193 = distinct !DILexicalBlock(scope: !188, file: !2, line: 135, column: 7)
!194 = !DILocation(line: 135, column: 7, scope: !188)
!195 = distinct !DISubprogram(name: "CondInitException", linkageName: "_ZN7threads17CondInitExceptionC2Ev", scope: !196, file: !2, line: 125, type: !204, scopeLine: 125, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, declaration: !207, retainedNodes: !116)
!196 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "CondInitException", scope: !38, file: !2, line: 125, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !197, vtableHolder: !167, identifier: "_ZTSN7threads17CondInitExceptionE")
!197 = !{!198, !199}
!198 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !196, baseType: !164, flags: DIFlagPublic, extraData: i32 0)
!199 = !DISubprogram(name: "what", linkageName: "_ZNK7threads17CondInitException4whatEv", scope: !196, file: !2, line: 127, type: !200, scopeLine: 127, containingType: !196, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!200 = !DISubroutineType(types: !201)
!201 = !{!172, !202}
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!203 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !196)
!204 = !DISubroutineType(types: !205)
!205 = !{null, !206}
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!207 = !DISubprogram(name: "CondInitException", scope: !196, type: !204, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!208 = !DILocalVariable(name: "this", arg: 1, scope: !195, type: !209, flags: DIFlagArtificial | DIFlagObjectPointer)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!210 = !DILocation(line: 0, scope: !195)
!211 = !DILocation(line: 125, column: 7, scope: !195)
!212 = distinct !DISubprogram(name: "~CondInitException", linkageName: "_ZN7threads17CondInitExceptionD2Ev", scope: !196, file: !2, line: 125, type: !204, scopeLine: 125, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, declaration: !213, retainedNodes: !116)
!213 = !DISubprogram(name: "~CondInitException", scope: !196, type: !204, containingType: !196, virtualIndex: 0, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!214 = !DILocalVariable(name: "this", arg: 1, scope: !212, type: !209, flags: DIFlagArtificial | DIFlagObjectPointer)
!215 = !DILocation(line: 0, scope: !212)
!216 = !DILocation(line: 125, column: 7, scope: !217)
!217 = distinct !DILexicalBlock(scope: !212, file: !2, line: 125, column: 7)
!218 = !DILocation(line: 125, column: 7, scope: !212)
!219 = distinct !DISubprogram(name: "CondUnknownException", linkageName: "_ZN7threads20CondUnknownExceptionC2Ev", scope: !220, file: !2, line: 140, type: !228, scopeLine: 140, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, declaration: !231, retainedNodes: !116)
!220 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "CondUnknownException", scope: !38, file: !2, line: 140, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !221, vtableHolder: !167, identifier: "_ZTSN7threads20CondUnknownExceptionE")
!221 = !{!222, !223}
!222 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !220, baseType: !164, flags: DIFlagPublic, extraData: i32 0)
!223 = !DISubprogram(name: "what", linkageName: "_ZNK7threads20CondUnknownException4whatEv", scope: !220, file: !2, line: 142, type: !224, scopeLine: 142, containingType: !220, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!224 = !DISubroutineType(types: !225)
!225 = !{!172, !226}
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !220)
!228 = !DISubroutineType(types: !229)
!229 = !{null, !230}
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!231 = !DISubprogram(name: "CondUnknownException", scope: !220, type: !228, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!232 = !DILocalVariable(name: "this", arg: 1, scope: !219, type: !233, flags: DIFlagArtificial | DIFlagObjectPointer)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!234 = !DILocation(line: 0, scope: !219)
!235 = !DILocation(line: 140, column: 7, scope: !219)
!236 = distinct !DISubprogram(name: "~CondUnknownException", linkageName: "_ZN7threads20CondUnknownExceptionD2Ev", scope: !220, file: !2, line: 140, type: !228, scopeLine: 140, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, declaration: !237, retainedNodes: !116)
!237 = !DISubprogram(name: "~CondUnknownException", scope: !220, type: !228, containingType: !220, virtualIndex: 0, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!238 = !DILocalVariable(name: "this", arg: 1, scope: !236, type: !233, flags: DIFlagArtificial | DIFlagObjectPointer)
!239 = !DILocation(line: 0, scope: !236)
!240 = !DILocation(line: 140, column: 7, scope: !241)
!241 = distinct !DILexicalBlock(scope: !236, file: !2, line: 140, column: 7)
!242 = !DILocation(line: 140, column: 7, scope: !236)
!243 = distinct !DISubprogram(name: "~Condition", linkageName: "_ZN7threads9ConditionD2Ev", scope: !37, file: !35, line: 298, type: !89, scopeLine: 298, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, declaration: !88, retainedNodes: !116)
!244 = !DILocalVariable(name: "this", arg: 1, scope: !243, type: !118, flags: DIFlagArtificial | DIFlagObjectPointer)
!245 = !DILocation(line: 0, scope: !243)
!246 = !DILocalVariable(name: "rv", scope: !247, file: !35, line: 299, type: !44)
!247 = distinct !DILexicalBlock(scope: !243, file: !35, line: 298, column: 25)
!248 = !DILocation(line: 299, column: 9, scope: !247)
!249 = !DILocation(line: 299, column: 36, scope: !247)
!250 = !DILocation(line: 299, column: 14, scope: !247)
!251 = !DILocation(line: 300, column: 9, scope: !252)
!252 = distinct !DILexicalBlock(scope: !247, file: !35, line: 300, column: 9)
!253 = !DILocation(line: 300, column: 12, scope: !252)
!254 = !DILocation(line: 300, column: 21, scope: !252)
!255 = !DILocation(line: 300, column: 24, scope: !252)
!256 = !DILocation(line: 300, column: 27, scope: !252)
!257 = !DILocation(line: 300, column: 9, scope: !247)
!258 = !DILocation(line: 301, column: 9, scope: !252)
!259 = !DILocation(line: 301, column: 15, scope: !252)
!260 = !DILocation(line: 302, column: 14, scope: !261)
!261 = distinct !DILexicalBlock(scope: !252, file: !35, line: 302, column: 14)
!262 = !DILocation(line: 302, column: 17, scope: !261)
!263 = !DILocation(line: 302, column: 14, scope: !252)
!264 = !DILocation(line: 303, column: 9, scope: !261)
!265 = !DILocation(line: 303, column: 15, scope: !261)
!266 = !DILocation(line: 304, column: 1, scope: !243)
!267 = distinct !DISubprogram(name: "CondDestroyException", linkageName: "_ZN7threads20CondDestroyExceptionC2Ev", scope: !268, file: !2, line: 130, type: !276, scopeLine: 130, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, declaration: !279, retainedNodes: !116)
!268 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "CondDestroyException", scope: !38, file: !2, line: 130, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !269, vtableHolder: !167, identifier: "_ZTSN7threads20CondDestroyExceptionE")
!269 = !{!270, !271}
!270 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !268, baseType: !164, flags: DIFlagPublic, extraData: i32 0)
!271 = !DISubprogram(name: "what", linkageName: "_ZNK7threads20CondDestroyException4whatEv", scope: !268, file: !2, line: 132, type: !272, scopeLine: 132, containingType: !268, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!272 = !DISubroutineType(types: !273)
!273 = !{!172, !274}
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !268)
!276 = !DISubroutineType(types: !277)
!277 = !{null, !278}
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!279 = !DISubprogram(name: "CondDestroyException", scope: !268, type: !276, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!280 = !DILocalVariable(name: "this", arg: 1, scope: !267, type: !281, flags: DIFlagArtificial | DIFlagObjectPointer)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!282 = !DILocation(line: 0, scope: !267)
!283 = !DILocation(line: 130, column: 7, scope: !267)
!284 = distinct !DISubprogram(name: "~CondDestroyException", linkageName: "_ZN7threads20CondDestroyExceptionD2Ev", scope: !268, file: !2, line: 130, type: !276, scopeLine: 130, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, declaration: !285, retainedNodes: !116)
!285 = !DISubprogram(name: "~CondDestroyException", scope: !268, type: !276, containingType: !268, virtualIndex: 0, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!286 = !DILocalVariable(name: "this", arg: 1, scope: !284, type: !281, flags: DIFlagArtificial | DIFlagObjectPointer)
!287 = !DILocation(line: 0, scope: !284)
!288 = !DILocation(line: 130, column: 7, scope: !289)
!289 = distinct !DILexicalBlock(scope: !284, file: !2, line: 130, column: 7)
!290 = !DILocation(line: 130, column: 7, scope: !284)
!291 = distinct !DISubprogram(name: "NotifyOne", linkageName: "_ZN7threads9Condition9NotifyOneEv", scope: !37, file: !35, line: 306, type: !92, scopeLine: 306, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, declaration: !91, retainedNodes: !116)
!292 = !DILocalVariable(name: "this", arg: 1, scope: !291, type: !118, flags: DIFlagArtificial | DIFlagObjectPointer)
!293 = !DILocation(line: 0, scope: !291)
!294 = !DILocalVariable(name: "slack", scope: !291, file: !35, line: 307, type: !44)
!295 = !DILocation(line: 307, column: 9, scope: !291)
!296 = !DILocation(line: 307, column: 17, scope: !291)
!297 = !DILocation(line: 307, column: 28, scope: !291)
!298 = !DILocation(line: 307, column: 26, scope: !291)
!299 = !DILocation(line: 308, column: 9, scope: !300)
!300 = distinct !DILexicalBlock(scope: !291, file: !35, line: 308, column: 9)
!301 = !DILocation(line: 308, column: 15, scope: !300)
!302 = !DILocation(line: 308, column: 9, scope: !291)
!303 = !DILocation(line: 309, column: 9, scope: !304)
!304 = distinct !DILexicalBlock(scope: !300, file: !35, line: 308, column: 20)
!305 = !DILocation(line: 309, column: 23, scope: !304)
!306 = !DILocalVariable(name: "rv", scope: !304, file: !35, line: 310, type: !44)
!307 = !DILocation(line: 310, column: 13, scope: !304)
!308 = !DILocation(line: 310, column: 39, scope: !304)
!309 = !DILocation(line: 310, column: 18, scope: !304)
!310 = !DILocation(line: 311, column: 13, scope: !311)
!311 = distinct !DILexicalBlock(scope: !304, file: !35, line: 311, column: 13)
!312 = !DILocation(line: 311, column: 16, scope: !311)
!313 = !DILocation(line: 311, column: 13, scope: !304)
!314 = !DILocation(line: 312, column: 13, scope: !311)
!315 = !DILocation(line: 312, column: 19, scope: !311)
!316 = !DILocation(line: 313, column: 18, scope: !317)
!317 = distinct !DILexicalBlock(scope: !311, file: !35, line: 313, column: 18)
!318 = !DILocation(line: 313, column: 21, scope: !317)
!319 = !DILocation(line: 313, column: 18, scope: !311)
!320 = !DILocation(line: 314, column: 13, scope: !317)
!321 = !DILocation(line: 314, column: 19, scope: !317)
!322 = !DILocation(line: 315, column: 5, scope: !304)
!323 = !DILocation(line: 316, column: 12, scope: !291)
!324 = !DILocation(line: 316, column: 5, scope: !291)
!325 = distinct !DISubprogram(name: "CondException", linkageName: "_ZN7threads13CondExceptionC2Ev", scope: !164, file: !2, line: 120, type: !326, scopeLine: 120, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, declaration: !329, retainedNodes: !116)
!326 = !DISubroutineType(types: !327)
!327 = !{null, !328}
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!329 = !DISubprogram(name: "CondException", scope: !164, type: !326, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!330 = !DILocalVariable(name: "this", arg: 1, scope: !325, type: !331, flags: DIFlagArtificial | DIFlagObjectPointer)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!332 = !DILocation(line: 0, scope: !325)
!333 = !DILocation(line: 120, column: 7, scope: !325)
!334 = distinct !DISubprogram(name: "~CondException", linkageName: "_ZN7threads13CondExceptionD2Ev", scope: !164, file: !2, line: 120, type: !326, scopeLine: 120, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, declaration: !335, retainedNodes: !116)
!335 = !DISubprogram(name: "~CondException", scope: !164, type: !326, containingType: !164, virtualIndex: 0, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!336 = !DILocalVariable(name: "this", arg: 1, scope: !334, type: !331, flags: DIFlagArtificial | DIFlagObjectPointer)
!337 = !DILocation(line: 0, scope: !334)
!338 = !DILocation(line: 120, column: 7, scope: !339)
!339 = distinct !DILexicalBlock(scope: !334, file: !2, line: 120, column: 7)
!340 = !DILocation(line: 120, column: 7, scope: !334)
!341 = distinct !DISubprogram(name: "NotifyAll", linkageName: "_ZN7threads9Condition9NotifyAllEv", scope: !37, file: !35, line: 319, type: !92, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, declaration: !94, retainedNodes: !116)
!342 = !DILocalVariable(name: "this", arg: 1, scope: !341, type: !118, flags: DIFlagArtificial | DIFlagObjectPointer)
!343 = !DILocation(line: 0, scope: !341)
!344 = !DILocalVariable(name: "slack", scope: !341, file: !35, line: 320, type: !44)
!345 = !DILocation(line: 320, column: 9, scope: !341)
!346 = !DILocation(line: 320, column: 17, scope: !341)
!347 = !DILocation(line: 320, column: 28, scope: !341)
!348 = !DILocation(line: 320, column: 26, scope: !341)
!349 = !DILocation(line: 321, column: 9, scope: !350)
!350 = distinct !DILexicalBlock(scope: !341, file: !35, line: 321, column: 9)
!351 = !DILocation(line: 321, column: 15, scope: !350)
!352 = !DILocation(line: 321, column: 9, scope: !341)
!353 = !DILocation(line: 322, column: 26, scope: !354)
!354 = distinct !DILexicalBlock(scope: !350, file: !35, line: 321, column: 20)
!355 = !DILocation(line: 322, column: 9, scope: !354)
!356 = !DILocation(line: 322, column: 24, scope: !354)
!357 = !DILocalVariable(name: "rv", scope: !354, file: !35, line: 323, type: !44)
!358 = !DILocation(line: 323, column: 13, scope: !354)
!359 = !DILocation(line: 323, column: 42, scope: !354)
!360 = !DILocation(line: 323, column: 18, scope: !354)
!361 = !DILocation(line: 324, column: 13, scope: !362)
!362 = distinct !DILexicalBlock(scope: !354, file: !35, line: 324, column: 13)
!363 = !DILocation(line: 324, column: 16, scope: !362)
!364 = !DILocation(line: 324, column: 13, scope: !354)
!365 = !DILocation(line: 325, column: 13, scope: !362)
!366 = !DILocation(line: 325, column: 19, scope: !362)
!367 = !DILocation(line: 326, column: 18, scope: !368)
!368 = distinct !DILexicalBlock(scope: !362, file: !35, line: 326, column: 18)
!369 = !DILocation(line: 326, column: 21, scope: !368)
!370 = !DILocation(line: 326, column: 18, scope: !362)
!371 = !DILocation(line: 327, column: 13, scope: !368)
!372 = !DILocation(line: 327, column: 19, scope: !368)
!373 = !DILocation(line: 328, column: 5, scope: !354)
!374 = !DILocation(line: 329, column: 12, scope: !341)
!375 = !DILocation(line: 329, column: 5, scope: !341)
!376 = distinct !DISubprogram(name: "Wait", linkageName: "_ZN7threads9Condition4WaitEv", scope: !37, file: !35, line: 332, type: !89, scopeLine: 332, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, declaration: !95, retainedNodes: !116)
!377 = !DILocalVariable(name: "this", arg: 1, scope: !376, type: !118, flags: DIFlagArtificial | DIFlagObjectPointer)
!378 = !DILocation(line: 0, scope: !376)
!379 = !DILocation(line: 333, column: 5, scope: !376)
!380 = !DILocation(line: 333, column: 13, scope: !376)
!381 = !DILocation(line: 334, column: 5, scope: !376)
!382 = !DILocation(line: 334, column: 12, scope: !376)
!383 = !DILocation(line: 334, column: 27, scope: !376)
!384 = !DILocalVariable(name: "rv", scope: !385, file: !35, line: 335, type: !44)
!385 = distinct !DILexicalBlock(scope: !376, file: !35, line: 334, column: 33)
!386 = !DILocation(line: 335, column: 13, scope: !385)
!387 = !DILocation(line: 335, column: 37, scope: !385)
!388 = !DILocation(line: 335, column: 42, scope: !385)
!389 = !DILocation(line: 335, column: 45, scope: !385)
!390 = !DILocation(line: 335, column: 18, scope: !385)
!391 = !DILocation(line: 336, column: 13, scope: !392)
!392 = distinct !DILexicalBlock(scope: !385, file: !35, line: 336, column: 13)
!393 = !DILocation(line: 336, column: 16, scope: !392)
!394 = !DILocation(line: 336, column: 13, scope: !385)
!395 = !DILocation(line: 337, column: 13, scope: !392)
!396 = !DILocation(line: 337, column: 19, scope: !392)
!397 = !DILocation(line: 338, column: 18, scope: !398)
!398 = distinct !DILexicalBlock(scope: !392, file: !35, line: 338, column: 18)
!399 = !DILocation(line: 338, column: 21, scope: !398)
!400 = !DILocation(line: 338, column: 18, scope: !392)
!401 = !DILocation(line: 339, column: 13, scope: !398)
!402 = !DILocation(line: 339, column: 19, scope: !398)
!403 = !DILocation(line: 340, column: 18, scope: !404)
!404 = distinct !DILexicalBlock(scope: !398, file: !35, line: 340, column: 18)
!405 = !DILocation(line: 340, column: 21, scope: !404)
!406 = !DILocation(line: 340, column: 18, scope: !398)
!407 = !DILocation(line: 341, column: 13, scope: !404)
!408 = !DILocation(line: 341, column: 19, scope: !404)
!409 = distinct !{!409, !381, !410, !411}
!410 = !DILocation(line: 342, column: 5, scope: !376)
!411 = !{!"llvm.loop.mustprogress"}
!412 = !DILocation(line: 343, column: 5, scope: !376)
!413 = !DILocation(line: 343, column: 19, scope: !376)
!414 = !DILocation(line: 344, column: 5, scope: !376)
!415 = !DILocation(line: 344, column: 13, scope: !376)
!416 = !DILocation(line: 345, column: 1, scope: !376)
!417 = distinct !DISubprogram(name: "MutexLockingException", linkageName: "_ZN7threads21MutexLockingExceptionC2Ev", scope: !418, file: !30, line: 62, type: !434, scopeLine: 62, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, declaration: !437, retainedNodes: !116)
!418 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "MutexLockingException", scope: !38, file: !30, line: 62, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !419, vtableHolder: !167, identifier: "_ZTSN7threads21MutexLockingExceptionE")
!419 = !{!420, !429}
!420 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !418, baseType: !421, flags: DIFlagPublic, extraData: i32 0)
!421 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "MutexException", scope: !38, file: !30, line: 35, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !422, vtableHolder: !167, identifier: "_ZTSN7threads14MutexExceptionE")
!422 = !{!423, !424}
!423 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !421, baseType: !167, flags: DIFlagPublic, extraData: i32 0)
!424 = !DISubprogram(name: "what", linkageName: "_ZNK7threads14MutexException4whatEv", scope: !421, file: !30, line: 37, type: !425, scopeLine: 37, containingType: !421, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!425 = !DISubroutineType(types: !426)
!426 = !{!172, !427}
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!428 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !421)
!429 = !DISubprogram(name: "what", linkageName: "_ZNK7threads21MutexLockingException4whatEv", scope: !418, file: !30, line: 64, type: !430, scopeLine: 64, containingType: !418, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!430 = !DISubroutineType(types: !431)
!431 = !{!172, !432}
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!433 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !418)
!434 = !DISubroutineType(types: !435)
!435 = !{null, !436}
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!437 = !DISubprogram(name: "MutexLockingException", scope: !418, type: !434, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!438 = !DILocalVariable(name: "this", arg: 1, scope: !417, type: !439, flags: DIFlagArtificial | DIFlagObjectPointer)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!440 = !DILocation(line: 0, scope: !417)
!441 = !DILocation(line: 62, column: 7, scope: !417)
!442 = distinct !DISubprogram(name: "~MutexLockingException", linkageName: "_ZN7threads21MutexLockingExceptionD2Ev", scope: !418, file: !30, line: 62, type: !434, scopeLine: 62, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, declaration: !443, retainedNodes: !116)
!443 = !DISubprogram(name: "~MutexLockingException", scope: !418, type: !434, containingType: !418, virtualIndex: 0, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!444 = !DILocalVariable(name: "this", arg: 1, scope: !442, type: !439, flags: DIFlagArtificial | DIFlagObjectPointer)
!445 = !DILocation(line: 0, scope: !442)
!446 = !DILocation(line: 62, column: 7, scope: !447)
!447 = distinct !DILexicalBlock(scope: !442, file: !30, line: 62, column: 7)
!448 = !DILocation(line: 62, column: 7, scope: !442)
!449 = distinct !DISubprogram(name: "~CondResourceException", linkageName: "_ZN7threads21CondResourceExceptionD0Ev", scope: !161, file: !2, line: 135, type: !180, scopeLine: 135, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, declaration: !189, retainedNodes: !116)
!450 = !DILocalVariable(name: "this", arg: 1, scope: !449, type: !185, flags: DIFlagArtificial | DIFlagObjectPointer)
!451 = !DILocation(line: 0, scope: !449)
!452 = !DILocation(line: 135, column: 7, scope: !449)
!453 = distinct !DISubprogram(name: "what", linkageName: "_ZNK7threads21CondResourceException4whatEv", scope: !161, file: !2, line: 137, type: !176, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, declaration: !175, retainedNodes: !116)
!454 = !DILocalVariable(name: "this", arg: 1, scope: !453, type: !455, flags: DIFlagArtificial | DIFlagObjectPointer)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!456 = !DILocation(line: 0, scope: !453)
!457 = !DILocation(line: 137, column: 58, scope: !453)
!458 = distinct !DISubprogram(name: "exception", linkageName: "_ZNSt9exceptionC2Ev", scope: !167, file: !168, line: 64, type: !459, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, declaration: !462, retainedNodes: !116)
!459 = !DISubroutineType(types: !460)
!460 = !{null, !461}
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!462 = !DISubprogram(name: "exception", scope: !167, file: !168, line: 64, type: !459, scopeLine: 64, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!463 = !DILocalVariable(name: "this", arg: 1, scope: !458, type: !464, flags: DIFlagArtificial | DIFlagObjectPointer)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!465 = !DILocation(line: 0, scope: !458)
!466 = !DILocation(line: 64, column: 34, scope: !458)
!467 = !DILocation(line: 64, column: 36, scope: !458)
!468 = distinct !DISubprogram(name: "~CondException", linkageName: "_ZN7threads13CondExceptionD0Ev", scope: !164, file: !2, line: 120, type: !326, scopeLine: 120, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, declaration: !335, retainedNodes: !116)
!469 = !DILocalVariable(name: "this", arg: 1, scope: !468, type: !331, flags: DIFlagArtificial | DIFlagObjectPointer)
!470 = !DILocation(line: 0, scope: !468)
!471 = !DILocation(line: 120, column: 7, scope: !468)
!472 = distinct !DISubprogram(name: "what", linkageName: "_ZNK7threads13CondException4whatEv", scope: !164, file: !2, line: 122, type: !170, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, declaration: !169, retainedNodes: !116)
!473 = !DILocalVariable(name: "this", arg: 1, scope: !472, type: !474, flags: DIFlagArtificial | DIFlagObjectPointer)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!475 = !DILocation(line: 0, scope: !472)
!476 = !DILocation(line: 122, column: 58, scope: !472)
!477 = distinct !DISubprogram(name: "~CondInitException", linkageName: "_ZN7threads17CondInitExceptionD0Ev", scope: !196, file: !2, line: 125, type: !204, scopeLine: 125, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, declaration: !213, retainedNodes: !116)
!478 = !DILocalVariable(name: "this", arg: 1, scope: !477, type: !209, flags: DIFlagArtificial | DIFlagObjectPointer)
!479 = !DILocation(line: 0, scope: !477)
!480 = !DILocation(line: 125, column: 7, scope: !477)
!481 = distinct !DISubprogram(name: "what", linkageName: "_ZNK7threads17CondInitException4whatEv", scope: !196, file: !2, line: 127, type: !200, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, declaration: !199, retainedNodes: !116)
!482 = !DILocalVariable(name: "this", arg: 1, scope: !481, type: !483, flags: DIFlagArtificial | DIFlagObjectPointer)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!484 = !DILocation(line: 0, scope: !481)
!485 = !DILocation(line: 127, column: 58, scope: !481)
!486 = distinct !DISubprogram(name: "~CondUnknownException", linkageName: "_ZN7threads20CondUnknownExceptionD0Ev", scope: !220, file: !2, line: 140, type: !228, scopeLine: 140, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, declaration: !237, retainedNodes: !116)
!487 = !DILocalVariable(name: "this", arg: 1, scope: !486, type: !233, flags: DIFlagArtificial | DIFlagObjectPointer)
!488 = !DILocation(line: 0, scope: !486)
!489 = !DILocation(line: 140, column: 7, scope: !486)
!490 = distinct !DISubprogram(name: "what", linkageName: "_ZNK7threads20CondUnknownException4whatEv", scope: !220, file: !2, line: 142, type: !224, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, declaration: !223, retainedNodes: !116)
!491 = !DILocalVariable(name: "this", arg: 1, scope: !490, type: !492, flags: DIFlagArtificial | DIFlagObjectPointer)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!493 = !DILocation(line: 0, scope: !490)
!494 = !DILocation(line: 142, column: 58, scope: !490)
!495 = distinct !DISubprogram(name: "~CondDestroyException", linkageName: "_ZN7threads20CondDestroyExceptionD0Ev", scope: !268, file: !2, line: 130, type: !276, scopeLine: 130, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, declaration: !285, retainedNodes: !116)
!496 = !DILocalVariable(name: "this", arg: 1, scope: !495, type: !281, flags: DIFlagArtificial | DIFlagObjectPointer)
!497 = !DILocation(line: 0, scope: !495)
!498 = !DILocation(line: 130, column: 7, scope: !495)
!499 = distinct !DISubprogram(name: "what", linkageName: "_ZNK7threads20CondDestroyException4whatEv", scope: !268, file: !2, line: 132, type: !272, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, declaration: !271, retainedNodes: !116)
!500 = !DILocalVariable(name: "this", arg: 1, scope: !499, type: !501, flags: DIFlagArtificial | DIFlagObjectPointer)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!502 = !DILocation(line: 0, scope: !499)
!503 = !DILocation(line: 132, column: 58, scope: !499)
!504 = distinct !DISubprogram(name: "MutexException", linkageName: "_ZN7threads14MutexExceptionC2Ev", scope: !421, file: !30, line: 35, type: !505, scopeLine: 35, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, declaration: !508, retainedNodes: !116)
!505 = !DISubroutineType(types: !506)
!506 = !{null, !507}
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!508 = !DISubprogram(name: "MutexException", scope: !421, type: !505, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!509 = !DILocalVariable(name: "this", arg: 1, scope: !504, type: !510, flags: DIFlagArtificial | DIFlagObjectPointer)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!511 = !DILocation(line: 0, scope: !504)
!512 = !DILocation(line: 35, column: 7, scope: !504)
!513 = distinct !DISubprogram(name: "~MutexLockingException", linkageName: "_ZN7threads21MutexLockingExceptionD0Ev", scope: !418, file: !30, line: 62, type: !434, scopeLine: 62, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, declaration: !443, retainedNodes: !116)
!514 = !DILocalVariable(name: "this", arg: 1, scope: !513, type: !439, flags: DIFlagArtificial | DIFlagObjectPointer)
!515 = !DILocation(line: 0, scope: !513)
!516 = !DILocation(line: 62, column: 7, scope: !513)
!517 = distinct !DISubprogram(name: "what", linkageName: "_ZNK7threads21MutexLockingException4whatEv", scope: !418, file: !30, line: 64, type: !430, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, declaration: !429, retainedNodes: !116)
!518 = !DILocalVariable(name: "this", arg: 1, scope: !517, type: !519, flags: DIFlagArtificial | DIFlagObjectPointer)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!520 = !DILocation(line: 0, scope: !517)
!521 = !DILocation(line: 64, column: 59, scope: !517)
!522 = distinct !DISubprogram(name: "~MutexException", linkageName: "_ZN7threads14MutexExceptionD2Ev", scope: !421, file: !30, line: 35, type: !505, scopeLine: 35, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, declaration: !523, retainedNodes: !116)
!523 = !DISubprogram(name: "~MutexException", scope: !421, type: !505, containingType: !421, virtualIndex: 0, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!524 = !DILocalVariable(name: "this", arg: 1, scope: !522, type: !510, flags: DIFlagArtificial | DIFlagObjectPointer)
!525 = !DILocation(line: 0, scope: !522)
!526 = !DILocation(line: 35, column: 7, scope: !527)
!527 = distinct !DILexicalBlock(scope: !522, file: !30, line: 35, column: 7)
!528 = !DILocation(line: 35, column: 7, scope: !522)
!529 = distinct !DISubprogram(name: "~MutexException", linkageName: "_ZN7threads14MutexExceptionD0Ev", scope: !421, file: !30, line: 35, type: !505, scopeLine: 35, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, declaration: !523, retainedNodes: !116)
!530 = !DILocalVariable(name: "this", arg: 1, scope: !529, type: !510, flags: DIFlagArtificial | DIFlagObjectPointer)
!531 = !DILocation(line: 0, scope: !529)
!532 = !DILocation(line: 35, column: 7, scope: !529)
!533 = distinct !DISubprogram(name: "what", linkageName: "_ZNK7threads14MutexException4whatEv", scope: !421, file: !30, line: 37, type: !425, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, declaration: !424, retainedNodes: !116)
!534 = !DILocalVariable(name: "this", arg: 1, scope: !533, type: !535, flags: DIFlagArtificial | DIFlagObjectPointer)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!536 = !DILocation(line: 0, scope: !533)
!537 = !DILocation(line: 37, column: 59, scope: !533)
