; ModuleID = '../TrackingBenchmark/threads/RWLock.cpp'
source_filename = "../TrackingBenchmark/threads/RWLock.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.threads::RWLock" = type { %union.pthread_rwlock_t }
%union.pthread_rwlock_t = type { %struct.__pthread_rwlock_arch_t }
%struct.__pthread_rwlock_arch_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, [7 x i8], i64, i32 }

$_ZN7threads19RWLockInitExceptionC2Ev = comdat any

$_ZN7threads19RWLockInitExceptionD2Ev = comdat any

$_ZN7threads22RWLockLockingExceptionC2Ev = comdat any

$_ZN7threads22RWLockLockingExceptionD2Ev = comdat any

$_ZN7threads15RWLockExceptionC2Ev = comdat any

$_ZN7threads19RWLockInitExceptionD0Ev = comdat any

$_ZNK7threads19RWLockInitException4whatEv = comdat any

$_ZNSt9exceptionC2Ev = comdat any

$_ZN7threads15RWLockExceptionD2Ev = comdat any

$_ZN7threads15RWLockExceptionD0Ev = comdat any

$_ZNK7threads15RWLockException4whatEv = comdat any

$_ZN7threads22RWLockLockingExceptionD0Ev = comdat any

$_ZNK7threads22RWLockLockingException4whatEv = comdat any

$_ZTSN7threads19RWLockInitExceptionE = comdat any

$_ZTSN7threads15RWLockExceptionE = comdat any

$_ZTIN7threads15RWLockExceptionE = comdat any

$_ZTIN7threads19RWLockInitExceptionE = comdat any

$_ZTSN7threads22RWLockLockingExceptionE = comdat any

$_ZTIN7threads22RWLockLockingExceptionE = comdat any

$_ZTVN7threads19RWLockInitExceptionE = comdat any

$_ZTVN7threads15RWLockExceptionE = comdat any

$_ZTVN7threads22RWLockLockingExceptionE = comdat any

@_ZTVN10__cxxabiv120__si_class_type_infoE = external global ptr
@_ZTSN7threads19RWLockInitExceptionE = linkonce_odr dso_local constant [32 x i8] c"N7threads19RWLockInitExceptionE\00", comdat, align 1
@_ZTSN7threads15RWLockExceptionE = linkonce_odr dso_local constant [28 x i8] c"N7threads15RWLockExceptionE\00", comdat, align 1
@_ZTISt9exception = external constant ptr
@_ZTIN7threads15RWLockExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7threads15RWLockExceptionE, ptr @_ZTISt9exception }, comdat, align 8
@_ZTIN7threads19RWLockInitExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7threads19RWLockInitExceptionE, ptr @_ZTIN7threads15RWLockExceptionE }, comdat, align 8
@_ZTSN7threads22RWLockLockingExceptionE = linkonce_odr dso_local constant [35 x i8] c"N7threads22RWLockLockingExceptionE\00", comdat, align 1
@_ZTIN7threads22RWLockLockingExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7threads22RWLockLockingExceptionE, ptr @_ZTIN7threads15RWLockExceptionE }, comdat, align 8
@_ZTVN7threads19RWLockInitExceptionE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7threads19RWLockInitExceptionE, ptr @_ZN7threads19RWLockInitExceptionD2Ev, ptr @_ZN7threads19RWLockInitExceptionD0Ev, ptr @_ZNK7threads19RWLockInitException4whatEv] }, comdat, align 8
@_ZTVN7threads15RWLockExceptionE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7threads15RWLockExceptionE, ptr @_ZN7threads15RWLockExceptionD2Ev, ptr @_ZN7threads15RWLockExceptionD0Ev, ptr @_ZNK7threads15RWLockException4whatEv] }, comdat, align 8
@_ZTVSt9exception = external unnamed_addr constant { [5 x ptr] }, align 8
@.str = private unnamed_addr constant [13 x i8] c"RWLock error\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to initialize RWLock\00", align 1, !dbg !8
@_ZTVN7threads22RWLockLockingExceptionE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7threads22RWLockLockingExceptionE, ptr @_ZN7threads22RWLockLockingExceptionD2Ev, ptr @_ZN7threads22RWLockLockingExceptionD0Ev, ptr @_ZNK7threads22RWLockLockingException4whatEv] }, comdat, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"Failed to lock or unlock RWLock\00", align 1, !dbg !13

@_ZN7threads6RWLockC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN7threads6RWLockC2Ev
@_ZN7threads6RWLockD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN7threads6RWLockD2Ev

; Function Attrs: noinline optnone uwtable
define dso_local void @_ZN7threads6RWLockC2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 align 2 !dbg !86 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !88, metadata !DIExpression()), !dbg !90
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.threads::RWLock", ptr %3, i32 0, i32 0, !dbg !91
  %5 = getelementptr inbounds %"class.threads::RWLock", ptr %3, i32 0, i32 0, !dbg !92
  %6 = call i32 @pthread_rwlock_init(ptr noundef %5, ptr noundef null) #8, !dbg !95
  %7 = icmp ne i32 %6, 0, !dbg !96
  br i1 %7, label %8, label %10, !dbg !97

8:                                                ; preds = %1
  %9 = call ptr @__cxa_allocate_exception(i64 8) #8, !dbg !98
  call void @llvm.memset.p0.i64(ptr align 16 %9, i8 0, i64 8, i1 false), !dbg !100
  call void @_ZN7threads19RWLockInitExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #8, !dbg !100
  call void @__cxa_throw(ptr %9, ptr @_ZTIN7threads19RWLockInitExceptionE, ptr @_ZN7threads19RWLockInitExceptionD2Ev) #9, !dbg !98
  unreachable, !dbg !98

10:                                               ; preds = %1
  ret void, !dbg !101
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i32 @pthread_rwlock_init(ptr noundef, ptr noundef) #2

declare ptr @__cxa_allocate_exception(i64)

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7threads19RWLockInitExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !dbg !102 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !126, metadata !DIExpression()), !dbg !128
  %3 = load ptr, ptr %2, align 8
  call void @_ZN7threads15RWLockExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #8, !dbg !129
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN7threads19RWLockInitExceptionE, i32 0, inrange i32 0, i32 2), ptr %3, align 8, !dbg !129
  ret void, !dbg !129
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7threads19RWLockInitExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !dbg !130 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !132, metadata !DIExpression()), !dbg !133
  %3 = load ptr, ptr %2, align 8
  call void @_ZN7threads15RWLockExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #8, !dbg !134
  ret void, !dbg !136
}

declare void @__cxa_throw(ptr, ptr, ptr)

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_ZN7threads6RWLockD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #4 align 2 !dbg !137 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !138, metadata !DIExpression()), !dbg !139
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.threads::RWLock", ptr %3, i32 0, i32 0, !dbg !140
  %5 = call i32 @pthread_rwlock_destroy(ptr noundef %4) #8, !dbg !142
  ret void, !dbg !143
}

; Function Attrs: nounwind
declare i32 @pthread_rwlock_destroy(ptr noundef) #2

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN7threads6RWLock8LockReadEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #5 align 2 !dbg !144 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !145, metadata !DIExpression()), !dbg !146
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.threads::RWLock", ptr %3, i32 0, i32 0, !dbg !147
  %5 = call i32 @pthread_rwlock_rdlock(ptr noundef %4) #8, !dbg !149
  %6 = icmp ne i32 %5, 0, !dbg !150
  br i1 %6, label %7, label %9, !dbg !151

7:                                                ; preds = %1
  %8 = call ptr @__cxa_allocate_exception(i64 8) #8, !dbg !152
  call void @llvm.memset.p0.i64(ptr align 16 %8, i8 0, i64 8, i1 false), !dbg !154
  call void @_ZN7threads22RWLockLockingExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #8, !dbg !154
  call void @__cxa_throw(ptr %8, ptr @_ZTIN7threads22RWLockLockingExceptionE, ptr @_ZN7threads22RWLockLockingExceptionD2Ev) #9, !dbg !152
  unreachable, !dbg !152

9:                                                ; preds = %1
  ret void, !dbg !155
}

; Function Attrs: nounwind
declare i32 @pthread_rwlock_rdlock(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7threads22RWLockLockingExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !dbg !156 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !169, metadata !DIExpression()), !dbg !171
  %3 = load ptr, ptr %2, align 8
  call void @_ZN7threads15RWLockExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #8, !dbg !172
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN7threads22RWLockLockingExceptionE, i32 0, inrange i32 0, i32 2), ptr %3, align 8, !dbg !172
  ret void, !dbg !172
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7threads22RWLockLockingExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !dbg !173 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !175, metadata !DIExpression()), !dbg !176
  %3 = load ptr, ptr %2, align 8
  call void @_ZN7threads15RWLockExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #8, !dbg !177
  ret void, !dbg !179
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN7threads6RWLock9LockWriteEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #5 align 2 !dbg !180 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !181, metadata !DIExpression()), !dbg !182
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.threads::RWLock", ptr %3, i32 0, i32 0, !dbg !183
  %5 = call i32 @pthread_rwlock_wrlock(ptr noundef %4) #8, !dbg !185
  %6 = icmp ne i32 %5, 0, !dbg !186
  br i1 %6, label %7, label %9, !dbg !187

7:                                                ; preds = %1
  %8 = call ptr @__cxa_allocate_exception(i64 8) #8, !dbg !188
  call void @llvm.memset.p0.i64(ptr align 16 %8, i8 0, i64 8, i1 false), !dbg !190
  call void @_ZN7threads22RWLockLockingExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #8, !dbg !190
  call void @__cxa_throw(ptr %8, ptr @_ZTIN7threads22RWLockLockingExceptionE, ptr @_ZN7threads22RWLockLockingExceptionD2Ev) #9, !dbg !188
  unreachable, !dbg !188

9:                                                ; preds = %1
  ret void, !dbg !191
}

; Function Attrs: nounwind
declare i32 @pthread_rwlock_wrlock(ptr noundef) #2

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN7threads6RWLock6UnlockEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #5 align 2 !dbg !192 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !193, metadata !DIExpression()), !dbg !194
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.threads::RWLock", ptr %3, i32 0, i32 0, !dbg !195
  %5 = call i32 @pthread_rwlock_unlock(ptr noundef %4) #8, !dbg !197
  %6 = icmp ne i32 %5, 0, !dbg !198
  br i1 %6, label %7, label %9, !dbg !199

7:                                                ; preds = %1
  %8 = call ptr @__cxa_allocate_exception(i64 8) #8, !dbg !200
  call void @llvm.memset.p0.i64(ptr align 16 %8, i8 0, i64 8, i1 false), !dbg !202
  call void @_ZN7threads22RWLockLockingExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #8, !dbg !202
  call void @__cxa_throw(ptr %8, ptr @_ZTIN7threads22RWLockLockingExceptionE, ptr @_ZN7threads22RWLockLockingExceptionD2Ev) #9, !dbg !200
  unreachable, !dbg !200

9:                                                ; preds = %1
  ret void, !dbg !203
}

; Function Attrs: nounwind
declare i32 @pthread_rwlock_unlock(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7threads15RWLockExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !dbg !204 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !209, metadata !DIExpression()), !dbg !211
  %3 = load ptr, ptr %2, align 8
  call void @_ZNSt9exceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #8, !dbg !212
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN7threads15RWLockExceptionE, i32 0, inrange i32 0, i32 2), ptr %3, align 8, !dbg !212
  ret void, !dbg !212
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7threads19RWLockInitExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !dbg !213 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !214, metadata !DIExpression()), !dbg !215
  %3 = load ptr, ptr %2, align 8
  call void @_ZN7threads19RWLockInitExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #8, !dbg !216
  call void @_ZdlPv(ptr noundef %3) #10, !dbg !216
  ret void, !dbg !216
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7threads19RWLockInitException4whatEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 !dbg !217 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !218, metadata !DIExpression()), !dbg !220
  %3 = load ptr, ptr %2, align 8
  ret ptr @.str.1, !dbg !221
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt9exceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !dbg !222 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !227, metadata !DIExpression()), !dbg !229
  %3 = load ptr, ptr %2, align 8
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVSt9exception, i32 0, inrange i32 0, i32 2), ptr %3, align 8, !dbg !230
  ret void, !dbg !231
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7threads15RWLockExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !dbg !232 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !234, metadata !DIExpression()), !dbg !235
  %3 = load ptr, ptr %2, align 8
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #8, !dbg !236
  ret void, !dbg !238
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7threads15RWLockExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !dbg !239 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !240, metadata !DIExpression()), !dbg !241
  %3 = load ptr, ptr %2, align 8
  call void @_ZN7threads15RWLockExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #8, !dbg !242
  call void @_ZdlPv(ptr noundef %3) #10, !dbg !242
  ret void, !dbg !242
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7threads15RWLockException4whatEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 !dbg !243 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !244, metadata !DIExpression()), !dbg !246
  %3 = load ptr, ptr %2, align 8
  ret ptr @.str, !dbg !247
}

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7threads22RWLockLockingExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !dbg !248 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !249, metadata !DIExpression()), !dbg !250
  %3 = load ptr, ptr %2, align 8
  call void @_ZN7threads22RWLockLockingExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #8, !dbg !251
  call void @_ZdlPv(ptr noundef %3) #10, !dbg !251
  ret void, !dbg !251
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7threads22RWLockLockingException4whatEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 !dbg !252 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !253, metadata !DIExpression()), !dbg !255
  %3 = load ptr, ptr %2, align 8
  ret ptr @.str.2, !dbg !256
}

attributes #0 = { noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { noreturn }
attributes #10 = { builtin nounwind }

!llvm.dbg.cu = !{!18}
!llvm.module.flags = !{!78, !79, !80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 184, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "../TrackingBenchmark/threads/RWLock.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/bodytrack/src/build", checksumkind: CSK_MD5, checksum: "659232cbc8127e409698769fb117675d")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !6)
!4 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !{!7}
!7 = !DISubrange(count: 13)
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(scope: null, file: !2, line: 190, type: !10, isLocal: true, isDefinition: true)
!10 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !11)
!11 = !{!12}
!12 = !DISubrange(count: 28)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(scope: null, file: !2, line: 200, type: !15, isLocal: true, isDefinition: true)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !16)
!16 = !{!17}
!17 = !DISubrange(count: 32)
!18 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !19, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !20, globals: !67, imports: !68, splitDebugInlining: false, nameTableKind: None)
!19 = !DIFile(filename: "../TrackingBenchmark/threads/RWLock.cpp", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/bodytrack/src/build", checksumkind: CSK_MD5, checksum: "e6248b9028b17058d556e368954da3d5")
!20 = !{!21}
!21 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "RWLock", scope: !22, file: !2, line: 204, size: 448, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !23, identifier: "_ZTSN7threads6RWLockE")
!22 = !DINamespace(name: "threads", scope: null)
!23 = !{!24, !59, !63, !64, !65, !66}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "rwlock", scope: !21, file: !2, line: 214, baseType: !25, size: 448)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_rwlock_t", file: !26, line: 91, baseType: !27)
!26 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!27 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !26, line: 86, size: 448, flags: DIFlagTypePassByValue, elements: !28, identifier: "_ZTS16pthread_rwlock_t")
!28 = !{!29, !53, !57}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !27, file: !26, line: 88, baseType: !30, size: 448)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_rwlock_arch_t", file: !31, line: 23, size: 448, flags: DIFlagTypePassByValue, elements: !32, identifier: "_ZTS23__pthread_rwlock_arch_t")
!31 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_rwlock.h", directory: "", checksumkind: CSK_MD5, checksum: "2034038f4a99ff6cb7b9de3a3e8c2a8e")
!32 = !{!33, !35, !36, !37, !38, !39, !40, !42, !43, !45, !50, !52}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "__readers", scope: !30, file: !31, line: 25, baseType: !34, size: 32)
!34 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "__writers", scope: !30, file: !31, line: 26, baseType: !34, size: 32, offset: 32)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "__wrphase_futex", scope: !30, file: !31, line: 27, baseType: !34, size: 32, offset: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "__writers_futex", scope: !30, file: !31, line: 28, baseType: !34, size: 32, offset: 96)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !30, file: !31, line: 29, baseType: !34, size: 32, offset: 128)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !30, file: !31, line: 30, baseType: !34, size: 32, offset: 160)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "__cur_writer", scope: !30, file: !31, line: 32, baseType: !41, size: 32, offset: 192)
!41 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "__shared", scope: !30, file: !31, line: 33, baseType: !41, size: 32, offset: 224)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "__rwelision", scope: !30, file: !31, line: 34, baseType: !44, size: 8, offset: 256)
!44 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !30, file: !31, line: 39, baseType: !46, size: 56, offset: 264)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 56, elements: !48)
!47 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!48 = !{!49}
!49 = !DISubrange(count: 7)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !30, file: !31, line: 42, baseType: !51, size: 64, offset: 320)
!51 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "__flags", scope: !30, file: !31, line: 45, baseType: !34, size: 32, offset: 384)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !27, file: !26, line: 89, baseType: !54, size: 448)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 448, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 56)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !27, file: !26, line: 90, baseType: !58, size: 64)
!58 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!59 = !DISubprogram(name: "RWLock", scope: !21, file: !2, line: 206, type: !60, scopeLine: 206, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!60 = !DISubroutineType(types: !61)
!61 = !{null, !62}
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!63 = !DISubprogram(name: "~RWLock", scope: !21, file: !2, line: 207, type: !60, scopeLine: 207, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!64 = !DISubprogram(name: "LockRead", linkageName: "_ZN7threads6RWLock8LockReadEv", scope: !21, file: !2, line: 209, type: !60, scopeLine: 209, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!65 = !DISubprogram(name: "LockWrite", linkageName: "_ZN7threads6RWLock9LockWriteEv", scope: !21, file: !2, line: 210, type: !60, scopeLine: 210, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!66 = !DISubprogram(name: "Unlock", linkageName: "_ZN7threads6RWLock6UnlockEv", scope: !21, file: !2, line: 211, type: !60, scopeLine: 211, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!67 = !{!0, !8, !13}
!68 = !{!69, !74}
!69 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !70, entity: !71, file: !72, line: 68)
!70 = !DINamespace(name: "std", scope: null)
!71 = !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !73, file: !72, line: 90, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!72 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/exception_ptr.h", directory: "", checksumkind: CSK_MD5, checksum: "ed433011c81450fc2dabd9aa8a29a038")
!73 = !DINamespace(name: "__exception_ptr", scope: !70)
!74 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !75, file: !72, line: 84)
!75 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !70, file: !72, line: 80, type: !76, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!76 = !DISubroutineType(types: !77)
!77 = !{null, !71}
!78 = !{i32 7, !"Dwarf Version", i32 5}
!79 = !{i32 2, !"Debug Info Version", i32 3}
!80 = !{i32 1, !"wchar_size", i32 4}
!81 = !{i32 8, !"PIC Level", i32 2}
!82 = !{i32 7, !"PIE Level", i32 2}
!83 = !{i32 7, !"uwtable", i32 2}
!84 = !{i32 7, !"frame-pointer", i32 2}
!85 = !{!"clang version 16.0.0"}
!86 = distinct !DISubprogram(name: "RWLock", linkageName: "_ZN7threads6RWLockC2Ev", scope: !21, file: !19, line: 238, type: !60, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, declaration: !59, retainedNodes: !87)
!87 = !{}
!88 = !DILocalVariable(name: "this", arg: 1, scope: !86, type: !89, flags: DIFlagArtificial | DIFlagObjectPointer)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!90 = !DILocation(line: 0, scope: !86)
!91 = !DILocation(line: 238, column: 9, scope: !86)
!92 = !DILocation(line: 239, column: 30, scope: !93)
!93 = distinct !DILexicalBlock(scope: !94, file: !19, line: 239, column: 9)
!94 = distinct !DILexicalBlock(scope: !86, file: !19, line: 238, column: 18)
!95 = !DILocation(line: 239, column: 9, scope: !93)
!96 = !DILocation(line: 239, column: 47, scope: !93)
!97 = !DILocation(line: 239, column: 9, scope: !94)
!98 = !DILocation(line: 240, column: 9, scope: !99)
!99 = distinct !DILexicalBlock(scope: !93, file: !19, line: 239, column: 53)
!100 = !DILocation(line: 240, column: 15, scope: !99)
!101 = !DILocation(line: 242, column: 1, scope: !86)
!102 = distinct !DISubprogram(name: "RWLockInitException", linkageName: "_ZN7threads19RWLockInitExceptionC2Ev", scope: !103, file: !2, line: 188, type: !122, scopeLine: 188, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, declaration: !125, retainedNodes: !87)
!103 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "RWLockInitException", scope: !22, file: !2, line: 188, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !104, vtableHolder: !109, identifier: "_ZTSN7threads19RWLockInitExceptionE")
!104 = !{!105, !117}
!105 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !103, baseType: !106, flags: DIFlagPublic, extraData: i32 0)
!106 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "RWLockException", scope: !22, file: !2, line: 182, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !107, vtableHolder: !109, identifier: "_ZTSN7threads15RWLockExceptionE")
!107 = !{!108, !111}
!108 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !106, baseType: !109, flags: DIFlagPublic, extraData: i32 0)
!109 = !DICompositeType(tag: DW_TAG_class_type, name: "exception", scope: !70, file: !110, line: 61, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial)
!110 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/exception.h", directory: "")
!111 = !DISubprogram(name: "what", linkageName: "_ZNK7threads15RWLockException4whatEv", scope: !106, file: !2, line: 184, type: !112, scopeLine: 184, containingType: !106, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!112 = !DISubroutineType(types: !113)
!113 = !{!114, !115}
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !106)
!117 = !DISubprogram(name: "what", linkageName: "_ZNK7threads19RWLockInitException4whatEv", scope: !103, file: !2, line: 190, type: !118, scopeLine: 190, containingType: !103, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!118 = !DISubroutineType(types: !119)
!119 = !{!114, !120}
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!121 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!122 = !DISubroutineType(types: !123)
!123 = !{null, !124}
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!125 = !DISubprogram(name: "RWLockInitException", scope: !103, type: !122, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!126 = !DILocalVariable(name: "this", arg: 1, scope: !102, type: !127, flags: DIFlagArtificial | DIFlagObjectPointer)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!128 = !DILocation(line: 0, scope: !102)
!129 = !DILocation(line: 188, column: 7, scope: !102)
!130 = distinct !DISubprogram(name: "~RWLockInitException", linkageName: "_ZN7threads19RWLockInitExceptionD2Ev", scope: !103, file: !2, line: 188, type: !122, scopeLine: 188, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, declaration: !131, retainedNodes: !87)
!131 = !DISubprogram(name: "~RWLockInitException", scope: !103, type: !122, containingType: !103, virtualIndex: 0, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!132 = !DILocalVariable(name: "this", arg: 1, scope: !130, type: !127, flags: DIFlagArtificial | DIFlagObjectPointer)
!133 = !DILocation(line: 0, scope: !130)
!134 = !DILocation(line: 188, column: 7, scope: !135)
!135 = distinct !DILexicalBlock(scope: !130, file: !2, line: 188, column: 7)
!136 = !DILocation(line: 188, column: 7, scope: !130)
!137 = distinct !DISubprogram(name: "~RWLock", linkageName: "_ZN7threads6RWLockD2Ev", scope: !21, file: !19, line: 244, type: !60, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, declaration: !63, retainedNodes: !87)
!138 = !DILocalVariable(name: "this", arg: 1, scope: !137, type: !89, flags: DIFlagArtificial | DIFlagObjectPointer)
!139 = !DILocation(line: 0, scope: !137)
!140 = !DILocation(line: 248, column: 29, scope: !141)
!141 = distinct !DILexicalBlock(scope: !137, file: !19, line: 244, column: 19)
!142 = !DILocation(line: 248, column: 5, scope: !141)
!143 = !DILocation(line: 249, column: 1, scope: !137)
!144 = distinct !DISubprogram(name: "LockRead", linkageName: "_ZN7threads6RWLock8LockReadEv", scope: !21, file: !19, line: 251, type: !60, scopeLine: 251, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, declaration: !64, retainedNodes: !87)
!145 = !DILocalVariable(name: "this", arg: 1, scope: !144, type: !89, flags: DIFlagArtificial | DIFlagObjectPointer)
!146 = !DILocation(line: 0, scope: !144)
!147 = !DILocation(line: 252, column: 32, scope: !148)
!148 = distinct !DILexicalBlock(scope: !144, file: !19, line: 252, column: 9)
!149 = !DILocation(line: 252, column: 9, scope: !148)
!150 = !DILocation(line: 252, column: 40, scope: !148)
!151 = !DILocation(line: 252, column: 9, scope: !144)
!152 = !DILocation(line: 253, column: 9, scope: !153)
!153 = distinct !DILexicalBlock(scope: !148, file: !19, line: 252, column: 46)
!154 = !DILocation(line: 253, column: 15, scope: !153)
!155 = !DILocation(line: 255, column: 1, scope: !144)
!156 = distinct !DISubprogram(name: "RWLockLockingException", linkageName: "_ZN7threads22RWLockLockingExceptionC2Ev", scope: !157, file: !2, line: 198, type: !165, scopeLine: 198, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, declaration: !168, retainedNodes: !87)
!157 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "RWLockLockingException", scope: !22, file: !2, line: 198, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !158, vtableHolder: !109, identifier: "_ZTSN7threads22RWLockLockingExceptionE")
!158 = !{!159, !160}
!159 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !157, baseType: !106, flags: DIFlagPublic, extraData: i32 0)
!160 = !DISubprogram(name: "what", linkageName: "_ZNK7threads22RWLockLockingException4whatEv", scope: !157, file: !2, line: 200, type: !161, scopeLine: 200, containingType: !157, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!161 = !DISubroutineType(types: !162)
!162 = !{!114, !163}
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !157)
!165 = !DISubroutineType(types: !166)
!166 = !{null, !167}
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!168 = !DISubprogram(name: "RWLockLockingException", scope: !157, type: !165, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!169 = !DILocalVariable(name: "this", arg: 1, scope: !156, type: !170, flags: DIFlagArtificial | DIFlagObjectPointer)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!171 = !DILocation(line: 0, scope: !156)
!172 = !DILocation(line: 198, column: 7, scope: !156)
!173 = distinct !DISubprogram(name: "~RWLockLockingException", linkageName: "_ZN7threads22RWLockLockingExceptionD2Ev", scope: !157, file: !2, line: 198, type: !165, scopeLine: 198, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, declaration: !174, retainedNodes: !87)
!174 = !DISubprogram(name: "~RWLockLockingException", scope: !157, type: !165, containingType: !157, virtualIndex: 0, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!175 = !DILocalVariable(name: "this", arg: 1, scope: !173, type: !170, flags: DIFlagArtificial | DIFlagObjectPointer)
!176 = !DILocation(line: 0, scope: !173)
!177 = !DILocation(line: 198, column: 7, scope: !178)
!178 = distinct !DILexicalBlock(scope: !173, file: !2, line: 198, column: 7)
!179 = !DILocation(line: 198, column: 7, scope: !173)
!180 = distinct !DISubprogram(name: "LockWrite", linkageName: "_ZN7threads6RWLock9LockWriteEv", scope: !21, file: !19, line: 257, type: !60, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, declaration: !65, retainedNodes: !87)
!181 = !DILocalVariable(name: "this", arg: 1, scope: !180, type: !89, flags: DIFlagArtificial | DIFlagObjectPointer)
!182 = !DILocation(line: 0, scope: !180)
!183 = !DILocation(line: 258, column: 32, scope: !184)
!184 = distinct !DILexicalBlock(scope: !180, file: !19, line: 258, column: 9)
!185 = !DILocation(line: 258, column: 9, scope: !184)
!186 = !DILocation(line: 258, column: 40, scope: !184)
!187 = !DILocation(line: 258, column: 9, scope: !180)
!188 = !DILocation(line: 259, column: 9, scope: !189)
!189 = distinct !DILexicalBlock(scope: !184, file: !19, line: 258, column: 46)
!190 = !DILocation(line: 259, column: 15, scope: !189)
!191 = !DILocation(line: 261, column: 1, scope: !180)
!192 = distinct !DISubprogram(name: "Unlock", linkageName: "_ZN7threads6RWLock6UnlockEv", scope: !21, file: !19, line: 263, type: !60, scopeLine: 263, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, declaration: !66, retainedNodes: !87)
!193 = !DILocalVariable(name: "this", arg: 1, scope: !192, type: !89, flags: DIFlagArtificial | DIFlagObjectPointer)
!194 = !DILocation(line: 0, scope: !192)
!195 = !DILocation(line: 264, column: 32, scope: !196)
!196 = distinct !DILexicalBlock(scope: !192, file: !19, line: 264, column: 9)
!197 = !DILocation(line: 264, column: 9, scope: !196)
!198 = !DILocation(line: 264, column: 40, scope: !196)
!199 = !DILocation(line: 264, column: 9, scope: !192)
!200 = !DILocation(line: 265, column: 9, scope: !201)
!201 = distinct !DILexicalBlock(scope: !196, file: !19, line: 264, column: 46)
!202 = !DILocation(line: 265, column: 15, scope: !201)
!203 = !DILocation(line: 267, column: 1, scope: !192)
!204 = distinct !DISubprogram(name: "RWLockException", linkageName: "_ZN7threads15RWLockExceptionC2Ev", scope: !106, file: !2, line: 182, type: !205, scopeLine: 182, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, declaration: !208, retainedNodes: !87)
!205 = !DISubroutineType(types: !206)
!206 = !{null, !207}
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!208 = !DISubprogram(name: "RWLockException", scope: !106, type: !205, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!209 = !DILocalVariable(name: "this", arg: 1, scope: !204, type: !210, flags: DIFlagArtificial | DIFlagObjectPointer)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!211 = !DILocation(line: 0, scope: !204)
!212 = !DILocation(line: 182, column: 7, scope: !204)
!213 = distinct !DISubprogram(name: "~RWLockInitException", linkageName: "_ZN7threads19RWLockInitExceptionD0Ev", scope: !103, file: !2, line: 188, type: !122, scopeLine: 188, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, declaration: !131, retainedNodes: !87)
!214 = !DILocalVariable(name: "this", arg: 1, scope: !213, type: !127, flags: DIFlagArtificial | DIFlagObjectPointer)
!215 = !DILocation(line: 0, scope: !213)
!216 = !DILocation(line: 188, column: 7, scope: !213)
!217 = distinct !DISubprogram(name: "what", linkageName: "_ZNK7threads19RWLockInitException4whatEv", scope: !103, file: !2, line: 190, type: !118, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, declaration: !117, retainedNodes: !87)
!218 = !DILocalVariable(name: "this", arg: 1, scope: !217, type: !219, flags: DIFlagArtificial | DIFlagObjectPointer)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!220 = !DILocation(line: 0, scope: !217)
!221 = !DILocation(line: 190, column: 50, scope: !217)
!222 = distinct !DISubprogram(name: "exception", linkageName: "_ZNSt9exceptionC2Ev", scope: !109, file: !110, line: 64, type: !223, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, declaration: !226, retainedNodes: !87)
!223 = !DISubroutineType(types: !224)
!224 = !{null, !225}
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!226 = !DISubprogram(name: "exception", scope: !109, file: !110, line: 64, type: !223, scopeLine: 64, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!227 = !DILocalVariable(name: "this", arg: 1, scope: !222, type: !228, flags: DIFlagArtificial | DIFlagObjectPointer)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!229 = !DILocation(line: 0, scope: !222)
!230 = !DILocation(line: 64, column: 34, scope: !222)
!231 = !DILocation(line: 64, column: 36, scope: !222)
!232 = distinct !DISubprogram(name: "~RWLockException", linkageName: "_ZN7threads15RWLockExceptionD2Ev", scope: !106, file: !2, line: 182, type: !205, scopeLine: 182, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, declaration: !233, retainedNodes: !87)
!233 = !DISubprogram(name: "~RWLockException", scope: !106, type: !205, containingType: !106, virtualIndex: 0, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!234 = !DILocalVariable(name: "this", arg: 1, scope: !232, type: !210, flags: DIFlagArtificial | DIFlagObjectPointer)
!235 = !DILocation(line: 0, scope: !232)
!236 = !DILocation(line: 182, column: 7, scope: !237)
!237 = distinct !DILexicalBlock(scope: !232, file: !2, line: 182, column: 7)
!238 = !DILocation(line: 182, column: 7, scope: !232)
!239 = distinct !DISubprogram(name: "~RWLockException", linkageName: "_ZN7threads15RWLockExceptionD0Ev", scope: !106, file: !2, line: 182, type: !205, scopeLine: 182, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, declaration: !233, retainedNodes: !87)
!240 = !DILocalVariable(name: "this", arg: 1, scope: !239, type: !210, flags: DIFlagArtificial | DIFlagObjectPointer)
!241 = !DILocation(line: 0, scope: !239)
!242 = !DILocation(line: 182, column: 7, scope: !239)
!243 = distinct !DISubprogram(name: "what", linkageName: "_ZNK7threads15RWLockException4whatEv", scope: !106, file: !2, line: 184, type: !112, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, declaration: !111, retainedNodes: !87)
!244 = !DILocalVariable(name: "this", arg: 1, scope: !243, type: !245, flags: DIFlagArtificial | DIFlagObjectPointer)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!246 = !DILocation(line: 0, scope: !243)
!247 = !DILocation(line: 184, column: 58, scope: !243)
!248 = distinct !DISubprogram(name: "~RWLockLockingException", linkageName: "_ZN7threads22RWLockLockingExceptionD0Ev", scope: !157, file: !2, line: 198, type: !165, scopeLine: 198, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, declaration: !174, retainedNodes: !87)
!249 = !DILocalVariable(name: "this", arg: 1, scope: !248, type: !170, flags: DIFlagArtificial | DIFlagObjectPointer)
!250 = !DILocation(line: 0, scope: !248)
!251 = !DILocation(line: 198, column: 7, scope: !248)
!252 = distinct !DISubprogram(name: "what", linkageName: "_ZNK7threads22RWLockLockingException4whatEv", scope: !157, file: !2, line: 200, type: !161, scopeLine: 200, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, declaration: !160, retainedNodes: !87)
!253 = !DILocalVariable(name: "this", arg: 1, scope: !252, type: !254, flags: DIFlagArtificial | DIFlagObjectPointer)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!255 = !DILocation(line: 0, scope: !252)
!256 = !DILocation(line: 200, column: 50, scope: !252)
