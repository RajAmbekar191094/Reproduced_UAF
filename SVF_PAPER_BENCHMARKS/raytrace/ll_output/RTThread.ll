; ModuleID = '/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src/RTTL/common/RTThread.cxx'
source_filename = "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src/RTTL/common/RTThread.cxx"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%class.MultiThreadedTaskQueueServer = type { %class.MultiThreadedTaskQueue.base, %class.MultiThreadedSyncPrimitive, ptr, [4 x ptr], [4 x i32] }
%class.MultiThreadedTaskQueue.base = type <{ ptr, i32, i32, i32 }>
%class.MultiThreadedSyncPrimitive = type { %union.pthread_mutex_t, %union.pthread_cond_t }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%union.pthread_cond_t = type { %struct.__pthread_cond_s }
%struct.__pthread_cond_s = type { %union.__atomic_wide_counter, %union.__atomic_wide_counter, [2 x i32], [2 x i32], i32, i32, [2 x i32] }
%union.__atomic_wide_counter = type { i64 }
%class.MultiThreadedTaskQueue = type <{ ptr, i32, i32, i32, [4 x i8] }>
%class.MultiThreadedScheduler = type <{ %class.MultiThreadedSyncPrimitive, i32, [4 x i8] }>

$_ZN28MultiThreadedTaskQueueServer13createThreadsEi = comdat any

$_ZN28MultiThreadedTaskQueueServer9addClientEP22MultiThreadedTaskQueue = comdat any

$_ZN28MultiThreadedTaskQueueServerC2Ei = comdat any

$_ZN28MultiThreadedTaskQueueServerD2Ev = comdat any

$_ZN22MultiThreadedTaskQueue4taskEii = comdat any

$_ZNK22MultiThreadedTaskQueue3tagEv = comdat any

$_ZN22MultiThreadedSchedulerC2Ev = comdat any

$_ZN22MultiThreadedSchedulerD2Ev = comdat any

$_ZN28MultiThreadedTaskQueueServer10threadFuncEPv = comdat any

$_ZN26MultiThreadedSyncPrimitiveC2Ev = comdat any

$_ZN26MultiThreadedSyncPrimitiveD2Ev = comdat any

$_ZN28MultiThreadedTaskQueueServer8scheduleEi = comdat any

$_ZN22MultiThreadedTaskQueueC2Ev = comdat any

$_ZN22MultiThreadedTaskQueueD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZTV28MultiThreadedTaskQueueServer = comdat any

$_ZTS28MultiThreadedTaskQueueServer = comdat any

$_ZTS26MultiThreadedSyncPrimitive = comdat any

$_ZTI26MultiThreadedSyncPrimitive = comdat any

$_ZTI28MultiThreadedTaskQueueServer = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1, !dbg !0
@__dso_handle = external hidden global i8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [8 x i8] c"threads\00", align 1, !dbg !7
@.str.1 = private unnamed_addr constant [3 x i8] c" =\00", align 1, !dbg !15
@_ZN22MultiThreadedTaskQueue8m_serverE = dso_local global %class.MultiThreadedTaskQueueServer zeroinitializer, align 8, !dbg !20
@.str.2 = private unnamed_addr constant [13 x i8] c"threads >= 1\00", align 1, !dbg !228
@.str.3 = private unnamed_addr constant [90 x i8] c"/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src/RTTL/common/RTThread.cxx\00", align 1, !dbg !233
@__PRETTY_FUNCTION__._ZN22MultiThreadedTaskQueue13createThreadsEi = private unnamed_addr constant [48 x i8] c"void MultiThreadedTaskQueue::createThreads(int)\00", align 1, !dbg !238
@_ZN22MultiThreadedTaskQueue8m_clientE = dso_local global ptr null, align 8, !dbg !241
@_ZN22MultiThreadedTaskQueue11m_schedulerE = dso_local global ptr null, align 8, !dbg !243
@_ZTV22MultiThreadedTaskQueue = dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTI22MultiThreadedTaskQueue, ptr @_ZN22MultiThreadedTaskQueue4taskEii, ptr @_ZNK22MultiThreadedTaskQueue3tagEv, ptr @_ZN22MultiThreadedTaskQueue12startThreadsEv, ptr @_ZN22MultiThreadedTaskQueue17waitForAllThreadsEv] }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global ptr
@_ZTS22MultiThreadedTaskQueue = dso_local constant [25 x i8] c"22MultiThreadedTaskQueue\00", align 1
@_ZTI22MultiThreadedTaskQueue = dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS22MultiThreadedTaskQueue }, align 8
@__PRETTY_FUNCTION__._ZN28MultiThreadedTaskQueueServer13createThreadsEi = private unnamed_addr constant [54 x i8] c"void MultiThreadedTaskQueueServer::createThreads(int)\00", align 1, !dbg !245
@_ZSt4cerr = external global %"class.std::basic_ostream", align 8
@.str.5 = private unnamed_addr constant [21 x i8] c"can't create thread \00", align 1, !dbg !250
@.str.6 = private unnamed_addr constant [45 x i8] c" (the system does not have enough resources)\00", align 1, !dbg !255
@.str.7 = private unnamed_addr constant [12 x i8] c". reason : \00", align 1, !dbg !260
@.str.8 = private unnamed_addr constant [7 x i8] c"client\00", align 1, !dbg !265
@__PRETTY_FUNCTION__._ZN28MultiThreadedTaskQueueServer10threadFuncEPv = private unnamed_addr constant [62 x i8] c"static void *MultiThreadedTaskQueueServer::threadFunc(void *)\00", align 1, !dbg !270
@.str.9 = private unnamed_addr constant [19 x i8] c"m_client[threadID]\00", align 1, !dbg !275
@__PRETTY_FUNCTION__._ZN28MultiThreadedTaskQueueServer16deactivateThreadEi = private unnamed_addr constant [69 x i8] c"static int MultiThreadedTaskQueueServer::deactivateThread(const int)\00", align 1, !dbg !280
@_ZTV28MultiThreadedTaskQueueServer = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTI28MultiThreadedTaskQueueServer, ptr @_ZN22MultiThreadedTaskQueue4taskEii, ptr @_ZNK22MultiThreadedTaskQueue3tagEv, ptr @_ZN22MultiThreadedTaskQueue12startThreadsEv, ptr @_ZN22MultiThreadedTaskQueue17waitForAllThreadsEv] }, comdat, align 8
@.str.10 = private unnamed_addr constant [5 x i8] c"this\00", align 1, !dbg !285
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global ptr
@_ZTS28MultiThreadedTaskQueueServer = linkonce_odr dso_local constant [31 x i8] c"28MultiThreadedTaskQueueServer\00", comdat, align 1
@_ZTS26MultiThreadedSyncPrimitive = linkonce_odr dso_local constant [29 x i8] c"26MultiThreadedSyncPrimitive\00", comdat, align 1
@_ZTI26MultiThreadedSyncPrimitive = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS26MultiThreadedSyncPrimitive }, comdat, align 8
@_ZTI28MultiThreadedTaskQueueServer = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTS28MultiThreadedTaskQueueServer, i32 0, i32 2, ptr @_ZTI22MultiThreadedTaskQueue, i64 2, ptr @_ZTI26MultiThreadedSyncPrimitive, i64 6146 }, comdat, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_RTThread.cxx, ptr null }]

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" !dbg !1573 {
  call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit), !dbg !1575
  %1 = call i32 @__cxa_atexit(ptr @_ZNSt8ios_base4InitD1Ev, ptr @_ZStL8__ioinit, ptr @__dso_handle) #3, !dbg !1577
  ret void, !dbg !1575
}

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) #3

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN22MultiThreadedTaskQueue21setMaxNumberOfThreadsEi(i32 noundef %0) #4 align 2 !dbg !1578 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1579, metadata !DIExpression()), !dbg !1580
  %3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str), !dbg !1581
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef @.str.1), !dbg !1581
  %5 = load i32, ptr %2, align 4, !dbg !1581
  %6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %5), !dbg !1581
  %7 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !1581
  %8 = load i32, ptr %2, align 4, !dbg !1582
  call void @_ZN28MultiThreadedTaskQueueServer13createThreadsEi(ptr noundef nonnull align 8 dereferenceable(168) @_ZN22MultiThreadedTaskQueue8m_serverE, i32 noundef %8), !dbg !1583
  ret void, !dbg !1584
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #1

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN28MultiThreadedTaskQueueServer13createThreadsEi(ptr noundef nonnull align 8 dereferenceable(168) %0, i32 noundef %1) #4 comdat align 2 personality ptr @__gxx_personality_v0 !dbg !1585 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca ptr, align 8
  %18 = alloca i32, align 4
  %19 = alloca ptr, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store ptr %0, ptr %17, align 8
  call void @llvm.dbg.declare(metadata ptr %17, metadata !1586, metadata !DIExpression()), !dbg !1588
  store i32 %1, ptr %18, align 4
  call void @llvm.dbg.declare(metadata ptr %18, metadata !1589, metadata !DIExpression()), !dbg !1590
  %23 = load ptr, ptr %17, align 8
  %24 = load i32, ptr %18, align 4, !dbg !1591
  %25 = icmp sge i32 %24, 1, !dbg !1591
  br i1 %25, label %26, label %27, !dbg !1591

26:                                               ; preds = %2
  br label %29, !dbg !1591

27:                                               ; preds = %2
  call void @__assert_fail(ptr noundef @.str.2, ptr noundef @.str.3, i32 noundef 121, ptr noundef @__PRETTY_FUNCTION__._ZN28MultiThreadedTaskQueueServer13createThreadsEi) #15, !dbg !1591
  unreachable, !dbg !1591

28:                                               ; No predecessors!
  br label %29, !dbg !1591

29:                                               ; preds = %28, %26
  store ptr %23, ptr %12, align 8
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1592, metadata !DIExpression()), !dbg !1594
  store i8 1, ptr %13, align 1
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1596, metadata !DIExpression()), !dbg !1597
  %30 = load ptr, ptr %12, align 8
  %31 = getelementptr inbounds %class.MultiThreadedTaskQueue, ptr %30, i32 0, i32 3, !dbg !1598
  %32 = load i32, ptr %31, align 8, !dbg !1598
  %33 = icmp sle i32 %32, 0, !dbg !1600
  br i1 %33, label %34, label %35, !dbg !1601

34:                                               ; preds = %29
  br label %125, !dbg !1602

35:                                               ; preds = %29
  %36 = load i8, ptr %13, align 1, !dbg !1604
  %37 = trunc i8 %36 to i1, !dbg !1604
  br i1 %37, label %38, label %90, !dbg !1606

38:                                               ; preds = %35
  %39 = getelementptr inbounds i8, ptr %30, i64 24, !dbg !1607
  store ptr %39, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1609, metadata !DIExpression()), !dbg !1612
  %40 = load ptr, ptr %11, align 8
  %41 = call i32 @pthread_mutex_lock(ptr noundef %40) #3, !dbg !1614
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1615, metadata !DIExpression()), !dbg !1616
  %42 = getelementptr inbounds %class.MultiThreadedTaskQueue, ptr %30, i32 0, i32 3, !dbg !1617
  %43 = load i32, ptr %42, align 8, !dbg !1617
  store i32 %43, ptr %14, align 4, !dbg !1616
  %44 = getelementptr inbounds %class.MultiThreadedTaskQueue, ptr %30, i32 0, i32 3, !dbg !1618
  store i32 -1, ptr %44, align 8, !dbg !1619
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1620, metadata !DIExpression()), !dbg !1622
  store i32 0, ptr %15, align 4, !dbg !1622
  br label %45, !dbg !1623

45:                                               ; preds = %49, %38
  %46 = load i32, ptr %15, align 4, !dbg !1624
  %47 = load i32, ptr %14, align 4, !dbg !1626
  %48 = icmp slt i32 %46, %47, !dbg !1627
  br i1 %48, label %49, label %61, !dbg !1628

49:                                               ; preds = %45
  %50 = load ptr, ptr @_ZN22MultiThreadedTaskQueue11m_schedulerE, align 8, !dbg !1629
  %51 = load i32, ptr %15, align 4, !dbg !1631
  %52 = sext i32 %51 to i64, !dbg !1629
  %53 = getelementptr inbounds %class.MultiThreadedScheduler, ptr %50, i64 %52, !dbg !1629
  store ptr %53, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1632, metadata !DIExpression()), !dbg !1634
  %54 = load ptr, ptr %6, align 8
  %55 = getelementptr inbounds %class.MultiThreadedScheduler, ptr %54, i32 0, i32 1, !dbg !1636
  store i32 0, ptr %55, align 8, !dbg !1637
  store ptr %54, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1638, metadata !DIExpression()), !dbg !1640
  %56 = load ptr, ptr %3, align 8
  %57 = getelementptr inbounds %class.MultiThreadedSyncPrimitive, ptr %56, i32 0, i32 1, !dbg !1642
  %58 = call i32 @pthread_cond_signal(ptr noundef %57) #3, !dbg !1643
  %59 = load i32, ptr %15, align 4, !dbg !1644
  %60 = add nsw i32 %59, 1, !dbg !1644
  store i32 %60, ptr %15, align 4, !dbg !1644
  br label %45, !dbg !1645, !llvm.loop !1646

61:                                               ; preds = %45
  %62 = getelementptr inbounds i8, ptr %30, i64 24, !dbg !1649
  store ptr %62, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1650, metadata !DIExpression()), !dbg !1652
  %63 = load ptr, ptr %10, align 8
  %64 = call i32 @pthread_mutex_unlock(ptr noundef %63) #3, !dbg !1654
  call void @llvm.dbg.declare(metadata ptr %16, metadata !1655, metadata !DIExpression()), !dbg !1656
  store i32 0, ptr %16, align 4, !dbg !1656
  br label %65, !dbg !1657

65:                                               ; preds = %88, %61
  %66 = load i32, ptr %16, align 4, !dbg !1658
  %67 = load i32, ptr %14, align 4, !dbg !1659
  %68 = icmp slt i32 %66, %67, !dbg !1660
  br i1 %68, label %69, label %89, !dbg !1657

69:                                               ; preds = %65
  br label %70, !dbg !1661

70:                                               ; preds = %85, %69
  %71 = load i32, ptr %16, align 4, !dbg !1663
  %72 = load i32, ptr %14, align 4, !dbg !1666
  %73 = icmp slt i32 %71, %72, !dbg !1667
  br i1 %73, label %74, label %88, !dbg !1668

74:                                               ; preds = %70
  %75 = load ptr, ptr @_ZN22MultiThreadedTaskQueue11m_schedulerE, align 8, !dbg !1669
  %76 = load i32, ptr %16, align 4, !dbg !1672
  %77 = sext i32 %76 to i64, !dbg !1669
  %78 = getelementptr inbounds %class.MultiThreadedScheduler, ptr %75, i64 %77, !dbg !1669
  store ptr %78, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1673, metadata !DIExpression()), !dbg !1676
  %79 = load ptr, ptr %4, align 8
  %80 = getelementptr inbounds %class.MultiThreadedScheduler, ptr %79, i32 0, i32 1, !dbg !1678
  %81 = load i32, ptr %80, align 8, !dbg !1678
  %82 = icmp ne i32 %81, -1, !dbg !1679
  br i1 %82, label %83, label %85, !dbg !1680

83:                                               ; preds = %74
  %84 = call i32 @sched_yield() #3, !dbg !1681
  br label %88, !dbg !1683

85:                                               ; preds = %74
  %86 = load i32, ptr %16, align 4, !dbg !1684
  %87 = add nsw i32 %86, 1, !dbg !1684
  store i32 %87, ptr %16, align 4, !dbg !1684
  br label %70, !dbg !1685, !llvm.loop !1686

88:                                               ; preds = %83, %70
  br label %65, !dbg !1657, !llvm.loop !1688

89:                                               ; preds = %65
  br label %90, !dbg !1690

90:                                               ; preds = %89, %35
  %91 = getelementptr inbounds %class.MultiThreadedTaskQueueServer, ptr %30, i32 0, i32 2, !dbg !1691
  %92 = load ptr, ptr %91, align 8, !dbg !1691
  %93 = icmp ne ptr %92, null, !dbg !1691
  br i1 %93, label %94, label %100, !dbg !1693

94:                                               ; preds = %90
  %95 = getelementptr inbounds %class.MultiThreadedTaskQueueServer, ptr %30, i32 0, i32 2, !dbg !1694
  %96 = load ptr, ptr %95, align 8, !dbg !1694
  %97 = icmp eq ptr %96, null, !dbg !1695
  br i1 %97, label %99, label %98, !dbg !1695

98:                                               ; preds = %94
  call void @_ZdaPv(ptr noundef %96) #16, !dbg !1695
  br label %99, !dbg !1695

99:                                               ; preds = %98, %94
  br label %100, !dbg !1695

100:                                              ; preds = %99, %90
  %101 = load ptr, ptr @_ZN22MultiThreadedTaskQueue8m_clientE, align 8, !dbg !1696
  %102 = icmp ne ptr %101, null, !dbg !1696
  br i1 %102, label %103, label %108, !dbg !1698

103:                                              ; preds = %100
  %104 = load ptr, ptr @_ZN22MultiThreadedTaskQueue8m_clientE, align 8, !dbg !1699
  %105 = icmp eq ptr %104, null, !dbg !1700
  br i1 %105, label %107, label %106, !dbg !1700

106:                                              ; preds = %103
  call void @_ZdaPv(ptr noundef %104) #16, !dbg !1700
  br label %107, !dbg !1700

107:                                              ; preds = %106, %103
  br label %108, !dbg !1700

108:                                              ; preds = %107, %100
  %109 = load ptr, ptr @_ZN22MultiThreadedTaskQueue11m_schedulerE, align 8, !dbg !1701
  %110 = icmp ne ptr %109, null, !dbg !1701
  br i1 %110, label %111, label %125, !dbg !1703

111:                                              ; preds = %108
  %112 = load ptr, ptr @_ZN22MultiThreadedTaskQueue11m_schedulerE, align 8, !dbg !1704
  %113 = icmp eq ptr %112, null, !dbg !1705
  br i1 %113, label %124, label %114, !dbg !1705

114:                                              ; preds = %111
  %115 = getelementptr inbounds i8, ptr %112, i64 -8, !dbg !1705
  %116 = load i64, ptr %115, align 8, !dbg !1705
  %117 = getelementptr inbounds %class.MultiThreadedScheduler, ptr %112, i64 %116, !dbg !1705
  %118 = icmp eq ptr %112, %117, !dbg !1705
  br i1 %118, label %123, label %119, !dbg !1705

119:                                              ; preds = %119, %114
  %120 = phi ptr [ %117, %114 ], [ %121, %119 ], !dbg !1705
  %121 = getelementptr inbounds %class.MultiThreadedScheduler, ptr %120, i64 -1, !dbg !1705
  call void @_ZN22MultiThreadedSchedulerD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %121) #3, !dbg !1705
  %122 = icmp eq ptr %121, %112, !dbg !1705
  br i1 %122, label %123, label %119, !dbg !1705

123:                                              ; preds = %119, %114
  call void @_ZdaPv(ptr noundef %115) #16, !dbg !1705
  br label %124, !dbg !1705

124:                                              ; preds = %123, %111
  br label %125, !dbg !1705

125:                                              ; preds = %34, %108, %124
  %126 = load i32, ptr %18, align 4, !dbg !1706
  %127 = getelementptr inbounds %class.MultiThreadedTaskQueue, ptr %23, i32 0, i32 3, !dbg !1707
  store i32 %126, ptr %127, align 8, !dbg !1708
  %128 = load i32, ptr %18, align 4, !dbg !1709
  %129 = sext i32 %128 to i64, !dbg !1709
  %130 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %129, i64 8), !dbg !1710
  %131 = extractvalue { i64, i1 } %130, 1, !dbg !1710
  %132 = extractvalue { i64, i1 } %130, 0, !dbg !1710
  %133 = select i1 %131, i64 -1, i64 %132, !dbg !1710
  %134 = call noalias noundef nonnull ptr @_Znam(i64 noundef %133) #17, !dbg !1710, !heapallocsite !127
  %135 = getelementptr inbounds %class.MultiThreadedTaskQueueServer, ptr %23, i32 0, i32 2, !dbg !1711
  store ptr %134, ptr %135, align 8, !dbg !1712
  %136 = load i32, ptr %18, align 4, !dbg !1713
  %137 = sext i32 %136 to i64, !dbg !1713
  %138 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %137, i64 8), !dbg !1714
  %139 = extractvalue { i64, i1 } %138, 1, !dbg !1714
  %140 = extractvalue { i64, i1 } %138, 0, !dbg !1714
  %141 = select i1 %139, i64 -1, i64 %140, !dbg !1714
  %142 = call noalias noundef nonnull ptr @_Znam(i64 noundef %141) #17, !dbg !1714, !heapallocsite !1715
  store ptr %142, ptr @_ZN22MultiThreadedTaskQueue8m_clientE, align 8, !dbg !1716
  %143 = load i32, ptr %18, align 4, !dbg !1717
  %144 = sext i32 %143 to i64, !dbg !1717
  %145 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %144, i64 96), !dbg !1718
  %146 = extractvalue { i64, i1 } %145, 1, !dbg !1718
  %147 = extractvalue { i64, i1 } %145, 0, !dbg !1718
  %148 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %147, i64 8), !dbg !1718
  %149 = extractvalue { i64, i1 } %148, 1, !dbg !1718
  %150 = or i1 %146, %149, !dbg !1718
  %151 = extractvalue { i64, i1 } %148, 0, !dbg !1718
  %152 = select i1 %150, i64 -1, i64 %151, !dbg !1718
  %153 = call noalias noundef nonnull ptr @_Znam(i64 noundef %152) #17, !dbg !1718, !heapallocsite !180
  store i64 %144, ptr %153, align 16, !dbg !1718
  %154 = getelementptr inbounds i8, ptr %153, i64 8, !dbg !1718
  %155 = icmp eq i64 %144, 0, !dbg !1718
  br i1 %155, label %163, label %156, !dbg !1718

156:                                              ; preds = %125
  %157 = getelementptr inbounds %class.MultiThreadedScheduler, ptr %154, i64 %144, !dbg !1718
  br label %158, !dbg !1718

158:                                              ; preds = %160, %156
  %159 = phi ptr [ %154, %156 ], [ %161, %160 ], !dbg !1718
  invoke void @_ZN22MultiThreadedSchedulerC2Ev(ptr noundef nonnull align 8 dereferenceable(92) %159)
          to label %160 unwind label %193, !dbg !1718

160:                                              ; preds = %158
  %161 = getelementptr inbounds %class.MultiThreadedScheduler, ptr %159, i64 1, !dbg !1718
  %162 = icmp eq ptr %161, %157, !dbg !1718
  br i1 %162, label %163, label %158, !dbg !1718

163:                                              ; preds = %125, %160
  store ptr %154, ptr @_ZN22MultiThreadedTaskQueue11m_schedulerE, align 8, !dbg !1719
  %164 = load ptr, ptr @_ZN22MultiThreadedTaskQueue8m_clientE, align 8, !dbg !1720
  %165 = load i32, ptr %18, align 4, !dbg !1721
  %166 = sext i32 %165 to i64, !dbg !1721
  %167 = mul i64 8, %166, !dbg !1722
  call void @llvm.memset.p0.i64(ptr align 8 %164, i8 0, i64 %167, i1 false), !dbg !1723
  call void @llvm.dbg.declare(metadata ptr %21, metadata !1724, metadata !DIExpression()), !dbg !1725
  call void @llvm.dbg.declare(metadata ptr %22, metadata !1726, metadata !DIExpression()), !dbg !1728
  store i32 0, ptr %22, align 4, !dbg !1728
  br label %168, !dbg !1729

168:                                              ; preds = %210, %163
  %169 = load i32, ptr %22, align 4, !dbg !1730
  %170 = getelementptr inbounds %class.MultiThreadedTaskQueue, ptr %23, i32 0, i32 3, !dbg !1732
  %171 = load i32, ptr %170, align 8, !dbg !1732
  %172 = icmp slt i32 %169, %171, !dbg !1733
  br i1 %172, label %173, label %213, !dbg !1734

173:                                              ; preds = %168
  %174 = getelementptr inbounds %class.MultiThreadedTaskQueueServer, ptr %23, i32 0, i32 2, !dbg !1735
  %175 = load ptr, ptr %174, align 8, !dbg !1735
  %176 = load i32, ptr %22, align 4, !dbg !1738
  %177 = sext i32 %176 to i64, !dbg !1735
  %178 = getelementptr inbounds i64, ptr %175, i64 %177, !dbg !1735
  %179 = load i32, ptr %22, align 4, !dbg !1739
  %180 = sext i32 %179 to i64, !dbg !1740
  %181 = inttoptr i64 %180 to ptr, !dbg !1740
  %182 = call i32 @pthread_create(ptr noundef %178, ptr noundef null, ptr noundef @_ZN28MultiThreadedTaskQueueServer10threadFuncEPv, ptr noundef %181) #3, !dbg !1741
  store i32 %182, ptr %21, align 4, !dbg !1742
  %183 = icmp ne i32 %182, 0, !dbg !1743
  br i1 %183, label %184, label %209, !dbg !1744

184:                                              ; preds = %173
  %185 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef @.str.5), !dbg !1745
  %186 = load i32, ptr %22, align 4, !dbg !1747
  %187 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %185, i32 noundef %186), !dbg !1748
  %188 = load i32, ptr %21, align 4, !dbg !1749
  %189 = icmp eq i32 %188, 11, !dbg !1751
  br i1 %189, label %190, label %203, !dbg !1752

190:                                              ; preds = %184
  %191 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef @.str.6), !dbg !1753
  %192 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %191, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !1754
  br label %208, !dbg !1755

193:                                              ; preds = %158
  %194 = landingpad { ptr, i32 }
          cleanup, !dbg !1756
  %195 = extractvalue { ptr, i32 } %194, 0, !dbg !1756
  store ptr %195, ptr %19, align 8, !dbg !1756
  %196 = extractvalue { ptr, i32 } %194, 1, !dbg !1756
  store i32 %196, ptr %20, align 4, !dbg !1756
  %197 = icmp eq ptr %154, %159, !dbg !1718
  br i1 %197, label %202, label %198, !dbg !1718

198:                                              ; preds = %198, %193
  %199 = phi ptr [ %159, %193 ], [ %200, %198 ], !dbg !1718
  %200 = getelementptr inbounds %class.MultiThreadedScheduler, ptr %199, i64 -1, !dbg !1718
  call void @_ZN22MultiThreadedSchedulerD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %200) #3, !dbg !1718
  %201 = icmp eq ptr %200, %154, !dbg !1718
  br i1 %201, label %202, label %198, !dbg !1718

202:                                              ; preds = %198, %193
  call void @_ZdaPv(ptr noundef %153) #16, !dbg !1718
  br label %240, !dbg !1718

203:                                              ; preds = %184
  %204 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef @.str.7), !dbg !1757
  %205 = load i32, ptr %21, align 4, !dbg !1758
  %206 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %204, i32 noundef %205), !dbg !1759
  %207 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %206, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !1760
  br label %208

208:                                              ; preds = %203, %190
  call void @exit(i32 noundef 1) #15, !dbg !1761
  unreachable, !dbg !1761

209:                                              ; preds = %173
  br label %210, !dbg !1762

210:                                              ; preds = %209
  %211 = load i32, ptr %22, align 4, !dbg !1763
  %212 = add nsw i32 %211, 1, !dbg !1763
  store i32 %212, ptr %22, align 4, !dbg !1763
  br label %168, !dbg !1764, !llvm.loop !1765

213:                                              ; preds = %168
  store ptr %23, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1767, metadata !DIExpression()), !dbg !1769
  %214 = load ptr, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1771, metadata !DIExpression()), !dbg !1772
  br label %215, !dbg !1773

215:                                              ; preds = %234, %213
  %216 = call i32 @sched_yield() #3, !dbg !1774
  store i32 0, ptr %8, align 4, !dbg !1776
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1777, metadata !DIExpression()), !dbg !1779
  store i32 0, ptr %9, align 4, !dbg !1779
  br label %217, !dbg !1780

217:                                              ; preds = %222, %215
  %218 = load i32, ptr %9, align 4, !dbg !1781
  %219 = getelementptr inbounds %class.MultiThreadedTaskQueue, ptr %214, i32 0, i32 3, !dbg !1783
  %220 = load i32, ptr %219, align 8, !dbg !1783
  %221 = icmp slt i32 %218, %220, !dbg !1784
  br i1 %221, label %222, label %234, !dbg !1785

222:                                              ; preds = %217
  %223 = load ptr, ptr @_ZN22MultiThreadedTaskQueue11m_schedulerE, align 8, !dbg !1786
  %224 = load i32, ptr %9, align 4, !dbg !1787
  %225 = sext i32 %224 to i64, !dbg !1786
  %226 = getelementptr inbounds %class.MultiThreadedScheduler, ptr %223, i64 %225, !dbg !1786
  store ptr %226, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1673, metadata !DIExpression()), !dbg !1788
  %227 = load ptr, ptr %5, align 8
  %228 = getelementptr inbounds %class.MultiThreadedScheduler, ptr %227, i32 0, i32 1, !dbg !1790
  %229 = load i32, ptr %228, align 8, !dbg !1790
  %230 = load i32, ptr %8, align 4, !dbg !1791
  %231 = add nsw i32 %230, %229, !dbg !1791
  store i32 %231, ptr %8, align 4, !dbg !1791
  %232 = load i32, ptr %9, align 4, !dbg !1792
  %233 = add nsw i32 %232, 1, !dbg !1792
  store i32 %233, ptr %9, align 4, !dbg !1792
  br label %217, !dbg !1793, !llvm.loop !1794

234:                                              ; preds = %217
  %235 = load i32, ptr %8, align 4, !dbg !1796
  %236 = getelementptr inbounds %class.MultiThreadedTaskQueue, ptr %214, i32 0, i32 3, !dbg !1797
  %237 = load i32, ptr %236, align 8, !dbg !1797
  %238 = icmp ne i32 %235, %237, !dbg !1798
  br i1 %238, label %215, label %239, !dbg !1799, !llvm.loop !1800

239:                                              ; preds = %234
  ret void, !dbg !1756

240:                                              ; preds = %202
  %241 = load ptr, ptr %19, align 8, !dbg !1718
  %242 = load i32, ptr %20, align 4, !dbg !1718
  %243 = insertvalue { ptr, i32 } poison, ptr %241, 0, !dbg !1718
  %244 = insertvalue { ptr, i32 } %243, i32 %242, 1, !dbg !1718
  resume { ptr, i32 } %244, !dbg !1718
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef i32 @_ZN22MultiThreadedTaskQueue18maxNumberOfThreadsEv() #4 align 2 !dbg !1802 {
  %1 = alloca ptr, align 8
  store ptr @_ZN22MultiThreadedTaskQueue8m_serverE, ptr %1, align 8
  call void @llvm.dbg.declare(metadata ptr %1, metadata !1803, metadata !DIExpression()), !dbg !1806
  %2 = load ptr, ptr %1, align 8
  %3 = getelementptr inbounds %class.MultiThreadedTaskQueue, ptr %2, i32 0, i32 3, !dbg !1808
  %4 = load i32, ptr %3, align 8, !dbg !1808
  ret i32 %4, !dbg !1809
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN22MultiThreadedTaskQueue13createThreadsEi(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %1) #4 align 2 !dbg !1810 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1811, metadata !DIExpression()), !dbg !1812
  store i32 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1813, metadata !DIExpression()), !dbg !1814
  %7 = load ptr, ptr %5, align 8
  %8 = load i32, ptr %6, align 4, !dbg !1815
  %9 = icmp sge i32 %8, 1, !dbg !1815
  br i1 %9, label %10, label %11, !dbg !1815

10:                                               ; preds = %2
  br label %13, !dbg !1815

11:                                               ; preds = %2
  call void @__assert_fail(ptr noundef @.str.2, ptr noundef @.str.3, i32 noundef 340, ptr noundef @__PRETTY_FUNCTION__._ZN22MultiThreadedTaskQueue13createThreadsEi) #15, !dbg !1815
  unreachable, !dbg !1815

12:                                               ; No predecessors!
  br label %13, !dbg !1815

13:                                               ; preds = %12, %10
  %14 = load i32, ptr %6, align 4, !dbg !1816
  %15 = getelementptr inbounds %class.MultiThreadedTaskQueue, ptr %7, i32 0, i32 3, !dbg !1817
  store i32 %14, ptr %15, align 8, !dbg !1818
  store ptr getelementptr inbounds (i8, ptr @_ZN22MultiThreadedTaskQueue8m_serverE, i64 24), ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1609, metadata !DIExpression()), !dbg !1819
  %16 = load ptr, ptr %4, align 8
  %17 = call i32 @pthread_mutex_lock(ptr noundef %16) #3, !dbg !1821
  %18 = load i32, ptr getelementptr inbounds (%class.MultiThreadedTaskQueue, ptr @_ZN22MultiThreadedTaskQueue8m_serverE, i32 0, i32 3), align 8, !dbg !1822
  %19 = icmp eq i32 %18, 0, !dbg !1824
  br i1 %19, label %20, label %22, !dbg !1825

20:                                               ; preds = %13
  %21 = load i32, ptr %6, align 4, !dbg !1826
  call void @_ZN28MultiThreadedTaskQueueServer13createThreadsEi(ptr noundef nonnull align 8 dereferenceable(168) @_ZN22MultiThreadedTaskQueue8m_serverE, i32 noundef %21), !dbg !1828
  br label %22, !dbg !1829

22:                                               ; preds = %20, %13
  store ptr getelementptr inbounds (i8, ptr @_ZN22MultiThreadedTaskQueue8m_serverE, i64 24), ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1650, metadata !DIExpression()), !dbg !1830
  %23 = load ptr, ptr %3, align 8
  %24 = call i32 @pthread_mutex_unlock(ptr noundef %23) #3, !dbg !1832
  ret void, !dbg !1833
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #6

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN22MultiThreadedTaskQueue12startThreadsEv(ptr noundef nonnull align 8 dereferenceable(20) %0) unnamed_addr #4 align 2 !dbg !1834 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1835, metadata !DIExpression()), !dbg !1836
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %class.MultiThreadedTaskQueue, ptr %3, i32 0, i32 1, !dbg !1837
  store volatile i32 0, ptr %4, align 8, !dbg !1838
  %5 = load volatile i32, ptr %4, align 8, !dbg !1838
  %6 = getelementptr inbounds %class.MultiThreadedTaskQueue, ptr %3, i32 0, i32 2, !dbg !1839
  store volatile i32 %5, ptr %6, align 4, !dbg !1840
  call void @_ZN28MultiThreadedTaskQueueServer9addClientEP22MultiThreadedTaskQueue(ptr noundef nonnull align 8 dereferenceable(168) @_ZN22MultiThreadedTaskQueue8m_serverE, ptr noundef %3), !dbg !1841
  ret void, !dbg !1842
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN28MultiThreadedTaskQueueServer9addClientEP22MultiThreadedTaskQueue(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1) #4 comdat align 2 !dbg !1843 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store ptr %0, ptr %12, align 8
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1844, metadata !DIExpression()), !dbg !1845
  store ptr %1, ptr %13, align 8
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1846, metadata !DIExpression()), !dbg !1847
  %18 = load ptr, ptr %12, align 8
  br label %19, !dbg !1848

19:                                               ; preds = %44, %2
  call void @llvm.dbg.label(metadata !1849), !dbg !1850
  store ptr getelementptr inbounds (i8, ptr @_ZN22MultiThreadedTaskQueue8m_serverE, i64 24), ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1609, metadata !DIExpression()), !dbg !1851
  %20 = load ptr, ptr %10, align 8
  %21 = call i32 @pthread_mutex_lock(ptr noundef %20) #3, !dbg !1853
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1854, metadata !DIExpression()), !dbg !1855
  %22 = getelementptr inbounds %class.MultiThreadedTaskQueue, ptr %18, i32 0, i32 2, !dbg !1856
  %23 = load volatile i32, ptr %22, align 4, !dbg !1856
  store i32 %23, ptr %14, align 4, !dbg !1855
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1857, metadata !DIExpression()), !dbg !1859
  store i32 0, ptr %15, align 4, !dbg !1859
  br label %24, !dbg !1860

24:                                               ; preds = %41, %19
  %25 = load i32, ptr %15, align 4, !dbg !1861
  %26 = icmp slt i32 %25, 4, !dbg !1863
  br i1 %26, label %27, label %44, !dbg !1864

27:                                               ; preds = %24
  %28 = getelementptr inbounds %class.MultiThreadedTaskQueueServer, ptr %18, i32 0, i32 3, !dbg !1865
  %29 = load i32, ptr %14, align 4, !dbg !1868
  %30 = sext i32 %29 to i64, !dbg !1865
  %31 = getelementptr inbounds [4 x ptr], ptr %28, i64 0, i64 %30, !dbg !1865
  %32 = load ptr, ptr %31, align 8, !dbg !1865
  %33 = icmp eq ptr %32, null, !dbg !1869
  br i1 %33, label %34, label %35, !dbg !1870

34:                                               ; preds = %27
  br label %48, !dbg !1871

35:                                               ; preds = %27
  %36 = load i32, ptr %14, align 4, !dbg !1872
  %37 = add nsw i32 %36, 1, !dbg !1872
  store i32 %37, ptr %14, align 4, !dbg !1872
  %38 = icmp eq i32 %37, 4, !dbg !1874
  br i1 %38, label %39, label %40, !dbg !1875

39:                                               ; preds = %35
  store i32 0, ptr %14, align 4, !dbg !1876
  br label %40, !dbg !1877

40:                                               ; preds = %39, %35
  br label %41, !dbg !1878

41:                                               ; preds = %40
  %42 = load i32, ptr %15, align 4, !dbg !1879
  %43 = add nsw i32 %42, 1, !dbg !1879
  store i32 %43, ptr %15, align 4, !dbg !1879
  br label %24, !dbg !1880, !llvm.loop !1881

44:                                               ; preds = %24
  store ptr getelementptr inbounds (i8, ptr @_ZN22MultiThreadedTaskQueue8m_serverE, i64 24), ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1650, metadata !DIExpression()), !dbg !1883
  %45 = load ptr, ptr %6, align 8
  %46 = call i32 @pthread_mutex_unlock(ptr noundef %45) #3, !dbg !1885
  %47 = call i32 @sched_yield() #3, !dbg !1886
  br label %19, !dbg !1887

48:                                               ; preds = %34
  call void @llvm.dbg.label(metadata !1888), !dbg !1889
  %49 = load ptr, ptr %13, align 8, !dbg !1890
  %50 = getelementptr inbounds %class.MultiThreadedTaskQueueServer, ptr %18, i32 0, i32 3, !dbg !1891
  %51 = load i32, ptr %14, align 4, !dbg !1892
  %52 = sext i32 %51 to i64, !dbg !1891
  %53 = getelementptr inbounds [4 x ptr], ptr %50, i64 0, i64 %52, !dbg !1891
  store ptr %49, ptr %53, align 8, !dbg !1893
  %54 = getelementptr inbounds %class.MultiThreadedTaskQueueServer, ptr %18, i32 0, i32 4, !dbg !1894
  %55 = load i32, ptr %14, align 4, !dbg !1895
  %56 = sext i32 %55 to i64, !dbg !1894
  %57 = getelementptr inbounds [4 x i32], ptr %54, i64 0, i64 %56, !dbg !1894
  store i32 0, ptr %57, align 4, !dbg !1896
  %58 = load i32, ptr %14, align 4, !dbg !1897
  %59 = add nsw i32 %58, 1, !dbg !1898
  %60 = getelementptr inbounds %class.MultiThreadedTaskQueue, ptr %18, i32 0, i32 2, !dbg !1899
  store volatile i32 %59, ptr %60, align 4, !dbg !1900
  %61 = getelementptr inbounds %class.MultiThreadedTaskQueue, ptr %18, i32 0, i32 2, !dbg !1901
  %62 = load volatile i32, ptr %61, align 4, !dbg !1901
  %63 = icmp eq i32 %62, 4, !dbg !1903
  br i1 %63, label %64, label %66, !dbg !1904

64:                                               ; preds = %48
  %65 = getelementptr inbounds %class.MultiThreadedTaskQueue, ptr %18, i32 0, i32 2, !dbg !1905
  store volatile i32 0, ptr %65, align 4, !dbg !1906
  br label %66, !dbg !1905

66:                                               ; preds = %64, %48
  call void @llvm.dbg.declare(metadata ptr %16, metadata !1907, metadata !DIExpression()), !dbg !1908
  %67 = load i32, ptr getelementptr inbounds (%class.MultiThreadedTaskQueue, ptr @_ZN22MultiThreadedTaskQueue8m_serverE, i32 0, i32 3), align 8, !dbg !1909
  store i32 %67, ptr %16, align 4, !dbg !1908
  call void @llvm.dbg.declare(metadata ptr %17, metadata !1910, metadata !DIExpression()), !dbg !1912
  store i32 0, ptr %17, align 4, !dbg !1912
  br label %68, !dbg !1913

68:                                               ; preds = %114, %66
  %69 = load i32, ptr %17, align 4, !dbg !1914
  %70 = load i32, ptr %16, align 4, !dbg !1916
  %71 = icmp slt i32 %69, %70, !dbg !1917
  br i1 %71, label %72, label %117, !dbg !1918

72:                                               ; preds = %68
  %73 = load ptr, ptr @_ZN22MultiThreadedTaskQueue11m_schedulerE, align 8, !dbg !1919
  %74 = load i32, ptr %17, align 4, !dbg !1921
  %75 = sext i32 %74 to i64, !dbg !1919
  %76 = getelementptr inbounds %class.MultiThreadedScheduler, ptr %73, i64 %75, !dbg !1919
  store ptr %76, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1609, metadata !DIExpression()), !dbg !1922
  %77 = load ptr, ptr %11, align 8
  %78 = call i32 @pthread_mutex_lock(ptr noundef %77) #3, !dbg !1924
  %79 = load ptr, ptr @_ZN22MultiThreadedTaskQueue11m_schedulerE, align 8, !dbg !1925
  %80 = load i32, ptr %17, align 4, !dbg !1927
  %81 = sext i32 %80 to i64, !dbg !1925
  %82 = getelementptr inbounds %class.MultiThreadedScheduler, ptr %79, i64 %81, !dbg !1925
  store ptr %82, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1673, metadata !DIExpression()), !dbg !1928
  %83 = load ptr, ptr %4, align 8
  %84 = getelementptr inbounds %class.MultiThreadedScheduler, ptr %83, i32 0, i32 1, !dbg !1930
  %85 = load i32, ptr %84, align 8, !dbg !1930
  %86 = icmp ne i32 %85, 0, !dbg !1925
  br i1 %86, label %87, label %107, !dbg !1931

87:                                               ; preds = %72
  %88 = load i32, ptr %17, align 4, !dbg !1932
  %89 = call noundef zeroext i1 @_ZN28MultiThreadedTaskQueueServer8scheduleEi(ptr noundef nonnull align 8 dereferenceable(168) %18, i32 noundef %88), !dbg !1935
  br i1 %89, label %97, label %90, !dbg !1936

90:                                               ; preds = %87
  %91 = load ptr, ptr @_ZN22MultiThreadedTaskQueue11m_schedulerE, align 8, !dbg !1937
  %92 = load i32, ptr %17, align 4, !dbg !1939
  %93 = sext i32 %92 to i64, !dbg !1937
  %94 = getelementptr inbounds %class.MultiThreadedScheduler, ptr %91, i64 %93, !dbg !1937
  store ptr %94, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1650, metadata !DIExpression()), !dbg !1940
  %95 = load ptr, ptr %7, align 8
  %96 = call i32 @pthread_mutex_unlock(ptr noundef %95) #3, !dbg !1942
  br label %117, !dbg !1943

97:                                               ; preds = %87
  %98 = load ptr, ptr @_ZN22MultiThreadedTaskQueue11m_schedulerE, align 8, !dbg !1944
  %99 = load i32, ptr %17, align 4, !dbg !1945
  %100 = sext i32 %99 to i64, !dbg !1944
  %101 = getelementptr inbounds %class.MultiThreadedScheduler, ptr %98, i64 %100, !dbg !1944
  store ptr %101, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1632, metadata !DIExpression()), !dbg !1946
  %102 = load ptr, ptr %5, align 8
  %103 = getelementptr inbounds %class.MultiThreadedScheduler, ptr %102, i32 0, i32 1, !dbg !1948
  store i32 0, ptr %103, align 8, !dbg !1949
  store ptr %102, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1638, metadata !DIExpression()), !dbg !1950
  %104 = load ptr, ptr %3, align 8
  %105 = getelementptr inbounds %class.MultiThreadedSyncPrimitive, ptr %104, i32 0, i32 1, !dbg !1952
  %106 = call i32 @pthread_cond_signal(ptr noundef %105) #3, !dbg !1953
  br label %107, !dbg !1954

107:                                              ; preds = %97, %72
  %108 = load ptr, ptr @_ZN22MultiThreadedTaskQueue11m_schedulerE, align 8, !dbg !1955
  %109 = load i32, ptr %17, align 4, !dbg !1956
  %110 = sext i32 %109 to i64, !dbg !1955
  %111 = getelementptr inbounds %class.MultiThreadedScheduler, ptr %108, i64 %110, !dbg !1955
  store ptr %111, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1650, metadata !DIExpression()), !dbg !1957
  %112 = load ptr, ptr %8, align 8
  %113 = call i32 @pthread_mutex_unlock(ptr noundef %112) #3, !dbg !1959
  br label %114, !dbg !1960

114:                                              ; preds = %107
  %115 = load i32, ptr %17, align 4, !dbg !1961
  %116 = add nsw i32 %115, 1, !dbg !1961
  store i32 %116, ptr %17, align 4, !dbg !1961
  br label %68, !dbg !1962, !llvm.loop !1963

117:                                              ; preds = %90, %68
  store ptr getelementptr inbounds (i8, ptr @_ZN22MultiThreadedTaskQueue8m_serverE, i64 24), ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1650, metadata !DIExpression()), !dbg !1965
  %118 = load ptr, ptr %9, align 8
  %119 = call i32 @pthread_mutex_unlock(ptr noundef %118) #3, !dbg !1967
  ret void, !dbg !1968
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN22MultiThreadedTaskQueue17waitForAllThreadsEv(ptr noundef nonnull align 8 dereferenceable(20) %0) unnamed_addr #4 align 2 !dbg !1969 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1970, metadata !DIExpression()), !dbg !1971
  %7 = load ptr, ptr %5, align 8
  %8 = getelementptr inbounds %class.MultiThreadedTaskQueue, ptr %7, i32 0, i32 2, !dbg !1972
  %9 = load volatile i32, ptr %8, align 4, !dbg !1972
  %10 = getelementptr inbounds %class.MultiThreadedTaskQueue, ptr %7, i32 0, i32 3, !dbg !1974
  %11 = load i32, ptr %10, align 8, !dbg !1974
  %12 = icmp eq i32 %9, %11, !dbg !1975
  br i1 %12, label %13, label %14, !dbg !1976

13:                                               ; preds = %1
  br label %30, !dbg !1977

14:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1978, metadata !DIExpression()), !dbg !1979
  store ptr getelementptr inbounds (i8, ptr @_ZN22MultiThreadedTaskQueue8m_serverE, i64 24), ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1609, metadata !DIExpression()), !dbg !1980
  %15 = load ptr, ptr %4, align 8
  %16 = call i32 @pthread_mutex_lock(ptr noundef %15) #3, !dbg !1982
  store i32 %16, ptr %6, align 4, !dbg !1979
  br label %17, !dbg !1983

17:                                               ; preds = %23, %14
  %18 = getelementptr inbounds %class.MultiThreadedTaskQueue, ptr %7, i32 0, i32 2, !dbg !1984
  %19 = load volatile i32, ptr %18, align 4, !dbg !1984
  %20 = getelementptr inbounds %class.MultiThreadedTaskQueue, ptr %7, i32 0, i32 3, !dbg !1985
  %21 = load i32, ptr %20, align 8, !dbg !1985
  %22 = icmp slt i32 %19, %21, !dbg !1986
  br i1 %22, label %23, label %27, !dbg !1983

23:                                               ; preds = %17
  store ptr getelementptr inbounds (i8, ptr @_ZN22MultiThreadedTaskQueue8m_serverE, i64 24), ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1987, metadata !DIExpression()), !dbg !1989
  %24 = load ptr, ptr %2, align 8
  %25 = getelementptr inbounds %class.MultiThreadedSyncPrimitive, ptr %24, i32 0, i32 1, !dbg !1991
  %26 = call i32 @pthread_cond_wait(ptr noundef %25, ptr noundef %24), !dbg !1992
  br label %17, !dbg !1983, !llvm.loop !1993

27:                                               ; preds = %17
  store ptr getelementptr inbounds (i8, ptr @_ZN22MultiThreadedTaskQueue8m_serverE, i64 24), ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1650, metadata !DIExpression()), !dbg !1995
  %28 = load ptr, ptr %3, align 8
  %29 = call i32 @pthread_mutex_unlock(ptr noundef %28) #3, !dbg !1997
  store i32 %29, ptr %6, align 4, !dbg !1998
  br label %30, !dbg !1999

30:                                               ; preds = %27, %13
  ret void, !dbg !1999
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.4() #0 section ".text.startup" !dbg !2000 {
  call void @_ZN28MultiThreadedTaskQueueServerC2Ei(ptr noundef nonnull align 8 dereferenceable(168) @_ZN22MultiThreadedTaskQueue8m_serverE, i32 noundef 1), !dbg !2001
  %1 = call i32 @__cxa_atexit(ptr @_ZN28MultiThreadedTaskQueueServerD2Ev, ptr @_ZN22MultiThreadedTaskQueue8m_serverE, ptr @__dso_handle) #3, !dbg !2003
  ret void, !dbg !2004
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN28MultiThreadedTaskQueueServerC2Ei(ptr noundef nonnull align 8 dereferenceable(168) %0, i32 noundef %1) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !dbg !2005 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2006, metadata !DIExpression()), !dbg !2007
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2008, metadata !DIExpression()), !dbg !2009
  %7 = load ptr, ptr %3, align 8
  call void @_ZN22MultiThreadedTaskQueueC2Ev(ptr noundef nonnull align 8 dereferenceable(20) %7), !dbg !2010
  %8 = getelementptr inbounds i8, ptr %7, i64 24, !dbg !2011
  call void @_ZN26MultiThreadedSyncPrimitiveC2Ev(ptr noundef nonnull align 8 dereferenceable(88) %8), !dbg !2012
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTV28MultiThreadedTaskQueueServer, i32 0, inrange i32 0, i32 2), ptr %7, align 8, !dbg !2011
  %9 = getelementptr inbounds %class.MultiThreadedTaskQueueServer, ptr %7, i32 0, i32 2, !dbg !2013
  store ptr null, ptr %9, align 8, !dbg !2013
  %10 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.10)
          to label %11 unwind label %21, !dbg !2014

11:                                               ; preds = %2
  %12 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef @.str.1)
          to label %13 unwind label %21, !dbg !2014

13:                                               ; preds = %11
  %14 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPKv(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef %7)
          to label %15 unwind label %21, !dbg !2014

15:                                               ; preds = %13
  %16 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
          to label %17 unwind label %21, !dbg !2014

17:                                               ; preds = %15
  %18 = getelementptr inbounds %class.MultiThreadedTaskQueue, ptr %7, i32 0, i32 2, !dbg !2016
  store volatile i32 0, ptr %18, align 4, !dbg !2017
  %19 = getelementptr inbounds %class.MultiThreadedTaskQueueServer, ptr %7, i32 0, i32 3, !dbg !2018
  %20 = getelementptr inbounds [4 x ptr], ptr %19, i64 0, i64 0, !dbg !2019
  call void @llvm.memset.p0.i64(ptr align 8 %20, i8 0, i64 32, i1 false), !dbg !2019
  ret void, !dbg !2020

21:                                               ; preds = %15, %13, %11, %2
  %22 = landingpad { ptr, i32 }
          cleanup, !dbg !2021
  %23 = extractvalue { ptr, i32 } %22, 0, !dbg !2021
  store ptr %23, ptr %5, align 8, !dbg !2021
  %24 = extractvalue { ptr, i32 } %22, 1, !dbg !2021
  store i32 %24, ptr %6, align 4, !dbg !2021
  %25 = getelementptr inbounds i8, ptr %7, i64 24, !dbg !2021
  call void @_ZN26MultiThreadedSyncPrimitiveD2Ev(ptr noundef nonnull align 8 dereferenceable(88) %25) #3, !dbg !2021
  call void @_ZN22MultiThreadedTaskQueueD2Ev(ptr noundef nonnull align 8 dereferenceable(20) %7) #3, !dbg !2021
  br label %26, !dbg !2021

26:                                               ; preds = %21
  %27 = load ptr, ptr %5, align 8, !dbg !2021
  %28 = load i32, ptr %6, align 4, !dbg !2021
  %29 = insertvalue { ptr, i32 } poison, ptr %27, 0, !dbg !2021
  %30 = insertvalue { ptr, i32 } %29, i32 %28, 1, !dbg !2021
  resume { ptr, i32 } %30, !dbg !2021
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN28MultiThreadedTaskQueueServerD2Ev(ptr noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !dbg !2022 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  store ptr %0, ptr %12, align 8
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2023, metadata !DIExpression()), !dbg !2024
  %13 = load ptr, ptr %12, align 8
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTV28MultiThreadedTaskQueueServer, i32 0, inrange i32 0, i32 2), ptr %13, align 8, !dbg !2025
  store ptr %13, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1592, metadata !DIExpression()), !dbg !2026
  store i8 0, ptr %8, align 1
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1596, metadata !DIExpression()), !dbg !2029
  %14 = load ptr, ptr %7, align 8
  %15 = getelementptr inbounds %class.MultiThreadedTaskQueue, ptr %14, i32 0, i32 3, !dbg !2030
  %16 = load i32, ptr %15, align 8, !dbg !2030
  %17 = icmp sle i32 %16, 0, !dbg !2031
  br i1 %17, label %18, label %19, !dbg !2032

18:                                               ; preds = %1
  br label %110, !dbg !2033

19:                                               ; preds = %1
  %20 = load i8, ptr %8, align 1, !dbg !2034
  %21 = trunc i8 %20 to i1, !dbg !2034
  br i1 %21, label %22, label %75, !dbg !2035

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, ptr %14, i64 24, !dbg !2036
  store ptr %23, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1609, metadata !DIExpression()), !dbg !2037
  %24 = load ptr, ptr %6, align 8
  %25 = call i32 @pthread_mutex_lock(ptr noundef %24) #3, !dbg !2039
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1615, metadata !DIExpression()), !dbg !2040
  %26 = getelementptr inbounds %class.MultiThreadedTaskQueue, ptr %14, i32 0, i32 3, !dbg !2041
  %27 = load i32, ptr %26, align 8, !dbg !2041
  store i32 %27, ptr %9, align 4, !dbg !2040
  %28 = getelementptr inbounds %class.MultiThreadedTaskQueue, ptr %14, i32 0, i32 3, !dbg !2042
  store i32 -1, ptr %28, align 8, !dbg !2043
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1620, metadata !DIExpression()), !dbg !2044
  store i32 0, ptr %10, align 4, !dbg !2044
  br label %29, !dbg !2045

29:                                               ; preds = %43, %22
  %30 = load i32, ptr %10, align 4, !dbg !2046
  %31 = load i32, ptr %9, align 4, !dbg !2047
  %32 = icmp slt i32 %30, %31, !dbg !2048
  br i1 %32, label %33, label %46, !dbg !2049

33:                                               ; preds = %29
  %34 = load ptr, ptr @_ZN22MultiThreadedTaskQueue11m_schedulerE, align 8, !dbg !2050
  %35 = load i32, ptr %10, align 4, !dbg !2051
  %36 = sext i32 %35 to i64, !dbg !2050
  %37 = getelementptr inbounds %class.MultiThreadedScheduler, ptr %34, i64 %36, !dbg !2050
  store ptr %37, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1632, metadata !DIExpression()), !dbg !2052
  %38 = load ptr, ptr %4, align 8
  %39 = getelementptr inbounds %class.MultiThreadedScheduler, ptr %38, i32 0, i32 1, !dbg !2054
  store i32 0, ptr %39, align 8, !dbg !2055
  store ptr %38, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1638, metadata !DIExpression()), !dbg !2056
  %40 = load ptr, ptr %2, align 8
  %41 = getelementptr inbounds %class.MultiThreadedSyncPrimitive, ptr %40, i32 0, i32 1, !dbg !2058
  %42 = call i32 @pthread_cond_signal(ptr noundef %41) #3, !dbg !2059
  br label %43, !dbg !2060

43:                                               ; preds = %33
  %44 = load i32, ptr %10, align 4, !dbg !2061
  %45 = add nsw i32 %44, 1, !dbg !2061
  store i32 %45, ptr %10, align 4, !dbg !2061
  br label %29, !dbg !2062, !llvm.loop !2063

46:                                               ; preds = %29
  %47 = getelementptr inbounds i8, ptr %14, i64 24, !dbg !2065
  store ptr %47, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1650, metadata !DIExpression()), !dbg !2066
  %48 = load ptr, ptr %5, align 8
  %49 = call i32 @pthread_mutex_unlock(ptr noundef %48) #3, !dbg !2068
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1655, metadata !DIExpression()), !dbg !2069
  store i32 0, ptr %11, align 4, !dbg !2069
  br label %50, !dbg !2070

50:                                               ; preds = %73, %46
  %51 = load i32, ptr %11, align 4, !dbg !2071
  %52 = load i32, ptr %9, align 4, !dbg !2072
  %53 = icmp slt i32 %51, %52, !dbg !2073
  br i1 %53, label %54, label %74, !dbg !2070

54:                                               ; preds = %50
  br label %55, !dbg !2074

55:                                               ; preds = %70, %54
  %56 = load i32, ptr %11, align 4, !dbg !2075
  %57 = load i32, ptr %9, align 4, !dbg !2076
  %58 = icmp slt i32 %56, %57, !dbg !2077
  br i1 %58, label %59, label %73, !dbg !2078

59:                                               ; preds = %55
  %60 = load ptr, ptr @_ZN22MultiThreadedTaskQueue11m_schedulerE, align 8, !dbg !2079
  %61 = load i32, ptr %11, align 4, !dbg !2080
  %62 = sext i32 %61 to i64, !dbg !2079
  %63 = getelementptr inbounds %class.MultiThreadedScheduler, ptr %60, i64 %62, !dbg !2079
  store ptr %63, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1673, metadata !DIExpression()), !dbg !2081
  %64 = load ptr, ptr %3, align 8
  %65 = getelementptr inbounds %class.MultiThreadedScheduler, ptr %64, i32 0, i32 1, !dbg !2083
  %66 = load i32, ptr %65, align 8, !dbg !2083
  %67 = icmp ne i32 %66, -1, !dbg !2084
  br i1 %67, label %68, label %70, !dbg !2085

68:                                               ; preds = %59
  %69 = call i32 @sched_yield() #3, !dbg !2086
  br label %73, !dbg !2087

70:                                               ; preds = %59
  %71 = load i32, ptr %11, align 4, !dbg !2088
  %72 = add nsw i32 %71, 1, !dbg !2088
  store i32 %72, ptr %11, align 4, !dbg !2088
  br label %55, !dbg !2089, !llvm.loop !2090

73:                                               ; preds = %68, %55
  br label %50, !dbg !2070, !llvm.loop !2092

74:                                               ; preds = %50
  br label %75, !dbg !2094

75:                                               ; preds = %74, %19
  %76 = getelementptr inbounds %class.MultiThreadedTaskQueueServer, ptr %14, i32 0, i32 2, !dbg !2095
  %77 = load ptr, ptr %76, align 8, !dbg !2095
  %78 = icmp ne ptr %77, null, !dbg !2095
  br i1 %78, label %79, label %85, !dbg !2096

79:                                               ; preds = %75
  %80 = getelementptr inbounds %class.MultiThreadedTaskQueueServer, ptr %14, i32 0, i32 2, !dbg !2097
  %81 = load ptr, ptr %80, align 8, !dbg !2097
  %82 = icmp eq ptr %81, null, !dbg !2098
  br i1 %82, label %84, label %83, !dbg !2098

83:                                               ; preds = %79
  call void @_ZdaPv(ptr noundef %81) #16, !dbg !2098
  br label %84, !dbg !2098

84:                                               ; preds = %83, %79
  br label %85, !dbg !2098

85:                                               ; preds = %84, %75
  %86 = load ptr, ptr @_ZN22MultiThreadedTaskQueue8m_clientE, align 8, !dbg !2099
  %87 = icmp ne ptr %86, null, !dbg !2099
  br i1 %87, label %88, label %93, !dbg !2100

88:                                               ; preds = %85
  %89 = load ptr, ptr @_ZN22MultiThreadedTaskQueue8m_clientE, align 8, !dbg !2101
  %90 = icmp eq ptr %89, null, !dbg !2102
  br i1 %90, label %92, label %91, !dbg !2102

91:                                               ; preds = %88
  call void @_ZdaPv(ptr noundef %89) #16, !dbg !2102
  br label %92, !dbg !2102

92:                                               ; preds = %91, %88
  br label %93, !dbg !2102

93:                                               ; preds = %92, %85
  %94 = load ptr, ptr @_ZN22MultiThreadedTaskQueue11m_schedulerE, align 8, !dbg !2103
  %95 = icmp ne ptr %94, null, !dbg !2103
  br i1 %95, label %96, label %110, !dbg !2104

96:                                               ; preds = %93
  %97 = load ptr, ptr @_ZN22MultiThreadedTaskQueue11m_schedulerE, align 8, !dbg !2105
  %98 = icmp eq ptr %97, null, !dbg !2106
  br i1 %98, label %109, label %99, !dbg !2106

99:                                               ; preds = %96
  %100 = getelementptr inbounds i8, ptr %97, i64 -8, !dbg !2106
  %101 = load i64, ptr %100, align 8, !dbg !2106
  %102 = getelementptr inbounds %class.MultiThreadedScheduler, ptr %97, i64 %101, !dbg !2106
  %103 = icmp eq ptr %97, %102, !dbg !2106
  br i1 %103, label %108, label %104, !dbg !2106

104:                                              ; preds = %104, %99
  %105 = phi ptr [ %102, %99 ], [ %106, %104 ], !dbg !2106
  %106 = getelementptr inbounds %class.MultiThreadedScheduler, ptr %105, i64 -1, !dbg !2106
  call void @_ZN22MultiThreadedSchedulerD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %106) #3, !dbg !2106
  %107 = icmp eq ptr %106, %97, !dbg !2106
  br i1 %107, label %108, label %104, !dbg !2106

108:                                              ; preds = %104, %99
  call void @_ZdaPv(ptr noundef %100) #16, !dbg !2106
  br label %109, !dbg !2106

109:                                              ; preds = %108, %96
  br label %110, !dbg !2106

110:                                              ; preds = %18, %93, %109
  br label %111, !dbg !2107

111:                                              ; preds = %110
  %112 = getelementptr inbounds i8, ptr %13, i64 24, !dbg !2108
  call void @_ZN26MultiThreadedSyncPrimitiveD2Ev(ptr noundef nonnull align 8 dereferenceable(88) %112) #3, !dbg !2108
  call void @_ZN22MultiThreadedTaskQueueD2Ev(ptr noundef nonnull align 8 dereferenceable(20) %13) #3, !dbg !2108
  ret void, !dbg !2109

113:                                              ; No predecessors!
  %114 = landingpad { ptr, i32 }
          catch ptr null, !dbg !2110
  %115 = extractvalue { ptr, i32 } %114, 0, !dbg !2110
  call void @__clang_call_terminate(ptr %115) #15, !dbg !2110
  unreachable, !dbg !2110
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZN22MultiThreadedTaskQueue4taskEii(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #9 comdat align 2 !dbg !2111 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2112, metadata !DIExpression()), !dbg !2113
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2114, metadata !DIExpression()), !dbg !2115
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2116, metadata !DIExpression()), !dbg !2117
  %7 = load ptr, ptr %4, align 8
  ret i32 1, !dbg !2118
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNK22MultiThreadedTaskQueue3tagEv(ptr noundef nonnull align 8 dereferenceable(20) %0) unnamed_addr #9 comdat align 2 !dbg !2119 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2120, metadata !DIExpression()), !dbg !2121
  %3 = load ptr, ptr %2, align 8
  %4 = ptrtoint ptr %3 to i64, !dbg !2122
  ret i64 %4, !dbg !2123
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #5

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN22MultiThreadedSchedulerC2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) unnamed_addr #7 comdat align 2 !dbg !2124 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2125, metadata !DIExpression()), !dbg !2126
  %3 = load ptr, ptr %2, align 8
  call void @_ZN26MultiThreadedSyncPrimitiveC2Ev(ptr noundef nonnull align 8 dereferenceable(88) %3), !dbg !2127
  %4 = getelementptr inbounds %class.MultiThreadedScheduler, ptr %3, i32 0, i32 1, !dbg !2128
  store i32 0, ptr %4, align 8, !dbg !2128
  ret void, !dbg !2129
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN22MultiThreadedSchedulerD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) unnamed_addr #8 comdat align 2 !dbg !2130 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2131, metadata !DIExpression()), !dbg !2132
  %3 = load ptr, ptr %2, align 8
  call void @_ZN26MultiThreadedSyncPrimitiveD2Ev(ptr noundef nonnull align 8 dereferenceable(88) %3) #3, !dbg !2133
  ret void, !dbg !2135
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) #11

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: nounwind
declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZN28MultiThreadedTaskQueueServer10threadFuncEPv(ptr noundef %0) #4 comdat align 2 !dbg !2136 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  %16 = alloca ptr, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8, align 1
  %20 = alloca ptr, align 8
  %21 = alloca ptr, align 8
  %22 = alloca ptr, align 8
  %23 = alloca ptr, align 8
  %24 = alloca ptr, align 8
  %25 = alloca i8, align 1
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca ptr, align 8
  %29 = alloca ptr, align 8
  %30 = alloca ptr, align 8
  %31 = alloca ptr, align 8
  %32 = alloca i8, align 1
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca ptr, align 8
  %36 = alloca ptr, align 8
  %37 = alloca ptr, align 8
  %38 = alloca ptr, align 8
  %39 = alloca i64, align 8
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i64, align 8
  %44 = alloca ptr, align 8
  %45 = alloca i32, align 4
  store ptr %0, ptr %38, align 8
  call void @llvm.dbg.declare(metadata ptr %38, metadata !2137, metadata !DIExpression()), !dbg !2138
  call void @llvm.dbg.declare(metadata ptr %39, metadata !2139, metadata !DIExpression()), !dbg !2140
  %46 = load ptr, ptr %38, align 8, !dbg !2141
  %47 = ptrtoint ptr %46 to i64, !dbg !2142
  store i64 %47, ptr %39, align 8, !dbg !2140
  call void @llvm.x86.sse.stmxcsr(ptr %40), !dbg !2143
  %48 = load i32, ptr %40, align 4, !dbg !2143
  %49 = or i32 %48, 32768, !dbg !2144
  %50 = or i32 %49, 64, !dbg !2145
  store i32 %50, ptr %41, align 4, !dbg !2146
  call void @llvm.x86.sse.ldmxcsr(ptr %41), !dbg !2146
  %51 = load ptr, ptr @_ZN22MultiThreadedTaskQueue11m_schedulerE, align 8, !dbg !2147
  %52 = load i64, ptr %39, align 8, !dbg !2148
  %53 = getelementptr inbounds %class.MultiThreadedScheduler, ptr %51, i64 %52, !dbg !2147
  store ptr %53, ptr %24, align 8
  call void @llvm.dbg.declare(metadata ptr %24, metadata !2149, metadata !DIExpression()), !dbg !2151
  store i8 0, ptr %25, align 1
  call void @llvm.dbg.declare(metadata ptr %25, metadata !2153, metadata !DIExpression()), !dbg !2154
  store i32 1, ptr %26, align 4
  call void @llvm.dbg.declare(metadata ptr %26, metadata !2155, metadata !DIExpression()), !dbg !2156
  %54 = load ptr, ptr %24, align 8
  call void @llvm.dbg.declare(metadata ptr %27, metadata !2157, metadata !DIExpression()), !dbg !2158
  %55 = load i8, ptr %25, align 1, !dbg !2159
  %56 = trunc i8 %55 to i1, !dbg !2159
  %57 = zext i1 %56 to i32, !dbg !2159
  %58 = icmp eq i32 %57, 0, !dbg !2161
  br i1 %58, label %59, label %62, !dbg !2162

59:                                               ; preds = %1
  store ptr %54, ptr %23, align 8
  call void @llvm.dbg.declare(metadata ptr %23, metadata !1609, metadata !DIExpression()), !dbg !2163
  %60 = load ptr, ptr %23, align 8
  %61 = call i32 @pthread_mutex_lock(ptr noundef %60) #3, !dbg !2165
  store i32 %61, ptr %27, align 4, !dbg !2166
  br label %62, !dbg !2167

62:                                               ; preds = %1, %59
  %63 = load i32, ptr %26, align 4, !dbg !2168
  %64 = getelementptr inbounds %class.MultiThreadedScheduler, ptr %54, i32 0, i32 1, !dbg !2169
  store i32 %63, ptr %64, align 8, !dbg !2170
  store ptr %54, ptr %21, align 8
  call void @llvm.dbg.declare(metadata ptr %21, metadata !1987, metadata !DIExpression()), !dbg !2171
  %65 = load ptr, ptr %21, align 8
  %66 = getelementptr inbounds %class.MultiThreadedSyncPrimitive, ptr %65, i32 0, i32 1, !dbg !2173
  %67 = call i32 @pthread_cond_wait(ptr noundef %66, ptr noundef %65), !dbg !2174
  store i32 %67, ptr %27, align 4, !dbg !2175
  store ptr %54, ptr %22, align 8
  call void @llvm.dbg.declare(metadata ptr %22, metadata !1650, metadata !DIExpression()), !dbg !2176
  %68 = load ptr, ptr %22, align 8
  %69 = call i32 @pthread_mutex_unlock(ptr noundef %68) #3, !dbg !2178
  store i32 %69, ptr %27, align 4, !dbg !2179
  call void @llvm.dbg.declare(metadata ptr %42, metadata !2180, metadata !DIExpression()), !dbg !2181
  call void @llvm.dbg.declare(metadata ptr %43, metadata !2182, metadata !DIExpression()), !dbg !2183
  store i64 -1, ptr %43, align 8, !dbg !2183
  br label %70, !dbg !2184

70:                                               ; preds = %216, %62
  store ptr @_ZN22MultiThreadedTaskQueue8m_serverE, ptr %20, align 8
  call void @llvm.dbg.declare(metadata ptr %20, metadata !2185, metadata !DIExpression()), !dbg !2188
  %71 = load ptr, ptr %20, align 8
  %72 = getelementptr inbounds %class.MultiThreadedTaskQueue, ptr %71, i32 0, i32 3, !dbg !2190
  %73 = load i32, ptr %72, align 8, !dbg !2190
  %74 = icmp eq i32 %73, -1, !dbg !2191
  %75 = xor i1 %74, true, !dbg !2192
  br i1 %75, label %76, label %218, !dbg !2184

76:                                               ; preds = %70
  call void @llvm.dbg.declare(metadata ptr %44, metadata !2193, metadata !DIExpression()), !dbg !2195
  %77 = load ptr, ptr @_ZN22MultiThreadedTaskQueue8m_clientE, align 8, !dbg !2196
  %78 = load i64, ptr %39, align 8, !dbg !2197
  %79 = getelementptr inbounds ptr, ptr %77, i64 %78, !dbg !2196
  %80 = load ptr, ptr %79, align 8, !dbg !2196
  store ptr %80, ptr %44, align 8, !dbg !2195
  call void @llvm.dbg.declare(metadata ptr %45, metadata !2198, metadata !DIExpression()), !dbg !2199
  store i32 0, ptr %45, align 4, !dbg !2199
  %81 = load ptr, ptr %44, align 8, !dbg !2200
  %82 = icmp ne ptr %81, null, !dbg !2200
  br i1 %82, label %83, label %84, !dbg !2200

83:                                               ; preds = %76
  br label %86, !dbg !2200

84:                                               ; preds = %76
  call void @__assert_fail(ptr noundef @.str.8, ptr noundef @.str.3, i32 noundef 183, ptr noundef @__PRETTY_FUNCTION__._ZN28MultiThreadedTaskQueueServer10threadFuncEPv) #15, !dbg !2200
  unreachable, !dbg !2200

85:                                               ; No predecessors!
  br label %86, !dbg !2200

86:                                               ; preds = %85, %83
  %87 = load i64, ptr %43, align 8, !dbg !2201
  %88 = load ptr, ptr %44, align 8, !dbg !2203
  %89 = load ptr, ptr %88, align 8, !dbg !2204
  %90 = getelementptr inbounds ptr, ptr %89, i64 1, !dbg !2204
  %91 = load ptr, ptr %90, align 8, !dbg !2204
  %92 = call noundef i64 %91(ptr noundef nonnull align 8 dereferenceable(20) %88), !dbg !2204
  %93 = icmp ne i64 %87, %92, !dbg !2205
  br i1 %93, label %94, label %119, !dbg !2206

94:                                               ; preds = %86
  %95 = load ptr, ptr %44, align 8, !dbg !2207
  %96 = load ptr, ptr %95, align 8, !dbg !2209
  %97 = getelementptr inbounds ptr, ptr %96, i64 1, !dbg !2209
  %98 = load ptr, ptr %97, align 8, !dbg !2209
  %99 = call noundef i64 %98(ptr noundef nonnull align 8 dereferenceable(20) %95), !dbg !2209
  store i64 %99, ptr %43, align 8, !dbg !2210
  store ptr getelementptr inbounds (i8, ptr @_ZN22MultiThreadedTaskQueue8m_serverE, i64 24), ptr %37, align 8
  call void @llvm.dbg.declare(metadata ptr %37, metadata !1609, metadata !DIExpression()), !dbg !2211
  %100 = load ptr, ptr %37, align 8
  %101 = call i32 @pthread_mutex_lock(ptr noundef %100) #3, !dbg !2213
  %102 = load ptr, ptr %44, align 8, !dbg !2214
  %103 = getelementptr inbounds %class.MultiThreadedTaskQueue, ptr %102, i32 0, i32 1, !dbg !2216
  %104 = load volatile i32, ptr %103, align 8, !dbg !2216
  %105 = load ptr, ptr %44, align 8, !dbg !2217
  %106 = getelementptr inbounds %class.MultiThreadedTaskQueue, ptr %105, i32 0, i32 3, !dbg !2218
  %107 = load i32, ptr %106, align 8, !dbg !2218
  %108 = icmp sge i32 %104, %107, !dbg !2219
  br i1 %108, label %109, label %112, !dbg !2220

109:                                              ; preds = %94
  store ptr getelementptr inbounds (i8, ptr @_ZN22MultiThreadedTaskQueue8m_serverE, i64 24), ptr %35, align 8
  call void @llvm.dbg.declare(metadata ptr %35, metadata !1650, metadata !DIExpression()), !dbg !2221
  %110 = load ptr, ptr %35, align 8
  %111 = call i32 @pthread_mutex_unlock(ptr noundef %110) #3, !dbg !2224
  br label %132, !dbg !2225

112:                                              ; preds = %94
  %113 = load ptr, ptr %44, align 8, !dbg !2226
  %114 = getelementptr inbounds %class.MultiThreadedTaskQueue, ptr %113, i32 0, i32 1, !dbg !2227
  %115 = load volatile i32, ptr %114, align 8, !dbg !2228
  %116 = add nsw i32 %115, 1, !dbg !2228
  store volatile i32 %116, ptr %114, align 8, !dbg !2228
  store i32 %115, ptr %42, align 4, !dbg !2229
  store ptr getelementptr inbounds (i8, ptr @_ZN22MultiThreadedTaskQueue8m_serverE, i64 24), ptr %36, align 8
  call void @llvm.dbg.declare(metadata ptr %36, metadata !1650, metadata !DIExpression()), !dbg !2230
  %117 = load ptr, ptr %36, align 8
  %118 = call i32 @pthread_mutex_unlock(ptr noundef %117) #3, !dbg !2232
  br label %119, !dbg !2233

119:                                              ; preds = %112, %86
  %120 = load ptr, ptr %44, align 8, !dbg !2234
  %121 = load i32, ptr %42, align 4, !dbg !2235
  %122 = load i64, ptr %39, align 8, !dbg !2236
  %123 = trunc i64 %122 to i32, !dbg !2236
  %124 = load ptr, ptr %120, align 8, !dbg !2237
  %125 = getelementptr inbounds ptr, ptr %124, i64 0, !dbg !2237
  %126 = load ptr, ptr %125, align 8, !dbg !2237
  %127 = call noundef i32 %126(ptr noundef nonnull align 8 dereferenceable(20) %120, i32 noundef %121, i32 noundef %123), !dbg !2237
  store i32 %127, ptr %45, align 4, !dbg !2238
  %128 = load i32, ptr %45, align 4, !dbg !2239
  %129 = icmp eq i32 %128, 0, !dbg !2241
  br i1 %129, label %130, label %131, !dbg !2242

130:                                              ; preds = %119
  br label %218, !dbg !2243

131:                                              ; preds = %119
  br label %132, !dbg !2244

132:                                              ; preds = %131, %109
  call void @llvm.dbg.label(metadata !2245), !dbg !2246
  %133 = load i64, ptr %39, align 8, !dbg !2247
  %134 = trunc i64 %133 to i32, !dbg !2247
  store i32 %134, ptr %15, align 4
  call void @llvm.dbg.declare(metadata ptr %15, metadata !2248, metadata !DIExpression()), !dbg !2250
  call void @llvm.dbg.declare(metadata ptr %16, metadata !2252, metadata !DIExpression()), !dbg !2253
  %135 = load ptr, ptr @_ZN22MultiThreadedTaskQueue8m_clientE, align 8, !dbg !2254
  %136 = load i32, ptr %15, align 4, !dbg !2255
  %137 = sext i32 %136 to i64, !dbg !2254
  %138 = getelementptr inbounds ptr, ptr %135, i64 %137, !dbg !2254
  %139 = load ptr, ptr %138, align 8, !dbg !2254
  store ptr %139, ptr %16, align 8, !dbg !2253
  %140 = load ptr, ptr @_ZN22MultiThreadedTaskQueue8m_clientE, align 8, !dbg !2256
  %141 = load i32, ptr %15, align 4, !dbg !2256
  %142 = sext i32 %141 to i64, !dbg !2256
  %143 = getelementptr inbounds ptr, ptr %140, i64 %142, !dbg !2256
  %144 = load ptr, ptr %143, align 8, !dbg !2256
  %145 = icmp ne ptr %144, null, !dbg !2256
  br i1 %145, label %146, label %164, !dbg !2256

146:                                              ; preds = %132
  %147 = load ptr, ptr @_ZN22MultiThreadedTaskQueue8m_clientE, align 8, !dbg !2257
  %148 = load i32, ptr %15, align 4, !dbg !2258
  %149 = sext i32 %148 to i64, !dbg !2257
  %150 = getelementptr inbounds ptr, ptr %147, i64 %149, !dbg !2257
  store ptr null, ptr %150, align 8, !dbg !2259
  call void @llvm.dbg.declare(metadata ptr %17, metadata !2260, metadata !DIExpression()), !dbg !2261
  store ptr getelementptr inbounds (i8, ptr @_ZN22MultiThreadedTaskQueue8m_serverE, i64 24), ptr %13, align 8
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1609, metadata !DIExpression()), !dbg !2262
  %151 = load ptr, ptr %13, align 8
  %152 = call i32 @pthread_mutex_lock(ptr noundef %151) #3, !dbg !2264
  store i32 %152, ptr %17, align 4, !dbg !2261
  call void @llvm.dbg.declare(metadata ptr %18, metadata !2265, metadata !DIExpression()), !dbg !2266
  store i32 -1, ptr %18, align 4, !dbg !2266
  call void @llvm.dbg.declare(metadata ptr %19, metadata !2267, metadata !DIExpression()), !dbg !2268
  %153 = load ptr, ptr %16, align 8, !dbg !2269
  %154 = getelementptr inbounds %class.MultiThreadedTaskQueue, ptr %153, i32 0, i32 2, !dbg !2270
  %155 = load volatile i32, ptr %154, align 4, !dbg !2271
  %156 = add nsw i32 %155, 1, !dbg !2271
  store volatile i32 %156, ptr %154, align 4, !dbg !2271
  %157 = load ptr, ptr %16, align 8, !dbg !2272
  %158 = getelementptr inbounds %class.MultiThreadedTaskQueue, ptr %157, i32 0, i32 3, !dbg !2273
  %159 = load i32, ptr %158, align 8, !dbg !2273
  %160 = icmp eq i32 %156, %159, !dbg !2274
  %161 = zext i1 %160 to i8, !dbg !2268
  store i8 %161, ptr %19, align 1, !dbg !2268
  %162 = load i32, ptr %15, align 4, !dbg !2275
  %163 = call noundef zeroext i1 @_ZN28MultiThreadedTaskQueueServer8scheduleEi(ptr noundef nonnull align 8 dereferenceable(168) @_ZN22MultiThreadedTaskQueue8m_serverE, i32 noundef %162), !dbg !2277
  br i1 %163, label %165, label %180, !dbg !2278

164:                                              ; preds = %132
  call void @__assert_fail(ptr noundef @.str.9, ptr noundef @.str.3, i32 noundef 212, ptr noundef @__PRETTY_FUNCTION__._ZN28MultiThreadedTaskQueueServer16deactivateThreadEi) #15, !dbg !2256
  unreachable, !dbg !2256

165:                                              ; preds = %146
  %166 = load i8, ptr %19, align 1, !dbg !2279
  %167 = trunc i8 %166 to i1, !dbg !2279
  br i1 %167, label %168, label %172, !dbg !2282

168:                                              ; preds = %165
  store ptr getelementptr inbounds (i8, ptr @_ZN22MultiThreadedTaskQueue8m_serverE, i64 24), ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1638, metadata !DIExpression()), !dbg !2283
  %169 = load ptr, ptr %9, align 8
  %170 = getelementptr inbounds %class.MultiThreadedSyncPrimitive, ptr %169, i32 0, i32 1, !dbg !2285
  %171 = call i32 @pthread_cond_signal(ptr noundef %170) #3, !dbg !2286
  br label %177, !dbg !2287

172:                                              ; preds = %165
  %173 = load ptr, ptr %16, align 8, !dbg !2288
  %174 = getelementptr inbounds %class.MultiThreadedTaskQueue, ptr %173, i32 0, i32 1, !dbg !2289
  %175 = load volatile i32, ptr %174, align 8, !dbg !2290
  %176 = add nsw i32 %175, 1, !dbg !2290
  store volatile i32 %176, ptr %174, align 8, !dbg !2290
  store i32 %175, ptr %18, align 4, !dbg !2291
  br label %177

177:                                              ; preds = %172, %168
  store ptr getelementptr inbounds (i8, ptr @_ZN22MultiThreadedTaskQueue8m_serverE, i64 24), ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1650, metadata !DIExpression()), !dbg !2292
  %178 = load ptr, ptr %11, align 8
  %179 = call i32 @pthread_mutex_unlock(ptr noundef %178) #3, !dbg !2294
  store i32 %179, ptr %17, align 4, !dbg !2295
  br label %216, !dbg !2296

180:                                              ; preds = %146
  %181 = load i8, ptr %19, align 1, !dbg !2297
  %182 = trunc i8 %181 to i1, !dbg !2297
  br i1 %182, label %183, label %187, !dbg !2300

183:                                              ; preds = %180
  store ptr getelementptr inbounds (i8, ptr @_ZN22MultiThreadedTaskQueue8m_serverE, i64 24), ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1638, metadata !DIExpression()), !dbg !2301
  %184 = load ptr, ptr %10, align 8
  %185 = getelementptr inbounds %class.MultiThreadedSyncPrimitive, ptr %184, i32 0, i32 1, !dbg !2303
  %186 = call i32 @pthread_cond_signal(ptr noundef %185) #3, !dbg !2304
  br label %187, !dbg !2305

187:                                              ; preds = %183, %180
  %188 = load ptr, ptr @_ZN22MultiThreadedTaskQueue11m_schedulerE, align 8, !dbg !2306
  %189 = load i32, ptr %15, align 4, !dbg !2307
  %190 = sext i32 %189 to i64, !dbg !2306
  %191 = getelementptr inbounds %class.MultiThreadedScheduler, ptr %188, i64 %190, !dbg !2306
  store ptr %191, ptr %14, align 8
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1609, metadata !DIExpression()), !dbg !2308
  %192 = load ptr, ptr %14, align 8
  %193 = call i32 @pthread_mutex_lock(ptr noundef %192) #3, !dbg !2310
  store ptr getelementptr inbounds (i8, ptr @_ZN22MultiThreadedTaskQueue8m_serverE, i64 24), ptr %12, align 8
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1650, metadata !DIExpression()), !dbg !2311
  %194 = load ptr, ptr %12, align 8
  %195 = call i32 @pthread_mutex_unlock(ptr noundef %194) #3, !dbg !2313
  store i32 %195, ptr %17, align 4, !dbg !2314
  %196 = load ptr, ptr @_ZN22MultiThreadedTaskQueue11m_schedulerE, align 8, !dbg !2315
  %197 = load i32, ptr %15, align 4, !dbg !2316
  %198 = sext i32 %197 to i64, !dbg !2315
  %199 = getelementptr inbounds %class.MultiThreadedScheduler, ptr %196, i64 %198, !dbg !2315
  store ptr %199, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2149, metadata !DIExpression()), !dbg !2317
  store i8 1, ptr %6, align 1
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2153, metadata !DIExpression()), !dbg !2319
  store i32 1, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2155, metadata !DIExpression()), !dbg !2320
  %200 = load ptr, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2157, metadata !DIExpression()), !dbg !2321
  %201 = load i8, ptr %6, align 1, !dbg !2322
  %202 = trunc i8 %201 to i1, !dbg !2322
  %203 = zext i1 %202 to i32, !dbg !2322
  %204 = icmp eq i32 %203, 0, !dbg !2323
  br i1 %204, label %205, label %208, !dbg !2324

205:                                              ; preds = %187
  store ptr %200, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1609, metadata !DIExpression()), !dbg !2325
  %206 = load ptr, ptr %4, align 8
  %207 = call i32 @pthread_mutex_lock(ptr noundef %206) #3, !dbg !2327
  store i32 %207, ptr %8, align 4, !dbg !2328
  br label %208, !dbg !2329

208:                                              ; preds = %205, %187
  %209 = load i32, ptr %7, align 4, !dbg !2330
  %210 = getelementptr inbounds %class.MultiThreadedScheduler, ptr %200, i32 0, i32 1, !dbg !2331
  store i32 %209, ptr %210, align 8, !dbg !2332
  store ptr %200, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1987, metadata !DIExpression()), !dbg !2333
  %211 = load ptr, ptr %2, align 8
  %212 = getelementptr inbounds %class.MultiThreadedSyncPrimitive, ptr %211, i32 0, i32 1, !dbg !2335
  %213 = call i32 @pthread_cond_wait(ptr noundef %212, ptr noundef %211), !dbg !2336
  store i32 %213, ptr %8, align 4, !dbg !2337
  store ptr %200, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1650, metadata !DIExpression()), !dbg !2338
  %214 = load ptr, ptr %3, align 8
  %215 = call i32 @pthread_mutex_unlock(ptr noundef %214) #3, !dbg !2340
  store i32 %215, ptr %8, align 4, !dbg !2341
  br label %216

216:                                              ; preds = %177, %208
  %217 = load i32, ptr %18, align 4, !dbg !2342
  store i32 %217, ptr %42, align 4, !dbg !2343
  br label %70, !dbg !2184, !llvm.loop !2344

218:                                              ; preds = %130, %70
  %219 = load ptr, ptr @_ZN22MultiThreadedTaskQueue11m_schedulerE, align 8, !dbg !2346
  %220 = load i64, ptr %39, align 8, !dbg !2347
  %221 = getelementptr inbounds %class.MultiThreadedScheduler, ptr %219, i64 %220, !dbg !2346
  store ptr %221, ptr %31, align 8
  call void @llvm.dbg.declare(metadata ptr %31, metadata !2149, metadata !DIExpression()), !dbg !2348
  store i8 0, ptr %32, align 1
  call void @llvm.dbg.declare(metadata ptr %32, metadata !2153, metadata !DIExpression()), !dbg !2350
  store i32 -1, ptr %33, align 4
  call void @llvm.dbg.declare(metadata ptr %33, metadata !2155, metadata !DIExpression()), !dbg !2351
  %222 = load ptr, ptr %31, align 8
  call void @llvm.dbg.declare(metadata ptr %34, metadata !2157, metadata !DIExpression()), !dbg !2352
  %223 = load i8, ptr %32, align 1, !dbg !2353
  %224 = trunc i8 %223 to i1, !dbg !2353
  %225 = zext i1 %224 to i32, !dbg !2353
  %226 = icmp eq i32 %225, 0, !dbg !2354
  br i1 %226, label %227, label %230, !dbg !2355

227:                                              ; preds = %218
  store ptr %222, ptr %30, align 8
  call void @llvm.dbg.declare(metadata ptr %30, metadata !1609, metadata !DIExpression()), !dbg !2356
  %228 = load ptr, ptr %30, align 8
  %229 = call i32 @pthread_mutex_lock(ptr noundef %228) #3, !dbg !2358
  store i32 %229, ptr %34, align 4, !dbg !2359
  br label %230, !dbg !2360

230:                                              ; preds = %218, %227
  %231 = load i32, ptr %33, align 4, !dbg !2361
  %232 = getelementptr inbounds %class.MultiThreadedScheduler, ptr %222, i32 0, i32 1, !dbg !2362
  store i32 %231, ptr %232, align 8, !dbg !2363
  store ptr %222, ptr %28, align 8
  call void @llvm.dbg.declare(metadata ptr %28, metadata !1987, metadata !DIExpression()), !dbg !2364
  %233 = load ptr, ptr %28, align 8
  %234 = getelementptr inbounds %class.MultiThreadedSyncPrimitive, ptr %233, i32 0, i32 1, !dbg !2366
  %235 = call i32 @pthread_cond_wait(ptr noundef %234, ptr noundef %233), !dbg !2367
  store i32 %235, ptr %34, align 4, !dbg !2368
  store ptr %222, ptr %29, align 8
  call void @llvm.dbg.declare(metadata ptr %29, metadata !1650, metadata !DIExpression()), !dbg !2369
  %236 = load ptr, ptr %29, align 8
  %237 = call i32 @pthread_mutex_unlock(ptr noundef %236) #3, !dbg !2371
  store i32 %237, ptr %34, align 4, !dbg !2372
  ret ptr null, !dbg !2373
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #6

; Function Attrs: nounwind
declare i32 @sched_yield() #2

; Function Attrs: nounwind
declare i32 @pthread_cond_signal(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN26MultiThreadedSyncPrimitiveC2Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #8 comdat align 2 !dbg !2374 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2375, metadata !DIExpression()), !dbg !2376
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %class.MultiThreadedSyncPrimitive, ptr %3, i32 0, i32 0, !dbg !2377
  %5 = getelementptr inbounds %class.MultiThreadedSyncPrimitive, ptr %3, i32 0, i32 1, !dbg !2377
  %6 = getelementptr inbounds %class.MultiThreadedSyncPrimitive, ptr %3, i32 0, i32 0, !dbg !2378
  %7 = call i32 @pthread_mutex_init(ptr noundef %6, ptr noundef null) #3, !dbg !2380
  %8 = getelementptr inbounds %class.MultiThreadedSyncPrimitive, ptr %3, i32 0, i32 1, !dbg !2381
  %9 = call i32 @pthread_cond_init(ptr noundef %8, ptr noundef null) #3, !dbg !2382
  ret void, !dbg !2383
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare i32 @pthread_cond_init(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN26MultiThreadedSyncPrimitiveD2Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #8 comdat align 2 !dbg !2384 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2385, metadata !DIExpression()), !dbg !2386
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %class.MultiThreadedSyncPrimitive, ptr %3, i32 0, i32 0, !dbg !2387
  %5 = call i32 @pthread_mutex_destroy(ptr noundef %4) #3, !dbg !2389
  %6 = getelementptr inbounds %class.MultiThreadedSyncPrimitive, ptr %3, i32 0, i32 1, !dbg !2390
  %7 = call i32 @pthread_cond_destroy(ptr noundef %6) #3, !dbg !2391
  ret void, !dbg !2392
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_destroy(ptr noundef) #2

; Function Attrs: nounwind
declare i32 @pthread_cond_destroy(ptr noundef) #2

; Function Attrs: nounwind memory(argmem: write)
declare void @llvm.x86.sse.stmxcsr(ptr) #13

; Function Attrs: nounwind
declare void @llvm.x86.sse.ldmxcsr(ptr) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #5

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN28MultiThreadedTaskQueueServer8scheduleEi(ptr noundef nonnull align 8 dereferenceable(168) %0, i32 noundef %1) #4 comdat align 2 !dbg !2393 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i1, align 1
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store ptr %0, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2394, metadata !DIExpression()), !dbg !2395
  store i32 %1, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2396, metadata !DIExpression()), !dbg !2397
  %11 = load ptr, ptr %8, align 8
  %12 = load ptr, ptr @_ZN22MultiThreadedTaskQueue8m_clientE, align 8, !dbg !2398
  %13 = load i32, ptr %9, align 4, !dbg !2400
  %14 = sext i32 %13 to i64, !dbg !2398
  %15 = getelementptr inbounds ptr, ptr %12, i64 %14, !dbg !2398
  %16 = load ptr, ptr %15, align 8, !dbg !2398
  %17 = icmp eq ptr %16, null, !dbg !2401
  br i1 %17, label %18, label %78, !dbg !2402

18:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2403, metadata !DIExpression()), !dbg !2405
  store ptr %11, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2406, metadata !DIExpression()), !dbg !2408
  %19 = load ptr, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2410, metadata !DIExpression()), !dbg !2411
  %20 = getelementptr inbounds %class.MultiThreadedTaskQueue, ptr %19, i32 0, i32 2, !dbg !2412
  %21 = load volatile i32, ptr %20, align 4, !dbg !2412
  store i32 %21, ptr %5, align 4, !dbg !2411
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2413, metadata !DIExpression()), !dbg !2415
  store i32 0, ptr %6, align 4, !dbg !2415
  br label %22, !dbg !2416

22:                                               ; preds = %39, %18
  %23 = load i32, ptr %6, align 4, !dbg !2417
  %24 = icmp slt i32 %23, 4, !dbg !2419
  br i1 %24, label %25, label %42, !dbg !2420

25:                                               ; preds = %22
  %26 = getelementptr inbounds %class.MultiThreadedTaskQueueServer, ptr %19, i32 0, i32 3, !dbg !2421
  %27 = load i32, ptr %5, align 4, !dbg !2424
  %28 = sext i32 %27 to i64, !dbg !2421
  %29 = getelementptr inbounds [4 x ptr], ptr %26, i64 0, i64 %28, !dbg !2421
  %30 = load ptr, ptr %29, align 8, !dbg !2421
  %31 = icmp ne ptr %30, null, !dbg !2421
  br i1 %31, label %32, label %34, !dbg !2425

32:                                               ; preds = %25
  %33 = load i32, ptr %5, align 4, !dbg !2426
  store i32 %33, ptr %3, align 4, !dbg !2428
  br label %43, !dbg !2428

34:                                               ; preds = %25
  %35 = load i32, ptr %5, align 4, !dbg !2429
  %36 = add nsw i32 %35, 1, !dbg !2429
  store i32 %36, ptr %5, align 4, !dbg !2429
  %37 = icmp eq i32 %36, 4, !dbg !2431
  br i1 %37, label %38, label %39, !dbg !2432

38:                                               ; preds = %34
  store i32 0, ptr %5, align 4, !dbg !2433
  br label %39, !dbg !2434

39:                                               ; preds = %38, %34
  %40 = load i32, ptr %6, align 4, !dbg !2435
  %41 = add nsw i32 %40, 1, !dbg !2435
  store i32 %41, ptr %6, align 4, !dbg !2435
  br label %22, !dbg !2436, !llvm.loop !2437

42:                                               ; preds = %22
  store i32 -1, ptr %3, align 4, !dbg !2439
  br label %43, !dbg !2439

43:                                               ; preds = %32, %42
  %44 = load i32, ptr %3, align 4, !dbg !2440
  store i32 %44, ptr %10, align 4, !dbg !2405
  %45 = load i32, ptr %10, align 4, !dbg !2441
  %46 = icmp eq i32 %45, -1, !dbg !2443
  br i1 %46, label %47, label %48, !dbg !2444

47:                                               ; preds = %43
  store i1 false, ptr %7, align 1, !dbg !2445
  br label %79, !dbg !2445

48:                                               ; preds = %43
  %49 = getelementptr inbounds %class.MultiThreadedTaskQueueServer, ptr %11, i32 0, i32 3, !dbg !2447
  %50 = load i32, ptr %10, align 4, !dbg !2448
  %51 = sext i32 %50 to i64, !dbg !2447
  %52 = getelementptr inbounds [4 x ptr], ptr %49, i64 0, i64 %51, !dbg !2447
  %53 = load ptr, ptr %52, align 8, !dbg !2447
  %54 = load ptr, ptr @_ZN22MultiThreadedTaskQueue8m_clientE, align 8, !dbg !2449
  %55 = load i32, ptr %9, align 4, !dbg !2450
  %56 = sext i32 %55 to i64, !dbg !2449
  %57 = getelementptr inbounds ptr, ptr %54, i64 %56, !dbg !2449
  store ptr %53, ptr %57, align 8, !dbg !2451
  %58 = getelementptr inbounds %class.MultiThreadedTaskQueueServer, ptr %11, i32 0, i32 4, !dbg !2452
  %59 = load i32, ptr %10, align 4, !dbg !2454
  %60 = sext i32 %59 to i64, !dbg !2452
  %61 = getelementptr inbounds [4 x i32], ptr %58, i64 0, i64 %60, !dbg !2452
  %62 = load i32, ptr %61, align 4, !dbg !2455
  %63 = add nsw i32 %62, 1, !dbg !2455
  store i32 %63, ptr %61, align 4, !dbg !2455
  %64 = getelementptr inbounds %class.MultiThreadedTaskQueueServer, ptr %11, i32 0, i32 3, !dbg !2456
  %65 = load i32, ptr %10, align 4, !dbg !2457
  %66 = sext i32 %65 to i64, !dbg !2456
  %67 = getelementptr inbounds [4 x ptr], ptr %64, i64 0, i64 %66, !dbg !2456
  %68 = load ptr, ptr %67, align 8, !dbg !2456
  %69 = getelementptr inbounds %class.MultiThreadedTaskQueue, ptr %68, i32 0, i32 3, !dbg !2458
  %70 = load i32, ptr %69, align 8, !dbg !2458
  %71 = icmp eq i32 %63, %70, !dbg !2459
  br i1 %71, label %72, label %77, !dbg !2460

72:                                               ; preds = %48
  %73 = getelementptr inbounds %class.MultiThreadedTaskQueueServer, ptr %11, i32 0, i32 3, !dbg !2461
  %74 = load i32, ptr %10, align 4, !dbg !2462
  %75 = sext i32 %74 to i64, !dbg !2461
  %76 = getelementptr inbounds [4 x ptr], ptr %73, i64 0, i64 %75, !dbg !2461
  store ptr null, ptr %76, align 8, !dbg !2463
  br label %77, !dbg !2461

77:                                               ; preds = %72, %48
  br label %78, !dbg !2464

78:                                               ; preds = %77, %2
  store i1 true, ptr %7, align 1, !dbg !2465
  br label %79, !dbg !2465

79:                                               ; preds = %78, %47
  %80 = load i1, ptr %7, align 1, !dbg !2466
  ret i1 %80, !dbg !2466
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) #2

declare i32 @pthread_cond_wait(ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN22MultiThreadedTaskQueueC2Ev(ptr noundef nonnull align 8 dereferenceable(20) %0) unnamed_addr #8 comdat align 2 !dbg !2467 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2468, metadata !DIExpression()), !dbg !2469
  %3 = load ptr, ptr %2, align 8
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTV22MultiThreadedTaskQueue, i32 0, inrange i32 0, i32 2), ptr %3, align 8, !dbg !2470
  %4 = getelementptr inbounds %class.MultiThreadedTaskQueue, ptr %3, i32 0, i32 3, !dbg !2471
  store i32 0, ptr %4, align 8, !dbg !2471
  ret void, !dbg !2472
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPKv(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN22MultiThreadedTaskQueueD2Ev(ptr noundef nonnull align 8 dereferenceable(20) %0) unnamed_addr #8 comdat align 2 !dbg !2473 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2474, metadata !DIExpression()), !dbg !2475
  %3 = load ptr, ptr %2, align 8
  ret void, !dbg !2476
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) #14 comdat {
  %2 = call ptr @__cxa_begin_catch(ptr %0) #3
  call void @_ZSt9terminatev() #15
  unreachable
}

declare ptr @__cxa_begin_catch(ptr)

declare void @_ZSt9terminatev()

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_RTThread.cxx() #0 section ".text.startup" !dbg !2477 {
  call void @__cxx_global_var_init(), !dbg !2479
  call void @__cxx_global_var_init.4(), !dbg !2479
  ret void
}

attributes #0 = { noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind memory(argmem: write) }
attributes #14 = { noinline noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn nounwind }
attributes #16 = { builtin nounwind }
attributes #17 = { builtin allocsize(0) }

!llvm.dbg.cu = !{!22}
!llvm.module.flags = !{!1565, !1566, !1567, !1568, !1569, !1570, !1571}
!llvm.ident = !{!1572}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__ioinit", linkageName: "_ZStL8__ioinit", scope: !2, file: !3, line: 74, type: !4, isLocal: true, isDefinition: true)
!2 = !DINamespace(name: "std", scope: null)
!3 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/iostream", directory: "")
!4 = !DICompositeType(tag: DW_TAG_class_type, name: "Init", scope: !6, file: !5, line: 626, size: 8, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt8ios_base4InitE")
!5 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/ios_base.h", directory: "")
!6 = !DICompositeType(tag: DW_TAG_class_type, name: "ios_base", scope: !2, file: !5, line: 228, size: 1728, flags: DIFlagFwdDecl | DIFlagNonTrivial)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !9, line: 330, type: !10, isLocal: true, isDefinition: true)
!9 = !DIFile(filename: "RTTL/common/RTThread.cxx", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src", checksumkind: CSK_MD5, checksum: "bb436565c3ec8daa26e68f264cc23f36")
!10 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 64, elements: !13)
!11 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!13 = !{!14}
!14 = !DISubrange(count: 8)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(scope: null, file: !9, line: 330, type: !17, isLocal: true, isDefinition: true)
!17 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 24, elements: !18)
!18 = !{!19}
!19 = !DISubrange(count: 3)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(name: "m_server", linkageName: "_ZN22MultiThreadedTaskQueue8m_serverE", scope: !22, file: !9, line: 373, type: !40, isLocal: false, isDefinition: true, declaration: !39)
!22 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !23, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !24, retainedTypes: !226, globals: !227, imports: !290, splitDebugInlining: false, nameTableKind: None)
!23 = !DIFile(filename: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src/RTTL/common/RTThread.cxx", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src/build/RTTL", checksumkind: CSK_MD5, checksum: "bb436565c3ec8daa26e68f264cc23f36")
!24 = !{!25}
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !27, file: !26, line: 181, baseType: !57, size: 32, elements: !223, identifier: "_ZTSN22MultiThreadedTaskQueueUt_E")
!26 = !DIFile(filename: "RTTL/common/RTThread.hxx", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src", checksumkind: CSK_MD5, checksum: "d1bed5bd1b27c51295d2eb569f6db3b2")
!27 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "MultiThreadedTaskQueue", file: !26, line: 175, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !28, vtableHolder: !27)
!28 = !{!29, !35, !37, !38, !39, !176, !178, !198, !202, !205, !208, !209, !214, !215, !216, !217, !218, !219, !220}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$MultiThreadedTaskQueue", scope: !26, file: !26, baseType: !30, size: 64, flags: DIFlagArtificial)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "__vtbl_ptr_type", baseType: !32, size: 64)
!32 = !DISubroutineType(types: !33)
!33 = !{!34}
!34 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "m_assigned_jobs", scope: !27, file: !26, line: 229, baseType: !36, size: 32, offset: 64, flags: DIFlagProtected)
!36 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !34)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "m_finished_jobs", scope: !27, file: !26, line: 230, baseType: !36, size: 32, offset: 96, flags: DIFlagProtected)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "m_threads", scope: !27, file: !26, line: 231, baseType: !34, size: 32, offset: 128, flags: DIFlagProtected)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "m_server", scope: !27, file: !26, line: 233, baseType: !40, flags: DIFlagProtected | DIFlagStaticMember)
!40 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "MultiThreadedTaskQueueServer", file: !9, line: 42, size: 1344, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !41, vtableHolder: !27, identifier: "_ZTS28MultiThreadedTaskQueueServer")
!41 = !{!42, !43, !125, !129, !131, !136, !138, !142, !145, !149, !152, !153, !154, !159, !160, !164, !167, !170, !173}
!42 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !40, baseType: !27, flags: DIFlagPublic, extraData: i32 0)
!43 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !40, baseType: !44, offset: 192, flags: DIFlagPublic, extraData: i32 0)
!44 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "MultiThreadedSyncPrimitive", file: !26, line: 241, size: 704, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !45, identifier: "_ZTS26MultiThreadedSyncPrimitive")
!45 = !{!46, !78, !112, !116, !117, !120, !121, !122, !123, !124}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "m_mutex", scope: !44, file: !26, line: 271, baseType: !47, size: 320, flags: DIFlagProtected)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !48, line: 72, baseType: !49)
!48 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!49 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !48, line: 67, size: 320, flags: DIFlagTypePassByValue, elements: !50, identifier: "_ZTS15pthread_mutex_t")
!50 = !{!51, !72, !76}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !49, file: !48, line: 69, baseType: !52, size: 320)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !53, line: 22, size: 320, flags: DIFlagTypePassByValue, elements: !54, identifier: "_ZTS17__pthread_mutex_s")
!53 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "584baedd80e6041b81caae7f496091c0")
!54 = !{!55, !56, !58, !59, !60, !61, !63, !64}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !52, file: !53, line: 24, baseType: !34, size: 32)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !52, file: !53, line: 25, baseType: !57, size: 32, offset: 32)
!57 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !52, file: !53, line: 26, baseType: !34, size: 32, offset: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !52, file: !53, line: 28, baseType: !57, size: 32, offset: 96)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !52, file: !53, line: 32, baseType: !34, size: 32, offset: 128)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !52, file: !53, line: 34, baseType: !62, size: 16, offset: 160)
!62 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !52, file: !53, line: 35, baseType: !62, size: 16, offset: 176)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !52, file: !53, line: 36, baseType: !65, size: 128, offset: 192)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !66, line: 55, baseType: !67)
!66 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "04c81e86d34dad9c99ad006d32e47a0d")
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !66, line: 51, size: 128, flags: DIFlagTypePassByValue, elements: !68, identifier: "_ZTS23__pthread_internal_list")
!68 = !{!69, !71}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !67, file: !66, line: 53, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !67, file: !66, line: 54, baseType: !70, size: 64, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !49, file: !48, line: 70, baseType: !73, size: 320)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 320, elements: !74)
!74 = !{!75}
!75 = !DISubrange(count: 40)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !49, file: !48, line: 71, baseType: !77, size: 64)
!77 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "m_cond", scope: !44, file: !26, line: 272, baseType: !79, size: 384, offset: 320, flags: DIFlagProtected)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_cond_t", file: !48, line: 80, baseType: !80)
!80 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !48, line: 75, size: 384, flags: DIFlagTypePassByValue, elements: !81, identifier: "_ZTS14pthread_cond_t")
!81 = !{!82, !106, !110}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !80, file: !48, line: 77, baseType: !83, size: 384)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_cond_s", file: !66, line: 94, size: 384, flags: DIFlagTypePassByValue, elements: !84, identifier: "_ZTS16__pthread_cond_s")
!84 = !{!85, !97, !98, !102, !103, !104, !105}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "__wseq", scope: !83, file: !66, line: 96, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "__atomic_wide_counter", file: !87, line: 33, baseType: !88)
!87 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/atomic_wide_counter.h", directory: "", checksumkind: CSK_MD5, checksum: "2708e6e61e266abad2d765ccef838dbe")
!88 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !87, line: 25, size: 64, flags: DIFlagTypePassByValue, elements: !89, identifier: "_ZTS21__atomic_wide_counter")
!89 = !{!90, !92}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "__value64", scope: !88, file: !87, line: 27, baseType: !91, size: 64)
!91 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "__value32", scope: !88, file: !87, line: 32, baseType: !93, size: 64)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !88, file: !87, line: 28, size: 64, flags: DIFlagTypePassByValue, elements: !94, identifier: "_ZTSN21__atomic_wide_counterUt_E")
!94 = !{!95, !96}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "__low", scope: !93, file: !87, line: 30, baseType: !57, size: 32)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "__high", scope: !93, file: !87, line: 31, baseType: !57, size: 32, offset: 32)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_start", scope: !83, file: !66, line: 97, baseType: !86, size: 64, offset: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "__g_refs", scope: !83, file: !66, line: 98, baseType: !99, size: 64, offset: 128)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 64, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 2)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "__g_size", scope: !83, file: !66, line: 99, baseType: !99, size: 64, offset: 192)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_orig_size", scope: !83, file: !66, line: 100, baseType: !57, size: 32, offset: 256)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "__wrefs", scope: !83, file: !66, line: 101, baseType: !57, size: 32, offset: 288)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "__g_signals", scope: !83, file: !66, line: 102, baseType: !99, size: 64, offset: 320)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !80, file: !48, line: 78, baseType: !107, size: 384)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 384, elements: !108)
!108 = !{!109}
!109 = !DISubrange(count: 48)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !80, file: !48, line: 79, baseType: !111, size: 64)
!111 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!112 = !DISubprogram(name: "MultiThreadedSyncPrimitive", scope: !44, file: !26, line: 244, type: !113, scopeLine: 244, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!113 = !DISubroutineType(types: !114)
!114 = !{null, !115}
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!116 = !DISubprogram(name: "~MultiThreadedSyncPrimitive", scope: !44, file: !26, line: 248, type: !113, scopeLine: 248, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!117 = !DISubprogram(name: "lock", linkageName: "_ZN26MultiThreadedSyncPrimitive4lockEv", scope: !44, file: !26, line: 255, type: !118, scopeLine: 255, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!118 = !DISubroutineType(types: !119)
!119 = !{!34, !115}
!120 = !DISubprogram(name: "trylock", linkageName: "_ZN26MultiThreadedSyncPrimitive7trylockEv", scope: !44, file: !26, line: 256, type: !118, scopeLine: 256, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!121 = !DISubprogram(name: "unlock", linkageName: "_ZN26MultiThreadedSyncPrimitive6unlockEv", scope: !44, file: !26, line: 257, type: !118, scopeLine: 257, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!122 = !DISubprogram(name: "suspend", linkageName: "_ZN26MultiThreadedSyncPrimitive7suspendEv", scope: !44, file: !26, line: 258, type: !118, scopeLine: 258, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!123 = !DISubprogram(name: "resume", linkageName: "_ZN26MultiThreadedSyncPrimitive6resumeEv", scope: !44, file: !26, line: 259, type: !113, scopeLine: 259, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!124 = !DISubprogram(name: "resumeAll", linkageName: "_ZN26MultiThreadedSyncPrimitive9resumeAllEv", scope: !44, file: !26, line: 260, type: !113, scopeLine: 260, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "m_thread", scope: !40, file: !9, line: 321, baseType: !126, size: 64, offset: 896)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !48, line: 27, baseType: !128)
!128 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "queuesize", scope: !40, file: !9, line: 322, baseType: !130, flags: DIFlagStaticMember, extraData: i32 4)
!130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "m_waitingClients", scope: !40, file: !9, line: 323, baseType: !132, size: 256, offset: 960)
!132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 256, elements: !134)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!134 = !{!135}
!135 = !DISubrange(count: 4)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "m_scheduledJobs", scope: !40, file: !9, line: 324, baseType: !137, size: 128, offset: 1216)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 128, elements: !134)
!138 = !DISubprogram(name: "MultiThreadedTaskQueueServer", scope: !40, file: !9, line: 47, type: !139, scopeLine: 47, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!139 = !DISubroutineType(types: !140)
!140 = !{null, !141, !34}
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!142 = !DISubprogram(name: "~MultiThreadedTaskQueueServer", scope: !40, file: !9, line: 57, type: !143, scopeLine: 57, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!143 = !DISubroutineType(types: !144)
!144 = !{null, !141}
!145 = !DISubprogram(name: "clean", linkageName: "_ZN28MultiThreadedTaskQueueServer5cleanEb", scope: !40, file: !9, line: 61, type: !146, scopeLine: 61, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!146 = !DISubroutineType(types: !147)
!147 = !{null, !141, !148}
!148 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!149 = !DISubprogram(name: "suspend", linkageName: "_ZN28MultiThreadedTaskQueueServer7suspendEi", scope: !40, file: !9, line: 106, type: !150, scopeLine: 106, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!150 = !DISubroutineType(types: !151)
!151 = !{null, !34}
!152 = !DISubprogram(name: "resume", linkageName: "_ZN28MultiThreadedTaskQueueServer6resumeEi", scope: !40, file: !9, line: 115, type: !150, scopeLine: 115, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!153 = !DISubprogram(name: "createThreads", linkageName: "_ZN28MultiThreadedTaskQueueServer13createThreadsEi", scope: !40, file: !9, line: 120, type: !139, scopeLine: 120, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!154 = !DISubprogram(name: "finished", linkageName: "_ZNK28MultiThreadedTaskQueueServer8finishedEv", scope: !40, file: !9, line: 150, type: !155, scopeLine: 150, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!155 = !DISubroutineType(types: !156)
!156 = !{!148, !157}
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!158 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!159 = !DISubprogram(name: "waitUntillAllThreadsAreSuspended", linkageName: "_ZN28MultiThreadedTaskQueueServer32waitUntillAllThreadsAreSuspendedEv", scope: !40, file: !9, line: 156, type: !143, scopeLine: 156, flags: DIFlagPrototyped, spFlags: 0)
!160 = !DISubprogram(name: "threadFunc", linkageName: "_ZN28MultiThreadedTaskQueueServer10threadFuncEPv", scope: !40, file: !9, line: 168, type: !161, scopeLine: 168, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!161 = !DISubroutineType(types: !162)
!162 = !{!163, !163}
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!164 = !DISubprogram(name: "deactivateThread", linkageName: "_ZN28MultiThreadedTaskQueueServer16deactivateThreadEi", scope: !40, file: !9, line: 208, type: !165, scopeLine: 208, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!165 = !DISubroutineType(types: !166)
!166 = !{!34, !130}
!167 = !DISubprogram(name: "getNextClientIndex", linkageName: "_ZN28MultiThreadedTaskQueueServer18getNextClientIndexEv", scope: !40, file: !9, line: 247, type: !168, scopeLine: 247, flags: DIFlagPrototyped, spFlags: 0)
!168 = !DISubroutineType(types: !169)
!169 = !{!34, !141}
!170 = !DISubprogram(name: "addClient", linkageName: "_ZN28MultiThreadedTaskQueueServer9addClientEP22MultiThreadedTaskQueue", scope: !40, file: !9, line: 260, type: !171, scopeLine: 260, flags: DIFlagPrototyped, spFlags: 0)
!171 = !DISubroutineType(types: !172)
!172 = !{null, !141, !133}
!173 = !DISubprogram(name: "schedule", linkageName: "_ZN28MultiThreadedTaskQueueServer8scheduleEi", scope: !40, file: !9, line: 302, type: !174, scopeLine: 302, flags: DIFlagPrototyped, spFlags: 0)
!174 = !DISubroutineType(types: !175)
!175 = !{!148, !141, !34}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "m_client", scope: !27, file: !26, line: 234, baseType: !177, flags: DIFlagProtected | DIFlagStaticMember)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "m_scheduler", scope: !27, file: !26, line: 235, baseType: !179, flags: DIFlagProtected | DIFlagStaticMember)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "MultiThreadedScheduler", file: !9, line: 7, size: 768, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !181, identifier: "_ZTS22MultiThreadedScheduler")
!181 = !{!182, !183, !184, !188, !189, !194, !197}
!182 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !180, baseType: !44, flags: DIFlagPublic, extraData: i32 0)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "m_suspended", scope: !180, file: !9, line: 37, baseType: !34, size: 32, offset: 704)
!184 = !DISubprogram(name: "MultiThreadedScheduler", scope: !180, file: !9, line: 11, type: !185, scopeLine: 11, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!185 = !DISubroutineType(types: !186)
!186 = !{null, !187}
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!188 = !DISubprogram(name: "~MultiThreadedScheduler", scope: !180, file: !9, line: 14, type: !185, scopeLine: 14, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!189 = !DISubprogram(name: "suspended", linkageName: "_ZNK22MultiThreadedScheduler9suspendedEv", scope: !180, file: !9, line: 17, type: !190, scopeLine: 17, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!190 = !DISubroutineType(types: !191)
!191 = !{!34, !192}
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !180)
!194 = !DISubprogram(name: "suspend", linkageName: "_ZN22MultiThreadedScheduler7suspendEbi", scope: !180, file: !9, line: 22, type: !195, scopeLine: 22, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!195 = !DISubroutineType(types: !196)
!196 = !{null, !187, !148, !34}
!197 = !DISubprogram(name: "resume", linkageName: "_ZN22MultiThreadedScheduler6resumeEv", scope: !180, file: !9, line: 30, type: !185, scopeLine: 30, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!198 = !DISubprogram(name: "task", linkageName: "_ZN22MultiThreadedTaskQueue4taskEii", scope: !27, file: !26, line: 187, type: !199, scopeLine: 187, containingType: !27, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!199 = !DISubroutineType(types: !200)
!200 = !{!34, !201, !34, !34}
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!202 = !DISubprogram(name: "MultiThreadedTaskQueue", scope: !27, file: !26, line: 194, type: !203, scopeLine: 194, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!203 = !DISubroutineType(types: !204)
!204 = !{null, !201}
!205 = !DISubprogram(name: "MultiThreadedTaskQueue", scope: !27, file: !26, line: 195, type: !206, scopeLine: 195, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!206 = !DISubroutineType(types: !207)
!207 = !{null, !201, !34}
!208 = !DISubprogram(name: "~MultiThreadedTaskQueue", scope: !27, file: !26, line: 196, type: !203, scopeLine: 196, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!209 = !DISubprogram(name: "tag", linkageName: "_ZNK22MultiThreadedTaskQueue3tagEv", scope: !27, file: !26, line: 201, type: !210, scopeLine: 201, containingType: !27, virtualIndex: 1, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!210 = !DISubroutineType(types: !211)
!211 = !{!111, !212}
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!213 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!214 = !DISubprogram(name: "setMaxNumberOfThreads", linkageName: "_ZN22MultiThreadedTaskQueue21setMaxNumberOfThreadsEi", scope: !27, file: !26, line: 208, type: !150, scopeLine: 208, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!215 = !DISubprogram(name: "maxNumberOfThreads", linkageName: "_ZN22MultiThreadedTaskQueue18maxNumberOfThreadsEv", scope: !27, file: !26, line: 209, type: !32, scopeLine: 209, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!216 = !DISubprogram(name: "createThreads", linkageName: "_ZN22MultiThreadedTaskQueue13createThreadsEi", scope: !27, file: !26, line: 214, type: !206, scopeLine: 214, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!217 = !DISubprogram(name: "startThreads", linkageName: "_ZN22MultiThreadedTaskQueue12startThreadsEv", scope: !27, file: !26, line: 216, type: !203, scopeLine: 216, containingType: !27, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!218 = !DISubprogram(name: "waitForAllThreads", linkageName: "_ZN22MultiThreadedTaskQueue17waitForAllThreadsEv", scope: !27, file: !26, line: 218, type: !203, scopeLine: 218, containingType: !27, virtualIndex: 3, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!219 = !DISubprogram(name: "executeAllThreads", linkageName: "_ZN22MultiThreadedTaskQueue17executeAllThreadsEv", scope: !27, file: !26, line: 220, type: !203, scopeLine: 220, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!220 = !DISubprogram(name: "numberOfThreads", linkageName: "_ZNK22MultiThreadedTaskQueue15numberOfThreadsEv", scope: !27, file: !26, line: 225, type: !221, scopeLine: 225, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!221 = !DISubroutineType(types: !222)
!222 = !{!34, !212}
!223 = !{!224, !225}
!224 = !DIEnumerator(name: "THREAD_EXIT", value: 0, isUnsigned: true)
!225 = !DIEnumerator(name: "THREAD_RUNNING", value: 1, isUnsigned: true)
!226 = !{!148, !163, !111, !34, !180, !44, !40}
!227 = !{!0, !7, !15, !228, !233, !238, !20, !241, !243, !245, !250, !255, !260, !265, !270, !275, !280, !285}
!228 = !DIGlobalVariableExpression(var: !229, expr: !DIExpression())
!229 = distinct !DIGlobalVariable(scope: null, file: !9, line: 340, type: !230, isLocal: true, isDefinition: true)
!230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 104, elements: !231)
!231 = !{!232}
!232 = !DISubrange(count: 13)
!233 = !DIGlobalVariableExpression(var: !234, expr: !DIExpression())
!234 = distinct !DIGlobalVariable(scope: null, file: !9, line: 340, type: !235, isLocal: true, isDefinition: true)
!235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 720, elements: !236)
!236 = !{!237}
!237 = !DISubrange(count: 90)
!238 = !DIGlobalVariableExpression(var: !239, expr: !DIExpression())
!239 = distinct !DIGlobalVariable(scope: null, file: !9, line: 340, type: !240, isLocal: true, isDefinition: true)
!240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 384, elements: !108)
!241 = !DIGlobalVariableExpression(var: !242, expr: !DIExpression())
!242 = distinct !DIGlobalVariable(name: "m_client", linkageName: "_ZN22MultiThreadedTaskQueue8m_clientE", scope: !22, file: !9, line: 374, type: !177, isLocal: false, isDefinition: true, declaration: !176)
!243 = !DIGlobalVariableExpression(var: !244, expr: !DIExpression())
!244 = distinct !DIGlobalVariable(name: "m_scheduler", linkageName: "_ZN22MultiThreadedTaskQueue11m_schedulerE", scope: !22, file: !9, line: 375, type: !179, isLocal: false, isDefinition: true, declaration: !178)
!245 = !DIGlobalVariableExpression(var: !246, expr: !DIExpression())
!246 = distinct !DIGlobalVariable(scope: null, file: !9, line: 121, type: !247, isLocal: true, isDefinition: true)
!247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 432, elements: !248)
!248 = !{!249}
!249 = !DISubrange(count: 54)
!250 = !DIGlobalVariableExpression(var: !251, expr: !DIExpression())
!251 = distinct !DIGlobalVariable(scope: null, file: !9, line: 137, type: !252, isLocal: true, isDefinition: true)
!252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 168, elements: !253)
!253 = !{!254}
!254 = !DISubrange(count: 21)
!255 = !DIGlobalVariableExpression(var: !256, expr: !DIExpression())
!256 = distinct !DIGlobalVariable(scope: null, file: !9, line: 139, type: !257, isLocal: true, isDefinition: true)
!257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 360, elements: !258)
!258 = !{!259}
!259 = !DISubrange(count: 45)
!260 = !DIGlobalVariableExpression(var: !261, expr: !DIExpression())
!261 = distinct !DIGlobalVariable(scope: null, file: !9, line: 141, type: !262, isLocal: true, isDefinition: true)
!262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 96, elements: !263)
!263 = !{!264}
!264 = !DISubrange(count: 12)
!265 = !DIGlobalVariableExpression(var: !266, expr: !DIExpression())
!266 = distinct !DIGlobalVariable(scope: null, file: !9, line: 183, type: !267, isLocal: true, isDefinition: true)
!267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 56, elements: !268)
!268 = !{!269}
!269 = !DISubrange(count: 7)
!270 = !DIGlobalVariableExpression(var: !271, expr: !DIExpression())
!271 = distinct !DIGlobalVariable(scope: null, file: !9, line: 183, type: !272, isLocal: true, isDefinition: true)
!272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 496, elements: !273)
!273 = !{!274}
!274 = !DISubrange(count: 62)
!275 = !DIGlobalVariableExpression(var: !276, expr: !DIExpression())
!276 = distinct !DIGlobalVariable(scope: null, file: !9, line: 212, type: !277, isLocal: true, isDefinition: true)
!277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 152, elements: !278)
!278 = !{!279}
!279 = !DISubrange(count: 19)
!280 = !DIGlobalVariableExpression(var: !281, expr: !DIExpression())
!281 = distinct !DIGlobalVariable(scope: null, file: !9, line: 212, type: !282, isLocal: true, isDefinition: true)
!282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 552, elements: !283)
!283 = !{!284}
!284 = !DISubrange(count: 69)
!285 = !DIGlobalVariableExpression(var: !286, expr: !DIExpression())
!286 = distinct !DIGlobalVariable(scope: null, file: !9, line: 52, type: !287, isLocal: true, isDefinition: true)
!287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 40, elements: !288)
!288 = !{!289}
!289 = !DISubrange(count: 5)
!290 = !{!291, !301, !305, !311, !315, !319, !327, !331, !333, !335, !339, !343, !347, !351, !355, !357, !359, !361, !365, !369, !373, !375, !377, !383, !387, !393, !397, !401, !406, !408, !413, !417, !421, !429, !431, !435, !437, !441, !445, !449, !453, !457, !461, !468, !472, !476, !478, !480, !484, !488, !494, !498, !502, !504, !511, !515, !522, !524, !528, !532, !536, !540, !544, !549, !554, !555, !556, !557, !559, !560, !561, !562, !563, !564, !565, !567, !568, !569, !570, !571, !572, !573, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !608, !610, !612, !616, !618, !620, !622, !624, !626, !628, !630, !635, !639, !641, !643, !648, !650, !652, !654, !656, !658, !660, !663, !665, !667, !671, !675, !677, !679, !681, !683, !685, !687, !689, !691, !693, !695, !699, !703, !705, !707, !709, !711, !713, !715, !717, !719, !721, !723, !725, !727, !729, !731, !733, !737, !741, !745, !747, !749, !751, !753, !755, !757, !759, !761, !763, !767, !771, !775, !777, !779, !781, !785, !789, !793, !795, !797, !799, !801, !803, !805, !807, !809, !811, !813, !815, !817, !821, !825, !829, !831, !833, !835, !837, !841, !845, !847, !849, !851, !853, !855, !857, !861, !865, !867, !869, !871, !873, !877, !881, !885, !887, !889, !891, !893, !895, !897, !901, !905, !909, !911, !915, !919, !921, !923, !925, !927, !929, !931, !935, !937, !942, !957, !960, !965, !974, !979, !983, !987, !991, !995, !997, !999, !1003, !1009, !1013, !1019, !1025, !1027, !1031, !1035, !1039, !1043, !1055, !1057, !1061, !1065, !1069, !1071, !1075, !1079, !1083, !1085, !1087, !1091, !1099, !1103, !1107, !1111, !1113, !1119, !1121, !1127, !1131, !1135, !1139, !1143, !1147, !1151, !1153, !1155, !1159, !1163, !1167, !1169, !1173, !1177, !1179, !1181, !1185, !1189, !1193, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1211, !1215, !1222, !1225, !1228, !1231, !1234, !1236, !1238, !1240, !1243, !1246, !1249, !1252, !1255, !1257, !1262, !1266, !1269, !1272, !1274, !1276, !1278, !1280, !1283, !1286, !1289, !1292, !1295, !1297, !1301, !1305, !1310, !1314, !1316, !1318, !1320, !1322, !1324, !1326, !1328, !1330, !1332, !1334, !1336, !1338, !1340, !1344, !1350, !1355, !1359, !1361, !1363, !1365, !1367, !1374, !1378, !1382, !1386, !1390, !1394, !1398, !1402, !1404, !1408, !1414, !1418, !1422, !1424, !1426, !1430, !1434, !1436, !1438, !1440, !1442, !1444, !1446, !1448, !1452, !1456, !1460, !1464, !1468, !1472, !1474, !1478, !1482, !1486, !1490, !1492, !1494, !1498, !1502, !1503, !1504, !1505, !1506, !1507, !1513, !1516, !1517, !1519, !1521, !1523, !1525, !1529, !1531, !1533, !1535, !1537, !1539, !1541, !1543, !1545, !1549, !1553, !1555, !1559, !1563}
!291 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !292, file: !300, line: 77)
!292 = !DISubprogram(name: "memchr", scope: !293, file: !293, line: 89, type: !294, flags: DIFlagPrototyped, spFlags: 0)
!293 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!294 = !DISubroutineType(types: !295)
!295 = !{!296, !296, !34, !298}
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !299, line: 46, baseType: !128)
!299 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!300 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cstring", directory: "")
!301 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !302, file: !300, line: 78)
!302 = !DISubprogram(name: "memcmp", scope: !293, file: !293, line: 64, type: !303, flags: DIFlagPrototyped, spFlags: 0)
!303 = !DISubroutineType(types: !304)
!304 = !{!34, !296, !296, !298}
!305 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !306, file: !300, line: 79)
!306 = !DISubprogram(name: "memcpy", scope: !293, file: !293, line: 43, type: !307, flags: DIFlagPrototyped, spFlags: 0)
!307 = !DISubroutineType(types: !308)
!308 = !{!163, !309, !310, !298}
!309 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !163)
!310 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !296)
!311 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !312, file: !300, line: 80)
!312 = !DISubprogram(name: "memmove", scope: !293, file: !293, line: 47, type: !313, flags: DIFlagPrototyped, spFlags: 0)
!313 = !DISubroutineType(types: !314)
!314 = !{!163, !163, !296, !298}
!315 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !316, file: !300, line: 81)
!316 = !DISubprogram(name: "memset", scope: !293, file: !293, line: 61, type: !317, flags: DIFlagPrototyped, spFlags: 0)
!317 = !DISubroutineType(types: !318)
!318 = !{!163, !163, !34, !298}
!319 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !320, file: !300, line: 82)
!320 = !DISubprogram(name: "strcat", scope: !293, file: !293, line: 149, type: !321, flags: DIFlagPrototyped, spFlags: 0)
!321 = !DISubroutineType(types: !322)
!322 = !{!323, !324, !325}
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !323)
!325 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !326)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!327 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !328, file: !300, line: 83)
!328 = !DISubprogram(name: "strcmp", scope: !293, file: !293, line: 156, type: !329, flags: DIFlagPrototyped, spFlags: 0)
!329 = !DISubroutineType(types: !330)
!330 = !{!34, !326, !326}
!331 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !332, file: !300, line: 84)
!332 = !DISubprogram(name: "strcoll", scope: !293, file: !293, line: 163, type: !329, flags: DIFlagPrototyped, spFlags: 0)
!333 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !334, file: !300, line: 85)
!334 = !DISubprogram(name: "strcpy", scope: !293, file: !293, line: 141, type: !321, flags: DIFlagPrototyped, spFlags: 0)
!335 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !336, file: !300, line: 86)
!336 = !DISubprogram(name: "strcspn", scope: !293, file: !293, line: 293, type: !337, flags: DIFlagPrototyped, spFlags: 0)
!337 = !DISubroutineType(types: !338)
!338 = !{!298, !326, !326}
!339 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !340, file: !300, line: 87)
!340 = !DISubprogram(name: "strerror", scope: !293, file: !293, line: 419, type: !341, flags: DIFlagPrototyped, spFlags: 0)
!341 = !DISubroutineType(types: !342)
!342 = !{!323, !34}
!343 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !344, file: !300, line: 88)
!344 = !DISubprogram(name: "strlen", scope: !293, file: !293, line: 407, type: !345, flags: DIFlagPrototyped, spFlags: 0)
!345 = !DISubroutineType(types: !346)
!346 = !{!298, !326}
!347 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !348, file: !300, line: 89)
!348 = !DISubprogram(name: "strncat", scope: !293, file: !293, line: 152, type: !349, flags: DIFlagPrototyped, spFlags: 0)
!349 = !DISubroutineType(types: !350)
!350 = !{!323, !324, !325, !298}
!351 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !352, file: !300, line: 90)
!352 = !DISubprogram(name: "strncmp", scope: !293, file: !293, line: 159, type: !353, flags: DIFlagPrototyped, spFlags: 0)
!353 = !DISubroutineType(types: !354)
!354 = !{!34, !326, !326, !298}
!355 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !356, file: !300, line: 91)
!356 = !DISubprogram(name: "strncpy", scope: !293, file: !293, line: 144, type: !349, flags: DIFlagPrototyped, spFlags: 0)
!357 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !358, file: !300, line: 92)
!358 = !DISubprogram(name: "strspn", scope: !293, file: !293, line: 297, type: !337, flags: DIFlagPrototyped, spFlags: 0)
!359 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !360, file: !300, line: 93)
!360 = !DISubprogram(name: "strtok", scope: !293, file: !293, line: 356, type: !321, flags: DIFlagPrototyped, spFlags: 0)
!361 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !362, file: !300, line: 94)
!362 = !DISubprogram(name: "strxfrm", scope: !293, file: !293, line: 166, type: !363, flags: DIFlagPrototyped, spFlags: 0)
!363 = !DISubroutineType(types: !364)
!364 = !{!298, !324, !325, !298}
!365 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !366, file: !300, line: 95)
!366 = !DISubprogram(name: "strchr", scope: !293, file: !293, line: 228, type: !367, flags: DIFlagPrototyped, spFlags: 0)
!367 = !DISubroutineType(types: !368)
!368 = !{!326, !326, !34}
!369 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !370, file: !300, line: 96)
!370 = !DISubprogram(name: "strpbrk", scope: !293, file: !293, line: 305, type: !371, flags: DIFlagPrototyped, spFlags: 0)
!371 = !DISubroutineType(types: !372)
!372 = !{!326, !326, !326}
!373 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !374, file: !300, line: 97)
!374 = !DISubprogram(name: "strrchr", scope: !293, file: !293, line: 255, type: !367, flags: DIFlagPrototyped, spFlags: 0)
!375 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !376, file: !300, line: 98)
!376 = !DISubprogram(name: "strstr", scope: !293, file: !293, line: 332, type: !371, flags: DIFlagPrototyped, spFlags: 0)
!377 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !378, file: !382, line: 52)
!378 = !DISubprogram(name: "abs", scope: !379, file: !379, line: 848, type: !380, flags: DIFlagPrototyped, spFlags: 0)
!379 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!380 = !DISubroutineType(types: !381)
!381 = !{!34, !34}
!382 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/std_abs.h", directory: "")
!383 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !384, file: !386, line: 127)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !379, line: 63, baseType: !385)
!385 = !DICompositeType(tag: DW_TAG_structure_type, file: !379, line: 59, size: 64, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!386 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cstdlib", directory: "")
!387 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !388, file: !386, line: 128)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !379, line: 71, baseType: !389)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !379, line: 67, size: 128, flags: DIFlagTypePassByValue, elements: !390, identifier: "_ZTS6ldiv_t")
!390 = !{!391, !392}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !389, file: !379, line: 69, baseType: !77, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !389, file: !379, line: 70, baseType: !77, size: 64, offset: 64)
!393 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !394, file: !386, line: 130)
!394 = !DISubprogram(name: "abort", scope: !379, file: !379, line: 598, type: !395, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!395 = !DISubroutineType(types: !396)
!396 = !{null}
!397 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !398, file: !386, line: 132)
!398 = !DISubprogram(name: "aligned_alloc", scope: !379, file: !379, line: 592, type: !399, flags: DIFlagPrototyped, spFlags: 0)
!399 = !DISubroutineType(types: !400)
!400 = !{!163, !298, !298}
!401 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !402, file: !386, line: 134)
!402 = !DISubprogram(name: "atexit", scope: !379, file: !379, line: 602, type: !403, flags: DIFlagPrototyped, spFlags: 0)
!403 = !DISubroutineType(types: !404)
!404 = !{!34, !405}
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!406 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !407, file: !386, line: 137)
!407 = !DISubprogram(name: "at_quick_exit", scope: !379, file: !379, line: 607, type: !403, flags: DIFlagPrototyped, spFlags: 0)
!408 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !409, file: !386, line: 140)
!409 = !DISubprogram(name: "atof", scope: !379, file: !379, line: 102, type: !410, flags: DIFlagPrototyped, spFlags: 0)
!410 = !DISubroutineType(types: !411)
!411 = !{!412, !326}
!412 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!413 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !414, file: !386, line: 141)
!414 = !DISubprogram(name: "atoi", scope: !379, file: !379, line: 105, type: !415, flags: DIFlagPrototyped, spFlags: 0)
!415 = !DISubroutineType(types: !416)
!416 = !{!34, !326}
!417 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !418, file: !386, line: 142)
!418 = !DISubprogram(name: "atol", scope: !379, file: !379, line: 108, type: !419, flags: DIFlagPrototyped, spFlags: 0)
!419 = !DISubroutineType(types: !420)
!420 = !{!77, !326}
!421 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !422, file: !386, line: 143)
!422 = !DISubprogram(name: "bsearch", scope: !379, file: !379, line: 828, type: !423, flags: DIFlagPrototyped, spFlags: 0)
!423 = !DISubroutineType(types: !424)
!424 = !{!163, !296, !296, !298, !298, !425}
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !379, line: 816, baseType: !426)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = !DISubroutineType(types: !428)
!428 = !{!34, !296, !296}
!429 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !430, file: !386, line: 144)
!430 = !DISubprogram(name: "calloc", scope: !379, file: !379, line: 543, type: !399, flags: DIFlagPrototyped, spFlags: 0)
!431 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !432, file: !386, line: 145)
!432 = !DISubprogram(name: "div", scope: !379, file: !379, line: 860, type: !433, flags: DIFlagPrototyped, spFlags: 0)
!433 = !DISubroutineType(types: !434)
!434 = !{!384, !34, !34}
!435 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !436, file: !386, line: 146)
!436 = !DISubprogram(name: "exit", scope: !379, file: !379, line: 624, type: !150, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!437 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !438, file: !386, line: 147)
!438 = !DISubprogram(name: "free", scope: !379, file: !379, line: 555, type: !439, flags: DIFlagPrototyped, spFlags: 0)
!439 = !DISubroutineType(types: !440)
!440 = !{null, !163}
!441 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !442, file: !386, line: 148)
!442 = !DISubprogram(name: "getenv", scope: !379, file: !379, line: 641, type: !443, flags: DIFlagPrototyped, spFlags: 0)
!443 = !DISubroutineType(types: !444)
!444 = !{!323, !326}
!445 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !446, file: !386, line: 149)
!446 = !DISubprogram(name: "labs", scope: !379, file: !379, line: 849, type: !447, flags: DIFlagPrototyped, spFlags: 0)
!447 = !DISubroutineType(types: !448)
!448 = !{!77, !77}
!449 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !450, file: !386, line: 150)
!450 = !DISubprogram(name: "ldiv", scope: !379, file: !379, line: 862, type: !451, flags: DIFlagPrototyped, spFlags: 0)
!451 = !DISubroutineType(types: !452)
!452 = !{!388, !77, !77}
!453 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !454, file: !386, line: 151)
!454 = !DISubprogram(name: "malloc", scope: !379, file: !379, line: 540, type: !455, flags: DIFlagPrototyped, spFlags: 0)
!455 = !DISubroutineType(types: !456)
!456 = !{!163, !298}
!457 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !458, file: !386, line: 153)
!458 = !DISubprogram(name: "mblen", scope: !379, file: !379, line: 930, type: !459, flags: DIFlagPrototyped, spFlags: 0)
!459 = !DISubroutineType(types: !460)
!460 = !{!34, !326, !298}
!461 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !462, file: !386, line: 154)
!462 = !DISubprogram(name: "mbstowcs", scope: !379, file: !379, line: 941, type: !463, flags: DIFlagPrototyped, spFlags: 0)
!463 = !DISubroutineType(types: !464)
!464 = !{!298, !465, !325, !298}
!465 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !466)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!468 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !469, file: !386, line: 155)
!469 = !DISubprogram(name: "mbtowc", scope: !379, file: !379, line: 933, type: !470, flags: DIFlagPrototyped, spFlags: 0)
!470 = !DISubroutineType(types: !471)
!471 = !{!34, !465, !325, !298}
!472 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !473, file: !386, line: 157)
!473 = !DISubprogram(name: "qsort", scope: !379, file: !379, line: 838, type: !474, flags: DIFlagPrototyped, spFlags: 0)
!474 = !DISubroutineType(types: !475)
!475 = !{null, !163, !298, !298, !425}
!476 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !477, file: !386, line: 160)
!477 = !DISubprogram(name: "quick_exit", scope: !379, file: !379, line: 630, type: !150, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!478 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !479, file: !386, line: 163)
!479 = !DISubprogram(name: "rand", scope: !379, file: !379, line: 454, type: !32, flags: DIFlagPrototyped, spFlags: 0)
!480 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !481, file: !386, line: 164)
!481 = !DISubprogram(name: "realloc", scope: !379, file: !379, line: 551, type: !482, flags: DIFlagPrototyped, spFlags: 0)
!482 = !DISubroutineType(types: !483)
!483 = !{!163, !163, !298}
!484 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !485, file: !386, line: 165)
!485 = !DISubprogram(name: "srand", scope: !379, file: !379, line: 456, type: !486, flags: DIFlagPrototyped, spFlags: 0)
!486 = !DISubroutineType(types: !487)
!487 = !{null, !57}
!488 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !489, file: !386, line: 166)
!489 = !DISubprogram(name: "strtod", scope: !379, file: !379, line: 118, type: !490, flags: DIFlagPrototyped, spFlags: 0)
!490 = !DISubroutineType(types: !491)
!491 = !{!412, !325, !492}
!492 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !493)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!494 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !495, file: !386, line: 167)
!495 = !DISubprogram(name: "strtol", scope: !379, file: !379, line: 177, type: !496, flags: DIFlagPrototyped, spFlags: 0)
!496 = !DISubroutineType(types: !497)
!497 = !{!77, !325, !492, !34}
!498 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !499, file: !386, line: 168)
!499 = !DISubprogram(name: "strtoul", scope: !379, file: !379, line: 181, type: !500, flags: DIFlagPrototyped, spFlags: 0)
!500 = !DISubroutineType(types: !501)
!501 = !{!128, !325, !492, !34}
!502 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !503, file: !386, line: 169)
!503 = !DISubprogram(name: "system", scope: !379, file: !379, line: 791, type: !415, flags: DIFlagPrototyped, spFlags: 0)
!504 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !505, file: !386, line: 171)
!505 = !DISubprogram(name: "wcstombs", scope: !379, file: !379, line: 945, type: !506, flags: DIFlagPrototyped, spFlags: 0)
!506 = !DISubroutineType(types: !507)
!507 = !{!298, !324, !508, !298}
!508 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !509)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !467)
!511 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !512, file: !386, line: 172)
!512 = !DISubprogram(name: "wctomb", scope: !379, file: !379, line: 937, type: !513, flags: DIFlagPrototyped, spFlags: 0)
!513 = !DISubroutineType(types: !514)
!514 = !{!34, !323, !467}
!515 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !516, entity: !517, file: !386, line: 200)
!516 = !DINamespace(name: "__gnu_cxx", scope: null)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !379, line: 81, baseType: !518)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !379, line: 77, size: 128, flags: DIFlagTypePassByValue, elements: !519, identifier: "_ZTS7lldiv_t")
!519 = !{!520, !521}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !518, file: !379, line: 79, baseType: !111, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !518, file: !379, line: 80, baseType: !111, size: 64, offset: 64)
!522 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !516, entity: !523, file: !386, line: 206)
!523 = !DISubprogram(name: "_Exit", scope: !379, file: !379, line: 636, type: !150, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!524 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !516, entity: !525, file: !386, line: 210)
!525 = !DISubprogram(name: "llabs", scope: !379, file: !379, line: 852, type: !526, flags: DIFlagPrototyped, spFlags: 0)
!526 = !DISubroutineType(types: !527)
!527 = !{!111, !111}
!528 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !516, entity: !529, file: !386, line: 216)
!529 = !DISubprogram(name: "lldiv", scope: !379, file: !379, line: 866, type: !530, flags: DIFlagPrototyped, spFlags: 0)
!530 = !DISubroutineType(types: !531)
!531 = !{!517, !111, !111}
!532 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !516, entity: !533, file: !386, line: 227)
!533 = !DISubprogram(name: "atoll", scope: !379, file: !379, line: 113, type: !534, flags: DIFlagPrototyped, spFlags: 0)
!534 = !DISubroutineType(types: !535)
!535 = !{!111, !326}
!536 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !516, entity: !537, file: !386, line: 228)
!537 = !DISubprogram(name: "strtoll", scope: !379, file: !379, line: 201, type: !538, flags: DIFlagPrototyped, spFlags: 0)
!538 = !DISubroutineType(types: !539)
!539 = !{!111, !325, !492, !34}
!540 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !516, entity: !541, file: !386, line: 229)
!541 = !DISubprogram(name: "strtoull", scope: !379, file: !379, line: 206, type: !542, flags: DIFlagPrototyped, spFlags: 0)
!542 = !DISubroutineType(types: !543)
!543 = !{!91, !325, !492, !34}
!544 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !516, entity: !545, file: !386, line: 231)
!545 = !DISubprogram(name: "strtof", scope: !379, file: !379, line: 124, type: !546, flags: DIFlagPrototyped, spFlags: 0)
!546 = !DISubroutineType(types: !547)
!547 = !{!548, !325, !492}
!548 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!549 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !516, entity: !550, file: !386, line: 232)
!550 = !DISubprogram(name: "strtold", scope: !379, file: !379, line: 127, type: !551, flags: DIFlagPrototyped, spFlags: 0)
!551 = !DISubroutineType(types: !552)
!552 = !{!553, !325, !492}
!553 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!554 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !517, file: !386, line: 240)
!555 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !523, file: !386, line: 242)
!556 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !525, file: !386, line: 244)
!557 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !558, file: !386, line: 245)
!558 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !516, file: !386, line: 213, type: !530, flags: DIFlagPrototyped, spFlags: 0)
!559 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !529, file: !386, line: 246)
!560 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !533, file: !386, line: 248)
!561 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !545, file: !386, line: 249)
!562 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !537, file: !386, line: 250)
!563 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !541, file: !386, line: 251)
!564 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !550, file: !386, line: 252)
!565 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !394, file: !566, line: 38)
!566 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "0f5b773a303c24013fb112082e6d18a5")
!567 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !402, file: !566, line: 39)
!568 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !436, file: !566, line: 40)
!569 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !407, file: !566, line: 43)
!570 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !477, file: !566, line: 46)
!571 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !384, file: !566, line: 51)
!572 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !388, file: !566, line: 52)
!573 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !574, file: !566, line: 54)
!574 = !DISubprogram(name: "abs", linkageName: "_ZSt3absg", scope: !2, file: !382, line: 103, type: !575, flags: DIFlagPrototyped, spFlags: 0)
!575 = !DISubroutineType(types: !576)
!576 = !{!577, !577}
!577 = !DIBasicType(name: "__float128", size: 128, encoding: DW_ATE_float)
!578 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !409, file: !566, line: 55)
!579 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !414, file: !566, line: 56)
!580 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !418, file: !566, line: 57)
!581 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !422, file: !566, line: 58)
!582 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !430, file: !566, line: 59)
!583 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !558, file: !566, line: 60)
!584 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !438, file: !566, line: 61)
!585 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !442, file: !566, line: 62)
!586 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !446, file: !566, line: 63)
!587 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !450, file: !566, line: 64)
!588 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !454, file: !566, line: 65)
!589 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !458, file: !566, line: 67)
!590 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !462, file: !566, line: 68)
!591 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !469, file: !566, line: 69)
!592 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !473, file: !566, line: 71)
!593 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !479, file: !566, line: 72)
!594 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !481, file: !566, line: 73)
!595 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !485, file: !566, line: 74)
!596 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !489, file: !566, line: 75)
!597 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !495, file: !566, line: 76)
!598 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !499, file: !566, line: 77)
!599 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !503, file: !566, line: 78)
!600 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !505, file: !566, line: 80)
!601 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !512, file: !566, line: 81)
!602 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !603, file: !607, line: 83)
!603 = !DISubprogram(name: "acos", scope: !604, file: !604, line: 53, type: !605, flags: DIFlagPrototyped, spFlags: 0)
!604 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "8c6e2d0d2bda65bc5ba1ca02b65383b7")
!605 = !DISubroutineType(types: !606)
!606 = !{!412, !412}
!607 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cmath", directory: "")
!608 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !609, file: !607, line: 102)
!609 = !DISubprogram(name: "asin", scope: !604, file: !604, line: 55, type: !605, flags: DIFlagPrototyped, spFlags: 0)
!610 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !611, file: !607, line: 121)
!611 = !DISubprogram(name: "atan", scope: !604, file: !604, line: 57, type: !605, flags: DIFlagPrototyped, spFlags: 0)
!612 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !613, file: !607, line: 140)
!613 = !DISubprogram(name: "atan2", scope: !604, file: !604, line: 59, type: !614, flags: DIFlagPrototyped, spFlags: 0)
!614 = !DISubroutineType(types: !615)
!615 = !{!412, !412, !412}
!616 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !617, file: !607, line: 161)
!617 = !DISubprogram(name: "ceil", scope: !604, file: !604, line: 159, type: !605, flags: DIFlagPrototyped, spFlags: 0)
!618 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !619, file: !607, line: 180)
!619 = !DISubprogram(name: "cos", scope: !604, file: !604, line: 62, type: !605, flags: DIFlagPrototyped, spFlags: 0)
!620 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !621, file: !607, line: 199)
!621 = !DISubprogram(name: "cosh", scope: !604, file: !604, line: 71, type: !605, flags: DIFlagPrototyped, spFlags: 0)
!622 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !623, file: !607, line: 218)
!623 = !DISubprogram(name: "exp", scope: !604, file: !604, line: 95, type: !605, flags: DIFlagPrototyped, spFlags: 0)
!624 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !625, file: !607, line: 237)
!625 = !DISubprogram(name: "fabs", scope: !604, file: !604, line: 162, type: !605, flags: DIFlagPrototyped, spFlags: 0)
!626 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !627, file: !607, line: 256)
!627 = !DISubprogram(name: "floor", scope: !604, file: !604, line: 165, type: !605, flags: DIFlagPrototyped, spFlags: 0)
!628 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !629, file: !607, line: 275)
!629 = !DISubprogram(name: "fmod", scope: !604, file: !604, line: 168, type: !614, flags: DIFlagPrototyped, spFlags: 0)
!630 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !631, file: !607, line: 296)
!631 = !DISubprogram(name: "frexp", scope: !604, file: !604, line: 98, type: !632, flags: DIFlagPrototyped, spFlags: 0)
!632 = !DISubroutineType(types: !633)
!633 = !{!412, !412, !634}
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!635 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !636, file: !607, line: 315)
!636 = !DISubprogram(name: "ldexp", scope: !604, file: !604, line: 101, type: !637, flags: DIFlagPrototyped, spFlags: 0)
!637 = !DISubroutineType(types: !638)
!638 = !{!412, !412, !34}
!639 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !640, file: !607, line: 334)
!640 = !DISubprogram(name: "log", scope: !604, file: !604, line: 104, type: !605, flags: DIFlagPrototyped, spFlags: 0)
!641 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !642, file: !607, line: 353)
!642 = !DISubprogram(name: "log10", scope: !604, file: !604, line: 107, type: !605, flags: DIFlagPrototyped, spFlags: 0)
!643 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !644, file: !607, line: 372)
!644 = !DISubprogram(name: "modf", scope: !604, file: !604, line: 110, type: !645, flags: DIFlagPrototyped, spFlags: 0)
!645 = !DISubroutineType(types: !646)
!646 = !{!412, !412, !647}
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!648 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !649, file: !607, line: 384)
!649 = !DISubprogram(name: "pow", scope: !604, file: !604, line: 140, type: !614, flags: DIFlagPrototyped, spFlags: 0)
!650 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !651, file: !607, line: 421)
!651 = !DISubprogram(name: "sin", scope: !604, file: !604, line: 64, type: !605, flags: DIFlagPrototyped, spFlags: 0)
!652 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !653, file: !607, line: 440)
!653 = !DISubprogram(name: "sinh", scope: !604, file: !604, line: 73, type: !605, flags: DIFlagPrototyped, spFlags: 0)
!654 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !655, file: !607, line: 459)
!655 = !DISubprogram(name: "sqrt", scope: !604, file: !604, line: 143, type: !605, flags: DIFlagPrototyped, spFlags: 0)
!656 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !657, file: !607, line: 478)
!657 = !DISubprogram(name: "tan", scope: !604, file: !604, line: 66, type: !605, flags: DIFlagPrototyped, spFlags: 0)
!658 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !659, file: !607, line: 497)
!659 = !DISubprogram(name: "tanh", scope: !604, file: !604, line: 75, type: !605, flags: DIFlagPrototyped, spFlags: 0)
!660 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !661, file: !607, line: 1065)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_t", file: !662, line: 164, baseType: !412)
!662 = !DIFile(filename: "/usr/include/math.h", directory: "", checksumkind: CSK_MD5, checksum: "f3450d1d586f704597de1a1b2bed18f3")
!663 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !664, file: !607, line: 1066)
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "float_t", file: !662, line: 163, baseType: !548)
!665 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !666, file: !607, line: 1069)
!666 = !DISubprogram(name: "acosh", scope: !604, file: !604, line: 85, type: !605, flags: DIFlagPrototyped, spFlags: 0)
!667 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !668, file: !607, line: 1070)
!668 = !DISubprogram(name: "acoshf", scope: !604, file: !604, line: 85, type: !669, flags: DIFlagPrototyped, spFlags: 0)
!669 = !DISubroutineType(types: !670)
!670 = !{!548, !548}
!671 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !672, file: !607, line: 1071)
!672 = !DISubprogram(name: "acoshl", scope: !604, file: !604, line: 85, type: !673, flags: DIFlagPrototyped, spFlags: 0)
!673 = !DISubroutineType(types: !674)
!674 = !{!553, !553}
!675 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !676, file: !607, line: 1073)
!676 = !DISubprogram(name: "asinh", scope: !604, file: !604, line: 87, type: !605, flags: DIFlagPrototyped, spFlags: 0)
!677 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !678, file: !607, line: 1074)
!678 = !DISubprogram(name: "asinhf", scope: !604, file: !604, line: 87, type: !669, flags: DIFlagPrototyped, spFlags: 0)
!679 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !680, file: !607, line: 1075)
!680 = !DISubprogram(name: "asinhl", scope: !604, file: !604, line: 87, type: !673, flags: DIFlagPrototyped, spFlags: 0)
!681 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !682, file: !607, line: 1077)
!682 = !DISubprogram(name: "atanh", scope: !604, file: !604, line: 89, type: !605, flags: DIFlagPrototyped, spFlags: 0)
!683 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !684, file: !607, line: 1078)
!684 = !DISubprogram(name: "atanhf", scope: !604, file: !604, line: 89, type: !669, flags: DIFlagPrototyped, spFlags: 0)
!685 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !686, file: !607, line: 1079)
!686 = !DISubprogram(name: "atanhl", scope: !604, file: !604, line: 89, type: !673, flags: DIFlagPrototyped, spFlags: 0)
!687 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !688, file: !607, line: 1081)
!688 = !DISubprogram(name: "cbrt", scope: !604, file: !604, line: 152, type: !605, flags: DIFlagPrototyped, spFlags: 0)
!689 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !690, file: !607, line: 1082)
!690 = !DISubprogram(name: "cbrtf", scope: !604, file: !604, line: 152, type: !669, flags: DIFlagPrototyped, spFlags: 0)
!691 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !692, file: !607, line: 1083)
!692 = !DISubprogram(name: "cbrtl", scope: !604, file: !604, line: 152, type: !673, flags: DIFlagPrototyped, spFlags: 0)
!693 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !694, file: !607, line: 1085)
!694 = !DISubprogram(name: "copysign", scope: !604, file: !604, line: 198, type: !614, flags: DIFlagPrototyped, spFlags: 0)
!695 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !696, file: !607, line: 1086)
!696 = !DISubprogram(name: "copysignf", scope: !604, file: !604, line: 198, type: !697, flags: DIFlagPrototyped, spFlags: 0)
!697 = !DISubroutineType(types: !698)
!698 = !{!548, !548, !548}
!699 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !700, file: !607, line: 1087)
!700 = !DISubprogram(name: "copysignl", scope: !604, file: !604, line: 198, type: !701, flags: DIFlagPrototyped, spFlags: 0)
!701 = !DISubroutineType(types: !702)
!702 = !{!553, !553, !553}
!703 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !704, file: !607, line: 1089)
!704 = !DISubprogram(name: "erf", scope: !604, file: !604, line: 231, type: !605, flags: DIFlagPrototyped, spFlags: 0)
!705 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !706, file: !607, line: 1090)
!706 = !DISubprogram(name: "erff", scope: !604, file: !604, line: 231, type: !669, flags: DIFlagPrototyped, spFlags: 0)
!707 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !708, file: !607, line: 1091)
!708 = !DISubprogram(name: "erfl", scope: !604, file: !604, line: 231, type: !673, flags: DIFlagPrototyped, spFlags: 0)
!709 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !710, file: !607, line: 1093)
!710 = !DISubprogram(name: "erfc", scope: !604, file: !604, line: 232, type: !605, flags: DIFlagPrototyped, spFlags: 0)
!711 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !712, file: !607, line: 1094)
!712 = !DISubprogram(name: "erfcf", scope: !604, file: !604, line: 232, type: !669, flags: DIFlagPrototyped, spFlags: 0)
!713 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !714, file: !607, line: 1095)
!714 = !DISubprogram(name: "erfcl", scope: !604, file: !604, line: 232, type: !673, flags: DIFlagPrototyped, spFlags: 0)
!715 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !716, file: !607, line: 1097)
!716 = !DISubprogram(name: "exp2", scope: !604, file: !604, line: 130, type: !605, flags: DIFlagPrototyped, spFlags: 0)
!717 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !718, file: !607, line: 1098)
!718 = !DISubprogram(name: "exp2f", scope: !604, file: !604, line: 130, type: !669, flags: DIFlagPrototyped, spFlags: 0)
!719 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !720, file: !607, line: 1099)
!720 = !DISubprogram(name: "exp2l", scope: !604, file: !604, line: 130, type: !673, flags: DIFlagPrototyped, spFlags: 0)
!721 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !722, file: !607, line: 1101)
!722 = !DISubprogram(name: "expm1", scope: !604, file: !604, line: 119, type: !605, flags: DIFlagPrototyped, spFlags: 0)
!723 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !724, file: !607, line: 1102)
!724 = !DISubprogram(name: "expm1f", scope: !604, file: !604, line: 119, type: !669, flags: DIFlagPrototyped, spFlags: 0)
!725 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !726, file: !607, line: 1103)
!726 = !DISubprogram(name: "expm1l", scope: !604, file: !604, line: 119, type: !673, flags: DIFlagPrototyped, spFlags: 0)
!727 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !728, file: !607, line: 1105)
!728 = !DISubprogram(name: "fdim", scope: !604, file: !604, line: 329, type: !614, flags: DIFlagPrototyped, spFlags: 0)
!729 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !730, file: !607, line: 1106)
!730 = !DISubprogram(name: "fdimf", scope: !604, file: !604, line: 329, type: !697, flags: DIFlagPrototyped, spFlags: 0)
!731 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !732, file: !607, line: 1107)
!732 = !DISubprogram(name: "fdiml", scope: !604, file: !604, line: 329, type: !701, flags: DIFlagPrototyped, spFlags: 0)
!733 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !734, file: !607, line: 1109)
!734 = !DISubprogram(name: "fma", scope: !604, file: !604, line: 340, type: !735, flags: DIFlagPrototyped, spFlags: 0)
!735 = !DISubroutineType(types: !736)
!736 = !{!412, !412, !412, !412}
!737 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !738, file: !607, line: 1110)
!738 = !DISubprogram(name: "fmaf", scope: !604, file: !604, line: 340, type: !739, flags: DIFlagPrototyped, spFlags: 0)
!739 = !DISubroutineType(types: !740)
!740 = !{!548, !548, !548, !548}
!741 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !742, file: !607, line: 1111)
!742 = !DISubprogram(name: "fmal", scope: !604, file: !604, line: 340, type: !743, flags: DIFlagPrototyped, spFlags: 0)
!743 = !DISubroutineType(types: !744)
!744 = !{!553, !553, !553, !553}
!745 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !746, file: !607, line: 1113)
!746 = !DISubprogram(name: "fmax", scope: !604, file: !604, line: 333, type: !614, flags: DIFlagPrototyped, spFlags: 0)
!747 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !748, file: !607, line: 1114)
!748 = !DISubprogram(name: "fmaxf", scope: !604, file: !604, line: 333, type: !697, flags: DIFlagPrototyped, spFlags: 0)
!749 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !750, file: !607, line: 1115)
!750 = !DISubprogram(name: "fmaxl", scope: !604, file: !604, line: 333, type: !701, flags: DIFlagPrototyped, spFlags: 0)
!751 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !752, file: !607, line: 1117)
!752 = !DISubprogram(name: "fmin", scope: !604, file: !604, line: 336, type: !614, flags: DIFlagPrototyped, spFlags: 0)
!753 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !754, file: !607, line: 1118)
!754 = !DISubprogram(name: "fminf", scope: !604, file: !604, line: 336, type: !697, flags: DIFlagPrototyped, spFlags: 0)
!755 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !756, file: !607, line: 1119)
!756 = !DISubprogram(name: "fminl", scope: !604, file: !604, line: 336, type: !701, flags: DIFlagPrototyped, spFlags: 0)
!757 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !758, file: !607, line: 1121)
!758 = !DISubprogram(name: "hypot", scope: !604, file: !604, line: 147, type: !614, flags: DIFlagPrototyped, spFlags: 0)
!759 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !760, file: !607, line: 1122)
!760 = !DISubprogram(name: "hypotf", scope: !604, file: !604, line: 147, type: !697, flags: DIFlagPrototyped, spFlags: 0)
!761 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !762, file: !607, line: 1123)
!762 = !DISubprogram(name: "hypotl", scope: !604, file: !604, line: 147, type: !701, flags: DIFlagPrototyped, spFlags: 0)
!763 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !764, file: !607, line: 1125)
!764 = !DISubprogram(name: "ilogb", scope: !604, file: !604, line: 283, type: !765, flags: DIFlagPrototyped, spFlags: 0)
!765 = !DISubroutineType(types: !766)
!766 = !{!34, !412}
!767 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !768, file: !607, line: 1126)
!768 = !DISubprogram(name: "ilogbf", scope: !604, file: !604, line: 283, type: !769, flags: DIFlagPrototyped, spFlags: 0)
!769 = !DISubroutineType(types: !770)
!770 = !{!34, !548}
!771 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !772, file: !607, line: 1127)
!772 = !DISubprogram(name: "ilogbl", scope: !604, file: !604, line: 283, type: !773, flags: DIFlagPrototyped, spFlags: 0)
!773 = !DISubroutineType(types: !774)
!774 = !{!34, !553}
!775 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !776, file: !607, line: 1129)
!776 = !DISubprogram(name: "lgamma", scope: !604, file: !604, line: 233, type: !605, flags: DIFlagPrototyped, spFlags: 0)
!777 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !778, file: !607, line: 1130)
!778 = !DISubprogram(name: "lgammaf", scope: !604, file: !604, line: 233, type: !669, flags: DIFlagPrototyped, spFlags: 0)
!779 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !780, file: !607, line: 1131)
!780 = !DISubprogram(name: "lgammal", scope: !604, file: !604, line: 233, type: !673, flags: DIFlagPrototyped, spFlags: 0)
!781 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !782, file: !607, line: 1134)
!782 = !DISubprogram(name: "llrint", scope: !604, file: !604, line: 319, type: !783, flags: DIFlagPrototyped, spFlags: 0)
!783 = !DISubroutineType(types: !784)
!784 = !{!111, !412}
!785 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !786, file: !607, line: 1135)
!786 = !DISubprogram(name: "llrintf", scope: !604, file: !604, line: 319, type: !787, flags: DIFlagPrototyped, spFlags: 0)
!787 = !DISubroutineType(types: !788)
!788 = !{!111, !548}
!789 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !790, file: !607, line: 1136)
!790 = !DISubprogram(name: "llrintl", scope: !604, file: !604, line: 319, type: !791, flags: DIFlagPrototyped, spFlags: 0)
!791 = !DISubroutineType(types: !792)
!792 = !{!111, !553}
!793 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !794, file: !607, line: 1138)
!794 = !DISubprogram(name: "llround", scope: !604, file: !604, line: 325, type: !783, flags: DIFlagPrototyped, spFlags: 0)
!795 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !796, file: !607, line: 1139)
!796 = !DISubprogram(name: "llroundf", scope: !604, file: !604, line: 325, type: !787, flags: DIFlagPrototyped, spFlags: 0)
!797 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !798, file: !607, line: 1140)
!798 = !DISubprogram(name: "llroundl", scope: !604, file: !604, line: 325, type: !791, flags: DIFlagPrototyped, spFlags: 0)
!799 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !800, file: !607, line: 1143)
!800 = !DISubprogram(name: "log1p", scope: !604, file: !604, line: 122, type: !605, flags: DIFlagPrototyped, spFlags: 0)
!801 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !802, file: !607, line: 1144)
!802 = !DISubprogram(name: "log1pf", scope: !604, file: !604, line: 122, type: !669, flags: DIFlagPrototyped, spFlags: 0)
!803 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !804, file: !607, line: 1145)
!804 = !DISubprogram(name: "log1pl", scope: !604, file: !604, line: 122, type: !673, flags: DIFlagPrototyped, spFlags: 0)
!805 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !806, file: !607, line: 1147)
!806 = !DISubprogram(name: "log2", scope: !604, file: !604, line: 133, type: !605, flags: DIFlagPrototyped, spFlags: 0)
!807 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !808, file: !607, line: 1148)
!808 = !DISubprogram(name: "log2f", scope: !604, file: !604, line: 133, type: !669, flags: DIFlagPrototyped, spFlags: 0)
!809 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !810, file: !607, line: 1149)
!810 = !DISubprogram(name: "log2l", scope: !604, file: !604, line: 133, type: !673, flags: DIFlagPrototyped, spFlags: 0)
!811 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !812, file: !607, line: 1151)
!812 = !DISubprogram(name: "logb", scope: !604, file: !604, line: 125, type: !605, flags: DIFlagPrototyped, spFlags: 0)
!813 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !814, file: !607, line: 1152)
!814 = !DISubprogram(name: "logbf", scope: !604, file: !604, line: 125, type: !669, flags: DIFlagPrototyped, spFlags: 0)
!815 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !816, file: !607, line: 1153)
!816 = !DISubprogram(name: "logbl", scope: !604, file: !604, line: 125, type: !673, flags: DIFlagPrototyped, spFlags: 0)
!817 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !818, file: !607, line: 1155)
!818 = !DISubprogram(name: "lrint", scope: !604, file: !604, line: 317, type: !819, flags: DIFlagPrototyped, spFlags: 0)
!819 = !DISubroutineType(types: !820)
!820 = !{!77, !412}
!821 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !822, file: !607, line: 1156)
!822 = !DISubprogram(name: "lrintf", scope: !604, file: !604, line: 317, type: !823, flags: DIFlagPrototyped, spFlags: 0)
!823 = !DISubroutineType(types: !824)
!824 = !{!77, !548}
!825 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !826, file: !607, line: 1157)
!826 = !DISubprogram(name: "lrintl", scope: !604, file: !604, line: 317, type: !827, flags: DIFlagPrototyped, spFlags: 0)
!827 = !DISubroutineType(types: !828)
!828 = !{!77, !553}
!829 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !830, file: !607, line: 1159)
!830 = !DISubprogram(name: "lround", scope: !604, file: !604, line: 323, type: !819, flags: DIFlagPrototyped, spFlags: 0)
!831 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !832, file: !607, line: 1160)
!832 = !DISubprogram(name: "lroundf", scope: !604, file: !604, line: 323, type: !823, flags: DIFlagPrototyped, spFlags: 0)
!833 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !834, file: !607, line: 1161)
!834 = !DISubprogram(name: "lroundl", scope: !604, file: !604, line: 323, type: !827, flags: DIFlagPrototyped, spFlags: 0)
!835 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !836, file: !607, line: 1163)
!836 = !DISubprogram(name: "nan", scope: !604, file: !604, line: 203, type: !410, flags: DIFlagPrototyped, spFlags: 0)
!837 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !838, file: !607, line: 1164)
!838 = !DISubprogram(name: "nanf", scope: !604, file: !604, line: 203, type: !839, flags: DIFlagPrototyped, spFlags: 0)
!839 = !DISubroutineType(types: !840)
!840 = !{!548, !326}
!841 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !842, file: !607, line: 1165)
!842 = !DISubprogram(name: "nanl", scope: !604, file: !604, line: 203, type: !843, flags: DIFlagPrototyped, spFlags: 0)
!843 = !DISubroutineType(types: !844)
!844 = !{!553, !326}
!845 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !846, file: !607, line: 1167)
!846 = !DISubprogram(name: "nearbyint", scope: !604, file: !604, line: 297, type: !605, flags: DIFlagPrototyped, spFlags: 0)
!847 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !848, file: !607, line: 1168)
!848 = !DISubprogram(name: "nearbyintf", scope: !604, file: !604, line: 297, type: !669, flags: DIFlagPrototyped, spFlags: 0)
!849 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !850, file: !607, line: 1169)
!850 = !DISubprogram(name: "nearbyintl", scope: !604, file: !604, line: 297, type: !673, flags: DIFlagPrototyped, spFlags: 0)
!851 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !852, file: !607, line: 1171)
!852 = !DISubprogram(name: "nextafter", scope: !604, file: !604, line: 262, type: !614, flags: DIFlagPrototyped, spFlags: 0)
!853 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !854, file: !607, line: 1172)
!854 = !DISubprogram(name: "nextafterf", scope: !604, file: !604, line: 262, type: !697, flags: DIFlagPrototyped, spFlags: 0)
!855 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !856, file: !607, line: 1173)
!856 = !DISubprogram(name: "nextafterl", scope: !604, file: !604, line: 262, type: !701, flags: DIFlagPrototyped, spFlags: 0)
!857 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !858, file: !607, line: 1175)
!858 = !DISubprogram(name: "nexttoward", scope: !604, file: !604, line: 264, type: !859, flags: DIFlagPrototyped, spFlags: 0)
!859 = !DISubroutineType(types: !860)
!860 = !{!412, !412, !553}
!861 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !862, file: !607, line: 1176)
!862 = !DISubprogram(name: "nexttowardf", scope: !604, file: !604, line: 264, type: !863, flags: DIFlagPrototyped, spFlags: 0)
!863 = !DISubroutineType(types: !864)
!864 = !{!548, !548, !553}
!865 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !866, file: !607, line: 1177)
!866 = !DISubprogram(name: "nexttowardl", scope: !604, file: !604, line: 264, type: !701, flags: DIFlagPrototyped, spFlags: 0)
!867 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !868, file: !607, line: 1179)
!868 = !DISubprogram(name: "remainder", scope: !604, file: !604, line: 275, type: !614, flags: DIFlagPrototyped, spFlags: 0)
!869 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !870, file: !607, line: 1180)
!870 = !DISubprogram(name: "remainderf", scope: !604, file: !604, line: 275, type: !697, flags: DIFlagPrototyped, spFlags: 0)
!871 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !872, file: !607, line: 1181)
!872 = !DISubprogram(name: "remainderl", scope: !604, file: !604, line: 275, type: !701, flags: DIFlagPrototyped, spFlags: 0)
!873 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !874, file: !607, line: 1183)
!874 = !DISubprogram(name: "remquo", scope: !604, file: !604, line: 310, type: !875, flags: DIFlagPrototyped, spFlags: 0)
!875 = !DISubroutineType(types: !876)
!876 = !{!412, !412, !412, !634}
!877 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !878, file: !607, line: 1184)
!878 = !DISubprogram(name: "remquof", scope: !604, file: !604, line: 310, type: !879, flags: DIFlagPrototyped, spFlags: 0)
!879 = !DISubroutineType(types: !880)
!880 = !{!548, !548, !548, !634}
!881 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !882, file: !607, line: 1185)
!882 = !DISubprogram(name: "remquol", scope: !604, file: !604, line: 310, type: !883, flags: DIFlagPrototyped, spFlags: 0)
!883 = !DISubroutineType(types: !884)
!884 = !{!553, !553, !553, !634}
!885 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !886, file: !607, line: 1187)
!886 = !DISubprogram(name: "rint", scope: !604, file: !604, line: 259, type: !605, flags: DIFlagPrototyped, spFlags: 0)
!887 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !888, file: !607, line: 1188)
!888 = !DISubprogram(name: "rintf", scope: !604, file: !604, line: 259, type: !669, flags: DIFlagPrototyped, spFlags: 0)
!889 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !890, file: !607, line: 1189)
!890 = !DISubprogram(name: "rintl", scope: !604, file: !604, line: 259, type: !673, flags: DIFlagPrototyped, spFlags: 0)
!891 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !892, file: !607, line: 1191)
!892 = !DISubprogram(name: "round", scope: !604, file: !604, line: 301, type: !605, flags: DIFlagPrototyped, spFlags: 0)
!893 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !894, file: !607, line: 1192)
!894 = !DISubprogram(name: "roundf", scope: !604, file: !604, line: 301, type: !669, flags: DIFlagPrototyped, spFlags: 0)
!895 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !896, file: !607, line: 1193)
!896 = !DISubprogram(name: "roundl", scope: !604, file: !604, line: 301, type: !673, flags: DIFlagPrototyped, spFlags: 0)
!897 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !898, file: !607, line: 1195)
!898 = !DISubprogram(name: "scalbln", scope: !604, file: !604, line: 293, type: !899, flags: DIFlagPrototyped, spFlags: 0)
!899 = !DISubroutineType(types: !900)
!900 = !{!412, !412, !77}
!901 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !902, file: !607, line: 1196)
!902 = !DISubprogram(name: "scalblnf", scope: !604, file: !604, line: 293, type: !903, flags: DIFlagPrototyped, spFlags: 0)
!903 = !DISubroutineType(types: !904)
!904 = !{!548, !548, !77}
!905 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !906, file: !607, line: 1197)
!906 = !DISubprogram(name: "scalblnl", scope: !604, file: !604, line: 293, type: !907, flags: DIFlagPrototyped, spFlags: 0)
!907 = !DISubroutineType(types: !908)
!908 = !{!553, !553, !77}
!909 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !910, file: !607, line: 1199)
!910 = !DISubprogram(name: "scalbn", scope: !604, file: !604, line: 279, type: !637, flags: DIFlagPrototyped, spFlags: 0)
!911 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !912, file: !607, line: 1200)
!912 = !DISubprogram(name: "scalbnf", scope: !604, file: !604, line: 279, type: !913, flags: DIFlagPrototyped, spFlags: 0)
!913 = !DISubroutineType(types: !914)
!914 = !{!548, !548, !34}
!915 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !916, file: !607, line: 1201)
!916 = !DISubprogram(name: "scalbnl", scope: !604, file: !604, line: 279, type: !917, flags: DIFlagPrototyped, spFlags: 0)
!917 = !DISubroutineType(types: !918)
!918 = !{!553, !553, !34}
!919 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !920, file: !607, line: 1203)
!920 = !DISubprogram(name: "tgamma", scope: !604, file: !604, line: 238, type: !605, flags: DIFlagPrototyped, spFlags: 0)
!921 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !922, file: !607, line: 1204)
!922 = !DISubprogram(name: "tgammaf", scope: !604, file: !604, line: 238, type: !669, flags: DIFlagPrototyped, spFlags: 0)
!923 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !924, file: !607, line: 1205)
!924 = !DISubprogram(name: "tgammal", scope: !604, file: !604, line: 238, type: !673, flags: DIFlagPrototyped, spFlags: 0)
!925 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !926, file: !607, line: 1207)
!926 = !DISubprogram(name: "trunc", scope: !604, file: !604, line: 305, type: !605, flags: DIFlagPrototyped, spFlags: 0)
!927 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !928, file: !607, line: 1208)
!928 = !DISubprogram(name: "truncf", scope: !604, file: !604, line: 305, type: !669, flags: DIFlagPrototyped, spFlags: 0)
!929 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !930, file: !607, line: 1209)
!930 = !DISubprogram(name: "truncl", scope: !604, file: !604, line: 305, type: !673, flags: DIFlagPrototyped, spFlags: 0)
!931 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !932, entity: !933, file: !934, line: 58)
!932 = !DINamespace(name: "__gnu_debug", scope: null)
!933 = !DINamespace(name: "__debug", scope: !2)
!934 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/debug/debug.h", directory: "", checksumkind: CSK_MD5, checksum: "982c0103e1e5f86b0818efdfc5273c3c")
!935 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !574, file: !936, line: 38)
!936 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/math.h", directory: "", checksumkind: CSK_MD5, checksum: "a990cded20a6fb8dad866460b8c40922")
!937 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !22, entity: !938, file: !936, line: 54)
!938 = !DISubprogram(name: "modf", linkageName: "_ZSt4modfePe", scope: !2, file: !607, line: 380, type: !939, flags: DIFlagPrototyped, spFlags: 0)
!939 = !DISubroutineType(types: !940)
!940 = !{!553, !553, !941}
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!942 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !943, file: !956, line: 64)
!943 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !944, line: 6, baseType: !945)
!944 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!945 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !946, line: 21, baseType: !947)
!946 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !946, line: 13, size: 64, flags: DIFlagTypePassByValue, elements: !948, identifier: "_ZTS11__mbstate_t")
!948 = !{!949, !950}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !947, file: !946, line: 15, baseType: !34, size: 32)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !947, file: !946, line: 20, baseType: !951, size: 32, offset: 32)
!951 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !947, file: !946, line: 16, size: 32, flags: DIFlagTypePassByValue, elements: !952, identifier: "_ZTSN11__mbstate_tUt_E")
!952 = !{!953, !954}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !951, file: !946, line: 18, baseType: !57, size: 32)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !951, file: !946, line: 19, baseType: !955, size: 32)
!955 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 32, elements: !134)
!956 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cwchar", directory: "")
!957 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !958, file: !956, line: 141)
!958 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !959, line: 20, baseType: !57)
!959 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!960 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !961, file: !956, line: 143)
!961 = !DISubprogram(name: "btowc", scope: !962, file: !962, line: 285, type: !963, flags: DIFlagPrototyped, spFlags: 0)
!962 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!963 = !DISubroutineType(types: !964)
!964 = !{!958, !34}
!965 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !966, file: !956, line: 144)
!966 = !DISubprogram(name: "fgetwc", scope: !962, file: !962, line: 744, type: !967, flags: DIFlagPrototyped, spFlags: 0)
!967 = !DISubroutineType(types: !968)
!968 = !{!958, !969}
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !971, line: 5, baseType: !972)
!971 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "72a8fe90981f484acae7c6f3dfc5c2b7")
!972 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !973, line: 49, size: 1728, flags: DIFlagFwdDecl, identifier: "_ZTS8_IO_FILE")
!973 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!974 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !975, file: !956, line: 145)
!975 = !DISubprogram(name: "fgetws", scope: !962, file: !962, line: 773, type: !976, flags: DIFlagPrototyped, spFlags: 0)
!976 = !DISubroutineType(types: !977)
!977 = !{!466, !465, !34, !978}
!978 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !969)
!979 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !980, file: !956, line: 146)
!980 = !DISubprogram(name: "fputwc", scope: !962, file: !962, line: 758, type: !981, flags: DIFlagPrototyped, spFlags: 0)
!981 = !DISubroutineType(types: !982)
!982 = !{!958, !467, !969}
!983 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !984, file: !956, line: 147)
!984 = !DISubprogram(name: "fputws", scope: !962, file: !962, line: 780, type: !985, flags: DIFlagPrototyped, spFlags: 0)
!985 = !DISubroutineType(types: !986)
!986 = !{!34, !508, !978}
!987 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !988, file: !956, line: 148)
!988 = !DISubprogram(name: "fwide", scope: !962, file: !962, line: 588, type: !989, flags: DIFlagPrototyped, spFlags: 0)
!989 = !DISubroutineType(types: !990)
!990 = !{!34, !969, !34}
!991 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !992, file: !956, line: 149)
!992 = !DISubprogram(name: "fwprintf", scope: !962, file: !962, line: 595, type: !993, flags: DIFlagPrototyped, spFlags: 0)
!993 = !DISubroutineType(types: !994)
!994 = !{!34, !978, !508, null}
!995 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !996, file: !956, line: 150)
!996 = !DISubprogram(name: "fwscanf", linkageName: "__isoc99_fwscanf", scope: !962, file: !962, line: 657, type: !993, flags: DIFlagPrototyped, spFlags: 0)
!997 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !998, file: !956, line: 151)
!998 = !DISubprogram(name: "getwc", scope: !962, file: !962, line: 745, type: !967, flags: DIFlagPrototyped, spFlags: 0)
!999 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1000, file: !956, line: 152)
!1000 = !DISubprogram(name: "getwchar", scope: !962, file: !962, line: 751, type: !1001, flags: DIFlagPrototyped, spFlags: 0)
!1001 = !DISubroutineType(types: !1002)
!1002 = !{!958}
!1003 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1004, file: !956, line: 153)
!1004 = !DISubprogram(name: "mbrlen", scope: !962, file: !962, line: 308, type: !1005, flags: DIFlagPrototyped, spFlags: 0)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{!298, !325, !298, !1007}
!1007 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1008)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!1009 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1010, file: !956, line: 154)
!1010 = !DISubprogram(name: "mbrtowc", scope: !962, file: !962, line: 297, type: !1011, flags: DIFlagPrototyped, spFlags: 0)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{!298, !465, !325, !298, !1007}
!1013 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1014, file: !956, line: 155)
!1014 = !DISubprogram(name: "mbsinit", scope: !962, file: !962, line: 293, type: !1015, flags: DIFlagPrototyped, spFlags: 0)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{!34, !1017}
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !943)
!1019 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1020, file: !956, line: 156)
!1020 = !DISubprogram(name: "mbsrtowcs", scope: !962, file: !962, line: 338, type: !1021, flags: DIFlagPrototyped, spFlags: 0)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{!298, !465, !1023, !298, !1007}
!1023 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1024)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!1025 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1026, file: !956, line: 157)
!1026 = !DISubprogram(name: "putwc", scope: !962, file: !962, line: 759, type: !981, flags: DIFlagPrototyped, spFlags: 0)
!1027 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1028, file: !956, line: 158)
!1028 = !DISubprogram(name: "putwchar", scope: !962, file: !962, line: 765, type: !1029, flags: DIFlagPrototyped, spFlags: 0)
!1029 = !DISubroutineType(types: !1030)
!1030 = !{!958, !467}
!1031 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1032, file: !956, line: 160)
!1032 = !DISubprogram(name: "swprintf", scope: !962, file: !962, line: 605, type: !1033, flags: DIFlagPrototyped, spFlags: 0)
!1033 = !DISubroutineType(types: !1034)
!1034 = !{!34, !465, !298, !508, null}
!1035 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1036, file: !956, line: 162)
!1036 = !DISubprogram(name: "swscanf", linkageName: "__isoc99_swscanf", scope: !962, file: !962, line: 664, type: !1037, flags: DIFlagPrototyped, spFlags: 0)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{!34, !508, !508, null}
!1039 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1040, file: !956, line: 163)
!1040 = !DISubprogram(name: "ungetwc", scope: !962, file: !962, line: 788, type: !1041, flags: DIFlagPrototyped, spFlags: 0)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!958, !958, !969}
!1043 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1044, file: !956, line: 164)
!1044 = !DISubprogram(name: "vfwprintf", scope: !962, file: !962, line: 613, type: !1045, flags: DIFlagPrototyped, spFlags: 0)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!34, !978, !508, !1047}
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, flags: DIFlagTypePassByValue, elements: !1049, identifier: "_ZTS13__va_list_tag")
!1049 = !{!1050, !1052, !1053, !1054}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1048, file: !1051, baseType: !57, size: 32)
!1051 = !DIFile(filename: "RTTL/common/RTThread.cxx", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src")
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1048, file: !1051, baseType: !57, size: 32, offset: 32)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1048, file: !1051, baseType: !163, size: 64, offset: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1048, file: !1051, baseType: !163, size: 64, offset: 128)
!1055 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1056, file: !956, line: 166)
!1056 = !DISubprogram(name: "vfwscanf", linkageName: "__isoc99_vfwscanf", scope: !962, file: !962, line: 711, type: !1045, flags: DIFlagPrototyped, spFlags: 0)
!1057 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1058, file: !956, line: 169)
!1058 = !DISubprogram(name: "vswprintf", scope: !962, file: !962, line: 626, type: !1059, flags: DIFlagPrototyped, spFlags: 0)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!34, !465, !298, !508, !1047}
!1061 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1062, file: !956, line: 172)
!1062 = !DISubprogram(name: "vswscanf", linkageName: "__isoc99_vswscanf", scope: !962, file: !962, line: 718, type: !1063, flags: DIFlagPrototyped, spFlags: 0)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{!34, !508, !508, !1047}
!1065 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1066, file: !956, line: 174)
!1066 = !DISubprogram(name: "vwprintf", scope: !962, file: !962, line: 621, type: !1067, flags: DIFlagPrototyped, spFlags: 0)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{!34, !508, !1047}
!1069 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1070, file: !956, line: 176)
!1070 = !DISubprogram(name: "vwscanf", linkageName: "__isoc99_vwscanf", scope: !962, file: !962, line: 715, type: !1067, flags: DIFlagPrototyped, spFlags: 0)
!1071 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1072, file: !956, line: 178)
!1072 = !DISubprogram(name: "wcrtomb", scope: !962, file: !962, line: 302, type: !1073, flags: DIFlagPrototyped, spFlags: 0)
!1073 = !DISubroutineType(types: !1074)
!1074 = !{!298, !324, !467, !1007}
!1075 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1076, file: !956, line: 179)
!1076 = !DISubprogram(name: "wcscat", scope: !962, file: !962, line: 97, type: !1077, flags: DIFlagPrototyped, spFlags: 0)
!1077 = !DISubroutineType(types: !1078)
!1078 = !{!466, !465, !508}
!1079 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1080, file: !956, line: 180)
!1080 = !DISubprogram(name: "wcscmp", scope: !962, file: !962, line: 106, type: !1081, flags: DIFlagPrototyped, spFlags: 0)
!1081 = !DISubroutineType(types: !1082)
!1082 = !{!34, !509, !509}
!1083 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1084, file: !956, line: 181)
!1084 = !DISubprogram(name: "wcscoll", scope: !962, file: !962, line: 131, type: !1081, flags: DIFlagPrototyped, spFlags: 0)
!1085 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1086, file: !956, line: 182)
!1086 = !DISubprogram(name: "wcscpy", scope: !962, file: !962, line: 87, type: !1077, flags: DIFlagPrototyped, spFlags: 0)
!1087 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1088, file: !956, line: 183)
!1088 = !DISubprogram(name: "wcscspn", scope: !962, file: !962, line: 188, type: !1089, flags: DIFlagPrototyped, spFlags: 0)
!1089 = !DISubroutineType(types: !1090)
!1090 = !{!298, !509, !509}
!1091 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1092, file: !956, line: 184)
!1092 = !DISubprogram(name: "wcsftime", scope: !962, file: !962, line: 852, type: !1093, flags: DIFlagPrototyped, spFlags: 0)
!1093 = !DISubroutineType(types: !1094)
!1094 = !{!298, !465, !298, !508, !1095}
!1095 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1096)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1097 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1098)
!1098 = !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !962, line: 83, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS2tm")
!1099 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1100, file: !956, line: 185)
!1100 = !DISubprogram(name: "wcslen", scope: !962, file: !962, line: 223, type: !1101, flags: DIFlagPrototyped, spFlags: 0)
!1101 = !DISubroutineType(types: !1102)
!1102 = !{!298, !509}
!1103 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1104, file: !956, line: 186)
!1104 = !DISubprogram(name: "wcsncat", scope: !962, file: !962, line: 101, type: !1105, flags: DIFlagPrototyped, spFlags: 0)
!1105 = !DISubroutineType(types: !1106)
!1106 = !{!466, !465, !508, !298}
!1107 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1108, file: !956, line: 187)
!1108 = !DISubprogram(name: "wcsncmp", scope: !962, file: !962, line: 109, type: !1109, flags: DIFlagPrototyped, spFlags: 0)
!1109 = !DISubroutineType(types: !1110)
!1110 = !{!34, !509, !509, !298}
!1111 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1112, file: !956, line: 188)
!1112 = !DISubprogram(name: "wcsncpy", scope: !962, file: !962, line: 92, type: !1105, flags: DIFlagPrototyped, spFlags: 0)
!1113 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1114, file: !956, line: 189)
!1114 = !DISubprogram(name: "wcsrtombs", scope: !962, file: !962, line: 344, type: !1115, flags: DIFlagPrototyped, spFlags: 0)
!1115 = !DISubroutineType(types: !1116)
!1116 = !{!298, !324, !1117, !298, !1007}
!1117 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1118)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!1119 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1120, file: !956, line: 190)
!1120 = !DISubprogram(name: "wcsspn", scope: !962, file: !962, line: 192, type: !1089, flags: DIFlagPrototyped, spFlags: 0)
!1121 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1122, file: !956, line: 191)
!1122 = !DISubprogram(name: "wcstod", scope: !962, file: !962, line: 378, type: !1123, flags: DIFlagPrototyped, spFlags: 0)
!1123 = !DISubroutineType(types: !1124)
!1124 = !{!412, !508, !1125}
!1125 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1126)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!1127 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1128, file: !956, line: 193)
!1128 = !DISubprogram(name: "wcstof", scope: !962, file: !962, line: 383, type: !1129, flags: DIFlagPrototyped, spFlags: 0)
!1129 = !DISubroutineType(types: !1130)
!1130 = !{!548, !508, !1125}
!1131 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1132, file: !956, line: 195)
!1132 = !DISubprogram(name: "wcstok", scope: !962, file: !962, line: 218, type: !1133, flags: DIFlagPrototyped, spFlags: 0)
!1133 = !DISubroutineType(types: !1134)
!1134 = !{!466, !465, !508, !1125}
!1135 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1136, file: !956, line: 196)
!1136 = !DISubprogram(name: "wcstol", scope: !962, file: !962, line: 429, type: !1137, flags: DIFlagPrototyped, spFlags: 0)
!1137 = !DISubroutineType(types: !1138)
!1138 = !{!77, !508, !1125, !34}
!1139 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1140, file: !956, line: 197)
!1140 = !DISubprogram(name: "wcstoul", scope: !962, file: !962, line: 434, type: !1141, flags: DIFlagPrototyped, spFlags: 0)
!1141 = !DISubroutineType(types: !1142)
!1142 = !{!128, !508, !1125, !34}
!1143 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1144, file: !956, line: 198)
!1144 = !DISubprogram(name: "wcsxfrm", scope: !962, file: !962, line: 135, type: !1145, flags: DIFlagPrototyped, spFlags: 0)
!1145 = !DISubroutineType(types: !1146)
!1146 = !{!298, !465, !508, !298}
!1147 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1148, file: !956, line: 199)
!1148 = !DISubprogram(name: "wctob", scope: !962, file: !962, line: 289, type: !1149, flags: DIFlagPrototyped, spFlags: 0)
!1149 = !DISubroutineType(types: !1150)
!1150 = !{!34, !958}
!1151 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1152, file: !956, line: 200)
!1152 = !DISubprogram(name: "wmemcmp", scope: !962, file: !962, line: 259, type: !1109, flags: DIFlagPrototyped, spFlags: 0)
!1153 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1154, file: !956, line: 201)
!1154 = !DISubprogram(name: "wmemcpy", scope: !962, file: !962, line: 263, type: !1105, flags: DIFlagPrototyped, spFlags: 0)
!1155 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1156, file: !956, line: 202)
!1156 = !DISubprogram(name: "wmemmove", scope: !962, file: !962, line: 268, type: !1157, flags: DIFlagPrototyped, spFlags: 0)
!1157 = !DISubroutineType(types: !1158)
!1158 = !{!466, !466, !509, !298}
!1159 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1160, file: !956, line: 203)
!1160 = !DISubprogram(name: "wmemset", scope: !962, file: !962, line: 272, type: !1161, flags: DIFlagPrototyped, spFlags: 0)
!1161 = !DISubroutineType(types: !1162)
!1162 = !{!466, !466, !467, !298}
!1163 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1164, file: !956, line: 204)
!1164 = !DISubprogram(name: "wprintf", scope: !962, file: !962, line: 602, type: !1165, flags: DIFlagPrototyped, spFlags: 0)
!1165 = !DISubroutineType(types: !1166)
!1166 = !{!34, !508, null}
!1167 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1168, file: !956, line: 205)
!1168 = !DISubprogram(name: "wscanf", linkageName: "__isoc99_wscanf", scope: !962, file: !962, line: 661, type: !1165, flags: DIFlagPrototyped, spFlags: 0)
!1169 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1170, file: !956, line: 206)
!1170 = !DISubprogram(name: "wcschr", scope: !962, file: !962, line: 165, type: !1171, flags: DIFlagPrototyped, spFlags: 0)
!1171 = !DISubroutineType(types: !1172)
!1172 = !{!466, !509, !467}
!1173 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1174, file: !956, line: 207)
!1174 = !DISubprogram(name: "wcspbrk", scope: !962, file: !962, line: 202, type: !1175, flags: DIFlagPrototyped, spFlags: 0)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{!466, !509, !509}
!1177 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1178, file: !956, line: 208)
!1178 = !DISubprogram(name: "wcsrchr", scope: !962, file: !962, line: 175, type: !1171, flags: DIFlagPrototyped, spFlags: 0)
!1179 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1180, file: !956, line: 209)
!1180 = !DISubprogram(name: "wcsstr", scope: !962, file: !962, line: 213, type: !1175, flags: DIFlagPrototyped, spFlags: 0)
!1181 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1182, file: !956, line: 210)
!1182 = !DISubprogram(name: "wmemchr", scope: !962, file: !962, line: 254, type: !1183, flags: DIFlagPrototyped, spFlags: 0)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{!466, !509, !467, !298}
!1185 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !516, entity: !1186, file: !956, line: 251)
!1186 = !DISubprogram(name: "wcstold", scope: !962, file: !962, line: 385, type: !1187, flags: DIFlagPrototyped, spFlags: 0)
!1187 = !DISubroutineType(types: !1188)
!1188 = !{!553, !508, !1125}
!1189 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !516, entity: !1190, file: !956, line: 260)
!1190 = !DISubprogram(name: "wcstoll", scope: !962, file: !962, line: 442, type: !1191, flags: DIFlagPrototyped, spFlags: 0)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{!111, !508, !1125, !34}
!1193 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !516, entity: !1194, file: !956, line: 261)
!1194 = !DISubprogram(name: "wcstoull", scope: !962, file: !962, line: 449, type: !1195, flags: DIFlagPrototyped, spFlags: 0)
!1195 = !DISubroutineType(types: !1196)
!1196 = !{!91, !508, !1125, !34}
!1197 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1186, file: !956, line: 267)
!1198 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1190, file: !956, line: 268)
!1199 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1194, file: !956, line: 269)
!1200 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1128, file: !956, line: 283)
!1201 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1056, file: !956, line: 286)
!1202 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1062, file: !956, line: 289)
!1203 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1070, file: !956, line: 292)
!1204 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1186, file: !956, line: 296)
!1205 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1190, file: !956, line: 297)
!1206 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1194, file: !956, line: 298)
!1207 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1208, file: !1209, line: 68)
!1208 = !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !1210, file: !1209, line: 90, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!1209 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/exception_ptr.h", directory: "", checksumkind: CSK_MD5, checksum: "ed433011c81450fc2dabd9aa8a29a038")
!1210 = !DINamespace(name: "__exception_ptr", scope: !2)
!1211 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !1210, entity: !1212, file: !1209, line: 84)
!1212 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !2, file: !1209, line: 80, type: !1213, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!1213 = !DISubroutineType(types: !1214)
!1214 = !{null, !1208}
!1215 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1216, file: !1221, line: 47)
!1216 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !1217, line: 24, baseType: !1218)
!1217 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!1218 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !1219, line: 37, baseType: !1220)
!1219 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!1220 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1221 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cstdint", directory: "")
!1222 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1223, file: !1221, line: 48)
!1223 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !1217, line: 25, baseType: !1224)
!1224 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !1219, line: 39, baseType: !62)
!1225 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1226, file: !1221, line: 49)
!1226 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !1217, line: 26, baseType: !1227)
!1227 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !1219, line: 41, baseType: !34)
!1228 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1229, file: !1221, line: 50)
!1229 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !1217, line: 27, baseType: !1230)
!1230 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !1219, line: 44, baseType: !77)
!1231 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1232, file: !1221, line: 52)
!1232 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !1233, line: 58, baseType: !1220)
!1233 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!1234 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1235, file: !1221, line: 53)
!1235 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !1233, line: 60, baseType: !77)
!1236 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1237, file: !1221, line: 54)
!1237 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !1233, line: 61, baseType: !77)
!1238 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1239, file: !1221, line: 55)
!1239 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !1233, line: 62, baseType: !77)
!1240 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1241, file: !1221, line: 57)
!1241 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !1233, line: 43, baseType: !1242)
!1242 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least8_t", file: !1219, line: 52, baseType: !1218)
!1243 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1244, file: !1221, line: 58)
!1244 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !1233, line: 44, baseType: !1245)
!1245 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least16_t", file: !1219, line: 54, baseType: !1224)
!1246 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1247, file: !1221, line: 59)
!1247 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !1233, line: 45, baseType: !1248)
!1248 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least32_t", file: !1219, line: 56, baseType: !1227)
!1249 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1250, file: !1221, line: 60)
!1250 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !1233, line: 46, baseType: !1251)
!1251 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least64_t", file: !1219, line: 58, baseType: !1230)
!1252 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1253, file: !1221, line: 62)
!1253 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !1233, line: 101, baseType: !1254)
!1254 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1219, line: 72, baseType: !77)
!1255 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1256, file: !1221, line: 63)
!1256 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !1233, line: 87, baseType: !77)
!1257 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1258, file: !1221, line: 65)
!1258 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !1259, line: 24, baseType: !1260)
!1259 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!1260 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !1219, line: 38, baseType: !1261)
!1261 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1262 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1263, file: !1221, line: 66)
!1263 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !1259, line: 25, baseType: !1264)
!1264 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !1219, line: 40, baseType: !1265)
!1265 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1266 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1267, file: !1221, line: 67)
!1267 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !1259, line: 26, baseType: !1268)
!1268 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !1219, line: 42, baseType: !57)
!1269 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1270, file: !1221, line: 68)
!1270 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !1259, line: 27, baseType: !1271)
!1271 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !1219, line: 45, baseType: !128)
!1272 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1273, file: !1221, line: 70)
!1273 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !1233, line: 71, baseType: !1261)
!1274 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1275, file: !1221, line: 71)
!1275 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !1233, line: 73, baseType: !128)
!1276 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1277, file: !1221, line: 72)
!1277 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !1233, line: 74, baseType: !128)
!1278 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1279, file: !1221, line: 73)
!1279 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !1233, line: 75, baseType: !128)
!1280 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1281, file: !1221, line: 75)
!1281 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !1233, line: 49, baseType: !1282)
!1282 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least8_t", file: !1219, line: 53, baseType: !1260)
!1283 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1284, file: !1221, line: 76)
!1284 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !1233, line: 50, baseType: !1285)
!1285 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least16_t", file: !1219, line: 55, baseType: !1264)
!1286 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1287, file: !1221, line: 77)
!1287 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !1233, line: 51, baseType: !1288)
!1288 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !1219, line: 57, baseType: !1268)
!1289 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1290, file: !1221, line: 78)
!1290 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !1233, line: 52, baseType: !1291)
!1291 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least64_t", file: !1219, line: 59, baseType: !1271)
!1292 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1293, file: !1221, line: 80)
!1293 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1233, line: 102, baseType: !1294)
!1294 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1219, line: 73, baseType: !128)
!1295 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1296, file: !1221, line: 81)
!1296 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !1233, line: 90, baseType: !128)
!1297 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1298, file: !1300, line: 53)
!1298 = !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !1299, line: 51, size: 768, flags: DIFlagFwdDecl, identifier: "_ZTS5lconv")
!1299 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1300 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/clocale", directory: "")
!1301 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1302, file: !1300, line: 54)
!1302 = !DISubprogram(name: "setlocale", scope: !1299, file: !1299, line: 122, type: !1303, flags: DIFlagPrototyped, spFlags: 0)
!1303 = !DISubroutineType(types: !1304)
!1304 = !{!323, !34, !326}
!1305 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1306, file: !1300, line: 55)
!1306 = !DISubprogram(name: "localeconv", scope: !1299, file: !1299, line: 125, type: !1307, flags: DIFlagPrototyped, spFlags: 0)
!1307 = !DISubroutineType(types: !1308)
!1308 = !{!1309}
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1310 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1311, file: !1313, line: 64)
!1311 = !DISubprogram(name: "isalnum", scope: !1312, file: !1312, line: 108, type: !380, flags: DIFlagPrototyped, spFlags: 0)
!1312 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!1313 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cctype", directory: "")
!1314 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1315, file: !1313, line: 65)
!1315 = !DISubprogram(name: "isalpha", scope: !1312, file: !1312, line: 109, type: !380, flags: DIFlagPrototyped, spFlags: 0)
!1316 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1317, file: !1313, line: 66)
!1317 = !DISubprogram(name: "iscntrl", scope: !1312, file: !1312, line: 110, type: !380, flags: DIFlagPrototyped, spFlags: 0)
!1318 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1319, file: !1313, line: 67)
!1319 = !DISubprogram(name: "isdigit", scope: !1312, file: !1312, line: 111, type: !380, flags: DIFlagPrototyped, spFlags: 0)
!1320 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1321, file: !1313, line: 68)
!1321 = !DISubprogram(name: "isgraph", scope: !1312, file: !1312, line: 113, type: !380, flags: DIFlagPrototyped, spFlags: 0)
!1322 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1323, file: !1313, line: 69)
!1323 = !DISubprogram(name: "islower", scope: !1312, file: !1312, line: 112, type: !380, flags: DIFlagPrototyped, spFlags: 0)
!1324 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1325, file: !1313, line: 70)
!1325 = !DISubprogram(name: "isprint", scope: !1312, file: !1312, line: 114, type: !380, flags: DIFlagPrototyped, spFlags: 0)
!1326 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1327, file: !1313, line: 71)
!1327 = !DISubprogram(name: "ispunct", scope: !1312, file: !1312, line: 115, type: !380, flags: DIFlagPrototyped, spFlags: 0)
!1328 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1329, file: !1313, line: 72)
!1329 = !DISubprogram(name: "isspace", scope: !1312, file: !1312, line: 116, type: !380, flags: DIFlagPrototyped, spFlags: 0)
!1330 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1331, file: !1313, line: 73)
!1331 = !DISubprogram(name: "isupper", scope: !1312, file: !1312, line: 117, type: !380, flags: DIFlagPrototyped, spFlags: 0)
!1332 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1333, file: !1313, line: 74)
!1333 = !DISubprogram(name: "isxdigit", scope: !1312, file: !1312, line: 118, type: !380, flags: DIFlagPrototyped, spFlags: 0)
!1334 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1335, file: !1313, line: 75)
!1335 = !DISubprogram(name: "tolower", scope: !1312, file: !1312, line: 122, type: !380, flags: DIFlagPrototyped, spFlags: 0)
!1336 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1337, file: !1313, line: 76)
!1337 = !DISubprogram(name: "toupper", scope: !1312, file: !1312, line: 125, type: !380, flags: DIFlagPrototyped, spFlags: 0)
!1338 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1339, file: !1313, line: 87)
!1339 = !DISubprogram(name: "isblank", scope: !1312, file: !1312, line: 130, type: !380, flags: DIFlagPrototyped, spFlags: 0)
!1340 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1341, file: !1343, line: 98)
!1341 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1342, line: 7, baseType: !972)
!1342 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!1343 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cstdio", directory: "")
!1344 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1345, file: !1343, line: 99)
!1345 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !1346, line: 84, baseType: !1347)
!1346 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!1347 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fpos_t", file: !1348, line: 14, baseType: !1349)
!1348 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h", directory: "", checksumkind: CSK_MD5, checksum: "32de8bdaf3551a6c0a9394f9af4389ce")
!1349 = !DICompositeType(tag: DW_TAG_structure_type, name: "_G_fpos_t", file: !1348, line: 10, size: 128, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
!1350 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1351, file: !1343, line: 101)
!1351 = !DISubprogram(name: "clearerr", scope: !1346, file: !1346, line: 786, type: !1352, flags: DIFlagPrototyped, spFlags: 0)
!1352 = !DISubroutineType(types: !1353)
!1353 = !{null, !1354}
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1355 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1356, file: !1343, line: 102)
!1356 = !DISubprogram(name: "fclose", scope: !1346, file: !1346, line: 178, type: !1357, flags: DIFlagPrototyped, spFlags: 0)
!1357 = !DISubroutineType(types: !1358)
!1358 = !{!34, !1354}
!1359 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1360, file: !1343, line: 103)
!1360 = !DISubprogram(name: "feof", scope: !1346, file: !1346, line: 788, type: !1357, flags: DIFlagPrototyped, spFlags: 0)
!1361 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1362, file: !1343, line: 104)
!1362 = !DISubprogram(name: "ferror", scope: !1346, file: !1346, line: 790, type: !1357, flags: DIFlagPrototyped, spFlags: 0)
!1363 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1364, file: !1343, line: 105)
!1364 = !DISubprogram(name: "fflush", scope: !1346, file: !1346, line: 230, type: !1357, flags: DIFlagPrototyped, spFlags: 0)
!1365 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1366, file: !1343, line: 106)
!1366 = !DISubprogram(name: "fgetc", scope: !1346, file: !1346, line: 513, type: !1357, flags: DIFlagPrototyped, spFlags: 0)
!1367 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1368, file: !1343, line: 107)
!1368 = !DISubprogram(name: "fgetpos", scope: !1346, file: !1346, line: 760, type: !1369, flags: DIFlagPrototyped, spFlags: 0)
!1369 = !DISubroutineType(types: !1370)
!1370 = !{!34, !1371, !1372}
!1371 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1354)
!1372 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1373)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1374 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1375, file: !1343, line: 108)
!1375 = !DISubprogram(name: "fgets", scope: !1346, file: !1346, line: 592, type: !1376, flags: DIFlagPrototyped, spFlags: 0)
!1376 = !DISubroutineType(types: !1377)
!1377 = !{!323, !324, !34, !1371}
!1378 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1379, file: !1343, line: 109)
!1379 = !DISubprogram(name: "fopen", scope: !1346, file: !1346, line: 258, type: !1380, flags: DIFlagPrototyped, spFlags: 0)
!1380 = !DISubroutineType(types: !1381)
!1381 = !{!1354, !325, !325}
!1382 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1383, file: !1343, line: 110)
!1383 = !DISubprogram(name: "fprintf", scope: !1346, file: !1346, line: 350, type: !1384, flags: DIFlagPrototyped, spFlags: 0)
!1384 = !DISubroutineType(types: !1385)
!1385 = !{!34, !1371, !325, null}
!1386 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1387, file: !1343, line: 111)
!1387 = !DISubprogram(name: "fputc", scope: !1346, file: !1346, line: 549, type: !1388, flags: DIFlagPrototyped, spFlags: 0)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{!34, !34, !1354}
!1390 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1391, file: !1343, line: 112)
!1391 = !DISubprogram(name: "fputs", scope: !1346, file: !1346, line: 655, type: !1392, flags: DIFlagPrototyped, spFlags: 0)
!1392 = !DISubroutineType(types: !1393)
!1393 = !{!34, !325, !1371}
!1394 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1395, file: !1343, line: 113)
!1395 = !DISubprogram(name: "fread", scope: !1346, file: !1346, line: 675, type: !1396, flags: DIFlagPrototyped, spFlags: 0)
!1396 = !DISubroutineType(types: !1397)
!1397 = !{!298, !309, !298, !298, !1371}
!1398 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1399, file: !1343, line: 114)
!1399 = !DISubprogram(name: "freopen", scope: !1346, file: !1346, line: 265, type: !1400, flags: DIFlagPrototyped, spFlags: 0)
!1400 = !DISubroutineType(types: !1401)
!1401 = !{!1354, !325, !325, !1371}
!1402 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1403, file: !1343, line: 115)
!1403 = !DISubprogram(name: "fscanf", linkageName: "__isoc99_fscanf", scope: !1346, file: !1346, line: 434, type: !1384, flags: DIFlagPrototyped, spFlags: 0)
!1404 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1405, file: !1343, line: 116)
!1405 = !DISubprogram(name: "fseek", scope: !1346, file: !1346, line: 713, type: !1406, flags: DIFlagPrototyped, spFlags: 0)
!1406 = !DISubroutineType(types: !1407)
!1407 = !{!34, !1354, !77, !34}
!1408 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1409, file: !1343, line: 117)
!1409 = !DISubprogram(name: "fsetpos", scope: !1346, file: !1346, line: 765, type: !1410, flags: DIFlagPrototyped, spFlags: 0)
!1410 = !DISubroutineType(types: !1411)
!1411 = !{!34, !1354, !1412}
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1413 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1345)
!1414 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1415, file: !1343, line: 118)
!1415 = !DISubprogram(name: "ftell", scope: !1346, file: !1346, line: 718, type: !1416, flags: DIFlagPrototyped, spFlags: 0)
!1416 = !DISubroutineType(types: !1417)
!1417 = !{!77, !1354}
!1418 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1419, file: !1343, line: 119)
!1419 = !DISubprogram(name: "fwrite", scope: !1346, file: !1346, line: 681, type: !1420, flags: DIFlagPrototyped, spFlags: 0)
!1420 = !DISubroutineType(types: !1421)
!1421 = !{!298, !310, !298, !298, !1371}
!1422 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1423, file: !1343, line: 120)
!1423 = !DISubprogram(name: "getc", scope: !1346, file: !1346, line: 514, type: !1357, flags: DIFlagPrototyped, spFlags: 0)
!1424 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1425, file: !1343, line: 121)
!1425 = !DISubprogram(name: "getchar", scope: !1346, file: !1346, line: 520, type: !32, flags: DIFlagPrototyped, spFlags: 0)
!1426 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1427, file: !1343, line: 126)
!1427 = !DISubprogram(name: "perror", scope: !1346, file: !1346, line: 804, type: !1428, flags: DIFlagPrototyped, spFlags: 0)
!1428 = !DISubroutineType(types: !1429)
!1429 = !{null, !326}
!1430 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1431, file: !1343, line: 127)
!1431 = !DISubprogram(name: "printf", scope: !1346, file: !1346, line: 356, type: !1432, flags: DIFlagPrototyped, spFlags: 0)
!1432 = !DISubroutineType(types: !1433)
!1433 = !{!34, !325, null}
!1434 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1435, file: !1343, line: 128)
!1435 = !DISubprogram(name: "putc", scope: !1346, file: !1346, line: 550, type: !1388, flags: DIFlagPrototyped, spFlags: 0)
!1436 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1437, file: !1343, line: 129)
!1437 = !DISubprogram(name: "putchar", scope: !1346, file: !1346, line: 556, type: !380, flags: DIFlagPrototyped, spFlags: 0)
!1438 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1439, file: !1343, line: 130)
!1439 = !DISubprogram(name: "puts", scope: !1346, file: !1346, line: 661, type: !415, flags: DIFlagPrototyped, spFlags: 0)
!1440 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1441, file: !1343, line: 131)
!1441 = !DISubprogram(name: "remove", scope: !1346, file: !1346, line: 152, type: !415, flags: DIFlagPrototyped, spFlags: 0)
!1442 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1443, file: !1343, line: 132)
!1443 = !DISubprogram(name: "rename", scope: !1346, file: !1346, line: 154, type: !329, flags: DIFlagPrototyped, spFlags: 0)
!1444 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1445, file: !1343, line: 133)
!1445 = !DISubprogram(name: "rewind", scope: !1346, file: !1346, line: 723, type: !1352, flags: DIFlagPrototyped, spFlags: 0)
!1446 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1447, file: !1343, line: 134)
!1447 = !DISubprogram(name: "scanf", linkageName: "__isoc99_scanf", scope: !1346, file: !1346, line: 437, type: !1432, flags: DIFlagPrototyped, spFlags: 0)
!1448 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1449, file: !1343, line: 135)
!1449 = !DISubprogram(name: "setbuf", scope: !1346, file: !1346, line: 328, type: !1450, flags: DIFlagPrototyped, spFlags: 0)
!1450 = !DISubroutineType(types: !1451)
!1451 = !{null, !1371, !324}
!1452 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1453, file: !1343, line: 136)
!1453 = !DISubprogram(name: "setvbuf", scope: !1346, file: !1346, line: 332, type: !1454, flags: DIFlagPrototyped, spFlags: 0)
!1454 = !DISubroutineType(types: !1455)
!1455 = !{!34, !1371, !324, !34, !298}
!1456 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1457, file: !1343, line: 137)
!1457 = !DISubprogram(name: "sprintf", scope: !1346, file: !1346, line: 358, type: !1458, flags: DIFlagPrototyped, spFlags: 0)
!1458 = !DISubroutineType(types: !1459)
!1459 = !{!34, !324, !325, null}
!1460 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1461, file: !1343, line: 138)
!1461 = !DISubprogram(name: "sscanf", linkageName: "__isoc99_sscanf", scope: !1346, file: !1346, line: 439, type: !1462, flags: DIFlagPrototyped, spFlags: 0)
!1462 = !DISubroutineType(types: !1463)
!1463 = !{!34, !325, !325, null}
!1464 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1465, file: !1343, line: 139)
!1465 = !DISubprogram(name: "tmpfile", scope: !1346, file: !1346, line: 188, type: !1466, flags: DIFlagPrototyped, spFlags: 0)
!1466 = !DISubroutineType(types: !1467)
!1467 = !{!1354}
!1468 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1469, file: !1343, line: 141)
!1469 = !DISubprogram(name: "tmpnam", scope: !1346, file: !1346, line: 205, type: !1470, flags: DIFlagPrototyped, spFlags: 0)
!1470 = !DISubroutineType(types: !1471)
!1471 = !{!323, !323}
!1472 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1473, file: !1343, line: 143)
!1473 = !DISubprogram(name: "ungetc", scope: !1346, file: !1346, line: 668, type: !1388, flags: DIFlagPrototyped, spFlags: 0)
!1474 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1475, file: !1343, line: 144)
!1475 = !DISubprogram(name: "vfprintf", scope: !1346, file: !1346, line: 365, type: !1476, flags: DIFlagPrototyped, spFlags: 0)
!1476 = !DISubroutineType(types: !1477)
!1477 = !{!34, !1371, !325, !1047}
!1478 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1479, file: !1343, line: 145)
!1479 = !DISubprogram(name: "vprintf", scope: !1346, file: !1346, line: 371, type: !1480, flags: DIFlagPrototyped, spFlags: 0)
!1480 = !DISubroutineType(types: !1481)
!1481 = !{!34, !325, !1047}
!1482 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1483, file: !1343, line: 146)
!1483 = !DISubprogram(name: "vsprintf", scope: !1346, file: !1346, line: 373, type: !1484, flags: DIFlagPrototyped, spFlags: 0)
!1484 = !DISubroutineType(types: !1485)
!1485 = !{!34, !324, !325, !1047}
!1486 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !516, entity: !1487, file: !1343, line: 175)
!1487 = !DISubprogram(name: "snprintf", scope: !1346, file: !1346, line: 378, type: !1488, flags: DIFlagPrototyped, spFlags: 0)
!1488 = !DISubroutineType(types: !1489)
!1489 = !{!34, !324, !298, !325, null}
!1490 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !516, entity: !1491, file: !1343, line: 176)
!1491 = !DISubprogram(name: "vfscanf", linkageName: "__isoc99_vfscanf", scope: !1346, file: !1346, line: 479, type: !1476, flags: DIFlagPrototyped, spFlags: 0)
!1492 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !516, entity: !1493, file: !1343, line: 177)
!1493 = !DISubprogram(name: "vscanf", linkageName: "__isoc99_vscanf", scope: !1346, file: !1346, line: 484, type: !1480, flags: DIFlagPrototyped, spFlags: 0)
!1494 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !516, entity: !1495, file: !1343, line: 178)
!1495 = !DISubprogram(name: "vsnprintf", scope: !1346, file: !1346, line: 382, type: !1496, flags: DIFlagPrototyped, spFlags: 0)
!1496 = !DISubroutineType(types: !1497)
!1497 = !{!34, !324, !298, !325, !1047}
!1498 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !516, entity: !1499, file: !1343, line: 179)
!1499 = !DISubprogram(name: "vsscanf", linkageName: "__isoc99_vsscanf", scope: !1346, file: !1346, line: 487, type: !1500, flags: DIFlagPrototyped, spFlags: 0)
!1500 = !DISubroutineType(types: !1501)
!1501 = !{!34, !325, !325, !1047}
!1502 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1487, file: !1343, line: 185)
!1503 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1491, file: !1343, line: 186)
!1504 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1493, file: !1343, line: 187)
!1505 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1495, file: !1343, line: 188)
!1506 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1499, file: !1343, line: 189)
!1507 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1508, file: !1512, line: 82)
!1508 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctrans_t", file: !1509, line: 48, baseType: !1510)
!1509 = !DIFile(filename: "/usr/include/wctype.h", directory: "", checksumkind: CSK_MD5, checksum: "9bcd8e8b8cd2078c8a6c42e262af7d7b")
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!1511 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1227)
!1512 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cwctype", directory: "")
!1513 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1514, file: !1512, line: 83)
!1514 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctype_t", file: !1515, line: 38, baseType: !128)
!1515 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!1516 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !958, file: !1512, line: 84)
!1517 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1518, file: !1512, line: 86)
!1518 = !DISubprogram(name: "iswalnum", scope: !1515, file: !1515, line: 95, type: !1149, flags: DIFlagPrototyped, spFlags: 0)
!1519 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1520, file: !1512, line: 87)
!1520 = !DISubprogram(name: "iswalpha", scope: !1515, file: !1515, line: 101, type: !1149, flags: DIFlagPrototyped, spFlags: 0)
!1521 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1522, file: !1512, line: 89)
!1522 = !DISubprogram(name: "iswblank", scope: !1515, file: !1515, line: 146, type: !1149, flags: DIFlagPrototyped, spFlags: 0)
!1523 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1524, file: !1512, line: 91)
!1524 = !DISubprogram(name: "iswcntrl", scope: !1515, file: !1515, line: 104, type: !1149, flags: DIFlagPrototyped, spFlags: 0)
!1525 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1526, file: !1512, line: 92)
!1526 = !DISubprogram(name: "iswctype", scope: !1515, file: !1515, line: 159, type: !1527, flags: DIFlagPrototyped, spFlags: 0)
!1527 = !DISubroutineType(types: !1528)
!1528 = !{!34, !958, !1514}
!1529 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1530, file: !1512, line: 93)
!1530 = !DISubprogram(name: "iswdigit", scope: !1515, file: !1515, line: 108, type: !1149, flags: DIFlagPrototyped, spFlags: 0)
!1531 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1532, file: !1512, line: 94)
!1532 = !DISubprogram(name: "iswgraph", scope: !1515, file: !1515, line: 112, type: !1149, flags: DIFlagPrototyped, spFlags: 0)
!1533 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1534, file: !1512, line: 95)
!1534 = !DISubprogram(name: "iswlower", scope: !1515, file: !1515, line: 117, type: !1149, flags: DIFlagPrototyped, spFlags: 0)
!1535 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1536, file: !1512, line: 96)
!1536 = !DISubprogram(name: "iswprint", scope: !1515, file: !1515, line: 120, type: !1149, flags: DIFlagPrototyped, spFlags: 0)
!1537 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1538, file: !1512, line: 97)
!1538 = !DISubprogram(name: "iswpunct", scope: !1515, file: !1515, line: 125, type: !1149, flags: DIFlagPrototyped, spFlags: 0)
!1539 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1540, file: !1512, line: 98)
!1540 = !DISubprogram(name: "iswspace", scope: !1515, file: !1515, line: 130, type: !1149, flags: DIFlagPrototyped, spFlags: 0)
!1541 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1542, file: !1512, line: 99)
!1542 = !DISubprogram(name: "iswupper", scope: !1515, file: !1515, line: 135, type: !1149, flags: DIFlagPrototyped, spFlags: 0)
!1543 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1544, file: !1512, line: 100)
!1544 = !DISubprogram(name: "iswxdigit", scope: !1515, file: !1515, line: 140, type: !1149, flags: DIFlagPrototyped, spFlags: 0)
!1545 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1546, file: !1512, line: 101)
!1546 = !DISubprogram(name: "towctrans", scope: !1509, file: !1509, line: 55, type: !1547, flags: DIFlagPrototyped, spFlags: 0)
!1547 = !DISubroutineType(types: !1548)
!1548 = !{!958, !958, !1508}
!1549 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1550, file: !1512, line: 102)
!1550 = !DISubprogram(name: "towlower", scope: !1515, file: !1515, line: 166, type: !1551, flags: DIFlagPrototyped, spFlags: 0)
!1551 = !DISubroutineType(types: !1552)
!1552 = !{!958, !958}
!1553 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1554, file: !1512, line: 103)
!1554 = !DISubprogram(name: "towupper", scope: !1515, file: !1515, line: 169, type: !1551, flags: DIFlagPrototyped, spFlags: 0)
!1555 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1556, file: !1512, line: 104)
!1556 = !DISubprogram(name: "wctrans", scope: !1509, file: !1509, line: 52, type: !1557, flags: DIFlagPrototyped, spFlags: 0)
!1557 = !DISubroutineType(types: !1558)
!1558 = !{!1508, !326}
!1559 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1560, file: !1512, line: 105)
!1560 = !DISubprogram(name: "wctype", scope: !1515, file: !1515, line: 155, type: !1561, flags: DIFlagPrototyped, spFlags: 0)
!1561 = !DISubroutineType(types: !1562)
!1562 = !{!1514, !326}
!1563 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !22, entity: !2, file: !1564, line: 70)
!1564 = !DIFile(filename: "RTTL/common/RTInclude.hxx", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src", checksumkind: CSK_MD5, checksum: "735b2b9337cd60438b3f1c6b71b217f1")
!1565 = !{i32 7, !"Dwarf Version", i32 5}
!1566 = !{i32 2, !"Debug Info Version", i32 3}
!1567 = !{i32 1, !"wchar_size", i32 4}
!1568 = !{i32 8, !"PIC Level", i32 2}
!1569 = !{i32 7, !"PIE Level", i32 2}
!1570 = !{i32 7, !"uwtable", i32 2}
!1571 = !{i32 7, !"frame-pointer", i32 2}
!1572 = !{!"clang version 16.0.0"}
!1573 = distinct !DISubprogram(name: "__cxx_global_var_init", scope: !1051, file: !1051, type: !395, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !22, retainedNodes: !1574)
!1574 = !{}
!1575 = !DILocation(line: 74, column: 25, scope: !1576)
!1576 = !DILexicalBlockFile(scope: !1573, file: !3, discriminator: 0)
!1577 = !DILocation(line: 0, scope: !1573)
!1578 = distinct !DISubprogram(name: "setMaxNumberOfThreads", linkageName: "_ZN22MultiThreadedTaskQueue21setMaxNumberOfThreadsEi", scope: !27, file: !9, line: 329, type: !150, scopeLine: 329, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, declaration: !214, retainedNodes: !1574)
!1579 = !DILocalVariable(name: "threads", arg: 1, scope: !1578, file: !9, line: 329, type: !34)
!1580 = !DILocation(line: 329, column: 56, scope: !1578)
!1581 = !DILocation(line: 330, column: 3, scope: !1578)
!1582 = !DILocation(line: 331, column: 26, scope: !1578)
!1583 = !DILocation(line: 331, column: 12, scope: !1578)
!1584 = !DILocation(line: 332, column: 1, scope: !1578)
!1585 = distinct !DISubprogram(name: "createThreads", linkageName: "_ZN28MultiThreadedTaskQueueServer13createThreadsEi", scope: !40, file: !9, line: 120, type: !139, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, declaration: !153, retainedNodes: !1574)
!1586 = !DILocalVariable(name: "this", arg: 1, scope: !1585, type: !1587, flags: DIFlagArtificial | DIFlagObjectPointer)
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!1588 = !DILocation(line: 0, scope: !1585)
!1589 = !DILocalVariable(name: "threads", arg: 2, scope: !1585, file: !9, line: 120, type: !34)
!1590 = !DILocation(line: 120, column: 26, scope: !1585)
!1591 = !DILocation(line: 121, column: 5, scope: !1585)
!1592 = !DILocalVariable(name: "this", arg: 1, scope: !1593, type: !1587, flags: DIFlagArtificial | DIFlagObjectPointer)
!1593 = distinct !DISubprogram(name: "clean", linkageName: "_ZN28MultiThreadedTaskQueueServer5cleanEb", scope: !40, file: !9, line: 61, type: !146, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, declaration: !145, retainedNodes: !1574)
!1594 = !DILocation(line: 0, scope: !1593, inlinedAt: !1595)
!1595 = distinct !DILocation(line: 124, column: 5, scope: !1585)
!1596 = !DILocalVariable(name: "force_exit_from_thread_function", arg: 2, scope: !1593, file: !9, line: 61, type: !148)
!1597 = !DILocation(line: 61, column: 27, scope: !1593, inlinedAt: !1595)
!1598 = !DILocation(line: 62, column: 9, scope: !1599, inlinedAt: !1595)
!1599 = distinct !DILexicalBlock(scope: !1593, file: !9, line: 62, column: 9)
!1600 = !DILocation(line: 62, column: 19, scope: !1599, inlinedAt: !1595)
!1601 = !DILocation(line: 62, column: 9, scope: !1593, inlinedAt: !1595)
!1602 = !DILocation(line: 63, column: 7, scope: !1603, inlinedAt: !1595)
!1603 = distinct !DILexicalBlock(scope: !1599, file: !9, line: 62, column: 25)
!1604 = !DILocation(line: 66, column: 9, scope: !1605, inlinedAt: !1595)
!1605 = distinct !DILexicalBlock(scope: !1593, file: !9, line: 66, column: 9)
!1606 = !DILocation(line: 66, column: 9, scope: !1593, inlinedAt: !1595)
!1607 = !DILocation(line: 67, column: 7, scope: !1608, inlinedAt: !1595)
!1608 = distinct !DILexicalBlock(scope: !1605, file: !9, line: 66, column: 42)
!1609 = !DILocalVariable(name: "this", arg: 1, scope: !1610, type: !1611, flags: DIFlagArtificial | DIFlagObjectPointer)
!1610 = distinct !DISubprogram(name: "lock", linkageName: "_ZN26MultiThreadedSyncPrimitive4lockEv", scope: !44, file: !26, line: 255, type: !118, scopeLine: 255, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, declaration: !117, retainedNodes: !1574)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!1612 = !DILocation(line: 0, scope: !1610, inlinedAt: !1613)
!1613 = distinct !DILocation(line: 67, column: 7, scope: !1608, inlinedAt: !1595)
!1614 = !DILocation(line: 255, column: 37, scope: !1610, inlinedAt: !1613)
!1615 = !DILocalVariable(name: "nt", scope: !1608, file: !9, line: 69, type: !34)
!1616 = !DILocation(line: 69, column: 11, scope: !1608, inlinedAt: !1595)
!1617 = !DILocation(line: 69, column: 16, scope: !1608, inlinedAt: !1595)
!1618 = !DILocation(line: 70, column: 7, scope: !1608, inlinedAt: !1595)
!1619 = !DILocation(line: 70, column: 17, scope: !1608, inlinedAt: !1595)
!1620 = !DILocalVariable(name: "i", scope: !1621, file: !9, line: 73, type: !34)
!1621 = distinct !DILexicalBlock(scope: !1608, file: !9, line: 73, column: 7)
!1622 = !DILocation(line: 73, column: 16, scope: !1621, inlinedAt: !1595)
!1623 = !DILocation(line: 73, column: 12, scope: !1621, inlinedAt: !1595)
!1624 = !DILocation(line: 73, column: 23, scope: !1625, inlinedAt: !1595)
!1625 = distinct !DILexicalBlock(scope: !1621, file: !9, line: 73, column: 7)
!1626 = !DILocation(line: 73, column: 27, scope: !1625, inlinedAt: !1595)
!1627 = !DILocation(line: 73, column: 25, scope: !1625, inlinedAt: !1595)
!1628 = !DILocation(line: 73, column: 7, scope: !1621, inlinedAt: !1595)
!1629 = !DILocation(line: 74, column: 9, scope: !1630, inlinedAt: !1595)
!1630 = distinct !DILexicalBlock(scope: !1625, file: !9, line: 73, column: 36)
!1631 = !DILocation(line: 74, column: 21, scope: !1630, inlinedAt: !1595)
!1632 = !DILocalVariable(name: "this", arg: 1, scope: !1633, type: !179, flags: DIFlagArtificial | DIFlagObjectPointer)
!1633 = distinct !DISubprogram(name: "resume", linkageName: "_ZN22MultiThreadedScheduler6resumeEv", scope: !180, file: !9, line: 30, type: !185, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, declaration: !197, retainedNodes: !1574)
!1634 = !DILocation(line: 0, scope: !1633, inlinedAt: !1635)
!1635 = distinct !DILocation(line: 74, column: 24, scope: !1630, inlinedAt: !1595)
!1636 = !DILocation(line: 31, column: 5, scope: !1633, inlinedAt: !1635)
!1637 = !DILocation(line: 31, column: 17, scope: !1633, inlinedAt: !1635)
!1638 = !DILocalVariable(name: "this", arg: 1, scope: !1639, type: !1611, flags: DIFlagArtificial | DIFlagObjectPointer)
!1639 = distinct !DISubprogram(name: "resume", linkageName: "_ZN26MultiThreadedSyncPrimitive6resumeEv", scope: !44, file: !26, line: 259, type: !113, scopeLine: 259, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, declaration: !123, retainedNodes: !1574)
!1640 = !DILocation(line: 0, scope: !1639, inlinedAt: !1641)
!1641 = distinct !DILocation(line: 32, column: 33, scope: !1633, inlinedAt: !1635)
!1642 = !DILocation(line: 259, column: 51, scope: !1639, inlinedAt: !1641)
!1643 = !DILocation(line: 259, column: 30, scope: !1639, inlinedAt: !1641)
!1644 = !DILocation(line: 73, column: 32, scope: !1625, inlinedAt: !1595)
!1645 = !DILocation(line: 73, column: 7, scope: !1625, inlinedAt: !1595)
!1646 = distinct !{!1646, !1628, !1647, !1648}
!1647 = !DILocation(line: 75, column: 7, scope: !1621, inlinedAt: !1595)
!1648 = !{!"llvm.loop.mustprogress"}
!1649 = !DILocation(line: 76, column: 7, scope: !1608, inlinedAt: !1595)
!1650 = !DILocalVariable(name: "this", arg: 1, scope: !1651, type: !1611, flags: DIFlagArtificial | DIFlagObjectPointer)
!1651 = distinct !DISubprogram(name: "unlock", linkageName: "_ZN26MultiThreadedSyncPrimitive6unlockEv", scope: !44, file: !26, line: 257, type: !118, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, declaration: !121, retainedNodes: !1574)
!1652 = !DILocation(line: 0, scope: !1651, inlinedAt: !1653)
!1653 = distinct !DILocation(line: 76, column: 7, scope: !1608, inlinedAt: !1595)
!1654 = !DILocation(line: 257, column: 37, scope: !1651, inlinedAt: !1653)
!1655 = !DILocalVariable(name: "i", scope: !1608, file: !9, line: 79, type: !34)
!1656 = !DILocation(line: 79, column: 11, scope: !1608, inlinedAt: !1595)
!1657 = !DILocation(line: 80, column: 7, scope: !1608, inlinedAt: !1595)
!1658 = !DILocation(line: 80, column: 14, scope: !1608, inlinedAt: !1595)
!1659 = !DILocation(line: 80, column: 18, scope: !1608, inlinedAt: !1595)
!1660 = !DILocation(line: 80, column: 16, scope: !1608, inlinedAt: !1595)
!1661 = !DILocation(line: 81, column: 9, scope: !1662, inlinedAt: !1595)
!1662 = distinct !DILexicalBlock(scope: !1608, file: !9, line: 80, column: 22)
!1663 = !DILocation(line: 81, column: 16, scope: !1664, inlinedAt: !1595)
!1664 = distinct !DILexicalBlock(scope: !1665, file: !9, line: 81, column: 9)
!1665 = distinct !DILexicalBlock(scope: !1662, file: !9, line: 81, column: 9)
!1666 = !DILocation(line: 81, column: 20, scope: !1664, inlinedAt: !1595)
!1667 = !DILocation(line: 81, column: 18, scope: !1664, inlinedAt: !1595)
!1668 = !DILocation(line: 81, column: 9, scope: !1665, inlinedAt: !1595)
!1669 = !DILocation(line: 82, column: 15, scope: !1670, inlinedAt: !1595)
!1670 = distinct !DILexicalBlock(scope: !1671, file: !9, line: 82, column: 15)
!1671 = distinct !DILexicalBlock(scope: !1664, file: !9, line: 81, column: 29)
!1672 = !DILocation(line: 82, column: 27, scope: !1670, inlinedAt: !1595)
!1673 = !DILocalVariable(name: "this", arg: 1, scope: !1674, type: !1675, flags: DIFlagArtificial | DIFlagObjectPointer)
!1674 = distinct !DISubprogram(name: "suspended", linkageName: "_ZNK22MultiThreadedScheduler9suspendedEv", scope: !180, file: !9, line: 17, type: !190, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, declaration: !189, retainedNodes: !1574)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!1676 = !DILocation(line: 0, scope: !1674, inlinedAt: !1677)
!1677 = distinct !DILocation(line: 82, column: 30, scope: !1670, inlinedAt: !1595)
!1678 = !DILocation(line: 18, column: 12, scope: !1674, inlinedAt: !1677)
!1679 = !DILocation(line: 82, column: 42, scope: !1670, inlinedAt: !1595)
!1680 = !DILocation(line: 82, column: 15, scope: !1671, inlinedAt: !1595)
!1681 = !DILocation(line: 84, column: 13, scope: !1682, inlinedAt: !1595)
!1682 = distinct !DILexicalBlock(scope: !1670, file: !9, line: 82, column: 49)
!1683 = !DILocation(line: 85, column: 13, scope: !1682, inlinedAt: !1595)
!1684 = !DILocation(line: 81, column: 25, scope: !1664, inlinedAt: !1595)
!1685 = !DILocation(line: 81, column: 9, scope: !1664, inlinedAt: !1595)
!1686 = distinct !{!1686, !1668, !1687, !1648}
!1687 = !DILocation(line: 87, column: 9, scope: !1665, inlinedAt: !1595)
!1688 = distinct !{!1688, !1657, !1689, !1648}
!1689 = !DILocation(line: 88, column: 7, scope: !1608, inlinedAt: !1595)
!1690 = !DILocation(line: 89, column: 5, scope: !1608, inlinedAt: !1595)
!1691 = !DILocation(line: 91, column: 9, scope: !1692, inlinedAt: !1595)
!1692 = distinct !DILexicalBlock(scope: !1593, file: !9, line: 91, column: 9)
!1693 = !DILocation(line: 91, column: 9, scope: !1593, inlinedAt: !1595)
!1694 = !DILocation(line: 92, column: 17, scope: !1692, inlinedAt: !1595)
!1695 = !DILocation(line: 92, column: 7, scope: !1692, inlinedAt: !1595)
!1696 = !DILocation(line: 93, column: 9, scope: !1697, inlinedAt: !1595)
!1697 = distinct !DILexicalBlock(scope: !1593, file: !9, line: 93, column: 9)
!1698 = !DILocation(line: 93, column: 9, scope: !1593, inlinedAt: !1595)
!1699 = !DILocation(line: 94, column: 17, scope: !1697, inlinedAt: !1595)
!1700 = !DILocation(line: 94, column: 7, scope: !1697, inlinedAt: !1595)
!1701 = !DILocation(line: 95, column: 9, scope: !1702, inlinedAt: !1595)
!1702 = distinct !DILexicalBlock(scope: !1593, file: !9, line: 95, column: 9)
!1703 = !DILocation(line: 95, column: 9, scope: !1593, inlinedAt: !1595)
!1704 = !DILocation(line: 96, column: 17, scope: !1702, inlinedAt: !1595)
!1705 = !DILocation(line: 96, column: 7, scope: !1702, inlinedAt: !1595)
!1706 = !DILocation(line: 127, column: 19, scope: !1585)
!1707 = !DILocation(line: 127, column: 5, scope: !1585)
!1708 = !DILocation(line: 127, column: 17, scope: !1585)
!1709 = !DILocation(line: 128, column: 33, scope: !1585)
!1710 = !DILocation(line: 128, column: 19, scope: !1585)
!1711 = !DILocation(line: 128, column: 5, scope: !1585)
!1712 = !DILocation(line: 128, column: 17, scope: !1585)
!1713 = !DILocation(line: 129, column: 47, scope: !1585)
!1714 = !DILocation(line: 129, column: 19, scope: !1585)
!1715 = !DIDerivedType(tag: DW_TAG_typedef, name: "pMultiThreadedTaskQueue", scope: !1585, file: !9, line: 126, baseType: !133)
!1716 = !DILocation(line: 129, column: 17, scope: !1585)
!1717 = !DILocation(line: 130, column: 46, scope: !1585)
!1718 = !DILocation(line: 130, column: 19, scope: !1585)
!1719 = !DILocation(line: 130, column: 17, scope: !1585)
!1720 = !DILocation(line: 131, column: 12, scope: !1585)
!1721 = !DILocation(line: 131, column: 59, scope: !1585)
!1722 = !DILocation(line: 131, column: 57, scope: !1585)
!1723 = !DILocation(line: 131, column: 5, scope: !1585)
!1724 = !DILocalVariable(name: "res", scope: !1585, file: !9, line: 133, type: !34)
!1725 = !DILocation(line: 133, column: 9, scope: !1585)
!1726 = !DILocalVariable(name: "i", scope: !1727, file: !9, line: 135, type: !34)
!1727 = distinct !DILexicalBlock(scope: !1585, file: !9, line: 135, column: 5)
!1728 = !DILocation(line: 135, column: 14, scope: !1727)
!1729 = !DILocation(line: 135, column: 10, scope: !1727)
!1730 = !DILocation(line: 135, column: 21, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1727, file: !9, line: 135, column: 5)
!1732 = !DILocation(line: 135, column: 25, scope: !1731)
!1733 = !DILocation(line: 135, column: 23, scope: !1731)
!1734 = !DILocation(line: 135, column: 5, scope: !1727)
!1735 = !DILocation(line: 136, column: 35, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1737, file: !9, line: 136, column: 12)
!1737 = distinct !DILexicalBlock(scope: !1731, file: !9, line: 135, column: 41)
!1738 = !DILocation(line: 136, column: 44, scope: !1736)
!1739 = !DILocation(line: 136, column: 74, scope: !1736)
!1740 = !DILocation(line: 136, column: 67, scope: !1736)
!1741 = !DILocation(line: 136, column: 19, scope: !1736)
!1742 = !DILocation(line: 136, column: 17, scope: !1736)
!1743 = !DILocation(line: 136, column: 78, scope: !1736)
!1744 = !DILocation(line: 136, column: 12, scope: !1737)
!1745 = !DILocation(line: 137, column: 14, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1736, file: !9, line: 136, column: 84)
!1747 = !DILocation(line: 137, column: 43, scope: !1746)
!1748 = !DILocation(line: 137, column: 40, scope: !1746)
!1749 = !DILocation(line: 138, column: 13, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1746, file: !9, line: 138, column: 13)
!1751 = !DILocation(line: 138, column: 17, scope: !1750)
!1752 = !DILocation(line: 138, column: 13, scope: !1746)
!1753 = !DILocation(line: 139, column: 16, scope: !1750)
!1754 = !DILocation(line: 139, column: 66, scope: !1750)
!1755 = !DILocation(line: 139, column: 11, scope: !1750)
!1756 = !DILocation(line: 148, column: 3, scope: !1585)
!1757 = !DILocation(line: 141, column: 16, scope: !1750)
!1758 = !DILocation(line: 141, column: 36, scope: !1750)
!1759 = !DILocation(line: 141, column: 33, scope: !1750)
!1760 = !DILocation(line: 141, column: 40, scope: !1750)
!1761 = !DILocation(line: 142, column: 9, scope: !1746)
!1762 = !DILocation(line: 144, column: 5, scope: !1737)
!1763 = !DILocation(line: 135, column: 37, scope: !1731)
!1764 = !DILocation(line: 135, column: 5, scope: !1731)
!1765 = distinct !{!1765, !1734, !1766, !1648}
!1766 = !DILocation(line: 144, column: 5, scope: !1727)
!1767 = !DILocalVariable(name: "this", arg: 1, scope: !1768, type: !1587, flags: DIFlagArtificial | DIFlagObjectPointer)
!1768 = distinct !DISubprogram(name: "waitUntillAllThreadsAreSuspended", linkageName: "_ZN28MultiThreadedTaskQueueServer32waitUntillAllThreadsAreSuspendedEv", scope: !40, file: !9, line: 156, type: !143, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, declaration: !159, retainedNodes: !1574)
!1769 = !DILocation(line: 0, scope: !1768, inlinedAt: !1770)
!1770 = distinct !DILocation(line: 147, column: 5, scope: !1585)
!1771 = !DILocalVariable(name: "ns", scope: !1768, file: !9, line: 157, type: !34)
!1772 = !DILocation(line: 157, column: 9, scope: !1768, inlinedAt: !1770)
!1773 = !DILocation(line: 158, column: 5, scope: !1768, inlinedAt: !1770)
!1774 = !DILocation(line: 160, column: 7, scope: !1775, inlinedAt: !1770)
!1775 = distinct !DILexicalBlock(scope: !1768, file: !9, line: 158, column: 8)
!1776 = !DILocation(line: 161, column: 10, scope: !1775, inlinedAt: !1770)
!1777 = !DILocalVariable(name: "i", scope: !1778, file: !9, line: 162, type: !34)
!1778 = distinct !DILexicalBlock(scope: !1775, file: !9, line: 162, column: 7)
!1779 = !DILocation(line: 162, column: 16, scope: !1778, inlinedAt: !1770)
!1780 = !DILocation(line: 162, column: 12, scope: !1778, inlinedAt: !1770)
!1781 = !DILocation(line: 162, column: 23, scope: !1782, inlinedAt: !1770)
!1782 = distinct !DILexicalBlock(scope: !1778, file: !9, line: 162, column: 7)
!1783 = !DILocation(line: 162, column: 27, scope: !1782, inlinedAt: !1770)
!1784 = !DILocation(line: 162, column: 25, scope: !1782, inlinedAt: !1770)
!1785 = !DILocation(line: 162, column: 7, scope: !1778, inlinedAt: !1770)
!1786 = !DILocation(line: 163, column: 15, scope: !1782, inlinedAt: !1770)
!1787 = !DILocation(line: 163, column: 27, scope: !1782, inlinedAt: !1770)
!1788 = !DILocation(line: 0, scope: !1674, inlinedAt: !1789)
!1789 = distinct !DILocation(line: 163, column: 30, scope: !1782, inlinedAt: !1770)
!1790 = !DILocation(line: 18, column: 12, scope: !1674, inlinedAt: !1789)
!1791 = !DILocation(line: 163, column: 12, scope: !1782, inlinedAt: !1770)
!1792 = !DILocation(line: 162, column: 39, scope: !1782, inlinedAt: !1770)
!1793 = !DILocation(line: 162, column: 7, scope: !1782, inlinedAt: !1770)
!1794 = distinct !{!1794, !1785, !1795, !1648}
!1795 = !DILocation(line: 163, column: 40, scope: !1778, inlinedAt: !1770)
!1796 = !DILocation(line: 164, column: 14, scope: !1768, inlinedAt: !1770)
!1797 = !DILocation(line: 164, column: 20, scope: !1768, inlinedAt: !1770)
!1798 = !DILocation(line: 164, column: 17, scope: !1768, inlinedAt: !1770)
!1799 = !DILocation(line: 164, column: 5, scope: !1775, inlinedAt: !1770)
!1800 = distinct !{!1800, !1773, !1801, !1648}
!1801 = !DILocation(line: 164, column: 29, scope: !1768, inlinedAt: !1770)
!1802 = distinct !DISubprogram(name: "maxNumberOfThreads", linkageName: "_ZN22MultiThreadedTaskQueue18maxNumberOfThreadsEv", scope: !27, file: !9, line: 334, type: !32, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, declaration: !215, retainedNodes: !1574)
!1803 = !DILocalVariable(name: "this", arg: 1, scope: !1804, type: !1805, flags: DIFlagArtificial | DIFlagObjectPointer)
!1804 = distinct !DISubprogram(name: "numberOfThreads", linkageName: "_ZNK22MultiThreadedTaskQueue15numberOfThreadsEv", scope: !27, file: !26, line: 225, type: !221, scopeLine: 225, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, declaration: !220, retainedNodes: !1574)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!1806 = !DILocation(line: 0, scope: !1804, inlinedAt: !1807)
!1807 = distinct !DILocation(line: 335, column: 19, scope: !1802)
!1808 = !DILocation(line: 225, column: 48, scope: !1804, inlinedAt: !1807)
!1809 = !DILocation(line: 335, column: 3, scope: !1802)
!1810 = distinct !DISubprogram(name: "createThreads", linkageName: "_ZN22MultiThreadedTaskQueue13createThreadsEi", scope: !27, file: !9, line: 339, type: !206, scopeLine: 339, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, declaration: !216, retainedNodes: !1574)
!1811 = !DILocalVariable(name: "this", arg: 1, scope: !1810, type: !133, flags: DIFlagArtificial | DIFlagObjectPointer)
!1812 = !DILocation(line: 0, scope: !1810)
!1813 = !DILocalVariable(name: "threads", arg: 2, scope: !1810, file: !9, line: 339, type: !34)
!1814 = !DILocation(line: 339, column: 48, scope: !1810)
!1815 = !DILocation(line: 340, column: 3, scope: !1810)
!1816 = !DILocation(line: 341, column: 15, scope: !1810)
!1817 = !DILocation(line: 341, column: 3, scope: !1810)
!1818 = !DILocation(line: 341, column: 13, scope: !1810)
!1819 = !DILocation(line: 0, scope: !1610, inlinedAt: !1820)
!1820 = distinct !DILocation(line: 342, column: 12, scope: !1810)
!1821 = !DILocation(line: 255, column: 37, scope: !1610, inlinedAt: !1820)
!1822 = !DILocation(line: 343, column: 16, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1810, file: !9, line: 343, column: 7)
!1824 = !DILocation(line: 343, column: 26, scope: !1823)
!1825 = !DILocation(line: 343, column: 7, scope: !1810)
!1826 = !DILocation(line: 345, column: 28, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1823, file: !9, line: 343, column: 32)
!1828 = !DILocation(line: 345, column: 14, scope: !1827)
!1829 = !DILocation(line: 346, column: 3, scope: !1827)
!1830 = !DILocation(line: 0, scope: !1651, inlinedAt: !1831)
!1831 = distinct !DILocation(line: 347, column: 12, scope: !1810)
!1832 = !DILocation(line: 257, column: 37, scope: !1651, inlinedAt: !1831)
!1833 = !DILocation(line: 348, column: 1, scope: !1810)
!1834 = distinct !DISubprogram(name: "startThreads", linkageName: "_ZN22MultiThreadedTaskQueue12startThreadsEv", scope: !27, file: !9, line: 352, type: !203, scopeLine: 352, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, declaration: !217, retainedNodes: !1574)
!1835 = !DILocalVariable(name: "this", arg: 1, scope: !1834, type: !133, flags: DIFlagArtificial | DIFlagObjectPointer)
!1836 = !DILocation(line: 0, scope: !1834)
!1837 = !DILocation(line: 353, column: 21, scope: !1834)
!1838 = !DILocation(line: 353, column: 37, scope: !1834)
!1839 = !DILocation(line: 353, column: 3, scope: !1834)
!1840 = !DILocation(line: 353, column: 19, scope: !1834)
!1841 = !DILocation(line: 354, column: 12, scope: !1834)
!1842 = !DILocation(line: 355, column: 1, scope: !1834)
!1843 = distinct !DISubprogram(name: "addClient", linkageName: "_ZN28MultiThreadedTaskQueueServer9addClientEP22MultiThreadedTaskQueue", scope: !40, file: !9, line: 260, type: !171, scopeLine: 260, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, declaration: !170, retainedNodes: !1574)
!1844 = !DILocalVariable(name: "this", arg: 1, scope: !1843, type: !1587, flags: DIFlagArtificial | DIFlagObjectPointer)
!1845 = !DILocation(line: 0, scope: !1843)
!1846 = !DILocalVariable(name: "client", arg: 2, scope: !1843, file: !9, line: 260, type: !133)
!1847 = !DILocation(line: 260, column: 42, scope: !1843)
!1848 = !DILocation(line: 260, column: 50, scope: !1843)
!1849 = !DILabel(scope: !1843, name: "recheck", file: !9, line: 262)
!1850 = !DILocation(line: 262, column: 3, scope: !1843)
!1851 = !DILocation(line: 0, scope: !1610, inlinedAt: !1852)
!1852 = distinct !DILocation(line: 263, column: 14, scope: !1843)
!1853 = !DILocation(line: 255, column: 37, scope: !1610, inlinedAt: !1852)
!1854 = !DILocalVariable(name: "j", scope: !1843, file: !9, line: 264, type: !34)
!1855 = !DILocation(line: 264, column: 9, scope: !1843)
!1856 = !DILocation(line: 264, column: 13, scope: !1843)
!1857 = !DILocalVariable(name: "i", scope: !1858, file: !9, line: 265, type: !34)
!1858 = distinct !DILexicalBlock(scope: !1843, file: !9, line: 265, column: 5)
!1859 = !DILocation(line: 265, column: 14, scope: !1858)
!1860 = !DILocation(line: 265, column: 10, scope: !1858)
!1861 = !DILocation(line: 265, column: 21, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1858, file: !9, line: 265, column: 5)
!1863 = !DILocation(line: 265, column: 23, scope: !1862)
!1864 = !DILocation(line: 265, column: 5, scope: !1858)
!1865 = !DILocation(line: 266, column: 11, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1867, file: !9, line: 266, column: 11)
!1867 = distinct !DILexicalBlock(scope: !1862, file: !9, line: 265, column: 41)
!1868 = !DILocation(line: 266, column: 28, scope: !1866)
!1869 = !DILocation(line: 266, column: 31, scope: !1866)
!1870 = !DILocation(line: 266, column: 11, scope: !1867)
!1871 = !DILocation(line: 266, column: 40, scope: !1866)
!1872 = !DILocation(line: 267, column: 11, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1867, file: !9, line: 267, column: 11)
!1874 = !DILocation(line: 267, column: 15, scope: !1873)
!1875 = !DILocation(line: 267, column: 11, scope: !1867)
!1876 = !DILocation(line: 267, column: 31, scope: !1873)
!1877 = !DILocation(line: 267, column: 29, scope: !1873)
!1878 = !DILocation(line: 268, column: 5, scope: !1867)
!1879 = !DILocation(line: 265, column: 37, scope: !1862)
!1880 = !DILocation(line: 265, column: 5, scope: !1862)
!1881 = distinct !{!1881, !1864, !1882, !1648}
!1882 = !DILocation(line: 268, column: 5, scope: !1858)
!1883 = !DILocation(line: 0, scope: !1651, inlinedAt: !1884)
!1884 = distinct !DILocation(line: 271, column: 14, scope: !1843)
!1885 = !DILocation(line: 257, column: 37, scope: !1651, inlinedAt: !1884)
!1886 = !DILocation(line: 273, column: 5, scope: !1843)
!1887 = !DILocation(line: 274, column: 5, scope: !1843)
!1888 = !DILabel(scope: !1843, name: "found", file: !9, line: 276)
!1889 = !DILocation(line: 276, column: 3, scope: !1843)
!1890 = !DILocation(line: 278, column: 27, scope: !1843)
!1891 = !DILocation(line: 278, column: 5, scope: !1843)
!1892 = !DILocation(line: 278, column: 22, scope: !1843)
!1893 = !DILocation(line: 278, column: 25, scope: !1843)
!1894 = !DILocation(line: 279, column: 5, scope: !1843)
!1895 = !DILocation(line: 279, column: 21, scope: !1843)
!1896 = !DILocation(line: 279, column: 24, scope: !1843)
!1897 = !DILocation(line: 281, column: 23, scope: !1843)
!1898 = !DILocation(line: 281, column: 25, scope: !1843)
!1899 = !DILocation(line: 281, column: 5, scope: !1843)
!1900 = !DILocation(line: 281, column: 21, scope: !1843)
!1901 = !DILocation(line: 282, column: 9, scope: !1902)
!1902 = distinct !DILexicalBlock(scope: !1843, file: !9, line: 282, column: 9)
!1903 = !DILocation(line: 282, column: 25, scope: !1902)
!1904 = !DILocation(line: 282, column: 9, scope: !1843)
!1905 = !DILocation(line: 282, column: 39, scope: !1902)
!1906 = !DILocation(line: 282, column: 55, scope: !1902)
!1907 = !DILocalVariable(name: "nt", scope: !1843, file: !9, line: 284, type: !34)
!1908 = !DILocation(line: 284, column: 9, scope: !1843)
!1909 = !DILocation(line: 284, column: 23, scope: !1843)
!1910 = !DILocalVariable(name: "i", scope: !1911, file: !9, line: 286, type: !34)
!1911 = distinct !DILexicalBlock(scope: !1843, file: !9, line: 286, column: 5)
!1912 = !DILocation(line: 286, column: 14, scope: !1911)
!1913 = !DILocation(line: 286, column: 10, scope: !1911)
!1914 = !DILocation(line: 286, column: 21, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1911, file: !9, line: 286, column: 5)
!1916 = !DILocation(line: 286, column: 25, scope: !1915)
!1917 = !DILocation(line: 286, column: 23, scope: !1915)
!1918 = !DILocation(line: 286, column: 5, scope: !1911)
!1919 = !DILocation(line: 287, column: 7, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1915, file: !9, line: 286, column: 34)
!1921 = !DILocation(line: 287, column: 19, scope: !1920)
!1922 = !DILocation(line: 0, scope: !1610, inlinedAt: !1923)
!1923 = distinct !DILocation(line: 287, column: 22, scope: !1920)
!1924 = !DILocation(line: 255, column: 37, scope: !1610, inlinedAt: !1923)
!1925 = !DILocation(line: 288, column: 11, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1920, file: !9, line: 288, column: 11)
!1927 = !DILocation(line: 288, column: 23, scope: !1926)
!1928 = !DILocation(line: 0, scope: !1674, inlinedAt: !1929)
!1929 = distinct !DILocation(line: 288, column: 26, scope: !1926)
!1930 = !DILocation(line: 18, column: 12, scope: !1674, inlinedAt: !1929)
!1931 = !DILocation(line: 288, column: 11, scope: !1920)
!1932 = !DILocation(line: 289, column: 23, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1934, file: !9, line: 289, column: 13)
!1934 = distinct !DILexicalBlock(scope: !1926, file: !9, line: 288, column: 39)
!1935 = !DILocation(line: 289, column: 14, scope: !1933)
!1936 = !DILocation(line: 289, column: 13, scope: !1934)
!1937 = !DILocation(line: 290, column: 11, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1933, file: !9, line: 289, column: 27)
!1939 = !DILocation(line: 290, column: 23, scope: !1938)
!1940 = !DILocation(line: 0, scope: !1651, inlinedAt: !1941)
!1941 = distinct !DILocation(line: 290, column: 26, scope: !1938)
!1942 = !DILocation(line: 257, column: 37, scope: !1651, inlinedAt: !1941)
!1943 = !DILocation(line: 291, column: 11, scope: !1938)
!1944 = !DILocation(line: 293, column: 9, scope: !1934)
!1945 = !DILocation(line: 293, column: 21, scope: !1934)
!1946 = !DILocation(line: 0, scope: !1633, inlinedAt: !1947)
!1947 = distinct !DILocation(line: 293, column: 24, scope: !1934)
!1948 = !DILocation(line: 31, column: 5, scope: !1633, inlinedAt: !1947)
!1949 = !DILocation(line: 31, column: 17, scope: !1633, inlinedAt: !1947)
!1950 = !DILocation(line: 0, scope: !1639, inlinedAt: !1951)
!1951 = distinct !DILocation(line: 32, column: 33, scope: !1633, inlinedAt: !1947)
!1952 = !DILocation(line: 259, column: 51, scope: !1639, inlinedAt: !1951)
!1953 = !DILocation(line: 259, column: 30, scope: !1639, inlinedAt: !1951)
!1954 = !DILocation(line: 294, column: 7, scope: !1934)
!1955 = !DILocation(line: 295, column: 7, scope: !1920)
!1956 = !DILocation(line: 295, column: 19, scope: !1920)
!1957 = !DILocation(line: 0, scope: !1651, inlinedAt: !1958)
!1958 = distinct !DILocation(line: 295, column: 22, scope: !1920)
!1959 = !DILocation(line: 257, column: 37, scope: !1651, inlinedAt: !1958)
!1960 = !DILocation(line: 296, column: 5, scope: !1920)
!1961 = !DILocation(line: 286, column: 30, scope: !1915)
!1962 = !DILocation(line: 286, column: 5, scope: !1915)
!1963 = distinct !{!1963, !1918, !1964, !1648}
!1964 = !DILocation(line: 296, column: 5, scope: !1911)
!1965 = !DILocation(line: 0, scope: !1651, inlinedAt: !1966)
!1966 = distinct !DILocation(line: 298, column: 14, scope: !1843)
!1967 = !DILocation(line: 257, column: 37, scope: !1651, inlinedAt: !1966)
!1968 = !DILocation(line: 299, column: 3, scope: !1843)
!1969 = distinct !DISubprogram(name: "waitForAllThreads", linkageName: "_ZN22MultiThreadedTaskQueue17waitForAllThreadsEv", scope: !27, file: !9, line: 358, type: !203, scopeLine: 358, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, declaration: !218, retainedNodes: !1574)
!1970 = !DILocalVariable(name: "this", arg: 1, scope: !1969, type: !133, flags: DIFlagArtificial | DIFlagObjectPointer)
!1971 = !DILocation(line: 0, scope: !1969)
!1972 = !DILocation(line: 359, column: 7, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1969, file: !9, line: 359, column: 7)
!1974 = !DILocation(line: 359, column: 26, scope: !1973)
!1975 = !DILocation(line: 359, column: 23, scope: !1973)
!1976 = !DILocation(line: 359, column: 7, scope: !1969)
!1977 = !DILocation(line: 360, column: 5, scope: !1973)
!1978 = !DILocalVariable(name: "code", scope: !1969, file: !9, line: 361, type: !34)
!1979 = !DILocation(line: 361, column: 7, scope: !1969)
!1980 = !DILocation(line: 0, scope: !1610, inlinedAt: !1981)
!1981 = distinct !DILocation(line: 361, column: 23, scope: !1969)
!1982 = !DILocation(line: 255, column: 37, scope: !1610, inlinedAt: !1981)
!1983 = !DILocation(line: 365, column: 3, scope: !1969)
!1984 = !DILocation(line: 365, column: 10, scope: !1969)
!1985 = !DILocation(line: 365, column: 28, scope: !1969)
!1986 = !DILocation(line: 365, column: 26, scope: !1969)
!1987 = !DILocalVariable(name: "this", arg: 1, scope: !1988, type: !1611, flags: DIFlagArtificial | DIFlagObjectPointer)
!1988 = distinct !DISubprogram(name: "suspend", linkageName: "_ZN26MultiThreadedSyncPrimitive7suspendEv", scope: !44, file: !26, line: 258, type: !118, scopeLine: 258, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, declaration: !122, retainedNodes: !1574)
!1989 = !DILocation(line: 0, scope: !1988, inlinedAt: !1990)
!1990 = distinct !DILocation(line: 366, column: 14, scope: !1969)
!1991 = !DILocation(line: 258, column: 56, scope: !1988, inlinedAt: !1990)
!1992 = !DILocation(line: 258, column: 37, scope: !1988, inlinedAt: !1990)
!1993 = distinct !{!1993, !1983, !1994, !1648}
!1994 = !DILocation(line: 366, column: 22, scope: !1969)
!1995 = !DILocation(line: 0, scope: !1651, inlinedAt: !1996)
!1996 = distinct !DILocation(line: 369, column: 19, scope: !1969)
!1997 = !DILocation(line: 257, column: 37, scope: !1651, inlinedAt: !1996)
!1998 = !DILocation(line: 369, column: 8, scope: !1969)
!1999 = !DILocation(line: 370, column: 1, scope: !1969)
!2000 = distinct !DISubprogram(name: "__cxx_global_var_init.4", scope: !1051, file: !1051, type: !395, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !22, retainedNodes: !1574)
!2001 = !DILocation(line: 373, column: 54, scope: !2002)
!2002 = !DILexicalBlockFile(scope: !2000, file: !9, discriminator: 0)
!2003 = !DILocation(line: 0, scope: !2000)
!2004 = !DILocation(line: 373, column: 63, scope: !2002)
!2005 = distinct !DISubprogram(name: "MultiThreadedTaskQueueServer", linkageName: "_ZN28MultiThreadedTaskQueueServerC2Ei", scope: !40, file: !9, line: 47, type: !139, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, declaration: !138, retainedNodes: !1574)
!2006 = !DILocalVariable(name: "this", arg: 1, scope: !2005, type: !1587, flags: DIFlagArtificial | DIFlagObjectPointer)
!2007 = !DILocation(line: 0, scope: !2005)
!2008 = !DILocalVariable(arg: 2, scope: !2005, file: !9, line: 47, type: !34)
!2009 = !DILocation(line: 47, column: 35, scope: !2005)
!2010 = !DILocation(line: 48, column: 7, scope: !2005)
!2011 = !DILocation(line: 51, column: 5, scope: !2005)
!2012 = !DILocation(line: 49, column: 7, scope: !2005)
!2013 = !DILocation(line: 50, column: 7, scope: !2005)
!2014 = !DILocation(line: 52, column: 7, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !2005, file: !9, line: 51, column: 5)
!2016 = !DILocation(line: 53, column: 7, scope: !2015)
!2017 = !DILocation(line: 53, column: 23, scope: !2015)
!2018 = !DILocation(line: 54, column: 14, scope: !2015)
!2019 = !DILocation(line: 54, column: 7, scope: !2015)
!2020 = !DILocation(line: 55, column: 5, scope: !2005)
!2021 = !DILocation(line: 55, column: 5, scope: !2015)
!2022 = distinct !DISubprogram(name: "~MultiThreadedTaskQueueServer", linkageName: "_ZN28MultiThreadedTaskQueueServerD2Ev", scope: !40, file: !9, line: 57, type: !143, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, declaration: !142, retainedNodes: !1574)
!2023 = !DILocalVariable(name: "this", arg: 1, scope: !2022, type: !1587, flags: DIFlagArtificial | DIFlagObjectPointer)
!2024 = !DILocation(line: 0, scope: !2022)
!2025 = !DILocation(line: 57, column: 35, scope: !2022)
!2026 = !DILocation(line: 0, scope: !1593, inlinedAt: !2027)
!2027 = distinct !DILocation(line: 58, column: 5, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !2022, file: !9, line: 57, column: 35)
!2029 = !DILocation(line: 61, column: 27, scope: !1593, inlinedAt: !2027)
!2030 = !DILocation(line: 62, column: 9, scope: !1599, inlinedAt: !2027)
!2031 = !DILocation(line: 62, column: 19, scope: !1599, inlinedAt: !2027)
!2032 = !DILocation(line: 62, column: 9, scope: !1593, inlinedAt: !2027)
!2033 = !DILocation(line: 63, column: 7, scope: !1603, inlinedAt: !2027)
!2034 = !DILocation(line: 66, column: 9, scope: !1605, inlinedAt: !2027)
!2035 = !DILocation(line: 66, column: 9, scope: !1593, inlinedAt: !2027)
!2036 = !DILocation(line: 67, column: 7, scope: !1608, inlinedAt: !2027)
!2037 = !DILocation(line: 0, scope: !1610, inlinedAt: !2038)
!2038 = distinct !DILocation(line: 67, column: 7, scope: !1608, inlinedAt: !2027)
!2039 = !DILocation(line: 255, column: 37, scope: !1610, inlinedAt: !2038)
!2040 = !DILocation(line: 69, column: 11, scope: !1608, inlinedAt: !2027)
!2041 = !DILocation(line: 69, column: 16, scope: !1608, inlinedAt: !2027)
!2042 = !DILocation(line: 70, column: 7, scope: !1608, inlinedAt: !2027)
!2043 = !DILocation(line: 70, column: 17, scope: !1608, inlinedAt: !2027)
!2044 = !DILocation(line: 73, column: 16, scope: !1621, inlinedAt: !2027)
!2045 = !DILocation(line: 73, column: 12, scope: !1621, inlinedAt: !2027)
!2046 = !DILocation(line: 73, column: 23, scope: !1625, inlinedAt: !2027)
!2047 = !DILocation(line: 73, column: 27, scope: !1625, inlinedAt: !2027)
!2048 = !DILocation(line: 73, column: 25, scope: !1625, inlinedAt: !2027)
!2049 = !DILocation(line: 73, column: 7, scope: !1621, inlinedAt: !2027)
!2050 = !DILocation(line: 74, column: 9, scope: !1630, inlinedAt: !2027)
!2051 = !DILocation(line: 74, column: 21, scope: !1630, inlinedAt: !2027)
!2052 = !DILocation(line: 0, scope: !1633, inlinedAt: !2053)
!2053 = distinct !DILocation(line: 74, column: 24, scope: !1630, inlinedAt: !2027)
!2054 = !DILocation(line: 31, column: 5, scope: !1633, inlinedAt: !2053)
!2055 = !DILocation(line: 31, column: 17, scope: !1633, inlinedAt: !2053)
!2056 = !DILocation(line: 0, scope: !1639, inlinedAt: !2057)
!2057 = distinct !DILocation(line: 32, column: 33, scope: !1633, inlinedAt: !2053)
!2058 = !DILocation(line: 259, column: 51, scope: !1639, inlinedAt: !2057)
!2059 = !DILocation(line: 259, column: 30, scope: !1639, inlinedAt: !2057)
!2060 = !DILocation(line: 33, column: 3, scope: !1633, inlinedAt: !2053)
!2061 = !DILocation(line: 73, column: 32, scope: !1625, inlinedAt: !2027)
!2062 = !DILocation(line: 73, column: 7, scope: !1625, inlinedAt: !2027)
!2063 = distinct !{!2063, !2049, !2064, !1648}
!2064 = !DILocation(line: 75, column: 7, scope: !1621, inlinedAt: !2027)
!2065 = !DILocation(line: 76, column: 7, scope: !1608, inlinedAt: !2027)
!2066 = !DILocation(line: 0, scope: !1651, inlinedAt: !2067)
!2067 = distinct !DILocation(line: 76, column: 7, scope: !1608, inlinedAt: !2027)
!2068 = !DILocation(line: 257, column: 37, scope: !1651, inlinedAt: !2067)
!2069 = !DILocation(line: 79, column: 11, scope: !1608, inlinedAt: !2027)
!2070 = !DILocation(line: 80, column: 7, scope: !1608, inlinedAt: !2027)
!2071 = !DILocation(line: 80, column: 14, scope: !1608, inlinedAt: !2027)
!2072 = !DILocation(line: 80, column: 18, scope: !1608, inlinedAt: !2027)
!2073 = !DILocation(line: 80, column: 16, scope: !1608, inlinedAt: !2027)
!2074 = !DILocation(line: 81, column: 9, scope: !1662, inlinedAt: !2027)
!2075 = !DILocation(line: 81, column: 16, scope: !1664, inlinedAt: !2027)
!2076 = !DILocation(line: 81, column: 20, scope: !1664, inlinedAt: !2027)
!2077 = !DILocation(line: 81, column: 18, scope: !1664, inlinedAt: !2027)
!2078 = !DILocation(line: 81, column: 9, scope: !1665, inlinedAt: !2027)
!2079 = !DILocation(line: 82, column: 15, scope: !1670, inlinedAt: !2027)
!2080 = !DILocation(line: 82, column: 27, scope: !1670, inlinedAt: !2027)
!2081 = !DILocation(line: 0, scope: !1674, inlinedAt: !2082)
!2082 = distinct !DILocation(line: 82, column: 30, scope: !1670, inlinedAt: !2027)
!2083 = !DILocation(line: 18, column: 12, scope: !1674, inlinedAt: !2082)
!2084 = !DILocation(line: 82, column: 42, scope: !1670, inlinedAt: !2027)
!2085 = !DILocation(line: 82, column: 15, scope: !1671, inlinedAt: !2027)
!2086 = !DILocation(line: 84, column: 13, scope: !1682, inlinedAt: !2027)
!2087 = !DILocation(line: 85, column: 13, scope: !1682, inlinedAt: !2027)
!2088 = !DILocation(line: 81, column: 25, scope: !1664, inlinedAt: !2027)
!2089 = !DILocation(line: 81, column: 9, scope: !1664, inlinedAt: !2027)
!2090 = distinct !{!2090, !2078, !2091, !1648}
!2091 = !DILocation(line: 87, column: 9, scope: !1665, inlinedAt: !2027)
!2092 = distinct !{!2092, !2070, !2093, !1648}
!2093 = !DILocation(line: 88, column: 7, scope: !1608, inlinedAt: !2027)
!2094 = !DILocation(line: 89, column: 5, scope: !1608, inlinedAt: !2027)
!2095 = !DILocation(line: 91, column: 9, scope: !1692, inlinedAt: !2027)
!2096 = !DILocation(line: 91, column: 9, scope: !1593, inlinedAt: !2027)
!2097 = !DILocation(line: 92, column: 17, scope: !1692, inlinedAt: !2027)
!2098 = !DILocation(line: 92, column: 7, scope: !1692, inlinedAt: !2027)
!2099 = !DILocation(line: 93, column: 9, scope: !1697, inlinedAt: !2027)
!2100 = !DILocation(line: 93, column: 9, scope: !1593, inlinedAt: !2027)
!2101 = !DILocation(line: 94, column: 17, scope: !1697, inlinedAt: !2027)
!2102 = !DILocation(line: 94, column: 7, scope: !1697, inlinedAt: !2027)
!2103 = !DILocation(line: 95, column: 9, scope: !1702, inlinedAt: !2027)
!2104 = !DILocation(line: 95, column: 9, scope: !1593, inlinedAt: !2027)
!2105 = !DILocation(line: 96, column: 17, scope: !1702, inlinedAt: !2027)
!2106 = !DILocation(line: 96, column: 7, scope: !1702, inlinedAt: !2027)
!2107 = !DILocation(line: 97, column: 3, scope: !1593, inlinedAt: !2027)
!2108 = !DILocation(line: 59, column: 3, scope: !2028)
!2109 = !DILocation(line: 59, column: 3, scope: !2022)
!2110 = !DILocation(line: 58, column: 5, scope: !2028)
!2111 = distinct !DISubprogram(name: "task", linkageName: "_ZN22MultiThreadedTaskQueue4taskEii", scope: !27, file: !26, line: 187, type: !199, scopeLine: 187, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, declaration: !198, retainedNodes: !1574)
!2112 = !DILocalVariable(name: "this", arg: 1, scope: !2111, type: !133, flags: DIFlagArtificial | DIFlagObjectPointer)
!2113 = !DILocation(line: 0, scope: !2111)
!2114 = !DILocalVariable(name: "jobID", arg: 2, scope: !2111, file: !26, line: 187, type: !34)
!2115 = !DILocation(line: 187, column: 24, scope: !2111)
!2116 = !DILocalVariable(name: "threadID", arg: 3, scope: !2111, file: !26, line: 187, type: !34)
!2117 = !DILocation(line: 187, column: 35, scope: !2111)
!2118 = !DILocation(line: 191, column: 5, scope: !2111)
!2119 = distinct !DISubprogram(name: "tag", linkageName: "_ZNK22MultiThreadedTaskQueue3tagEv", scope: !27, file: !26, line: 201, type: !210, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, declaration: !209, retainedNodes: !1574)
!2120 = !DILocalVariable(name: "this", arg: 1, scope: !2119, type: !1805, flags: DIFlagArtificial | DIFlagObjectPointer)
!2121 = !DILocation(line: 0, scope: !2119)
!2122 = !DILocation(line: 202, column: 12, scope: !2119)
!2123 = !DILocation(line: 202, column: 5, scope: !2119)
!2124 = distinct !DISubprogram(name: "MultiThreadedScheduler", linkageName: "_ZN22MultiThreadedSchedulerC2Ev", scope: !180, file: !9, line: 11, type: !185, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, declaration: !184, retainedNodes: !1574)
!2125 = !DILocalVariable(name: "this", arg: 1, scope: !2124, type: !179, flags: DIFlagArtificial | DIFlagObjectPointer)
!2126 = !DILocation(line: 0, scope: !2124)
!2127 = !DILocation(line: 11, column: 50, scope: !2124)
!2128 = !DILocation(line: 11, column: 30, scope: !2124)
!2129 = !DILocation(line: 12, column: 3, scope: !2124)
!2130 = distinct !DISubprogram(name: "~MultiThreadedScheduler", linkageName: "_ZN22MultiThreadedSchedulerD2Ev", scope: !180, file: !9, line: 14, type: !185, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, declaration: !188, retainedNodes: !1574)
!2131 = !DILocalVariable(name: "this", arg: 1, scope: !2130, type: !179, flags: DIFlagArtificial | DIFlagObjectPointer)
!2132 = !DILocation(line: 0, scope: !2130)
!2133 = !DILocation(line: 15, column: 3, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !2130, file: !9, line: 14, column: 29)
!2135 = !DILocation(line: 15, column: 3, scope: !2130)
!2136 = distinct !DISubprogram(name: "threadFunc", linkageName: "_ZN28MultiThreadedTaskQueueServer10threadFuncEPv", scope: !40, file: !9, line: 168, type: !161, scopeLine: 168, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, declaration: !160, retainedNodes: !1574)
!2137 = !DILocalVariable(name: "_id", arg: 1, scope: !2136, file: !9, line: 168, type: !163)
!2138 = !DILocation(line: 168, column: 33, scope: !2136)
!2139 = !DILocalVariable(name: "id", scope: !2136, file: !9, line: 169, type: !111)
!2140 = !DILocation(line: 169, column: 19, scope: !2136)
!2141 = !DILocation(line: 169, column: 39, scope: !2136)
!2142 = !DILocation(line: 169, column: 24, scope: !2136)
!2143 = !DILocation(line: 171, column: 16, scope: !2136)
!2144 = !DILocation(line: 171, column: 29, scope: !2136)
!2145 = !DILocation(line: 171, column: 48, scope: !2136)
!2146 = !DILocation(line: 171, column: 5, scope: !2136)
!2147 = !DILocation(line: 174, column: 5, scope: !2136)
!2148 = !DILocation(line: 174, column: 17, scope: !2136)
!2149 = !DILocalVariable(name: "this", arg: 1, scope: !2150, type: !179, flags: DIFlagArtificial | DIFlagObjectPointer)
!2150 = distinct !DISubprogram(name: "suspend", linkageName: "_ZN22MultiThreadedScheduler7suspendEbi", scope: !180, file: !9, line: 22, type: !195, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, declaration: !194, retainedNodes: !1574)
!2151 = !DILocation(line: 0, scope: !2150, inlinedAt: !2152)
!2152 = distinct !DILocation(line: 174, column: 21, scope: !2136)
!2153 = !DILocalVariable(name: "locked", arg: 2, scope: !2150, file: !9, line: 22, type: !148)
!2154 = !DILocation(line: 22, column: 29, scope: !2150, inlinedAt: !2152)
!2155 = !DILocalVariable(name: "value", arg: 3, scope: !2150, file: !9, line: 22, type: !34)
!2156 = !DILocation(line: 22, column: 49, scope: !2150, inlinedAt: !2152)
!2157 = !DILocalVariable(name: "code", scope: !2150, file: !9, line: 23, type: !34)
!2158 = !DILocation(line: 23, column: 9, scope: !2150, inlinedAt: !2152)
!2159 = !DILocation(line: 24, column: 9, scope: !2160, inlinedAt: !2152)
!2160 = distinct !DILexicalBlock(scope: !2150, file: !9, line: 24, column: 9)
!2161 = !DILocation(line: 24, column: 16, scope: !2160, inlinedAt: !2152)
!2162 = !DILocation(line: 24, column: 9, scope: !2150, inlinedAt: !2152)
!2163 = !DILocation(line: 0, scope: !1610, inlinedAt: !2164)
!2164 = distinct !DILocation(line: 24, column: 33, scope: !2160, inlinedAt: !2152)
!2165 = !DILocation(line: 255, column: 37, scope: !1610, inlinedAt: !2164)
!2166 = !DILocation(line: 24, column: 31, scope: !2160, inlinedAt: !2152)
!2167 = !DILocation(line: 24, column: 26, scope: !2160, inlinedAt: !2152)
!2168 = !DILocation(line: 25, column: 19, scope: !2150, inlinedAt: !2152)
!2169 = !DILocation(line: 25, column: 5, scope: !2150, inlinedAt: !2152)
!2170 = !DILocation(line: 25, column: 17, scope: !2150, inlinedAt: !2152)
!2171 = !DILocation(line: 0, scope: !1988, inlinedAt: !2172)
!2172 = distinct !DILocation(line: 26, column: 40, scope: !2150, inlinedAt: !2152)
!2173 = !DILocation(line: 258, column: 56, scope: !1988, inlinedAt: !2172)
!2174 = !DILocation(line: 258, column: 37, scope: !1988, inlinedAt: !2172)
!2175 = !DILocation(line: 26, column: 10, scope: !2150, inlinedAt: !2152)
!2176 = !DILocation(line: 0, scope: !1651, inlinedAt: !2177)
!2177 = distinct !DILocation(line: 27, column: 12, scope: !2150, inlinedAt: !2152)
!2178 = !DILocation(line: 257, column: 37, scope: !1651, inlinedAt: !2177)
!2179 = !DILocation(line: 27, column: 10, scope: !2150, inlinedAt: !2152)
!2180 = !DILocalVariable(name: "seqn", scope: !2136, file: !9, line: 176, type: !34)
!2181 = !DILocation(line: 176, column: 9, scope: !2136)
!2182 = !DILocalVariable(name: "tag", scope: !2136, file: !9, line: 177, type: !111)
!2183 = !DILocation(line: 177, column: 19, scope: !2136)
!2184 = !DILocation(line: 178, column: 5, scope: !2136)
!2185 = !DILocalVariable(name: "this", arg: 1, scope: !2186, type: !2187, flags: DIFlagArtificial | DIFlagObjectPointer)
!2186 = distinct !DISubprogram(name: "finished", linkageName: "_ZNK28MultiThreadedTaskQueueServer8finishedEv", scope: !40, file: !9, line: 150, type: !155, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, declaration: !154, retainedNodes: !1574)
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!2188 = !DILocation(line: 0, scope: !2186, inlinedAt: !2189)
!2189 = distinct !DILocation(line: 178, column: 22, scope: !2136)
!2190 = !DILocation(line: 150, column: 42, scope: !2186, inlinedAt: !2189)
!2191 = !DILocation(line: 150, column: 52, scope: !2186, inlinedAt: !2189)
!2192 = !DILocation(line: 178, column: 12, scope: !2136)
!2193 = !DILocalVariable(name: "client", scope: !2194, file: !9, line: 179, type: !133)
!2194 = distinct !DILexicalBlock(scope: !2136, file: !9, line: 178, column: 34)
!2195 = !DILocation(line: 179, column: 31, scope: !2194)
!2196 = !DILocation(line: 179, column: 40, scope: !2194)
!2197 = !DILocation(line: 179, column: 73, scope: !2194)
!2198 = !DILocalVariable(name: "action", scope: !2194, file: !9, line: 181, type: !34)
!2199 = !DILocation(line: 181, column: 11, scope: !2194)
!2200 = !DILocation(line: 183, column: 7, scope: !2194)
!2201 = !DILocation(line: 184, column: 11, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2194, file: !9, line: 184, column: 11)
!2203 = !DILocation(line: 184, column: 18, scope: !2202)
!2204 = !DILocation(line: 184, column: 26, scope: !2202)
!2205 = !DILocation(line: 184, column: 15, scope: !2202)
!2206 = !DILocation(line: 184, column: 11, scope: !2194)
!2207 = !DILocation(line: 185, column: 15, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2202, file: !9, line: 184, column: 33)
!2209 = !DILocation(line: 185, column: 23, scope: !2208)
!2210 = !DILocation(line: 185, column: 13, scope: !2208)
!2211 = !DILocation(line: 0, scope: !1610, inlinedAt: !2212)
!2212 = distinct !DILocation(line: 186, column: 18, scope: !2208)
!2213 = !DILocation(line: 255, column: 37, scope: !1610, inlinedAt: !2212)
!2214 = !DILocation(line: 187, column: 13, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2208, file: !9, line: 187, column: 13)
!2216 = !DILocation(line: 187, column: 21, scope: !2215)
!2217 = !DILocation(line: 187, column: 40, scope: !2215)
!2218 = !DILocation(line: 187, column: 48, scope: !2215)
!2219 = !DILocation(line: 187, column: 37, scope: !2215)
!2220 = !DILocation(line: 187, column: 13, scope: !2208)
!2221 = !DILocation(line: 0, scope: !1651, inlinedAt: !2222)
!2222 = distinct !DILocation(line: 188, column: 20, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2215, file: !9, line: 187, column: 59)
!2224 = !DILocation(line: 257, column: 37, scope: !1651, inlinedAt: !2222)
!2225 = !DILocation(line: 189, column: 11, scope: !2223)
!2226 = !DILocation(line: 191, column: 16, scope: !2208)
!2227 = !DILocation(line: 191, column: 24, scope: !2208)
!2228 = !DILocation(line: 191, column: 39, scope: !2208)
!2229 = !DILocation(line: 191, column: 14, scope: !2208)
!2230 = !DILocation(line: 0, scope: !1651, inlinedAt: !2231)
!2231 = distinct !DILocation(line: 192, column: 18, scope: !2208)
!2232 = !DILocation(line: 257, column: 37, scope: !1651, inlinedAt: !2231)
!2233 = !DILocation(line: 193, column: 7, scope: !2208)
!2234 = !DILocation(line: 194, column: 16, scope: !2194)
!2235 = !DILocation(line: 194, column: 29, scope: !2194)
!2236 = !DILocation(line: 194, column: 40, scope: !2194)
!2237 = !DILocation(line: 194, column: 24, scope: !2194)
!2238 = !DILocation(line: 194, column: 14, scope: !2194)
!2239 = !DILocation(line: 195, column: 11, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2194, file: !9, line: 195, column: 11)
!2241 = !DILocation(line: 195, column: 18, scope: !2240)
!2242 = !DILocation(line: 195, column: 11, scope: !2194)
!2243 = !DILocation(line: 196, column: 9, scope: !2240)
!2244 = !DILocation(line: 195, column: 21, scope: !2240)
!2245 = !DILabel(scope: !2194, name: "getnext", file: !9, line: 198)
!2246 = !DILocation(line: 198, column: 5, scope: !2194)
!2247 = !DILocation(line: 200, column: 36, scope: !2194)
!2248 = !DILocalVariable(name: "threadID", arg: 1, scope: !2249, file: !9, line: 208, type: !130)
!2249 = distinct !DISubprogram(name: "deactivateThread", linkageName: "_ZN28MultiThreadedTaskQueueServer16deactivateThreadEi", scope: !40, file: !9, line: 208, type: !165, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, declaration: !164, retainedNodes: !1574)
!2250 = !DILocation(line: 208, column: 49, scope: !2249, inlinedAt: !2251)
!2251 = distinct !DILocation(line: 200, column: 14, scope: !2194)
!2252 = !DILocalVariable(name: "client", scope: !2249, file: !9, line: 211, type: !133)
!2253 = !DILocation(line: 211, column: 29, scope: !2249, inlinedAt: !2251)
!2254 = !DILocation(line: 211, column: 38, scope: !2249, inlinedAt: !2251)
!2255 = !DILocation(line: 211, column: 47, scope: !2249, inlinedAt: !2251)
!2256 = !DILocation(line: 212, column: 5, scope: !2249, inlinedAt: !2251)
!2257 = !DILocation(line: 213, column: 5, scope: !2249, inlinedAt: !2251)
!2258 = !DILocation(line: 213, column: 14, scope: !2249, inlinedAt: !2251)
!2259 = !DILocation(line: 213, column: 24, scope: !2249, inlinedAt: !2251)
!2260 = !DILocalVariable(name: "code", scope: !2249, file: !9, line: 218, type: !34)
!2261 = !DILocation(line: 218, column: 9, scope: !2249, inlinedAt: !2251)
!2262 = !DILocation(line: 0, scope: !1610, inlinedAt: !2263)
!2263 = distinct !DILocation(line: 218, column: 25, scope: !2249, inlinedAt: !2251)
!2264 = !DILocation(line: 255, column: 37, scope: !1610, inlinedAt: !2263)
!2265 = !DILocalVariable(name: "seqn", scope: !2249, file: !9, line: 219, type: !34)
!2266 = !DILocation(line: 219, column: 9, scope: !2249, inlinedAt: !2251)
!2267 = !DILocalVariable(name: "done", scope: !2249, file: !9, line: 223, type: !148)
!2268 = !DILocation(line: 223, column: 10, scope: !2249, inlinedAt: !2251)
!2269 = !DILocation(line: 223, column: 19, scope: !2249, inlinedAt: !2251)
!2270 = !DILocation(line: 223, column: 27, scope: !2249, inlinedAt: !2251)
!2271 = !DILocation(line: 223, column: 17, scope: !2249, inlinedAt: !2251)
!2272 = !DILocation(line: 223, column: 46, scope: !2249, inlinedAt: !2251)
!2273 = !DILocation(line: 223, column: 54, scope: !2249, inlinedAt: !2251)
!2274 = !DILocation(line: 223, column: 43, scope: !2249, inlinedAt: !2251)
!2275 = !DILocation(line: 226, column: 27, scope: !2276, inlinedAt: !2251)
!2276 = distinct !DILexicalBlock(scope: !2249, file: !9, line: 226, column: 9)
!2277 = !DILocation(line: 226, column: 18, scope: !2276, inlinedAt: !2251)
!2278 = !DILocation(line: 226, column: 9, scope: !2249, inlinedAt: !2251)
!2279 = !DILocation(line: 229, column: 11, scope: !2280, inlinedAt: !2251)
!2280 = distinct !DILexicalBlock(scope: !2281, file: !9, line: 229, column: 11)
!2281 = distinct !DILexicalBlock(scope: !2276, file: !9, line: 226, column: 38)
!2282 = !DILocation(line: 229, column: 11, scope: !2281, inlinedAt: !2251)
!2283 = !DILocation(line: 0, scope: !1639, inlinedAt: !2284)
!2284 = distinct !DILocation(line: 230, column: 18, scope: !2280, inlinedAt: !2251)
!2285 = !DILocation(line: 259, column: 51, scope: !1639, inlinedAt: !2284)
!2286 = !DILocation(line: 259, column: 30, scope: !1639, inlinedAt: !2284)
!2287 = !DILocation(line: 230, column: 9, scope: !2280, inlinedAt: !2251)
!2288 = !DILocation(line: 232, column: 16, scope: !2280, inlinedAt: !2251)
!2289 = !DILocation(line: 232, column: 24, scope: !2280, inlinedAt: !2251)
!2290 = !DILocation(line: 232, column: 39, scope: !2280, inlinedAt: !2251)
!2291 = !DILocation(line: 232, column: 14, scope: !2280, inlinedAt: !2251)
!2292 = !DILocation(line: 0, scope: !1651, inlinedAt: !2293)
!2293 = distinct !DILocation(line: 233, column: 23, scope: !2281, inlinedAt: !2251)
!2294 = !DILocation(line: 257, column: 37, scope: !1651, inlinedAt: !2293)
!2295 = !DILocation(line: 233, column: 12, scope: !2281, inlinedAt: !2251)
!2296 = !DILocation(line: 234, column: 5, scope: !2281, inlinedAt: !2251)
!2297 = !DILocation(line: 237, column: 11, scope: !2298, inlinedAt: !2251)
!2298 = distinct !DILexicalBlock(scope: !2299, file: !9, line: 237, column: 11)
!2299 = distinct !DILexicalBlock(scope: !2276, file: !9, line: 234, column: 12)
!2300 = !DILocation(line: 237, column: 11, scope: !2299, inlinedAt: !2251)
!2301 = !DILocation(line: 0, scope: !1639, inlinedAt: !2302)
!2302 = distinct !DILocation(line: 238, column: 18, scope: !2298, inlinedAt: !2251)
!2303 = !DILocation(line: 259, column: 51, scope: !1639, inlinedAt: !2302)
!2304 = !DILocation(line: 259, column: 30, scope: !1639, inlinedAt: !2302)
!2305 = !DILocation(line: 238, column: 9, scope: !2298, inlinedAt: !2251)
!2306 = !DILocation(line: 239, column: 7, scope: !2299, inlinedAt: !2251)
!2307 = !DILocation(line: 239, column: 19, scope: !2299, inlinedAt: !2251)
!2308 = !DILocation(line: 0, scope: !1610, inlinedAt: !2309)
!2309 = distinct !DILocation(line: 239, column: 29, scope: !2299, inlinedAt: !2251)
!2310 = !DILocation(line: 255, column: 37, scope: !1610, inlinedAt: !2309)
!2311 = !DILocation(line: 0, scope: !1651, inlinedAt: !2312)
!2312 = distinct !DILocation(line: 240, column: 23, scope: !2299, inlinedAt: !2251)
!2313 = !DILocation(line: 257, column: 37, scope: !1651, inlinedAt: !2312)
!2314 = !DILocation(line: 240, column: 12, scope: !2299, inlinedAt: !2251)
!2315 = !DILocation(line: 241, column: 7, scope: !2299, inlinedAt: !2251)
!2316 = !DILocation(line: 241, column: 19, scope: !2299, inlinedAt: !2251)
!2317 = !DILocation(line: 0, scope: !2150, inlinedAt: !2318)
!2318 = distinct !DILocation(line: 241, column: 29, scope: !2299, inlinedAt: !2251)
!2319 = !DILocation(line: 22, column: 29, scope: !2150, inlinedAt: !2318)
!2320 = !DILocation(line: 22, column: 49, scope: !2150, inlinedAt: !2318)
!2321 = !DILocation(line: 23, column: 9, scope: !2150, inlinedAt: !2318)
!2322 = !DILocation(line: 24, column: 9, scope: !2160, inlinedAt: !2318)
!2323 = !DILocation(line: 24, column: 16, scope: !2160, inlinedAt: !2318)
!2324 = !DILocation(line: 24, column: 9, scope: !2150, inlinedAt: !2318)
!2325 = !DILocation(line: 0, scope: !1610, inlinedAt: !2326)
!2326 = distinct !DILocation(line: 24, column: 33, scope: !2160, inlinedAt: !2318)
!2327 = !DILocation(line: 255, column: 37, scope: !1610, inlinedAt: !2326)
!2328 = !DILocation(line: 24, column: 31, scope: !2160, inlinedAt: !2318)
!2329 = !DILocation(line: 24, column: 26, scope: !2160, inlinedAt: !2318)
!2330 = !DILocation(line: 25, column: 19, scope: !2150, inlinedAt: !2318)
!2331 = !DILocation(line: 25, column: 5, scope: !2150, inlinedAt: !2318)
!2332 = !DILocation(line: 25, column: 17, scope: !2150, inlinedAt: !2318)
!2333 = !DILocation(line: 0, scope: !1988, inlinedAt: !2334)
!2334 = distinct !DILocation(line: 26, column: 40, scope: !2150, inlinedAt: !2318)
!2335 = !DILocation(line: 258, column: 56, scope: !1988, inlinedAt: !2334)
!2336 = !DILocation(line: 258, column: 37, scope: !1988, inlinedAt: !2334)
!2337 = !DILocation(line: 26, column: 10, scope: !2150, inlinedAt: !2318)
!2338 = !DILocation(line: 0, scope: !1651, inlinedAt: !2339)
!2339 = distinct !DILocation(line: 27, column: 12, scope: !2150, inlinedAt: !2318)
!2340 = !DILocation(line: 257, column: 37, scope: !1651, inlinedAt: !2339)
!2341 = !DILocation(line: 27, column: 10, scope: !2150, inlinedAt: !2318)
!2342 = !DILocation(line: 243, column: 12, scope: !2249, inlinedAt: !2251)
!2343 = !DILocation(line: 200, column: 12, scope: !2194)
!2344 = distinct !{!2344, !2184, !2345, !1648}
!2345 = !DILocation(line: 201, column: 5, scope: !2136)
!2346 = !DILocation(line: 203, column: 5, scope: !2136)
!2347 = !DILocation(line: 203, column: 17, scope: !2136)
!2348 = !DILocation(line: 0, scope: !2150, inlinedAt: !2349)
!2349 = distinct !DILocation(line: 203, column: 21, scope: !2136)
!2350 = !DILocation(line: 22, column: 29, scope: !2150, inlinedAt: !2349)
!2351 = !DILocation(line: 22, column: 49, scope: !2150, inlinedAt: !2349)
!2352 = !DILocation(line: 23, column: 9, scope: !2150, inlinedAt: !2349)
!2353 = !DILocation(line: 24, column: 9, scope: !2160, inlinedAt: !2349)
!2354 = !DILocation(line: 24, column: 16, scope: !2160, inlinedAt: !2349)
!2355 = !DILocation(line: 24, column: 9, scope: !2150, inlinedAt: !2349)
!2356 = !DILocation(line: 0, scope: !1610, inlinedAt: !2357)
!2357 = distinct !DILocation(line: 24, column: 33, scope: !2160, inlinedAt: !2349)
!2358 = !DILocation(line: 255, column: 37, scope: !1610, inlinedAt: !2357)
!2359 = !DILocation(line: 24, column: 31, scope: !2160, inlinedAt: !2349)
!2360 = !DILocation(line: 24, column: 26, scope: !2160, inlinedAt: !2349)
!2361 = !DILocation(line: 25, column: 19, scope: !2150, inlinedAt: !2349)
!2362 = !DILocation(line: 25, column: 5, scope: !2150, inlinedAt: !2349)
!2363 = !DILocation(line: 25, column: 17, scope: !2150, inlinedAt: !2349)
!2364 = !DILocation(line: 0, scope: !1988, inlinedAt: !2365)
!2365 = distinct !DILocation(line: 26, column: 40, scope: !2150, inlinedAt: !2349)
!2366 = !DILocation(line: 258, column: 56, scope: !1988, inlinedAt: !2365)
!2367 = !DILocation(line: 258, column: 37, scope: !1988, inlinedAt: !2365)
!2368 = !DILocation(line: 26, column: 10, scope: !2150, inlinedAt: !2349)
!2369 = !DILocation(line: 0, scope: !1651, inlinedAt: !2370)
!2370 = distinct !DILocation(line: 27, column: 12, scope: !2150, inlinedAt: !2349)
!2371 = !DILocation(line: 257, column: 37, scope: !1651, inlinedAt: !2370)
!2372 = !DILocation(line: 27, column: 10, scope: !2150, inlinedAt: !2349)
!2373 = !DILocation(line: 204, column: 5, scope: !2136)
!2374 = distinct !DISubprogram(name: "MultiThreadedSyncPrimitive", linkageName: "_ZN26MultiThreadedSyncPrimitiveC2Ev", scope: !44, file: !26, line: 244, type: !113, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, declaration: !112, retainedNodes: !1574)
!2375 = !DILocalVariable(name: "this", arg: 1, scope: !2374, type: !1611, flags: DIFlagArtificial | DIFlagObjectPointer)
!2376 = !DILocation(line: 0, scope: !2374)
!2377 = !DILocation(line: 244, column: 3, scope: !2374)
!2378 = !DILocation(line: 245, column: 25, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2374, file: !26, line: 244, column: 32)
!2380 = !DILocation(line: 245, column: 5, scope: !2379)
!2381 = !DILocation(line: 246, column: 24, scope: !2379)
!2382 = !DILocation(line: 246, column: 5, scope: !2379)
!2383 = !DILocation(line: 247, column: 3, scope: !2374)
!2384 = distinct !DISubprogram(name: "~MultiThreadedSyncPrimitive", linkageName: "_ZN26MultiThreadedSyncPrimitiveD2Ev", scope: !44, file: !26, line: 248, type: !113, scopeLine: 248, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, declaration: !116, retainedNodes: !1574)
!2385 = !DILocalVariable(name: "this", arg: 1, scope: !2384, type: !1611, flags: DIFlagArtificial | DIFlagObjectPointer)
!2386 = !DILocation(line: 0, scope: !2384)
!2387 = !DILocation(line: 249, column: 28, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !2384, file: !26, line: 248, column: 33)
!2389 = !DILocation(line: 249, column: 5, scope: !2388)
!2390 = !DILocation(line: 250, column: 27, scope: !2388)
!2391 = !DILocation(line: 250, column: 5, scope: !2388)
!2392 = !DILocation(line: 251, column: 3, scope: !2384)
!2393 = distinct !DISubprogram(name: "schedule", linkageName: "_ZN28MultiThreadedTaskQueueServer8scheduleEi", scope: !40, file: !9, line: 302, type: !174, scopeLine: 302, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, declaration: !173, retainedNodes: !1574)
!2394 = !DILocalVariable(name: "this", arg: 1, scope: !2393, type: !1587, flags: DIFlagArtificial | DIFlagObjectPointer)
!2395 = !DILocation(line: 0, scope: !2393)
!2396 = !DILocalVariable(name: "i", arg: 2, scope: !2393, file: !9, line: 302, type: !34)
!2397 = !DILocation(line: 302, column: 21, scope: !2393)
!2398 = !DILocation(line: 304, column: 9, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !2393, file: !9, line: 304, column: 9)
!2400 = !DILocation(line: 304, column: 18, scope: !2399)
!2401 = !DILocation(line: 304, column: 21, scope: !2399)
!2402 = !DILocation(line: 304, column: 9, scope: !2393)
!2403 = !DILocalVariable(name: "ji", scope: !2404, file: !9, line: 306, type: !34)
!2404 = distinct !DILexicalBlock(scope: !2399, file: !9, line: 304, column: 30)
!2405 = !DILocation(line: 306, column: 11, scope: !2404)
!2406 = !DILocalVariable(name: "this", arg: 1, scope: !2407, type: !1587, flags: DIFlagArtificial | DIFlagObjectPointer)
!2407 = distinct !DISubprogram(name: "getNextClientIndex", linkageName: "_ZN28MultiThreadedTaskQueueServer18getNextClientIndexEv", scope: !40, file: !9, line: 247, type: !168, scopeLine: 247, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, declaration: !167, retainedNodes: !1574)
!2408 = !DILocation(line: 0, scope: !2407, inlinedAt: !2409)
!2409 = distinct !DILocation(line: 306, column: 16, scope: !2404)
!2410 = !DILocalVariable(name: "j", scope: !2407, file: !9, line: 249, type: !34)
!2411 = !DILocation(line: 249, column: 9, scope: !2407, inlinedAt: !2409)
!2412 = !DILocation(line: 249, column: 13, scope: !2407, inlinedAt: !2409)
!2413 = !DILocalVariable(name: "i", scope: !2414, file: !9, line: 250, type: !34)
!2414 = distinct !DILexicalBlock(scope: !2407, file: !9, line: 250, column: 5)
!2415 = !DILocation(line: 250, column: 14, scope: !2414, inlinedAt: !2409)
!2416 = !DILocation(line: 250, column: 10, scope: !2414, inlinedAt: !2409)
!2417 = !DILocation(line: 250, column: 21, scope: !2418, inlinedAt: !2409)
!2418 = distinct !DILexicalBlock(scope: !2414, file: !9, line: 250, column: 5)
!2419 = !DILocation(line: 250, column: 23, scope: !2418, inlinedAt: !2409)
!2420 = !DILocation(line: 250, column: 5, scope: !2414, inlinedAt: !2409)
!2421 = !DILocation(line: 251, column: 11, scope: !2422, inlinedAt: !2409)
!2422 = distinct !DILexicalBlock(scope: !2423, file: !9, line: 251, column: 11)
!2423 = distinct !DILexicalBlock(scope: !2418, file: !9, line: 250, column: 41)
!2424 = !DILocation(line: 251, column: 28, scope: !2422, inlinedAt: !2409)
!2425 = !DILocation(line: 251, column: 11, scope: !2423, inlinedAt: !2409)
!2426 = !DILocation(line: 252, column: 16, scope: !2427, inlinedAt: !2409)
!2427 = distinct !DILexicalBlock(scope: !2422, file: !9, line: 251, column: 32)
!2428 = !DILocation(line: 252, column: 9, scope: !2427, inlinedAt: !2409)
!2429 = !DILocation(line: 254, column: 11, scope: !2430, inlinedAt: !2409)
!2430 = distinct !DILexicalBlock(scope: !2423, file: !9, line: 254, column: 11)
!2431 = !DILocation(line: 254, column: 15, scope: !2430, inlinedAt: !2409)
!2432 = !DILocation(line: 254, column: 11, scope: !2423, inlinedAt: !2409)
!2433 = !DILocation(line: 254, column: 31, scope: !2430, inlinedAt: !2409)
!2434 = !DILocation(line: 254, column: 29, scope: !2430, inlinedAt: !2409)
!2435 = !DILocation(line: 250, column: 37, scope: !2418, inlinedAt: !2409)
!2436 = !DILocation(line: 250, column: 5, scope: !2418, inlinedAt: !2409)
!2437 = distinct !{!2437, !2420, !2438, !1648}
!2438 = !DILocation(line: 255, column: 5, scope: !2414, inlinedAt: !2409)
!2439 = !DILocation(line: 256, column: 5, scope: !2407, inlinedAt: !2409)
!2440 = !DILocation(line: 257, column: 3, scope: !2407, inlinedAt: !2409)
!2441 = !DILocation(line: 307, column: 11, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !2404, file: !9, line: 307, column: 11)
!2443 = !DILocation(line: 307, column: 14, scope: !2442)
!2444 = !DILocation(line: 307, column: 11, scope: !2404)
!2445 = !DILocation(line: 309, column: 9, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2442, file: !9, line: 307, column: 21)
!2447 = !DILocation(line: 311, column: 21, scope: !2404)
!2448 = !DILocation(line: 311, column: 38, scope: !2404)
!2449 = !DILocation(line: 311, column: 7, scope: !2404)
!2450 = !DILocation(line: 311, column: 16, scope: !2404)
!2451 = !DILocation(line: 311, column: 19, scope: !2404)
!2452 = !DILocation(line: 314, column: 13, scope: !2453)
!2453 = distinct !DILexicalBlock(scope: !2404, file: !9, line: 314, column: 11)
!2454 = !DILocation(line: 314, column: 29, scope: !2453)
!2455 = !DILocation(line: 314, column: 11, scope: !2453)
!2456 = !DILocation(line: 314, column: 36, scope: !2453)
!2457 = !DILocation(line: 314, column: 53, scope: !2453)
!2458 = !DILocation(line: 314, column: 58, scope: !2453)
!2459 = !DILocation(line: 314, column: 33, scope: !2453)
!2460 = !DILocation(line: 314, column: 11, scope: !2404)
!2461 = !DILocation(line: 315, column: 9, scope: !2453)
!2462 = !DILocation(line: 315, column: 26, scope: !2453)
!2463 = !DILocation(line: 315, column: 30, scope: !2453)
!2464 = !DILocation(line: 317, column: 5, scope: !2404)
!2465 = !DILocation(line: 318, column: 5, scope: !2393)
!2466 = !DILocation(line: 319, column: 3, scope: !2393)
!2467 = distinct !DISubprogram(name: "MultiThreadedTaskQueue", linkageName: "_ZN22MultiThreadedTaskQueueC2Ev", scope: !27, file: !26, line: 194, type: !203, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, declaration: !202, retainedNodes: !1574)
!2468 = !DILocalVariable(name: "this", arg: 1, scope: !2467, type: !133, flags: DIFlagArtificial | DIFlagObjectPointer)
!2469 = !DILocation(line: 0, scope: !2467)
!2470 = !DILocation(line: 194, column: 43, scope: !2467)
!2471 = !DILocation(line: 194, column: 30, scope: !2467)
!2472 = !DILocation(line: 194, column: 44, scope: !2467)
!2473 = distinct !DISubprogram(name: "~MultiThreadedTaskQueue", linkageName: "_ZN22MultiThreadedTaskQueueD2Ev", scope: !27, file: !26, line: 196, type: !203, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, declaration: !208, retainedNodes: !1574)
!2474 = !DILocalVariable(name: "this", arg: 1, scope: !2473, type: !133, flags: DIFlagArtificial | DIFlagObjectPointer)
!2475 = !DILocation(line: 0, scope: !2473)
!2476 = !DILocation(line: 196, column: 30, scope: !2473)
!2477 = distinct !DISubprogram(linkageName: "_GLOBAL__sub_I_RTThread.cxx", scope: !1051, file: !1051, type: !2478, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !22, retainedNodes: !1574)
!2478 = !DISubroutineType(types: !1574)
!2479 = !DILocation(line: 0, scope: !2477)
