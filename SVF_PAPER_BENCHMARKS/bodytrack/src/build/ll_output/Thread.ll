; ModuleID = '../TrackingBenchmark/threads/Thread.cpp'
source_filename = "../TrackingBenchmark/threads/Thread.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.threads::ThreadCreationException" = type { %"class.std::exception" }
%"class.std::exception" = type { ptr }
%"class.threads::Thread" = type { ptr, i64 }
%"class.std::bad_cast" = type { %"class.std::exception" }

$_ZN7threads23ThreadCreationExceptionC2Ev = comdat any

$_ZN7threads23ThreadCreationExceptionC2EOS0_ = comdat any

$_ZN7threads23ThreadCreationExceptionD2Ev = comdat any

$_ZNSt8bad_castC2ERKS_ = comdat any

$_ZNSt9exceptionC2Ev = comdat any

$_ZN7threads23ThreadCreationExceptionD0Ev = comdat any

$_ZNK7threads23ThreadCreationException4whatEv = comdat any

$_ZNSt9exceptionC2EOS_ = comdat any

$_ZNSt9exceptionC2ERKS_ = comdat any

$_ZTSN7threads23ThreadCreationExceptionE = comdat any

$_ZTIN7threads23ThreadCreationExceptionE = comdat any

$_ZTSN7threads8RunnableE = comdat any

$_ZTIN7threads8RunnableE = comdat any

$_ZTSN7threads9StoppableE = comdat any

$_ZTIN7threads9StoppableE = comdat any

$_ZTVN7threads23ThreadCreationExceptionE = comdat any

@_ZTVN10__cxxabiv120__si_class_type_infoE = external global ptr
@_ZTSN7threads23ThreadCreationExceptionE = linkonce_odr dso_local constant [36 x i8] c"N7threads23ThreadCreationExceptionE\00", comdat, align 1
@_ZTISt9exception = external constant ptr
@_ZTIN7threads23ThreadCreationExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7threads23ThreadCreationExceptionE, ptr @_ZTISt9exception }, comdat, align 8
@_ZTISt8bad_cast = external constant ptr
@_ZTVN10__cxxabiv117__class_type_infoE = external global ptr
@_ZTSN7threads8RunnableE = linkonce_odr dso_local constant [20 x i8] c"N7threads8RunnableE\00", comdat, align 1
@_ZTIN7threads8RunnableE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN7threads8RunnableE }, comdat, align 8
@_ZTSN7threads9StoppableE = linkonce_odr dso_local constant [21 x i8] c"N7threads9StoppableE\00", comdat, align 1
@_ZTIN7threads9StoppableE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN7threads9StoppableE }, comdat, align 8
@_ZTVN7threads23ThreadCreationExceptionE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7threads23ThreadCreationExceptionE, ptr @_ZN7threads23ThreadCreationExceptionD2Ev, ptr @_ZN7threads23ThreadCreationExceptionD0Ev, ptr @_ZNK7threads23ThreadCreationException4whatEv] }, comdat, align 8
@_ZTVSt9exception = external unnamed_addr constant { [5 x ptr] }, align 8
@.str = private unnamed_addr constant [22 x i8] c"Error creating thread\00", align 1, !dbg !0
@_ZTVSt8bad_cast = external unnamed_addr constant { [5 x ptr] }, align 8

@_ZN7threads6ThreadC1ERNS_8RunnableE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN7threads6ThreadC2ERNS_8RunnableE

; Function Attrs: noinline optnone uwtable
define dso_local void @_ZN7threads6ThreadC2ERNS_8RunnableE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !dbg !50 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %"class.threads::ThreadCreationException", align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !52, metadata !DIExpression()), !dbg !54
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !55, metadata !DIExpression()), !dbg !56
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds %"class.threads::Thread", ptr %8, i32 0, i32 0, !dbg !57
  %10 = load ptr, ptr %4, align 8, !dbg !58
  store ptr %10, ptr %9, align 8, !dbg !57
  %11 = getelementptr inbounds %"class.threads::Thread", ptr %8, i32 0, i32 1, !dbg !59
  %12 = getelementptr inbounds %"class.threads::Thread", ptr %8, i32 0, i32 0, !dbg !62
  %13 = load ptr, ptr %12, align 8, !dbg !62
  %14 = call i32 @pthread_create(ptr noundef %11, ptr noundef null, ptr noundef @_ZN7threadsL12thread_entryEPv, ptr noundef %13) #10, !dbg !63
  %15 = icmp ne i32 %14, 0, !dbg !63
  br i1 %15, label %16, label %27, !dbg !64

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %5, metadata !65, metadata !DIExpression()), !dbg !78
  call void @_ZN7threads23ThreadCreationExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #10, !dbg !78
  %17 = call ptr @__cxa_allocate_exception(i64 8) #10, !dbg !79
  call void @_ZN7threads23ThreadCreationExceptionC2EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(8) %5) #10, !dbg !80
  invoke void @__cxa_throw(ptr %17, ptr @_ZTIN7threads23ThreadCreationExceptionE, ptr @_ZN7threads23ThreadCreationExceptionD2Ev) #11
          to label %33 unwind label %18, !dbg !79

18:                                               ; preds = %16
  %19 = landingpad { ptr, i32 }
          cleanup
          filter [1 x ptr] [ptr @_ZTIN7threads23ThreadCreationExceptionE], !dbg !81
  %20 = extractvalue { ptr, i32 } %19, 0, !dbg !81
  store ptr %20, ptr %6, align 8, !dbg !81
  %21 = extractvalue { ptr, i32 } %19, 1, !dbg !81
  store i32 %21, ptr %7, align 4, !dbg !81
  call void @_ZN7threads23ThreadCreationExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #10, !dbg !82
  br label %22, !dbg !82

22:                                               ; preds = %18
  %23 = load i32, ptr %7, align 4, !dbg !83
  %24 = icmp slt i32 %23, 0, !dbg !83
  br i1 %24, label %25, label %28, !dbg !83

25:                                               ; preds = %22
  %26 = load ptr, ptr %6, align 8, !dbg !83
  call void @__cxa_call_unexpected(ptr %26) #11, !dbg !83
  unreachable, !dbg !83

27:                                               ; preds = %2
  ret void, !dbg !83

28:                                               ; preds = %22
  %29 = load ptr, ptr %6, align 8, !dbg !83
  %30 = load i32, ptr %7, align 4, !dbg !83
  %31 = insertvalue { ptr, i32 } poison, ptr %29, 0, !dbg !83
  %32 = insertvalue { ptr, i32 } %31, i32 %30, 1, !dbg !83
  resume { ptr, i32 } %32, !dbg !83

33:                                               ; preds = %16
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: mustprogress noinline optnone uwtable
define internal noundef ptr @_ZN7threadsL12thread_entryEPv(ptr noundef %0) #3 !dbg !84 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !87, metadata !DIExpression()), !dbg !88
  call void @llvm.dbg.declare(metadata ptr %3, metadata !89, metadata !DIExpression()), !dbg !90
  %4 = load ptr, ptr %2, align 8, !dbg !91
  store ptr %4, ptr %3, align 8, !dbg !90
  %5 = load ptr, ptr %3, align 8, !dbg !92
  %6 = load ptr, ptr %5, align 8, !dbg !93
  %7 = getelementptr inbounds ptr, ptr %6, i64 2, !dbg !93
  %8 = load ptr, ptr %7, align 8, !dbg !93
  call void %8(ptr noundef nonnull align 8 dereferenceable(8) %5), !dbg !93
  ret ptr null, !dbg !94
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7threads23ThreadCreationExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !dbg !95 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !100, metadata !DIExpression()), !dbg !102
  %3 = load ptr, ptr %2, align 8
  call void @_ZNSt9exceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #10, !dbg !103
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN7threads23ThreadCreationExceptionE, i32 0, inrange i32 0, i32 2), ptr %3, align 8, !dbg !103
  ret void, !dbg !103
}

declare ptr @__cxa_allocate_exception(i64)

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7threads23ThreadCreationExceptionC2EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #4 comdat align 2 !dbg !104 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !109, metadata !DIExpression()), !dbg !110
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !111, metadata !DIExpression()), !dbg !110
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8, !dbg !112
  call void @_ZNSt9exceptionC2EOS_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) #10, !dbg !112
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN7threads23ThreadCreationExceptionE, i32 0, inrange i32 0, i32 2), ptr %5, align 8, !dbg !112
  ret void, !dbg !112
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7threads23ThreadCreationExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !dbg !113 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !115, metadata !DIExpression()), !dbg !116
  %3 = load ptr, ptr %2, align 8
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #10, !dbg !117
  ret void, !dbg !119
}

declare void @__cxa_throw(ptr, ptr, ptr)

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_call_unexpected(ptr)

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN7threads6Thread4JoinEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #3 align 2 personality ptr @__gxx_personality_v0 !dbg !120 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i8, align 1
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca %"class.std::bad_cast", align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !121, metadata !DIExpression()), !dbg !122
  %8 = load ptr, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !123, metadata !DIExpression()), !dbg !125
  call void @llvm.dbg.declare(metadata ptr %4, metadata !126, metadata !DIExpression()), !dbg !128
  store i8 1, ptr %4, align 1, !dbg !128
  %9 = getelementptr inbounds %"class.threads::Thread", ptr %8, i32 0, i32 0, !dbg !129
  %10 = load ptr, ptr %9, align 8, !dbg !129
  %11 = call ptr @__dynamic_cast(ptr %10, ptr @_ZTIN7threads8RunnableE, ptr @_ZTIN7threads9StoppableE, i64 -2) #10, !dbg !131
  %12 = icmp eq ptr %11, null, !dbg !131
  br i1 %12, label %13, label %15, !dbg !131

13:                                               ; preds = %1
  invoke void @__cxa_bad_cast() #11
          to label %14 unwind label %16, !dbg !131

14:                                               ; preds = %13
  unreachable, !dbg !131

15:                                               ; preds = %1
  store ptr %11, ptr %3, align 8, !dbg !132
  br label %28, !dbg !133

16:                                               ; preds = %13
  %17 = landingpad { ptr, i32 }
          catch ptr @_ZTISt8bad_cast, !dbg !134
  %18 = extractvalue { ptr, i32 } %17, 0, !dbg !134
  store ptr %18, ptr %5, align 8, !dbg !134
  %19 = extractvalue { ptr, i32 } %17, 1, !dbg !134
  store i32 %19, ptr %6, align 4, !dbg !134
  br label %20, !dbg !134

20:                                               ; preds = %16
  %21 = load i32, ptr %6, align 4, !dbg !133
  %22 = call i32 @llvm.eh.typeid.for(ptr @_ZTISt8bad_cast) #10, !dbg !133
  %23 = icmp eq i32 %21, %22, !dbg !133
  br i1 %23, label %24, label %40, !dbg !133

24:                                               ; preds = %20
  call void @llvm.dbg.declare(metadata ptr %7, metadata !135, metadata !DIExpression()), !dbg !138
  %25 = load ptr, ptr %5, align 8, !dbg !133
  %26 = call ptr @__cxa_get_exception_ptr(ptr %25) #10, !dbg !133
  call void @_ZNSt8bad_castC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %26) #10, !dbg !138
  %27 = call ptr @__cxa_begin_catch(ptr %25) #10, !dbg !133
  store i8 0, ptr %4, align 1, !dbg !139
  call void @_ZNSt8bad_castD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #10, !dbg !141
  call void @__cxa_end_catch(), !dbg !141
  br label %28, !dbg !141

28:                                               ; preds = %24, %15
  %29 = load i8, ptr %4, align 1, !dbg !142
  %30 = trunc i8 %29 to i1, !dbg !142
  br i1 %30, label %31, label %36, !dbg !144

31:                                               ; preds = %28
  %32 = load ptr, ptr %3, align 8, !dbg !145
  %33 = load ptr, ptr %32, align 8, !dbg !147
  %34 = getelementptr inbounds ptr, ptr %33, i64 2, !dbg !147
  %35 = load ptr, ptr %34, align 8, !dbg !147
  call void %35(ptr noundef nonnull align 8 dereferenceable(8) %32), !dbg !147
  br label %36, !dbg !148

36:                                               ; preds = %31, %28
  %37 = getelementptr inbounds %"class.threads::Thread", ptr %8, i32 0, i32 1, !dbg !149
  %38 = load i64, ptr %37, align 8, !dbg !149
  %39 = call i32 @pthread_join(i64 noundef %38, ptr noundef null), !dbg !150
  ret void, !dbg !151

40:                                               ; preds = %20
  %41 = load ptr, ptr %5, align 8, !dbg !133
  %42 = load i32, ptr %6, align 4, !dbg !133
  %43 = insertvalue { ptr, i32 } poison, ptr %41, 0, !dbg !133
  %44 = insertvalue { ptr, i32 } %43, i32 %42, 1, !dbg !133
  resume { ptr, i32 } %44, !dbg !133
}

; Function Attrs: nounwind memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) #5

declare void @__cxa_bad_cast()

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #6

declare ptr @__cxa_get_exception_ptr(ptr)

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt8bad_castC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #4 comdat align 2 !dbg !152 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !159, metadata !DIExpression()), !dbg !161
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !162, metadata !DIExpression()), !dbg !161
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8, !dbg !163
  call void @_ZNSt9exceptionC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) #10, !dbg !163
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVSt8bad_cast, i32 0, inrange i32 0, i32 2), ptr %5, align 8, !dbg !163
  ret void, !dbg !163
}

declare ptr @__cxa_begin_catch(ptr)

; Function Attrs: nounwind
declare void @_ZNSt8bad_castD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare void @__cxa_end_catch()

declare i32 @pthread_join(i64 noundef, ptr noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt9exceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !dbg !164 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !169, metadata !DIExpression()), !dbg !171
  %3 = load ptr, ptr %2, align 8
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVSt9exception, i32 0, inrange i32 0, i32 2), ptr %3, align 8, !dbg !172
  ret void, !dbg !173
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7threads23ThreadCreationExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !dbg !174 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !175, metadata !DIExpression()), !dbg !176
  %3 = load ptr, ptr %2, align 8
  call void @_ZN7threads23ThreadCreationExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #10, !dbg !177
  call void @_ZdlPv(ptr noundef %3) #12, !dbg !177
  ret void, !dbg !177
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7threads23ThreadCreationException4whatEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 comdat align 2 !dbg !178 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !179, metadata !DIExpression()), !dbg !181
  %3 = load ptr, ptr %2, align 8
  ret ptr @.str, !dbg !182
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) #9

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt9exceptionC2EOS_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #4 comdat align 2 !dbg !183 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !188, metadata !DIExpression()), !dbg !189
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !190, metadata !DIExpression()), !dbg !191
  %5 = load ptr, ptr %3, align 8
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVSt9exception, i32 0, inrange i32 0, i32 2), ptr %5, align 8, !dbg !192
  ret void, !dbg !192
}

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt9exceptionC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #4 comdat align 2 !dbg !193 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !199, metadata !DIExpression()), !dbg !200
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !201, metadata !DIExpression()), !dbg !202
  %5 = load ptr, ptr %3, align 8
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVSt9exception, i32 0, inrange i32 0, i32 2), ptr %5, align 8, !dbg !203
  ret void, !dbg !203
}

attributes #0 = { noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind memory(read) }
attributes #6 = { nounwind memory(none) }
attributes #7 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { noreturn }
attributes #12 = { builtin nounwind }

!llvm.dbg.cu = !{!8}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 48, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "../TrackingBenchmark/threads/Thread.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/bodytrack/src/build", checksumkind: CSK_MD5, checksum: "c9fdd317db7d9896968ce46430ee4275")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !6)
!4 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !{!7}
!7 = !DISubrange(count: 22)
!8 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !9, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !10, globals: !31, imports: !32, splitDebugInlining: false, nameTableKind: None)
!9 = !DIFile(filename: "../TrackingBenchmark/threads/Thread.cpp", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/bodytrack/src/build", checksumkind: CSK_MD5, checksum: "64cf292c91b6da1ad4304988bb155e4d")
!10 = !{!11, !12, !14, !16}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!12 = !DICompositeType(tag: DW_TAG_class_type, name: "Stoppable", scope: !13, file: !2, line: 38, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN7threads9StoppableE")
!13 = !DINamespace(name: "threads", scope: null)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DICompositeType(tag: DW_TAG_class_type, name: "Runnable", scope: !13, file: !2, line: 29, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN7threads8RunnableE")
!16 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Thread", scope: !13, file: !2, line: 52, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !17, identifier: "_ZTSN7threads6ThreadE")
!17 = !{!18, !20, !24, !28}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "tobj", scope: !16, file: !2, line: 54, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !15, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "t", scope: !16, file: !2, line: 56, baseType: !21, size: 64, offset: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !22, line: 27, baseType: !23)
!22 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!23 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!24 = !DISubprogram(name: "Thread", scope: !16, file: !2, line: 62, type: !25, scopeLine: 62, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!25 = !DISubroutineType(types: !26)
!26 = !{null, !27, !19}
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!28 = !DISubprogram(name: "Join", linkageName: "_ZN7threads6Thread4JoinEv", scope: !16, file: !2, line: 65, type: !29, scopeLine: 65, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!29 = !DISubroutineType(types: !30)
!30 = !{null, !27}
!31 = !{!0}
!32 = !{!33, !38}
!33 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !34, entity: !35, file: !36, line: 68)
!34 = !DINamespace(name: "std", scope: null)
!35 = !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !37, file: !36, line: 90, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!36 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/exception_ptr.h", directory: "", checksumkind: CSK_MD5, checksum: "ed433011c81450fc2dabd9aa8a29a038")
!37 = !DINamespace(name: "__exception_ptr", scope: !34)
!38 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !39, file: !36, line: 84)
!39 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !34, file: !36, line: 80, type: !40, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!40 = !DISubroutineType(types: !41)
!41 = !{null, !35}
!42 = !{i32 7, !"Dwarf Version", i32 5}
!43 = !{i32 2, !"Debug Info Version", i32 3}
!44 = !{i32 1, !"wchar_size", i32 4}
!45 = !{i32 8, !"PIC Level", i32 2}
!46 = !{i32 7, !"PIE Level", i32 2}
!47 = !{i32 7, !"uwtable", i32 2}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 16.0.0"}
!50 = distinct !DISubprogram(name: "Thread", linkageName: "_ZN7threads6ThreadC2ERNS_8RunnableE", scope: !16, file: !9, line: 51, type: !25, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, declaration: !24, retainedNodes: !51)
!51 = !{}
!52 = !DILocalVariable(name: "this", arg: 1, scope: !50, type: !53, flags: DIFlagArtificial | DIFlagObjectPointer)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!54 = !DILocation(line: 0, scope: !50)
!55 = !DILocalVariable(name: "_tobj", arg: 2, scope: !50, file: !9, line: 51, type: !19)
!56 = !DILocation(line: 51, column: 26, scope: !50)
!57 = !DILocation(line: 51, column: 66, scope: !50)
!58 = !DILocation(line: 51, column: 71, scope: !50)
!59 = !DILocation(line: 53, column: 22, scope: !60)
!60 = distinct !DILexicalBlock(scope: !61, file: !9, line: 53, column: 6)
!61 = distinct !DILexicalBlock(scope: !50, file: !9, line: 51, column: 78)
!62 = !DILocation(line: 53, column: 55, scope: !60)
!63 = !DILocation(line: 53, column: 6, scope: !60)
!64 = !DILocation(line: 53, column: 6, scope: !61)
!65 = !DILocalVariable(name: "e", scope: !66, file: !9, line: 54, type: !67)
!66 = distinct !DILexicalBlock(scope: !60, file: !9, line: 53, column: 62)
!67 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "ThreadCreationException", scope: !13, file: !2, line: 46, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !68, vtableHolder: !70, identifier: "_ZTSN7threads23ThreadCreationExceptionE")
!68 = !{!69, !72}
!69 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !67, baseType: !70, flags: DIFlagPublic, extraData: i32 0)
!70 = !DICompositeType(tag: DW_TAG_class_type, name: "exception", scope: !34, file: !71, line: 61, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial)
!71 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/exception.h", directory: "")
!72 = !DISubprogram(name: "what", linkageName: "_ZNK7threads23ThreadCreationException4whatEv", scope: !67, file: !2, line: 48, type: !73, scopeLine: 48, containingType: !67, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!73 = !DISubroutineType(types: !74)
!74 = !{!75, !76}
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!77 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!78 = !DILocation(line: 54, column: 29, scope: !66)
!79 = !DILocation(line: 55, column: 5, scope: !66)
!80 = !DILocation(line: 55, column: 11, scope: !66)
!81 = !DILocation(line: 64, column: 1, scope: !66)
!82 = !DILocation(line: 56, column: 3, scope: !60)
!83 = !DILocation(line: 64, column: 1, scope: !50)
!84 = distinct !DISubprogram(name: "thread_entry", linkageName: "_ZN7threadsL12thread_entryEPv", scope: !9, file: !9, line: 32, type: !85, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !8, retainedNodes: !51)
!85 = !DISubroutineType(types: !86)
!86 = !{!11, !11}
!87 = !DILocalVariable(name: "arg", arg: 1, scope: !84, file: !9, line: 32, type: !11)
!88 = !DILocation(line: 32, column: 35, scope: !84)
!89 = !DILocalVariable(name: "tobj", scope: !84, file: !9, line: 33, type: !14)
!90 = !DILocation(line: 33, column: 15, scope: !84)
!91 = !DILocation(line: 33, column: 46, scope: !84)
!92 = !DILocation(line: 34, column: 5, scope: !84)
!93 = !DILocation(line: 34, column: 11, scope: !84)
!94 = !DILocation(line: 36, column: 5, scope: !84)
!95 = distinct !DISubprogram(name: "ThreadCreationException", linkageName: "_ZN7threads23ThreadCreationExceptionC2Ev", scope: !67, file: !2, line: 46, type: !96, scopeLine: 46, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, declaration: !99, retainedNodes: !51)
!96 = !DISubroutineType(types: !97)
!97 = !{null, !98}
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!99 = !DISubprogram(name: "ThreadCreationException", scope: !67, type: !96, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!100 = !DILocalVariable(name: "this", arg: 1, scope: !95, type: !101, flags: DIFlagArtificial | DIFlagObjectPointer)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!102 = !DILocation(line: 0, scope: !95)
!103 = !DILocation(line: 46, column: 7, scope: !95)
!104 = distinct !DISubprogram(name: "ThreadCreationException", linkageName: "_ZN7threads23ThreadCreationExceptionC2EOS0_", scope: !67, file: !2, line: 46, type: !105, scopeLine: 46, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, declaration: !108, retainedNodes: !51)
!105 = !DISubroutineType(types: !106)
!106 = !{null, !98, !107}
!107 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !67, size: 64)
!108 = !DISubprogram(name: "ThreadCreationException", scope: !67, type: !105, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!109 = !DILocalVariable(name: "this", arg: 1, scope: !104, type: !101, flags: DIFlagArtificial | DIFlagObjectPointer)
!110 = !DILocation(line: 0, scope: !104)
!111 = !DILocalVariable(arg: 2, scope: !104, type: !107)
!112 = !DILocation(line: 46, column: 7, scope: !104)
!113 = distinct !DISubprogram(name: "~ThreadCreationException", linkageName: "_ZN7threads23ThreadCreationExceptionD2Ev", scope: !67, file: !2, line: 46, type: !96, scopeLine: 46, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, declaration: !114, retainedNodes: !51)
!114 = !DISubprogram(name: "~ThreadCreationException", scope: !67, type: !96, containingType: !67, virtualIndex: 0, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!115 = !DILocalVariable(name: "this", arg: 1, scope: !113, type: !101, flags: DIFlagArtificial | DIFlagObjectPointer)
!116 = !DILocation(line: 0, scope: !113)
!117 = !DILocation(line: 46, column: 7, scope: !118)
!118 = distinct !DILexicalBlock(scope: !113, file: !2, line: 46, column: 7)
!119 = !DILocation(line: 46, column: 7, scope: !113)
!120 = distinct !DISubprogram(name: "Join", linkageName: "_ZN7threads6Thread4JoinEv", scope: !16, file: !9, line: 67, type: !29, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, declaration: !28, retainedNodes: !51)
!121 = !DILocalVariable(name: "this", arg: 1, scope: !120, type: !53, flags: DIFlagArtificial | DIFlagObjectPointer)
!122 = !DILocation(line: 0, scope: !120)
!123 = !DILocalVariable(name: "_tobj", scope: !120, file: !9, line: 68, type: !124)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!125 = !DILocation(line: 68, column: 14, scope: !120)
!126 = !DILocalVariable(name: "isStoppable", scope: !120, file: !9, line: 69, type: !127)
!127 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!128 = !DILocation(line: 69, column: 8, scope: !120)
!129 = !DILocation(line: 73, column: 40, scope: !130)
!130 = distinct !DILexicalBlock(scope: !120, file: !9, line: 72, column: 7)
!131 = !DILocation(line: 73, column: 14, scope: !130)
!132 = !DILocation(line: 73, column: 11, scope: !130)
!133 = !DILocation(line: 74, column: 3, scope: !130)
!134 = !DILocation(line: 87, column: 1, scope: !130)
!135 = !DILocalVariable(name: "e", scope: !120, file: !9, line: 74, type: !136)
!136 = !DICompositeType(tag: DW_TAG_class_type, name: "bad_cast", scope: !34, file: !137, line: 190, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial)
!137 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/typeinfo", directory: "")
!138 = !DILocation(line: 74, column: 25, scope: !120)
!139 = !DILocation(line: 75, column: 17, scope: !140)
!140 = distinct !DILexicalBlock(scope: !120, file: !9, line: 74, column: 28)
!141 = !DILocation(line: 76, column: 3, scope: !140)
!142 = !DILocation(line: 77, column: 6, scope: !143)
!143 = distinct !DILexicalBlock(scope: !120, file: !9, line: 77, column: 6)
!144 = !DILocation(line: 77, column: 6, scope: !120)
!145 = !DILocation(line: 78, column: 5, scope: !146)
!146 = distinct !DILexicalBlock(scope: !143, file: !9, line: 77, column: 19)
!147 = !DILocation(line: 78, column: 12, scope: !146)
!148 = !DILocation(line: 79, column: 3, scope: !146)
!149 = !DILocation(line: 82, column: 16, scope: !120)
!150 = !DILocation(line: 82, column: 3, scope: !120)
!151 = !DILocation(line: 87, column: 1, scope: !120)
!152 = distinct !DISubprogram(name: "bad_cast", linkageName: "_ZNSt8bad_castC2ERKS_", scope: !136, file: !137, line: 190, type: !153, scopeLine: 190, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, declaration: !158, retainedNodes: !51)
!153 = !DISubroutineType(types: !154)
!154 = !{null, !155, !156}
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!156 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !157, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !136)
!158 = !DISubprogram(name: "bad_cast", scope: !136, type: !153, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!159 = !DILocalVariable(name: "this", arg: 1, scope: !152, type: !160, flags: DIFlagArtificial | DIFlagObjectPointer)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!161 = !DILocation(line: 0, scope: !152)
!162 = !DILocalVariable(arg: 2, scope: !152, type: !156)
!163 = !DILocation(line: 190, column: 9, scope: !152)
!164 = distinct !DISubprogram(name: "exception", linkageName: "_ZNSt9exceptionC2Ev", scope: !70, file: !71, line: 64, type: !165, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, declaration: !168, retainedNodes: !51)
!165 = !DISubroutineType(types: !166)
!166 = !{null, !167}
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!168 = !DISubprogram(name: "exception", scope: !70, file: !71, line: 64, type: !165, scopeLine: 64, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!169 = !DILocalVariable(name: "this", arg: 1, scope: !164, type: !170, flags: DIFlagArtificial | DIFlagObjectPointer)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!171 = !DILocation(line: 0, scope: !164)
!172 = !DILocation(line: 64, column: 34, scope: !164)
!173 = !DILocation(line: 64, column: 36, scope: !164)
!174 = distinct !DISubprogram(name: "~ThreadCreationException", linkageName: "_ZN7threads23ThreadCreationExceptionD0Ev", scope: !67, file: !2, line: 46, type: !96, scopeLine: 46, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, declaration: !114, retainedNodes: !51)
!175 = !DILocalVariable(name: "this", arg: 1, scope: !174, type: !101, flags: DIFlagArtificial | DIFlagObjectPointer)
!176 = !DILocation(line: 0, scope: !174)
!177 = !DILocation(line: 46, column: 7, scope: !174)
!178 = distinct !DISubprogram(name: "what", linkageName: "_ZNK7threads23ThreadCreationException4whatEv", scope: !67, file: !2, line: 48, type: !73, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, declaration: !72, retainedNodes: !51)
!179 = !DILocalVariable(name: "this", arg: 1, scope: !178, type: !180, flags: DIFlagArtificial | DIFlagObjectPointer)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!181 = !DILocation(line: 0, scope: !178)
!182 = !DILocation(line: 48, column: 47, scope: !178)
!183 = distinct !DISubprogram(name: "exception", linkageName: "_ZNSt9exceptionC2EOS_", scope: !70, file: !71, line: 69, type: !184, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, declaration: !187, retainedNodes: !51)
!184 = !DISubroutineType(types: !185)
!185 = !{null, !167, !186}
!186 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !70, size: 64)
!187 = !DISubprogram(name: "exception", scope: !70, file: !71, line: 69, type: !184, scopeLine: 69, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!188 = !DILocalVariable(name: "this", arg: 1, scope: !183, type: !170, flags: DIFlagArtificial | DIFlagObjectPointer)
!189 = !DILocation(line: 0, scope: !183)
!190 = !DILocalVariable(arg: 2, scope: !183, file: !71, line: 69, type: !186)
!191 = !DILocation(line: 69, column: 26, scope: !183)
!192 = !DILocation(line: 69, column: 36, scope: !183)
!193 = distinct !DISubprogram(name: "exception", linkageName: "_ZNSt9exceptionC2ERKS_", scope: !70, file: !71, line: 67, type: !194, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, declaration: !198, retainedNodes: !51)
!194 = !DISubroutineType(types: !195)
!195 = !{null, !167, !196}
!196 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !197, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!198 = !DISubprogram(name: "exception", scope: !70, file: !71, line: 67, type: !194, scopeLine: 67, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!199 = !DILocalVariable(name: "this", arg: 1, scope: !193, type: !170, flags: DIFlagArtificial | DIFlagObjectPointer)
!200 = !DILocation(line: 0, scope: !193)
!201 = !DILocalVariable(arg: 2, scope: !193, file: !71, line: 67, type: !196)
!202 = !DILocation(line: 67, column: 31, scope: !193)
!203 = !DILocation(line: 67, column: 41, scope: !193)
