; ModuleID = '../TrackingBenchmark/threads/Mutex.cpp'
source_filename = "../TrackingBenchmark/threads/Mutex.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.threads::MutexResourceException" = type { %"class.threads::MutexException" }
%"class.threads::MutexException" = type { %"class.std::exception" }
%"class.std::exception" = type { ptr }
%"class.threads::MutexInitException" = type { %"class.threads::MutexException" }
%"class.threads::MutexUnknownException" = type { %"class.threads::MutexException" }
%"class.threads::Mutex" = type { %"class.threads::LockType", %union.pthread_mutex_t }
%"class.threads::LockType" = type { ptr }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%"class.threads::MutexDestroyException" = type { %"class.threads::MutexException" }
%"class.threads::MutexLockingException" = type { %"class.threads::MutexException" }
%"class.threads::MutexDeadlockException" = type { %"class.threads::MutexLockingException" }

$_ZN7threads8LockTypeC2Ev = comdat any

$_ZN7threads22MutexResourceExceptionC2Ev = comdat any

$_ZN7threads22MutexResourceExceptionC2EOS0_ = comdat any

$_ZN7threads22MutexResourceExceptionD2Ev = comdat any

$_ZN7threads18MutexInitExceptionC2Ev = comdat any

$_ZN7threads18MutexInitExceptionC2EOS0_ = comdat any

$_ZN7threads18MutexInitExceptionD2Ev = comdat any

$_ZN7threads21MutexUnknownExceptionC2Ev = comdat any

$_ZN7threads21MutexUnknownExceptionC2EOS0_ = comdat any

$_ZN7threads21MutexUnknownExceptionD2Ev = comdat any

$_ZN7threads21MutexDestroyExceptionC2Ev = comdat any

$_ZN7threads21MutexDestroyExceptionC2EOS0_ = comdat any

$_ZN7threads21MutexDestroyExceptionD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN7threads21MutexLockingExceptionC2Ev = comdat any

$_ZN7threads21MutexLockingExceptionC2EOS0_ = comdat any

$_ZN7threads21MutexLockingExceptionD2Ev = comdat any

$_ZN7threads22MutexDeadlockExceptionC2Ev = comdat any

$_ZN7threads22MutexDeadlockExceptionC2EOS0_ = comdat any

$_ZN7threads22MutexDeadlockExceptionD2Ev = comdat any

$_ZN7threads8LockTypeD2Ev = comdat any

$_ZN7threads8LockTypeD0Ev = comdat any

$_ZN7threads14MutexExceptionC2Ev = comdat any

$_ZN7threads22MutexResourceExceptionD0Ev = comdat any

$_ZNK7threads22MutexResourceException4whatEv = comdat any

$_ZNSt9exceptionC2Ev = comdat any

$_ZN7threads14MutexExceptionD2Ev = comdat any

$_ZN7threads14MutexExceptionD0Ev = comdat any

$_ZNK7threads14MutexException4whatEv = comdat any

$_ZN7threads14MutexExceptionC2EOS0_ = comdat any

$_ZNSt9exceptionC2EOS_ = comdat any

$_ZN7threads18MutexInitExceptionD0Ev = comdat any

$_ZNK7threads18MutexInitException4whatEv = comdat any

$_ZN7threads21MutexUnknownExceptionD0Ev = comdat any

$_ZNK7threads21MutexUnknownException4whatEv = comdat any

$_ZN7threads21MutexDestroyExceptionD0Ev = comdat any

$_ZNK7threads21MutexDestroyException4whatEv = comdat any

$_ZN7threads21MutexLockingExceptionD0Ev = comdat any

$_ZNK7threads21MutexLockingException4whatEv = comdat any

$_ZN7threads22MutexDeadlockExceptionD0Ev = comdat any

$_ZNK7threads22MutexDeadlockException4whatEv = comdat any

$_ZTSN7threads22MutexResourceExceptionE = comdat any

$_ZTSN7threads14MutexExceptionE = comdat any

$_ZTIN7threads14MutexExceptionE = comdat any

$_ZTIN7threads22MutexResourceExceptionE = comdat any

$_ZTSN7threads18MutexInitExceptionE = comdat any

$_ZTIN7threads18MutexInitExceptionE = comdat any

$_ZTSN7threads21MutexUnknownExceptionE = comdat any

$_ZTIN7threads21MutexUnknownExceptionE = comdat any

$_ZTSN7threads21MutexDestroyExceptionE = comdat any

$_ZTIN7threads21MutexDestroyExceptionE = comdat any

$_ZTSN7threads21MutexLockingExceptionE = comdat any

$_ZTIN7threads21MutexLockingExceptionE = comdat any

$_ZTSN7threads22MutexDeadlockExceptionE = comdat any

$_ZTIN7threads22MutexDeadlockExceptionE = comdat any

$_ZTSN7threads8LockTypeE = comdat any

$_ZTIN7threads8LockTypeE = comdat any

$_ZTVN7threads8LockTypeE = comdat any

$_ZTVN7threads22MutexResourceExceptionE = comdat any

$_ZTVN7threads14MutexExceptionE = comdat any

$_ZTVN7threads18MutexInitExceptionE = comdat any

$_ZTVN7threads21MutexUnknownExceptionE = comdat any

$_ZTVN7threads21MutexDestroyExceptionE = comdat any

$_ZTVN7threads21MutexLockingExceptionE = comdat any

$_ZTVN7threads22MutexDeadlockExceptionE = comdat any

@_ZTVN7threads5MutexE = dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN7threads5MutexE, ptr @_ZN7threads5MutexD1Ev, ptr @_ZN7threads5MutexD0Ev, ptr @_ZN7threads5Mutex4LockEv, ptr @_ZN7threads5Mutex6UnlockEv, ptr @_ZN7threads5Mutex7TryLockEv] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global ptr
@_ZTSN7threads22MutexResourceExceptionE = linkonce_odr dso_local constant [35 x i8] c"N7threads22MutexResourceExceptionE\00", comdat, align 1
@_ZTSN7threads14MutexExceptionE = linkonce_odr dso_local constant [27 x i8] c"N7threads14MutexExceptionE\00", comdat, align 1
@_ZTISt9exception = external constant ptr
@_ZTIN7threads14MutexExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7threads14MutexExceptionE, ptr @_ZTISt9exception }, comdat, align 8
@_ZTIN7threads22MutexResourceExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7threads22MutexResourceExceptionE, ptr @_ZTIN7threads14MutexExceptionE }, comdat, align 8
@_ZTSN7threads18MutexInitExceptionE = linkonce_odr dso_local constant [31 x i8] c"N7threads18MutexInitExceptionE\00", comdat, align 1
@_ZTIN7threads18MutexInitExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7threads18MutexInitExceptionE, ptr @_ZTIN7threads14MutexExceptionE }, comdat, align 8
@_ZTSN7threads21MutexUnknownExceptionE = linkonce_odr dso_local constant [34 x i8] c"N7threads21MutexUnknownExceptionE\00", comdat, align 1
@_ZTIN7threads21MutexUnknownExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7threads21MutexUnknownExceptionE, ptr @_ZTIN7threads14MutexExceptionE }, comdat, align 8
@_ZTSN7threads21MutexDestroyExceptionE = linkonce_odr dso_local constant [34 x i8] c"N7threads21MutexDestroyExceptionE\00", comdat, align 1
@_ZTIN7threads21MutexDestroyExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7threads21MutexDestroyExceptionE, ptr @_ZTIN7threads14MutexExceptionE }, comdat, align 8
@_ZTSN7threads21MutexLockingExceptionE = linkonce_odr dso_local constant [34 x i8] c"N7threads21MutexLockingExceptionE\00", comdat, align 1
@_ZTIN7threads21MutexLockingExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7threads21MutexLockingExceptionE, ptr @_ZTIN7threads14MutexExceptionE }, comdat, align 8
@_ZTSN7threads22MutexDeadlockExceptionE = linkonce_odr dso_local constant [35 x i8] c"N7threads22MutexDeadlockExceptionE\00", comdat, align 1
@_ZTIN7threads22MutexDeadlockExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7threads22MutexDeadlockExceptionE, ptr @_ZTIN7threads21MutexLockingExceptionE }, comdat, align 8
@_ZTSN7threads5MutexE = dso_local constant [17 x i8] c"N7threads5MutexE\00", align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global ptr
@_ZTSN7threads8LockTypeE = linkonce_odr dso_local constant [20 x i8] c"N7threads8LockTypeE\00", comdat, align 1
@_ZTIN7threads8LockTypeE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN7threads8LockTypeE }, comdat, align 8
@_ZTIN7threads5MutexE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7threads5MutexE, ptr @_ZTIN7threads8LockTypeE }, align 8
@_ZTVN7threads8LockTypeE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN7threads8LockTypeE, ptr @_ZN7threads8LockTypeD2Ev, ptr @_ZN7threads8LockTypeD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTVN7threads22MutexResourceExceptionE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7threads22MutexResourceExceptionE, ptr @_ZN7threads22MutexResourceExceptionD2Ev, ptr @_ZN7threads22MutexResourceExceptionD0Ev, ptr @_ZNK7threads22MutexResourceException4whatEv] }, comdat, align 8
@_ZTVN7threads14MutexExceptionE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7threads14MutexExceptionE, ptr @_ZN7threads14MutexExceptionD2Ev, ptr @_ZN7threads14MutexExceptionD0Ev, ptr @_ZNK7threads14MutexException4whatEv] }, comdat, align 8
@_ZTVSt9exception = external unnamed_addr constant { [5 x ptr] }, align 8
@.str = private unnamed_addr constant [24 x i8] c"Unspecified mutex error\00", align 1, !dbg !0
@_ZTVN7threads18MutexInitExceptionE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7threads18MutexInitExceptionE, ptr @_ZN7threads18MutexInitExceptionD2Ev, ptr @_ZN7threads18MutexInitExceptionD0Ev, ptr @_ZNK7threads18MutexInitException4whatEv] }, comdat, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"Unknown error\00", align 1, !dbg !8
@_ZTVN7threads21MutexUnknownExceptionE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7threads21MutexUnknownExceptionE, ptr @_ZN7threads21MutexUnknownExceptionD2Ev, ptr @_ZN7threads21MutexUnknownExceptionD0Ev, ptr @_ZNK7threads21MutexUnknownException4whatEv] }, comdat, align 8
@_ZTVN7threads21MutexDestroyExceptionE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7threads21MutexDestroyExceptionE, ptr @_ZN7threads21MutexDestroyExceptionD2Ev, ptr @_ZN7threads21MutexDestroyExceptionD0Ev, ptr @_ZNK7threads21MutexDestroyException4whatEv] }, comdat, align 8
@_ZTVN7threads21MutexLockingExceptionE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7threads21MutexLockingExceptionE, ptr @_ZN7threads21MutexLockingExceptionD2Ev, ptr @_ZN7threads21MutexLockingExceptionD0Ev, ptr @_ZNK7threads21MutexLockingException4whatEv] }, comdat, align 8
@_ZTVN7threads22MutexDeadlockExceptionE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7threads22MutexDeadlockExceptionE, ptr @_ZN7threads22MutexDeadlockExceptionD2Ev, ptr @_ZN7threads22MutexDeadlockExceptionD0Ev, ptr @_ZNK7threads22MutexDeadlockException4whatEv] }, comdat, align 8

@_ZN7threads5MutexC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN7threads5MutexC2Ev
@_ZN7threads5MutexD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN7threads5MutexD2Ev

; Function Attrs: noinline optnone uwtable
define dso_local void @_ZN7threads5MutexC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !dbg !34 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca %"class.threads::MutexResourceException", align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca %"class.threads::MutexInitException", align 8
  %8 = alloca %"class.threads::MutexUnknownException", align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !101, metadata !DIExpression()), !dbg !103
  %9 = load ptr, ptr %2, align 8
  call void @_ZN7threads8LockTypeC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #9, !dbg !104
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN7threads5MutexE, i32 0, inrange i32 0, i32 2), ptr %9, align 8, !dbg !105
  %10 = getelementptr inbounds %"class.threads::Mutex", ptr %9, i32 0, i32 1, !dbg !104
  call void @llvm.dbg.declare(metadata ptr %3, metadata !106, metadata !DIExpression()), !dbg !108
  %11 = getelementptr inbounds %"class.threads::Mutex", ptr %9, i32 0, i32 1, !dbg !109
  %12 = call i32 @pthread_mutex_init(ptr noundef %11, ptr noundef null) #9, !dbg !110
  store i32 %12, ptr %3, align 4, !dbg !111
  %13 = load i32, ptr %3, align 4, !dbg !112
  switch i32 %13, label %27 [
    i32 0, label %14
    i32 11, label %15
    i32 12, label %15
    i32 1, label %21
    i32 16, label %21
    i32 22, label %21
  ], !dbg !113

14:                                               ; preds = %1
  br label %33, !dbg !114

15:                                               ; preds = %1, %1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !116, metadata !DIExpression()), !dbg !137
  call void @_ZN7threads22MutexResourceExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #9, !dbg !137
  %16 = call ptr @__cxa_allocate_exception(i64 8) #9, !dbg !138
  call void @_ZN7threads22MutexResourceExceptionC2EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %4) #9, !dbg !139
  invoke void @__cxa_throw(ptr %16, ptr @_ZTIN7threads22MutexResourceExceptionE, ptr @_ZN7threads22MutexResourceExceptionD2Ev) #10
          to label %40 unwind label %17, !dbg !138

17:                                               ; preds = %15
  %18 = landingpad { ptr, i32 }
          cleanup, !dbg !140
  %19 = extractvalue { ptr, i32 } %18, 0, !dbg !140
  store ptr %19, ptr %5, align 8, !dbg !140
  %20 = extractvalue { ptr, i32 } %18, 1, !dbg !140
  store i32 %20, ptr %6, align 4, !dbg !140
  call void @_ZN7threads22MutexResourceExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #9, !dbg !141
  br label %34, !dbg !141

21:                                               ; preds = %1, %1, %1
  call void @llvm.dbg.declare(metadata ptr %7, metadata !142, metadata !DIExpression()), !dbg !152
  call void @_ZN7threads18MutexInitExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #9, !dbg !152
  %22 = call ptr @__cxa_allocate_exception(i64 8) #9, !dbg !153
  call void @_ZN7threads18MutexInitExceptionC2EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull align 8 dereferenceable(8) %7) #9, !dbg !154
  invoke void @__cxa_throw(ptr %22, ptr @_ZTIN7threads18MutexInitExceptionE, ptr @_ZN7threads18MutexInitExceptionD2Ev) #10
          to label %40 unwind label %23, !dbg !153

23:                                               ; preds = %21
  %24 = landingpad { ptr, i32 }
          cleanup, !dbg !155
  %25 = extractvalue { ptr, i32 } %24, 0, !dbg !155
  store ptr %25, ptr %5, align 8, !dbg !155
  %26 = extractvalue { ptr, i32 } %24, 1, !dbg !155
  store i32 %26, ptr %6, align 4, !dbg !155
  call void @_ZN7threads18MutexInitExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #9, !dbg !156
  br label %34, !dbg !156

27:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata ptr %8, metadata !157, metadata !DIExpression()), !dbg !167
  call void @_ZN7threads21MutexUnknownExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #9, !dbg !167
  %28 = call ptr @__cxa_allocate_exception(i64 8) #9, !dbg !168
  call void @_ZN7threads21MutexUnknownExceptionC2EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 8 dereferenceable(8) %8) #9, !dbg !169
  invoke void @__cxa_throw(ptr %28, ptr @_ZTIN7threads21MutexUnknownExceptionE, ptr @_ZN7threads21MutexUnknownExceptionD2Ev) #10
          to label %40 unwind label %29, !dbg !168

29:                                               ; preds = %27
  %30 = landingpad { ptr, i32 }
          cleanup, !dbg !170
  %31 = extractvalue { ptr, i32 } %30, 0, !dbg !170
  store ptr %31, ptr %5, align 8, !dbg !170
  %32 = extractvalue { ptr, i32 } %30, 1, !dbg !170
  store i32 %32, ptr %6, align 4, !dbg !170
  call void @_ZN7threads21MutexUnknownExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #9, !dbg !171
  br label %34, !dbg !171

33:                                               ; preds = %14
  ret void, !dbg !172

34:                                               ; preds = %29, %23, %17
  call void @_ZN7threads8LockTypeD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #9, !dbg !173
  br label %35, !dbg !173

35:                                               ; preds = %34
  %36 = load ptr, ptr %5, align 8, !dbg !173
  %37 = load i32, ptr %6, align 4, !dbg !173
  %38 = insertvalue { ptr, i32 } poison, ptr %36, 0, !dbg !173
  %39 = insertvalue { ptr, i32 } %38, i32 %37, 1, !dbg !173
  resume { ptr, i32 } %39, !dbg !173

40:                                               ; preds = %27, %21, %15
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7threads8LockTypeC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 !dbg !174 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !176, metadata !DIExpression()), !dbg !178
  %3 = load ptr, ptr %2, align 8
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN7threads8LockTypeE, i32 0, inrange i32 0, i32 2), ptr %3, align 8, !dbg !179
  ret void, !dbg !179
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7threads22MutexResourceExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 !dbg !180 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !185, metadata !DIExpression()), !dbg !187
  %3 = load ptr, ptr %2, align 8
  call void @_ZN7threads14MutexExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #9, !dbg !188
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN7threads22MutexResourceExceptionE, i32 0, inrange i32 0, i32 2), ptr %3, align 8, !dbg !188
  ret void, !dbg !188
}

declare ptr @__cxa_allocate_exception(i64)

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7threads22MutexResourceExceptionC2EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 !dbg !189 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !194, metadata !DIExpression()), !dbg !195
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !196, metadata !DIExpression()), !dbg !195
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8, !dbg !197
  call void @_ZN7threads14MutexExceptionC2EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) #9, !dbg !197
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN7threads22MutexResourceExceptionE, i32 0, inrange i32 0, i32 2), ptr %5, align 8, !dbg !197
  ret void, !dbg !197
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7threads22MutexResourceExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 !dbg !198 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !200, metadata !DIExpression()), !dbg !201
  %3 = load ptr, ptr %2, align 8
  call void @_ZN7threads14MutexExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #9, !dbg !202
  ret void, !dbg !204
}

declare void @__cxa_throw(ptr, ptr, ptr)

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7threads18MutexInitExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 !dbg !205 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !210, metadata !DIExpression()), !dbg !212
  %3 = load ptr, ptr %2, align 8
  call void @_ZN7threads14MutexExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #9, !dbg !213
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN7threads18MutexInitExceptionE, i32 0, inrange i32 0, i32 2), ptr %3, align 8, !dbg !213
  ret void, !dbg !213
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7threads18MutexInitExceptionC2EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 !dbg !214 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !219, metadata !DIExpression()), !dbg !220
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !221, metadata !DIExpression()), !dbg !220
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8, !dbg !222
  call void @_ZN7threads14MutexExceptionC2EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) #9, !dbg !222
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN7threads18MutexInitExceptionE, i32 0, inrange i32 0, i32 2), ptr %5, align 8, !dbg !222
  ret void, !dbg !222
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7threads18MutexInitExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 !dbg !223 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !225, metadata !DIExpression()), !dbg !226
  %3 = load ptr, ptr %2, align 8
  call void @_ZN7threads14MutexExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #9, !dbg !227
  ret void, !dbg !229
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7threads21MutexUnknownExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 !dbg !230 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !235, metadata !DIExpression()), !dbg !237
  %3 = load ptr, ptr %2, align 8
  call void @_ZN7threads14MutexExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #9, !dbg !238
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN7threads21MutexUnknownExceptionE, i32 0, inrange i32 0, i32 2), ptr %3, align 8, !dbg !238
  ret void, !dbg !238
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7threads21MutexUnknownExceptionC2EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 !dbg !239 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !244, metadata !DIExpression()), !dbg !245
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !246, metadata !DIExpression()), !dbg !245
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8, !dbg !247
  call void @_ZN7threads14MutexExceptionC2EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) #9, !dbg !247
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN7threads21MutexUnknownExceptionE, i32 0, inrange i32 0, i32 2), ptr %5, align 8, !dbg !247
  ret void, !dbg !247
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7threads21MutexUnknownExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 !dbg !248 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !250, metadata !DIExpression()), !dbg !251
  %3 = load ptr, ptr %2, align 8
  call void @_ZN7threads14MutexExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #9, !dbg !252
  ret void, !dbg !254
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_ZN7threads5MutexD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !dbg !255 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca %"class.threads::MutexDestroyException", align 8
  %5 = alloca %"class.threads::MutexUnknownException", align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !256, metadata !DIExpression()), !dbg !257
  %6 = load ptr, ptr %2, align 8
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN7threads5MutexE, i32 0, inrange i32 0, i32 2), ptr %6, align 8, !dbg !258
  call void @llvm.dbg.declare(metadata ptr %3, metadata !259, metadata !DIExpression()), !dbg !261
  %7 = getelementptr inbounds %"class.threads::Mutex", ptr %6, i32 0, i32 1, !dbg !262
  %8 = call i32 @pthread_mutex_destroy(ptr noundef %7) #9, !dbg !263
  store i32 %8, ptr %3, align 4, !dbg !264
  %9 = load i32, ptr %3, align 4, !dbg !265
  switch i32 %9, label %13 [
    i32 0, label %10
    i32 16, label %11
    i32 22, label %11
  ], !dbg !266

10:                                               ; preds = %1
  br label %15, !dbg !267

11:                                               ; preds = %1, %1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !269, metadata !DIExpression()), !dbg !279
  call void @_ZN7threads21MutexDestroyExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #9, !dbg !279
  %12 = call ptr @__cxa_allocate_exception(i64 8) #9, !dbg !280
  call void @_ZN7threads21MutexDestroyExceptionC2EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %4) #9, !dbg !281
  invoke void @__cxa_throw(ptr %12, ptr @_ZTIN7threads21MutexDestroyExceptionE, ptr @_ZN7threads21MutexDestroyExceptionD2Ev) #10
          to label %19 unwind label %16, !dbg !280

13:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata ptr %5, metadata !282, metadata !DIExpression()), !dbg !284
  call void @_ZN7threads21MutexUnknownExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #9, !dbg !284
  %14 = call ptr @__cxa_allocate_exception(i64 8) #9, !dbg !285
  call void @_ZN7threads21MutexUnknownExceptionC2EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %5) #9, !dbg !286
  invoke void @__cxa_throw(ptr %14, ptr @_ZTIN7threads21MutexUnknownExceptionE, ptr @_ZN7threads21MutexUnknownExceptionD2Ev) #10
          to label %19 unwind label %16, !dbg !285

15:                                               ; preds = %10
  call void @_ZN7threads8LockTypeD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #9, !dbg !287
  ret void, !dbg !288

16:                                               ; preds = %13, %11
  %17 = landingpad { ptr, i32 }
          catch ptr null, !dbg !280
  %18 = extractvalue { ptr, i32 } %17, 0, !dbg !280
  call void @__clang_call_terminate(ptr %18) #11, !dbg !280
  unreachable, !dbg !280

19:                                               ; preds = %13, %11
  unreachable
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_destroy(ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7threads21MutexDestroyExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 !dbg !289 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !294, metadata !DIExpression()), !dbg !296
  %3 = load ptr, ptr %2, align 8
  call void @_ZN7threads14MutexExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #9, !dbg !297
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN7threads21MutexDestroyExceptionE, i32 0, inrange i32 0, i32 2), ptr %3, align 8, !dbg !297
  ret void, !dbg !297
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7threads21MutexDestroyExceptionC2EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 !dbg !298 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !303, metadata !DIExpression()), !dbg !304
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !305, metadata !DIExpression()), !dbg !304
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8, !dbg !306
  call void @_ZN7threads14MutexExceptionC2EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) #9, !dbg !306
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN7threads21MutexDestroyExceptionE, i32 0, inrange i32 0, i32 2), ptr %5, align 8, !dbg !306
  ret void, !dbg !306
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7threads21MutexDestroyExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 !dbg !307 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !309, metadata !DIExpression()), !dbg !310
  %3 = load ptr, ptr %2, align 8
  call void @_ZN7threads14MutexExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #9, !dbg !311
  ret void, !dbg !313
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) #4 comdat {
  %2 = call ptr @__cxa_begin_catch(ptr %0) #9
  call void @_ZSt9terminatev() #11
  unreachable
}

declare ptr @__cxa_begin_catch(ptr)

declare void @_ZSt9terminatev()

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_ZN7threads5MutexD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 align 2 !dbg !314 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !315, metadata !DIExpression()), !dbg !316
  %3 = load ptr, ptr %2, align 8
  call void @_ZN7threads5MutexD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %3) #9, !dbg !317
  call void @_ZdlPv(ptr noundef %3) #12, !dbg !317
  ret void, !dbg !318
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) #5

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN7threads5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !dbg !319 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca %"class.threads::MutexLockingException", align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca %"class.threads::MutexDeadlockException", align 8
  %8 = alloca %"class.threads::MutexUnknownException", align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !320, metadata !DIExpression()), !dbg !321
  %9 = load ptr, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !322, metadata !DIExpression()), !dbg !323
  %10 = getelementptr inbounds %"class.threads::Mutex", ptr %9, i32 0, i32 1, !dbg !324
  %11 = call i32 @pthread_mutex_lock(ptr noundef %10) #9, !dbg !325
  store i32 %11, ptr %3, align 4, !dbg !326
  %12 = load i32, ptr %3, align 4, !dbg !327
  switch i32 %12, label %26 [
    i32 0, label %13
    i32 22, label %14
    i32 11, label %14
    i32 35, label %20
  ], !dbg !328

13:                                               ; preds = %1
  br label %32, !dbg !329

14:                                               ; preds = %1, %1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !331, metadata !DIExpression()), !dbg !341
  call void @_ZN7threads21MutexLockingExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #9, !dbg !341
  %15 = call ptr @__cxa_allocate_exception(i64 8) #9, !dbg !342
  call void @_ZN7threads21MutexLockingExceptionC2EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %4) #9, !dbg !343
  invoke void @__cxa_throw(ptr %15, ptr @_ZTIN7threads21MutexLockingExceptionE, ptr @_ZN7threads21MutexLockingExceptionD2Ev) #10
          to label %38 unwind label %16, !dbg !342

16:                                               ; preds = %14
  %17 = landingpad { ptr, i32 }
          cleanup, !dbg !344
  %18 = extractvalue { ptr, i32 } %17, 0, !dbg !344
  store ptr %18, ptr %5, align 8, !dbg !344
  %19 = extractvalue { ptr, i32 } %17, 1, !dbg !344
  store i32 %19, ptr %6, align 4, !dbg !344
  call void @_ZN7threads21MutexLockingExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #9, !dbg !345
  br label %33, !dbg !345

20:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata ptr %7, metadata !346, metadata !DIExpression()), !dbg !356
  call void @_ZN7threads22MutexDeadlockExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #9, !dbg !356
  %21 = call ptr @__cxa_allocate_exception(i64 8) #9, !dbg !357
  call void @_ZN7threads22MutexDeadlockExceptionC2EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull align 8 dereferenceable(8) %7) #9, !dbg !358
  invoke void @__cxa_throw(ptr %21, ptr @_ZTIN7threads22MutexDeadlockExceptionE, ptr @_ZN7threads22MutexDeadlockExceptionD2Ev) #10
          to label %38 unwind label %22, !dbg !357

22:                                               ; preds = %20
  %23 = landingpad { ptr, i32 }
          cleanup, !dbg !359
  %24 = extractvalue { ptr, i32 } %23, 0, !dbg !359
  store ptr %24, ptr %5, align 8, !dbg !359
  %25 = extractvalue { ptr, i32 } %23, 1, !dbg !359
  store i32 %25, ptr %6, align 4, !dbg !359
  call void @_ZN7threads22MutexDeadlockExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #9, !dbg !360
  br label %33, !dbg !360

26:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata ptr %8, metadata !361, metadata !DIExpression()), !dbg !363
  call void @_ZN7threads21MutexUnknownExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #9, !dbg !363
  %27 = call ptr @__cxa_allocate_exception(i64 8) #9, !dbg !364
  call void @_ZN7threads21MutexUnknownExceptionC2EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dereferenceable(8) %8) #9, !dbg !365
  invoke void @__cxa_throw(ptr %27, ptr @_ZTIN7threads21MutexUnknownExceptionE, ptr @_ZN7threads21MutexUnknownExceptionD2Ev) #10
          to label %38 unwind label %28, !dbg !364

28:                                               ; preds = %26
  %29 = landingpad { ptr, i32 }
          cleanup, !dbg !366
  %30 = extractvalue { ptr, i32 } %29, 0, !dbg !366
  store ptr %30, ptr %5, align 8, !dbg !366
  %31 = extractvalue { ptr, i32 } %29, 1, !dbg !366
  store i32 %31, ptr %6, align 4, !dbg !366
  call void @_ZN7threads21MutexUnknownExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #9, !dbg !367
  br label %33, !dbg !367

32:                                               ; preds = %13
  ret void, !dbg !368

33:                                               ; preds = %28, %22, %16
  %34 = load ptr, ptr %5, align 8, !dbg !345
  %35 = load i32, ptr %6, align 4, !dbg !345
  %36 = insertvalue { ptr, i32 } poison, ptr %34, 0, !dbg !345
  %37 = insertvalue { ptr, i32 } %36, i32 %35, 1, !dbg !345
  resume { ptr, i32 } %37, !dbg !345

38:                                               ; preds = %26, %20, %14
  unreachable
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7threads21MutexLockingExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 !dbg !369 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !374, metadata !DIExpression()), !dbg !376
  %3 = load ptr, ptr %2, align 8
  call void @_ZN7threads14MutexExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #9, !dbg !377
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN7threads21MutexLockingExceptionE, i32 0, inrange i32 0, i32 2), ptr %3, align 8, !dbg !377
  ret void, !dbg !377
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7threads21MutexLockingExceptionC2EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 !dbg !378 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !383, metadata !DIExpression()), !dbg !384
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !385, metadata !DIExpression()), !dbg !384
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8, !dbg !386
  call void @_ZN7threads14MutexExceptionC2EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) #9, !dbg !386
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN7threads21MutexLockingExceptionE, i32 0, inrange i32 0, i32 2), ptr %5, align 8, !dbg !386
  ret void, !dbg !386
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7threads21MutexLockingExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 !dbg !387 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !389, metadata !DIExpression()), !dbg !390
  %3 = load ptr, ptr %2, align 8
  call void @_ZN7threads14MutexExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #9, !dbg !391
  ret void, !dbg !393
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7threads22MutexDeadlockExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 !dbg !394 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !399, metadata !DIExpression()), !dbg !401
  %3 = load ptr, ptr %2, align 8
  call void @_ZN7threads21MutexLockingExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #9, !dbg !402
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN7threads22MutexDeadlockExceptionE, i32 0, inrange i32 0, i32 2), ptr %3, align 8, !dbg !402
  ret void, !dbg !402
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7threads22MutexDeadlockExceptionC2EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 !dbg !403 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !408, metadata !DIExpression()), !dbg !409
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !410, metadata !DIExpression()), !dbg !409
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8, !dbg !411
  call void @_ZN7threads21MutexLockingExceptionC2EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) #9, !dbg !411
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN7threads22MutexDeadlockExceptionE, i32 0, inrange i32 0, i32 2), ptr %5, align 8, !dbg !411
  ret void, !dbg !411
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7threads22MutexDeadlockExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 !dbg !412 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !414, metadata !DIExpression()), !dbg !415
  %3 = load ptr, ptr %2, align 8
  call void @_ZN7threads21MutexLockingExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #9, !dbg !416
  ret void, !dbg !418
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef zeroext i1 @_ZN7threads5Mutex7TryLockEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !dbg !419 {
  %2 = alloca i1, align 1
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca %"class.threads::MutexLockingException", align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca %"class.threads::MutexUnknownException", align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !420, metadata !DIExpression()), !dbg !421
  %9 = load ptr, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !422, metadata !DIExpression()), !dbg !423
  %10 = getelementptr inbounds %"class.threads::Mutex", ptr %9, i32 0, i32 1, !dbg !424
  %11 = call i32 @pthread_mutex_trylock(ptr noundef %10) #9, !dbg !425
  store i32 %11, ptr %4, align 4, !dbg !426
  %12 = load i32, ptr %4, align 4, !dbg !427
  switch i32 %12, label %21 [
    i32 0, label %13
    i32 16, label %14
    i32 22, label %15
    i32 11, label %15
  ], !dbg !428

13:                                               ; preds = %1
  br label %27, !dbg !429

14:                                               ; preds = %1
  store i1 false, ptr %2, align 1, !dbg !431
  br label %28, !dbg !431

15:                                               ; preds = %1, %1
  call void @llvm.dbg.declare(metadata ptr %5, metadata !432, metadata !DIExpression()), !dbg !434
  call void @_ZN7threads21MutexLockingExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #9, !dbg !434
  %16 = call ptr @__cxa_allocate_exception(i64 8) #9, !dbg !435
  call void @_ZN7threads21MutexLockingExceptionC2EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %5) #9, !dbg !436
  invoke void @__cxa_throw(ptr %16, ptr @_ZTIN7threads21MutexLockingExceptionE, ptr @_ZN7threads21MutexLockingExceptionD2Ev) #10
          to label %35 unwind label %17, !dbg !435

17:                                               ; preds = %15
  %18 = landingpad { ptr, i32 }
          cleanup, !dbg !437
  %19 = extractvalue { ptr, i32 } %18, 0, !dbg !437
  store ptr %19, ptr %6, align 8, !dbg !437
  %20 = extractvalue { ptr, i32 } %18, 1, !dbg !437
  store i32 %20, ptr %7, align 4, !dbg !437
  call void @_ZN7threads21MutexLockingExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #9, !dbg !438
  br label %30, !dbg !438

21:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata ptr %8, metadata !439, metadata !DIExpression()), !dbg !441
  call void @_ZN7threads21MutexUnknownExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #9, !dbg !441
  %22 = call ptr @__cxa_allocate_exception(i64 8) #9, !dbg !442
  call void @_ZN7threads21MutexUnknownExceptionC2EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull align 8 dereferenceable(8) %8) #9, !dbg !443
  invoke void @__cxa_throw(ptr %22, ptr @_ZTIN7threads21MutexUnknownExceptionE, ptr @_ZN7threads21MutexUnknownExceptionD2Ev) #10
          to label %35 unwind label %23, !dbg !442

23:                                               ; preds = %21
  %24 = landingpad { ptr, i32 }
          cleanup, !dbg !444
  %25 = extractvalue { ptr, i32 } %24, 0, !dbg !444
  store ptr %25, ptr %6, align 8, !dbg !444
  %26 = extractvalue { ptr, i32 } %24, 1, !dbg !444
  store i32 %26, ptr %7, align 4, !dbg !444
  call void @_ZN7threads21MutexUnknownExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #9, !dbg !445
  br label %30, !dbg !445

27:                                               ; preds = %13
  store i1 true, ptr %2, align 1, !dbg !446
  br label %28, !dbg !446

28:                                               ; preds = %27, %14
  %29 = load i1, ptr %2, align 1, !dbg !447
  ret i1 %29, !dbg !447

30:                                               ; preds = %23, %17
  %31 = load ptr, ptr %6, align 8, !dbg !438
  %32 = load i32, ptr %7, align 4, !dbg !438
  %33 = insertvalue { ptr, i32 } poison, ptr %31, 0, !dbg !438
  %34 = insertvalue { ptr, i32 } %33, i32 %32, 1, !dbg !438
  resume { ptr, i32 } %34, !dbg !438

35:                                               ; preds = %21, %15
  unreachable
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_trylock(ptr noundef) #3

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN7threads5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !dbg !448 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca %"class.threads::MutexLockingException", align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca %"class.threads::MutexUnknownException", align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !449, metadata !DIExpression()), !dbg !450
  %8 = load ptr, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !451, metadata !DIExpression()), !dbg !452
  %9 = getelementptr inbounds %"class.threads::Mutex", ptr %8, i32 0, i32 1, !dbg !453
  %10 = call i32 @pthread_mutex_unlock(ptr noundef %9) #9, !dbg !454
  store i32 %10, ptr %3, align 4, !dbg !455
  %11 = load i32, ptr %3, align 4, !dbg !456
  switch i32 %11, label %19 [
    i32 0, label %12
    i32 22, label %13
    i32 11, label %13
    i32 1, label %13
  ], !dbg !457

12:                                               ; preds = %1
  br label %25, !dbg !458

13:                                               ; preds = %1, %1, %1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !460, metadata !DIExpression()), !dbg !462
  call void @_ZN7threads21MutexLockingExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #9, !dbg !462
  %14 = call ptr @__cxa_allocate_exception(i64 8) #9, !dbg !463
  call void @_ZN7threads21MutexLockingExceptionC2EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %4) #9, !dbg !464
  invoke void @__cxa_throw(ptr %14, ptr @_ZTIN7threads21MutexLockingExceptionE, ptr @_ZN7threads21MutexLockingExceptionD2Ev) #10
          to label %31 unwind label %15, !dbg !463

15:                                               ; preds = %13
  %16 = landingpad { ptr, i32 }
          cleanup, !dbg !465
  %17 = extractvalue { ptr, i32 } %16, 0, !dbg !465
  store ptr %17, ptr %5, align 8, !dbg !465
  %18 = extractvalue { ptr, i32 } %16, 1, !dbg !465
  store i32 %18, ptr %6, align 4, !dbg !465
  call void @_ZN7threads21MutexLockingExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #9, !dbg !466
  br label %26, !dbg !466

19:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata ptr %7, metadata !467, metadata !DIExpression()), !dbg !469
  call void @_ZN7threads21MutexUnknownExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #9, !dbg !469
  %20 = call ptr @__cxa_allocate_exception(i64 8) #9, !dbg !470
  call void @_ZN7threads21MutexUnknownExceptionC2EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(8) %7) #9, !dbg !471
  invoke void @__cxa_throw(ptr %20, ptr @_ZTIN7threads21MutexUnknownExceptionE, ptr @_ZN7threads21MutexUnknownExceptionD2Ev) #10
          to label %31 unwind label %21, !dbg !470

21:                                               ; preds = %19
  %22 = landingpad { ptr, i32 }
          cleanup, !dbg !472
  %23 = extractvalue { ptr, i32 } %22, 0, !dbg !472
  store ptr %23, ptr %5, align 8, !dbg !472
  %24 = extractvalue { ptr, i32 } %22, 1, !dbg !472
  store i32 %24, ptr %6, align 4, !dbg !472
  call void @_ZN7threads21MutexUnknownExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #9, !dbg !473
  br label %26, !dbg !473

25:                                               ; preds = %12
  ret void, !dbg !474

26:                                               ; preds = %21, %15
  %27 = load ptr, ptr %5, align 8, !dbg !466
  %28 = load i32, ptr %6, align 4, !dbg !466
  %29 = insertvalue { ptr, i32 } poison, ptr %27, 0, !dbg !466
  %30 = insertvalue { ptr, i32 } %29, i32 %28, 1, !dbg !466
  resume { ptr, i32 } %30, !dbg !466

31:                                               ; preds = %19, %13
  unreachable
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7threads8LockTypeD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 !dbg !475 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !476, metadata !DIExpression()), !dbg !477
  %3 = load ptr, ptr %2, align 8
  ret void, !dbg !478
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7threads8LockTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 !dbg !479 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !480, metadata !DIExpression()), !dbg !481
  %3 = load ptr, ptr %2, align 8
  call void @llvm.trap() #11, !dbg !482
  unreachable, !dbg !482
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold noreturn nounwind
declare void @llvm.trap() #7

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7threads14MutexExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 !dbg !483 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !488, metadata !DIExpression()), !dbg !490
  %3 = load ptr, ptr %2, align 8
  call void @_ZNSt9exceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #9, !dbg !491
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN7threads14MutexExceptionE, i32 0, inrange i32 0, i32 2), ptr %3, align 8, !dbg !491
  ret void, !dbg !491
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7threads22MutexResourceExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 !dbg !492 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !493, metadata !DIExpression()), !dbg !494
  %3 = load ptr, ptr %2, align 8
  call void @_ZN7threads22MutexResourceExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #9, !dbg !495
  call void @_ZdlPv(ptr noundef %3) #12, !dbg !495
  ret void, !dbg !495
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7threads22MutexResourceException4whatEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 comdat align 2 !dbg !496 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !497, metadata !DIExpression()), !dbg !499
  %3 = load ptr, ptr %2, align 8
  ret ptr @.str, !dbg !500
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt9exceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 !dbg !501 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !506, metadata !DIExpression()), !dbg !508
  %3 = load ptr, ptr %2, align 8
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVSt9exception, i32 0, inrange i32 0, i32 2), ptr %3, align 8, !dbg !509
  ret void, !dbg !510
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7threads14MutexExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 !dbg !511 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !513, metadata !DIExpression()), !dbg !514
  %3 = load ptr, ptr %2, align 8
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #9, !dbg !515
  ret void, !dbg !517
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7threads14MutexExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 !dbg !518 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !519, metadata !DIExpression()), !dbg !520
  %3 = load ptr, ptr %2, align 8
  call void @_ZN7threads14MutexExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #9, !dbg !521
  call void @_ZdlPv(ptr noundef %3) #12, !dbg !521
  ret void, !dbg !521
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7threads14MutexException4whatEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 comdat align 2 !dbg !522 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !523, metadata !DIExpression()), !dbg !525
  %3 = load ptr, ptr %2, align 8
  ret ptr @.str, !dbg !526
}

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7threads14MutexExceptionC2EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 !dbg !527 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !532, metadata !DIExpression()), !dbg !533
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !534, metadata !DIExpression()), !dbg !533
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8, !dbg !535
  call void @_ZNSt9exceptionC2EOS_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) #9, !dbg !535
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN7threads14MutexExceptionE, i32 0, inrange i32 0, i32 2), ptr %5, align 8, !dbg !535
  ret void, !dbg !535
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt9exceptionC2EOS_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 !dbg !536 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !541, metadata !DIExpression()), !dbg !542
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !543, metadata !DIExpression()), !dbg !544
  %5 = load ptr, ptr %3, align 8
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVSt9exception, i32 0, inrange i32 0, i32 2), ptr %5, align 8, !dbg !545
  ret void, !dbg !545
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7threads18MutexInitExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 !dbg !546 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !547, metadata !DIExpression()), !dbg !548
  %3 = load ptr, ptr %2, align 8
  call void @_ZN7threads18MutexInitExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #9, !dbg !549
  call void @_ZdlPv(ptr noundef %3) #12, !dbg !549
  ret void, !dbg !549
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7threads18MutexInitException4whatEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 comdat align 2 !dbg !550 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !551, metadata !DIExpression()), !dbg !553
  %3 = load ptr, ptr %2, align 8
  ret ptr @.str.1, !dbg !554
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7threads21MutexUnknownExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 !dbg !555 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !556, metadata !DIExpression()), !dbg !557
  %3 = load ptr, ptr %2, align 8
  call void @_ZN7threads21MutexUnknownExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #9, !dbg !558
  call void @_ZdlPv(ptr noundef %3) #12, !dbg !558
  ret void, !dbg !558
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7threads21MutexUnknownException4whatEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 comdat align 2 !dbg !559 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !560, metadata !DIExpression()), !dbg !562
  %3 = load ptr, ptr %2, align 8
  ret ptr @.str.1, !dbg !563
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7threads21MutexDestroyExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 !dbg !564 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !565, metadata !DIExpression()), !dbg !566
  %3 = load ptr, ptr %2, align 8
  call void @_ZN7threads21MutexDestroyExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #9, !dbg !567
  call void @_ZdlPv(ptr noundef %3) #12, !dbg !567
  ret void, !dbg !567
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7threads21MutexDestroyException4whatEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 comdat align 2 !dbg !568 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !569, metadata !DIExpression()), !dbg !571
  %3 = load ptr, ptr %2, align 8
  ret ptr @.str, !dbg !572
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7threads21MutexLockingExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 !dbg !573 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !574, metadata !DIExpression()), !dbg !575
  %3 = load ptr, ptr %2, align 8
  call void @_ZN7threads21MutexLockingExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #9, !dbg !576
  call void @_ZdlPv(ptr noundef %3) #12, !dbg !576
  ret void, !dbg !576
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7threads21MutexLockingException4whatEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 comdat align 2 !dbg !577 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !578, metadata !DIExpression()), !dbg !580
  %3 = load ptr, ptr %2, align 8
  ret ptr @.str, !dbg !581
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7threads22MutexDeadlockExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 !dbg !582 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !583, metadata !DIExpression()), !dbg !584
  %3 = load ptr, ptr %2, align 8
  call void @_ZN7threads22MutexDeadlockExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #9, !dbg !585
  call void @_ZdlPv(ptr noundef %3) #12, !dbg !585
  ret void, !dbg !585
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7threads22MutexDeadlockException4whatEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 comdat align 2 !dbg !586 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !587, metadata !DIExpression()), !dbg !589
  %3 = load ptr, ptr %2, align 8
  ret ptr @.str, !dbg !590
}

attributes #0 = { noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold noreturn nounwind }
attributes #8 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { noreturn }
attributes #11 = { noreturn nounwind }
attributes #12 = { builtin nounwind }

!llvm.dbg.cu = !{!13}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 37, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "../TrackingBenchmark/threads/Mutex.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/bodytrack/src/build", checksumkind: CSK_MD5, checksum: "f0ed03367cbf8cde9f14e92e6c75d4c7")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !6)
!4 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !{!7}
!7 = !DISubrange(count: 24)
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(scope: null, file: !2, line: 45, type: !10, isLocal: true, isDefinition: true)
!10 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !11)
!11 = !{!12}
!12 = !DISubrange(count: 14)
!13 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !14, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !15, imports: !16, splitDebugInlining: false, nameTableKind: None)
!14 = !DIFile(filename: "../TrackingBenchmark/threads/Mutex.cpp", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/bodytrack/src/build", checksumkind: CSK_MD5, checksum: "a2323352177b3122677ee75487e42939")
!15 = !{!0, !8}
!16 = !{!17, !22}
!17 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !19, file: !20, line: 68)
!18 = !DINamespace(name: "std", scope: null)
!19 = !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !21, file: !20, line: 90, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!20 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/exception_ptr.h", directory: "", checksumkind: CSK_MD5, checksum: "ed433011c81450fc2dabd9aa8a29a038")
!21 = !DINamespace(name: "__exception_ptr", scope: !18)
!22 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !23, file: !20, line: 84)
!23 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !18, file: !20, line: 80, type: !24, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!24 = !DISubroutineType(types: !25)
!25 = !{null, !19}
!26 = !{i32 7, !"Dwarf Version", i32 5}
!27 = !{i32 2, !"Debug Info Version", i32 3}
!28 = !{i32 1, !"wchar_size", i32 4}
!29 = !{i32 8, !"PIC Level", i32 2}
!30 = !{i32 7, !"PIE Level", i32 2}
!31 = !{i32 7, !"uwtable", i32 2}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 16.0.0"}
!34 = distinct !DISubprogram(name: "Mutex", linkageName: "_ZN7threads5MutexC2Ev", scope: !35, file: !14, line: 27, type: !91, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, declaration: !90, retainedNodes: !100)
!35 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Mutex", scope: !36, file: !2, line: 85, size: 384, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !37, vtableHolder: !39)
!36 = !DINamespace(name: "threads", scope: null)
!37 = !{!38, !58, !90, !94, !95, !96, !97}
!38 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !35, baseType: !39, flags: DIFlagPublic, extraData: i32 0)
!39 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "LockType", scope: !36, file: !40, line: 20, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !41, vtableHolder: !39, identifier: "_ZTSN7threads8LockTypeE")
!40 = !DIFile(filename: "../TrackingBenchmark/threads/LockTypes.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/bodytrack/src/build", checksumkind: CSK_MD5, checksum: "0ca0f04436c9d86d1b79d0c43fe7dd57")
!41 = !{!42, !48, !52, !53, !54}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$LockType", scope: !40, file: !40, baseType: !43, size: 64, flags: DIFlagArtificial)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "__vtbl_ptr_type", baseType: !45, size: 64)
!45 = !DISubroutineType(types: !46)
!46 = !{!47}
!47 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!48 = !DISubprogram(name: "~LockType", scope: !39, file: !40, line: 22, type: !49, scopeLine: 22, containingType: !39, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!49 = !DISubroutineType(types: !50)
!50 = !{null, !51}
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!52 = !DISubprogram(name: "Lock", linkageName: "_ZN7threads8LockType4LockEv", scope: !39, file: !40, line: 25, type: !49, scopeLine: 25, containingType: !39, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual)
!53 = !DISubprogram(name: "Unlock", linkageName: "_ZN7threads8LockType6UnlockEv", scope: !39, file: !40, line: 27, type: !49, scopeLine: 27, containingType: !39, virtualIndex: 3, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual)
!54 = !DISubprogram(name: "TryLock", linkageName: "_ZN7threads8LockType7TryLockEv", scope: !39, file: !40, line: 29, type: !55, scopeLine: 29, containingType: !39, virtualIndex: 4, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual)
!55 = !DISubroutineType(types: !56)
!56 = !{!57, !51}
!57 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !35, file: !2, line: 102, baseType: !59, size: 320, offset: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !60, line: 72, baseType: !61)
!60 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!61 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !60, line: 67, size: 320, flags: DIFlagTypePassByValue, elements: !62, identifier: "_ZTS15pthread_mutex_t")
!62 = !{!63, !84, !88}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !61, file: !60, line: 69, baseType: !64, size: 320)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !65, line: 22, size: 320, flags: DIFlagTypePassByValue, elements: !66, identifier: "_ZTS17__pthread_mutex_s")
!65 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "584baedd80e6041b81caae7f496091c0")
!66 = !{!67, !68, !70, !71, !72, !73, !75, !76}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !64, file: !65, line: 24, baseType: !47, size: 32)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !64, file: !65, line: 25, baseType: !69, size: 32, offset: 32)
!69 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !64, file: !65, line: 26, baseType: !47, size: 32, offset: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !64, file: !65, line: 28, baseType: !69, size: 32, offset: 96)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !64, file: !65, line: 32, baseType: !47, size: 32, offset: 128)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !64, file: !65, line: 34, baseType: !74, size: 16, offset: 160)
!74 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !64, file: !65, line: 35, baseType: !74, size: 16, offset: 176)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !64, file: !65, line: 36, baseType: !77, size: 128, offset: 192)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !78, line: 55, baseType: !79)
!78 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "04c81e86d34dad9c99ad006d32e47a0d")
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !78, line: 51, size: 128, flags: DIFlagTypePassByValue, elements: !80, identifier: "_ZTS23__pthread_internal_list")
!80 = !{!81, !83}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !79, file: !78, line: 53, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !79, file: !78, line: 54, baseType: !82, size: 64, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !61, file: !60, line: 70, baseType: !85, size: 320)
!85 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 320, elements: !86)
!86 = !{!87}
!87 = !DISubrange(count: 40)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !61, file: !60, line: 71, baseType: !89, size: 64)
!89 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!90 = !DISubprogram(name: "Mutex", scope: !35, file: !2, line: 90, type: !91, scopeLine: 90, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!91 = !DISubroutineType(types: !92)
!92 = !{null, !93}
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!94 = !DISubprogram(name: "~Mutex", scope: !35, file: !2, line: 91, type: !91, scopeLine: 91, containingType: !35, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!95 = !DISubprogram(name: "Lock", linkageName: "_ZN7threads5Mutex4LockEv", scope: !35, file: !2, line: 94, type: !91, scopeLine: 94, containingType: !35, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!96 = !DISubprogram(name: "Unlock", linkageName: "_ZN7threads5Mutex6UnlockEv", scope: !35, file: !2, line: 96, type: !91, scopeLine: 96, containingType: !35, virtualIndex: 3, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!97 = !DISubprogram(name: "TryLock", linkageName: "_ZN7threads5Mutex7TryLockEv", scope: !35, file: !2, line: 98, type: !98, scopeLine: 98, containingType: !35, virtualIndex: 4, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!98 = !DISubroutineType(types: !99)
!99 = !{!57, !93}
!100 = !{}
!101 = !DILocalVariable(name: "this", arg: 1, scope: !34, type: !102, flags: DIFlagArtificial | DIFlagObjectPointer)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!103 = !DILocation(line: 0, scope: !34)
!104 = !DILocation(line: 27, column: 8, scope: !34)
!105 = !DILocation(line: 27, column: 15, scope: !34)
!106 = !DILocalVariable(name: "rv", scope: !107, file: !14, line: 29, type: !47)
!107 = distinct !DILexicalBlock(scope: !34, file: !14, line: 27, column: 15)
!108 = !DILocation(line: 29, column: 7, scope: !107)
!109 = !DILocation(line: 31, column: 28, scope: !107)
!110 = !DILocation(line: 31, column: 8, scope: !107)
!111 = !DILocation(line: 31, column: 6, scope: !107)
!112 = !DILocation(line: 33, column: 10, scope: !107)
!113 = !DILocation(line: 33, column: 3, scope: !107)
!114 = !DILocation(line: 35, column: 7, scope: !115)
!115 = distinct !DILexicalBlock(scope: !107, file: !14, line: 33, column: 14)
!116 = !DILocalVariable(name: "e", scope: !117, file: !14, line: 39, type: !118)
!117 = distinct !DILexicalBlock(scope: !115, file: !14, line: 38, column: 5)
!118 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "MutexResourceException", scope: !36, file: !2, line: 56, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !119, vtableHolder: !124, identifier: "_ZTSN7threads22MutexResourceExceptionE")
!119 = !{!120, !132}
!120 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !118, baseType: !121, flags: DIFlagPublic, extraData: i32 0)
!121 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "MutexException", scope: !36, file: !2, line: 35, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !122, vtableHolder: !124, identifier: "_ZTSN7threads14MutexExceptionE")
!122 = !{!123, !126}
!123 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !121, baseType: !124, flags: DIFlagPublic, extraData: i32 0)
!124 = !DICompositeType(tag: DW_TAG_class_type, name: "exception", scope: !18, file: !125, line: 61, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial)
!125 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/exception.h", directory: "")
!126 = !DISubprogram(name: "what", linkageName: "_ZNK7threads14MutexException4whatEv", scope: !121, file: !2, line: 37, type: !127, scopeLine: 37, containingType: !121, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!127 = !DISubroutineType(types: !128)
!128 = !{!129, !130}
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !121)
!132 = !DISubprogram(name: "what", linkageName: "_ZNK7threads22MutexResourceException4whatEv", scope: !118, file: !2, line: 58, type: !133, scopeLine: 58, containingType: !118, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!133 = !DISubroutineType(types: !134)
!134 = !{!129, !135}
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !118)
!137 = !DILocation(line: 39, column: 30, scope: !117)
!138 = !DILocation(line: 40, column: 7, scope: !117)
!139 = !DILocation(line: 40, column: 13, scope: !117)
!140 = !DILocation(line: 61, column: 1, scope: !117)
!141 = !DILocation(line: 42, column: 5, scope: !115)
!142 = !DILocalVariable(name: "e", scope: !143, file: !14, line: 47, type: !144)
!143 = distinct !DILexicalBlock(scope: !115, file: !14, line: 46, column: 5)
!144 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "MutexInitException", scope: !36, file: !2, line: 41, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !145, vtableHolder: !124, identifier: "_ZTSN7threads18MutexInitExceptionE")
!145 = !{!146, !147}
!146 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !144, baseType: !121, flags: DIFlagPublic, extraData: i32 0)
!147 = !DISubprogram(name: "what", linkageName: "_ZNK7threads18MutexInitException4whatEv", scope: !144, file: !2, line: 44, type: !148, scopeLine: 44, containingType: !144, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!148 = !DISubroutineType(types: !149)
!149 = !{!129, !150}
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !144)
!152 = !DILocation(line: 47, column: 26, scope: !143)
!153 = !DILocation(line: 48, column: 7, scope: !143)
!154 = !DILocation(line: 48, column: 13, scope: !143)
!155 = !DILocation(line: 61, column: 1, scope: !143)
!156 = !DILocation(line: 50, column: 5, scope: !115)
!157 = !DILocalVariable(name: "e", scope: !158, file: !14, line: 53, type: !159)
!158 = distinct !DILexicalBlock(scope: !115, file: !14, line: 52, column: 5)
!159 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "MutexUnknownException", scope: !36, file: !2, line: 74, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !160, vtableHolder: !124, identifier: "_ZTSN7threads21MutexUnknownExceptionE")
!160 = !{!161, !162}
!161 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !159, baseType: !121, flags: DIFlagPublic, extraData: i32 0)
!162 = !DISubprogram(name: "what", linkageName: "_ZNK7threads21MutexUnknownException4whatEv", scope: !159, file: !2, line: 76, type: !163, scopeLine: 76, containingType: !159, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!163 = !DISubroutineType(types: !164)
!164 = !{!129, !165}
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !159)
!167 = !DILocation(line: 53, column: 29, scope: !158)
!168 = !DILocation(line: 54, column: 7, scope: !158)
!169 = !DILocation(line: 54, column: 13, scope: !158)
!170 = !DILocation(line: 61, column: 1, scope: !158)
!171 = !DILocation(line: 56, column: 5, scope: !115)
!172 = !DILocation(line: 61, column: 1, scope: !34)
!173 = !DILocation(line: 61, column: 1, scope: !107)
!174 = distinct !DISubprogram(name: "LockType", linkageName: "_ZN7threads8LockTypeC2Ev", scope: !39, file: !40, line: 20, type: !49, scopeLine: 20, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, declaration: !175, retainedNodes: !100)
!175 = !DISubprogram(name: "LockType", scope: !39, type: !49, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!176 = !DILocalVariable(name: "this", arg: 1, scope: !174, type: !177, flags: DIFlagArtificial | DIFlagObjectPointer)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!178 = !DILocation(line: 0, scope: !174)
!179 = !DILocation(line: 20, column: 7, scope: !174)
!180 = distinct !DISubprogram(name: "MutexResourceException", linkageName: "_ZN7threads22MutexResourceExceptionC2Ev", scope: !118, file: !2, line: 56, type: !181, scopeLine: 56, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, declaration: !184, retainedNodes: !100)
!181 = !DISubroutineType(types: !182)
!182 = !{null, !183}
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!184 = !DISubprogram(name: "MutexResourceException", scope: !118, type: !181, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!185 = !DILocalVariable(name: "this", arg: 1, scope: !180, type: !186, flags: DIFlagArtificial | DIFlagObjectPointer)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!187 = !DILocation(line: 0, scope: !180)
!188 = !DILocation(line: 56, column: 7, scope: !180)
!189 = distinct !DISubprogram(name: "MutexResourceException", linkageName: "_ZN7threads22MutexResourceExceptionC2EOS0_", scope: !118, file: !2, line: 56, type: !190, scopeLine: 56, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, declaration: !193, retainedNodes: !100)
!190 = !DISubroutineType(types: !191)
!191 = !{null, !183, !192}
!192 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !118, size: 64)
!193 = !DISubprogram(name: "MutexResourceException", scope: !118, type: !190, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!194 = !DILocalVariable(name: "this", arg: 1, scope: !189, type: !186, flags: DIFlagArtificial | DIFlagObjectPointer)
!195 = !DILocation(line: 0, scope: !189)
!196 = !DILocalVariable(arg: 2, scope: !189, type: !192)
!197 = !DILocation(line: 56, column: 7, scope: !189)
!198 = distinct !DISubprogram(name: "~MutexResourceException", linkageName: "_ZN7threads22MutexResourceExceptionD2Ev", scope: !118, file: !2, line: 56, type: !181, scopeLine: 56, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, declaration: !199, retainedNodes: !100)
!199 = !DISubprogram(name: "~MutexResourceException", scope: !118, type: !181, containingType: !118, virtualIndex: 0, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!200 = !DILocalVariable(name: "this", arg: 1, scope: !198, type: !186, flags: DIFlagArtificial | DIFlagObjectPointer)
!201 = !DILocation(line: 0, scope: !198)
!202 = !DILocation(line: 56, column: 7, scope: !203)
!203 = distinct !DILexicalBlock(scope: !198, file: !2, line: 56, column: 7)
!204 = !DILocation(line: 56, column: 7, scope: !198)
!205 = distinct !DISubprogram(name: "MutexInitException", linkageName: "_ZN7threads18MutexInitExceptionC2Ev", scope: !144, file: !2, line: 41, type: !206, scopeLine: 41, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, declaration: !209, retainedNodes: !100)
!206 = !DISubroutineType(types: !207)
!207 = !{null, !208}
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!209 = !DISubprogram(name: "MutexInitException", scope: !144, type: !206, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!210 = !DILocalVariable(name: "this", arg: 1, scope: !205, type: !211, flags: DIFlagArtificial | DIFlagObjectPointer)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!212 = !DILocation(line: 0, scope: !205)
!213 = !DILocation(line: 41, column: 7, scope: !205)
!214 = distinct !DISubprogram(name: "MutexInitException", linkageName: "_ZN7threads18MutexInitExceptionC2EOS0_", scope: !144, file: !2, line: 41, type: !215, scopeLine: 41, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, declaration: !218, retainedNodes: !100)
!215 = !DISubroutineType(types: !216)
!216 = !{null, !208, !217}
!217 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !144, size: 64)
!218 = !DISubprogram(name: "MutexInitException", scope: !144, type: !215, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!219 = !DILocalVariable(name: "this", arg: 1, scope: !214, type: !211, flags: DIFlagArtificial | DIFlagObjectPointer)
!220 = !DILocation(line: 0, scope: !214)
!221 = !DILocalVariable(arg: 2, scope: !214, type: !217)
!222 = !DILocation(line: 41, column: 7, scope: !214)
!223 = distinct !DISubprogram(name: "~MutexInitException", linkageName: "_ZN7threads18MutexInitExceptionD2Ev", scope: !144, file: !2, line: 41, type: !206, scopeLine: 41, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, declaration: !224, retainedNodes: !100)
!224 = !DISubprogram(name: "~MutexInitException", scope: !144, type: !206, containingType: !144, virtualIndex: 0, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!225 = !DILocalVariable(name: "this", arg: 1, scope: !223, type: !211, flags: DIFlagArtificial | DIFlagObjectPointer)
!226 = !DILocation(line: 0, scope: !223)
!227 = !DILocation(line: 41, column: 7, scope: !228)
!228 = distinct !DILexicalBlock(scope: !223, file: !2, line: 41, column: 7)
!229 = !DILocation(line: 41, column: 7, scope: !223)
!230 = distinct !DISubprogram(name: "MutexUnknownException", linkageName: "_ZN7threads21MutexUnknownExceptionC2Ev", scope: !159, file: !2, line: 74, type: !231, scopeLine: 74, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, declaration: !234, retainedNodes: !100)
!231 = !DISubroutineType(types: !232)
!232 = !{null, !233}
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!234 = !DISubprogram(name: "MutexUnknownException", scope: !159, type: !231, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!235 = !DILocalVariable(name: "this", arg: 1, scope: !230, type: !236, flags: DIFlagArtificial | DIFlagObjectPointer)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!237 = !DILocation(line: 0, scope: !230)
!238 = !DILocation(line: 74, column: 7, scope: !230)
!239 = distinct !DISubprogram(name: "MutexUnknownException", linkageName: "_ZN7threads21MutexUnknownExceptionC2EOS0_", scope: !159, file: !2, line: 74, type: !240, scopeLine: 74, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, declaration: !243, retainedNodes: !100)
!240 = !DISubroutineType(types: !241)
!241 = !{null, !233, !242}
!242 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !159, size: 64)
!243 = !DISubprogram(name: "MutexUnknownException", scope: !159, type: !240, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!244 = !DILocalVariable(name: "this", arg: 1, scope: !239, type: !236, flags: DIFlagArtificial | DIFlagObjectPointer)
!245 = !DILocation(line: 0, scope: !239)
!246 = !DILocalVariable(arg: 2, scope: !239, type: !242)
!247 = !DILocation(line: 74, column: 7, scope: !239)
!248 = distinct !DISubprogram(name: "~MutexUnknownException", linkageName: "_ZN7threads21MutexUnknownExceptionD2Ev", scope: !159, file: !2, line: 74, type: !231, scopeLine: 74, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, declaration: !249, retainedNodes: !100)
!249 = !DISubprogram(name: "~MutexUnknownException", scope: !159, type: !231, containingType: !159, virtualIndex: 0, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!250 = !DILocalVariable(name: "this", arg: 1, scope: !248, type: !236, flags: DIFlagArtificial | DIFlagObjectPointer)
!251 = !DILocation(line: 0, scope: !248)
!252 = !DILocation(line: 74, column: 7, scope: !253)
!253 = distinct !DILexicalBlock(scope: !248, file: !2, line: 74, column: 7)
!254 = !DILocation(line: 74, column: 7, scope: !248)
!255 = distinct !DISubprogram(name: "~Mutex", linkageName: "_ZN7threads5MutexD2Ev", scope: !35, file: !14, line: 63, type: !91, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, declaration: !94, retainedNodes: !100)
!256 = !DILocalVariable(name: "this", arg: 1, scope: !255, type: !102, flags: DIFlagArtificial | DIFlagObjectPointer)
!257 = !DILocation(line: 0, scope: !255)
!258 = !DILocation(line: 63, column: 16, scope: !255)
!259 = !DILocalVariable(name: "rv", scope: !260, file: !14, line: 65, type: !47)
!260 = distinct !DILexicalBlock(scope: !255, file: !14, line: 63, column: 16)
!261 = !DILocation(line: 65, column: 7, scope: !260)
!262 = !DILocation(line: 67, column: 31, scope: !260)
!263 = !DILocation(line: 67, column: 8, scope: !260)
!264 = !DILocation(line: 67, column: 6, scope: !260)
!265 = !DILocation(line: 69, column: 10, scope: !260)
!266 = !DILocation(line: 69, column: 3, scope: !260)
!267 = !DILocation(line: 71, column: 7, scope: !268)
!268 = distinct !DILexicalBlock(scope: !260, file: !14, line: 69, column: 14)
!269 = !DILocalVariable(name: "e", scope: !270, file: !14, line: 75, type: !271)
!270 = distinct !DILexicalBlock(scope: !268, file: !14, line: 74, column: 5)
!271 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "MutexDestroyException", scope: !36, file: !2, line: 50, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !272, vtableHolder: !124, identifier: "_ZTSN7threads21MutexDestroyExceptionE")
!272 = !{!273, !274}
!273 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !271, baseType: !121, flags: DIFlagPublic, extraData: i32 0)
!274 = !DISubprogram(name: "what", linkageName: "_ZNK7threads21MutexDestroyException4whatEv", scope: !271, file: !2, line: 52, type: !275, scopeLine: 52, containingType: !271, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!275 = !DISubroutineType(types: !276)
!276 = !{!129, !277}
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !271)
!279 = !DILocation(line: 75, column: 29, scope: !270)
!280 = !DILocation(line: 76, column: 7, scope: !270)
!281 = !DILocation(line: 76, column: 13, scope: !270)
!282 = !DILocalVariable(name: "e", scope: !283, file: !14, line: 81, type: !159)
!283 = distinct !DILexicalBlock(scope: !268, file: !14, line: 80, column: 5)
!284 = !DILocation(line: 81, column: 29, scope: !283)
!285 = !DILocation(line: 82, column: 7, scope: !283)
!286 = !DILocation(line: 82, column: 13, scope: !283)
!287 = !DILocation(line: 89, column: 1, scope: !260)
!288 = !DILocation(line: 89, column: 1, scope: !255)
!289 = distinct !DISubprogram(name: "MutexDestroyException", linkageName: "_ZN7threads21MutexDestroyExceptionC2Ev", scope: !271, file: !2, line: 50, type: !290, scopeLine: 50, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, declaration: !293, retainedNodes: !100)
!290 = !DISubroutineType(types: !291)
!291 = !{null, !292}
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!293 = !DISubprogram(name: "MutexDestroyException", scope: !271, type: !290, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!294 = !DILocalVariable(name: "this", arg: 1, scope: !289, type: !295, flags: DIFlagArtificial | DIFlagObjectPointer)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!296 = !DILocation(line: 0, scope: !289)
!297 = !DILocation(line: 50, column: 7, scope: !289)
!298 = distinct !DISubprogram(name: "MutexDestroyException", linkageName: "_ZN7threads21MutexDestroyExceptionC2EOS0_", scope: !271, file: !2, line: 50, type: !299, scopeLine: 50, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, declaration: !302, retainedNodes: !100)
!299 = !DISubroutineType(types: !300)
!300 = !{null, !292, !301}
!301 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !271, size: 64)
!302 = !DISubprogram(name: "MutexDestroyException", scope: !271, type: !299, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!303 = !DILocalVariable(name: "this", arg: 1, scope: !298, type: !295, flags: DIFlagArtificial | DIFlagObjectPointer)
!304 = !DILocation(line: 0, scope: !298)
!305 = !DILocalVariable(arg: 2, scope: !298, type: !301)
!306 = !DILocation(line: 50, column: 7, scope: !298)
!307 = distinct !DISubprogram(name: "~MutexDestroyException", linkageName: "_ZN7threads21MutexDestroyExceptionD2Ev", scope: !271, file: !2, line: 50, type: !290, scopeLine: 50, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, declaration: !308, retainedNodes: !100)
!308 = !DISubprogram(name: "~MutexDestroyException", scope: !271, type: !290, containingType: !271, virtualIndex: 0, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!309 = !DILocalVariable(name: "this", arg: 1, scope: !307, type: !295, flags: DIFlagArtificial | DIFlagObjectPointer)
!310 = !DILocation(line: 0, scope: !307)
!311 = !DILocation(line: 50, column: 7, scope: !312)
!312 = distinct !DILexicalBlock(scope: !307, file: !2, line: 50, column: 7)
!313 = !DILocation(line: 50, column: 7, scope: !307)
!314 = distinct !DISubprogram(name: "~Mutex", linkageName: "_ZN7threads5MutexD0Ev", scope: !35, file: !14, line: 63, type: !91, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, declaration: !94, retainedNodes: !100)
!315 = !DILocalVariable(name: "this", arg: 1, scope: !314, type: !102, flags: DIFlagArtificial | DIFlagObjectPointer)
!316 = !DILocation(line: 0, scope: !314)
!317 = !DILocation(line: 63, column: 16, scope: !314)
!318 = !DILocation(line: 89, column: 1, scope: !314)
!319 = distinct !DISubprogram(name: "Lock", linkageName: "_ZN7threads5Mutex4LockEv", scope: !35, file: !14, line: 92, type: !91, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, declaration: !95, retainedNodes: !100)
!320 = !DILocalVariable(name: "this", arg: 1, scope: !319, type: !102, flags: DIFlagArtificial | DIFlagObjectPointer)
!321 = !DILocation(line: 0, scope: !319)
!322 = !DILocalVariable(name: "rv", scope: !319, file: !14, line: 94, type: !47)
!323 = !DILocation(line: 94, column: 7, scope: !319)
!324 = !DILocation(line: 96, column: 28, scope: !319)
!325 = !DILocation(line: 96, column: 8, scope: !319)
!326 = !DILocation(line: 96, column: 6, scope: !319)
!327 = !DILocation(line: 98, column: 10, scope: !319)
!328 = !DILocation(line: 98, column: 3, scope: !319)
!329 = !DILocation(line: 101, column: 7, scope: !330)
!330 = distinct !DILexicalBlock(scope: !319, file: !14, line: 98, column: 14)
!331 = !DILocalVariable(name: "e", scope: !332, file: !14, line: 105, type: !333)
!332 = distinct !DILexicalBlock(scope: !330, file: !14, line: 104, column: 5)
!333 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "MutexLockingException", scope: !36, file: !2, line: 62, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !334, vtableHolder: !124, identifier: "_ZTSN7threads21MutexLockingExceptionE")
!334 = !{!335, !336}
!335 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !333, baseType: !121, flags: DIFlagPublic, extraData: i32 0)
!336 = !DISubprogram(name: "what", linkageName: "_ZNK7threads21MutexLockingException4whatEv", scope: !333, file: !2, line: 64, type: !337, scopeLine: 64, containingType: !333, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!337 = !DISubroutineType(types: !338)
!338 = !{!129, !339}
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!340 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !333)
!341 = !DILocation(line: 105, column: 29, scope: !332)
!342 = !DILocation(line: 106, column: 7, scope: !332)
!343 = !DILocation(line: 106, column: 13, scope: !332)
!344 = !DILocation(line: 125, column: 1, scope: !332)
!345 = !DILocation(line: 108, column: 5, scope: !330)
!346 = !DILocalVariable(name: "e", scope: !347, file: !14, line: 111, type: !348)
!347 = distinct !DILexicalBlock(scope: !330, file: !14, line: 110, column: 5)
!348 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "MutexDeadlockException", scope: !36, file: !2, line: 68, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !349, vtableHolder: !124, identifier: "_ZTSN7threads22MutexDeadlockExceptionE")
!349 = !{!350, !351}
!350 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !348, baseType: !333, flags: DIFlagPublic, extraData: i32 0)
!351 = !DISubprogram(name: "what", linkageName: "_ZNK7threads22MutexDeadlockException4whatEv", scope: !348, file: !2, line: 70, type: !352, scopeLine: 70, containingType: !348, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!352 = !DISubroutineType(types: !353)
!353 = !{!129, !354}
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!355 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !348)
!356 = !DILocation(line: 111, column: 30, scope: !347)
!357 = !DILocation(line: 112, column: 7, scope: !347)
!358 = !DILocation(line: 112, column: 13, scope: !347)
!359 = !DILocation(line: 125, column: 1, scope: !347)
!360 = !DILocation(line: 114, column: 5, scope: !330)
!361 = !DILocalVariable(name: "e", scope: !362, file: !14, line: 117, type: !159)
!362 = distinct !DILexicalBlock(scope: !330, file: !14, line: 116, column: 5)
!363 = !DILocation(line: 117, column: 29, scope: !362)
!364 = !DILocation(line: 118, column: 7, scope: !362)
!365 = !DILocation(line: 118, column: 13, scope: !362)
!366 = !DILocation(line: 125, column: 1, scope: !362)
!367 = !DILocation(line: 120, column: 5, scope: !330)
!368 = !DILocation(line: 125, column: 1, scope: !319)
!369 = distinct !DISubprogram(name: "MutexLockingException", linkageName: "_ZN7threads21MutexLockingExceptionC2Ev", scope: !333, file: !2, line: 62, type: !370, scopeLine: 62, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, declaration: !373, retainedNodes: !100)
!370 = !DISubroutineType(types: !371)
!371 = !{null, !372}
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!373 = !DISubprogram(name: "MutexLockingException", scope: !333, type: !370, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!374 = !DILocalVariable(name: "this", arg: 1, scope: !369, type: !375, flags: DIFlagArtificial | DIFlagObjectPointer)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!376 = !DILocation(line: 0, scope: !369)
!377 = !DILocation(line: 62, column: 7, scope: !369)
!378 = distinct !DISubprogram(name: "MutexLockingException", linkageName: "_ZN7threads21MutexLockingExceptionC2EOS0_", scope: !333, file: !2, line: 62, type: !379, scopeLine: 62, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, declaration: !382, retainedNodes: !100)
!379 = !DISubroutineType(types: !380)
!380 = !{null, !372, !381}
!381 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !333, size: 64)
!382 = !DISubprogram(name: "MutexLockingException", scope: !333, type: !379, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!383 = !DILocalVariable(name: "this", arg: 1, scope: !378, type: !375, flags: DIFlagArtificial | DIFlagObjectPointer)
!384 = !DILocation(line: 0, scope: !378)
!385 = !DILocalVariable(arg: 2, scope: !378, type: !381)
!386 = !DILocation(line: 62, column: 7, scope: !378)
!387 = distinct !DISubprogram(name: "~MutexLockingException", linkageName: "_ZN7threads21MutexLockingExceptionD2Ev", scope: !333, file: !2, line: 62, type: !370, scopeLine: 62, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, declaration: !388, retainedNodes: !100)
!388 = !DISubprogram(name: "~MutexLockingException", scope: !333, type: !370, containingType: !333, virtualIndex: 0, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!389 = !DILocalVariable(name: "this", arg: 1, scope: !387, type: !375, flags: DIFlagArtificial | DIFlagObjectPointer)
!390 = !DILocation(line: 0, scope: !387)
!391 = !DILocation(line: 62, column: 7, scope: !392)
!392 = distinct !DILexicalBlock(scope: !387, file: !2, line: 62, column: 7)
!393 = !DILocation(line: 62, column: 7, scope: !387)
!394 = distinct !DISubprogram(name: "MutexDeadlockException", linkageName: "_ZN7threads22MutexDeadlockExceptionC2Ev", scope: !348, file: !2, line: 68, type: !395, scopeLine: 68, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, declaration: !398, retainedNodes: !100)
!395 = !DISubroutineType(types: !396)
!396 = !{null, !397}
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!398 = !DISubprogram(name: "MutexDeadlockException", scope: !348, type: !395, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!399 = !DILocalVariable(name: "this", arg: 1, scope: !394, type: !400, flags: DIFlagArtificial | DIFlagObjectPointer)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!401 = !DILocation(line: 0, scope: !394)
!402 = !DILocation(line: 68, column: 7, scope: !394)
!403 = distinct !DISubprogram(name: "MutexDeadlockException", linkageName: "_ZN7threads22MutexDeadlockExceptionC2EOS0_", scope: !348, file: !2, line: 68, type: !404, scopeLine: 68, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, declaration: !407, retainedNodes: !100)
!404 = !DISubroutineType(types: !405)
!405 = !{null, !397, !406}
!406 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !348, size: 64)
!407 = !DISubprogram(name: "MutexDeadlockException", scope: !348, type: !404, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!408 = !DILocalVariable(name: "this", arg: 1, scope: !403, type: !400, flags: DIFlagArtificial | DIFlagObjectPointer)
!409 = !DILocation(line: 0, scope: !403)
!410 = !DILocalVariable(arg: 2, scope: !403, type: !406)
!411 = !DILocation(line: 68, column: 7, scope: !403)
!412 = distinct !DISubprogram(name: "~MutexDeadlockException", linkageName: "_ZN7threads22MutexDeadlockExceptionD2Ev", scope: !348, file: !2, line: 68, type: !395, scopeLine: 68, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, declaration: !413, retainedNodes: !100)
!413 = !DISubprogram(name: "~MutexDeadlockException", scope: !348, type: !395, containingType: !348, virtualIndex: 0, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!414 = !DILocalVariable(name: "this", arg: 1, scope: !412, type: !400, flags: DIFlagArtificial | DIFlagObjectPointer)
!415 = !DILocation(line: 0, scope: !412)
!416 = !DILocation(line: 68, column: 7, scope: !417)
!417 = distinct !DILexicalBlock(scope: !412, file: !2, line: 68, column: 7)
!418 = !DILocation(line: 68, column: 7, scope: !412)
!419 = distinct !DISubprogram(name: "TryLock", linkageName: "_ZN7threads5Mutex7TryLockEv", scope: !35, file: !14, line: 128, type: !98, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, declaration: !97, retainedNodes: !100)
!420 = !DILocalVariable(name: "this", arg: 1, scope: !419, type: !102, flags: DIFlagArtificial | DIFlagObjectPointer)
!421 = !DILocation(line: 0, scope: !419)
!422 = !DILocalVariable(name: "rv", scope: !419, file: !14, line: 130, type: !47)
!423 = !DILocation(line: 130, column: 7, scope: !419)
!424 = !DILocation(line: 132, column: 31, scope: !419)
!425 = !DILocation(line: 132, column: 8, scope: !419)
!426 = !DILocation(line: 132, column: 6, scope: !419)
!427 = !DILocation(line: 134, column: 10, scope: !419)
!428 = !DILocation(line: 134, column: 3, scope: !419)
!429 = !DILocation(line: 137, column: 7, scope: !430)
!430 = distinct !DILexicalBlock(scope: !419, file: !14, line: 134, column: 14)
!431 = !DILocation(line: 140, column: 7, scope: !430)
!432 = !DILocalVariable(name: "e", scope: !433, file: !14, line: 145, type: !333)
!433 = distinct !DILexicalBlock(scope: !430, file: !14, line: 144, column: 5)
!434 = !DILocation(line: 145, column: 29, scope: !433)
!435 = !DILocation(line: 146, column: 7, scope: !433)
!436 = !DILocation(line: 146, column: 13, scope: !433)
!437 = !DILocation(line: 161, column: 1, scope: !433)
!438 = !DILocation(line: 148, column: 5, scope: !430)
!439 = !DILocalVariable(name: "e", scope: !440, file: !14, line: 151, type: !159)
!440 = distinct !DILexicalBlock(scope: !430, file: !14, line: 150, column: 5)
!441 = !DILocation(line: 151, column: 29, scope: !440)
!442 = !DILocation(line: 152, column: 7, scope: !440)
!443 = !DILocation(line: 152, column: 13, scope: !440)
!444 = !DILocation(line: 161, column: 1, scope: !440)
!445 = !DILocation(line: 154, column: 5, scope: !430)
!446 = !DILocation(line: 157, column: 3, scope: !419)
!447 = !DILocation(line: 161, column: 1, scope: !419)
!448 = distinct !DISubprogram(name: "Unlock", linkageName: "_ZN7threads5Mutex6UnlockEv", scope: !35, file: !14, line: 164, type: !91, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, declaration: !96, retainedNodes: !100)
!449 = !DILocalVariable(name: "this", arg: 1, scope: !448, type: !102, flags: DIFlagArtificial | DIFlagObjectPointer)
!450 = !DILocation(line: 0, scope: !448)
!451 = !DILocalVariable(name: "rv", scope: !448, file: !14, line: 166, type: !47)
!452 = !DILocation(line: 166, column: 7, scope: !448)
!453 = !DILocation(line: 168, column: 30, scope: !448)
!454 = !DILocation(line: 168, column: 8, scope: !448)
!455 = !DILocation(line: 168, column: 6, scope: !448)
!456 = !DILocation(line: 170, column: 10, scope: !448)
!457 = !DILocation(line: 170, column: 3, scope: !448)
!458 = !DILocation(line: 173, column: 7, scope: !459)
!459 = distinct !DILexicalBlock(scope: !448, file: !14, line: 170, column: 14)
!460 = !DILocalVariable(name: "e", scope: !461, file: !14, line: 178, type: !333)
!461 = distinct !DILexicalBlock(scope: !459, file: !14, line: 177, column: 5)
!462 = !DILocation(line: 178, column: 29, scope: !461)
!463 = !DILocation(line: 179, column: 7, scope: !461)
!464 = !DILocation(line: 179, column: 13, scope: !461)
!465 = !DILocation(line: 192, column: 1, scope: !461)
!466 = !DILocation(line: 181, column: 5, scope: !459)
!467 = !DILocalVariable(name: "e", scope: !468, file: !14, line: 184, type: !159)
!468 = distinct !DILexicalBlock(scope: !459, file: !14, line: 183, column: 5)
!469 = !DILocation(line: 184, column: 29, scope: !468)
!470 = !DILocation(line: 185, column: 7, scope: !468)
!471 = !DILocation(line: 185, column: 13, scope: !468)
!472 = !DILocation(line: 192, column: 1, scope: !468)
!473 = !DILocation(line: 187, column: 5, scope: !459)
!474 = !DILocation(line: 192, column: 1, scope: !448)
!475 = distinct !DISubprogram(name: "~LockType", linkageName: "_ZN7threads8LockTypeD2Ev", scope: !39, file: !40, line: 22, type: !49, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, declaration: !48, retainedNodes: !100)
!476 = !DILocalVariable(name: "this", arg: 1, scope: !475, type: !177, flags: DIFlagArtificial | DIFlagObjectPointer)
!477 = !DILocation(line: 0, scope: !475)
!478 = !DILocation(line: 22, column: 26, scope: !475)
!479 = distinct !DISubprogram(name: "~LockType", linkageName: "_ZN7threads8LockTypeD0Ev", scope: !39, file: !40, line: 22, type: !49, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, declaration: !48, retainedNodes: !100)
!480 = !DILocalVariable(name: "this", arg: 1, scope: !479, type: !177, flags: DIFlagArtificial | DIFlagObjectPointer)
!481 = !DILocation(line: 0, scope: !479)
!482 = !DILocation(line: 22, column: 25, scope: !479)
!483 = distinct !DISubprogram(name: "MutexException", linkageName: "_ZN7threads14MutexExceptionC2Ev", scope: !121, file: !2, line: 35, type: !484, scopeLine: 35, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, declaration: !487, retainedNodes: !100)
!484 = !DISubroutineType(types: !485)
!485 = !{null, !486}
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!487 = !DISubprogram(name: "MutexException", scope: !121, type: !484, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!488 = !DILocalVariable(name: "this", arg: 1, scope: !483, type: !489, flags: DIFlagArtificial | DIFlagObjectPointer)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!490 = !DILocation(line: 0, scope: !483)
!491 = !DILocation(line: 35, column: 7, scope: !483)
!492 = distinct !DISubprogram(name: "~MutexResourceException", linkageName: "_ZN7threads22MutexResourceExceptionD0Ev", scope: !118, file: !2, line: 56, type: !181, scopeLine: 56, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, declaration: !199, retainedNodes: !100)
!493 = !DILocalVariable(name: "this", arg: 1, scope: !492, type: !186, flags: DIFlagArtificial | DIFlagObjectPointer)
!494 = !DILocation(line: 0, scope: !492)
!495 = !DILocation(line: 56, column: 7, scope: !492)
!496 = distinct !DISubprogram(name: "what", linkageName: "_ZNK7threads22MutexResourceException4whatEv", scope: !118, file: !2, line: 58, type: !133, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, declaration: !132, retainedNodes: !100)
!497 = !DILocalVariable(name: "this", arg: 1, scope: !496, type: !498, flags: DIFlagArtificial | DIFlagObjectPointer)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!499 = !DILocation(line: 0, scope: !496)
!500 = !DILocation(line: 58, column: 59, scope: !496)
!501 = distinct !DISubprogram(name: "exception", linkageName: "_ZNSt9exceptionC2Ev", scope: !124, file: !125, line: 64, type: !502, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, declaration: !505, retainedNodes: !100)
!502 = !DISubroutineType(types: !503)
!503 = !{null, !504}
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!505 = !DISubprogram(name: "exception", scope: !124, file: !125, line: 64, type: !502, scopeLine: 64, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!506 = !DILocalVariable(name: "this", arg: 1, scope: !501, type: !507, flags: DIFlagArtificial | DIFlagObjectPointer)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!508 = !DILocation(line: 0, scope: !501)
!509 = !DILocation(line: 64, column: 34, scope: !501)
!510 = !DILocation(line: 64, column: 36, scope: !501)
!511 = distinct !DISubprogram(name: "~MutexException", linkageName: "_ZN7threads14MutexExceptionD2Ev", scope: !121, file: !2, line: 35, type: !484, scopeLine: 35, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, declaration: !512, retainedNodes: !100)
!512 = !DISubprogram(name: "~MutexException", scope: !121, type: !484, containingType: !121, virtualIndex: 0, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!513 = !DILocalVariable(name: "this", arg: 1, scope: !511, type: !489, flags: DIFlagArtificial | DIFlagObjectPointer)
!514 = !DILocation(line: 0, scope: !511)
!515 = !DILocation(line: 35, column: 7, scope: !516)
!516 = distinct !DILexicalBlock(scope: !511, file: !2, line: 35, column: 7)
!517 = !DILocation(line: 35, column: 7, scope: !511)
!518 = distinct !DISubprogram(name: "~MutexException", linkageName: "_ZN7threads14MutexExceptionD0Ev", scope: !121, file: !2, line: 35, type: !484, scopeLine: 35, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, declaration: !512, retainedNodes: !100)
!519 = !DILocalVariable(name: "this", arg: 1, scope: !518, type: !489, flags: DIFlagArtificial | DIFlagObjectPointer)
!520 = !DILocation(line: 0, scope: !518)
!521 = !DILocation(line: 35, column: 7, scope: !518)
!522 = distinct !DISubprogram(name: "what", linkageName: "_ZNK7threads14MutexException4whatEv", scope: !121, file: !2, line: 37, type: !127, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, declaration: !126, retainedNodes: !100)
!523 = !DILocalVariable(name: "this", arg: 1, scope: !522, type: !524, flags: DIFlagArtificial | DIFlagObjectPointer)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!525 = !DILocation(line: 0, scope: !522)
!526 = !DILocation(line: 37, column: 59, scope: !522)
!527 = distinct !DISubprogram(name: "MutexException", linkageName: "_ZN7threads14MutexExceptionC2EOS0_", scope: !121, file: !2, line: 35, type: !528, scopeLine: 35, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, declaration: !531, retainedNodes: !100)
!528 = !DISubroutineType(types: !529)
!529 = !{null, !486, !530}
!530 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !121, size: 64)
!531 = !DISubprogram(name: "MutexException", scope: !121, type: !528, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!532 = !DILocalVariable(name: "this", arg: 1, scope: !527, type: !489, flags: DIFlagArtificial | DIFlagObjectPointer)
!533 = !DILocation(line: 0, scope: !527)
!534 = !DILocalVariable(arg: 2, scope: !527, type: !530)
!535 = !DILocation(line: 35, column: 7, scope: !527)
!536 = distinct !DISubprogram(name: "exception", linkageName: "_ZNSt9exceptionC2EOS_", scope: !124, file: !125, line: 69, type: !537, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, declaration: !540, retainedNodes: !100)
!537 = !DISubroutineType(types: !538)
!538 = !{null, !504, !539}
!539 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !124, size: 64)
!540 = !DISubprogram(name: "exception", scope: !124, file: !125, line: 69, type: !537, scopeLine: 69, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!541 = !DILocalVariable(name: "this", arg: 1, scope: !536, type: !507, flags: DIFlagArtificial | DIFlagObjectPointer)
!542 = !DILocation(line: 0, scope: !536)
!543 = !DILocalVariable(arg: 2, scope: !536, file: !125, line: 69, type: !539)
!544 = !DILocation(line: 69, column: 26, scope: !536)
!545 = !DILocation(line: 69, column: 36, scope: !536)
!546 = distinct !DISubprogram(name: "~MutexInitException", linkageName: "_ZN7threads18MutexInitExceptionD0Ev", scope: !144, file: !2, line: 41, type: !206, scopeLine: 41, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, declaration: !224, retainedNodes: !100)
!547 = !DILocalVariable(name: "this", arg: 1, scope: !546, type: !211, flags: DIFlagArtificial | DIFlagObjectPointer)
!548 = !DILocation(line: 0, scope: !546)
!549 = !DILocation(line: 41, column: 7, scope: !546)
!550 = distinct !DISubprogram(name: "what", linkageName: "_ZNK7threads18MutexInitException4whatEv", scope: !144, file: !2, line: 44, type: !148, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, declaration: !147, retainedNodes: !100)
!551 = !DILocalVariable(name: "this", arg: 1, scope: !550, type: !552, flags: DIFlagArtificial | DIFlagObjectPointer)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!553 = !DILocation(line: 0, scope: !550)
!554 = !DILocation(line: 45, column: 9, scope: !550)
!555 = distinct !DISubprogram(name: "~MutexUnknownException", linkageName: "_ZN7threads21MutexUnknownExceptionD0Ev", scope: !159, file: !2, line: 74, type: !231, scopeLine: 74, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, declaration: !249, retainedNodes: !100)
!556 = !DILocalVariable(name: "this", arg: 1, scope: !555, type: !236, flags: DIFlagArtificial | DIFlagObjectPointer)
!557 = !DILocation(line: 0, scope: !555)
!558 = !DILocation(line: 74, column: 7, scope: !555)
!559 = distinct !DISubprogram(name: "what", linkageName: "_ZNK7threads21MutexUnknownException4whatEv", scope: !159, file: !2, line: 76, type: !163, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, declaration: !162, retainedNodes: !100)
!560 = !DILocalVariable(name: "this", arg: 1, scope: !559, type: !561, flags: DIFlagArtificial | DIFlagObjectPointer)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!562 = !DILocation(line: 0, scope: !559)
!563 = !DILocation(line: 77, column: 5, scope: !559)
!564 = distinct !DISubprogram(name: "~MutexDestroyException", linkageName: "_ZN7threads21MutexDestroyExceptionD0Ev", scope: !271, file: !2, line: 50, type: !290, scopeLine: 50, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, declaration: !308, retainedNodes: !100)
!565 = !DILocalVariable(name: "this", arg: 1, scope: !564, type: !295, flags: DIFlagArtificial | DIFlagObjectPointer)
!566 = !DILocation(line: 0, scope: !564)
!567 = !DILocation(line: 50, column: 7, scope: !564)
!568 = distinct !DISubprogram(name: "what", linkageName: "_ZNK7threads21MutexDestroyException4whatEv", scope: !271, file: !2, line: 52, type: !275, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, declaration: !274, retainedNodes: !100)
!569 = !DILocalVariable(name: "this", arg: 1, scope: !568, type: !570, flags: DIFlagArtificial | DIFlagObjectPointer)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!571 = !DILocation(line: 0, scope: !568)
!572 = !DILocation(line: 52, column: 58, scope: !568)
!573 = distinct !DISubprogram(name: "~MutexLockingException", linkageName: "_ZN7threads21MutexLockingExceptionD0Ev", scope: !333, file: !2, line: 62, type: !370, scopeLine: 62, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, declaration: !388, retainedNodes: !100)
!574 = !DILocalVariable(name: "this", arg: 1, scope: !573, type: !375, flags: DIFlagArtificial | DIFlagObjectPointer)
!575 = !DILocation(line: 0, scope: !573)
!576 = !DILocation(line: 62, column: 7, scope: !573)
!577 = distinct !DISubprogram(name: "what", linkageName: "_ZNK7threads21MutexLockingException4whatEv", scope: !333, file: !2, line: 64, type: !337, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, declaration: !336, retainedNodes: !100)
!578 = !DILocalVariable(name: "this", arg: 1, scope: !577, type: !579, flags: DIFlagArtificial | DIFlagObjectPointer)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!580 = !DILocation(line: 0, scope: !577)
!581 = !DILocation(line: 64, column: 59, scope: !577)
!582 = distinct !DISubprogram(name: "~MutexDeadlockException", linkageName: "_ZN7threads22MutexDeadlockExceptionD0Ev", scope: !348, file: !2, line: 68, type: !395, scopeLine: 68, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, declaration: !413, retainedNodes: !100)
!583 = !DILocalVariable(name: "this", arg: 1, scope: !582, type: !400, flags: DIFlagArtificial | DIFlagObjectPointer)
!584 = !DILocation(line: 0, scope: !582)
!585 = !DILocation(line: 68, column: 7, scope: !582)
!586 = distinct !DISubprogram(name: "what", linkageName: "_ZNK7threads22MutexDeadlockException4whatEv", scope: !348, file: !2, line: 70, type: !352, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, declaration: !351, retainedNodes: !100)
!587 = !DILocalVariable(name: "this", arg: 1, scope: !586, type: !588, flags: DIFlagArtificial | DIFlagObjectPointer)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!589 = !DILocation(line: 0, scope: !586)
!590 = !DILocation(line: 70, column: 59, scope: !586)
