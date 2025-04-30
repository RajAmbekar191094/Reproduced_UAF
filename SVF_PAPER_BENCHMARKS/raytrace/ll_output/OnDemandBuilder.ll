; ModuleID = '/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src/RTTL/BVH/Builder/OnDemandBuilder.cxx'
source_filename = "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src/RTTL/BVH/Builder/OnDemandBuilder.cxx"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%struct.sse_f = type { [4 x float] }
%"class.RTTL::AABB" = type { %"class.RTTL::RTBox3a" }
%"class.RTTL::RTBox3a" = type { %"class.RTTL::RTBox_t" }
%"class.RTTL::RTBox_t" = type { %"class.RTTL::RTVec_t", %"class.RTTL::RTVec_t" }
%"class.RTTL::RTVec_t" = type { %"struct.RTTL::RTData_t" }
%"struct.RTTL::RTData_t" = type { [1 x %struct.sse_f] }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.RTTL::CentroidDiffAABB" = type { %"class.RTTL::RTBox3a" }
%"class.RTTL::BVHBuilder" = type { ptr, ptr }
%"class.RTTL::OnDemandBuilder" = type { %"class.RTTL::BVHBuilder", ptr }
%"struct.RTTL::BVH" = type { ptr, ptr, ptr, i32, ptr }
%"struct.RTTL::BVHExtData" = type { %union.anon }
%union.anon = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.sse_i = type { %union.anon.3 }
%union.anon.3 = type { [4 x i32] }
%"class.RTTL::RTBox_t.1" = type { %"class.RTTL::RTVec_t.2", %"class.RTTL::RTVec_t.2" }
%"class.RTTL::RTVec_t.2" = type { float, float, float }
%struct.anon = type { i8, i8, i16 }

$_ZN4RTTL4AABBC2Ev = comdat any

$_Z12aligned_freeIN4RTTL16CentroidDiffAABBEEvPT_ = comdat any

$_Z14aligned_mallocIN4RTTL16CentroidDiffAABBEEPT_i = comdat any

$_ZN4RTTL16CentroidDiffAABBC2ERKNS_7RTBox3aE = comdat any

$_ZN4RTTL16CentroidDiffAABBaSERKS0_ = comdat any

$_ZN4RTTL4AABBaSERKS0_ = comdat any

$_ZN4RTTL4AABBC2ERKS0_ = comdat any

$_ZNK4RTTL16CentroidDiffAABB8centroidEv = comdat any

$_ZSt3minIiERKT_S2_S2_ = comdat any

$_ZNK4RTTL16CentroidDiffAABB8centroidEi = comdat any

$_ZN5sse_fC2Ev = comdat any

$_ZN4RTTL7RTBox3aC2Ev = comdat any

$_ZN4RTTL7RTBox_tILi1E5sse_fLi0EEC2Ev = comdat any

$_ZN4RTTL7RTVec_tILi1E5sse_fLi0EEC2Ev = comdat any

$_ZN4RTTL8RTData_tILi1E5sse_fLi0EEC2Ev = comdat any

$_ZN4RTTL7RTVec_tILi1E5sse_fLi0EEixEi = comdat any

$_ZNK4RTTL7RTVec_tILi1E5sse_fLi0EEixEi = comdat any

$_ZN4RTTL7RTBox3aaSERKS0_ = comdat any

$_ZN4RTTL7RTVec_tILi1E5sse_fLi0EEcvRNS_8RTData_tILi1ES1_Li0EEEEv = comdat any

$_ZNK4RTTL7RTVec_tILi1E5sse_fLi0EEcvRKNS_8RTData_tILi1ES1_Li0EEEEv = comdat any

$_ZN4RTTL8RTData_tILi1E5sse_fLi0EE9nElementsEv = comdat any

$_ZN4RTTL7RTBox3aC2ERKS0_ = comdat any

$_ZN4RTTL7RTBox_tILi1E5sse_fLi0EEC2ERKS2_ = comdat any

$_ZN4RTTL7RTVec_tILi1E5sse_fLi0EEcvPS1_Ev = comdat any

$_ZN4RTTL7RTVec_tILi1E5sse_fLi0EE5arrayEv = comdat any

$_ZNK4RTTL7RTVec_tILi1E5sse_fLi0EE5arrayEv = comdat any

$_ZN4RTTL7RTBox_tILi3EfLi0EEC2ERKNS_7RTVec_tILi3EfLi0EEES5_ = comdat any

$_ZNK4RTTL7RTVec_tILi3EfLi0EEixEi = comdat any

$_ZNK4RTTL7RTVec_tILi3EfLi0EE4dataEv = comdat any

$_ZNK4RTTL16CentroidDiffAABB7convertEv = comdat any

$_ZN5sse_iC2Ev = comdat any

$_ZTSN4RTTL10BVHBuilderE = comdat any

$_ZTIN4RTTL10BVHBuilderE = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1, !dbg !0
@__dso_handle = external hidden global i8
@_ZL8maxFloat = internal global %struct.sse_f zeroinitializer, align 4, !dbg !7
@_ZN4RTTL15OnDemandBuilder8binCountE = dso_local global [3 x [32 x i32]] zeroinitializer, align 64, !dbg !569
@_ZN4RTTL15OnDemandBuilder9binBoundsE = dso_local global [3 x [32 x %"class.RTTL::AABB"]] zeroinitializer, align 64, !dbg !612
@_ZN4RTTL15OnDemandBuilder8rightBoxE = dso_local global [33 x %"class.RTTL::AABB"] zeroinitializer, align 64, !dbg !614
@nextFree = dso_local global i32 1, align 64, !dbg !616
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@__PRETTY_FUNCTION__._ZN4RTTL15OnDemandBuilder5buildERKNS_7RTBox3aES3_ = private unnamed_addr constant [78 x i8] c"virtual void RTTL::OnDemandBuilder::build(const RTBoxSSE &, const RTBoxSSE &)\00", align 1, !dbg !618
@.str = private unnamed_addr constant [9 x i8] c"numAABBs\00", align 1, !dbg !624
@.str.4 = private unnamed_addr constant [4 x i8] c" = \00", align 1, !dbg !629
@.str.5 = private unnamed_addr constant [21 x i8] c"bvh[nodeID].isLazy()\00", align 1, !dbg !632
@.str.6 = private unnamed_addr constant [102 x i8] c"/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src/RTTL/BVH/Builder/OnDemandBuilder.cxx\00", align 1, !dbg !637
@__PRETTY_FUNCTION__._ZN4RTTL15OnDemandBuilder10createNodeEPNS_4AABBEPii = private unnamed_addr constant [69 x i8] c"void RTTL::OnDemandBuilder::createNode(AABB *const, int *const, int)\00", align 1, !dbg !642
@_ZN4RTTLL7maxBinsE = internal constant i32 32, align 4, !dbg !662
@_ZTVN4RTTL15OnDemandBuilderE = dso_local unnamed_addr constant { [3 x ptr] } { [3 x ptr] [ptr null, ptr @_ZTIN4RTTL15OnDemandBuilderE, ptr @_ZN4RTTL15OnDemandBuilder5buildERKNS_7RTBox3aES3_] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global ptr
@_ZTSN4RTTL15OnDemandBuilderE = dso_local constant [25 x i8] c"N4RTTL15OnDemandBuilderE\00", align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global ptr
@_ZTSN4RTTL10BVHBuilderE = linkonce_odr dso_local constant [20 x i8] c"N4RTTL10BVHBuilderE\00", comdat, align 1
@_ZTIN4RTTL10BVHBuilderE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN4RTTL10BVHBuilderE }, comdat, align 8
@_ZTIN4RTTL15OnDemandBuilderE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4RTTL15OnDemandBuilderE, ptr @_ZTIN4RTTL10BVHBuilderE }, align 8
@.str.7 = private unnamed_addr constant [29 x i8] c"nElements() <= v.nElements()\00", align 1, !dbg !647
@.str.8 = private unnamed_addr constant [88 x i8] c"/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src/RTTL/common/RTData.hxx\00", align 1, !dbg !652
@__PRETTY_FUNCTION__._ZN4RTTL8RTData_tILi1E5sse_fLi0EE6assignILi1ES1_Li0EEEvRKNS0_IXT_ET0_XT1_EEE = private unnamed_addr constant [191 x i8] c"void RTTL::RTData_t<1, sse_f>::assign(const RTData_t<AnotherN, AnotherDataType, AnotherAlign> &) [N = 1, DataType = sse_f, align = 0, AnotherN = 1, AnotherDataType = sse_f, AnotherAlign = 0]\00", align 1, !dbg !657
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_OnDemandBuilder.cxx, ptr null }]

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" !dbg !1880 {
  call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit), !dbg !1882
  %1 = call i32 @__cxa_atexit(ptr @_ZNSt8ios_base4InitD1Ev, ptr @_ZStL8__ioinit, ptr @__dso_handle) #3, !dbg !1884
  ret void, !dbg !1882
}

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) #3

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.1() #4 section ".text.startup" !dbg !1885 {
  %1 = alloca %struct.sse_f, align 4
  %2 = alloca float, align 4
  %3 = alloca i32, align 4
  store float 0x47EFFFFFE0000000, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1886, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.declare(metadata ptr %1, metadata !1893, metadata !DIExpression()), !dbg !1894
  call void @_ZN5sse_fC2Ev(ptr noundef nonnull align 4 dereferenceable(16) %1), !dbg !1894
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1895, metadata !DIExpression()), !dbg !1897
  store i32 0, ptr %3, align 4, !dbg !1897
  br label %4, !dbg !1898

4:                                                ; preds = %7, %0
  %5 = load i32, ptr %3, align 4, !dbg !1899
  %6 = icmp slt i32 %5, 4, !dbg !1901
  br i1 %6, label %7, label %14, !dbg !1902

7:                                                ; preds = %4
  %8 = load float, ptr %2, align 4, !dbg !1903
  %9 = load i32, ptr %3, align 4, !dbg !1904
  %10 = sext i32 %9 to i64, !dbg !1905
  %11 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 %10, !dbg !1905
  store float %8, ptr %11, align 4, !dbg !1906
  %12 = load i32, ptr %3, align 4, !dbg !1907
  %13 = add nsw i32 %12, 1, !dbg !1907
  store i32 %13, ptr %3, align 4, !dbg !1907
  br label %4, !dbg !1908, !llvm.loop !1909

14:                                               ; preds = %4
  %15 = load { <2 x float>, <2 x float> }, ptr %1, align 4, !dbg !1912
  %16 = extractvalue { <2 x float>, <2 x float> } %15, 0, !dbg !1913
  store <2 x float> %16, ptr @_ZL8maxFloat, align 4, !dbg !1913
  %17 = extractvalue { <2 x float>, <2 x float> } %15, 1, !dbg !1913
  store <2 x float> %17, ptr getelementptr inbounds ({ <2 x float>, <2 x float> }, ptr @_ZL8maxFloat, i32 0, i32 1), align 4, !dbg !1913
  ret void, !dbg !1914
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.2() #0 section ".text.startup" !dbg !1915 {
  br label %1, !dbg !1916

1:                                                ; preds = %1, %0
  %2 = phi ptr [ @_ZN4RTTL15OnDemandBuilder9binBoundsE, %0 ], [ %3, %1 ], !dbg !1916
  call void @_ZN4RTTL4AABBC2Ev(ptr noundef nonnull align 4 dereferenceable(32) %2), !dbg !1916
  %3 = getelementptr inbounds %"class.RTTL::AABB", ptr %2, i64 1, !dbg !1916
  %4 = icmp eq ptr %3, getelementptr inbounds (%"class.RTTL::AABB", ptr @_ZN4RTTL15OnDemandBuilder9binBoundsE, i64 96), !dbg !1916
  br i1 %4, label %5, label %1, !dbg !1916

5:                                                ; preds = %1
  ret void, !dbg !1916
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN4RTTL4AABBC2Ev(ptr noundef nonnull align 4 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 !dbg !1918 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1919, metadata !DIExpression()), !dbg !1920
  %3 = load ptr, ptr %2, align 8
  call void @_ZN4RTTL7RTBox3aC2Ev(ptr noundef nonnull align 4 dereferenceable(32) %3), !dbg !1921
  ret void, !dbg !1922
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.3() #0 section ".text.startup" !dbg !1923 {
  br label %1, !dbg !1924

1:                                                ; preds = %1, %0
  %2 = phi ptr [ @_ZN4RTTL15OnDemandBuilder8rightBoxE, %0 ], [ %3, %1 ], !dbg !1924
  call void @_ZN4RTTL4AABBC2Ev(ptr noundef nonnull align 4 dereferenceable(32) %2), !dbg !1924
  %3 = getelementptr inbounds %"class.RTTL::AABB", ptr %2, i64 1, !dbg !1924
  %4 = icmp eq ptr %3, getelementptr inbounds (%"class.RTTL::AABB", ptr @_ZN4RTTL15OnDemandBuilder8rightBoxE, i64 33), !dbg !1924
  br i1 %4, label %5, label %1, !dbg !1924

5:                                                ; preds = %1
  ret void, !dbg !1924
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN4RTTL15OnDemandBuilder5buildERKNS_7RTBox3aES3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(32) %2) unnamed_addr #6 align 2 !dbg !1926 {
  %4 = alloca %struct.sse_f, align 4
  %5 = alloca %struct.sse_f, align 4
  %6 = alloca %struct.sse_f, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sse_f, align 4
  %9 = alloca %struct.sse_f, align 4
  %10 = alloca %struct.sse_f, align 4
  %11 = alloca %struct.sse_f, align 4
  %12 = alloca %struct.sse_f, align 4
  %13 = alloca %struct.sse_f, align 4
  %14 = alloca %struct.sse_f, align 4
  %15 = alloca %struct.sse_f, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.sse_f, align 4
  %18 = alloca %struct.sse_f, align 4
  %19 = alloca %struct.sse_f, align 4
  %20 = alloca %struct.sse_f, align 4
  %21 = alloca %struct.sse_f, align 4
  %22 = alloca ptr, align 8
  %23 = alloca i32, align 4
  %24 = alloca ptr, align 8
  %25 = alloca i32, align 4
  %26 = alloca ptr, align 8
  %27 = alloca ptr, align 8
  %28 = alloca ptr, align 8
  %29 = alloca i32, align 4
  %30 = alloca %struct.sse_f, align 4
  %31 = alloca %struct.sse_f, align 4
  %32 = alloca %struct.sse_f, align 4
  %33 = alloca ptr, align 8
  %34 = alloca i32, align 4
  %35 = alloca ptr, align 8
  %36 = alloca i32, align 4
  %37 = alloca ptr, align 8
  %38 = alloca ptr, align 8
  %39 = alloca ptr, align 8
  %40 = alloca i32, align 4
  %41 = alloca %struct.sse_f, align 4
  %42 = alloca %struct.sse_f, align 4
  %43 = alloca %struct.sse_f, align 4
  %44 = alloca ptr, align 8
  %45 = alloca ptr, align 8
  %46 = alloca ptr, align 8
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca ptr, align 8
  %50 = alloca ptr, align 8
  %51 = alloca ptr, align 8
  %52 = alloca ptr, align 8
  %53 = alloca ptr, align 8
  %54 = alloca ptr, align 8
  %55 = alloca i32, align 4
  %56 = alloca %"class.RTTL::AABB", align 4
  %57 = alloca i32, align 4
  %58 = alloca %"class.RTTL::CentroidDiffAABB", align 4
  store ptr %0, ptr %51, align 8
  call void @llvm.dbg.declare(metadata ptr %51, metadata !1927, metadata !DIExpression()), !dbg !1929
  store ptr %1, ptr %52, align 8
  call void @llvm.dbg.declare(metadata ptr %52, metadata !1930, metadata !DIExpression()), !dbg !1931
  store ptr %2, ptr %53, align 8
  call void @llvm.dbg.declare(metadata ptr %53, metadata !1932, metadata !DIExpression()), !dbg !1933
  %59 = load ptr, ptr %51, align 8
  %60 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @__PRETTY_FUNCTION__._ZN4RTTL15OnDemandBuilder5buildERKNS_7RTBox3aES3_), !dbg !1934
  %61 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %60, ptr noundef @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !1934
  %62 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %61, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !1934
  call void @llvm.dbg.declare(metadata ptr %54, metadata !1935, metadata !DIExpression()), !dbg !1936
  %63 = getelementptr inbounds %"class.RTTL::BVHBuilder", ptr %59, i32 0, i32 1, !dbg !1937
  %64 = load ptr, ptr %63, align 8, !dbg !1937
  %65 = load ptr, ptr %64, align 8, !dbg !1938
  %66 = getelementptr inbounds ptr, ptr %65, i64 1, !dbg !1938
  %67 = load ptr, ptr %66, align 8, !dbg !1938
  %68 = call noundef ptr %67(ptr noundef nonnull align 8 dereferenceable(40) %64), !dbg !1938
  store ptr %68, ptr %54, align 8, !dbg !1936
  call void @llvm.dbg.declare(metadata ptr %55, metadata !1939, metadata !DIExpression()), !dbg !1940
  %69 = getelementptr inbounds %"class.RTTL::BVHBuilder", ptr %59, i32 0, i32 1, !dbg !1941
  %70 = load ptr, ptr %69, align 8, !dbg !1941
  %71 = load ptr, ptr %70, align 8, !dbg !1942
  %72 = getelementptr inbounds ptr, ptr %71, i64 3, !dbg !1942
  %73 = load ptr, ptr %72, align 8, !dbg !1942
  %74 = call noundef i32 %73(ptr noundef nonnull align 8 dereferenceable(40) %70), !dbg !1942
  store i32 %74, ptr %55, align 4, !dbg !1940
  %75 = getelementptr inbounds %"class.RTTL::BVHBuilder", ptr %59, i32 0, i32 1, !dbg !1943
  %76 = load ptr, ptr %75, align 8, !dbg !1943
  %77 = load i32, ptr %55, align 4, !dbg !1944
  call void @_ZN4RTTL3BVH7reserveEi(ptr noundef nonnull align 8 dereferenceable(40) %76, i32 noundef %77), !dbg !1945
  %78 = getelementptr inbounds %"class.RTTL::OnDemandBuilder", ptr %59, i32 0, i32 1, !dbg !1946
  %79 = load ptr, ptr %78, align 8, !dbg !1946
  %80 = icmp ne ptr %79, null, !dbg !1946
  br i1 %80, label %81, label %84, !dbg !1948

81:                                               ; preds = %3
  %82 = getelementptr inbounds %"class.RTTL::OnDemandBuilder", ptr %59, i32 0, i32 1, !dbg !1949
  %83 = load ptr, ptr %82, align 8, !dbg !1949
  call void @_Z12aligned_freeIN4RTTL16CentroidDiffAABBEEvPT_(ptr noundef %83), !dbg !1950
  br label %84, !dbg !1950

84:                                               ; preds = %81, %3
  %85 = load i32, ptr %55, align 4, !dbg !1951
  %86 = call noundef ptr @_Z14aligned_mallocIN4RTTL16CentroidDiffAABBEEPT_i(i32 noundef %85), !dbg !1952
  %87 = getelementptr inbounds %"class.RTTL::OnDemandBuilder", ptr %59, i32 0, i32 1, !dbg !1953
  store ptr %86, ptr %87, align 8, !dbg !1954
  call void @llvm.dbg.declare(metadata ptr %56, metadata !1955, metadata !DIExpression()), !dbg !1956
  call void @_ZN4RTTL4AABBC2Ev(ptr noundef nonnull align 4 dereferenceable(32) %56), !dbg !1956
  call void @llvm.dbg.declare(metadata ptr %57, metadata !1957, metadata !DIExpression()), !dbg !1959
  store i32 0, ptr %57, align 4, !dbg !1959
  br label %88, !dbg !1960

88:                                               ; preds = %284, %84
  %89 = load i32, ptr %57, align 4, !dbg !1961
  %90 = load i32, ptr %55, align 4, !dbg !1963
  %91 = icmp slt i32 %89, %90, !dbg !1964
  br i1 %91, label %92, label %287, !dbg !1965

92:                                               ; preds = %88
  %93 = load i32, ptr %57, align 4, !dbg !1966
  %94 = getelementptr inbounds %"class.RTTL::BVHBuilder", ptr %59, i32 0, i32 1, !dbg !1968
  %95 = load ptr, ptr %94, align 8, !dbg !1968
  %96 = getelementptr inbounds %"struct.RTTL::BVH", ptr %95, i32 0, i32 2, !dbg !1969
  %97 = load ptr, ptr %96, align 8, !dbg !1969
  %98 = load i32, ptr %57, align 4, !dbg !1970
  %99 = sext i32 %98 to i64, !dbg !1968
  %100 = getelementptr inbounds i32, ptr %97, i64 %99, !dbg !1968
  store i32 %93, ptr %100, align 4, !dbg !1971
  call void @llvm.dbg.declare(metadata ptr %58, metadata !1972, metadata !DIExpression()), !dbg !1973
  %101 = load ptr, ptr %54, align 8, !dbg !1974
  %102 = load i32, ptr %57, align 4, !dbg !1975
  %103 = sext i32 %102 to i64, !dbg !1974
  %104 = getelementptr inbounds %"class.RTTL::AABB", ptr %101, i64 %103, !dbg !1974
  call void @_ZN4RTTL16CentroidDiffAABBC2ERKNS_7RTBox3aE(ptr noundef nonnull align 4 dereferenceable(32) %58, ptr noundef nonnull align 4 dereferenceable(32) %104), !dbg !1974
  %105 = load ptr, ptr %54, align 8, !dbg !1976
  %106 = load i32, ptr %57, align 4, !dbg !1977
  %107 = sext i32 %106 to i64, !dbg !1976
  %108 = getelementptr inbounds %"class.RTTL::AABB", ptr %105, i64 %107, !dbg !1976
  store ptr %56, ptr %49, align 8
  call void @llvm.dbg.declare(metadata ptr %49, metadata !1978, metadata !DIExpression()), !dbg !1981
  store ptr %108, ptr %50, align 8
  call void @llvm.dbg.declare(metadata ptr %50, metadata !1983, metadata !DIExpression()), !dbg !1984
  %109 = load ptr, ptr %49, align 8
  %110 = load ptr, ptr %50, align 8, !dbg !1985
  store ptr %109, ptr %37, align 8
  call void @llvm.dbg.declare(metadata ptr %37, metadata !1986, metadata !DIExpression()), !dbg !1989
  store ptr %110, ptr %38, align 8
  call void @llvm.dbg.declare(metadata ptr %38, metadata !1991, metadata !DIExpression()), !dbg !1992
  %111 = load ptr, ptr %37, align 8
  call void @llvm.dbg.declare(metadata ptr %39, metadata !1993, metadata !DIExpression()), !dbg !1994
  %112 = call noundef nonnull align 4 dereferenceable(16) ptr @_ZN4RTTL7RTVec_tILi1E5sse_fLi0EEcvRNS_8RTData_tILi1ES1_Li0EEEEv(ptr noundef nonnull align 4 dereferenceable(16) %111), !dbg !1995
  store ptr %112, ptr %39, align 8, !dbg !1994
  call void @llvm.dbg.declare(metadata ptr %40, metadata !1996, metadata !DIExpression()), !dbg !1998
  store i32 0, ptr %40, align 4, !dbg !1998
  br label %113, !dbg !1999

113:                                              ; preds = %175, %92
  %114 = load i32, ptr %40, align 4, !dbg !2000
  %115 = icmp slt i32 %114, 1, !dbg !2002
  br i1 %115, label %116, label %192, !dbg !2003

116:                                              ; preds = %113
  %117 = load ptr, ptr %39, align 8, !dbg !2004
  %118 = load i32, ptr %40, align 4, !dbg !2005
  store ptr %117, ptr %33, align 8
  call void @llvm.dbg.declare(metadata ptr %33, metadata !2006, metadata !DIExpression()), !dbg !2009
  store i32 %118, ptr %34, align 4
  call void @llvm.dbg.declare(metadata ptr %34, metadata !2011, metadata !DIExpression()), !dbg !2012
  %119 = load ptr, ptr %33, align 8
  %120 = load i32, ptr %34, align 4, !dbg !2013
  %121 = sext i32 %120 to i64, !dbg !2014
  %122 = getelementptr inbounds [1 x %struct.sse_f], ptr %119, i64 0, i64 %121, !dbg !2014
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %42, ptr align 4 %122, i64 16, i1 false), !dbg !2004
  %123 = load ptr, ptr %38, align 8, !dbg !2015
  %124 = load i32, ptr %40, align 4, !dbg !2016
  %125 = call { <2 x float>, <2 x float> } @_ZNK4RTTL7RTVec_tILi1E5sse_fLi0EEixEi(ptr noundef nonnull align 4 dereferenceable(16) %123, i32 noundef %124), !dbg !2015
  %126 = extractvalue { <2 x float>, <2 x float> } %125, 0, !dbg !2015
  store <2 x float> %126, ptr %43, align 4, !dbg !2015
  %127 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %43, i32 0, i32 1, !dbg !2015
  %128 = extractvalue { <2 x float>, <2 x float> } %125, 1, !dbg !2015
  store <2 x float> %128, ptr %127, align 4, !dbg !2015
  %129 = load <2 x float>, ptr %42, align 4, !dbg !2017
  %130 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %42, i32 0, i32 1, !dbg !2017
  %131 = load <2 x float>, ptr %130, align 4, !dbg !2017
  %132 = load <2 x float>, ptr %43, align 4, !dbg !2017
  %133 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %43, i32 0, i32 1, !dbg !2017
  %134 = load <2 x float>, ptr %133, align 4, !dbg !2017
  store <2 x float> %129, ptr %18, align 4
  %135 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %18, i32 0, i32 1
  store <2 x float> %131, ptr %135, align 4
  store <2 x float> %132, ptr %19, align 4
  %136 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %19, i32 0, i32 1
  store <2 x float> %134, ptr %136, align 4
  call void @llvm.dbg.declare(metadata ptr %18, metadata !2018, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.declare(metadata ptr %19, metadata !2024, metadata !DIExpression()), !dbg !2025
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %20, ptr align 4 %18, i64 16, i1 false), !dbg !2026
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %21, ptr align 4 %19, i64 16, i1 false), !dbg !2027
  %137 = load <2 x float>, ptr %20, align 4, !dbg !2028
  %138 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %20, i32 0, i32 1, !dbg !2028
  %139 = load <2 x float>, ptr %138, align 4, !dbg !2028
  %140 = load <2 x float>, ptr %21, align 4, !dbg !2028
  %141 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %21, i32 0, i32 1, !dbg !2028
  %142 = load <2 x float>, ptr %141, align 4, !dbg !2028
  store <2 x float> %137, ptr %14, align 4
  %143 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %14, i32 0, i32 1
  store <2 x float> %139, ptr %143, align 4
  store <2 x float> %140, ptr %15, align 4
  %144 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %15, i32 0, i32 1
  store <2 x float> %142, ptr %144, align 4
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2029, metadata !DIExpression()), !dbg !2031
  call void @llvm.dbg.declare(metadata ptr %15, metadata !2033, metadata !DIExpression()), !dbg !2034
  call void @llvm.dbg.declare(metadata ptr %13, metadata !2035, metadata !DIExpression()), !dbg !2036
  call void @_ZN5sse_fC2Ev(ptr noundef nonnull align 4 dereferenceable(16) %13), !dbg !2036
  call void @llvm.dbg.declare(metadata ptr %16, metadata !2037, metadata !DIExpression()), !dbg !2039
  store i32 0, ptr %16, align 4, !dbg !2039
  br label %145, !dbg !2040

145:                                              ; preds = %168, %116
  %146 = load i32, ptr %16, align 4, !dbg !2041
  %147 = icmp slt i32 %146, 4, !dbg !2043
  br i1 %147, label %148, label %175, !dbg !2044

148:                                              ; preds = %145
  %149 = load i32, ptr %16, align 4, !dbg !2045
  %150 = sext i32 %149 to i64, !dbg !2045
  %151 = getelementptr inbounds [4 x float], ptr %14, i64 0, i64 %150, !dbg !2045
  %152 = load float, ptr %151, align 4, !dbg !2045
  %153 = load i32, ptr %16, align 4, !dbg !2045
  %154 = sext i32 %153 to i64, !dbg !2045
  %155 = getelementptr inbounds [4 x float], ptr %15, i64 0, i64 %154, !dbg !2045
  %156 = load float, ptr %155, align 4, !dbg !2045
  %157 = fcmp olt float %152, %156, !dbg !2045
  br i1 %157, label %158, label %163, !dbg !2045

158:                                              ; preds = %148
  %159 = load i32, ptr %16, align 4, !dbg !2045
  %160 = sext i32 %159 to i64, !dbg !2045
  %161 = getelementptr inbounds [4 x float], ptr %14, i64 0, i64 %160, !dbg !2045
  %162 = load float, ptr %161, align 4, !dbg !2045
  br label %168, !dbg !2045

163:                                              ; preds = %148
  %164 = load i32, ptr %16, align 4, !dbg !2045
  %165 = sext i32 %164 to i64, !dbg !2045
  %166 = getelementptr inbounds [4 x float], ptr %15, i64 0, i64 %165, !dbg !2045
  %167 = load float, ptr %166, align 4, !dbg !2045
  br label %168, !dbg !2045

168:                                              ; preds = %163, %158
  %169 = phi float [ %162, %158 ], [ %167, %163 ], !dbg !2045
  %170 = load i32, ptr %16, align 4, !dbg !2046
  %171 = sext i32 %170 to i64, !dbg !2046
  %172 = getelementptr inbounds [4 x float], ptr %13, i64 0, i64 %171, !dbg !2046
  store float %169, ptr %172, align 4, !dbg !2047
  %173 = load i32, ptr %16, align 4, !dbg !2048
  %174 = add nsw i32 %173, 1, !dbg !2048
  store i32 %174, ptr %16, align 4, !dbg !2048
  br label %145, !dbg !2049, !llvm.loop !2050

175:                                              ; preds = %145
  %176 = load { <2 x float>, <2 x float> }, ptr %13, align 4, !dbg !2052
  %177 = extractvalue { <2 x float>, <2 x float> } %176, 0, !dbg !2028
  store <2 x float> %177, ptr %17, align 4, !dbg !2028
  %178 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %17, i32 0, i32 1, !dbg !2028
  %179 = extractvalue { <2 x float>, <2 x float> } %176, 1, !dbg !2028
  store <2 x float> %179, ptr %178, align 4, !dbg !2028
  %180 = load { <2 x float>, <2 x float> }, ptr %17, align 4, !dbg !2053
  %181 = extractvalue { <2 x float>, <2 x float> } %180, 0, !dbg !2017
  store <2 x float> %181, ptr %41, align 4, !dbg !2017
  %182 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %41, i32 0, i32 1, !dbg !2017
  %183 = extractvalue { <2 x float>, <2 x float> } %180, 1, !dbg !2017
  store <2 x float> %183, ptr %182, align 4, !dbg !2017
  %184 = load ptr, ptr %39, align 8, !dbg !2054
  %185 = load i32, ptr %40, align 4, !dbg !2055
  store ptr %184, ptr %35, align 8
  call void @llvm.dbg.declare(metadata ptr %35, metadata !2006, metadata !DIExpression()), !dbg !2056
  store i32 %185, ptr %36, align 4
  call void @llvm.dbg.declare(metadata ptr %36, metadata !2011, metadata !DIExpression()), !dbg !2058
  %186 = load ptr, ptr %35, align 8
  %187 = load i32, ptr %36, align 4, !dbg !2059
  %188 = sext i32 %187 to i64, !dbg !2060
  %189 = getelementptr inbounds [1 x %struct.sse_f], ptr %186, i64 0, i64 %188, !dbg !2060
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %189, ptr align 4 %41, i64 16, i1 false), !dbg !2061
  %190 = load i32, ptr %40, align 4, !dbg !2062
  %191 = add nsw i32 %190, 1, !dbg !2062
  store i32 %191, ptr %40, align 4, !dbg !2062
  br label %113, !dbg !2063, !llvm.loop !2064

192:                                              ; preds = %113
  %193 = getelementptr inbounds %"class.RTTL::RTBox_t", ptr %109, i32 0, i32 1, !dbg !2066
  %194 = load ptr, ptr %50, align 8, !dbg !2067
  %195 = getelementptr inbounds %"class.RTTL::RTBox_t", ptr %194, i32 0, i32 1, !dbg !2068
  store ptr %193, ptr %26, align 8
  call void @llvm.dbg.declare(metadata ptr %26, metadata !2069, metadata !DIExpression()), !dbg !2071
  store ptr %195, ptr %27, align 8
  call void @llvm.dbg.declare(metadata ptr %27, metadata !2073, metadata !DIExpression()), !dbg !2074
  %196 = load ptr, ptr %26, align 8
  call void @llvm.dbg.declare(metadata ptr %28, metadata !2075, metadata !DIExpression()), !dbg !2076
  %197 = call noundef nonnull align 4 dereferenceable(16) ptr @_ZN4RTTL7RTVec_tILi1E5sse_fLi0EEcvRNS_8RTData_tILi1ES1_Li0EEEEv(ptr noundef nonnull align 4 dereferenceable(16) %196), !dbg !2077
  store ptr %197, ptr %28, align 8, !dbg !2076
  call void @llvm.dbg.declare(metadata ptr %29, metadata !2078, metadata !DIExpression()), !dbg !2080
  store i32 0, ptr %29, align 4, !dbg !2080
  br label %198, !dbg !2081

198:                                              ; preds = %260, %192
  %199 = load i32, ptr %29, align 4, !dbg !2082
  %200 = icmp slt i32 %199, 1, !dbg !2084
  br i1 %200, label %201, label %277, !dbg !2085

201:                                              ; preds = %198
  %202 = load ptr, ptr %28, align 8, !dbg !2086
  %203 = load i32, ptr %29, align 4, !dbg !2087
  store ptr %202, ptr %22, align 8
  call void @llvm.dbg.declare(metadata ptr %22, metadata !2006, metadata !DIExpression()), !dbg !2088
  store i32 %203, ptr %23, align 4
  call void @llvm.dbg.declare(metadata ptr %23, metadata !2011, metadata !DIExpression()), !dbg !2090
  %204 = load ptr, ptr %22, align 8
  %205 = load i32, ptr %23, align 4, !dbg !2091
  %206 = sext i32 %205 to i64, !dbg !2092
  %207 = getelementptr inbounds [1 x %struct.sse_f], ptr %204, i64 0, i64 %206, !dbg !2092
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %31, ptr align 4 %207, i64 16, i1 false), !dbg !2086
  %208 = load ptr, ptr %27, align 8, !dbg !2093
  %209 = load i32, ptr %29, align 4, !dbg !2094
  %210 = call { <2 x float>, <2 x float> } @_ZNK4RTTL7RTVec_tILi1E5sse_fLi0EEixEi(ptr noundef nonnull align 4 dereferenceable(16) %208, i32 noundef %209), !dbg !2093
  %211 = extractvalue { <2 x float>, <2 x float> } %210, 0, !dbg !2093
  store <2 x float> %211, ptr %32, align 4, !dbg !2093
  %212 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %32, i32 0, i32 1, !dbg !2093
  %213 = extractvalue { <2 x float>, <2 x float> } %210, 1, !dbg !2093
  store <2 x float> %213, ptr %212, align 4, !dbg !2093
  %214 = load <2 x float>, ptr %31, align 4, !dbg !2095
  %215 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %31, i32 0, i32 1, !dbg !2095
  %216 = load <2 x float>, ptr %215, align 4, !dbg !2095
  %217 = load <2 x float>, ptr %32, align 4, !dbg !2095
  %218 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %32, i32 0, i32 1, !dbg !2095
  %219 = load <2 x float>, ptr %218, align 4, !dbg !2095
  store <2 x float> %214, ptr %9, align 4
  %220 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %9, i32 0, i32 1
  store <2 x float> %216, ptr %220, align 4
  store <2 x float> %217, ptr %10, align 4
  %221 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %10, i32 0, i32 1
  store <2 x float> %219, ptr %221, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2096, metadata !DIExpression()), !dbg !2098
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2100, metadata !DIExpression()), !dbg !2101
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %11, ptr align 4 %9, i64 16, i1 false), !dbg !2102
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %12, ptr align 4 %10, i64 16, i1 false), !dbg !2103
  %222 = load <2 x float>, ptr %11, align 4, !dbg !2104
  %223 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %11, i32 0, i32 1, !dbg !2104
  %224 = load <2 x float>, ptr %223, align 4, !dbg !2104
  %225 = load <2 x float>, ptr %12, align 4, !dbg !2104
  %226 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %12, i32 0, i32 1, !dbg !2104
  %227 = load <2 x float>, ptr %226, align 4, !dbg !2104
  store <2 x float> %222, ptr %5, align 4
  %228 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %5, i32 0, i32 1
  store <2 x float> %224, ptr %228, align 4
  store <2 x float> %225, ptr %6, align 4
  %229 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %6, i32 0, i32 1
  store <2 x float> %227, ptr %229, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2105, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2109, metadata !DIExpression()), !dbg !2110
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2111, metadata !DIExpression()), !dbg !2112
  call void @_ZN5sse_fC2Ev(ptr noundef nonnull align 4 dereferenceable(16) %4), !dbg !2112
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2113, metadata !DIExpression()), !dbg !2115
  store i32 0, ptr %7, align 4, !dbg !2115
  br label %230, !dbg !2116

230:                                              ; preds = %253, %201
  %231 = load i32, ptr %7, align 4, !dbg !2117
  %232 = icmp slt i32 %231, 4, !dbg !2119
  br i1 %232, label %233, label %260, !dbg !2120

233:                                              ; preds = %230
  %234 = load i32, ptr %7, align 4, !dbg !2121
  %235 = sext i32 %234 to i64, !dbg !2121
  %236 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 %235, !dbg !2121
  %237 = load float, ptr %236, align 4, !dbg !2121
  %238 = load i32, ptr %7, align 4, !dbg !2121
  %239 = sext i32 %238 to i64, !dbg !2121
  %240 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 %239, !dbg !2121
  %241 = load float, ptr %240, align 4, !dbg !2121
  %242 = fcmp ogt float %237, %241, !dbg !2121
  br i1 %242, label %243, label %248, !dbg !2121

243:                                              ; preds = %233
  %244 = load i32, ptr %7, align 4, !dbg !2121
  %245 = sext i32 %244 to i64, !dbg !2121
  %246 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 %245, !dbg !2121
  %247 = load float, ptr %246, align 4, !dbg !2121
  br label %253, !dbg !2121

248:                                              ; preds = %233
  %249 = load i32, ptr %7, align 4, !dbg !2121
  %250 = sext i32 %249 to i64, !dbg !2121
  %251 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 %250, !dbg !2121
  %252 = load float, ptr %251, align 4, !dbg !2121
  br label %253, !dbg !2121

253:                                              ; preds = %248, %243
  %254 = phi float [ %247, %243 ], [ %252, %248 ], !dbg !2121
  %255 = load i32, ptr %7, align 4, !dbg !2122
  %256 = sext i32 %255 to i64, !dbg !2122
  %257 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 %256, !dbg !2122
  store float %254, ptr %257, align 4, !dbg !2123
  %258 = load i32, ptr %7, align 4, !dbg !2124
  %259 = add nsw i32 %258, 1, !dbg !2124
  store i32 %259, ptr %7, align 4, !dbg !2124
  br label %230, !dbg !2125, !llvm.loop !2126

260:                                              ; preds = %230
  %261 = load { <2 x float>, <2 x float> }, ptr %4, align 4, !dbg !2128
  %262 = extractvalue { <2 x float>, <2 x float> } %261, 0, !dbg !2104
  store <2 x float> %262, ptr %8, align 4, !dbg !2104
  %263 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %8, i32 0, i32 1, !dbg !2104
  %264 = extractvalue { <2 x float>, <2 x float> } %261, 1, !dbg !2104
  store <2 x float> %264, ptr %263, align 4, !dbg !2104
  %265 = load { <2 x float>, <2 x float> }, ptr %8, align 4, !dbg !2129
  %266 = extractvalue { <2 x float>, <2 x float> } %265, 0, !dbg !2095
  store <2 x float> %266, ptr %30, align 4, !dbg !2095
  %267 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %30, i32 0, i32 1, !dbg !2095
  %268 = extractvalue { <2 x float>, <2 x float> } %265, 1, !dbg !2095
  store <2 x float> %268, ptr %267, align 4, !dbg !2095
  %269 = load ptr, ptr %28, align 8, !dbg !2130
  %270 = load i32, ptr %29, align 4, !dbg !2131
  store ptr %269, ptr %24, align 8
  call void @llvm.dbg.declare(metadata ptr %24, metadata !2006, metadata !DIExpression()), !dbg !2132
  store i32 %270, ptr %25, align 4
  call void @llvm.dbg.declare(metadata ptr %25, metadata !2011, metadata !DIExpression()), !dbg !2134
  %271 = load ptr, ptr %24, align 8
  %272 = load i32, ptr %25, align 4, !dbg !2135
  %273 = sext i32 %272 to i64, !dbg !2136
  %274 = getelementptr inbounds [1 x %struct.sse_f], ptr %271, i64 0, i64 %273, !dbg !2136
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %274, ptr align 4 %30, i64 16, i1 false), !dbg !2137
  %275 = load i32, ptr %29, align 4, !dbg !2138
  %276 = add nsw i32 %275, 1, !dbg !2138
  store i32 %276, ptr %29, align 4, !dbg !2138
  br label %198, !dbg !2139, !llvm.loop !2140

277:                                              ; preds = %198
  %278 = getelementptr inbounds %"class.RTTL::OnDemandBuilder", ptr %59, i32 0, i32 1, !dbg !2142
  %279 = load ptr, ptr %278, align 8, !dbg !2142
  %280 = load i32, ptr %57, align 4, !dbg !2143
  %281 = sext i32 %280 to i64, !dbg !2142
  %282 = getelementptr inbounds %"class.RTTL::CentroidDiffAABB", ptr %279, i64 %281, !dbg !2142
  %283 = call noundef nonnull align 4 dereferenceable(32) ptr @_ZN4RTTL16CentroidDiffAABBaSERKS0_(ptr noundef nonnull align 4 dereferenceable(32) %282, ptr noundef nonnull align 4 dereferenceable(32) %58), !dbg !2144
  br label %284, !dbg !2145

284:                                              ; preds = %277
  %285 = load i32, ptr %57, align 4, !dbg !2146
  %286 = add nsw i32 %285, 1, !dbg !2146
  store i32 %286, ptr %57, align 4, !dbg !2146
  br label %88, !dbg !2147, !llvm.loop !2148

287:                                              ; preds = %88
  %288 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str), !dbg !2150
  %289 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %288, ptr noundef @.str.4), !dbg !2150
  %290 = load i32, ptr %55, align 4, !dbg !2150
  %291 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %289, i32 noundef %290), !dbg !2150
  %292 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %291, ptr noundef @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !2150
  %293 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %292, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !2150
  %294 = getelementptr inbounds %"class.RTTL::BVHBuilder", ptr %59, i32 0, i32 1, !dbg !2151
  %295 = load ptr, ptr %294, align 8, !dbg !2151
  %296 = getelementptr inbounds %"struct.RTTL::BVH", ptr %295, i32 0, i32 1, !dbg !2152
  %297 = load ptr, ptr %296, align 8, !dbg !2152
  %298 = getelementptr inbounds %"class.RTTL::AABB", ptr %297, i64 0, !dbg !2151
  %299 = call noundef nonnull align 4 dereferenceable(32) ptr @_ZN4RTTL4AABBaSERKS0_(ptr noundef nonnull align 4 dereferenceable(32) %298, ptr noundef nonnull align 4 dereferenceable(32) %56), !dbg !2153
  %300 = getelementptr inbounds %"class.RTTL::BVHBuilder", ptr %59, i32 0, i32 1, !dbg !2154
  %301 = load ptr, ptr %300, align 8, !dbg !2154
  %302 = getelementptr inbounds %"struct.RTTL::BVH", ptr %301, i32 0, i32 1, !dbg !2155
  %303 = load ptr, ptr %302, align 8, !dbg !2155
  %304 = getelementptr inbounds %"class.RTTL::AABB", ptr %303, i64 0, !dbg !2154
  %305 = load i32, ptr %55, align 4, !dbg !2156
  store ptr %304, ptr %46, align 8
  call void @llvm.dbg.declare(metadata ptr %46, metadata !2157, metadata !DIExpression()), !dbg !2159
  store i32 0, ptr %47, align 4
  call void @llvm.dbg.declare(metadata ptr %47, metadata !2161, metadata !DIExpression()), !dbg !2162
  store i32 %305, ptr %48, align 4
  call void @llvm.dbg.declare(metadata ptr %48, metadata !2163, metadata !DIExpression()), !dbg !2164
  %306 = load ptr, ptr %46, align 8
  %307 = load i32, ptr %47, align 4, !dbg !2165
  %308 = or i32 %307, -2147483648, !dbg !2166
  store ptr %306, ptr %45, align 8
  call void @llvm.dbg.declare(metadata ptr %45, metadata !2167, metadata !DIExpression()), !dbg !2170
  %309 = load ptr, ptr %45, align 8
  %310 = getelementptr inbounds %"struct.RTTL::BVHExtData", ptr %309, i64 3, !dbg !2172
  store i32 %308, ptr %310, align 4, !dbg !2173
  %311 = load i32, ptr %48, align 4, !dbg !2174
  %312 = or i32 %311, -2147483648, !dbg !2175
  store ptr %306, ptr %44, align 8
  call void @llvm.dbg.declare(metadata ptr %44, metadata !2176, metadata !DIExpression()), !dbg !2178
  %313 = load ptr, ptr %44, align 8
  %314 = getelementptr inbounds %"class.RTTL::RTBox_t", ptr %313, i32 0, i32 1, !dbg !2180
  %315 = getelementptr inbounds %"struct.RTTL::BVHExtData", ptr %314, i64 3, !dbg !2181
  store i32 %312, ptr %315, align 4, !dbg !2182
  %316 = getelementptr inbounds %"class.RTTL::BVHBuilder", ptr %59, i32 0, i32 1, !dbg !2183
  %317 = load ptr, ptr %316, align 8, !dbg !2183
  %318 = load ptr, ptr %54, align 8, !dbg !2184
  %319 = load ptr, ptr %317, align 8, !dbg !2185
  %320 = getelementptr inbounds ptr, ptr %319, i64 2, !dbg !2185
  %321 = load ptr, ptr %320, align 8, !dbg !2185
  call void %321(ptr noundef nonnull align 8 dereferenceable(40) %317, ptr noundef %318), !dbg !2185
  ret void, !dbg !2186
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #7

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #1

declare void @_ZN4RTTL3BVH7reserveEi(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) #1

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_Z12aligned_freeIN4RTTL16CentroidDiffAABBEEvPT_(ptr noundef %0) #8 comdat !dbg !2187 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2192, metadata !DIExpression()), !dbg !2193
  %4 = load ptr, ptr %3, align 8, !dbg !2194
  store ptr %4, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2195, metadata !DIExpression()), !dbg !2197
  %5 = load ptr, ptr %2, align 8, !dbg !2199
  call void @free(ptr noundef %5) #3, !dbg !2200
  ret void, !dbg !2201
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @_Z14aligned_mallocIN4RTTL16CentroidDiffAABBEEPT_i(i32 noundef %0) #8 comdat !dbg !2202 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2205, metadata !DIExpression()), !dbg !2206
  %5 = load i32, ptr %4, align 4, !dbg !2207
  %6 = sext i32 %5 to i64, !dbg !2207
  %7 = mul i64 %6, 32, !dbg !2208
  %8 = trunc i64 %7 to i32, !dbg !2207
  store i32 %8, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2209, metadata !DIExpression()), !dbg !2213
  store i32 64, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2215, metadata !DIExpression()), !dbg !2216
  %9 = load i32, ptr %3, align 4, !dbg !2217
  %10 = sext i32 %9 to i64, !dbg !2217
  %11 = load i32, ptr %2, align 4, !dbg !2218
  %12 = sext i32 %11 to i64, !dbg !2218
  %13 = call noalias ptr @memalign(i64 noundef %10, i64 noundef %12) #16, !dbg !2219
  call void @llvm.assume(i1 true) [ "align"(ptr %13, i64 %10) ], !dbg !2219
  ret ptr %13, !dbg !2220
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN4RTTL16CentroidDiffAABBC2ERKNS_7RTBox3aE(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(32) %1) unnamed_addr #9 comdat align 2 !dbg !2221 {
  %3 = alloca %struct.sse_f, align 4
  %4 = alloca %struct.sse_f, align 4
  %5 = alloca %struct.sse_f, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sse_f, align 4
  %8 = alloca %struct.sse_f, align 4
  %9 = alloca %struct.sse_f, align 4
  %10 = alloca %struct.sse_f, align 4
  %11 = alloca %struct.sse_f, align 4
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.sse_f, align 4
  %17 = alloca %struct.sse_f, align 4
  %18 = alloca %struct.sse_f, align 4
  %19 = alloca %"class.RTTL::RTVec_t", align 4
  %20 = alloca ptr, align 8
  %21 = alloca ptr, align 8
  %22 = alloca %"class.RTTL::RTVec_t", align 4
  %23 = alloca ptr, align 8
  %24 = alloca %struct.sse_f, align 4
  %25 = alloca %struct.sse_f, align 4
  %26 = alloca %struct.sse_f, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.sse_f, align 4
  %29 = alloca float, align 4
  %30 = alloca i32, align 4
  %31 = alloca %struct.sse_f, align 4
  %32 = alloca float, align 4
  %33 = alloca %struct.sse_f, align 4
  %34 = alloca %struct.sse_f, align 4
  %35 = alloca %struct.sse_f, align 4
  %36 = alloca i32, align 4
  %37 = alloca %struct.sse_f, align 4
  %38 = alloca ptr, align 8
  %39 = alloca %struct.sse_f, align 4
  %40 = alloca %struct.sse_f, align 4
  %41 = alloca %struct.sse_f, align 4
  %42 = alloca %struct.sse_f, align 4
  %43 = alloca %struct.sse_f, align 4
  %44 = alloca ptr, align 8
  %45 = alloca ptr, align 8
  %46 = alloca %struct.sse_f, align 4
  %47 = alloca %struct.sse_f, align 4
  %48 = alloca float, align 4
  %49 = alloca %struct.sse_f, align 4
  %50 = alloca %struct.sse_f, align 4
  %51 = alloca %struct.sse_f, align 4
  %52 = alloca ptr, align 8
  %53 = alloca %"class.RTTL::RTVec_t", align 4
  %54 = alloca ptr, align 8
  %55 = alloca ptr, align 8
  %56 = alloca ptr, align 8
  %57 = alloca %struct.sse_f, align 4
  %58 = alloca %struct.sse_f, align 4
  %59 = alloca %struct.sse_f, align 4
  %60 = alloca %struct.sse_f, align 4
  %61 = alloca %struct.sse_f, align 4
  store ptr %0, ptr %55, align 8
  call void @llvm.dbg.declare(metadata ptr %55, metadata !2222, metadata !DIExpression()), !dbg !2223
  store ptr %1, ptr %56, align 8
  call void @llvm.dbg.declare(metadata ptr %56, metadata !2224, metadata !DIExpression()), !dbg !2225
  %62 = load ptr, ptr %55, align 8
  call void @_ZN4RTTL7RTBox3aC2Ev(ptr noundef nonnull align 4 dereferenceable(32) %62), !dbg !2226
  %63 = load ptr, ptr %56, align 8, !dbg !2227
  store ptr %63, ptr %52, align 8
  call void @llvm.dbg.declare(metadata ptr %52, metadata !2229, metadata !DIExpression()), !dbg !2232
  %64 = load ptr, ptr %52, align 8
  store ptr %64, ptr %23, align 8
  call void @llvm.dbg.declare(metadata ptr %23, metadata !2234, metadata !DIExpression()), !dbg !2237
  %65 = load ptr, ptr %23, align 8
  %66 = getelementptr inbounds %"class.RTTL::RTBox_t", ptr %65, i32 0, i32 1, !dbg !2239
  store ptr %66, ptr %20, align 8
  call void @llvm.dbg.declare(metadata ptr %20, metadata !2240, metadata !DIExpression()), !dbg !2246
  store ptr %65, ptr %21, align 8
  call void @llvm.dbg.declare(metadata ptr %21, metadata !2248, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.declare(metadata ptr %19, metadata !2250, metadata !DIExpression()), !dbg !2251
  call void @_ZN4RTTL7RTVec_tILi1E5sse_fLi0EEC2Ev(ptr noundef nonnull align 4 dereferenceable(16) %19), !dbg !2251
  %67 = call noundef nonnull align 4 dereferenceable(16) ptr @_ZN4RTTL7RTVec_tILi1E5sse_fLi0EE5arrayEv(ptr noundef nonnull align 4 dereferenceable(16) %19), !dbg !2252
  %68 = load ptr, ptr %20, align 8, !dbg !2253
  %69 = call noundef nonnull align 4 dereferenceable(16) ptr @_ZNK4RTTL7RTVec_tILi1E5sse_fLi0EE5arrayEv(ptr noundef nonnull align 4 dereferenceable(16) %68), !dbg !2254
  %70 = load ptr, ptr %21, align 8, !dbg !2255
  %71 = call noundef nonnull align 4 dereferenceable(16) ptr @_ZNK4RTTL7RTVec_tILi1E5sse_fLi0EE5arrayEv(ptr noundef nonnull align 4 dereferenceable(16) %70), !dbg !2256
  store ptr %67, ptr %12, align 8
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2257, metadata !DIExpression()), !dbg !2259
  store ptr %69, ptr %13, align 8
  call void @llvm.dbg.declare(metadata ptr %13, metadata !2261, metadata !DIExpression()), !dbg !2262
  store ptr %71, ptr %14, align 8
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2263, metadata !DIExpression()), !dbg !2264
  %72 = load ptr, ptr %12, align 8
  call void @llvm.dbg.declare(metadata ptr %15, metadata !2265, metadata !DIExpression()), !dbg !2267
  store i32 0, ptr %15, align 4, !dbg !2267
  br label %73, !dbg !2268

73:                                               ; preds = %119, %2
  %74 = load i32, ptr %15, align 4, !dbg !2269
  %75 = icmp slt i32 %74, 1, !dbg !2271
  br i1 %75, label %76, label %133, !dbg !2272

76:                                               ; preds = %73
  %77 = load ptr, ptr %13, align 8, !dbg !2273
  %78 = load i32, ptr %15, align 4, !dbg !2274
  %79 = sext i32 %78 to i64, !dbg !2273
  %80 = getelementptr inbounds [1 x %struct.sse_f], ptr %77, i64 0, i64 %79, !dbg !2273
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %17, ptr align 4 %80, i64 16, i1 false), !dbg !2273
  %81 = load ptr, ptr %14, align 8, !dbg !2275
  %82 = load i32, ptr %15, align 4, !dbg !2276
  %83 = sext i32 %82 to i64, !dbg !2275
  %84 = getelementptr inbounds [1 x %struct.sse_f], ptr %81, i64 0, i64 %83, !dbg !2275
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %18, ptr align 4 %84, i64 16, i1 false), !dbg !2275
  %85 = load <2 x float>, ptr %17, align 4, !dbg !2277
  %86 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %17, i32 0, i32 1, !dbg !2277
  %87 = load <2 x float>, ptr %86, align 4, !dbg !2277
  %88 = load <2 x float>, ptr %18, align 4, !dbg !2277
  %89 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %18, i32 0, i32 1, !dbg !2277
  %90 = load <2 x float>, ptr %89, align 4, !dbg !2277
  store <2 x float> %85, ptr %8, align 4
  %91 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %8, i32 0, i32 1
  store <2 x float> %87, ptr %91, align 4
  store <2 x float> %88, ptr %9, align 4
  %92 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %9, i32 0, i32 1
  store <2 x float> %90, ptr %92, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2278, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2282, metadata !DIExpression()), !dbg !2283
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %10, ptr align 4 %8, i64 16, i1 false), !dbg !2284
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %11, ptr align 4 %9, i64 16, i1 false), !dbg !2285
  %93 = load <2 x float>, ptr %10, align 4, !dbg !2286
  %94 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %10, i32 0, i32 1, !dbg !2286
  %95 = load <2 x float>, ptr %94, align 4, !dbg !2286
  %96 = load <2 x float>, ptr %11, align 4, !dbg !2286
  %97 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %11, i32 0, i32 1, !dbg !2286
  %98 = load <2 x float>, ptr %97, align 4, !dbg !2286
  store <2 x float> %93, ptr %4, align 4
  %99 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %4, i32 0, i32 1
  store <2 x float> %95, ptr %99, align 4
  store <2 x float> %96, ptr %5, align 4
  %100 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %5, i32 0, i32 1
  store <2 x float> %98, ptr %100, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2287, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2291, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2293, metadata !DIExpression()), !dbg !2294
  call void @_ZN5sse_fC2Ev(ptr noundef nonnull align 4 dereferenceable(16) %3), !dbg !2294
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2295, metadata !DIExpression()), !dbg !2297
  store i32 0, ptr %6, align 4, !dbg !2297
  br label %101, !dbg !2298

101:                                              ; preds = %104, %76
  %102 = load i32, ptr %6, align 4, !dbg !2299
  %103 = icmp slt i32 %102, 4, !dbg !2301
  br i1 %103, label %104, label %119, !dbg !2302

104:                                              ; preds = %101
  %105 = load i32, ptr %6, align 4, !dbg !2303
  %106 = sext i32 %105 to i64, !dbg !2304
  %107 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 %106, !dbg !2304
  %108 = load float, ptr %107, align 4, !dbg !2304
  %109 = load i32, ptr %6, align 4, !dbg !2305
  %110 = sext i32 %109 to i64, !dbg !2306
  %111 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 %110, !dbg !2306
  %112 = load float, ptr %111, align 4, !dbg !2306
  %113 = fsub float %108, %112, !dbg !2307
  %114 = load i32, ptr %6, align 4, !dbg !2308
  %115 = sext i32 %114 to i64, !dbg !2309
  %116 = getelementptr inbounds [4 x float], ptr %3, i64 0, i64 %115, !dbg !2309
  store float %113, ptr %116, align 4, !dbg !2310
  %117 = load i32, ptr %6, align 4, !dbg !2311
  %118 = add nsw i32 %117, 1, !dbg !2311
  store i32 %118, ptr %6, align 4, !dbg !2311
  br label %101, !dbg !2312, !llvm.loop !2313

119:                                              ; preds = %101
  %120 = load { <2 x float>, <2 x float> }, ptr %3, align 4, !dbg !2315
  %121 = extractvalue { <2 x float>, <2 x float> } %120, 0, !dbg !2286
  store <2 x float> %121, ptr %7, align 4, !dbg !2286
  %122 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %7, i32 0, i32 1, !dbg !2286
  %123 = extractvalue { <2 x float>, <2 x float> } %120, 1, !dbg !2286
  store <2 x float> %123, ptr %122, align 4, !dbg !2286
  %124 = load { <2 x float>, <2 x float> }, ptr %7, align 4, !dbg !2316
  %125 = extractvalue { <2 x float>, <2 x float> } %124, 0, !dbg !2277
  store <2 x float> %125, ptr %16, align 4, !dbg !2277
  %126 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %16, i32 0, i32 1, !dbg !2277
  %127 = extractvalue { <2 x float>, <2 x float> } %124, 1, !dbg !2277
  store <2 x float> %127, ptr %126, align 4, !dbg !2277
  %128 = load i32, ptr %15, align 4, !dbg !2317
  %129 = sext i32 %128 to i64, !dbg !2318
  %130 = getelementptr inbounds [1 x %struct.sse_f], ptr %72, i64 0, i64 %129, !dbg !2318
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %130, ptr align 4 %16, i64 16, i1 false), !dbg !2319
  %131 = load i32, ptr %15, align 4, !dbg !2320
  %132 = add nsw i32 %131, 1, !dbg !2320
  store i32 %132, ptr %15, align 4, !dbg !2320
  br label %73, !dbg !2321, !llvm.loop !2322

133:                                              ; preds = %73
  %134 = load { <2 x float>, <2 x float> }, ptr %19, align 4, !dbg !2324
  %135 = extractvalue { <2 x float>, <2 x float> } %134, 0, !dbg !2325
  store <2 x float> %135, ptr %22, align 4, !dbg !2325
  %136 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %22, i32 0, i32 1, !dbg !2325
  %137 = extractvalue { <2 x float>, <2 x float> } %134, 1, !dbg !2325
  store <2 x float> %137, ptr %136, align 4, !dbg !2325
  %138 = load { <2 x float>, <2 x float> }, ptr %22, align 4, !dbg !2326
  %139 = extractvalue { <2 x float>, <2 x float> } %138, 0, !dbg !2327
  store <2 x float> %139, ptr %53, align 4, !dbg !2327
  %140 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %53, i32 0, i32 1, !dbg !2327
  %141 = extractvalue { <2 x float>, <2 x float> } %138, 1, !dbg !2327
  store <2 x float> %141, ptr %140, align 4, !dbg !2327
  %142 = call noundef ptr @_ZN4RTTL7RTVec_tILi1E5sse_fLi0EEcvPS1_Ev(ptr noundef nonnull align 4 dereferenceable(16) %53), !dbg !2328
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %51, ptr align 4 %142, i64 16, i1 false), !dbg !2329
  %143 = load { <2 x float>, <2 x float> }, ptr %51, align 4, !dbg !2330
  %144 = getelementptr inbounds %struct.sse_f, ptr %58, i32 0, i32 0, !dbg !2331
  %145 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %144, i32 0, i32 0, !dbg !2331
  %146 = extractvalue { <2 x float>, <2 x float> } %143, 0, !dbg !2331
  store <2 x float> %146, ptr %145, align 4, !dbg !2331
  %147 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %144, i32 0, i32 1, !dbg !2331
  %148 = extractvalue { <2 x float>, <2 x float> } %143, 1, !dbg !2331
  store <2 x float> %148, ptr %147, align 4, !dbg !2331
  %149 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %58, i32 0, i32 0, !dbg !2332
  %150 = load <2 x float>, ptr %149, align 4, !dbg !2332
  %151 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %58, i32 0, i32 1, !dbg !2332
  %152 = load <2 x float>, ptr %151, align 4, !dbg !2332
  store <2 x float> %150, ptr %47, align 4
  %153 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %47, i32 0, i32 1
  store <2 x float> %152, ptr %153, align 4
  call void @llvm.dbg.declare(metadata ptr %47, metadata !2333, metadata !DIExpression()), !dbg !2337
  store float 5.000000e-01, ptr %48, align 4
  call void @llvm.dbg.declare(metadata ptr %48, metadata !2339, metadata !DIExpression()), !dbg !2340
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %49, ptr align 4 %47, i64 16, i1 false), !dbg !2341
  %154 = load float, ptr %48, align 4, !dbg !2342
  store float %154, ptr %32, align 4
  call void @llvm.dbg.declare(metadata ptr %32, metadata !2343, metadata !DIExpression()), !dbg !2346
  %155 = load float, ptr %32, align 4, !dbg !2348
  store float %155, ptr %29, align 4
  call void @llvm.dbg.declare(metadata ptr %29, metadata !1886, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.declare(metadata ptr %28, metadata !1893, metadata !DIExpression()), !dbg !2351
  call void @_ZN5sse_fC2Ev(ptr noundef nonnull align 4 dereferenceable(16) %28), !dbg !2351
  call void @llvm.dbg.declare(metadata ptr %30, metadata !1895, metadata !DIExpression()), !dbg !2352
  store i32 0, ptr %30, align 4, !dbg !2352
  br label %156, !dbg !2353

156:                                              ; preds = %159, %133
  %157 = load i32, ptr %30, align 4, !dbg !2354
  %158 = icmp slt i32 %157, 4, !dbg !2355
  br i1 %158, label %159, label %166, !dbg !2356

159:                                              ; preds = %156
  %160 = load float, ptr %29, align 4, !dbg !2357
  %161 = load i32, ptr %30, align 4, !dbg !2358
  %162 = sext i32 %161 to i64, !dbg !2359
  %163 = getelementptr inbounds [4 x float], ptr %28, i64 0, i64 %162, !dbg !2359
  store float %160, ptr %163, align 4, !dbg !2360
  %164 = load i32, ptr %30, align 4, !dbg !2361
  %165 = add nsw i32 %164, 1, !dbg !2361
  store i32 %165, ptr %30, align 4, !dbg !2361
  br label %156, !dbg !2362, !llvm.loop !2363

166:                                              ; preds = %156
  %167 = load { <2 x float>, <2 x float> }, ptr %28, align 4, !dbg !2365
  %168 = extractvalue { <2 x float>, <2 x float> } %167, 0, !dbg !2366
  store <2 x float> %168, ptr %31, align 4, !dbg !2366
  %169 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %31, i32 0, i32 1, !dbg !2366
  %170 = extractvalue { <2 x float>, <2 x float> } %167, 1, !dbg !2366
  store <2 x float> %170, ptr %169, align 4, !dbg !2366
  %171 = load { <2 x float>, <2 x float> }, ptr %31, align 4, !dbg !2367
  %172 = extractvalue { <2 x float>, <2 x float> } %171, 0, !dbg !2368
  store <2 x float> %172, ptr %50, align 4, !dbg !2368
  %173 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %50, i32 0, i32 1, !dbg !2368
  %174 = extractvalue { <2 x float>, <2 x float> } %171, 1, !dbg !2368
  store <2 x float> %174, ptr %173, align 4, !dbg !2368
  %175 = load <2 x float>, ptr %49, align 4, !dbg !2369
  %176 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %49, i32 0, i32 1, !dbg !2369
  %177 = load <2 x float>, ptr %176, align 4, !dbg !2369
  %178 = load <2 x float>, ptr %50, align 4, !dbg !2369
  %179 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %50, i32 0, i32 1, !dbg !2369
  %180 = load <2 x float>, ptr %179, align 4, !dbg !2369
  store <2 x float> %175, ptr %34, align 4
  %181 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %34, i32 0, i32 1
  store <2 x float> %177, ptr %181, align 4
  store <2 x float> %178, ptr %35, align 4
  %182 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %35, i32 0, i32 1
  store <2 x float> %180, ptr %182, align 4
  call void @llvm.dbg.declare(metadata ptr %34, metadata !2370, metadata !DIExpression()), !dbg !2372
  call void @llvm.dbg.declare(metadata ptr %35, metadata !2374, metadata !DIExpression()), !dbg !2375
  call void @llvm.dbg.declare(metadata ptr %33, metadata !2376, metadata !DIExpression()), !dbg !2377
  call void @_ZN5sse_fC2Ev(ptr noundef nonnull align 4 dereferenceable(16) %33), !dbg !2377
  call void @llvm.dbg.declare(metadata ptr %36, metadata !2378, metadata !DIExpression()), !dbg !2380
  store i32 0, ptr %36, align 4, !dbg !2380
  br label %183, !dbg !2381

183:                                              ; preds = %186, %166
  %184 = load i32, ptr %36, align 4, !dbg !2382
  %185 = icmp slt i32 %184, 4, !dbg !2384
  br i1 %185, label %186, label %201, !dbg !2385

186:                                              ; preds = %183
  %187 = load i32, ptr %36, align 4, !dbg !2386
  %188 = sext i32 %187 to i64, !dbg !2386
  %189 = getelementptr inbounds [4 x float], ptr %34, i64 0, i64 %188, !dbg !2386
  %190 = load float, ptr %189, align 4, !dbg !2386
  %191 = load i32, ptr %36, align 4, !dbg !2387
  %192 = sext i32 %191 to i64, !dbg !2387
  %193 = getelementptr inbounds [4 x float], ptr %35, i64 0, i64 %192, !dbg !2387
  %194 = load float, ptr %193, align 4, !dbg !2387
  %195 = fmul float %190, %194, !dbg !2388
  %196 = load i32, ptr %36, align 4, !dbg !2389
  %197 = sext i32 %196 to i64, !dbg !2389
  %198 = getelementptr inbounds [4 x float], ptr %33, i64 0, i64 %197, !dbg !2389
  store float %195, ptr %198, align 4, !dbg !2390
  %199 = load i32, ptr %36, align 4, !dbg !2391
  %200 = add nsw i32 %199, 1, !dbg !2391
  store i32 %200, ptr %36, align 4, !dbg !2391
  br label %183, !dbg !2392, !llvm.loop !2393

201:                                              ; preds = %183
  %202 = load { <2 x float>, <2 x float> }, ptr %33, align 4, !dbg !2395
  %203 = extractvalue { <2 x float>, <2 x float> } %202, 0, !dbg !2369
  store <2 x float> %203, ptr %46, align 4, !dbg !2369
  %204 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %46, i32 0, i32 1, !dbg !2369
  %205 = extractvalue { <2 x float>, <2 x float> } %202, 1, !dbg !2369
  store <2 x float> %205, ptr %204, align 4, !dbg !2369
  %206 = load { <2 x float>, <2 x float> }, ptr %46, align 4, !dbg !2396
  %207 = getelementptr inbounds %struct.sse_f, ptr %57, i32 0, i32 0, !dbg !2332
  %208 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %207, i32 0, i32 0, !dbg !2332
  %209 = extractvalue { <2 x float>, <2 x float> } %206, 0, !dbg !2332
  store <2 x float> %209, ptr %208, align 4, !dbg !2332
  %210 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %207, i32 0, i32 1, !dbg !2332
  %211 = extractvalue { <2 x float>, <2 x float> } %206, 1, !dbg !2332
  store <2 x float> %211, ptr %210, align 4, !dbg !2332
  store ptr %62, ptr %44, align 8
  call void @llvm.dbg.declare(metadata ptr %44, metadata !2397, metadata !DIExpression()), !dbg !2400
  %212 = load ptr, ptr %44, align 8
  %213 = getelementptr inbounds %"class.RTTL::RTBox_t", ptr %212, i32 0, i32 1, !dbg !2402
  %214 = call noundef nonnull align 4 dereferenceable(16) ptr @_ZN4RTTL7RTVec_tILi1E5sse_fLi0EEixEi(ptr noundef nonnull align 4 dereferenceable(16) %213, i32 noundef 0), !dbg !2402
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %214, ptr align 4 %57, i64 16, i1 false), !dbg !2403
  %215 = load ptr, ptr %56, align 8, !dbg !2404
  store ptr %215, ptr %38, align 8
  call void @llvm.dbg.declare(metadata ptr %38, metadata !2405, metadata !DIExpression()), !dbg !2407
  %216 = load ptr, ptr %38, align 8
  %217 = call { <2 x float>, <2 x float> } @_ZNK4RTTL7RTVec_tILi1E5sse_fLi0EEixEi(ptr noundef nonnull align 4 dereferenceable(16) %216, i32 noundef 0), !dbg !2409
  %218 = extractvalue { <2 x float>, <2 x float> } %217, 0, !dbg !2409
  store <2 x float> %218, ptr %37, align 4, !dbg !2409
  %219 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %37, i32 0, i32 1, !dbg !2409
  %220 = extractvalue { <2 x float>, <2 x float> } %217, 1, !dbg !2409
  store <2 x float> %220, ptr %219, align 4, !dbg !2409
  %221 = load { <2 x float>, <2 x float> }, ptr %37, align 4, !dbg !2410
  %222 = getelementptr inbounds %struct.sse_f, ptr %60, i32 0, i32 0, !dbg !2411
  %223 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %222, i32 0, i32 0, !dbg !2411
  %224 = extractvalue { <2 x float>, <2 x float> } %221, 0, !dbg !2411
  store <2 x float> %224, ptr %223, align 4, !dbg !2411
  %225 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %222, i32 0, i32 1, !dbg !2411
  %226 = extractvalue { <2 x float>, <2 x float> } %221, 1, !dbg !2411
  store <2 x float> %226, ptr %225, align 4, !dbg !2411
  store ptr %62, ptr %45, align 8
  call void @llvm.dbg.declare(metadata ptr %45, metadata !2397, metadata !DIExpression()), !dbg !2412
  %227 = load ptr, ptr %45, align 8
  %228 = getelementptr inbounds %"class.RTTL::RTBox_t", ptr %227, i32 0, i32 1, !dbg !2414
  %229 = call noundef nonnull align 4 dereferenceable(16) ptr @_ZN4RTTL7RTVec_tILi1E5sse_fLi0EEixEi(ptr noundef nonnull align 4 dereferenceable(16) %228, i32 noundef 0), !dbg !2414
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %61, ptr align 4 %229, i64 16, i1 false), !dbg !2415
  %230 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %60, i32 0, i32 0, !dbg !2416
  %231 = load <2 x float>, ptr %230, align 4, !dbg !2416
  %232 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %60, i32 0, i32 1, !dbg !2416
  %233 = load <2 x float>, ptr %232, align 4, !dbg !2416
  %234 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %61, i32 0, i32 0, !dbg !2416
  %235 = load <2 x float>, ptr %234, align 4, !dbg !2416
  %236 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %61, i32 0, i32 1, !dbg !2416
  %237 = load <2 x float>, ptr %236, align 4, !dbg !2416
  store <2 x float> %231, ptr %40, align 4
  %238 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %40, i32 0, i32 1
  store <2 x float> %233, ptr %238, align 4
  store <2 x float> %235, ptr %41, align 4
  %239 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %41, i32 0, i32 1
  store <2 x float> %237, ptr %239, align 4
  call void @llvm.dbg.declare(metadata ptr %40, metadata !2417, metadata !DIExpression()), !dbg !2419
  call void @llvm.dbg.declare(metadata ptr %41, metadata !2421, metadata !DIExpression()), !dbg !2422
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %42, ptr align 4 %40, i64 16, i1 false), !dbg !2423
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %43, ptr align 4 %41, i64 16, i1 false), !dbg !2424
  %240 = load <2 x float>, ptr %42, align 4, !dbg !2425
  %241 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %42, i32 0, i32 1, !dbg !2425
  %242 = load <2 x float>, ptr %241, align 4, !dbg !2425
  %243 = load <2 x float>, ptr %43, align 4, !dbg !2425
  %244 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %43, i32 0, i32 1, !dbg !2425
  %245 = load <2 x float>, ptr %244, align 4, !dbg !2425
  store <2 x float> %240, ptr %25, align 4
  %246 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %25, i32 0, i32 1
  store <2 x float> %242, ptr %246, align 4
  store <2 x float> %243, ptr %26, align 4
  %247 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %26, i32 0, i32 1
  store <2 x float> %245, ptr %247, align 4
  call void @llvm.dbg.declare(metadata ptr %25, metadata !2426, metadata !DIExpression()), !dbg !2428
  call void @llvm.dbg.declare(metadata ptr %26, metadata !2430, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.declare(metadata ptr %24, metadata !2432, metadata !DIExpression()), !dbg !2433
  call void @_ZN5sse_fC2Ev(ptr noundef nonnull align 4 dereferenceable(16) %24), !dbg !2433
  call void @llvm.dbg.declare(metadata ptr %27, metadata !2434, metadata !DIExpression()), !dbg !2436
  store i32 0, ptr %27, align 4, !dbg !2436
  br label %248, !dbg !2437

248:                                              ; preds = %251, %201
  %249 = load i32, ptr %27, align 4, !dbg !2438
  %250 = icmp slt i32 %249, 4, !dbg !2440
  br i1 %250, label %251, label %266, !dbg !2441

251:                                              ; preds = %248
  %252 = load i32, ptr %27, align 4, !dbg !2442
  %253 = sext i32 %252 to i64, !dbg !2443
  %254 = getelementptr inbounds [4 x float], ptr %25, i64 0, i64 %253, !dbg !2443
  %255 = load float, ptr %254, align 4, !dbg !2443
  %256 = load i32, ptr %27, align 4, !dbg !2444
  %257 = sext i32 %256 to i64, !dbg !2445
  %258 = getelementptr inbounds [4 x float], ptr %26, i64 0, i64 %257, !dbg !2445
  %259 = load float, ptr %258, align 4, !dbg !2445
  %260 = fadd float %255, %259, !dbg !2446
  %261 = load i32, ptr %27, align 4, !dbg !2447
  %262 = sext i32 %261 to i64, !dbg !2448
  %263 = getelementptr inbounds [4 x float], ptr %24, i64 0, i64 %262, !dbg !2448
  store float %260, ptr %263, align 4, !dbg !2449
  %264 = load i32, ptr %27, align 4, !dbg !2450
  %265 = add nsw i32 %264, 1, !dbg !2450
  store i32 %265, ptr %27, align 4, !dbg !2450
  br label %248, !dbg !2451, !llvm.loop !2452

266:                                              ; preds = %248
  %267 = load { <2 x float>, <2 x float> }, ptr %24, align 4, !dbg !2454
  %268 = extractvalue { <2 x float>, <2 x float> } %267, 0, !dbg !2425
  store <2 x float> %268, ptr %39, align 4, !dbg !2425
  %269 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %39, i32 0, i32 1, !dbg !2425
  %270 = extractvalue { <2 x float>, <2 x float> } %267, 1, !dbg !2425
  store <2 x float> %270, ptr %269, align 4, !dbg !2425
  %271 = load { <2 x float>, <2 x float> }, ptr %39, align 4, !dbg !2455
  %272 = getelementptr inbounds %struct.sse_f, ptr %59, i32 0, i32 0, !dbg !2416
  %273 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %272, i32 0, i32 0, !dbg !2416
  %274 = extractvalue { <2 x float>, <2 x float> } %271, 0, !dbg !2416
  store <2 x float> %274, ptr %273, align 4, !dbg !2416
  %275 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %272, i32 0, i32 1, !dbg !2416
  %276 = extractvalue { <2 x float>, <2 x float> } %271, 1, !dbg !2416
  store <2 x float> %276, ptr %275, align 4, !dbg !2416
  store ptr %62, ptr %54, align 8
  call void @llvm.dbg.declare(metadata ptr %54, metadata !2456, metadata !DIExpression()), !dbg !2458
  %277 = load ptr, ptr %54, align 8
  %278 = call noundef nonnull align 4 dereferenceable(16) ptr @_ZN4RTTL7RTVec_tILi1E5sse_fLi0EEixEi(ptr noundef nonnull align 4 dereferenceable(16) %277, i32 noundef 0), !dbg !2460
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %278, ptr align 4 %59, i64 16, i1 false), !dbg !2461
  ret void, !dbg !2462
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(32) ptr @_ZN4RTTL16CentroidDiffAABBaSERKS0_(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(32) %1) #5 comdat align 2 !dbg !2463 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2468, metadata !DIExpression()), !dbg !2469
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2470, metadata !DIExpression()), !dbg !2469
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8, !dbg !2471
  %7 = call noundef nonnull align 4 dereferenceable(32) ptr @_ZN4RTTL7RTBox3aaSERKS0_(ptr noundef nonnull align 4 dereferenceable(32) %5, ptr noundef nonnull align 4 dereferenceable(32) %6), !dbg !2471
  ret ptr %5, !dbg !2471
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #1

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(32) ptr @_ZN4RTTL4AABBaSERKS0_(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(32) %1) #5 comdat align 2 !dbg !2473 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2479, metadata !DIExpression()), !dbg !2480
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2481, metadata !DIExpression()), !dbg !2480
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8, !dbg !2482
  %7 = call noundef nonnull align 4 dereferenceable(32) ptr @_ZN4RTTL7RTBox3aaSERKS0_(ptr noundef nonnull align 4 dereferenceable(32) %5, ptr noundef nonnull align 4 dereferenceable(32) %6), !dbg !2482
  ret ptr %5, !dbg !2482
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN4RTTL15OnDemandBuilder10createNodeEPNS_4AABBEPii(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #6 align 2 !dbg !2484 {
  %5 = alloca %struct.sse_f, align 4
  %6 = alloca %struct.sse_f, align 4
  %7 = alloca %struct.sse_f, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sse_f, align 4
  %10 = alloca %struct.sse_f, align 4
  %11 = alloca %struct.sse_f, align 4
  %12 = alloca %struct.sse_f, align 4
  %13 = alloca %struct.sse_f, align 4
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  %16 = alloca ptr, align 8
  %17 = alloca i32, align 4
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.sse_f, align 4
  %23 = alloca %struct.sse_f, align 4
  %24 = alloca %struct.sse_f, align 4
  %25 = alloca %struct.sse_f, align 4
  %26 = alloca %struct.sse_f, align 4
  %27 = alloca %struct.sse_f, align 4
  %28 = alloca i32, align 4
  %29 = alloca %struct.sse_f, align 4
  %30 = alloca %struct.sse_f, align 4
  %31 = alloca %struct.sse_f, align 4
  %32 = alloca %struct.sse_f, align 4
  %33 = alloca %struct.sse_f, align 4
  %34 = alloca ptr, align 8
  %35 = alloca i32, align 4
  %36 = alloca ptr, align 8
  %37 = alloca i32, align 4
  %38 = alloca ptr, align 8
  %39 = alloca ptr, align 8
  %40 = alloca ptr, align 8
  %41 = alloca i32, align 4
  %42 = alloca %struct.sse_f, align 4
  %43 = alloca %struct.sse_f, align 4
  %44 = alloca %struct.sse_f, align 4
  %45 = alloca %struct.sse_f, align 4
  %46 = alloca %struct.sse_f, align 4
  %47 = alloca %struct.sse_f, align 4
  %48 = alloca i32, align 4
  %49 = alloca %struct.sse_f, align 4
  %50 = alloca %struct.sse_f, align 4
  %51 = alloca %struct.sse_f, align 4
  %52 = alloca %struct.sse_f, align 4
  %53 = alloca %struct.sse_f, align 4
  %54 = alloca ptr, align 8
  %55 = alloca i32, align 4
  %56 = alloca ptr, align 8
  %57 = alloca i32, align 4
  %58 = alloca ptr, align 8
  %59 = alloca ptr, align 8
  %60 = alloca ptr, align 8
  %61 = alloca i32, align 4
  %62 = alloca %struct.sse_f, align 4
  %63 = alloca %struct.sse_f, align 4
  %64 = alloca %struct.sse_f, align 4
  %65 = alloca %struct.sse_f, align 4
  %66 = alloca %struct.sse_f, align 4
  %67 = alloca %struct.sse_f, align 4
  %68 = alloca i32, align 4
  %69 = alloca %struct.sse_f, align 4
  %70 = alloca %struct.sse_f, align 4
  %71 = alloca %struct.sse_f, align 4
  %72 = alloca %struct.sse_f, align 4
  %73 = alloca %struct.sse_f, align 4
  %74 = alloca ptr, align 8
  %75 = alloca i32, align 4
  %76 = alloca ptr, align 8
  %77 = alloca i32, align 4
  %78 = alloca ptr, align 8
  %79 = alloca ptr, align 8
  %80 = alloca ptr, align 8
  %81 = alloca i32, align 4
  %82 = alloca %struct.sse_f, align 4
  %83 = alloca %struct.sse_f, align 4
  %84 = alloca %struct.sse_f, align 4
  %85 = alloca %struct.sse_f, align 4
  %86 = alloca %struct.sse_f, align 4
  %87 = alloca %struct.sse_f, align 4
  %88 = alloca i32, align 4
  %89 = alloca %struct.sse_f, align 4
  %90 = alloca %struct.sse_f, align 4
  %91 = alloca %struct.sse_f, align 4
  %92 = alloca %struct.sse_f, align 4
  %93 = alloca %struct.sse_f, align 4
  %94 = alloca ptr, align 8
  %95 = alloca i32, align 4
  %96 = alloca ptr, align 8
  %97 = alloca i32, align 4
  %98 = alloca ptr, align 8
  %99 = alloca ptr, align 8
  %100 = alloca ptr, align 8
  %101 = alloca i32, align 4
  %102 = alloca %struct.sse_f, align 4
  %103 = alloca %struct.sse_f, align 4
  %104 = alloca %struct.sse_f, align 4
  %105 = alloca %struct.sse_f, align 4
  %106 = alloca %struct.sse_f, align 4
  %107 = alloca %struct.sse_f, align 4
  %108 = alloca i32, align 4
  %109 = alloca %struct.sse_f, align 4
  %110 = alloca %struct.sse_f, align 4
  %111 = alloca %struct.sse_f, align 4
  %112 = alloca %struct.sse_f, align 4
  %113 = alloca %struct.sse_f, align 4
  %114 = alloca ptr, align 8
  %115 = alloca i32, align 4
  %116 = alloca ptr, align 8
  %117 = alloca i32, align 4
  %118 = alloca ptr, align 8
  %119 = alloca ptr, align 8
  %120 = alloca ptr, align 8
  %121 = alloca i32, align 4
  %122 = alloca %struct.sse_f, align 4
  %123 = alloca %struct.sse_f, align 4
  %124 = alloca %struct.sse_f, align 4
  %125 = alloca %struct.sse_f, align 4
  %126 = alloca %struct.sse_f, align 4
  %127 = alloca %struct.sse_f, align 4
  %128 = alloca i32, align 4
  %129 = alloca %struct.sse_f, align 4
  %130 = alloca %struct.sse_f, align 4
  %131 = alloca %struct.sse_f, align 4
  %132 = alloca %struct.sse_f, align 4
  %133 = alloca %struct.sse_f, align 4
  %134 = alloca ptr, align 8
  %135 = alloca i32, align 4
  %136 = alloca ptr, align 8
  %137 = alloca i32, align 4
  %138 = alloca ptr, align 8
  %139 = alloca ptr, align 8
  %140 = alloca ptr, align 8
  %141 = alloca i32, align 4
  %142 = alloca %struct.sse_f, align 4
  %143 = alloca %struct.sse_f, align 4
  %144 = alloca %struct.sse_f, align 4
  %145 = alloca %struct.sse_f, align 4
  %146 = alloca %struct.sse_f, align 4
  %147 = alloca %struct.sse_f, align 4
  %148 = alloca i32, align 4
  %149 = alloca %struct.sse_f, align 4
  %150 = alloca %struct.sse_f, align 4
  %151 = alloca %struct.sse_f, align 4
  %152 = alloca %struct.sse_f, align 4
  %153 = alloca %struct.sse_f, align 4
  %154 = alloca ptr, align 8
  %155 = alloca i32, align 4
  %156 = alloca ptr, align 8
  %157 = alloca i32, align 4
  %158 = alloca ptr, align 8
  %159 = alloca ptr, align 8
  %160 = alloca ptr, align 8
  %161 = alloca i32, align 4
  %162 = alloca %struct.sse_f, align 4
  %163 = alloca %struct.sse_f, align 4
  %164 = alloca %struct.sse_f, align 4
  %165 = alloca %struct.sse_f, align 4
  %166 = alloca %struct.sse_f, align 4
  %167 = alloca %struct.sse_f, align 4
  %168 = alloca i32, align 4
  %169 = alloca %struct.sse_f, align 4
  %170 = alloca %struct.sse_f, align 4
  %171 = alloca %struct.sse_f, align 4
  %172 = alloca i32, align 4
  %173 = alloca %struct.sse_f, align 4
  %174 = alloca %struct.sse_f, align 4
  %175 = alloca %struct.sse_f, align 4
  %176 = alloca i32, align 4
  %177 = alloca %struct.sse_f, align 4
  %178 = alloca %struct.sse_f, align 4
  %179 = alloca %struct.sse_f, align 4
  %180 = alloca i32, align 4
  %181 = alloca %struct.sse_f, align 4
  %182 = alloca %struct.sse_f, align 4
  %183 = alloca %struct.sse_f, align 4
  %184 = alloca i32, align 4
  %185 = alloca %struct.sse_f, align 4
  %186 = alloca %struct.sse_f, align 4
  %187 = alloca %struct.sse_f, align 4
  %188 = alloca %struct.sse_f, align 4
  %189 = alloca %struct.sse_f, align 4
  %190 = alloca %struct.sse_f, align 4
  %191 = alloca %struct.sse_f, align 4
  %192 = alloca %struct.sse_f, align 4
  %193 = alloca %struct.sse_f, align 4
  %194 = alloca %struct.sse_f, align 4
  %195 = alloca %struct.sse_f, align 4
  %196 = alloca %struct.sse_f, align 4
  %197 = alloca %struct.sse_f, align 4
  %198 = alloca %struct.sse_f, align 4
  %199 = alloca %struct.sse_f, align 4
  %200 = alloca %struct.sse_f, align 4
  %201 = alloca %struct.sse_f, align 4
  %202 = alloca %struct.sse_f, align 4
  %203 = alloca %struct.sse_f, align 4
  %204 = alloca %struct.sse_f, align 4
  %205 = alloca %struct.sse_f, align 4
  %206 = alloca %struct.sse_f, align 4
  %207 = alloca %struct.sse_f, align 4
  %208 = alloca %struct.sse_f, align 4
  %209 = alloca %struct.sse_f, align 4
  %210 = alloca %struct.sse_f, align 4
  %211 = alloca %struct.sse_f, align 4
  %212 = alloca %struct.sse_f, align 4
  %213 = alloca i32, align 4
  %214 = alloca %struct.sse_f, align 4
  %215 = alloca %struct.sse_f, align 4
  %216 = alloca %struct.sse_f, align 4
  %217 = alloca i32, align 4
  %218 = alloca %struct.sse_f, align 4
  %219 = alloca %struct.sse_f, align 4
  %220 = alloca %struct.sse_f, align 4
  %221 = alloca i32, align 4
  %222 = alloca %struct.sse_f, align 4
  %223 = alloca %struct.sse_f, align 4
  %224 = alloca %struct.sse_f, align 4
  %225 = alloca i32, align 4
  %226 = alloca %struct.sse_f, align 4
  %227 = alloca %struct.sse_f, align 4
  %228 = alloca %struct.sse_f, align 4
  %229 = alloca i32, align 4
  %230 = alloca %struct.sse_f, align 4
  %231 = alloca %struct.sse_f, align 4
  %232 = alloca %struct.sse_f, align 4
  %233 = alloca %struct.sse_f, align 4
  %234 = alloca %struct.sse_f, align 4
  %235 = alloca %struct.sse_f, align 4
  %236 = alloca %struct.sse_f, align 4
  %237 = alloca %struct.sse_f, align 4
  %238 = alloca %struct.sse_f, align 4
  %239 = alloca %struct.sse_f, align 4
  %240 = alloca %struct.sse_f, align 4
  %241 = alloca %struct.sse_f, align 4
  %242 = alloca %struct.sse_f, align 4
  %243 = alloca %struct.sse_f, align 4
  %244 = alloca %struct.sse_f, align 4
  %245 = alloca %struct.sse_f, align 4
  %246 = alloca %struct.sse_f, align 4
  %247 = alloca %struct.sse_f, align 4
  %248 = alloca %struct.sse_f, align 4
  %249 = alloca %struct.sse_f, align 4
  %250 = alloca %struct.sse_f, align 4
  %251 = alloca %struct.sse_f, align 4
  %252 = alloca %struct.sse_f, align 4
  %253 = alloca %struct.sse_f, align 4
  %254 = alloca %struct.sse_f, align 4
  %255 = alloca ptr, align 8
  %256 = alloca i32, align 4
  %257 = alloca ptr, align 8
  %258 = alloca i32, align 4
  %259 = alloca ptr, align 8
  %260 = alloca ptr, align 8
  %261 = alloca ptr, align 8
  %262 = alloca i32, align 4
  %263 = alloca %struct.sse_f, align 4
  %264 = alloca %struct.sse_f, align 4
  %265 = alloca %struct.sse_f, align 4
  %266 = alloca ptr, align 8
  %267 = alloca i32, align 4
  %268 = alloca ptr, align 8
  %269 = alloca i32, align 4
  %270 = alloca ptr, align 8
  %271 = alloca ptr, align 8
  %272 = alloca ptr, align 8
  %273 = alloca i32, align 4
  %274 = alloca %struct.sse_f, align 4
  %275 = alloca %struct.sse_f, align 4
  %276 = alloca %struct.sse_f, align 4
  %277 = alloca ptr, align 8
  %278 = alloca i32, align 4
  %279 = alloca ptr, align 8
  %280 = alloca i32, align 4
  %281 = alloca ptr, align 8
  %282 = alloca ptr, align 8
  %283 = alloca ptr, align 8
  %284 = alloca i32, align 4
  %285 = alloca %struct.sse_f, align 4
  %286 = alloca %struct.sse_f, align 4
  %287 = alloca %struct.sse_f, align 4
  %288 = alloca ptr, align 8
  %289 = alloca i32, align 4
  %290 = alloca ptr, align 8
  %291 = alloca i32, align 4
  %292 = alloca ptr, align 8
  %293 = alloca ptr, align 8
  %294 = alloca ptr, align 8
  %295 = alloca i32, align 4
  %296 = alloca %struct.sse_f, align 4
  %297 = alloca %struct.sse_f, align 4
  %298 = alloca %struct.sse_f, align 4
  %299 = alloca ptr, align 8
  %300 = alloca i32, align 4
  %301 = alloca ptr, align 8
  %302 = alloca i32, align 4
  %303 = alloca ptr, align 8
  %304 = alloca ptr, align 8
  %305 = alloca ptr, align 8
  %306 = alloca i32, align 4
  %307 = alloca %struct.sse_f, align 4
  %308 = alloca %struct.sse_f, align 4
  %309 = alloca %struct.sse_f, align 4
  %310 = alloca ptr, align 8
  %311 = alloca i32, align 4
  %312 = alloca ptr, align 8
  %313 = alloca i32, align 4
  %314 = alloca ptr, align 8
  %315 = alloca ptr, align 8
  %316 = alloca ptr, align 8
  %317 = alloca i32, align 4
  %318 = alloca %struct.sse_f, align 4
  %319 = alloca %struct.sse_f, align 4
  %320 = alloca %struct.sse_f, align 4
  %321 = alloca ptr, align 8
  %322 = alloca i32, align 4
  %323 = alloca ptr, align 8
  %324 = alloca i32, align 4
  %325 = alloca ptr, align 8
  %326 = alloca ptr, align 8
  %327 = alloca ptr, align 8
  %328 = alloca i32, align 4
  %329 = alloca %struct.sse_f, align 4
  %330 = alloca %struct.sse_f, align 4
  %331 = alloca %struct.sse_f, align 4
  %332 = alloca ptr, align 8
  %333 = alloca i32, align 4
  %334 = alloca ptr, align 8
  %335 = alloca i32, align 4
  %336 = alloca ptr, align 8
  %337 = alloca ptr, align 8
  %338 = alloca ptr, align 8
  %339 = alloca i32, align 4
  %340 = alloca %struct.sse_f, align 4
  %341 = alloca %struct.sse_f, align 4
  %342 = alloca %struct.sse_f, align 4
  %343 = alloca ptr, align 8
  %344 = alloca i32, align 4
  %345 = alloca ptr, align 8
  %346 = alloca i32, align 4
  %347 = alloca ptr, align 8
  %348 = alloca ptr, align 8
  %349 = alloca ptr, align 8
  %350 = alloca i32, align 4
  %351 = alloca %struct.sse_f, align 4
  %352 = alloca %struct.sse_f, align 4
  %353 = alloca %struct.sse_f, align 4
  %354 = alloca ptr, align 8
  %355 = alloca i32, align 4
  %356 = alloca ptr, align 8
  %357 = alloca i32, align 4
  %358 = alloca ptr, align 8
  %359 = alloca ptr, align 8
  %360 = alloca ptr, align 8
  %361 = alloca i32, align 4
  %362 = alloca %struct.sse_f, align 4
  %363 = alloca %struct.sse_f, align 4
  %364 = alloca %struct.sse_f, align 4
  %365 = alloca ptr, align 8
  %366 = alloca ptr, align 8
  %367 = alloca i32, align 4
  %368 = alloca ptr, align 8
  %369 = alloca ptr, align 8
  %370 = alloca i32, align 4
  %371 = alloca ptr, align 8
  %372 = alloca ptr, align 8
  %373 = alloca i32, align 4
  %374 = alloca ptr, align 8
  %375 = alloca ptr, align 8
  %376 = alloca i32, align 4
  %377 = alloca ptr, align 8
  %378 = alloca ptr, align 8
  %379 = alloca i32, align 4
  %380 = alloca ptr, align 8
  %381 = alloca ptr, align 8
  %382 = alloca i32, align 4
  %383 = alloca ptr, align 8
  %384 = alloca ptr, align 8
  %385 = alloca i32, align 4
  %386 = alloca ptr, align 8
  %387 = alloca ptr, align 8
  %388 = alloca i32, align 4
  %389 = alloca ptr, align 8
  %390 = alloca ptr, align 8
  %391 = alloca i32, align 4
  %392 = alloca ptr, align 8
  %393 = alloca ptr, align 8
  %394 = alloca i32, align 4
  %395 = alloca ptr, align 8
  %396 = alloca ptr, align 8
  %397 = alloca i32, align 4
  %398 = alloca ptr, align 8
  %399 = alloca ptr, align 8
  %400 = alloca i32, align 4
  %401 = alloca ptr, align 8
  %402 = alloca ptr, align 8
  %403 = alloca ptr, align 8
  %404 = alloca ptr, align 8
  %405 = alloca ptr, align 8
  %406 = alloca ptr, align 8
  %407 = alloca ptr, align 8
  %408 = alloca ptr, align 8
  %409 = alloca ptr, align 8
  %410 = alloca ptr, align 8
  %411 = alloca ptr, align 8
  %412 = alloca ptr, align 8
  %413 = alloca ptr, align 8
  %414 = alloca ptr, align 8
  %415 = alloca ptr, align 8
  %416 = alloca ptr, align 8
  %417 = alloca ptr, align 8
  %418 = alloca ptr, align 8
  %419 = alloca ptr, align 8
  %420 = alloca ptr, align 8
  %421 = alloca ptr, align 8
  %422 = alloca ptr, align 8
  %423 = alloca ptr, align 8
  %424 = alloca ptr, align 8
  %425 = alloca ptr, align 8
  %426 = alloca ptr, align 8
  %427 = alloca ptr, align 8
  %428 = alloca ptr, align 8
  %429 = alloca ptr, align 8
  %430 = alloca ptr, align 8
  %431 = alloca ptr, align 8
  %432 = alloca ptr, align 8
  %433 = alloca ptr, align 8
  %434 = alloca ptr, align 8
  %435 = alloca ptr, align 8
  %436 = alloca ptr, align 8
  %437 = alloca %struct.sse_f, align 4
  %438 = alloca float, align 4
  %439 = alloca i32, align 4
  %440 = alloca %struct.sse_f, align 4
  %441 = alloca float, align 4
  %442 = alloca i32, align 4
  %443 = alloca ptr, align 8
  %444 = alloca %struct.sse_f, align 4
  %445 = alloca %struct.sse_f, align 4
  %446 = alloca %struct.sse_f, align 4
  %447 = alloca float, align 4
  %448 = alloca i32, align 4
  %449 = alloca %struct.sse_f, align 4
  %450 = alloca float, align 4
  %451 = alloca i32, align 4
  %452 = alloca ptr, align 8
  %453 = alloca %struct.sse_f, align 4
  %454 = alloca %struct.sse_f, align 4
  %455 = alloca %struct.sse_f, align 4
  %456 = alloca float, align 4
  %457 = alloca i32, align 4
  %458 = alloca %struct.sse_f, align 4
  %459 = alloca float, align 4
  %460 = alloca i32, align 4
  %461 = alloca ptr, align 8
  %462 = alloca %struct.sse_f, align 4
  %463 = alloca %struct.sse_f, align 4
  %464 = alloca %struct.sse_f, align 4
  %465 = alloca float, align 4
  %466 = alloca i32, align 4
  %467 = alloca %struct.sse_f, align 4
  %468 = alloca float, align 4
  %469 = alloca i32, align 4
  %470 = alloca ptr, align 8
  %471 = alloca %struct.sse_f, align 4
  %472 = alloca %struct.sse_f, align 4
  %473 = alloca %struct.sse_f, align 4
  %474 = alloca float, align 4
  %475 = alloca i32, align 4
  %476 = alloca %struct.sse_f, align 4
  %477 = alloca float, align 4
  %478 = alloca i32, align 4
  %479 = alloca ptr, align 8
  %480 = alloca %struct.sse_f, align 4
  %481 = alloca %struct.sse_f, align 4
  %482 = alloca %struct.sse_f, align 4
  %483 = alloca float, align 4
  %484 = alloca i32, align 4
  %485 = alloca %struct.sse_f, align 4
  %486 = alloca float, align 4
  %487 = alloca i32, align 4
  %488 = alloca ptr, align 8
  %489 = alloca %struct.sse_f, align 4
  %490 = alloca %struct.sse_f, align 4
  %491 = alloca double, align 8
  %492 = alloca %struct.sse_f, align 4
  %493 = alloca %struct.sse_f, align 4
  %494 = alloca %struct.sse_f, align 4
  %495 = alloca i32, align 4
  %496 = alloca %struct.sse_f, align 4
  %497 = alloca %struct.sse_f, align 4
  %498 = alloca %struct.sse_f, align 4
  %499 = alloca %struct.sse_f, align 4
  %500 = alloca %struct.sse_f, align 4
  %501 = alloca %struct.sse_i, align 4
  %502 = alloca %struct.sse_f, align 4
  %503 = alloca %struct.sse_f, align 4
  %504 = alloca i32, align 4
  %505 = alloca ptr, align 8
  %506 = alloca float, align 4
  %507 = alloca ptr, align 8
  %508 = alloca float, align 4
  %509 = alloca ptr, align 8
  %510 = alloca float, align 4
  %511 = alloca ptr, align 8
  %512 = alloca ptr, align 8
  %513 = alloca ptr, align 8
  %514 = alloca ptr, align 8
  %515 = alloca ptr, align 8
  %516 = alloca ptr, align 8
  %517 = alloca %struct.sse_f, align 4
  %518 = alloca %struct.sse_f, align 4
  %519 = alloca %struct.sse_f, align 4
  %520 = alloca i32, align 4
  %521 = alloca %struct.sse_f, align 4
  %522 = alloca %struct.sse_f, align 4
  %523 = alloca %struct.sse_f, align 4
  %524 = alloca i32, align 4
  %525 = alloca %struct.sse_f, align 4
  %526 = alloca %struct.sse_f, align 4
  %527 = alloca %struct.sse_f, align 4
  %528 = alloca %struct.sse_f, align 4
  %529 = alloca %struct.sse_f, align 4
  %530 = alloca %struct.sse_f, align 4
  %531 = alloca %struct.sse_f, align 4
  %532 = alloca %struct.sse_f, align 4
  %533 = alloca %struct.sse_f, align 4
  %534 = alloca %struct.sse_f, align 4
  %535 = alloca ptr, align 8
  %536 = alloca ptr, align 8
  %537 = alloca ptr, align 8
  %538 = alloca i32, align 4
  %539 = alloca %struct.sse_f, align 4
  %540 = alloca %struct.sse_f, align 4
  %541 = alloca %struct.sse_f, align 4
  %542 = alloca %"class.RTTL::RTVec_t", align 4
  %543 = alloca ptr, align 8
  %544 = alloca ptr, align 8
  %545 = alloca %"class.RTTL::RTVec_t", align 4
  %546 = alloca ptr, align 8
  %547 = alloca ptr, align 8
  %548 = alloca ptr, align 8
  %549 = alloca ptr, align 8
  %550 = alloca ptr, align 8
  %551 = alloca ptr, align 8
  %552 = alloca ptr, align 8
  %553 = alloca ptr, align 8
  %554 = alloca ptr, align 8
  %555 = alloca ptr, align 8
  %556 = alloca ptr, align 8
  %557 = alloca ptr, align 8
  %558 = alloca ptr, align 8
  %559 = alloca ptr, align 8
  %560 = alloca ptr, align 8
  %561 = alloca ptr, align 8
  %562 = alloca i32, align 4
  %563 = alloca i8, align 1
  %564 = alloca ptr, align 8
  %565 = alloca ptr, align 8
  %566 = alloca ptr, align 8
  %567 = alloca ptr, align 8
  %568 = alloca ptr, align 8
  %569 = alloca ptr, align 8
  %570 = alloca ptr, align 8
  %571 = alloca ptr, align 8
  %572 = alloca ptr, align 8
  %573 = alloca ptr, align 8
  %574 = alloca %struct.sse_i, align 4
  %575 = alloca %struct.sse_f, align 4
  %576 = alloca %struct.sse_f, align 4
  %577 = alloca %struct.sse_f, align 4
  %578 = alloca %struct.sse_f, align 4
  %579 = alloca %struct.sse_f, align 4
  %580 = alloca i32, align 4
  %581 = alloca i32, align 4
  %582 = alloca i32, align 4
  %583 = alloca %"class.RTTL::AABB", align 4
  %584 = alloca ptr, align 8
  %585 = alloca ptr, align 8
  %586 = alloca i32, align 4
  %587 = alloca i32, align 4
  %588 = alloca i32, align 4
  %589 = alloca i32, align 4
  %590 = alloca ptr, align 8
  %591 = alloca %"class.RTTL::RTBox_t.1", align 4
  %592 = alloca ptr, align 8
  %593 = alloca %"class.RTTL::RTBox_t.1", align 4
  %594 = alloca ptr, align 8
  %595 = alloca %"class.RTTL::RTBox_t.1", align 4
  %596 = alloca %struct.sse_f, align 4
  %597 = alloca %struct.sse_f, align 4
  %598 = alloca %struct.sse_f, align 4
  %599 = alloca i32, align 4
  %600 = alloca %struct.sse_f, align 4
  %601 = alloca %struct.sse_f, align 4
  %602 = alloca %struct.sse_f, align 4
  %603 = alloca i32, align 4
  %604 = alloca %struct.sse_f, align 4
  %605 = alloca i32, align 4
  %606 = alloca %struct.sse_f, align 4
  %607 = alloca i32, align 4
  %608 = alloca %struct.sse_f, align 4
  %609 = alloca i32, align 4
  %610 = alloca %struct.sse_f, align 4
  %611 = alloca %struct.sse_f, align 4
  %612 = alloca %struct.sse_f, align 4
  %613 = alloca i32, align 4
  %614 = alloca %struct.sse_f, align 4
  %615 = alloca %struct.sse_f, align 4
  %616 = alloca %struct.sse_f, align 4
  %617 = alloca i32, align 4
  %618 = alloca %struct.sse_f, align 4
  %619 = alloca %struct.sse_f, align 4
  %620 = alloca %struct.sse_f, align 4
  %621 = alloca i32, align 4
  %622 = alloca %struct.sse_f, align 4
  %623 = alloca %struct.sse_f, align 4
  %624 = alloca %struct.sse_f, align 4
  %625 = alloca i32, align 4
  %626 = alloca %struct.sse_f, align 4
  %627 = alloca ptr, align 8
  %628 = alloca %"class.RTTL::RTVec_t", align 4
  %629 = alloca ptr, align 8
  %630 = alloca ptr, align 8
  %631 = alloca ptr, align 8
  %632 = alloca ptr, align 8
  %633 = alloca ptr, align 8
  %634 = alloca ptr, align 8
  %635 = alloca ptr, align 8
  %636 = alloca ptr, align 8
  %637 = alloca ptr, align 8
  %638 = alloca ptr, align 8
  %639 = alloca ptr, align 8
  %640 = alloca ptr, align 8
  %641 = alloca ptr, align 8
  %642 = alloca ptr, align 8
  %643 = alloca ptr, align 8
  %644 = alloca ptr, align 8
  %645 = alloca i32, align 4
  %646 = alloca i32, align 4
  %647 = alloca ptr, align 8
  %648 = alloca ptr, align 8
  %649 = alloca ptr, align 8
  %650 = alloca ptr, align 8
  %651 = alloca i32, align 4
  %652 = alloca i32, align 4
  %653 = alloca ptr, align 8
  %654 = alloca i32, align 4
  %655 = alloca i32, align 4
  %656 = alloca ptr, align 8
  %657 = alloca ptr, align 8
  %658 = alloca ptr, align 8
  %659 = alloca ptr, align 8
  %660 = alloca %struct.sse_f, align 4
  %661 = alloca float, align 4
  %662 = alloca i32, align 4
  %663 = alloca ptr, align 8
  %664 = alloca ptr, align 8
  %665 = alloca ptr, align 8
  %666 = alloca i32, align 4
  %667 = alloca %"class.RTTL::AABB", align 4
  %668 = alloca i32, align 4
  %669 = alloca i32, align 4
  %670 = alloca i32, align 4
  %671 = alloca %"class.RTTL::AABB", align 4
  %672 = alloca %struct.sse_f, align 4
  %673 = alloca i32, align 4
  %674 = alloca %struct.sse_f, align 4
  %675 = alloca i32, align 4
  %676 = alloca i32, align 4
  %677 = alloca %struct.sse_f, align 4
  %678 = alloca %struct.sse_f, align 4
  %679 = alloca %struct.sse_f, align 4
  %680 = alloca %struct.sse_f, align 4
  %681 = alloca %struct.sse_f, align 4
  %682 = alloca %struct.sse_f, align 4
  %683 = alloca %struct.sse_f, align 4
  %684 = alloca %struct.sse_f, align 4
  %685 = alloca %struct.sse_f, align 4
  %686 = alloca %struct.sse_f, align 4
  %687 = alloca %struct.sse_f, align 4
  %688 = alloca %struct.sse_f, align 4
  %689 = alloca %struct.sse_f, align 4
  %690 = alloca %struct.sse_f, align 4
  %691 = alloca float, align 4
  %692 = alloca i32, align 4
  %693 = alloca i32, align 4
  %694 = alloca float, align 4
  %695 = alloca %struct.sse_f, align 4
  %696 = alloca i32, align 4
  %697 = alloca %"class.RTTL::AABB", align 4
  %698 = alloca %"class.RTTL::AABB", align 4
  %699 = alloca i32, align 4
  %700 = alloca i32, align 4
  %701 = alloca %"class.RTTL::AABB", align 4
  %702 = alloca i32, align 4
  %703 = alloca %"class.RTTL::AABB", align 4
  %704 = alloca i32, align 4
  %705 = alloca i32, align 4
  %706 = alloca i32, align 4
  %707 = alloca i32, align 4
  %708 = alloca float, align 4
  %709 = alloca float, align 4
  %710 = alloca float, align 4
  %711 = alloca ptr, align 8
  %712 = alloca ptr, align 8
  %713 = alloca i32, align 4
  %714 = alloca %"class.RTTL::AABB", align 4
  %715 = alloca %"class.RTTL::AABB", align 4
  %716 = alloca float, align 4
  %717 = alloca float, align 4
  %718 = alloca %struct.sse_f, align 4
  %719 = alloca %struct.sse_f, align 4
  %720 = alloca %struct.sse_f, align 4
  %721 = alloca i32, align 4
  store ptr %0, ptr %663, align 8
  call void @llvm.dbg.declare(metadata ptr %663, metadata !2485, metadata !DIExpression()), !dbg !2486
  store ptr %1, ptr %664, align 8
  call void @llvm.dbg.declare(metadata ptr %664, metadata !2487, metadata !DIExpression()), !dbg !2488
  store ptr %2, ptr %665, align 8
  call void @llvm.dbg.declare(metadata ptr %665, metadata !2489, metadata !DIExpression()), !dbg !2490
  store i32 %3, ptr %666, align 4
  call void @llvm.dbg.declare(metadata ptr %666, metadata !2491, metadata !DIExpression()), !dbg !2492
  %722 = load ptr, ptr %663, align 8
  %723 = load ptr, ptr %664, align 8, !dbg !2493
  %724 = load i32, ptr %666, align 4, !dbg !2493
  %725 = sext i32 %724 to i64, !dbg !2493
  %726 = getelementptr inbounds %"class.RTTL::AABB", ptr %723, i64 %725, !dbg !2493
  store ptr %726, ptr %649, align 8
  call void @llvm.dbg.declare(metadata ptr %649, metadata !2494, metadata !DIExpression()), !dbg !2496
  %727 = load ptr, ptr %649, align 8
  store ptr %727, ptr %555, align 8
  call void @llvm.dbg.declare(metadata ptr %555, metadata !2176, metadata !DIExpression()), !dbg !2498
  %728 = load ptr, ptr %555, align 8
  %729 = getelementptr inbounds %"class.RTTL::RTBox_t", ptr %728, i32 0, i32 1, !dbg !2500
  %730 = getelementptr inbounds %"struct.RTTL::BVHExtData", ptr %729, i64 3, !dbg !2501
  %731 = load i32, ptr %730, align 4, !dbg !2502
  %732 = and i32 %731, -2147483648, !dbg !2503
  %733 = icmp ne i32 %732, 0, !dbg !2502
  br i1 %733, label %734, label %735, !dbg !2493

734:                                              ; preds = %4
  br label %737, !dbg !2493

735:                                              ; preds = %4
  call void @__assert_fail(ptr noundef @.str.5, ptr noundef @.str.6, i32 noundef 44, ptr noundef @__PRETTY_FUNCTION__._ZN4RTTL15OnDemandBuilder10createNodeEPNS_4AABBEPii) #17, !dbg !2493
  unreachable, !dbg !2493

736:                                              ; No predecessors!
  br label %737, !dbg !2493

737:                                              ; preds = %736, %734
  call void @llvm.dbg.declare(metadata ptr %667, metadata !2504, metadata !DIExpression()), !dbg !2505
  %738 = load ptr, ptr %664, align 8, !dbg !2506
  %739 = load i32, ptr %666, align 4, !dbg !2507
  %740 = sext i32 %739 to i64, !dbg !2506
  %741 = getelementptr inbounds %"class.RTTL::AABB", ptr %738, i64 %740, !dbg !2506
  call void @_ZN4RTTL4AABBC2ERKS0_(ptr noundef nonnull align 4 dereferenceable(32) %667, ptr noundef nonnull align 4 dereferenceable(32) %741), !dbg !2506
  call void @llvm.dbg.declare(metadata ptr %668, metadata !2508, metadata !DIExpression()), !dbg !2509
  %742 = load ptr, ptr %664, align 8, !dbg !2510
  %743 = load i32, ptr %666, align 4, !dbg !2511
  %744 = sext i32 %743 to i64, !dbg !2510
  %745 = getelementptr inbounds %"class.RTTL::AABB", ptr %742, i64 %744, !dbg !2510
  store ptr %745, ptr %648, align 8
  call void @llvm.dbg.declare(metadata ptr %648, metadata !2512, metadata !DIExpression()), !dbg !2514
  %746 = load ptr, ptr %648, align 8
  %747 = getelementptr inbounds %"struct.RTTL::BVHExtData", ptr %746, i64 3, !dbg !2516
  %748 = load i32, ptr %747, align 4, !dbg !2517
  %749 = and i32 %748, 2147483647, !dbg !2518
  store i32 %749, ptr %668, align 4, !dbg !2509
  call void @llvm.dbg.declare(metadata ptr %669, metadata !2519, metadata !DIExpression()), !dbg !2520
  %750 = load i32, ptr %668, align 4, !dbg !2521
  %751 = load ptr, ptr %664, align 8, !dbg !2522
  %752 = load i32, ptr %666, align 4, !dbg !2523
  %753 = sext i32 %752 to i64, !dbg !2522
  %754 = getelementptr inbounds %"class.RTTL::AABB", ptr %751, i64 %753, !dbg !2522
  store ptr %754, ptr %647, align 8
  call void @llvm.dbg.declare(metadata ptr %647, metadata !2524, metadata !DIExpression()), !dbg !2526
  %755 = load ptr, ptr %647, align 8
  store ptr %755, ptr %556, align 8
  call void @llvm.dbg.declare(metadata ptr %556, metadata !2176, metadata !DIExpression()), !dbg !2528
  %756 = load ptr, ptr %556, align 8
  %757 = getelementptr inbounds %"class.RTTL::RTBox_t", ptr %756, i32 0, i32 1, !dbg !2530
  %758 = getelementptr inbounds %"struct.RTTL::BVHExtData", ptr %757, i64 3, !dbg !2531
  %759 = load i32, ptr %758, align 4, !dbg !2532
  %760 = and i32 %759, 2147483647, !dbg !2533
  %761 = add i32 %750, %760, !dbg !2534
  store i32 %761, ptr %669, align 4, !dbg !2520
  call void @llvm.dbg.declare(metadata ptr %670, metadata !2535, metadata !DIExpression()), !dbg !2536
  %762 = load i32, ptr %669, align 4, !dbg !2537
  %763 = load i32, ptr %668, align 4, !dbg !2538
  %764 = sub nsw i32 %762, %763, !dbg !2539
  store i32 %764, ptr %670, align 4, !dbg !2536
  %765 = load i32, ptr %670, align 4, !dbg !2540
  %766 = icmp sle i32 %765, 1, !dbg !2542
  br i1 %766, label %767, label %800, !dbg !2543

767:                                              ; preds = %737
  br label %768, !dbg !2544

768:                                              ; preds = %2888, %767
  call void @llvm.dbg.label(metadata !2545), !dbg !2547
  %769 = load ptr, ptr %664, align 8, !dbg !2548
  %770 = load i32, ptr %666, align 4, !dbg !2549
  %771 = sext i32 %770 to i64, !dbg !2548
  %772 = getelementptr inbounds %"class.RTTL::AABB", ptr %769, i64 %771, !dbg !2548
  %773 = call noundef nonnull align 4 dereferenceable(32) ptr @_ZN4RTTL4AABBaSERKS0_(ptr noundef nonnull align 4 dereferenceable(32) %772, ptr noundef nonnull align 4 dereferenceable(32) %667), !dbg !2550
  %774 = load ptr, ptr %664, align 8, !dbg !2551
  %775 = load i32, ptr %666, align 4, !dbg !2552
  %776 = sext i32 %775 to i64, !dbg !2551
  %777 = getelementptr inbounds %"class.RTTL::AABB", ptr %774, i64 %776, !dbg !2551
  %778 = load i32, ptr %668, align 4, !dbg !2553
  %779 = load i32, ptr %669, align 4, !dbg !2554
  %780 = load i32, ptr %668, align 4, !dbg !2555
  %781 = sub nsw i32 %779, %780, !dbg !2556
  store ptr %777, ptr %644, align 8
  call void @llvm.dbg.declare(metadata ptr %644, metadata !2557, metadata !DIExpression()), !dbg !2559
  store i32 %778, ptr %645, align 4
  call void @llvm.dbg.declare(metadata ptr %645, metadata !2561, metadata !DIExpression()), !dbg !2562
  store i32 %781, ptr %646, align 4
  call void @llvm.dbg.declare(metadata ptr %646, metadata !2563, metadata !DIExpression()), !dbg !2564
  %782 = load ptr, ptr %644, align 8
  %783 = load i32, ptr %645, align 4, !dbg !2565
  %784 = or i32 %783, -2147483648, !dbg !2566
  store ptr %782, ptr %559, align 8
  call void @llvm.dbg.declare(metadata ptr %559, metadata !2167, metadata !DIExpression()), !dbg !2567
  %785 = load ptr, ptr %559, align 8
  %786 = getelementptr inbounds %"struct.RTTL::BVHExtData", ptr %785, i64 3, !dbg !2569
  store i32 %784, ptr %786, align 4, !dbg !2570
  %787 = load i32, ptr %646, align 4, !dbg !2571
  %788 = trunc i32 %787 to i16, !dbg !2571
  store ptr %782, ptr %551, align 8
  call void @llvm.dbg.declare(metadata ptr %551, metadata !2572, metadata !DIExpression()), !dbg !2574
  %789 = load ptr, ptr %551, align 8
  %790 = getelementptr inbounds %"class.RTTL::RTBox_t", ptr %789, i32 0, i32 1, !dbg !2576
  %791 = getelementptr inbounds %"struct.RTTL::BVHExtData", ptr %790, i64 3, !dbg !2577
  %792 = getelementptr inbounds %struct.anon, ptr %791, i32 0, i32 2, !dbg !2578
  store i16 %788, ptr %792, align 2, !dbg !2579
  store ptr %782, ptr %549, align 8
  call void @llvm.dbg.declare(metadata ptr %549, metadata !2580, metadata !DIExpression()), !dbg !2582
  %793 = load ptr, ptr %549, align 8
  %794 = getelementptr inbounds %"class.RTTL::RTBox_t", ptr %793, i32 0, i32 1, !dbg !2584
  %795 = getelementptr inbounds %"struct.RTTL::BVHExtData", ptr %794, i64 3, !dbg !2585
  store i8 0, ptr %795, align 1, !dbg !2586
  store ptr %782, ptr %547, align 8
  call void @llvm.dbg.declare(metadata ptr %547, metadata !2587, metadata !DIExpression()), !dbg !2589
  %796 = load ptr, ptr %547, align 8
  %797 = getelementptr inbounds %"class.RTTL::RTBox_t", ptr %796, i32 0, i32 1, !dbg !2591
  %798 = getelementptr inbounds %"struct.RTTL::BVHExtData", ptr %797, i64 3, !dbg !2592
  %799 = getelementptr inbounds %struct.anon, ptr %798, i32 0, i32 1, !dbg !2593
  store i8 0, ptr %799, align 1, !dbg !2594
  br label %3700, !dbg !2595

800:                                              ; preds = %737
  call void @llvm.dbg.declare(metadata ptr %671, metadata !2596, metadata !DIExpression()), !dbg !2597
  call void @_ZN4RTTL4AABBC2Ev(ptr noundef nonnull align 4 dereferenceable(32) %671), !dbg !2597
  store ptr %671, ptr %639, align 8
  call void @llvm.dbg.declare(metadata ptr %639, metadata !2598, metadata !DIExpression()), !dbg !2600
  %801 = load ptr, ptr %639, align 8
  store ptr %801, ptr %479, align 8
  call void @llvm.dbg.declare(metadata ptr %479, metadata !2602, metadata !DIExpression()), !dbg !2604
  %802 = load ptr, ptr %479, align 8
  store float 0x47EFFFFFE0000000, ptr %474, align 4
  call void @llvm.dbg.declare(metadata ptr %474, metadata !1886, metadata !DIExpression()), !dbg !2606
  call void @llvm.dbg.declare(metadata ptr %473, metadata !1893, metadata !DIExpression()), !dbg !2608
  call void @_ZN5sse_fC2Ev(ptr noundef nonnull align 4 dereferenceable(16) %473), !dbg !2608
  call void @llvm.dbg.declare(metadata ptr %475, metadata !1895, metadata !DIExpression()), !dbg !2609
  store i32 0, ptr %475, align 4, !dbg !2609
  br label %803, !dbg !2610

803:                                              ; preds = %806, %800
  %804 = load i32, ptr %475, align 4, !dbg !2611
  %805 = icmp slt i32 %804, 4, !dbg !2612
  br i1 %805, label %806, label %813, !dbg !2613

806:                                              ; preds = %803
  %807 = load float, ptr %474, align 4, !dbg !2614
  %808 = load i32, ptr %475, align 4, !dbg !2615
  %809 = sext i32 %808 to i64, !dbg !2616
  %810 = getelementptr inbounds [4 x float], ptr %473, i64 0, i64 %809, !dbg !2616
  store float %807, ptr %810, align 4, !dbg !2617
  %811 = load i32, ptr %475, align 4, !dbg !2618
  %812 = add nsw i32 %811, 1, !dbg !2618
  store i32 %812, ptr %475, align 4, !dbg !2618
  br label %803, !dbg !2619, !llvm.loop !2620

813:                                              ; preds = %803
  %814 = load { <2 x float>, <2 x float> }, ptr %473, align 4, !dbg !2622
  %815 = extractvalue { <2 x float>, <2 x float> } %814, 0, !dbg !2623
  store <2 x float> %815, ptr %480, align 4, !dbg !2623
  %816 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %480, i32 0, i32 1, !dbg !2623
  %817 = extractvalue { <2 x float>, <2 x float> } %814, 1, !dbg !2623
  store <2 x float> %817, ptr %816, align 4, !dbg !2623
  store ptr %802, ptr %407, align 8
  call void @llvm.dbg.declare(metadata ptr %407, metadata !2624, metadata !DIExpression()), !dbg !2626
  store ptr %480, ptr %408, align 8
  call void @llvm.dbg.declare(metadata ptr %408, metadata !2628, metadata !DIExpression()), !dbg !2629
  %818 = load ptr, ptr %407, align 8
  call void @llvm.dbg.declare(metadata ptr %409, metadata !2630, metadata !DIExpression()), !dbg !2631
  %819 = call noundef nonnull align 4 dereferenceable(16) ptr @_ZN4RTTL7RTVec_tILi1E5sse_fLi0EEcvRNS_8RTData_tILi1ES1_Li0EEEEv(ptr noundef nonnull align 4 dereferenceable(16) %818), !dbg !2632
  store ptr %819, ptr %409, align 8, !dbg !2631
  %820 = load ptr, ptr %409, align 8, !dbg !2633
  %821 = load ptr, ptr %408, align 8, !dbg !2634
  store ptr %820, ptr %392, align 8
  call void @llvm.dbg.declare(metadata ptr %392, metadata !2635, metadata !DIExpression()), !dbg !2637
  store ptr %821, ptr %393, align 8
  call void @llvm.dbg.declare(metadata ptr %393, metadata !2639, metadata !DIExpression()), !dbg !2640
  %822 = load ptr, ptr %392, align 8
  call void @llvm.dbg.declare(metadata ptr %394, metadata !2641, metadata !DIExpression()), !dbg !2643
  store i32 0, ptr %394, align 4, !dbg !2643
  br label %823, !dbg !2644

823:                                              ; preds = %826, %813
  %824 = load i32, ptr %394, align 4, !dbg !2645
  %825 = icmp slt i32 %824, 1, !dbg !2647
  br i1 %825, label %826, label %833, !dbg !2648

826:                                              ; preds = %823
  %827 = load ptr, ptr %393, align 8, !dbg !2649
  %828 = load i32, ptr %394, align 4, !dbg !2650
  %829 = sext i32 %828 to i64, !dbg !2651
  %830 = getelementptr inbounds [1 x %struct.sse_f], ptr %822, i64 0, i64 %829, !dbg !2651
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %830, ptr align 4 %827, i64 16, i1 false), !dbg !2652
  %831 = load i32, ptr %394, align 4, !dbg !2653
  %832 = add nsw i32 %831, 1, !dbg !2653
  store i32 %832, ptr %394, align 4, !dbg !2653
  br label %823, !dbg !2654, !llvm.loop !2655

833:                                              ; preds = %823
  store float 0xC7EFFFFFE0000000, ptr %477, align 4
  call void @llvm.dbg.declare(metadata ptr %477, metadata !1886, metadata !DIExpression()), !dbg !2657
  call void @llvm.dbg.declare(metadata ptr %476, metadata !1893, metadata !DIExpression()), !dbg !2659
  call void @_ZN5sse_fC2Ev(ptr noundef nonnull align 4 dereferenceable(16) %476), !dbg !2659
  call void @llvm.dbg.declare(metadata ptr %478, metadata !1895, metadata !DIExpression()), !dbg !2660
  store i32 0, ptr %478, align 4, !dbg !2660
  br label %834, !dbg !2661

834:                                              ; preds = %837, %833
  %835 = load i32, ptr %478, align 4, !dbg !2662
  %836 = icmp slt i32 %835, 4, !dbg !2663
  br i1 %836, label %837, label %844, !dbg !2664

837:                                              ; preds = %834
  %838 = load float, ptr %477, align 4, !dbg !2665
  %839 = load i32, ptr %478, align 4, !dbg !2666
  %840 = sext i32 %839 to i64, !dbg !2667
  %841 = getelementptr inbounds [4 x float], ptr %476, i64 0, i64 %840, !dbg !2667
  store float %838, ptr %841, align 4, !dbg !2668
  %842 = load i32, ptr %478, align 4, !dbg !2669
  %843 = add nsw i32 %842, 1, !dbg !2669
  store i32 %843, ptr %478, align 4, !dbg !2669
  br label %834, !dbg !2670, !llvm.loop !2671

844:                                              ; preds = %834
  %845 = load { <2 x float>, <2 x float> }, ptr %476, align 4, !dbg !2673
  %846 = extractvalue { <2 x float>, <2 x float> } %845, 0, !dbg !2674
  store <2 x float> %846, ptr %481, align 4, !dbg !2674
  %847 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %481, i32 0, i32 1, !dbg !2674
  %848 = extractvalue { <2 x float>, <2 x float> } %845, 1, !dbg !2674
  store <2 x float> %848, ptr %847, align 4, !dbg !2674
  %849 = getelementptr inbounds %"class.RTTL::RTBox_t", ptr %802, i32 0, i32 1, !dbg !2675
  store ptr %849, ptr %410, align 8
  call void @llvm.dbg.declare(metadata ptr %410, metadata !2624, metadata !DIExpression()), !dbg !2676
  store ptr %481, ptr %411, align 8
  call void @llvm.dbg.declare(metadata ptr %411, metadata !2628, metadata !DIExpression()), !dbg !2678
  %850 = load ptr, ptr %410, align 8
  call void @llvm.dbg.declare(metadata ptr %412, metadata !2630, metadata !DIExpression()), !dbg !2679
  %851 = call noundef nonnull align 4 dereferenceable(16) ptr @_ZN4RTTL7RTVec_tILi1E5sse_fLi0EEcvRNS_8RTData_tILi1ES1_Li0EEEEv(ptr noundef nonnull align 4 dereferenceable(16) %850), !dbg !2680
  store ptr %851, ptr %412, align 8, !dbg !2679
  %852 = load ptr, ptr %412, align 8, !dbg !2681
  %853 = load ptr, ptr %411, align 8, !dbg !2682
  store ptr %852, ptr %389, align 8
  call void @llvm.dbg.declare(metadata ptr %389, metadata !2635, metadata !DIExpression()), !dbg !2683
  store ptr %853, ptr %390, align 8
  call void @llvm.dbg.declare(metadata ptr %390, metadata !2639, metadata !DIExpression()), !dbg !2685
  %854 = load ptr, ptr %389, align 8
  call void @llvm.dbg.declare(metadata ptr %391, metadata !2641, metadata !DIExpression()), !dbg !2686
  store i32 0, ptr %391, align 4, !dbg !2686
  br label %855, !dbg !2687

855:                                              ; preds = %858, %844
  %856 = load i32, ptr %391, align 4, !dbg !2688
  %857 = icmp slt i32 %856, 1, !dbg !2689
  br i1 %857, label %858, label %865, !dbg !2690

858:                                              ; preds = %855
  %859 = load ptr, ptr %390, align 8, !dbg !2691
  %860 = load i32, ptr %391, align 4, !dbg !2692
  %861 = sext i32 %860 to i64, !dbg !2693
  %862 = getelementptr inbounds [1 x %struct.sse_f], ptr %854, i64 0, i64 %861, !dbg !2693
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %862, ptr align 4 %859, i64 16, i1 false), !dbg !2694
  %863 = load i32, ptr %391, align 4, !dbg !2695
  %864 = add nsw i32 %863, 1, !dbg !2695
  store i32 %864, ptr %391, align 4, !dbg !2695
  br label %855, !dbg !2696, !llvm.loop !2697

865:                                              ; preds = %855
  call void @llvm.dbg.declare(metadata ptr %672, metadata !2699, metadata !DIExpression()), !dbg !2700
  store ptr %671, ptr %637, align 8
  call void @llvm.dbg.declare(metadata ptr %637, metadata !2456, metadata !DIExpression()), !dbg !2701
  %866 = load ptr, ptr %637, align 8
  %867 = call noundef nonnull align 4 dereferenceable(16) ptr @_ZN4RTTL7RTVec_tILi1E5sse_fLi0EEixEi(ptr noundef nonnull align 4 dereferenceable(16) %866, i32 noundef 0), !dbg !2703
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %672, ptr align 4 %867, i64 16, i1 false), !dbg !2704
  call void @llvm.dbg.declare(metadata ptr %673, metadata !2705, metadata !DIExpression()), !dbg !2707
  %868 = load i32, ptr %668, align 4, !dbg !2708
  store i32 %868, ptr %673, align 4, !dbg !2707
  br label %869, !dbg !2709

869:                                              ; preds = %1047, %865
  %870 = load i32, ptr %673, align 4, !dbg !2710
  %871 = load i32, ptr %669, align 4, !dbg !2712
  %872 = icmp slt i32 %870, %871, !dbg !2713
  br i1 %872, label %873, label %1050, !dbg !2714

873:                                              ; preds = %869
  %874 = getelementptr inbounds %"class.RTTL::OnDemandBuilder", ptr %722, i32 0, i32 1, !dbg !2715
  %875 = load ptr, ptr %874, align 8, !dbg !2715
  %876 = load ptr, ptr %665, align 8, !dbg !2716
  %877 = load i32, ptr %673, align 4, !dbg !2717
  %878 = sext i32 %877 to i64, !dbg !2716
  %879 = getelementptr inbounds i32, ptr %876, i64 %878, !dbg !2716
  %880 = load i32, ptr %879, align 4, !dbg !2716
  %881 = sext i32 %880 to i64, !dbg !2715
  %882 = getelementptr inbounds %"class.RTTL::CentroidDiffAABB", ptr %875, i64 %881, !dbg !2715
  %883 = call { <2 x float>, <2 x float> } @_ZNK4RTTL16CentroidDiffAABB8centroidEv(ptr noundef nonnull align 4 dereferenceable(32) %882), !dbg !2718
  %884 = getelementptr inbounds %struct.sse_f, ptr %674, i32 0, i32 0, !dbg !2718
  %885 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %884, i32 0, i32 0, !dbg !2718
  %886 = extractvalue { <2 x float>, <2 x float> } %883, 0, !dbg !2718
  store <2 x float> %886, ptr %885, align 4, !dbg !2718
  %887 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %884, i32 0, i32 1, !dbg !2718
  %888 = extractvalue { <2 x float>, <2 x float> } %883, 1, !dbg !2718
  store <2 x float> %888, ptr %887, align 4, !dbg !2718
  store ptr %671, ptr %629, align 8
  call void @llvm.dbg.declare(metadata ptr %629, metadata !2719, metadata !DIExpression()), !dbg !2721
  store ptr %674, ptr %630, align 8
  call void @llvm.dbg.declare(metadata ptr %630, metadata !2723, metadata !DIExpression()), !dbg !2724
  %889 = load ptr, ptr %629, align 8
  %890 = load ptr, ptr %630, align 8, !dbg !2725
  store ptr %889, ptr %158, align 8
  call void @llvm.dbg.declare(metadata ptr %158, metadata !2726, metadata !DIExpression()), !dbg !2728
  store ptr %890, ptr %159, align 8
  call void @llvm.dbg.declare(metadata ptr %159, metadata !2730, metadata !DIExpression()), !dbg !2731
  %891 = load ptr, ptr %158, align 8
  call void @llvm.dbg.declare(metadata ptr %160, metadata !2732, metadata !DIExpression()), !dbg !2733
  %892 = call noundef nonnull align 4 dereferenceable(16) ptr @_ZN4RTTL7RTVec_tILi1E5sse_fLi0EEcvRNS_8RTData_tILi1ES1_Li0EEEEv(ptr noundef nonnull align 4 dereferenceable(16) %891), !dbg !2734
  store ptr %892, ptr %160, align 8, !dbg !2733
  call void @llvm.dbg.declare(metadata ptr %161, metadata !2735, metadata !DIExpression()), !dbg !2737
  store i32 0, ptr %161, align 4, !dbg !2737
  br label %893, !dbg !2738

893:                                              ; preds = %950, %873
  %894 = load i32, ptr %161, align 4, !dbg !2739
  %895 = icmp slt i32 %894, 1, !dbg !2741
  br i1 %895, label %896, label %967, !dbg !2742

896:                                              ; preds = %893
  %897 = load ptr, ptr %160, align 8, !dbg !2743
  %898 = load i32, ptr %161, align 4, !dbg !2744
  store ptr %897, ptr %154, align 8
  call void @llvm.dbg.declare(metadata ptr %154, metadata !2006, metadata !DIExpression()), !dbg !2745
  store i32 %898, ptr %155, align 4
  call void @llvm.dbg.declare(metadata ptr %155, metadata !2011, metadata !DIExpression()), !dbg !2747
  %899 = load ptr, ptr %154, align 8
  %900 = load i32, ptr %155, align 4, !dbg !2748
  %901 = sext i32 %900 to i64, !dbg !2749
  %902 = getelementptr inbounds [1 x %struct.sse_f], ptr %899, i64 0, i64 %901, !dbg !2749
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %163, ptr align 4 %902, i64 16, i1 false), !dbg !2743
  %903 = load ptr, ptr %159, align 8, !dbg !2750
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %164, ptr align 4 %903, i64 16, i1 false), !dbg !2750
  %904 = load <2 x float>, ptr %163, align 4, !dbg !2751
  %905 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %163, i32 0, i32 1, !dbg !2751
  %906 = load <2 x float>, ptr %905, align 4, !dbg !2751
  %907 = load <2 x float>, ptr %164, align 4, !dbg !2751
  %908 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %164, i32 0, i32 1, !dbg !2751
  %909 = load <2 x float>, ptr %908, align 4, !dbg !2751
  store <2 x float> %904, ptr %150, align 4
  %910 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %150, i32 0, i32 1
  store <2 x float> %906, ptr %910, align 4
  store <2 x float> %907, ptr %151, align 4
  %911 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %151, i32 0, i32 1
  store <2 x float> %909, ptr %911, align 4
  call void @llvm.dbg.declare(metadata ptr %150, metadata !2018, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.declare(metadata ptr %151, metadata !2024, metadata !DIExpression()), !dbg !2754
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %152, ptr align 4 %150, i64 16, i1 false), !dbg !2755
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %153, ptr align 4 %151, i64 16, i1 false), !dbg !2756
  %912 = load <2 x float>, ptr %152, align 4, !dbg !2757
  %913 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %152, i32 0, i32 1, !dbg !2757
  %914 = load <2 x float>, ptr %913, align 4, !dbg !2757
  %915 = load <2 x float>, ptr %153, align 4, !dbg !2757
  %916 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %153, i32 0, i32 1, !dbg !2757
  %917 = load <2 x float>, ptr %916, align 4, !dbg !2757
  store <2 x float> %912, ptr %146, align 4
  %918 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %146, i32 0, i32 1
  store <2 x float> %914, ptr %918, align 4
  store <2 x float> %915, ptr %147, align 4
  %919 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %147, i32 0, i32 1
  store <2 x float> %917, ptr %919, align 4
  call void @llvm.dbg.declare(metadata ptr %146, metadata !2029, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.declare(metadata ptr %147, metadata !2033, metadata !DIExpression()), !dbg !2760
  call void @llvm.dbg.declare(metadata ptr %145, metadata !2035, metadata !DIExpression()), !dbg !2761
  call void @_ZN5sse_fC2Ev(ptr noundef nonnull align 4 dereferenceable(16) %145), !dbg !2761
  call void @llvm.dbg.declare(metadata ptr %148, metadata !2037, metadata !DIExpression()), !dbg !2762
  store i32 0, ptr %148, align 4, !dbg !2762
  br label %920, !dbg !2763

920:                                              ; preds = %943, %896
  %921 = load i32, ptr %148, align 4, !dbg !2764
  %922 = icmp slt i32 %921, 4, !dbg !2765
  br i1 %922, label %923, label %950, !dbg !2766

923:                                              ; preds = %920
  %924 = load i32, ptr %148, align 4, !dbg !2767
  %925 = sext i32 %924 to i64, !dbg !2767
  %926 = getelementptr inbounds [4 x float], ptr %146, i64 0, i64 %925, !dbg !2767
  %927 = load float, ptr %926, align 4, !dbg !2767
  %928 = load i32, ptr %148, align 4, !dbg !2767
  %929 = sext i32 %928 to i64, !dbg !2767
  %930 = getelementptr inbounds [4 x float], ptr %147, i64 0, i64 %929, !dbg !2767
  %931 = load float, ptr %930, align 4, !dbg !2767
  %932 = fcmp olt float %927, %931, !dbg !2767
  br i1 %932, label %933, label %938, !dbg !2767

933:                                              ; preds = %923
  %934 = load i32, ptr %148, align 4, !dbg !2767
  %935 = sext i32 %934 to i64, !dbg !2767
  %936 = getelementptr inbounds [4 x float], ptr %146, i64 0, i64 %935, !dbg !2767
  %937 = load float, ptr %936, align 4, !dbg !2767
  br label %943, !dbg !2767

938:                                              ; preds = %923
  %939 = load i32, ptr %148, align 4, !dbg !2767
  %940 = sext i32 %939 to i64, !dbg !2767
  %941 = getelementptr inbounds [4 x float], ptr %147, i64 0, i64 %940, !dbg !2767
  %942 = load float, ptr %941, align 4, !dbg !2767
  br label %943, !dbg !2767

943:                                              ; preds = %938, %933
  %944 = phi float [ %937, %933 ], [ %942, %938 ], !dbg !2767
  %945 = load i32, ptr %148, align 4, !dbg !2768
  %946 = sext i32 %945 to i64, !dbg !2768
  %947 = getelementptr inbounds [4 x float], ptr %145, i64 0, i64 %946, !dbg !2768
  store float %944, ptr %947, align 4, !dbg !2769
  %948 = load i32, ptr %148, align 4, !dbg !2770
  %949 = add nsw i32 %948, 1, !dbg !2770
  store i32 %949, ptr %148, align 4, !dbg !2770
  br label %920, !dbg !2771, !llvm.loop !2772

950:                                              ; preds = %920
  %951 = load { <2 x float>, <2 x float> }, ptr %145, align 4, !dbg !2774
  %952 = extractvalue { <2 x float>, <2 x float> } %951, 0, !dbg !2757
  store <2 x float> %952, ptr %149, align 4, !dbg !2757
  %953 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %149, i32 0, i32 1, !dbg !2757
  %954 = extractvalue { <2 x float>, <2 x float> } %951, 1, !dbg !2757
  store <2 x float> %954, ptr %953, align 4, !dbg !2757
  %955 = load { <2 x float>, <2 x float> }, ptr %149, align 4, !dbg !2775
  %956 = extractvalue { <2 x float>, <2 x float> } %955, 0, !dbg !2751
  store <2 x float> %956, ptr %162, align 4, !dbg !2751
  %957 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %162, i32 0, i32 1, !dbg !2751
  %958 = extractvalue { <2 x float>, <2 x float> } %955, 1, !dbg !2751
  store <2 x float> %958, ptr %957, align 4, !dbg !2751
  %959 = load ptr, ptr %160, align 8, !dbg !2776
  %960 = load i32, ptr %161, align 4, !dbg !2777
  store ptr %959, ptr %156, align 8
  call void @llvm.dbg.declare(metadata ptr %156, metadata !2006, metadata !DIExpression()), !dbg !2778
  store i32 %960, ptr %157, align 4
  call void @llvm.dbg.declare(metadata ptr %157, metadata !2011, metadata !DIExpression()), !dbg !2780
  %961 = load ptr, ptr %156, align 8
  %962 = load i32, ptr %157, align 4, !dbg !2781
  %963 = sext i32 %962 to i64, !dbg !2782
  %964 = getelementptr inbounds [1 x %struct.sse_f], ptr %961, i64 0, i64 %963, !dbg !2782
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %964, ptr align 4 %162, i64 16, i1 false), !dbg !2783
  %965 = load i32, ptr %161, align 4, !dbg !2784
  %966 = add nsw i32 %965, 1, !dbg !2784
  store i32 %966, ptr %161, align 4, !dbg !2784
  br label %893, !dbg !2785, !llvm.loop !2786

967:                                              ; preds = %893
  %968 = getelementptr inbounds %"class.RTTL::RTBox_t", ptr %889, i32 0, i32 1, !dbg !2788
  %969 = load ptr, ptr %630, align 8, !dbg !2789
  store ptr %968, ptr %78, align 8
  call void @llvm.dbg.declare(metadata ptr %78, metadata !2790, metadata !DIExpression()), !dbg !2792
  store ptr %969, ptr %79, align 8
  call void @llvm.dbg.declare(metadata ptr %79, metadata !2794, metadata !DIExpression()), !dbg !2795
  %970 = load ptr, ptr %78, align 8
  call void @llvm.dbg.declare(metadata ptr %80, metadata !2796, metadata !DIExpression()), !dbg !2797
  %971 = call noundef nonnull align 4 dereferenceable(16) ptr @_ZN4RTTL7RTVec_tILi1E5sse_fLi0EEcvRNS_8RTData_tILi1ES1_Li0EEEEv(ptr noundef nonnull align 4 dereferenceable(16) %970), !dbg !2798
  store ptr %971, ptr %80, align 8, !dbg !2797
  call void @llvm.dbg.declare(metadata ptr %81, metadata !2799, metadata !DIExpression()), !dbg !2801
  store i32 0, ptr %81, align 4, !dbg !2801
  br label %972, !dbg !2802

972:                                              ; preds = %1029, %967
  %973 = load i32, ptr %81, align 4, !dbg !2803
  %974 = icmp slt i32 %973, 1, !dbg !2805
  br i1 %974, label %975, label %1046, !dbg !2806

975:                                              ; preds = %972
  %976 = load ptr, ptr %80, align 8, !dbg !2807
  %977 = load i32, ptr %81, align 4, !dbg !2808
  store ptr %976, ptr %74, align 8
  call void @llvm.dbg.declare(metadata ptr %74, metadata !2006, metadata !DIExpression()), !dbg !2809
  store i32 %977, ptr %75, align 4
  call void @llvm.dbg.declare(metadata ptr %75, metadata !2011, metadata !DIExpression()), !dbg !2811
  %978 = load ptr, ptr %74, align 8
  %979 = load i32, ptr %75, align 4, !dbg !2812
  %980 = sext i32 %979 to i64, !dbg !2813
  %981 = getelementptr inbounds [1 x %struct.sse_f], ptr %978, i64 0, i64 %980, !dbg !2813
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %83, ptr align 4 %981, i64 16, i1 false), !dbg !2807
  %982 = load ptr, ptr %79, align 8, !dbg !2814
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %84, ptr align 4 %982, i64 16, i1 false), !dbg !2814
  %983 = load <2 x float>, ptr %83, align 4, !dbg !2815
  %984 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %83, i32 0, i32 1, !dbg !2815
  %985 = load <2 x float>, ptr %984, align 4, !dbg !2815
  %986 = load <2 x float>, ptr %84, align 4, !dbg !2815
  %987 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %84, i32 0, i32 1, !dbg !2815
  %988 = load <2 x float>, ptr %987, align 4, !dbg !2815
  store <2 x float> %983, ptr %70, align 4
  %989 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %70, i32 0, i32 1
  store <2 x float> %985, ptr %989, align 4
  store <2 x float> %986, ptr %71, align 4
  %990 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %71, i32 0, i32 1
  store <2 x float> %988, ptr %990, align 4
  call void @llvm.dbg.declare(metadata ptr %70, metadata !2096, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.declare(metadata ptr %71, metadata !2100, metadata !DIExpression()), !dbg !2818
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %72, ptr align 4 %70, i64 16, i1 false), !dbg !2819
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %73, ptr align 4 %71, i64 16, i1 false), !dbg !2820
  %991 = load <2 x float>, ptr %72, align 4, !dbg !2821
  %992 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %72, i32 0, i32 1, !dbg !2821
  %993 = load <2 x float>, ptr %992, align 4, !dbg !2821
  %994 = load <2 x float>, ptr %73, align 4, !dbg !2821
  %995 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %73, i32 0, i32 1, !dbg !2821
  %996 = load <2 x float>, ptr %995, align 4, !dbg !2821
  store <2 x float> %991, ptr %66, align 4
  %997 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %66, i32 0, i32 1
  store <2 x float> %993, ptr %997, align 4
  store <2 x float> %994, ptr %67, align 4
  %998 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %67, i32 0, i32 1
  store <2 x float> %996, ptr %998, align 4
  call void @llvm.dbg.declare(metadata ptr %66, metadata !2105, metadata !DIExpression()), !dbg !2822
  call void @llvm.dbg.declare(metadata ptr %67, metadata !2109, metadata !DIExpression()), !dbg !2824
  call void @llvm.dbg.declare(metadata ptr %65, metadata !2111, metadata !DIExpression()), !dbg !2825
  call void @_ZN5sse_fC2Ev(ptr noundef nonnull align 4 dereferenceable(16) %65), !dbg !2825
  call void @llvm.dbg.declare(metadata ptr %68, metadata !2113, metadata !DIExpression()), !dbg !2826
  store i32 0, ptr %68, align 4, !dbg !2826
  br label %999, !dbg !2827

999:                                              ; preds = %1022, %975
  %1000 = load i32, ptr %68, align 4, !dbg !2828
  %1001 = icmp slt i32 %1000, 4, !dbg !2829
  br i1 %1001, label %1002, label %1029, !dbg !2830

1002:                                             ; preds = %999
  %1003 = load i32, ptr %68, align 4, !dbg !2831
  %1004 = sext i32 %1003 to i64, !dbg !2831
  %1005 = getelementptr inbounds [4 x float], ptr %66, i64 0, i64 %1004, !dbg !2831
  %1006 = load float, ptr %1005, align 4, !dbg !2831
  %1007 = load i32, ptr %68, align 4, !dbg !2831
  %1008 = sext i32 %1007 to i64, !dbg !2831
  %1009 = getelementptr inbounds [4 x float], ptr %67, i64 0, i64 %1008, !dbg !2831
  %1010 = load float, ptr %1009, align 4, !dbg !2831
  %1011 = fcmp ogt float %1006, %1010, !dbg !2831
  br i1 %1011, label %1012, label %1017, !dbg !2831

1012:                                             ; preds = %1002
  %1013 = load i32, ptr %68, align 4, !dbg !2831
  %1014 = sext i32 %1013 to i64, !dbg !2831
  %1015 = getelementptr inbounds [4 x float], ptr %66, i64 0, i64 %1014, !dbg !2831
  %1016 = load float, ptr %1015, align 4, !dbg !2831
  br label %1022, !dbg !2831

1017:                                             ; preds = %1002
  %1018 = load i32, ptr %68, align 4, !dbg !2831
  %1019 = sext i32 %1018 to i64, !dbg !2831
  %1020 = getelementptr inbounds [4 x float], ptr %67, i64 0, i64 %1019, !dbg !2831
  %1021 = load float, ptr %1020, align 4, !dbg !2831
  br label %1022, !dbg !2831

1022:                                             ; preds = %1017, %1012
  %1023 = phi float [ %1016, %1012 ], [ %1021, %1017 ], !dbg !2831
  %1024 = load i32, ptr %68, align 4, !dbg !2832
  %1025 = sext i32 %1024 to i64, !dbg !2832
  %1026 = getelementptr inbounds [4 x float], ptr %65, i64 0, i64 %1025, !dbg !2832
  store float %1023, ptr %1026, align 4, !dbg !2833
  %1027 = load i32, ptr %68, align 4, !dbg !2834
  %1028 = add nsw i32 %1027, 1, !dbg !2834
  store i32 %1028, ptr %68, align 4, !dbg !2834
  br label %999, !dbg !2835, !llvm.loop !2836

1029:                                             ; preds = %999
  %1030 = load { <2 x float>, <2 x float> }, ptr %65, align 4, !dbg !2838
  %1031 = extractvalue { <2 x float>, <2 x float> } %1030, 0, !dbg !2821
  store <2 x float> %1031, ptr %69, align 4, !dbg !2821
  %1032 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %69, i32 0, i32 1, !dbg !2821
  %1033 = extractvalue { <2 x float>, <2 x float> } %1030, 1, !dbg !2821
  store <2 x float> %1033, ptr %1032, align 4, !dbg !2821
  %1034 = load { <2 x float>, <2 x float> }, ptr %69, align 4, !dbg !2839
  %1035 = extractvalue { <2 x float>, <2 x float> } %1034, 0, !dbg !2815
  store <2 x float> %1035, ptr %82, align 4, !dbg !2815
  %1036 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %82, i32 0, i32 1, !dbg !2815
  %1037 = extractvalue { <2 x float>, <2 x float> } %1034, 1, !dbg !2815
  store <2 x float> %1037, ptr %1036, align 4, !dbg !2815
  %1038 = load ptr, ptr %80, align 8, !dbg !2840
  %1039 = load i32, ptr %81, align 4, !dbg !2841
  store ptr %1038, ptr %76, align 8
  call void @llvm.dbg.declare(metadata ptr %76, metadata !2006, metadata !DIExpression()), !dbg !2842
  store i32 %1039, ptr %77, align 4
  call void @llvm.dbg.declare(metadata ptr %77, metadata !2011, metadata !DIExpression()), !dbg !2844
  %1040 = load ptr, ptr %76, align 8
  %1041 = load i32, ptr %77, align 4, !dbg !2845
  %1042 = sext i32 %1041 to i64, !dbg !2846
  %1043 = getelementptr inbounds [1 x %struct.sse_f], ptr %1040, i64 0, i64 %1042, !dbg !2846
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1043, ptr align 4 %82, i64 16, i1 false), !dbg !2847
  %1044 = load i32, ptr %81, align 4, !dbg !2848
  %1045 = add nsw i32 %1044, 1, !dbg !2848
  store i32 %1045, ptr %81, align 4, !dbg !2848
  br label %972, !dbg !2849, !llvm.loop !2850

1046:                                             ; preds = %972
  br label %1047, !dbg !2852

1047:                                             ; preds = %1046
  %1048 = load i32, ptr %673, align 4, !dbg !2853
  %1049 = add nsw i32 %1048, 1, !dbg !2853
  store i32 %1049, ptr %673, align 4, !dbg !2853
  br label %869, !dbg !2854, !llvm.loop !2855

1050:                                             ; preds = %869
  call void @llvm.dbg.declare(metadata ptr %675, metadata !2857, metadata !DIExpression()), !dbg !2858
  %1051 = load i32, ptr %670, align 4, !dbg !2859
  %1052 = sitofp i32 %1051 to float, !dbg !2859
  %1053 = call float @sqrtf(float noundef %1052) #3, !dbg !2860
  %1054 = fptosi float %1053 to i32, !dbg !2860
  %1055 = mul nsw i32 2, %1054, !dbg !2861
  %1056 = add nsw i32 2, %1055, !dbg !2862
  store i32 %1056, ptr %676, align 4, !dbg !2863
  %1057 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3minIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) @_ZN4RTTLL7maxBinsE, ptr noundef nonnull align 4 dereferenceable(4) %676), !dbg !2864
  %1058 = load i32, ptr %1057, align 4, !dbg !2864
  store i32 %1058, ptr %675, align 4, !dbg !2858
  call void @llvm.dbg.declare(metadata ptr %677, metadata !2865, metadata !DIExpression()), !dbg !2866
  store ptr %671, ptr %627, align 8
  call void @llvm.dbg.declare(metadata ptr %627, metadata !2229, metadata !DIExpression()), !dbg !2867
  %1059 = load ptr, ptr %627, align 8
  store ptr %1059, ptr %546, align 8
  call void @llvm.dbg.declare(metadata ptr %546, metadata !2234, metadata !DIExpression()), !dbg !2869
  %1060 = load ptr, ptr %546, align 8
  %1061 = getelementptr inbounds %"class.RTTL::RTBox_t", ptr %1060, i32 0, i32 1, !dbg !2871
  store ptr %1061, ptr %543, align 8
  call void @llvm.dbg.declare(metadata ptr %543, metadata !2240, metadata !DIExpression()), !dbg !2872
  store ptr %1060, ptr %544, align 8
  call void @llvm.dbg.declare(metadata ptr %544, metadata !2248, metadata !DIExpression()), !dbg !2874
  call void @llvm.dbg.declare(metadata ptr %542, metadata !2250, metadata !DIExpression()), !dbg !2875
  call void @_ZN4RTTL7RTVec_tILi1E5sse_fLi0EEC2Ev(ptr noundef nonnull align 4 dereferenceable(16) %542), !dbg !2875
  %1062 = call noundef nonnull align 4 dereferenceable(16) ptr @_ZN4RTTL7RTVec_tILi1E5sse_fLi0EE5arrayEv(ptr noundef nonnull align 4 dereferenceable(16) %542), !dbg !2876
  %1063 = load ptr, ptr %543, align 8, !dbg !2877
  %1064 = call noundef nonnull align 4 dereferenceable(16) ptr @_ZNK4RTTL7RTVec_tILi1E5sse_fLi0EE5arrayEv(ptr noundef nonnull align 4 dereferenceable(16) %1063), !dbg !2878
  %1065 = load ptr, ptr %544, align 8, !dbg !2879
  %1066 = call noundef nonnull align 4 dereferenceable(16) ptr @_ZNK4RTTL7RTVec_tILi1E5sse_fLi0EE5arrayEv(ptr noundef nonnull align 4 dereferenceable(16) %1065), !dbg !2880
  store ptr %1062, ptr %535, align 8
  call void @llvm.dbg.declare(metadata ptr %535, metadata !2257, metadata !DIExpression()), !dbg !2881
  store ptr %1064, ptr %536, align 8
  call void @llvm.dbg.declare(metadata ptr %536, metadata !2261, metadata !DIExpression()), !dbg !2883
  store ptr %1066, ptr %537, align 8
  call void @llvm.dbg.declare(metadata ptr %537, metadata !2263, metadata !DIExpression()), !dbg !2884
  %1067 = load ptr, ptr %535, align 8
  call void @llvm.dbg.declare(metadata ptr %538, metadata !2265, metadata !DIExpression()), !dbg !2885
  store i32 0, ptr %538, align 4, !dbg !2885
  br label %1068, !dbg !2886

1068:                                             ; preds = %1114, %1050
  %1069 = load i32, ptr %538, align 4, !dbg !2887
  %1070 = icmp slt i32 %1069, 1, !dbg !2888
  br i1 %1070, label %1071, label %1128, !dbg !2889

1071:                                             ; preds = %1068
  %1072 = load ptr, ptr %536, align 8, !dbg !2890
  %1073 = load i32, ptr %538, align 4, !dbg !2891
  %1074 = sext i32 %1073 to i64, !dbg !2890
  %1075 = getelementptr inbounds [1 x %struct.sse_f], ptr %1072, i64 0, i64 %1074, !dbg !2890
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %540, ptr align 4 %1075, i64 16, i1 false), !dbg !2890
  %1076 = load ptr, ptr %537, align 8, !dbg !2892
  %1077 = load i32, ptr %538, align 4, !dbg !2893
  %1078 = sext i32 %1077 to i64, !dbg !2892
  %1079 = getelementptr inbounds [1 x %struct.sse_f], ptr %1076, i64 0, i64 %1078, !dbg !2892
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %541, ptr align 4 %1079, i64 16, i1 false), !dbg !2892
  %1080 = load <2 x float>, ptr %540, align 4, !dbg !2894
  %1081 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %540, i32 0, i32 1, !dbg !2894
  %1082 = load <2 x float>, ptr %1081, align 4, !dbg !2894
  %1083 = load <2 x float>, ptr %541, align 4, !dbg !2894
  %1084 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %541, i32 0, i32 1, !dbg !2894
  %1085 = load <2 x float>, ptr %1084, align 4, !dbg !2894
  store <2 x float> %1080, ptr %531, align 4
  %1086 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %531, i32 0, i32 1
  store <2 x float> %1082, ptr %1086, align 4
  store <2 x float> %1083, ptr %532, align 4
  %1087 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %532, i32 0, i32 1
  store <2 x float> %1085, ptr %1087, align 4
  call void @llvm.dbg.declare(metadata ptr %531, metadata !2278, metadata !DIExpression()), !dbg !2895
  call void @llvm.dbg.declare(metadata ptr %532, metadata !2282, metadata !DIExpression()), !dbg !2897
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %533, ptr align 4 %531, i64 16, i1 false), !dbg !2898
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %534, ptr align 4 %532, i64 16, i1 false), !dbg !2899
  %1088 = load <2 x float>, ptr %533, align 4, !dbg !2900
  %1089 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %533, i32 0, i32 1, !dbg !2900
  %1090 = load <2 x float>, ptr %1089, align 4, !dbg !2900
  %1091 = load <2 x float>, ptr %534, align 4, !dbg !2900
  %1092 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %534, i32 0, i32 1, !dbg !2900
  %1093 = load <2 x float>, ptr %1092, align 4, !dbg !2900
  store <2 x float> %1088, ptr %518, align 4
  %1094 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %518, i32 0, i32 1
  store <2 x float> %1090, ptr %1094, align 4
  store <2 x float> %1091, ptr %519, align 4
  %1095 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %519, i32 0, i32 1
  store <2 x float> %1093, ptr %1095, align 4
  call void @llvm.dbg.declare(metadata ptr %518, metadata !2287, metadata !DIExpression()), !dbg !2901
  call void @llvm.dbg.declare(metadata ptr %519, metadata !2291, metadata !DIExpression()), !dbg !2903
  call void @llvm.dbg.declare(metadata ptr %517, metadata !2293, metadata !DIExpression()), !dbg !2904
  call void @_ZN5sse_fC2Ev(ptr noundef nonnull align 4 dereferenceable(16) %517), !dbg !2904
  call void @llvm.dbg.declare(metadata ptr %520, metadata !2295, metadata !DIExpression()), !dbg !2905
  store i32 0, ptr %520, align 4, !dbg !2905
  br label %1096, !dbg !2906

1096:                                             ; preds = %1099, %1071
  %1097 = load i32, ptr %520, align 4, !dbg !2907
  %1098 = icmp slt i32 %1097, 4, !dbg !2908
  br i1 %1098, label %1099, label %1114, !dbg !2909

1099:                                             ; preds = %1096
  %1100 = load i32, ptr %520, align 4, !dbg !2910
  %1101 = sext i32 %1100 to i64, !dbg !2911
  %1102 = getelementptr inbounds [4 x float], ptr %518, i64 0, i64 %1101, !dbg !2911
  %1103 = load float, ptr %1102, align 4, !dbg !2911
  %1104 = load i32, ptr %520, align 4, !dbg !2912
  %1105 = sext i32 %1104 to i64, !dbg !2913
  %1106 = getelementptr inbounds [4 x float], ptr %519, i64 0, i64 %1105, !dbg !2913
  %1107 = load float, ptr %1106, align 4, !dbg !2913
  %1108 = fsub float %1103, %1107, !dbg !2914
  %1109 = load i32, ptr %520, align 4, !dbg !2915
  %1110 = sext i32 %1109 to i64, !dbg !2916
  %1111 = getelementptr inbounds [4 x float], ptr %517, i64 0, i64 %1110, !dbg !2916
  store float %1108, ptr %1111, align 4, !dbg !2917
  %1112 = load i32, ptr %520, align 4, !dbg !2918
  %1113 = add nsw i32 %1112, 1, !dbg !2918
  store i32 %1113, ptr %520, align 4, !dbg !2918
  br label %1096, !dbg !2919, !llvm.loop !2920

1114:                                             ; preds = %1096
  %1115 = load { <2 x float>, <2 x float> }, ptr %517, align 4, !dbg !2922
  %1116 = extractvalue { <2 x float>, <2 x float> } %1115, 0, !dbg !2900
  store <2 x float> %1116, ptr %530, align 4, !dbg !2900
  %1117 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %530, i32 0, i32 1, !dbg !2900
  %1118 = extractvalue { <2 x float>, <2 x float> } %1115, 1, !dbg !2900
  store <2 x float> %1118, ptr %1117, align 4, !dbg !2900
  %1119 = load { <2 x float>, <2 x float> }, ptr %530, align 4, !dbg !2923
  %1120 = extractvalue { <2 x float>, <2 x float> } %1119, 0, !dbg !2894
  store <2 x float> %1120, ptr %539, align 4, !dbg !2894
  %1121 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %539, i32 0, i32 1, !dbg !2894
  %1122 = extractvalue { <2 x float>, <2 x float> } %1119, 1, !dbg !2894
  store <2 x float> %1122, ptr %1121, align 4, !dbg !2894
  %1123 = load i32, ptr %538, align 4, !dbg !2924
  %1124 = sext i32 %1123 to i64, !dbg !2925
  %1125 = getelementptr inbounds [1 x %struct.sse_f], ptr %1067, i64 0, i64 %1124, !dbg !2925
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1125, ptr align 4 %539, i64 16, i1 false), !dbg !2926
  %1126 = load i32, ptr %538, align 4, !dbg !2927
  %1127 = add nsw i32 %1126, 1, !dbg !2927
  store i32 %1127, ptr %538, align 4, !dbg !2927
  br label %1068, !dbg !2928, !llvm.loop !2929

1128:                                             ; preds = %1068
  %1129 = load { <2 x float>, <2 x float> }, ptr %542, align 4, !dbg !2931
  %1130 = extractvalue { <2 x float>, <2 x float> } %1129, 0, !dbg !2932
  store <2 x float> %1130, ptr %545, align 4, !dbg !2932
  %1131 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %545, i32 0, i32 1, !dbg !2932
  %1132 = extractvalue { <2 x float>, <2 x float> } %1129, 1, !dbg !2932
  store <2 x float> %1132, ptr %1131, align 4, !dbg !2932
  %1133 = load { <2 x float>, <2 x float> }, ptr %545, align 4, !dbg !2933
  %1134 = extractvalue { <2 x float>, <2 x float> } %1133, 0, !dbg !2934
  store <2 x float> %1134, ptr %628, align 4, !dbg !2934
  %1135 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %628, i32 0, i32 1, !dbg !2934
  %1136 = extractvalue { <2 x float>, <2 x float> } %1133, 1, !dbg !2934
  store <2 x float> %1136, ptr %1135, align 4, !dbg !2934
  %1137 = call noundef ptr @_ZN4RTTL7RTVec_tILi1E5sse_fLi0EEcvPS1_Ev(ptr noundef nonnull align 4 dereferenceable(16) %628), !dbg !2935
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %626, ptr align 4 %1137, i64 16, i1 false), !dbg !2936
  %1138 = load { <2 x float>, <2 x float> }, ptr %626, align 4, !dbg !2937
  %1139 = getelementptr inbounds %struct.sse_f, ptr %677, i32 0, i32 0, !dbg !2938
  %1140 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %1139, i32 0, i32 0, !dbg !2938
  %1141 = extractvalue { <2 x float>, <2 x float> } %1138, 0, !dbg !2938
  store <2 x float> %1141, ptr %1140, align 4, !dbg !2938
  %1142 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %1139, i32 0, i32 1, !dbg !2938
  %1143 = extractvalue { <2 x float>, <2 x float> } %1138, 1, !dbg !2938
  store <2 x float> %1143, ptr %1142, align 4, !dbg !2938
  call void @llvm.dbg.declare(metadata ptr %678, metadata !2939, metadata !DIExpression()), !dbg !2940
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %681, ptr align 4 %677, i64 16, i1 false), !dbg !2941
  call void @llvm.dbg.declare(metadata ptr %604, metadata !2942, metadata !DIExpression()), !dbg !2946
  call void @_ZN5sse_fC2Ev(ptr noundef nonnull align 4 dereferenceable(16) %604), !dbg !2946
  call void @llvm.dbg.declare(metadata ptr %605, metadata !2948, metadata !DIExpression()), !dbg !2950
  store i32 0, ptr %605, align 4, !dbg !2950
  br label %1144, !dbg !2951

1144:                                             ; preds = %1147, %1128
  %1145 = load i32, ptr %605, align 4, !dbg !2952
  %1146 = icmp slt i32 %1145, 4, !dbg !2954
  br i1 %1146, label %1147, label %1153, !dbg !2955

1147:                                             ; preds = %1144
  %1148 = load i32, ptr %605, align 4, !dbg !2956
  %1149 = sext i32 %1148 to i64, !dbg !2957
  %1150 = getelementptr inbounds [4 x float], ptr %604, i64 0, i64 %1149, !dbg !2957
  store float 0.000000e+00, ptr %1150, align 4, !dbg !2958
  %1151 = load i32, ptr %605, align 4, !dbg !2959
  %1152 = add nsw i32 %1151, 1, !dbg !2959
  store i32 %1152, ptr %605, align 4, !dbg !2959
  br label %1144, !dbg !2960, !llvm.loop !2961

1153:                                             ; preds = %1144
  %1154 = load { <2 x float>, <2 x float> }, ptr %604, align 4, !dbg !2963
  %1155 = getelementptr inbounds %struct.sse_f, ptr %682, i32 0, i32 0, !dbg !2941
  %1156 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %1155, i32 0, i32 0, !dbg !2941
  %1157 = extractvalue { <2 x float>, <2 x float> } %1154, 0, !dbg !2941
  store <2 x float> %1157, ptr %1156, align 4, !dbg !2941
  %1158 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %1155, i32 0, i32 1, !dbg !2941
  %1159 = extractvalue { <2 x float>, <2 x float> } %1154, 1, !dbg !2941
  store <2 x float> %1159, ptr %1158, align 4, !dbg !2941
  %1160 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %681, i32 0, i32 0, !dbg !2941
  %1161 = load <2 x float>, ptr %1160, align 4, !dbg !2941
  %1162 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %681, i32 0, i32 1, !dbg !2941
  %1163 = load <2 x float>, ptr %1162, align 4, !dbg !2941
  %1164 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %682, i32 0, i32 0, !dbg !2941
  %1165 = load <2 x float>, ptr %1164, align 4, !dbg !2941
  %1166 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %682, i32 0, i32 1, !dbg !2941
  %1167 = load <2 x float>, ptr %1166, align 4, !dbg !2941
  store <2 x float> %1161, ptr %611, align 4
  %1168 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %611, i32 0, i32 1
  store <2 x float> %1163, ptr %1168, align 4
  store <2 x float> %1165, ptr %612, align 4
  %1169 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %612, i32 0, i32 1
  store <2 x float> %1167, ptr %1169, align 4
  call void @llvm.dbg.declare(metadata ptr %611, metadata !2964, metadata !DIExpression()), !dbg !2966
  call void @llvm.dbg.declare(metadata ptr %612, metadata !2968, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.declare(metadata ptr %610, metadata !2970, metadata !DIExpression()), !dbg !2971
  call void @_ZN5sse_fC2Ev(ptr noundef nonnull align 4 dereferenceable(16) %610), !dbg !2971
  call void @llvm.dbg.declare(metadata ptr %613, metadata !2972, metadata !DIExpression()), !dbg !2974
  store i32 0, ptr %613, align 4, !dbg !2974
  br label %1170, !dbg !2975

1170:                                             ; preds = %1173, %1153
  %1171 = load i32, ptr %613, align 4, !dbg !2976
  %1172 = icmp slt i32 %1171, 4, !dbg !2978
  br i1 %1172, label %1173, label %1191, !dbg !2979

1173:                                             ; preds = %1170
  %1174 = load i32, ptr %613, align 4, !dbg !2980
  %1175 = sext i32 %1174 to i64, !dbg !2980
  %1176 = getelementptr inbounds [4 x float], ptr %611, i64 0, i64 %1175, !dbg !2980
  %1177 = load float, ptr %1176, align 4, !dbg !2980
  %1178 = load i32, ptr %613, align 4, !dbg !2981
  %1179 = sext i32 %1178 to i64, !dbg !2981
  %1180 = getelementptr inbounds [4 x float], ptr %612, i64 0, i64 %1179, !dbg !2981
  %1181 = load float, ptr %1180, align 4, !dbg !2981
  %1182 = fcmp oeq float %1177, %1181, !dbg !2982
  %1183 = xor i1 %1182, true, !dbg !2983
  %1184 = zext i1 %1183 to i64, !dbg !2984
  %1185 = select i1 %1183, i32 -1, i32 0, !dbg !2984
  %1186 = load i32, ptr %613, align 4, !dbg !2985
  %1187 = sext i32 %1186 to i64, !dbg !2985
  %1188 = getelementptr inbounds [4 x float], ptr %610, i64 0, i64 %1187, !dbg !2985
  store i32 %1185, ptr %1188, align 4, !dbg !2986
  %1189 = load i32, ptr %613, align 4, !dbg !2987
  %1190 = add nsw i32 %1189, 1, !dbg !2987
  store i32 %1190, ptr %613, align 4, !dbg !2987
  br label %1170, !dbg !2988, !llvm.loop !2989

1191:                                             ; preds = %1170
  %1192 = load { <2 x float>, <2 x float> }, ptr %610, align 4, !dbg !2991
  %1193 = getelementptr inbounds %struct.sse_f, ptr %680, i32 0, i32 0, !dbg !2941
  %1194 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %1193, i32 0, i32 0, !dbg !2941
  %1195 = extractvalue { <2 x float>, <2 x float> } %1192, 0, !dbg !2941
  store <2 x float> %1195, ptr %1194, align 4, !dbg !2941
  %1196 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %1193, i32 0, i32 1, !dbg !2941
  %1197 = extractvalue { <2 x float>, <2 x float> } %1192, 1, !dbg !2941
  store <2 x float> %1197, ptr %1196, align 4, !dbg !2941
  %1198 = load i32, ptr %675, align 4, !dbg !2941
  %1199 = sitofp i32 %1198 to float, !dbg !2941
  %1200 = fmul float %1199, 0x3FEFF7CEE0000000, !dbg !2941
  store float %1200, ptr %661, align 4
  call void @llvm.dbg.declare(metadata ptr %661, metadata !1886, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.declare(metadata ptr %660, metadata !1893, metadata !DIExpression()), !dbg !2994
  call void @_ZN5sse_fC2Ev(ptr noundef nonnull align 4 dereferenceable(16) %660), !dbg !2994
  call void @llvm.dbg.declare(metadata ptr %662, metadata !1895, metadata !DIExpression()), !dbg !2995
  store i32 0, ptr %662, align 4, !dbg !2995
  br label %1201, !dbg !2996

1201:                                             ; preds = %1204, %1191
  %1202 = load i32, ptr %662, align 4, !dbg !2997
  %1203 = icmp slt i32 %1202, 4, !dbg !2998
  br i1 %1203, label %1204, label %1211, !dbg !2999

1204:                                             ; preds = %1201
  %1205 = load float, ptr %661, align 4, !dbg !3000
  %1206 = load i32, ptr %662, align 4, !dbg !3001
  %1207 = sext i32 %1206 to i64, !dbg !3002
  %1208 = getelementptr inbounds [4 x float], ptr %660, i64 0, i64 %1207, !dbg !3002
  store float %1205, ptr %1208, align 4, !dbg !3003
  %1209 = load i32, ptr %662, align 4, !dbg !3004
  %1210 = add nsw i32 %1209, 1, !dbg !3004
  store i32 %1210, ptr %662, align 4, !dbg !3004
  br label %1201, !dbg !3005, !llvm.loop !3006

1211:                                             ; preds = %1201
  %1212 = load { <2 x float>, <2 x float> }, ptr %660, align 4, !dbg !3008
  %1213 = getelementptr inbounds %struct.sse_f, ptr %684, i32 0, i32 0, !dbg !2941
  %1214 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %1213, i32 0, i32 0, !dbg !2941
  %1215 = extractvalue { <2 x float>, <2 x float> } %1212, 0, !dbg !2941
  store <2 x float> %1215, ptr %1214, align 4, !dbg !2941
  %1216 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %1213, i32 0, i32 1, !dbg !2941
  %1217 = extractvalue { <2 x float>, <2 x float> } %1212, 1, !dbg !2941
  store <2 x float> %1217, ptr %1216, align 4, !dbg !2941
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %685, ptr align 4 %677, i64 16, i1 false), !dbg !2941
  %1218 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %684, i32 0, i32 0, !dbg !2941
  %1219 = load <2 x float>, ptr %1218, align 4, !dbg !2941
  %1220 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %684, i32 0, i32 1, !dbg !2941
  %1221 = load <2 x float>, ptr %1220, align 4, !dbg !2941
  %1222 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %685, i32 0, i32 0, !dbg !2941
  %1223 = load <2 x float>, ptr %1222, align 4, !dbg !2941
  %1224 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %685, i32 0, i32 1, !dbg !2941
  %1225 = load <2 x float>, ptr %1224, align 4, !dbg !2941
  store <2 x float> %1219, ptr %601, align 4
  %1226 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %601, i32 0, i32 1
  store <2 x float> %1221, ptr %1226, align 4
  store <2 x float> %1223, ptr %602, align 4
  %1227 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %602, i32 0, i32 1
  store <2 x float> %1225, ptr %1227, align 4
  call void @llvm.dbg.declare(metadata ptr %601, metadata !3009, metadata !DIExpression()), !dbg !3011
  call void @llvm.dbg.declare(metadata ptr %602, metadata !3013, metadata !DIExpression()), !dbg !3014
  call void @llvm.dbg.declare(metadata ptr %600, metadata !3015, metadata !DIExpression()), !dbg !3016
  call void @_ZN5sse_fC2Ev(ptr noundef nonnull align 4 dereferenceable(16) %600), !dbg !3016
  call void @llvm.dbg.declare(metadata ptr %603, metadata !3017, metadata !DIExpression()), !dbg !3019
  store i32 0, ptr %603, align 4, !dbg !3019
  br label %1228, !dbg !3020

1228:                                             ; preds = %1231, %1211
  %1229 = load i32, ptr %603, align 4, !dbg !3021
  %1230 = icmp slt i32 %1229, 4, !dbg !3023
  br i1 %1230, label %1231, label %1246, !dbg !3024

1231:                                             ; preds = %1228
  %1232 = load i32, ptr %603, align 4, !dbg !3025
  %1233 = sext i32 %1232 to i64, !dbg !3025
  %1234 = getelementptr inbounds [4 x float], ptr %601, i64 0, i64 %1233, !dbg !3025
  %1235 = load float, ptr %1234, align 4, !dbg !3025
  %1236 = load i32, ptr %603, align 4, !dbg !3026
  %1237 = sext i32 %1236 to i64, !dbg !3026
  %1238 = getelementptr inbounds [4 x float], ptr %602, i64 0, i64 %1237, !dbg !3026
  %1239 = load float, ptr %1238, align 4, !dbg !3026
  %1240 = fdiv float %1235, %1239, !dbg !3027
  %1241 = load i32, ptr %603, align 4, !dbg !3028
  %1242 = sext i32 %1241 to i64, !dbg !3028
  %1243 = getelementptr inbounds [4 x float], ptr %600, i64 0, i64 %1242, !dbg !3028
  store float %1240, ptr %1243, align 4, !dbg !3029
  %1244 = load i32, ptr %603, align 4, !dbg !3030
  %1245 = add nsw i32 %1244, 1, !dbg !3030
  store i32 %1245, ptr %603, align 4, !dbg !3030
  br label %1228, !dbg !3031, !llvm.loop !3032

1246:                                             ; preds = %1228
  %1247 = load { <2 x float>, <2 x float> }, ptr %600, align 4, !dbg !3034
  %1248 = getelementptr inbounds %struct.sse_f, ptr %683, i32 0, i32 0, !dbg !2941
  %1249 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %1248, i32 0, i32 0, !dbg !2941
  %1250 = extractvalue { <2 x float>, <2 x float> } %1247, 0, !dbg !2941
  store <2 x float> %1250, ptr %1249, align 4, !dbg !2941
  %1251 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %1248, i32 0, i32 1, !dbg !2941
  %1252 = extractvalue { <2 x float>, <2 x float> } %1247, 1, !dbg !2941
  store <2 x float> %1252, ptr %1251, align 4, !dbg !2941
  %1253 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %680, i32 0, i32 0, !dbg !2941
  %1254 = load <2 x float>, ptr %1253, align 4, !dbg !2941
  %1255 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %680, i32 0, i32 1, !dbg !2941
  %1256 = load <2 x float>, ptr %1255, align 4, !dbg !2941
  %1257 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %683, i32 0, i32 0, !dbg !2941
  %1258 = load <2 x float>, ptr %1257, align 4, !dbg !2941
  %1259 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %683, i32 0, i32 1, !dbg !2941
  %1260 = load <2 x float>, ptr %1259, align 4, !dbg !2941
  store <2 x float> %1254, ptr %619, align 4
  %1261 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %619, i32 0, i32 1
  store <2 x float> %1256, ptr %1261, align 4
  store <2 x float> %1258, ptr %620, align 4
  %1262 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %620, i32 0, i32 1
  store <2 x float> %1260, ptr %1262, align 4
  call void @llvm.dbg.declare(metadata ptr %619, metadata !3035, metadata !DIExpression()), !dbg !3037
  call void @llvm.dbg.declare(metadata ptr %620, metadata !3039, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.declare(metadata ptr %618, metadata !3041, metadata !DIExpression()), !dbg !3042
  call void @_ZN5sse_fC2Ev(ptr noundef nonnull align 4 dereferenceable(16) %618), !dbg !3042
  call void @llvm.dbg.declare(metadata ptr %621, metadata !3043, metadata !DIExpression()), !dbg !3045
  store i32 0, ptr %621, align 4, !dbg !3045
  br label %1263, !dbg !3046

1263:                                             ; preds = %1266, %1246
  %1264 = load i32, ptr %621, align 4, !dbg !3047
  %1265 = icmp slt i32 %1264, 4, !dbg !3049
  br i1 %1265, label %1266, label %1281, !dbg !3050

1266:                                             ; preds = %1263
  %1267 = load i32, ptr %621, align 4, !dbg !3051
  %1268 = sext i32 %1267 to i64, !dbg !3051
  %1269 = getelementptr inbounds [4 x float], ptr %619, i64 0, i64 %1268, !dbg !3051
  %1270 = load i32, ptr %1269, align 4, !dbg !3051
  %1271 = load i32, ptr %621, align 4, !dbg !3052
  %1272 = sext i32 %1271 to i64, !dbg !3052
  %1273 = getelementptr inbounds [4 x float], ptr %620, i64 0, i64 %1272, !dbg !3052
  %1274 = load i32, ptr %1273, align 4, !dbg !3052
  %1275 = and i32 %1270, %1274, !dbg !3053
  %1276 = load i32, ptr %621, align 4, !dbg !3054
  %1277 = sext i32 %1276 to i64, !dbg !3054
  %1278 = getelementptr inbounds [4 x float], ptr %618, i64 0, i64 %1277, !dbg !3054
  store i32 %1275, ptr %1278, align 4, !dbg !3055
  %1279 = load i32, ptr %621, align 4, !dbg !3056
  %1280 = add nsw i32 %1279, 1, !dbg !3056
  store i32 %1280, ptr %621, align 4, !dbg !3056
  br label %1263, !dbg !3057, !llvm.loop !3058

1281:                                             ; preds = %1263
  %1282 = load { <2 x float>, <2 x float> }, ptr %618, align 4, !dbg !3060
  %1283 = getelementptr inbounds %struct.sse_f, ptr %679, i32 0, i32 0, !dbg !2941
  %1284 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %1283, i32 0, i32 0, !dbg !2941
  %1285 = extractvalue { <2 x float>, <2 x float> } %1282, 0, !dbg !2941
  store <2 x float> %1285, ptr %1284, align 4, !dbg !2941
  %1286 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %1283, i32 0, i32 1, !dbg !2941
  %1287 = extractvalue { <2 x float>, <2 x float> } %1282, 1, !dbg !2941
  store <2 x float> %1287, ptr %1286, align 4, !dbg !2941
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %688, ptr align 4 %677, i64 16, i1 false), !dbg !2941
  call void @llvm.dbg.declare(metadata ptr %606, metadata !2942, metadata !DIExpression()), !dbg !3061
  call void @_ZN5sse_fC2Ev(ptr noundef nonnull align 4 dereferenceable(16) %606), !dbg !3061
  call void @llvm.dbg.declare(metadata ptr %607, metadata !2948, metadata !DIExpression()), !dbg !3063
  store i32 0, ptr %607, align 4, !dbg !3063
  br label %1288, !dbg !3064

1288:                                             ; preds = %1291, %1281
  %1289 = load i32, ptr %607, align 4, !dbg !3065
  %1290 = icmp slt i32 %1289, 4, !dbg !3066
  br i1 %1290, label %1291, label %1297, !dbg !3067

1291:                                             ; preds = %1288
  %1292 = load i32, ptr %607, align 4, !dbg !3068
  %1293 = sext i32 %1292 to i64, !dbg !3069
  %1294 = getelementptr inbounds [4 x float], ptr %606, i64 0, i64 %1293, !dbg !3069
  store float 0.000000e+00, ptr %1294, align 4, !dbg !3070
  %1295 = load i32, ptr %607, align 4, !dbg !3071
  %1296 = add nsw i32 %1295, 1, !dbg !3071
  store i32 %1296, ptr %607, align 4, !dbg !3071
  br label %1288, !dbg !3072, !llvm.loop !3073

1297:                                             ; preds = %1288
  %1298 = load { <2 x float>, <2 x float> }, ptr %606, align 4, !dbg !3075
  %1299 = getelementptr inbounds %struct.sse_f, ptr %689, i32 0, i32 0, !dbg !2941
  %1300 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %1299, i32 0, i32 0, !dbg !2941
  %1301 = extractvalue { <2 x float>, <2 x float> } %1298, 0, !dbg !2941
  store <2 x float> %1301, ptr %1300, align 4, !dbg !2941
  %1302 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %1299, i32 0, i32 1, !dbg !2941
  %1303 = extractvalue { <2 x float>, <2 x float> } %1298, 1, !dbg !2941
  store <2 x float> %1303, ptr %1302, align 4, !dbg !2941
  %1304 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %688, i32 0, i32 0, !dbg !2941
  %1305 = load <2 x float>, ptr %1304, align 4, !dbg !2941
  %1306 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %688, i32 0, i32 1, !dbg !2941
  %1307 = load <2 x float>, ptr %1306, align 4, !dbg !2941
  %1308 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %689, i32 0, i32 0, !dbg !2941
  %1309 = load <2 x float>, ptr %1308, align 4, !dbg !2941
  %1310 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %689, i32 0, i32 1, !dbg !2941
  %1311 = load <2 x float>, ptr %1310, align 4, !dbg !2941
  store <2 x float> %1305, ptr %615, align 4
  %1312 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %615, i32 0, i32 1
  store <2 x float> %1307, ptr %1312, align 4
  store <2 x float> %1309, ptr %616, align 4
  %1313 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %616, i32 0, i32 1
  store <2 x float> %1311, ptr %1313, align 4
  call void @llvm.dbg.declare(metadata ptr %615, metadata !2964, metadata !DIExpression()), !dbg !3076
  call void @llvm.dbg.declare(metadata ptr %616, metadata !2968, metadata !DIExpression()), !dbg !3078
  call void @llvm.dbg.declare(metadata ptr %614, metadata !2970, metadata !DIExpression()), !dbg !3079
  call void @_ZN5sse_fC2Ev(ptr noundef nonnull align 4 dereferenceable(16) %614), !dbg !3079
  call void @llvm.dbg.declare(metadata ptr %617, metadata !2972, metadata !DIExpression()), !dbg !3080
  store i32 0, ptr %617, align 4, !dbg !3080
  br label %1314, !dbg !3081

1314:                                             ; preds = %1317, %1297
  %1315 = load i32, ptr %617, align 4, !dbg !3082
  %1316 = icmp slt i32 %1315, 4, !dbg !3083
  br i1 %1316, label %1317, label %1335, !dbg !3084

1317:                                             ; preds = %1314
  %1318 = load i32, ptr %617, align 4, !dbg !3085
  %1319 = sext i32 %1318 to i64, !dbg !3085
  %1320 = getelementptr inbounds [4 x float], ptr %615, i64 0, i64 %1319, !dbg !3085
  %1321 = load float, ptr %1320, align 4, !dbg !3085
  %1322 = load i32, ptr %617, align 4, !dbg !3086
  %1323 = sext i32 %1322 to i64, !dbg !3086
  %1324 = getelementptr inbounds [4 x float], ptr %616, i64 0, i64 %1323, !dbg !3086
  %1325 = load float, ptr %1324, align 4, !dbg !3086
  %1326 = fcmp oeq float %1321, %1325, !dbg !3087
  %1327 = xor i1 %1326, true, !dbg !3088
  %1328 = zext i1 %1327 to i64, !dbg !3089
  %1329 = select i1 %1327, i32 -1, i32 0, !dbg !3089
  %1330 = load i32, ptr %617, align 4, !dbg !3090
  %1331 = sext i32 %1330 to i64, !dbg !3090
  %1332 = getelementptr inbounds [4 x float], ptr %614, i64 0, i64 %1331, !dbg !3090
  store i32 %1329, ptr %1332, align 4, !dbg !3091
  %1333 = load i32, ptr %617, align 4, !dbg !3092
  %1334 = add nsw i32 %1333, 1, !dbg !3092
  store i32 %1334, ptr %617, align 4, !dbg !3092
  br label %1314, !dbg !3093, !llvm.loop !3094

1335:                                             ; preds = %1314
  %1336 = load { <2 x float>, <2 x float> }, ptr %614, align 4, !dbg !3096
  %1337 = getelementptr inbounds %struct.sse_f, ptr %687, i32 0, i32 0, !dbg !2941
  %1338 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %1337, i32 0, i32 0, !dbg !2941
  %1339 = extractvalue { <2 x float>, <2 x float> } %1336, 0, !dbg !2941
  store <2 x float> %1339, ptr %1338, align 4, !dbg !2941
  %1340 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %1337, i32 0, i32 1, !dbg !2941
  %1341 = extractvalue { <2 x float>, <2 x float> } %1336, 1, !dbg !2941
  store <2 x float> %1341, ptr %1340, align 4, !dbg !2941
  call void @llvm.dbg.declare(metadata ptr %608, metadata !2942, metadata !DIExpression()), !dbg !3097
  call void @_ZN5sse_fC2Ev(ptr noundef nonnull align 4 dereferenceable(16) %608), !dbg !3097
  call void @llvm.dbg.declare(metadata ptr %609, metadata !2948, metadata !DIExpression()), !dbg !3099
  store i32 0, ptr %609, align 4, !dbg !3099
  br label %1342, !dbg !3100

1342:                                             ; preds = %1345, %1335
  %1343 = load i32, ptr %609, align 4, !dbg !3101
  %1344 = icmp slt i32 %1343, 4, !dbg !3102
  br i1 %1344, label %1345, label %1351, !dbg !3103

1345:                                             ; preds = %1342
  %1346 = load i32, ptr %609, align 4, !dbg !3104
  %1347 = sext i32 %1346 to i64, !dbg !3105
  %1348 = getelementptr inbounds [4 x float], ptr %608, i64 0, i64 %1347, !dbg !3105
  store float 0.000000e+00, ptr %1348, align 4, !dbg !3106
  %1349 = load i32, ptr %609, align 4, !dbg !3107
  %1350 = add nsw i32 %1349, 1, !dbg !3107
  store i32 %1350, ptr %609, align 4, !dbg !3107
  br label %1342, !dbg !3108, !llvm.loop !3109

1351:                                             ; preds = %1342
  %1352 = load { <2 x float>, <2 x float> }, ptr %608, align 4, !dbg !3111
  %1353 = getelementptr inbounds %struct.sse_f, ptr %690, i32 0, i32 0, !dbg !2941
  %1354 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %1353, i32 0, i32 0, !dbg !2941
  %1355 = extractvalue { <2 x float>, <2 x float> } %1352, 0, !dbg !2941
  store <2 x float> %1355, ptr %1354, align 4, !dbg !2941
  %1356 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %1353, i32 0, i32 1, !dbg !2941
  %1357 = extractvalue { <2 x float>, <2 x float> } %1352, 1, !dbg !2941
  store <2 x float> %1357, ptr %1356, align 4, !dbg !2941
  %1358 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %687, i32 0, i32 0, !dbg !2941
  %1359 = load <2 x float>, ptr %1358, align 4, !dbg !2941
  %1360 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %687, i32 0, i32 1, !dbg !2941
  %1361 = load <2 x float>, ptr %1360, align 4, !dbg !2941
  %1362 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %690, i32 0, i32 0, !dbg !2941
  %1363 = load <2 x float>, ptr %1362, align 4, !dbg !2941
  %1364 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %690, i32 0, i32 1, !dbg !2941
  %1365 = load <2 x float>, ptr %1364, align 4, !dbg !2941
  store <2 x float> %1359, ptr %597, align 4
  %1366 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %597, i32 0, i32 1
  store <2 x float> %1361, ptr %1366, align 4
  store <2 x float> %1363, ptr %598, align 4
  %1367 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %598, i32 0, i32 1
  store <2 x float> %1365, ptr %1367, align 4
  call void @llvm.dbg.declare(metadata ptr %597, metadata !3112, metadata !DIExpression()), !dbg !3114
  call void @llvm.dbg.declare(metadata ptr %598, metadata !3116, metadata !DIExpression()), !dbg !3117
  call void @llvm.dbg.declare(metadata ptr %596, metadata !3118, metadata !DIExpression()), !dbg !3119
  call void @_ZN5sse_fC2Ev(ptr noundef nonnull align 4 dereferenceable(16) %596), !dbg !3119
  call void @llvm.dbg.declare(metadata ptr %599, metadata !3120, metadata !DIExpression()), !dbg !3122
  store i32 0, ptr %599, align 4, !dbg !3122
  br label %1368, !dbg !3123

1368:                                             ; preds = %1371, %1351
  %1369 = load i32, ptr %599, align 4, !dbg !3124
  %1370 = icmp slt i32 %1369, 4, !dbg !3126
  br i1 %1370, label %1371, label %1387, !dbg !3127

1371:                                             ; preds = %1368
  %1372 = load i32, ptr %599, align 4, !dbg !3128
  %1373 = sext i32 %1372 to i64, !dbg !3128
  %1374 = getelementptr inbounds [4 x float], ptr %597, i64 0, i64 %1373, !dbg !3128
  %1375 = load i32, ptr %1374, align 4, !dbg !3128
  %1376 = xor i32 %1375, -1, !dbg !3129
  %1377 = load i32, ptr %599, align 4, !dbg !3130
  %1378 = sext i32 %1377 to i64, !dbg !3130
  %1379 = getelementptr inbounds [4 x float], ptr %598, i64 0, i64 %1378, !dbg !3130
  %1380 = load i32, ptr %1379, align 4, !dbg !3130
  %1381 = and i32 %1376, %1380, !dbg !3131
  %1382 = load i32, ptr %599, align 4, !dbg !3132
  %1383 = sext i32 %1382 to i64, !dbg !3132
  %1384 = getelementptr inbounds [4 x float], ptr %596, i64 0, i64 %1383, !dbg !3132
  store i32 %1381, ptr %1384, align 4, !dbg !3133
  %1385 = load i32, ptr %599, align 4, !dbg !3134
  %1386 = add nsw i32 %1385, 1, !dbg !3134
  store i32 %1386, ptr %599, align 4, !dbg !3134
  br label %1368, !dbg !3135, !llvm.loop !3136

1387:                                             ; preds = %1368
  %1388 = load { <2 x float>, <2 x float> }, ptr %596, align 4, !dbg !3138
  %1389 = getelementptr inbounds %struct.sse_f, ptr %686, i32 0, i32 0, !dbg !2941
  %1390 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %1389, i32 0, i32 0, !dbg !2941
  %1391 = extractvalue { <2 x float>, <2 x float> } %1388, 0, !dbg !2941
  store <2 x float> %1391, ptr %1390, align 4, !dbg !2941
  %1392 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %1389, i32 0, i32 1, !dbg !2941
  %1393 = extractvalue { <2 x float>, <2 x float> } %1388, 1, !dbg !2941
  store <2 x float> %1393, ptr %1392, align 4, !dbg !2941
  %1394 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %679, i32 0, i32 0, !dbg !2941
  %1395 = load <2 x float>, ptr %1394, align 4, !dbg !2941
  %1396 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %679, i32 0, i32 1, !dbg !2941
  %1397 = load <2 x float>, ptr %1396, align 4, !dbg !2941
  %1398 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %686, i32 0, i32 0, !dbg !2941
  %1399 = load <2 x float>, ptr %1398, align 4, !dbg !2941
  %1400 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %686, i32 0, i32 1, !dbg !2941
  %1401 = load <2 x float>, ptr %1400, align 4, !dbg !2941
  store <2 x float> %1395, ptr %623, align 4
  %1402 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %623, i32 0, i32 1
  store <2 x float> %1397, ptr %1402, align 4
  store <2 x float> %1399, ptr %624, align 4
  %1403 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %624, i32 0, i32 1
  store <2 x float> %1401, ptr %1403, align 4
  call void @llvm.dbg.declare(metadata ptr %623, metadata !3139, metadata !DIExpression()), !dbg !3141
  call void @llvm.dbg.declare(metadata ptr %624, metadata !3143, metadata !DIExpression()), !dbg !3144
  call void @llvm.dbg.declare(metadata ptr %622, metadata !3145, metadata !DIExpression()), !dbg !3146
  call void @_ZN5sse_fC2Ev(ptr noundef nonnull align 4 dereferenceable(16) %622), !dbg !3146
  call void @llvm.dbg.declare(metadata ptr %625, metadata !3147, metadata !DIExpression()), !dbg !3149
  store i32 0, ptr %625, align 4, !dbg !3149
  br label %1404, !dbg !3150

1404:                                             ; preds = %1407, %1387
  %1405 = load i32, ptr %625, align 4, !dbg !3151
  %1406 = icmp slt i32 %1405, 4, !dbg !3153
  br i1 %1406, label %1407, label %1422, !dbg !3154

1407:                                             ; preds = %1404
  %1408 = load i32, ptr %625, align 4, !dbg !3155
  %1409 = sext i32 %1408 to i64, !dbg !3155
  %1410 = getelementptr inbounds [4 x float], ptr %623, i64 0, i64 %1409, !dbg !3155
  %1411 = load i32, ptr %1410, align 4, !dbg !3155
  %1412 = load i32, ptr %625, align 4, !dbg !3156
  %1413 = sext i32 %1412 to i64, !dbg !3156
  %1414 = getelementptr inbounds [4 x float], ptr %624, i64 0, i64 %1413, !dbg !3156
  %1415 = load i32, ptr %1414, align 4, !dbg !3156
  %1416 = or i32 %1411, %1415, !dbg !3157
  %1417 = load i32, ptr %625, align 4, !dbg !3158
  %1418 = sext i32 %1417 to i64, !dbg !3158
  %1419 = getelementptr inbounds [4 x float], ptr %622, i64 0, i64 %1418, !dbg !3158
  store i32 %1416, ptr %1419, align 4, !dbg !3159
  %1420 = load i32, ptr %625, align 4, !dbg !3160
  %1421 = add nsw i32 %1420, 1, !dbg !3160
  store i32 %1421, ptr %625, align 4, !dbg !3160
  br label %1404, !dbg !3161, !llvm.loop !3162

1422:                                             ; preds = %1404
  %1423 = load { <2 x float>, <2 x float> }, ptr %622, align 4, !dbg !3164
  %1424 = getelementptr inbounds %struct.sse_f, ptr %678, i32 0, i32 0, !dbg !2941
  %1425 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %1424, i32 0, i32 0, !dbg !2941
  %1426 = extractvalue { <2 x float>, <2 x float> } %1423, 0, !dbg !2941
  store <2 x float> %1426, ptr %1425, align 4, !dbg !2941
  %1427 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %1424, i32 0, i32 1, !dbg !2941
  %1428 = extractvalue { <2 x float>, <2 x float> } %1423, 1, !dbg !2941
  store <2 x float> %1428, ptr %1427, align 4, !dbg !2941
  call void @llvm.dbg.declare(metadata ptr %691, metadata !3165, metadata !DIExpression()), !dbg !3166
  store ptr %667, ptr %590, align 8
  call void @llvm.dbg.declare(metadata ptr %590, metadata !3167, metadata !DIExpression()), !dbg !3169
  %1429 = load ptr, ptr %590, align 8
  store ptr %1429, ptr %516, align 8
  call void @llvm.dbg.declare(metadata ptr %516, metadata !3171, metadata !DIExpression()), !dbg !3173
  %1430 = load ptr, ptr %516, align 8
  store ptr %1429, ptr %513, align 8
  call void @llvm.dbg.declare(metadata ptr %513, metadata !3175, metadata !DIExpression()), !dbg !3177
  %1431 = load ptr, ptr %513, align 8
  %1432 = getelementptr inbounds %"class.RTTL::RTBox_t", ptr %1431, i32 0, i32 1, !dbg !3179
  call void @_ZN4RTTL7RTBox_tILi3EfLi0EEC2ERKNS_7RTVec_tILi3EfLi0EEES5_(ptr noundef nonnull align 4 dereferenceable(24) %591, ptr noundef nonnull align 4 dereferenceable(12) %1430, ptr noundef nonnull align 4 dereferenceable(12) %1432), !dbg !3180
  store ptr %591, ptr %509, align 8
  call void @llvm.dbg.declare(metadata ptr %509, metadata !3181, metadata !DIExpression()), !dbg !3184
  %1433 = load ptr, ptr %509, align 8
  call void @llvm.dbg.declare(metadata ptr %510, metadata !3186, metadata !DIExpression()), !dbg !3187
  %1434 = getelementptr inbounds %"class.RTTL::RTBox_t.1", ptr %1433, i32 0, i32 1, !dbg !3188
  %1435 = call noundef float @_ZNK4RTTL7RTVec_tILi3EfLi0EEixEi(ptr noundef nonnull align 4 dereferenceable(12) %1434, i32 noundef 0), !dbg !3188
  %1436 = call noundef float @_ZNK4RTTL7RTVec_tILi3EfLi0EEixEi(ptr noundef nonnull align 4 dereferenceable(12) %1433, i32 noundef 0), !dbg !3189
  %1437 = fsub float %1435, %1436, !dbg !3190
  %1438 = getelementptr inbounds %"class.RTTL::RTBox_t.1", ptr %1433, i32 0, i32 1, !dbg !3191
  %1439 = call noundef float @_ZNK4RTTL7RTVec_tILi3EfLi0EEixEi(ptr noundef nonnull align 4 dereferenceable(12) %1438, i32 noundef 1), !dbg !3191
  %1440 = call noundef float @_ZNK4RTTL7RTVec_tILi3EfLi0EEixEi(ptr noundef nonnull align 4 dereferenceable(12) %1433, i32 noundef 1), !dbg !3192
  %1441 = fsub float %1439, %1440, !dbg !3193
  %1442 = fmul float %1437, %1441, !dbg !3194
  store float %1442, ptr %510, align 4, !dbg !3187
  %1443 = load float, ptr %510, align 4, !dbg !3195
  %1444 = getelementptr inbounds %"class.RTTL::RTBox_t.1", ptr %1433, i32 0, i32 1, !dbg !3198
  %1445 = call noundef float @_ZNK4RTTL7RTVec_tILi3EfLi0EEixEi(ptr noundef nonnull align 4 dereferenceable(12) %1444, i32 noundef 0), !dbg !3198
  %1446 = call noundef float @_ZNK4RTTL7RTVec_tILi3EfLi0EEixEi(ptr noundef nonnull align 4 dereferenceable(12) %1433, i32 noundef 0), !dbg !3199
  %1447 = fsub float %1445, %1446, !dbg !3200
  %1448 = getelementptr inbounds %"class.RTTL::RTBox_t.1", ptr %1433, i32 0, i32 1, !dbg !3201
  %1449 = call noundef float @_ZNK4RTTL7RTVec_tILi3EfLi0EEixEi(ptr noundef nonnull align 4 dereferenceable(12) %1448, i32 noundef 2), !dbg !3201
  %1450 = call noundef float @_ZNK4RTTL7RTVec_tILi3EfLi0EEixEi(ptr noundef nonnull align 4 dereferenceable(12) %1433, i32 noundef 2), !dbg !3202
  %1451 = fsub float %1449, %1450, !dbg !3203
  %1452 = call float @llvm.fmuladd.f32(float %1447, float %1451, float %1443), !dbg !3204
  %1453 = getelementptr inbounds %"class.RTTL::RTBox_t.1", ptr %1433, i32 0, i32 1, !dbg !3205
  %1454 = call noundef float @_ZNK4RTTL7RTVec_tILi3EfLi0EEixEi(ptr noundef nonnull align 4 dereferenceable(12) %1453, i32 noundef 1), !dbg !3205
  %1455 = call noundef float @_ZNK4RTTL7RTVec_tILi3EfLi0EEixEi(ptr noundef nonnull align 4 dereferenceable(12) %1433, i32 noundef 1), !dbg !3206
  %1456 = fsub float %1454, %1455, !dbg !3207
  %1457 = getelementptr inbounds %"class.RTTL::RTBox_t.1", ptr %1433, i32 0, i32 1, !dbg !3208
  %1458 = call noundef float @_ZNK4RTTL7RTVec_tILi3EfLi0EEixEi(ptr noundef nonnull align 4 dereferenceable(12) %1457, i32 noundef 2), !dbg !3208
  %1459 = call noundef float @_ZNK4RTTL7RTVec_tILi3EfLi0EEixEi(ptr noundef nonnull align 4 dereferenceable(12) %1433, i32 noundef 2), !dbg !3209
  %1460 = fsub float %1458, %1459, !dbg !3210
  %1461 = call float @llvm.fmuladd.f32(float %1456, float %1460, float %1452), !dbg !3211
  %1462 = fmul float 2.000000e+00, %1461, !dbg !3212
  store float %1462, ptr %510, align 4, !dbg !3213
  %1463 = load float, ptr %510, align 4, !dbg !3214
  store float %1463, ptr %691, align 4, !dbg !3166
  call void @llvm.dbg.declare(metadata ptr %692, metadata !3215, metadata !DIExpression()), !dbg !3216
  store i32 -1, ptr %692, align 4, !dbg !3216
  call void @llvm.dbg.declare(metadata ptr %693, metadata !3217, metadata !DIExpression()), !dbg !3218
  store i32 -1, ptr %693, align 4, !dbg !3218
  call void @llvm.dbg.declare(metadata ptr %694, metadata !3219, metadata !DIExpression()), !dbg !3220
  %1464 = load i32, ptr %670, align 4, !dbg !3221
  %1465 = sitofp i32 %1464 to float, !dbg !3221
  %1466 = load float, ptr %691, align 4, !dbg !3222
  %1467 = fmul float %1465, %1466, !dbg !3223
  store float %1467, ptr %694, align 4, !dbg !3220
  %1468 = load i32, ptr %675, align 4, !dbg !3224
  store ptr %722, ptr %585, align 8
  call void @llvm.dbg.declare(metadata ptr %585, metadata !3225, metadata !DIExpression()), !dbg !3227
  store i32 %1468, ptr %586, align 4
  call void @llvm.dbg.declare(metadata ptr %586, metadata !3229, metadata !DIExpression()), !dbg !3230
  %1469 = load ptr, ptr %585, align 8
  call void @llvm.dbg.declare(metadata ptr %587, metadata !3231, metadata !DIExpression()), !dbg !3233
  store i32 0, ptr %587, align 4, !dbg !3233
  br label %1470, !dbg !3234

1470:                                             ; preds = %1566, %1422
  %1471 = load i32, ptr %587, align 4, !dbg !3235
  %1472 = icmp slt i32 %1471, 3, !dbg !3237
  br i1 %1472, label %1473, label %1569, !dbg !3238

1473:                                             ; preds = %1470
  call void @llvm.dbg.declare(metadata ptr %588, metadata !3239, metadata !DIExpression()), !dbg !3242
  store i32 0, ptr %588, align 4, !dbg !3242
  br label %1474, !dbg !3243

1474:                                             ; preds = %1549, %1473
  %1475 = load i32, ptr %588, align 4, !dbg !3244
  %1476 = load i32, ptr %586, align 4, !dbg !3246
  %1477 = icmp slt i32 %1475, %1476, !dbg !3247
  br i1 %1477, label %1478, label %1552, !dbg !3248

1478:                                             ; preds = %1474
  %1479 = load i32, ptr %587, align 4, !dbg !3249
  %1480 = sext i32 %1479 to i64, !dbg !3250
  %1481 = getelementptr inbounds [3 x [32 x %"class.RTTL::AABB"]], ptr @_ZN4RTTL15OnDemandBuilder9binBoundsE, i64 0, i64 %1480, !dbg !3250
  %1482 = load i32, ptr %588, align 4, !dbg !3251
  %1483 = sext i32 %1482 to i64, !dbg !3250
  %1484 = getelementptr inbounds [32 x %"class.RTTL::AABB"], ptr %1481, i64 0, i64 %1483, !dbg !3250
  store ptr %1484, ptr %584, align 8
  call void @llvm.dbg.declare(metadata ptr %584, metadata !2598, metadata !DIExpression()), !dbg !3252
  %1485 = load ptr, ptr %584, align 8
  store ptr %1485, ptr %488, align 8
  call void @llvm.dbg.declare(metadata ptr %488, metadata !2602, metadata !DIExpression()), !dbg !3254
  %1486 = load ptr, ptr %488, align 8
  store float 0x47EFFFFFE0000000, ptr %483, align 4
  call void @llvm.dbg.declare(metadata ptr %483, metadata !1886, metadata !DIExpression()), !dbg !3256
  call void @llvm.dbg.declare(metadata ptr %482, metadata !1893, metadata !DIExpression()), !dbg !3258
  call void @_ZN5sse_fC2Ev(ptr noundef nonnull align 4 dereferenceable(16) %482), !dbg !3258
  call void @llvm.dbg.declare(metadata ptr %484, metadata !1895, metadata !DIExpression()), !dbg !3259
  store i32 0, ptr %484, align 4, !dbg !3259
  br label %1487, !dbg !3260

1487:                                             ; preds = %1490, %1478
  %1488 = load i32, ptr %484, align 4, !dbg !3261
  %1489 = icmp slt i32 %1488, 4, !dbg !3262
  br i1 %1489, label %1490, label %1497, !dbg !3263

1490:                                             ; preds = %1487
  %1491 = load float, ptr %483, align 4, !dbg !3264
  %1492 = load i32, ptr %484, align 4, !dbg !3265
  %1493 = sext i32 %1492 to i64, !dbg !3266
  %1494 = getelementptr inbounds [4 x float], ptr %482, i64 0, i64 %1493, !dbg !3266
  store float %1491, ptr %1494, align 4, !dbg !3267
  %1495 = load i32, ptr %484, align 4, !dbg !3268
  %1496 = add nsw i32 %1495, 1, !dbg !3268
  store i32 %1496, ptr %484, align 4, !dbg !3268
  br label %1487, !dbg !3269, !llvm.loop !3270

1497:                                             ; preds = %1487
  %1498 = load { <2 x float>, <2 x float> }, ptr %482, align 4, !dbg !3272
  %1499 = extractvalue { <2 x float>, <2 x float> } %1498, 0, !dbg !3273
  store <2 x float> %1499, ptr %489, align 4, !dbg !3273
  %1500 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %489, i32 0, i32 1, !dbg !3273
  %1501 = extractvalue { <2 x float>, <2 x float> } %1498, 1, !dbg !3273
  store <2 x float> %1501, ptr %1500, align 4, !dbg !3273
  store ptr %1486, ptr %401, align 8
  call void @llvm.dbg.declare(metadata ptr %401, metadata !2624, metadata !DIExpression()), !dbg !3274
  store ptr %489, ptr %402, align 8
  call void @llvm.dbg.declare(metadata ptr %402, metadata !2628, metadata !DIExpression()), !dbg !3276
  %1502 = load ptr, ptr %401, align 8
  call void @llvm.dbg.declare(metadata ptr %403, metadata !2630, metadata !DIExpression()), !dbg !3277
  %1503 = call noundef nonnull align 4 dereferenceable(16) ptr @_ZN4RTTL7RTVec_tILi1E5sse_fLi0EEcvRNS_8RTData_tILi1ES1_Li0EEEEv(ptr noundef nonnull align 4 dereferenceable(16) %1502), !dbg !3278
  store ptr %1503, ptr %403, align 8, !dbg !3277
  %1504 = load ptr, ptr %403, align 8, !dbg !3279
  %1505 = load ptr, ptr %402, align 8, !dbg !3280
  store ptr %1504, ptr %398, align 8
  call void @llvm.dbg.declare(metadata ptr %398, metadata !2635, metadata !DIExpression()), !dbg !3281
  store ptr %1505, ptr %399, align 8
  call void @llvm.dbg.declare(metadata ptr %399, metadata !2639, metadata !DIExpression()), !dbg !3283
  %1506 = load ptr, ptr %398, align 8
  call void @llvm.dbg.declare(metadata ptr %400, metadata !2641, metadata !DIExpression()), !dbg !3284
  store i32 0, ptr %400, align 4, !dbg !3284
  br label %1507, !dbg !3285

1507:                                             ; preds = %1510, %1497
  %1508 = load i32, ptr %400, align 4, !dbg !3286
  %1509 = icmp slt i32 %1508, 1, !dbg !3287
  br i1 %1509, label %1510, label %1517, !dbg !3288

1510:                                             ; preds = %1507
  %1511 = load ptr, ptr %399, align 8, !dbg !3289
  %1512 = load i32, ptr %400, align 4, !dbg !3290
  %1513 = sext i32 %1512 to i64, !dbg !3291
  %1514 = getelementptr inbounds [1 x %struct.sse_f], ptr %1506, i64 0, i64 %1513, !dbg !3291
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1514, ptr align 4 %1511, i64 16, i1 false), !dbg !3292
  %1515 = load i32, ptr %400, align 4, !dbg !3293
  %1516 = add nsw i32 %1515, 1, !dbg !3293
  store i32 %1516, ptr %400, align 4, !dbg !3293
  br label %1507, !dbg !3294, !llvm.loop !3295

1517:                                             ; preds = %1507
  store float 0xC7EFFFFFE0000000, ptr %486, align 4
  call void @llvm.dbg.declare(metadata ptr %486, metadata !1886, metadata !DIExpression()), !dbg !3297
  call void @llvm.dbg.declare(metadata ptr %485, metadata !1893, metadata !DIExpression()), !dbg !3299
  call void @_ZN5sse_fC2Ev(ptr noundef nonnull align 4 dereferenceable(16) %485), !dbg !3299
  call void @llvm.dbg.declare(metadata ptr %487, metadata !1895, metadata !DIExpression()), !dbg !3300
  store i32 0, ptr %487, align 4, !dbg !3300
  br label %1518, !dbg !3301

1518:                                             ; preds = %1521, %1517
  %1519 = load i32, ptr %487, align 4, !dbg !3302
  %1520 = icmp slt i32 %1519, 4, !dbg !3303
  br i1 %1520, label %1521, label %1528, !dbg !3304

1521:                                             ; preds = %1518
  %1522 = load float, ptr %486, align 4, !dbg !3305
  %1523 = load i32, ptr %487, align 4, !dbg !3306
  %1524 = sext i32 %1523 to i64, !dbg !3307
  %1525 = getelementptr inbounds [4 x float], ptr %485, i64 0, i64 %1524, !dbg !3307
  store float %1522, ptr %1525, align 4, !dbg !3308
  %1526 = load i32, ptr %487, align 4, !dbg !3309
  %1527 = add nsw i32 %1526, 1, !dbg !3309
  store i32 %1527, ptr %487, align 4, !dbg !3309
  br label %1518, !dbg !3310, !llvm.loop !3311

1528:                                             ; preds = %1518
  %1529 = load { <2 x float>, <2 x float> }, ptr %485, align 4, !dbg !3313
  %1530 = extractvalue { <2 x float>, <2 x float> } %1529, 0, !dbg !3314
  store <2 x float> %1530, ptr %490, align 4, !dbg !3314
  %1531 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %490, i32 0, i32 1, !dbg !3314
  %1532 = extractvalue { <2 x float>, <2 x float> } %1529, 1, !dbg !3314
  store <2 x float> %1532, ptr %1531, align 4, !dbg !3314
  %1533 = getelementptr inbounds %"class.RTTL::RTBox_t", ptr %1486, i32 0, i32 1, !dbg !3315
  store ptr %1533, ptr %404, align 8
  call void @llvm.dbg.declare(metadata ptr %404, metadata !2624, metadata !DIExpression()), !dbg !3316
  store ptr %490, ptr %405, align 8
  call void @llvm.dbg.declare(metadata ptr %405, metadata !2628, metadata !DIExpression()), !dbg !3318
  %1534 = load ptr, ptr %404, align 8
  call void @llvm.dbg.declare(metadata ptr %406, metadata !2630, metadata !DIExpression()), !dbg !3319
  %1535 = call noundef nonnull align 4 dereferenceable(16) ptr @_ZN4RTTL7RTVec_tILi1E5sse_fLi0EEcvRNS_8RTData_tILi1ES1_Li0EEEEv(ptr noundef nonnull align 4 dereferenceable(16) %1534), !dbg !3320
  store ptr %1535, ptr %406, align 8, !dbg !3319
  %1536 = load ptr, ptr %406, align 8, !dbg !3321
  %1537 = load ptr, ptr %405, align 8, !dbg !3322
  store ptr %1536, ptr %395, align 8
  call void @llvm.dbg.declare(metadata ptr %395, metadata !2635, metadata !DIExpression()), !dbg !3323
  store ptr %1537, ptr %396, align 8
  call void @llvm.dbg.declare(metadata ptr %396, metadata !2639, metadata !DIExpression()), !dbg !3325
  %1538 = load ptr, ptr %395, align 8
  call void @llvm.dbg.declare(metadata ptr %397, metadata !2641, metadata !DIExpression()), !dbg !3326
  store i32 0, ptr %397, align 4, !dbg !3326
  br label %1539, !dbg !3327

1539:                                             ; preds = %1542, %1528
  %1540 = load i32, ptr %397, align 4, !dbg !3328
  %1541 = icmp slt i32 %1540, 1, !dbg !3329
  br i1 %1541, label %1542, label %1549, !dbg !3330

1542:                                             ; preds = %1539
  %1543 = load ptr, ptr %396, align 8, !dbg !3331
  %1544 = load i32, ptr %397, align 4, !dbg !3332
  %1545 = sext i32 %1544 to i64, !dbg !3333
  %1546 = getelementptr inbounds [1 x %struct.sse_f], ptr %1538, i64 0, i64 %1545, !dbg !3333
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1546, ptr align 4 %1543, i64 16, i1 false), !dbg !3334
  %1547 = load i32, ptr %397, align 4, !dbg !3335
  %1548 = add nsw i32 %1547, 1, !dbg !3335
  store i32 %1548, ptr %397, align 4, !dbg !3335
  br label %1539, !dbg !3336, !llvm.loop !3337

1549:                                             ; preds = %1539
  %1550 = load i32, ptr %588, align 4, !dbg !3339
  %1551 = add nsw i32 %1550, 1, !dbg !3339
  store i32 %1551, ptr %588, align 4, !dbg !3339
  br label %1474, !dbg !3340, !llvm.loop !3341

1552:                                             ; preds = %1474
  call void @llvm.dbg.declare(metadata ptr %589, metadata !3343, metadata !DIExpression()), !dbg !3345
  store i32 0, ptr %589, align 4, !dbg !3345
  br label %1553, !dbg !3346

1553:                                             ; preds = %1557, %1552
  %1554 = load i32, ptr %589, align 4, !dbg !3347
  %1555 = load i32, ptr %586, align 4, !dbg !3349
  %1556 = icmp slt i32 %1554, %1555, !dbg !3350
  br i1 %1556, label %1557, label %1566, !dbg !3351

1557:                                             ; preds = %1553
  %1558 = load i32, ptr %587, align 4, !dbg !3352
  %1559 = sext i32 %1558 to i64, !dbg !3353
  %1560 = getelementptr inbounds [3 x [32 x i32]], ptr @_ZN4RTTL15OnDemandBuilder8binCountE, i64 0, i64 %1559, !dbg !3353
  %1561 = load i32, ptr %589, align 4, !dbg !3354
  %1562 = sext i32 %1561 to i64, !dbg !3353
  %1563 = getelementptr inbounds [32 x i32], ptr %1560, i64 0, i64 %1562, !dbg !3353
  store i32 0, ptr %1563, align 4, !dbg !3355
  %1564 = load i32, ptr %589, align 4, !dbg !3356
  %1565 = add nsw i32 %1564, 1, !dbg !3356
  store i32 %1565, ptr %589, align 4, !dbg !3356
  br label %1553, !dbg !3357, !llvm.loop !3358

1566:                                             ; preds = %1553
  %1567 = load i32, ptr %587, align 4, !dbg !3360
  %1568 = add nsw i32 %1567, 1, !dbg !3360
  store i32 %1568, ptr %587, align 4, !dbg !3360
  br label %1470, !dbg !3361, !llvm.loop !3362

1569:                                             ; preds = %1470
  call void @llvm.dbg.declare(metadata ptr %695, metadata !3364, metadata !DIExpression()), !dbg !3365
  store ptr %671, ptr %638, align 8
  call void @llvm.dbg.declare(metadata ptr %638, metadata !2456, metadata !DIExpression()), !dbg !3366
  %1570 = load ptr, ptr %638, align 8
  %1571 = call noundef nonnull align 4 dereferenceable(16) ptr @_ZN4RTTL7RTVec_tILi1E5sse_fLi0EEixEi(ptr noundef nonnull align 4 dereferenceable(16) %1570, i32 noundef 0), !dbg !3368
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %695, ptr align 4 %1571, i64 16, i1 false), !dbg !3369
  call void @llvm.dbg.declare(metadata ptr %696, metadata !3370, metadata !DIExpression()), !dbg !3372
  %1572 = load i32, ptr %668, align 4, !dbg !3373
  store i32 %1572, ptr %696, align 4, !dbg !3372
  br label %1573, !dbg !3374

1573:                                             ; preds = %2243, %1569
  %1574 = load i32, ptr %696, align 4, !dbg !3375
  %1575 = load i32, ptr %669, align 4, !dbg !3377
  %1576 = icmp slt i32 %1574, %1575, !dbg !3378
  br i1 %1576, label %1577, label %2246, !dbg !3379

1577:                                             ; preds = %1573
  %1578 = getelementptr inbounds %"class.RTTL::OnDemandBuilder", ptr %722, i32 0, i32 1, !dbg !3380
  %1579 = load ptr, ptr %1578, align 8, !dbg !3380
  %1580 = load ptr, ptr %665, align 8, !dbg !3381
  %1581 = load i32, ptr %696, align 4, !dbg !3382
  %1582 = sext i32 %1581 to i64, !dbg !3381
  %1583 = getelementptr inbounds i32, ptr %1580, i64 %1582, !dbg !3381
  %1584 = load i32, ptr %1583, align 4, !dbg !3381
  %1585 = sext i32 %1584 to i64, !dbg !3380
  %1586 = getelementptr inbounds %"class.RTTL::CentroidDiffAABB", ptr %1579, i64 %1585, !dbg !3380
  store ptr %722, ptr %570, align 8
  call void @llvm.dbg.declare(metadata ptr %570, metadata !3383, metadata !DIExpression()), !dbg !3385
  store ptr %1586, ptr %571, align 8
  call void @llvm.dbg.declare(metadata ptr %571, metadata !3387, metadata !DIExpression()), !dbg !3388
  store ptr %695, ptr %572, align 8
  call void @llvm.dbg.declare(metadata ptr %572, metadata !3389, metadata !DIExpression()), !dbg !3390
  store ptr %678, ptr %573, align 8
  call void @llvm.dbg.declare(metadata ptr %573, metadata !3391, metadata !DIExpression()), !dbg !3392
  %1587 = load ptr, ptr %570, align 8
  call void @llvm.dbg.declare(metadata ptr %574, metadata !3393, metadata !DIExpression()), !dbg !3396
  %1588 = load ptr, ptr %571, align 8, !dbg !3397
  %1589 = call { <2 x float>, <2 x float> } @_ZNK4RTTL16CentroidDiffAABB8centroidEv(ptr noundef nonnull align 4 dereferenceable(32) %1588), !dbg !3398
  %1590 = extractvalue { <2 x float>, <2 x float> } %1589, 0, !dbg !3398
  store <2 x float> %1590, ptr %577, align 4, !dbg !3398
  %1591 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %577, i32 0, i32 1, !dbg !3398
  %1592 = extractvalue { <2 x float>, <2 x float> } %1589, 1, !dbg !3398
  store <2 x float> %1592, ptr %1591, align 4, !dbg !3398
  %1593 = load ptr, ptr %572, align 8, !dbg !3399
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %578, ptr align 4 %1593, i64 16, i1 false), !dbg !3399
  %1594 = load <2 x float>, ptr %577, align 4, !dbg !3400
  %1595 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %577, i32 0, i32 1, !dbg !3400
  %1596 = load <2 x float>, ptr %1595, align 4, !dbg !3400
  %1597 = load <2 x float>, ptr %578, align 4, !dbg !3400
  %1598 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %578, i32 0, i32 1, !dbg !3400
  %1599 = load <2 x float>, ptr %1598, align 4, !dbg !3400
  store <2 x float> %1594, ptr %526, align 4
  %1600 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %526, i32 0, i32 1
  store <2 x float> %1596, ptr %1600, align 4
  store <2 x float> %1597, ptr %527, align 4
  %1601 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %527, i32 0, i32 1
  store <2 x float> %1599, ptr %1601, align 4
  call void @llvm.dbg.declare(metadata ptr %526, metadata !2278, metadata !DIExpression()), !dbg !3401
  call void @llvm.dbg.declare(metadata ptr %527, metadata !2282, metadata !DIExpression()), !dbg !3403
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %528, ptr align 4 %526, i64 16, i1 false), !dbg !3404
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %529, ptr align 4 %527, i64 16, i1 false), !dbg !3405
  %1602 = load <2 x float>, ptr %528, align 4, !dbg !3406
  %1603 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %528, i32 0, i32 1, !dbg !3406
  %1604 = load <2 x float>, ptr %1603, align 4, !dbg !3406
  %1605 = load <2 x float>, ptr %529, align 4, !dbg !3406
  %1606 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %529, i32 0, i32 1, !dbg !3406
  %1607 = load <2 x float>, ptr %1606, align 4, !dbg !3406
  store <2 x float> %1602, ptr %522, align 4
  %1608 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %522, i32 0, i32 1
  store <2 x float> %1604, ptr %1608, align 4
  store <2 x float> %1605, ptr %523, align 4
  %1609 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %523, i32 0, i32 1
  store <2 x float> %1607, ptr %1609, align 4
  call void @llvm.dbg.declare(metadata ptr %522, metadata !2287, metadata !DIExpression()), !dbg !3407
  call void @llvm.dbg.declare(metadata ptr %523, metadata !2291, metadata !DIExpression()), !dbg !3409
  call void @llvm.dbg.declare(metadata ptr %521, metadata !2293, metadata !DIExpression()), !dbg !3410
  call void @_ZN5sse_fC2Ev(ptr noundef nonnull align 4 dereferenceable(16) %521), !dbg !3410
  call void @llvm.dbg.declare(metadata ptr %524, metadata !2295, metadata !DIExpression()), !dbg !3411
  store i32 0, ptr %524, align 4, !dbg !3411
  br label %1610, !dbg !3412

1610:                                             ; preds = %1613, %1577
  %1611 = load i32, ptr %524, align 4, !dbg !3413
  %1612 = icmp slt i32 %1611, 4, !dbg !3414
  br i1 %1612, label %1613, label %1628, !dbg !3415

1613:                                             ; preds = %1610
  %1614 = load i32, ptr %524, align 4, !dbg !3416
  %1615 = sext i32 %1614 to i64, !dbg !3417
  %1616 = getelementptr inbounds [4 x float], ptr %522, i64 0, i64 %1615, !dbg !3417
  %1617 = load float, ptr %1616, align 4, !dbg !3417
  %1618 = load i32, ptr %524, align 4, !dbg !3418
  %1619 = sext i32 %1618 to i64, !dbg !3419
  %1620 = getelementptr inbounds [4 x float], ptr %523, i64 0, i64 %1619, !dbg !3419
  %1621 = load float, ptr %1620, align 4, !dbg !3419
  %1622 = fsub float %1617, %1621, !dbg !3420
  %1623 = load i32, ptr %524, align 4, !dbg !3421
  %1624 = sext i32 %1623 to i64, !dbg !3422
  %1625 = getelementptr inbounds [4 x float], ptr %521, i64 0, i64 %1624, !dbg !3422
  store float %1622, ptr %1625, align 4, !dbg !3423
  %1626 = load i32, ptr %524, align 4, !dbg !3424
  %1627 = add nsw i32 %1626, 1, !dbg !3424
  store i32 %1627, ptr %524, align 4, !dbg !3424
  br label %1610, !dbg !3425, !llvm.loop !3426

1628:                                             ; preds = %1610
  %1629 = load { <2 x float>, <2 x float> }, ptr %521, align 4, !dbg !3428
  %1630 = extractvalue { <2 x float>, <2 x float> } %1629, 0, !dbg !3406
  store <2 x float> %1630, ptr %525, align 4, !dbg !3406
  %1631 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %525, i32 0, i32 1, !dbg !3406
  %1632 = extractvalue { <2 x float>, <2 x float> } %1629, 1, !dbg !3406
  store <2 x float> %1632, ptr %1631, align 4, !dbg !3406
  %1633 = load { <2 x float>, <2 x float> }, ptr %525, align 4, !dbg !3429
  %1634 = extractvalue { <2 x float>, <2 x float> } %1633, 0, !dbg !3400
  store <2 x float> %1634, ptr %576, align 4, !dbg !3400
  %1635 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %576, i32 0, i32 1, !dbg !3400
  %1636 = extractvalue { <2 x float>, <2 x float> } %1633, 1, !dbg !3400
  store <2 x float> %1636, ptr %1635, align 4, !dbg !3400
  %1637 = load ptr, ptr %573, align 8, !dbg !3430
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %579, ptr align 4 %1637, i64 16, i1 false), !dbg !3430
  %1638 = load <2 x float>, ptr %576, align 4, !dbg !3431
  %1639 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %576, i32 0, i32 1, !dbg !3431
  %1640 = load <2 x float>, ptr %1639, align 4, !dbg !3431
  %1641 = load <2 x float>, ptr %579, align 4, !dbg !3431
  %1642 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %579, i32 0, i32 1, !dbg !3431
  %1643 = load <2 x float>, ptr %1642, align 4, !dbg !3431
  store <2 x float> %1638, ptr %497, align 4
  %1644 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %497, i32 0, i32 1
  store <2 x float> %1640, ptr %1644, align 4
  store <2 x float> %1641, ptr %498, align 4
  %1645 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %498, i32 0, i32 1
  store <2 x float> %1643, ptr %1645, align 4
  call void @llvm.dbg.declare(metadata ptr %497, metadata !3432, metadata !DIExpression()), !dbg !3434
  call void @llvm.dbg.declare(metadata ptr %498, metadata !3436, metadata !DIExpression()), !dbg !3437
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %499, ptr align 4 %497, i64 16, i1 false), !dbg !3438
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %500, ptr align 4 %498, i64 16, i1 false), !dbg !3439
  %1646 = load <2 x float>, ptr %499, align 4, !dbg !3440
  %1647 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %499, i32 0, i32 1, !dbg !3440
  %1648 = load <2 x float>, ptr %1647, align 4, !dbg !3440
  %1649 = load <2 x float>, ptr %500, align 4, !dbg !3440
  %1650 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %500, i32 0, i32 1, !dbg !3440
  %1651 = load <2 x float>, ptr %1650, align 4, !dbg !3440
  store <2 x float> %1646, ptr %493, align 4
  %1652 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %493, i32 0, i32 1
  store <2 x float> %1648, ptr %1652, align 4
  store <2 x float> %1649, ptr %494, align 4
  %1653 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %494, i32 0, i32 1
  store <2 x float> %1651, ptr %1653, align 4
  call void @llvm.dbg.declare(metadata ptr %493, metadata !2370, metadata !DIExpression()), !dbg !3441
  call void @llvm.dbg.declare(metadata ptr %494, metadata !2374, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.declare(metadata ptr %492, metadata !2376, metadata !DIExpression()), !dbg !3444
  call void @_ZN5sse_fC2Ev(ptr noundef nonnull align 4 dereferenceable(16) %492), !dbg !3444
  call void @llvm.dbg.declare(metadata ptr %495, metadata !2378, metadata !DIExpression()), !dbg !3445
  store i32 0, ptr %495, align 4, !dbg !3445
  br label %1654, !dbg !3446

1654:                                             ; preds = %1657, %1628
  %1655 = load i32, ptr %495, align 4, !dbg !3447
  %1656 = icmp slt i32 %1655, 4, !dbg !3448
  br i1 %1656, label %1657, label %1672, !dbg !3449

1657:                                             ; preds = %1654
  %1658 = load i32, ptr %495, align 4, !dbg !3450
  %1659 = sext i32 %1658 to i64, !dbg !3450
  %1660 = getelementptr inbounds [4 x float], ptr %493, i64 0, i64 %1659, !dbg !3450
  %1661 = load float, ptr %1660, align 4, !dbg !3450
  %1662 = load i32, ptr %495, align 4, !dbg !3451
  %1663 = sext i32 %1662 to i64, !dbg !3451
  %1664 = getelementptr inbounds [4 x float], ptr %494, i64 0, i64 %1663, !dbg !3451
  %1665 = load float, ptr %1664, align 4, !dbg !3451
  %1666 = fmul float %1661, %1665, !dbg !3452
  %1667 = load i32, ptr %495, align 4, !dbg !3453
  %1668 = sext i32 %1667 to i64, !dbg !3453
  %1669 = getelementptr inbounds [4 x float], ptr %492, i64 0, i64 %1668, !dbg !3453
  store float %1666, ptr %1669, align 4, !dbg !3454
  %1670 = load i32, ptr %495, align 4, !dbg !3455
  %1671 = add nsw i32 %1670, 1, !dbg !3455
  store i32 %1671, ptr %495, align 4, !dbg !3455
  br label %1654, !dbg !3456, !llvm.loop !3457

1672:                                             ; preds = %1654
  %1673 = load { <2 x float>, <2 x float> }, ptr %492, align 4, !dbg !3459
  %1674 = extractvalue { <2 x float>, <2 x float> } %1673, 0, !dbg !3440
  store <2 x float> %1674, ptr %496, align 4, !dbg !3440
  %1675 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %496, i32 0, i32 1, !dbg !3440
  %1676 = extractvalue { <2 x float>, <2 x float> } %1673, 1, !dbg !3440
  store <2 x float> %1676, ptr %1675, align 4, !dbg !3440
  %1677 = load { <2 x float>, <2 x float> }, ptr %496, align 4, !dbg !3460
  %1678 = extractvalue { <2 x float>, <2 x float> } %1677, 0, !dbg !3431
  store <2 x float> %1678, ptr %575, align 4, !dbg !3431
  %1679 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %575, i32 0, i32 1, !dbg !3431
  %1680 = extractvalue { <2 x float>, <2 x float> } %1677, 1, !dbg !3431
  store <2 x float> %1680, ptr %1679, align 4, !dbg !3431
  %1681 = load <2 x float>, ptr %575, align 4, !dbg !3461
  %1682 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %575, i32 0, i32 1, !dbg !3461
  %1683 = load <2 x float>, ptr %1682, align 4, !dbg !3461
  store <2 x float> %1681, ptr %502, align 4
  %1684 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %502, i32 0, i32 1
  store <2 x float> %1683, ptr %1684, align 4
  call void @llvm.dbg.declare(metadata ptr %502, metadata !3462, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.declare(metadata ptr %501, metadata !3468, metadata !DIExpression()), !dbg !3469
  call void @_ZN5sse_iC2Ev(ptr noundef nonnull align 4 dereferenceable(16) %501), !dbg !3469
  call void @llvm.dbg.declare(metadata ptr %503, metadata !3470, metadata !DIExpression()), !dbg !3471
  call void @_ZN5sse_fC2Ev(ptr noundef nonnull align 4 dereferenceable(16) %503), !dbg !3471
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %503, ptr align 4 %502, i64 16, i1 false), !dbg !3472
  call void @llvm.dbg.declare(metadata ptr %504, metadata !3473, metadata !DIExpression()), !dbg !3475
  store i32 0, ptr %504, align 4, !dbg !3475
  br label %1685, !dbg !3476

1685:                                             ; preds = %1688, %1672
  %1686 = load i32, ptr %504, align 4, !dbg !3477
  %1687 = icmp slt i32 %1686, 4, !dbg !3479
  br i1 %1687, label %1688, label %1701, !dbg !3480

1688:                                             ; preds = %1685
  %1689 = load i32, ptr %504, align 4, !dbg !3481
  %1690 = sext i32 %1689 to i64, !dbg !3481
  %1691 = getelementptr inbounds [4 x float], ptr %503, i64 0, i64 %1690, !dbg !3481
  %1692 = load float, ptr %1691, align 4, !dbg !3481
  %1693 = fpext float %1692 to double, !dbg !3481
  store double %1693, ptr %491, align 8
  call void @llvm.dbg.declare(metadata ptr %491, metadata !3482, metadata !DIExpression()), !dbg !3484
  %1694 = load double, ptr %491, align 8, !dbg !3486
  %1695 = fptosi double %1694 to i32, !dbg !3486
  %1696 = load i32, ptr %504, align 4, !dbg !3487
  %1697 = sext i32 %1696 to i64, !dbg !3488
  %1698 = getelementptr inbounds [4 x i32], ptr %501, i64 0, i64 %1697, !dbg !3488
  store i32 %1695, ptr %1698, align 4, !dbg !3489
  %1699 = load i32, ptr %504, align 4, !dbg !3490
  %1700 = add nsw i32 %1699, 1, !dbg !3490
  store i32 %1700, ptr %504, align 4, !dbg !3490
  br label %1685, !dbg !3491, !llvm.loop !3492

1701:                                             ; preds = %1685
  %1702 = load { i64, i64 }, ptr %501, align 4, !dbg !3494
  %1703 = extractvalue { i64, i64 } %1702, 0, !dbg !3461
  store i64 %1703, ptr %574, align 4, !dbg !3461
  %1704 = getelementptr inbounds { i64, i64 }, ptr %574, i32 0, i32 1, !dbg !3461
  %1705 = extractvalue { i64, i64 } %1702, 1, !dbg !3461
  store i64 %1705, ptr %1704, align 4, !dbg !3461
  call void @llvm.dbg.declare(metadata ptr %580, metadata !3495, metadata !DIExpression()), !dbg !3496
  %1706 = load i32, ptr %574, align 4, !dbg !3497
  store i32 %1706, ptr %580, align 4, !dbg !3496
  call void @llvm.dbg.declare(metadata ptr %581, metadata !3498, metadata !DIExpression()), !dbg !3499
  %1707 = getelementptr inbounds i32, ptr %574, i64 1, !dbg !3500
  %1708 = load i32, ptr %1707, align 4, !dbg !3500
  store i32 %1708, ptr %581, align 4, !dbg !3499
  call void @llvm.dbg.declare(metadata ptr %582, metadata !3501, metadata !DIExpression()), !dbg !3502
  %1709 = getelementptr inbounds i32, ptr %574, i64 2, !dbg !3503
  %1710 = load i32, ptr %1709, align 4, !dbg !3503
  store i32 %1710, ptr %582, align 4, !dbg !3502
  call void @llvm.dbg.declare(metadata ptr %583, metadata !3504, metadata !DIExpression()), !dbg !3505
  %1711 = load ptr, ptr %571, align 8, !dbg !3506
  call void @_ZNK4RTTL16CentroidDiffAABB7convertEv(ptr sret(%"class.RTTL::AABB") align 4 %583, ptr noundef nonnull align 4 dereferenceable(32) %1711), !dbg !3507
  %1712 = load i32, ptr %580, align 4, !dbg !3508
  %1713 = sext i32 %1712 to i64, !dbg !3509
  %1714 = getelementptr inbounds [32 x %"class.RTTL::AABB"], ptr @_ZN4RTTL15OnDemandBuilder9binBoundsE, i64 0, i64 %1713, !dbg !3509
  store ptr %1714, ptr %564, align 8
  call void @llvm.dbg.declare(metadata ptr %564, metadata !1978, metadata !DIExpression()), !dbg !3510
  store ptr %583, ptr %565, align 8
  call void @llvm.dbg.declare(metadata ptr %565, metadata !1983, metadata !DIExpression()), !dbg !3512
  %1715 = load ptr, ptr %564, align 8
  %1716 = load ptr, ptr %565, align 8, !dbg !3513
  store ptr %1715, ptr %336, align 8
  call void @llvm.dbg.declare(metadata ptr %336, metadata !1986, metadata !DIExpression()), !dbg !3514
  store ptr %1716, ptr %337, align 8
  call void @llvm.dbg.declare(metadata ptr %337, metadata !1991, metadata !DIExpression()), !dbg !3516
  %1717 = load ptr, ptr %336, align 8
  call void @llvm.dbg.declare(metadata ptr %338, metadata !1993, metadata !DIExpression()), !dbg !3517
  %1718 = call noundef nonnull align 4 dereferenceable(16) ptr @_ZN4RTTL7RTVec_tILi1E5sse_fLi0EEcvRNS_8RTData_tILi1ES1_Li0EEEEv(ptr noundef nonnull align 4 dereferenceable(16) %1717), !dbg !3518
  store ptr %1718, ptr %338, align 8, !dbg !3517
  call void @llvm.dbg.declare(metadata ptr %339, metadata !1996, metadata !DIExpression()), !dbg !3519
  store i32 0, ptr %339, align 4, !dbg !3519
  br label %1719, !dbg !3520

1719:                                             ; preds = %1781, %1701
  %1720 = load i32, ptr %339, align 4, !dbg !3521
  %1721 = icmp slt i32 %1720, 1, !dbg !3522
  br i1 %1721, label %1722, label %1798, !dbg !3523

1722:                                             ; preds = %1719
  %1723 = load ptr, ptr %338, align 8, !dbg !3524
  %1724 = load i32, ptr %339, align 4, !dbg !3525
  store ptr %1723, ptr %332, align 8
  call void @llvm.dbg.declare(metadata ptr %332, metadata !2006, metadata !DIExpression()), !dbg !3526
  store i32 %1724, ptr %333, align 4
  call void @llvm.dbg.declare(metadata ptr %333, metadata !2011, metadata !DIExpression()), !dbg !3528
  %1725 = load ptr, ptr %332, align 8
  %1726 = load i32, ptr %333, align 4, !dbg !3529
  %1727 = sext i32 %1726 to i64, !dbg !3530
  %1728 = getelementptr inbounds [1 x %struct.sse_f], ptr %1725, i64 0, i64 %1727, !dbg !3530
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %341, ptr align 4 %1728, i64 16, i1 false), !dbg !3524
  %1729 = load ptr, ptr %337, align 8, !dbg !3531
  %1730 = load i32, ptr %339, align 4, !dbg !3532
  %1731 = call { <2 x float>, <2 x float> } @_ZNK4RTTL7RTVec_tILi1E5sse_fLi0EEixEi(ptr noundef nonnull align 4 dereferenceable(16) %1729, i32 noundef %1730), !dbg !3531
  %1732 = extractvalue { <2 x float>, <2 x float> } %1731, 0, !dbg !3531
  store <2 x float> %1732, ptr %342, align 4, !dbg !3531
  %1733 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %342, i32 0, i32 1, !dbg !3531
  %1734 = extractvalue { <2 x float>, <2 x float> } %1731, 1, !dbg !3531
  store <2 x float> %1734, ptr %1733, align 4, !dbg !3531
  %1735 = load <2 x float>, ptr %341, align 4, !dbg !3533
  %1736 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %341, i32 0, i32 1, !dbg !3533
  %1737 = load <2 x float>, ptr %1736, align 4, !dbg !3533
  %1738 = load <2 x float>, ptr %342, align 4, !dbg !3533
  %1739 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %342, i32 0, i32 1, !dbg !3533
  %1740 = load <2 x float>, ptr %1739, align 4, !dbg !3533
  store <2 x float> %1735, ptr %241, align 4
  %1741 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %241, i32 0, i32 1
  store <2 x float> %1737, ptr %1741, align 4
  store <2 x float> %1738, ptr %242, align 4
  %1742 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %242, i32 0, i32 1
  store <2 x float> %1740, ptr %1742, align 4
  call void @llvm.dbg.declare(metadata ptr %241, metadata !2018, metadata !DIExpression()), !dbg !3534
  call void @llvm.dbg.declare(metadata ptr %242, metadata !2024, metadata !DIExpression()), !dbg !3536
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %243, ptr align 4 %241, i64 16, i1 false), !dbg !3537
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %244, ptr align 4 %242, i64 16, i1 false), !dbg !3538
  %1743 = load <2 x float>, ptr %243, align 4, !dbg !3539
  %1744 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %243, i32 0, i32 1, !dbg !3539
  %1745 = load <2 x float>, ptr %1744, align 4, !dbg !3539
  %1746 = load <2 x float>, ptr %244, align 4, !dbg !3539
  %1747 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %244, i32 0, i32 1, !dbg !3539
  %1748 = load <2 x float>, ptr %1747, align 4, !dbg !3539
  store <2 x float> %1743, ptr %219, align 4
  %1749 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %219, i32 0, i32 1
  store <2 x float> %1745, ptr %1749, align 4
  store <2 x float> %1746, ptr %220, align 4
  %1750 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %220, i32 0, i32 1
  store <2 x float> %1748, ptr %1750, align 4
  call void @llvm.dbg.declare(metadata ptr %219, metadata !2029, metadata !DIExpression()), !dbg !3540
  call void @llvm.dbg.declare(metadata ptr %220, metadata !2033, metadata !DIExpression()), !dbg !3542
  call void @llvm.dbg.declare(metadata ptr %218, metadata !2035, metadata !DIExpression()), !dbg !3543
  call void @_ZN5sse_fC2Ev(ptr noundef nonnull align 4 dereferenceable(16) %218), !dbg !3543
  call void @llvm.dbg.declare(metadata ptr %221, metadata !2037, metadata !DIExpression()), !dbg !3544
  store i32 0, ptr %221, align 4, !dbg !3544
  br label %1751, !dbg !3545

1751:                                             ; preds = %1774, %1722
  %1752 = load i32, ptr %221, align 4, !dbg !3546
  %1753 = icmp slt i32 %1752, 4, !dbg !3547
  br i1 %1753, label %1754, label %1781, !dbg !3548

1754:                                             ; preds = %1751
  %1755 = load i32, ptr %221, align 4, !dbg !3549
  %1756 = sext i32 %1755 to i64, !dbg !3549
  %1757 = getelementptr inbounds [4 x float], ptr %219, i64 0, i64 %1756, !dbg !3549
  %1758 = load float, ptr %1757, align 4, !dbg !3549
  %1759 = load i32, ptr %221, align 4, !dbg !3549
  %1760 = sext i32 %1759 to i64, !dbg !3549
  %1761 = getelementptr inbounds [4 x float], ptr %220, i64 0, i64 %1760, !dbg !3549
  %1762 = load float, ptr %1761, align 4, !dbg !3549
  %1763 = fcmp olt float %1758, %1762, !dbg !3549
  br i1 %1763, label %1764, label %1769, !dbg !3549

1764:                                             ; preds = %1754
  %1765 = load i32, ptr %221, align 4, !dbg !3549
  %1766 = sext i32 %1765 to i64, !dbg !3549
  %1767 = getelementptr inbounds [4 x float], ptr %219, i64 0, i64 %1766, !dbg !3549
  %1768 = load float, ptr %1767, align 4, !dbg !3549
  br label %1774, !dbg !3549

1769:                                             ; preds = %1754
  %1770 = load i32, ptr %221, align 4, !dbg !3549
  %1771 = sext i32 %1770 to i64, !dbg !3549
  %1772 = getelementptr inbounds [4 x float], ptr %220, i64 0, i64 %1771, !dbg !3549
  %1773 = load float, ptr %1772, align 4, !dbg !3549
  br label %1774, !dbg !3549

1774:                                             ; preds = %1769, %1764
  %1775 = phi float [ %1768, %1764 ], [ %1773, %1769 ], !dbg !3549
  %1776 = load i32, ptr %221, align 4, !dbg !3550
  %1777 = sext i32 %1776 to i64, !dbg !3550
  %1778 = getelementptr inbounds [4 x float], ptr %218, i64 0, i64 %1777, !dbg !3550
  store float %1775, ptr %1778, align 4, !dbg !3551
  %1779 = load i32, ptr %221, align 4, !dbg !3552
  %1780 = add nsw i32 %1779, 1, !dbg !3552
  store i32 %1780, ptr %221, align 4, !dbg !3552
  br label %1751, !dbg !3553, !llvm.loop !3554

1781:                                             ; preds = %1751
  %1782 = load { <2 x float>, <2 x float> }, ptr %218, align 4, !dbg !3556
  %1783 = extractvalue { <2 x float>, <2 x float> } %1782, 0, !dbg !3539
  store <2 x float> %1783, ptr %240, align 4, !dbg !3539
  %1784 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %240, i32 0, i32 1, !dbg !3539
  %1785 = extractvalue { <2 x float>, <2 x float> } %1782, 1, !dbg !3539
  store <2 x float> %1785, ptr %1784, align 4, !dbg !3539
  %1786 = load { <2 x float>, <2 x float> }, ptr %240, align 4, !dbg !3557
  %1787 = extractvalue { <2 x float>, <2 x float> } %1786, 0, !dbg !3533
  store <2 x float> %1787, ptr %340, align 4, !dbg !3533
  %1788 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %340, i32 0, i32 1, !dbg !3533
  %1789 = extractvalue { <2 x float>, <2 x float> } %1786, 1, !dbg !3533
  store <2 x float> %1789, ptr %1788, align 4, !dbg !3533
  %1790 = load ptr, ptr %338, align 8, !dbg !3558
  %1791 = load i32, ptr %339, align 4, !dbg !3559
  store ptr %1790, ptr %334, align 8
  call void @llvm.dbg.declare(metadata ptr %334, metadata !2006, metadata !DIExpression()), !dbg !3560
  store i32 %1791, ptr %335, align 4
  call void @llvm.dbg.declare(metadata ptr %335, metadata !2011, metadata !DIExpression()), !dbg !3562
  %1792 = load ptr, ptr %334, align 8
  %1793 = load i32, ptr %335, align 4, !dbg !3563
  %1794 = sext i32 %1793 to i64, !dbg !3564
  %1795 = getelementptr inbounds [1 x %struct.sse_f], ptr %1792, i64 0, i64 %1794, !dbg !3564
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1795, ptr align 4 %340, i64 16, i1 false), !dbg !3565
  %1796 = load i32, ptr %339, align 4, !dbg !3566
  %1797 = add nsw i32 %1796, 1, !dbg !3566
  store i32 %1797, ptr %339, align 4, !dbg !3566
  br label %1719, !dbg !3567, !llvm.loop !3568

1798:                                             ; preds = %1719
  %1799 = getelementptr inbounds %"class.RTTL::RTBox_t", ptr %1715, i32 0, i32 1, !dbg !3570
  %1800 = load ptr, ptr %565, align 8, !dbg !3571
  %1801 = getelementptr inbounds %"class.RTTL::RTBox_t", ptr %1800, i32 0, i32 1, !dbg !3572
  store ptr %1799, ptr %281, align 8
  call void @llvm.dbg.declare(metadata ptr %281, metadata !2069, metadata !DIExpression()), !dbg !3573
  store ptr %1801, ptr %282, align 8
  call void @llvm.dbg.declare(metadata ptr %282, metadata !2073, metadata !DIExpression()), !dbg !3575
  %1802 = load ptr, ptr %281, align 8
  call void @llvm.dbg.declare(metadata ptr %283, metadata !2075, metadata !DIExpression()), !dbg !3576
  %1803 = call noundef nonnull align 4 dereferenceable(16) ptr @_ZN4RTTL7RTVec_tILi1E5sse_fLi0EEcvRNS_8RTData_tILi1ES1_Li0EEEEv(ptr noundef nonnull align 4 dereferenceable(16) %1802), !dbg !3577
  store ptr %1803, ptr %283, align 8, !dbg !3576
  call void @llvm.dbg.declare(metadata ptr %284, metadata !2078, metadata !DIExpression()), !dbg !3578
  store i32 0, ptr %284, align 4, !dbg !3578
  br label %1804, !dbg !3579

1804:                                             ; preds = %1866, %1798
  %1805 = load i32, ptr %284, align 4, !dbg !3580
  %1806 = icmp slt i32 %1805, 1, !dbg !3581
  br i1 %1806, label %1807, label %1883, !dbg !3582

1807:                                             ; preds = %1804
  %1808 = load ptr, ptr %283, align 8, !dbg !3583
  %1809 = load i32, ptr %284, align 4, !dbg !3584
  store ptr %1808, ptr %277, align 8
  call void @llvm.dbg.declare(metadata ptr %277, metadata !2006, metadata !DIExpression()), !dbg !3585
  store i32 %1809, ptr %278, align 4
  call void @llvm.dbg.declare(metadata ptr %278, metadata !2011, metadata !DIExpression()), !dbg !3587
  %1810 = load ptr, ptr %277, align 8
  %1811 = load i32, ptr %278, align 4, !dbg !3588
  %1812 = sext i32 %1811 to i64, !dbg !3589
  %1813 = getelementptr inbounds [1 x %struct.sse_f], ptr %1810, i64 0, i64 %1812, !dbg !3589
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %286, ptr align 4 %1813, i64 16, i1 false), !dbg !3583
  %1814 = load ptr, ptr %282, align 8, !dbg !3590
  %1815 = load i32, ptr %284, align 4, !dbg !3591
  %1816 = call { <2 x float>, <2 x float> } @_ZNK4RTTL7RTVec_tILi1E5sse_fLi0EEixEi(ptr noundef nonnull align 4 dereferenceable(16) %1814, i32 noundef %1815), !dbg !3590
  %1817 = extractvalue { <2 x float>, <2 x float> } %1816, 0, !dbg !3590
  store <2 x float> %1817, ptr %287, align 4, !dbg !3590
  %1818 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %287, i32 0, i32 1, !dbg !3590
  %1819 = extractvalue { <2 x float>, <2 x float> } %1816, 1, !dbg !3590
  store <2 x float> %1819, ptr %1818, align 4, !dbg !3590
  %1820 = load <2 x float>, ptr %286, align 4, !dbg !3592
  %1821 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %286, i32 0, i32 1, !dbg !3592
  %1822 = load <2 x float>, ptr %1821, align 4, !dbg !3592
  %1823 = load <2 x float>, ptr %287, align 4, !dbg !3592
  %1824 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %287, i32 0, i32 1, !dbg !3592
  %1825 = load <2 x float>, ptr %1824, align 4, !dbg !3592
  store <2 x float> %1820, ptr %196, align 4
  %1826 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %196, i32 0, i32 1
  store <2 x float> %1822, ptr %1826, align 4
  store <2 x float> %1823, ptr %197, align 4
  %1827 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %197, i32 0, i32 1
  store <2 x float> %1825, ptr %1827, align 4
  call void @llvm.dbg.declare(metadata ptr %196, metadata !2096, metadata !DIExpression()), !dbg !3593
  call void @llvm.dbg.declare(metadata ptr %197, metadata !2100, metadata !DIExpression()), !dbg !3595
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %198, ptr align 4 %196, i64 16, i1 false), !dbg !3596
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %199, ptr align 4 %197, i64 16, i1 false), !dbg !3597
  %1828 = load <2 x float>, ptr %198, align 4, !dbg !3598
  %1829 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %198, i32 0, i32 1, !dbg !3598
  %1830 = load <2 x float>, ptr %1829, align 4, !dbg !3598
  %1831 = load <2 x float>, ptr %199, align 4, !dbg !3598
  %1832 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %199, i32 0, i32 1, !dbg !3598
  %1833 = load <2 x float>, ptr %1832, align 4, !dbg !3598
  store <2 x float> %1828, ptr %174, align 4
  %1834 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %174, i32 0, i32 1
  store <2 x float> %1830, ptr %1834, align 4
  store <2 x float> %1831, ptr %175, align 4
  %1835 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %175, i32 0, i32 1
  store <2 x float> %1833, ptr %1835, align 4
  call void @llvm.dbg.declare(metadata ptr %174, metadata !2105, metadata !DIExpression()), !dbg !3599
  call void @llvm.dbg.declare(metadata ptr %175, metadata !2109, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.declare(metadata ptr %173, metadata !2111, metadata !DIExpression()), !dbg !3602
  call void @_ZN5sse_fC2Ev(ptr noundef nonnull align 4 dereferenceable(16) %173), !dbg !3602
  call void @llvm.dbg.declare(metadata ptr %176, metadata !2113, metadata !DIExpression()), !dbg !3603
  store i32 0, ptr %176, align 4, !dbg !3603
  br label %1836, !dbg !3604

1836:                                             ; preds = %1859, %1807
  %1837 = load i32, ptr %176, align 4, !dbg !3605
  %1838 = icmp slt i32 %1837, 4, !dbg !3606
  br i1 %1838, label %1839, label %1866, !dbg !3607

1839:                                             ; preds = %1836
  %1840 = load i32, ptr %176, align 4, !dbg !3608
  %1841 = sext i32 %1840 to i64, !dbg !3608
  %1842 = getelementptr inbounds [4 x float], ptr %174, i64 0, i64 %1841, !dbg !3608
  %1843 = load float, ptr %1842, align 4, !dbg !3608
  %1844 = load i32, ptr %176, align 4, !dbg !3608
  %1845 = sext i32 %1844 to i64, !dbg !3608
  %1846 = getelementptr inbounds [4 x float], ptr %175, i64 0, i64 %1845, !dbg !3608
  %1847 = load float, ptr %1846, align 4, !dbg !3608
  %1848 = fcmp ogt float %1843, %1847, !dbg !3608
  br i1 %1848, label %1849, label %1854, !dbg !3608

1849:                                             ; preds = %1839
  %1850 = load i32, ptr %176, align 4, !dbg !3608
  %1851 = sext i32 %1850 to i64, !dbg !3608
  %1852 = getelementptr inbounds [4 x float], ptr %174, i64 0, i64 %1851, !dbg !3608
  %1853 = load float, ptr %1852, align 4, !dbg !3608
  br label %1859, !dbg !3608

1854:                                             ; preds = %1839
  %1855 = load i32, ptr %176, align 4, !dbg !3608
  %1856 = sext i32 %1855 to i64, !dbg !3608
  %1857 = getelementptr inbounds [4 x float], ptr %175, i64 0, i64 %1856, !dbg !3608
  %1858 = load float, ptr %1857, align 4, !dbg !3608
  br label %1859, !dbg !3608

1859:                                             ; preds = %1854, %1849
  %1860 = phi float [ %1853, %1849 ], [ %1858, %1854 ], !dbg !3608
  %1861 = load i32, ptr %176, align 4, !dbg !3609
  %1862 = sext i32 %1861 to i64, !dbg !3609
  %1863 = getelementptr inbounds [4 x float], ptr %173, i64 0, i64 %1862, !dbg !3609
  store float %1860, ptr %1863, align 4, !dbg !3610
  %1864 = load i32, ptr %176, align 4, !dbg !3611
  %1865 = add nsw i32 %1864, 1, !dbg !3611
  store i32 %1865, ptr %176, align 4, !dbg !3611
  br label %1836, !dbg !3612, !llvm.loop !3613

1866:                                             ; preds = %1836
  %1867 = load { <2 x float>, <2 x float> }, ptr %173, align 4, !dbg !3615
  %1868 = extractvalue { <2 x float>, <2 x float> } %1867, 0, !dbg !3598
  store <2 x float> %1868, ptr %195, align 4, !dbg !3598
  %1869 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %195, i32 0, i32 1, !dbg !3598
  %1870 = extractvalue { <2 x float>, <2 x float> } %1867, 1, !dbg !3598
  store <2 x float> %1870, ptr %1869, align 4, !dbg !3598
  %1871 = load { <2 x float>, <2 x float> }, ptr %195, align 4, !dbg !3616
  %1872 = extractvalue { <2 x float>, <2 x float> } %1871, 0, !dbg !3592
  store <2 x float> %1872, ptr %285, align 4, !dbg !3592
  %1873 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %285, i32 0, i32 1, !dbg !3592
  %1874 = extractvalue { <2 x float>, <2 x float> } %1871, 1, !dbg !3592
  store <2 x float> %1874, ptr %1873, align 4, !dbg !3592
  %1875 = load ptr, ptr %283, align 8, !dbg !3617
  %1876 = load i32, ptr %284, align 4, !dbg !3618
  store ptr %1875, ptr %279, align 8
  call void @llvm.dbg.declare(metadata ptr %279, metadata !2006, metadata !DIExpression()), !dbg !3619
  store i32 %1876, ptr %280, align 4
  call void @llvm.dbg.declare(metadata ptr %280, metadata !2011, metadata !DIExpression()), !dbg !3621
  %1877 = load ptr, ptr %279, align 8
  %1878 = load i32, ptr %280, align 4, !dbg !3622
  %1879 = sext i32 %1878 to i64, !dbg !3623
  %1880 = getelementptr inbounds [1 x %struct.sse_f], ptr %1877, i64 0, i64 %1879, !dbg !3623
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1880, ptr align 4 %285, i64 16, i1 false), !dbg !3624
  %1881 = load i32, ptr %284, align 4, !dbg !3625
  %1882 = add nsw i32 %1881, 1, !dbg !3625
  store i32 %1882, ptr %284, align 4, !dbg !3625
  br label %1804, !dbg !3626, !llvm.loop !3627

1883:                                             ; preds = %1804
  %1884 = load i32, ptr %581, align 4, !dbg !3629
  %1885 = sext i32 %1884 to i64, !dbg !3630
  %1886 = getelementptr inbounds [32 x %"class.RTTL::AABB"], ptr getelementptr inbounds ([3 x [32 x %"class.RTTL::AABB"]], ptr @_ZN4RTTL15OnDemandBuilder9binBoundsE, i64 0, i64 1), i64 0, i64 %1885, !dbg !3630
  store ptr %1886, ptr %566, align 8
  call void @llvm.dbg.declare(metadata ptr %566, metadata !1978, metadata !DIExpression()), !dbg !3631
  store ptr %583, ptr %567, align 8
  call void @llvm.dbg.declare(metadata ptr %567, metadata !1983, metadata !DIExpression()), !dbg !3633
  %1887 = load ptr, ptr %566, align 8
  %1888 = load ptr, ptr %567, align 8, !dbg !3634
  store ptr %1887, ptr %347, align 8
  call void @llvm.dbg.declare(metadata ptr %347, metadata !1986, metadata !DIExpression()), !dbg !3635
  store ptr %1888, ptr %348, align 8
  call void @llvm.dbg.declare(metadata ptr %348, metadata !1991, metadata !DIExpression()), !dbg !3637
  %1889 = load ptr, ptr %347, align 8
  call void @llvm.dbg.declare(metadata ptr %349, metadata !1993, metadata !DIExpression()), !dbg !3638
  %1890 = call noundef nonnull align 4 dereferenceable(16) ptr @_ZN4RTTL7RTVec_tILi1E5sse_fLi0EEcvRNS_8RTData_tILi1ES1_Li0EEEEv(ptr noundef nonnull align 4 dereferenceable(16) %1889), !dbg !3639
  store ptr %1890, ptr %349, align 8, !dbg !3638
  call void @llvm.dbg.declare(metadata ptr %350, metadata !1996, metadata !DIExpression()), !dbg !3640
  store i32 0, ptr %350, align 4, !dbg !3640
  br label %1891, !dbg !3641

1891:                                             ; preds = %1953, %1883
  %1892 = load i32, ptr %350, align 4, !dbg !3642
  %1893 = icmp slt i32 %1892, 1, !dbg !3643
  br i1 %1893, label %1894, label %1970, !dbg !3644

1894:                                             ; preds = %1891
  %1895 = load ptr, ptr %349, align 8, !dbg !3645
  %1896 = load i32, ptr %350, align 4, !dbg !3646
  store ptr %1895, ptr %343, align 8
  call void @llvm.dbg.declare(metadata ptr %343, metadata !2006, metadata !DIExpression()), !dbg !3647
  store i32 %1896, ptr %344, align 4
  call void @llvm.dbg.declare(metadata ptr %344, metadata !2011, metadata !DIExpression()), !dbg !3649
  %1897 = load ptr, ptr %343, align 8
  %1898 = load i32, ptr %344, align 4, !dbg !3650
  %1899 = sext i32 %1898 to i64, !dbg !3651
  %1900 = getelementptr inbounds [1 x %struct.sse_f], ptr %1897, i64 0, i64 %1899, !dbg !3651
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %352, ptr align 4 %1900, i64 16, i1 false), !dbg !3645
  %1901 = load ptr, ptr %348, align 8, !dbg !3652
  %1902 = load i32, ptr %350, align 4, !dbg !3653
  %1903 = call { <2 x float>, <2 x float> } @_ZNK4RTTL7RTVec_tILi1E5sse_fLi0EEixEi(ptr noundef nonnull align 4 dereferenceable(16) %1901, i32 noundef %1902), !dbg !3652
  %1904 = extractvalue { <2 x float>, <2 x float> } %1903, 0, !dbg !3652
  store <2 x float> %1904, ptr %353, align 4, !dbg !3652
  %1905 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %353, i32 0, i32 1, !dbg !3652
  %1906 = extractvalue { <2 x float>, <2 x float> } %1903, 1, !dbg !3652
  store <2 x float> %1906, ptr %1905, align 4, !dbg !3652
  %1907 = load <2 x float>, ptr %352, align 4, !dbg !3654
  %1908 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %352, i32 0, i32 1, !dbg !3654
  %1909 = load <2 x float>, ptr %1908, align 4, !dbg !3654
  %1910 = load <2 x float>, ptr %353, align 4, !dbg !3654
  %1911 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %353, i32 0, i32 1, !dbg !3654
  %1912 = load <2 x float>, ptr %1911, align 4, !dbg !3654
  store <2 x float> %1907, ptr %236, align 4
  %1913 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %236, i32 0, i32 1
  store <2 x float> %1909, ptr %1913, align 4
  store <2 x float> %1910, ptr %237, align 4
  %1914 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %237, i32 0, i32 1
  store <2 x float> %1912, ptr %1914, align 4
  call void @llvm.dbg.declare(metadata ptr %236, metadata !2018, metadata !DIExpression()), !dbg !3655
  call void @llvm.dbg.declare(metadata ptr %237, metadata !2024, metadata !DIExpression()), !dbg !3657
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %238, ptr align 4 %236, i64 16, i1 false), !dbg !3658
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %239, ptr align 4 %237, i64 16, i1 false), !dbg !3659
  %1915 = load <2 x float>, ptr %238, align 4, !dbg !3660
  %1916 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %238, i32 0, i32 1, !dbg !3660
  %1917 = load <2 x float>, ptr %1916, align 4, !dbg !3660
  %1918 = load <2 x float>, ptr %239, align 4, !dbg !3660
  %1919 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %239, i32 0, i32 1, !dbg !3660
  %1920 = load <2 x float>, ptr %1919, align 4, !dbg !3660
  store <2 x float> %1915, ptr %223, align 4
  %1921 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %223, i32 0, i32 1
  store <2 x float> %1917, ptr %1921, align 4
  store <2 x float> %1918, ptr %224, align 4
  %1922 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %224, i32 0, i32 1
  store <2 x float> %1920, ptr %1922, align 4
  call void @llvm.dbg.declare(metadata ptr %223, metadata !2029, metadata !DIExpression()), !dbg !3661
  call void @llvm.dbg.declare(metadata ptr %224, metadata !2033, metadata !DIExpression()), !dbg !3663
  call void @llvm.dbg.declare(metadata ptr %222, metadata !2035, metadata !DIExpression()), !dbg !3664
  call void @_ZN5sse_fC2Ev(ptr noundef nonnull align 4 dereferenceable(16) %222), !dbg !3664
  call void @llvm.dbg.declare(metadata ptr %225, metadata !2037, metadata !DIExpression()), !dbg !3665
  store i32 0, ptr %225, align 4, !dbg !3665
  br label %1923, !dbg !3666

1923:                                             ; preds = %1946, %1894
  %1924 = load i32, ptr %225, align 4, !dbg !3667
  %1925 = icmp slt i32 %1924, 4, !dbg !3668
  br i1 %1925, label %1926, label %1953, !dbg !3669

1926:                                             ; preds = %1923
  %1927 = load i32, ptr %225, align 4, !dbg !3670
  %1928 = sext i32 %1927 to i64, !dbg !3670
  %1929 = getelementptr inbounds [4 x float], ptr %223, i64 0, i64 %1928, !dbg !3670
  %1930 = load float, ptr %1929, align 4, !dbg !3670
  %1931 = load i32, ptr %225, align 4, !dbg !3670
  %1932 = sext i32 %1931 to i64, !dbg !3670
  %1933 = getelementptr inbounds [4 x float], ptr %224, i64 0, i64 %1932, !dbg !3670
  %1934 = load float, ptr %1933, align 4, !dbg !3670
  %1935 = fcmp olt float %1930, %1934, !dbg !3670
  br i1 %1935, label %1936, label %1941, !dbg !3670

1936:                                             ; preds = %1926
  %1937 = load i32, ptr %225, align 4, !dbg !3670
  %1938 = sext i32 %1937 to i64, !dbg !3670
  %1939 = getelementptr inbounds [4 x float], ptr %223, i64 0, i64 %1938, !dbg !3670
  %1940 = load float, ptr %1939, align 4, !dbg !3670
  br label %1946, !dbg !3670

1941:                                             ; preds = %1926
  %1942 = load i32, ptr %225, align 4, !dbg !3670
  %1943 = sext i32 %1942 to i64, !dbg !3670
  %1944 = getelementptr inbounds [4 x float], ptr %224, i64 0, i64 %1943, !dbg !3670
  %1945 = load float, ptr %1944, align 4, !dbg !3670
  br label %1946, !dbg !3670

1946:                                             ; preds = %1941, %1936
  %1947 = phi float [ %1940, %1936 ], [ %1945, %1941 ], !dbg !3670
  %1948 = load i32, ptr %225, align 4, !dbg !3671
  %1949 = sext i32 %1948 to i64, !dbg !3671
  %1950 = getelementptr inbounds [4 x float], ptr %222, i64 0, i64 %1949, !dbg !3671
  store float %1947, ptr %1950, align 4, !dbg !3672
  %1951 = load i32, ptr %225, align 4, !dbg !3673
  %1952 = add nsw i32 %1951, 1, !dbg !3673
  store i32 %1952, ptr %225, align 4, !dbg !3673
  br label %1923, !dbg !3674, !llvm.loop !3675

1953:                                             ; preds = %1923
  %1954 = load { <2 x float>, <2 x float> }, ptr %222, align 4, !dbg !3677
  %1955 = extractvalue { <2 x float>, <2 x float> } %1954, 0, !dbg !3660
  store <2 x float> %1955, ptr %235, align 4, !dbg !3660
  %1956 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %235, i32 0, i32 1, !dbg !3660
  %1957 = extractvalue { <2 x float>, <2 x float> } %1954, 1, !dbg !3660
  store <2 x float> %1957, ptr %1956, align 4, !dbg !3660
  %1958 = load { <2 x float>, <2 x float> }, ptr %235, align 4, !dbg !3678
  %1959 = extractvalue { <2 x float>, <2 x float> } %1958, 0, !dbg !3654
  store <2 x float> %1959, ptr %351, align 4, !dbg !3654
  %1960 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %351, i32 0, i32 1, !dbg !3654
  %1961 = extractvalue { <2 x float>, <2 x float> } %1958, 1, !dbg !3654
  store <2 x float> %1961, ptr %1960, align 4, !dbg !3654
  %1962 = load ptr, ptr %349, align 8, !dbg !3679
  %1963 = load i32, ptr %350, align 4, !dbg !3680
  store ptr %1962, ptr %345, align 8
  call void @llvm.dbg.declare(metadata ptr %345, metadata !2006, metadata !DIExpression()), !dbg !3681
  store i32 %1963, ptr %346, align 4
  call void @llvm.dbg.declare(metadata ptr %346, metadata !2011, metadata !DIExpression()), !dbg !3683
  %1964 = load ptr, ptr %345, align 8
  %1965 = load i32, ptr %346, align 4, !dbg !3684
  %1966 = sext i32 %1965 to i64, !dbg !3685
  %1967 = getelementptr inbounds [1 x %struct.sse_f], ptr %1964, i64 0, i64 %1966, !dbg !3685
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1967, ptr align 4 %351, i64 16, i1 false), !dbg !3686
  %1968 = load i32, ptr %350, align 4, !dbg !3687
  %1969 = add nsw i32 %1968, 1, !dbg !3687
  store i32 %1969, ptr %350, align 4, !dbg !3687
  br label %1891, !dbg !3688, !llvm.loop !3689

1970:                                             ; preds = %1891
  %1971 = getelementptr inbounds %"class.RTTL::RTBox_t", ptr %1887, i32 0, i32 1, !dbg !3691
  %1972 = load ptr, ptr %567, align 8, !dbg !3692
  %1973 = getelementptr inbounds %"class.RTTL::RTBox_t", ptr %1972, i32 0, i32 1, !dbg !3693
  store ptr %1971, ptr %292, align 8
  call void @llvm.dbg.declare(metadata ptr %292, metadata !2069, metadata !DIExpression()), !dbg !3694
  store ptr %1973, ptr %293, align 8
  call void @llvm.dbg.declare(metadata ptr %293, metadata !2073, metadata !DIExpression()), !dbg !3696
  %1974 = load ptr, ptr %292, align 8
  call void @llvm.dbg.declare(metadata ptr %294, metadata !2075, metadata !DIExpression()), !dbg !3697
  %1975 = call noundef nonnull align 4 dereferenceable(16) ptr @_ZN4RTTL7RTVec_tILi1E5sse_fLi0EEcvRNS_8RTData_tILi1ES1_Li0EEEEv(ptr noundef nonnull align 4 dereferenceable(16) %1974), !dbg !3698
  store ptr %1975, ptr %294, align 8, !dbg !3697
  call void @llvm.dbg.declare(metadata ptr %295, metadata !2078, metadata !DIExpression()), !dbg !3699
  store i32 0, ptr %295, align 4, !dbg !3699
  br label %1976, !dbg !3700

1976:                                             ; preds = %2038, %1970
  %1977 = load i32, ptr %295, align 4, !dbg !3701
  %1978 = icmp slt i32 %1977, 1, !dbg !3702
  br i1 %1978, label %1979, label %2055, !dbg !3703

1979:                                             ; preds = %1976
  %1980 = load ptr, ptr %294, align 8, !dbg !3704
  %1981 = load i32, ptr %295, align 4, !dbg !3705
  store ptr %1980, ptr %288, align 8
  call void @llvm.dbg.declare(metadata ptr %288, metadata !2006, metadata !DIExpression()), !dbg !3706
  store i32 %1981, ptr %289, align 4
  call void @llvm.dbg.declare(metadata ptr %289, metadata !2011, metadata !DIExpression()), !dbg !3708
  %1982 = load ptr, ptr %288, align 8
  %1983 = load i32, ptr %289, align 4, !dbg !3709
  %1984 = sext i32 %1983 to i64, !dbg !3710
  %1985 = getelementptr inbounds [1 x %struct.sse_f], ptr %1982, i64 0, i64 %1984, !dbg !3710
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %297, ptr align 4 %1985, i64 16, i1 false), !dbg !3704
  %1986 = load ptr, ptr %293, align 8, !dbg !3711
  %1987 = load i32, ptr %295, align 4, !dbg !3712
  %1988 = call { <2 x float>, <2 x float> } @_ZNK4RTTL7RTVec_tILi1E5sse_fLi0EEixEi(ptr noundef nonnull align 4 dereferenceable(16) %1986, i32 noundef %1987), !dbg !3711
  %1989 = extractvalue { <2 x float>, <2 x float> } %1988, 0, !dbg !3711
  store <2 x float> %1989, ptr %298, align 4, !dbg !3711
  %1990 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %298, i32 0, i32 1, !dbg !3711
  %1991 = extractvalue { <2 x float>, <2 x float> } %1988, 1, !dbg !3711
  store <2 x float> %1991, ptr %1990, align 4, !dbg !3711
  %1992 = load <2 x float>, ptr %297, align 4, !dbg !3713
  %1993 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %297, i32 0, i32 1, !dbg !3713
  %1994 = load <2 x float>, ptr %1993, align 4, !dbg !3713
  %1995 = load <2 x float>, ptr %298, align 4, !dbg !3713
  %1996 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %298, i32 0, i32 1, !dbg !3713
  %1997 = load <2 x float>, ptr %1996, align 4, !dbg !3713
  store <2 x float> %1992, ptr %191, align 4
  %1998 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %191, i32 0, i32 1
  store <2 x float> %1994, ptr %1998, align 4
  store <2 x float> %1995, ptr %192, align 4
  %1999 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %192, i32 0, i32 1
  store <2 x float> %1997, ptr %1999, align 4
  call void @llvm.dbg.declare(metadata ptr %191, metadata !2096, metadata !DIExpression()), !dbg !3714
  call void @llvm.dbg.declare(metadata ptr %192, metadata !2100, metadata !DIExpression()), !dbg !3716
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %193, ptr align 4 %191, i64 16, i1 false), !dbg !3717
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %194, ptr align 4 %192, i64 16, i1 false), !dbg !3718
  %2000 = load <2 x float>, ptr %193, align 4, !dbg !3719
  %2001 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %193, i32 0, i32 1, !dbg !3719
  %2002 = load <2 x float>, ptr %2001, align 4, !dbg !3719
  %2003 = load <2 x float>, ptr %194, align 4, !dbg !3719
  %2004 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %194, i32 0, i32 1, !dbg !3719
  %2005 = load <2 x float>, ptr %2004, align 4, !dbg !3719
  store <2 x float> %2000, ptr %178, align 4
  %2006 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %178, i32 0, i32 1
  store <2 x float> %2002, ptr %2006, align 4
  store <2 x float> %2003, ptr %179, align 4
  %2007 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %179, i32 0, i32 1
  store <2 x float> %2005, ptr %2007, align 4
  call void @llvm.dbg.declare(metadata ptr %178, metadata !2105, metadata !DIExpression()), !dbg !3720
  call void @llvm.dbg.declare(metadata ptr %179, metadata !2109, metadata !DIExpression()), !dbg !3722
  call void @llvm.dbg.declare(metadata ptr %177, metadata !2111, metadata !DIExpression()), !dbg !3723
  call void @_ZN5sse_fC2Ev(ptr noundef nonnull align 4 dereferenceable(16) %177), !dbg !3723
  call void @llvm.dbg.declare(metadata ptr %180, metadata !2113, metadata !DIExpression()), !dbg !3724
  store i32 0, ptr %180, align 4, !dbg !3724
  br label %2008, !dbg !3725

2008:                                             ; preds = %2031, %1979
  %2009 = load i32, ptr %180, align 4, !dbg !3726
  %2010 = icmp slt i32 %2009, 4, !dbg !3727
  br i1 %2010, label %2011, label %2038, !dbg !3728

2011:                                             ; preds = %2008
  %2012 = load i32, ptr %180, align 4, !dbg !3729
  %2013 = sext i32 %2012 to i64, !dbg !3729
  %2014 = getelementptr inbounds [4 x float], ptr %178, i64 0, i64 %2013, !dbg !3729
  %2015 = load float, ptr %2014, align 4, !dbg !3729
  %2016 = load i32, ptr %180, align 4, !dbg !3729
  %2017 = sext i32 %2016 to i64, !dbg !3729
  %2018 = getelementptr inbounds [4 x float], ptr %179, i64 0, i64 %2017, !dbg !3729
  %2019 = load float, ptr %2018, align 4, !dbg !3729
  %2020 = fcmp ogt float %2015, %2019, !dbg !3729
  br i1 %2020, label %2021, label %2026, !dbg !3729

2021:                                             ; preds = %2011
  %2022 = load i32, ptr %180, align 4, !dbg !3729
  %2023 = sext i32 %2022 to i64, !dbg !3729
  %2024 = getelementptr inbounds [4 x float], ptr %178, i64 0, i64 %2023, !dbg !3729
  %2025 = load float, ptr %2024, align 4, !dbg !3729
  br label %2031, !dbg !3729

2026:                                             ; preds = %2011
  %2027 = load i32, ptr %180, align 4, !dbg !3729
  %2028 = sext i32 %2027 to i64, !dbg !3729
  %2029 = getelementptr inbounds [4 x float], ptr %179, i64 0, i64 %2028, !dbg !3729
  %2030 = load float, ptr %2029, align 4, !dbg !3729
  br label %2031, !dbg !3729

2031:                                             ; preds = %2026, %2021
  %2032 = phi float [ %2025, %2021 ], [ %2030, %2026 ], !dbg !3729
  %2033 = load i32, ptr %180, align 4, !dbg !3730
  %2034 = sext i32 %2033 to i64, !dbg !3730
  %2035 = getelementptr inbounds [4 x float], ptr %177, i64 0, i64 %2034, !dbg !3730
  store float %2032, ptr %2035, align 4, !dbg !3731
  %2036 = load i32, ptr %180, align 4, !dbg !3732
  %2037 = add nsw i32 %2036, 1, !dbg !3732
  store i32 %2037, ptr %180, align 4, !dbg !3732
  br label %2008, !dbg !3733, !llvm.loop !3734

2038:                                             ; preds = %2008
  %2039 = load { <2 x float>, <2 x float> }, ptr %177, align 4, !dbg !3736
  %2040 = extractvalue { <2 x float>, <2 x float> } %2039, 0, !dbg !3719
  store <2 x float> %2040, ptr %190, align 4, !dbg !3719
  %2041 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %190, i32 0, i32 1, !dbg !3719
  %2042 = extractvalue { <2 x float>, <2 x float> } %2039, 1, !dbg !3719
  store <2 x float> %2042, ptr %2041, align 4, !dbg !3719
  %2043 = load { <2 x float>, <2 x float> }, ptr %190, align 4, !dbg !3737
  %2044 = extractvalue { <2 x float>, <2 x float> } %2043, 0, !dbg !3713
  store <2 x float> %2044, ptr %296, align 4, !dbg !3713
  %2045 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %296, i32 0, i32 1, !dbg !3713
  %2046 = extractvalue { <2 x float>, <2 x float> } %2043, 1, !dbg !3713
  store <2 x float> %2046, ptr %2045, align 4, !dbg !3713
  %2047 = load ptr, ptr %294, align 8, !dbg !3738
  %2048 = load i32, ptr %295, align 4, !dbg !3739
  store ptr %2047, ptr %290, align 8
  call void @llvm.dbg.declare(metadata ptr %290, metadata !2006, metadata !DIExpression()), !dbg !3740
  store i32 %2048, ptr %291, align 4
  call void @llvm.dbg.declare(metadata ptr %291, metadata !2011, metadata !DIExpression()), !dbg !3742
  %2049 = load ptr, ptr %290, align 8
  %2050 = load i32, ptr %291, align 4, !dbg !3743
  %2051 = sext i32 %2050 to i64, !dbg !3744
  %2052 = getelementptr inbounds [1 x %struct.sse_f], ptr %2049, i64 0, i64 %2051, !dbg !3744
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2052, ptr align 4 %296, i64 16, i1 false), !dbg !3745
  %2053 = load i32, ptr %295, align 4, !dbg !3746
  %2054 = add nsw i32 %2053, 1, !dbg !3746
  store i32 %2054, ptr %295, align 4, !dbg !3746
  br label %1976, !dbg !3747, !llvm.loop !3748

2055:                                             ; preds = %1976
  %2056 = load i32, ptr %582, align 4, !dbg !3750
  %2057 = sext i32 %2056 to i64, !dbg !3751
  %2058 = getelementptr inbounds [32 x %"class.RTTL::AABB"], ptr getelementptr inbounds ([3 x [32 x %"class.RTTL::AABB"]], ptr @_ZN4RTTL15OnDemandBuilder9binBoundsE, i64 0, i64 2), i64 0, i64 %2057, !dbg !3751
  store ptr %2058, ptr %568, align 8
  call void @llvm.dbg.declare(metadata ptr %568, metadata !1978, metadata !DIExpression()), !dbg !3752
  store ptr %583, ptr %569, align 8
  call void @llvm.dbg.declare(metadata ptr %569, metadata !1983, metadata !DIExpression()), !dbg !3754
  %2059 = load ptr, ptr %568, align 8
  %2060 = load ptr, ptr %569, align 8, !dbg !3755
  store ptr %2059, ptr %358, align 8
  call void @llvm.dbg.declare(metadata ptr %358, metadata !1986, metadata !DIExpression()), !dbg !3756
  store ptr %2060, ptr %359, align 8
  call void @llvm.dbg.declare(metadata ptr %359, metadata !1991, metadata !DIExpression()), !dbg !3758
  %2061 = load ptr, ptr %358, align 8
  call void @llvm.dbg.declare(metadata ptr %360, metadata !1993, metadata !DIExpression()), !dbg !3759
  %2062 = call noundef nonnull align 4 dereferenceable(16) ptr @_ZN4RTTL7RTVec_tILi1E5sse_fLi0EEcvRNS_8RTData_tILi1ES1_Li0EEEEv(ptr noundef nonnull align 4 dereferenceable(16) %2061), !dbg !3760
  store ptr %2062, ptr %360, align 8, !dbg !3759
  call void @llvm.dbg.declare(metadata ptr %361, metadata !1996, metadata !DIExpression()), !dbg !3761
  store i32 0, ptr %361, align 4, !dbg !3761
  br label %2063, !dbg !3762

2063:                                             ; preds = %2125, %2055
  %2064 = load i32, ptr %361, align 4, !dbg !3763
  %2065 = icmp slt i32 %2064, 1, !dbg !3764
  br i1 %2065, label %2066, label %2142, !dbg !3765

2066:                                             ; preds = %2063
  %2067 = load ptr, ptr %360, align 8, !dbg !3766
  %2068 = load i32, ptr %361, align 4, !dbg !3767
  store ptr %2067, ptr %354, align 8
  call void @llvm.dbg.declare(metadata ptr %354, metadata !2006, metadata !DIExpression()), !dbg !3768
  store i32 %2068, ptr %355, align 4
  call void @llvm.dbg.declare(metadata ptr %355, metadata !2011, metadata !DIExpression()), !dbg !3770
  %2069 = load ptr, ptr %354, align 8
  %2070 = load i32, ptr %355, align 4, !dbg !3771
  %2071 = sext i32 %2070 to i64, !dbg !3772
  %2072 = getelementptr inbounds [1 x %struct.sse_f], ptr %2069, i64 0, i64 %2071, !dbg !3772
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %363, ptr align 4 %2072, i64 16, i1 false), !dbg !3766
  %2073 = load ptr, ptr %359, align 8, !dbg !3773
  %2074 = load i32, ptr %361, align 4, !dbg !3774
  %2075 = call { <2 x float>, <2 x float> } @_ZNK4RTTL7RTVec_tILi1E5sse_fLi0EEixEi(ptr noundef nonnull align 4 dereferenceable(16) %2073, i32 noundef %2074), !dbg !3773
  %2076 = extractvalue { <2 x float>, <2 x float> } %2075, 0, !dbg !3773
  store <2 x float> %2076, ptr %364, align 4, !dbg !3773
  %2077 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %364, i32 0, i32 1, !dbg !3773
  %2078 = extractvalue { <2 x float>, <2 x float> } %2075, 1, !dbg !3773
  store <2 x float> %2078, ptr %2077, align 4, !dbg !3773
  %2079 = load <2 x float>, ptr %363, align 4, !dbg !3775
  %2080 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %363, i32 0, i32 1, !dbg !3775
  %2081 = load <2 x float>, ptr %2080, align 4, !dbg !3775
  %2082 = load <2 x float>, ptr %364, align 4, !dbg !3775
  %2083 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %364, i32 0, i32 1, !dbg !3775
  %2084 = load <2 x float>, ptr %2083, align 4, !dbg !3775
  store <2 x float> %2079, ptr %231, align 4
  %2085 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %231, i32 0, i32 1
  store <2 x float> %2081, ptr %2085, align 4
  store <2 x float> %2082, ptr %232, align 4
  %2086 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %232, i32 0, i32 1
  store <2 x float> %2084, ptr %2086, align 4
  call void @llvm.dbg.declare(metadata ptr %231, metadata !2018, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.declare(metadata ptr %232, metadata !2024, metadata !DIExpression()), !dbg !3778
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %233, ptr align 4 %231, i64 16, i1 false), !dbg !3779
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %234, ptr align 4 %232, i64 16, i1 false), !dbg !3780
  %2087 = load <2 x float>, ptr %233, align 4, !dbg !3781
  %2088 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %233, i32 0, i32 1, !dbg !3781
  %2089 = load <2 x float>, ptr %2088, align 4, !dbg !3781
  %2090 = load <2 x float>, ptr %234, align 4, !dbg !3781
  %2091 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %234, i32 0, i32 1, !dbg !3781
  %2092 = load <2 x float>, ptr %2091, align 4, !dbg !3781
  store <2 x float> %2087, ptr %227, align 4
  %2093 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %227, i32 0, i32 1
  store <2 x float> %2089, ptr %2093, align 4
  store <2 x float> %2090, ptr %228, align 4
  %2094 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %228, i32 0, i32 1
  store <2 x float> %2092, ptr %2094, align 4
  call void @llvm.dbg.declare(metadata ptr %227, metadata !2029, metadata !DIExpression()), !dbg !3782
  call void @llvm.dbg.declare(metadata ptr %228, metadata !2033, metadata !DIExpression()), !dbg !3784
  call void @llvm.dbg.declare(metadata ptr %226, metadata !2035, metadata !DIExpression()), !dbg !3785
  call void @_ZN5sse_fC2Ev(ptr noundef nonnull align 4 dereferenceable(16) %226), !dbg !3785
  call void @llvm.dbg.declare(metadata ptr %229, metadata !2037, metadata !DIExpression()), !dbg !3786
  store i32 0, ptr %229, align 4, !dbg !3786
  br label %2095, !dbg !3787

2095:                                             ; preds = %2118, %2066
  %2096 = load i32, ptr %229, align 4, !dbg !3788
  %2097 = icmp slt i32 %2096, 4, !dbg !3789
  br i1 %2097, label %2098, label %2125, !dbg !3790

2098:                                             ; preds = %2095
  %2099 = load i32, ptr %229, align 4, !dbg !3791
  %2100 = sext i32 %2099 to i64, !dbg !3791
  %2101 = getelementptr inbounds [4 x float], ptr %227, i64 0, i64 %2100, !dbg !3791
  %2102 = load float, ptr %2101, align 4, !dbg !3791
  %2103 = load i32, ptr %229, align 4, !dbg !3791
  %2104 = sext i32 %2103 to i64, !dbg !3791
  %2105 = getelementptr inbounds [4 x float], ptr %228, i64 0, i64 %2104, !dbg !3791
  %2106 = load float, ptr %2105, align 4, !dbg !3791
  %2107 = fcmp olt float %2102, %2106, !dbg !3791
  br i1 %2107, label %2108, label %2113, !dbg !3791

2108:                                             ; preds = %2098
  %2109 = load i32, ptr %229, align 4, !dbg !3791
  %2110 = sext i32 %2109 to i64, !dbg !3791
  %2111 = getelementptr inbounds [4 x float], ptr %227, i64 0, i64 %2110, !dbg !3791
  %2112 = load float, ptr %2111, align 4, !dbg !3791
  br label %2118, !dbg !3791

2113:                                             ; preds = %2098
  %2114 = load i32, ptr %229, align 4, !dbg !3791
  %2115 = sext i32 %2114 to i64, !dbg !3791
  %2116 = getelementptr inbounds [4 x float], ptr %228, i64 0, i64 %2115, !dbg !3791
  %2117 = load float, ptr %2116, align 4, !dbg !3791
  br label %2118, !dbg !3791

2118:                                             ; preds = %2113, %2108
  %2119 = phi float [ %2112, %2108 ], [ %2117, %2113 ], !dbg !3791
  %2120 = load i32, ptr %229, align 4, !dbg !3792
  %2121 = sext i32 %2120 to i64, !dbg !3792
  %2122 = getelementptr inbounds [4 x float], ptr %226, i64 0, i64 %2121, !dbg !3792
  store float %2119, ptr %2122, align 4, !dbg !3793
  %2123 = load i32, ptr %229, align 4, !dbg !3794
  %2124 = add nsw i32 %2123, 1, !dbg !3794
  store i32 %2124, ptr %229, align 4, !dbg !3794
  br label %2095, !dbg !3795, !llvm.loop !3796

2125:                                             ; preds = %2095
  %2126 = load { <2 x float>, <2 x float> }, ptr %226, align 4, !dbg !3798
  %2127 = extractvalue { <2 x float>, <2 x float> } %2126, 0, !dbg !3781
  store <2 x float> %2127, ptr %230, align 4, !dbg !3781
  %2128 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %230, i32 0, i32 1, !dbg !3781
  %2129 = extractvalue { <2 x float>, <2 x float> } %2126, 1, !dbg !3781
  store <2 x float> %2129, ptr %2128, align 4, !dbg !3781
  %2130 = load { <2 x float>, <2 x float> }, ptr %230, align 4, !dbg !3799
  %2131 = extractvalue { <2 x float>, <2 x float> } %2130, 0, !dbg !3775
  store <2 x float> %2131, ptr %362, align 4, !dbg !3775
  %2132 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %362, i32 0, i32 1, !dbg !3775
  %2133 = extractvalue { <2 x float>, <2 x float> } %2130, 1, !dbg !3775
  store <2 x float> %2133, ptr %2132, align 4, !dbg !3775
  %2134 = load ptr, ptr %360, align 8, !dbg !3800
  %2135 = load i32, ptr %361, align 4, !dbg !3801
  store ptr %2134, ptr %356, align 8
  call void @llvm.dbg.declare(metadata ptr %356, metadata !2006, metadata !DIExpression()), !dbg !3802
  store i32 %2135, ptr %357, align 4
  call void @llvm.dbg.declare(metadata ptr %357, metadata !2011, metadata !DIExpression()), !dbg !3804
  %2136 = load ptr, ptr %356, align 8
  %2137 = load i32, ptr %357, align 4, !dbg !3805
  %2138 = sext i32 %2137 to i64, !dbg !3806
  %2139 = getelementptr inbounds [1 x %struct.sse_f], ptr %2136, i64 0, i64 %2138, !dbg !3806
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2139, ptr align 4 %362, i64 16, i1 false), !dbg !3807
  %2140 = load i32, ptr %361, align 4, !dbg !3808
  %2141 = add nsw i32 %2140, 1, !dbg !3808
  store i32 %2141, ptr %361, align 4, !dbg !3808
  br label %2063, !dbg !3809, !llvm.loop !3810

2142:                                             ; preds = %2063
  %2143 = getelementptr inbounds %"class.RTTL::RTBox_t", ptr %2059, i32 0, i32 1, !dbg !3812
  %2144 = load ptr, ptr %569, align 8, !dbg !3813
  %2145 = getelementptr inbounds %"class.RTTL::RTBox_t", ptr %2144, i32 0, i32 1, !dbg !3814
  store ptr %2143, ptr %303, align 8
  call void @llvm.dbg.declare(metadata ptr %303, metadata !2069, metadata !DIExpression()), !dbg !3815
  store ptr %2145, ptr %304, align 8
  call void @llvm.dbg.declare(metadata ptr %304, metadata !2073, metadata !DIExpression()), !dbg !3817
  %2146 = load ptr, ptr %303, align 8
  call void @llvm.dbg.declare(metadata ptr %305, metadata !2075, metadata !DIExpression()), !dbg !3818
  %2147 = call noundef nonnull align 4 dereferenceable(16) ptr @_ZN4RTTL7RTVec_tILi1E5sse_fLi0EEcvRNS_8RTData_tILi1ES1_Li0EEEEv(ptr noundef nonnull align 4 dereferenceable(16) %2146), !dbg !3819
  store ptr %2147, ptr %305, align 8, !dbg !3818
  call void @llvm.dbg.declare(metadata ptr %306, metadata !2078, metadata !DIExpression()), !dbg !3820
  store i32 0, ptr %306, align 4, !dbg !3820
  br label %2148, !dbg !3821

2148:                                             ; preds = %2210, %2142
  %2149 = load i32, ptr %306, align 4, !dbg !3822
  %2150 = icmp slt i32 %2149, 1, !dbg !3823
  br i1 %2150, label %2151, label %2227, !dbg !3824

2151:                                             ; preds = %2148
  %2152 = load ptr, ptr %305, align 8, !dbg !3825
  %2153 = load i32, ptr %306, align 4, !dbg !3826
  store ptr %2152, ptr %299, align 8
  call void @llvm.dbg.declare(metadata ptr %299, metadata !2006, metadata !DIExpression()), !dbg !3827
  store i32 %2153, ptr %300, align 4
  call void @llvm.dbg.declare(metadata ptr %300, metadata !2011, metadata !DIExpression()), !dbg !3829
  %2154 = load ptr, ptr %299, align 8
  %2155 = load i32, ptr %300, align 4, !dbg !3830
  %2156 = sext i32 %2155 to i64, !dbg !3831
  %2157 = getelementptr inbounds [1 x %struct.sse_f], ptr %2154, i64 0, i64 %2156, !dbg !3831
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %308, ptr align 4 %2157, i64 16, i1 false), !dbg !3825
  %2158 = load ptr, ptr %304, align 8, !dbg !3832
  %2159 = load i32, ptr %306, align 4, !dbg !3833
  %2160 = call { <2 x float>, <2 x float> } @_ZNK4RTTL7RTVec_tILi1E5sse_fLi0EEixEi(ptr noundef nonnull align 4 dereferenceable(16) %2158, i32 noundef %2159), !dbg !3832
  %2161 = extractvalue { <2 x float>, <2 x float> } %2160, 0, !dbg !3832
  store <2 x float> %2161, ptr %309, align 4, !dbg !3832
  %2162 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %309, i32 0, i32 1, !dbg !3832
  %2163 = extractvalue { <2 x float>, <2 x float> } %2160, 1, !dbg !3832
  store <2 x float> %2163, ptr %2162, align 4, !dbg !3832
  %2164 = load <2 x float>, ptr %308, align 4, !dbg !3834
  %2165 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %308, i32 0, i32 1, !dbg !3834
  %2166 = load <2 x float>, ptr %2165, align 4, !dbg !3834
  %2167 = load <2 x float>, ptr %309, align 4, !dbg !3834
  %2168 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %309, i32 0, i32 1, !dbg !3834
  %2169 = load <2 x float>, ptr %2168, align 4, !dbg !3834
  store <2 x float> %2164, ptr %186, align 4
  %2170 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %186, i32 0, i32 1
  store <2 x float> %2166, ptr %2170, align 4
  store <2 x float> %2167, ptr %187, align 4
  %2171 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %187, i32 0, i32 1
  store <2 x float> %2169, ptr %2171, align 4
  call void @llvm.dbg.declare(metadata ptr %186, metadata !2096, metadata !DIExpression()), !dbg !3835
  call void @llvm.dbg.declare(metadata ptr %187, metadata !2100, metadata !DIExpression()), !dbg !3837
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %188, ptr align 4 %186, i64 16, i1 false), !dbg !3838
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %189, ptr align 4 %187, i64 16, i1 false), !dbg !3839
  %2172 = load <2 x float>, ptr %188, align 4, !dbg !3840
  %2173 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %188, i32 0, i32 1, !dbg !3840
  %2174 = load <2 x float>, ptr %2173, align 4, !dbg !3840
  %2175 = load <2 x float>, ptr %189, align 4, !dbg !3840
  %2176 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %189, i32 0, i32 1, !dbg !3840
  %2177 = load <2 x float>, ptr %2176, align 4, !dbg !3840
  store <2 x float> %2172, ptr %182, align 4
  %2178 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %182, i32 0, i32 1
  store <2 x float> %2174, ptr %2178, align 4
  store <2 x float> %2175, ptr %183, align 4
  %2179 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %183, i32 0, i32 1
  store <2 x float> %2177, ptr %2179, align 4
  call void @llvm.dbg.declare(metadata ptr %182, metadata !2105, metadata !DIExpression()), !dbg !3841
  call void @llvm.dbg.declare(metadata ptr %183, metadata !2109, metadata !DIExpression()), !dbg !3843
  call void @llvm.dbg.declare(metadata ptr %181, metadata !2111, metadata !DIExpression()), !dbg !3844
  call void @_ZN5sse_fC2Ev(ptr noundef nonnull align 4 dereferenceable(16) %181), !dbg !3844
  call void @llvm.dbg.declare(metadata ptr %184, metadata !2113, metadata !DIExpression()), !dbg !3845
  store i32 0, ptr %184, align 4, !dbg !3845
  br label %2180, !dbg !3846

2180:                                             ; preds = %2203, %2151
  %2181 = load i32, ptr %184, align 4, !dbg !3847
  %2182 = icmp slt i32 %2181, 4, !dbg !3848
  br i1 %2182, label %2183, label %2210, !dbg !3849

2183:                                             ; preds = %2180
  %2184 = load i32, ptr %184, align 4, !dbg !3850
  %2185 = sext i32 %2184 to i64, !dbg !3850
  %2186 = getelementptr inbounds [4 x float], ptr %182, i64 0, i64 %2185, !dbg !3850
  %2187 = load float, ptr %2186, align 4, !dbg !3850
  %2188 = load i32, ptr %184, align 4, !dbg !3850
  %2189 = sext i32 %2188 to i64, !dbg !3850
  %2190 = getelementptr inbounds [4 x float], ptr %183, i64 0, i64 %2189, !dbg !3850
  %2191 = load float, ptr %2190, align 4, !dbg !3850
  %2192 = fcmp ogt float %2187, %2191, !dbg !3850
  br i1 %2192, label %2193, label %2198, !dbg !3850

2193:                                             ; preds = %2183
  %2194 = load i32, ptr %184, align 4, !dbg !3850
  %2195 = sext i32 %2194 to i64, !dbg !3850
  %2196 = getelementptr inbounds [4 x float], ptr %182, i64 0, i64 %2195, !dbg !3850
  %2197 = load float, ptr %2196, align 4, !dbg !3850
  br label %2203, !dbg !3850

2198:                                             ; preds = %2183
  %2199 = load i32, ptr %184, align 4, !dbg !3850
  %2200 = sext i32 %2199 to i64, !dbg !3850
  %2201 = getelementptr inbounds [4 x float], ptr %183, i64 0, i64 %2200, !dbg !3850
  %2202 = load float, ptr %2201, align 4, !dbg !3850
  br label %2203, !dbg !3850

2203:                                             ; preds = %2198, %2193
  %2204 = phi float [ %2197, %2193 ], [ %2202, %2198 ], !dbg !3850
  %2205 = load i32, ptr %184, align 4, !dbg !3851
  %2206 = sext i32 %2205 to i64, !dbg !3851
  %2207 = getelementptr inbounds [4 x float], ptr %181, i64 0, i64 %2206, !dbg !3851
  store float %2204, ptr %2207, align 4, !dbg !3852
  %2208 = load i32, ptr %184, align 4, !dbg !3853
  %2209 = add nsw i32 %2208, 1, !dbg !3853
  store i32 %2209, ptr %184, align 4, !dbg !3853
  br label %2180, !dbg !3854, !llvm.loop !3855

2210:                                             ; preds = %2180
  %2211 = load { <2 x float>, <2 x float> }, ptr %181, align 4, !dbg !3857
  %2212 = extractvalue { <2 x float>, <2 x float> } %2211, 0, !dbg !3840
  store <2 x float> %2212, ptr %185, align 4, !dbg !3840
  %2213 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %185, i32 0, i32 1, !dbg !3840
  %2214 = extractvalue { <2 x float>, <2 x float> } %2211, 1, !dbg !3840
  store <2 x float> %2214, ptr %2213, align 4, !dbg !3840
  %2215 = load { <2 x float>, <2 x float> }, ptr %185, align 4, !dbg !3858
  %2216 = extractvalue { <2 x float>, <2 x float> } %2215, 0, !dbg !3834
  store <2 x float> %2216, ptr %307, align 4, !dbg !3834
  %2217 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %307, i32 0, i32 1, !dbg !3834
  %2218 = extractvalue { <2 x float>, <2 x float> } %2215, 1, !dbg !3834
  store <2 x float> %2218, ptr %2217, align 4, !dbg !3834
  %2219 = load ptr, ptr %305, align 8, !dbg !3859
  %2220 = load i32, ptr %306, align 4, !dbg !3860
  store ptr %2219, ptr %301, align 8
  call void @llvm.dbg.declare(metadata ptr %301, metadata !2006, metadata !DIExpression()), !dbg !3861
  store i32 %2220, ptr %302, align 4
  call void @llvm.dbg.declare(metadata ptr %302, metadata !2011, metadata !DIExpression()), !dbg !3863
  %2221 = load ptr, ptr %301, align 8
  %2222 = load i32, ptr %302, align 4, !dbg !3864
  %2223 = sext i32 %2222 to i64, !dbg !3865
  %2224 = getelementptr inbounds [1 x %struct.sse_f], ptr %2221, i64 0, i64 %2223, !dbg !3865
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2224, ptr align 4 %307, i64 16, i1 false), !dbg !3866
  %2225 = load i32, ptr %306, align 4, !dbg !3867
  %2226 = add nsw i32 %2225, 1, !dbg !3867
  store i32 %2226, ptr %306, align 4, !dbg !3867
  br label %2148, !dbg !3868, !llvm.loop !3869

2227:                                             ; preds = %2148
  %2228 = load i32, ptr %580, align 4, !dbg !3871
  %2229 = sext i32 %2228 to i64, !dbg !3872
  %2230 = getelementptr inbounds [32 x i32], ptr @_ZN4RTTL15OnDemandBuilder8binCountE, i64 0, i64 %2229, !dbg !3872
  %2231 = load i32, ptr %2230, align 4, !dbg !3873
  %2232 = add nsw i32 %2231, 1, !dbg !3873
  store i32 %2232, ptr %2230, align 4, !dbg !3873
  %2233 = load i32, ptr %581, align 4, !dbg !3874
  %2234 = sext i32 %2233 to i64, !dbg !3875
  %2235 = getelementptr inbounds [32 x i32], ptr getelementptr inbounds ([3 x [32 x i32]], ptr @_ZN4RTTL15OnDemandBuilder8binCountE, i64 0, i64 1), i64 0, i64 %2234, !dbg !3875
  %2236 = load i32, ptr %2235, align 4, !dbg !3876
  %2237 = add nsw i32 %2236, 1, !dbg !3876
  store i32 %2237, ptr %2235, align 4, !dbg !3876
  %2238 = load i32, ptr %582, align 4, !dbg !3877
  %2239 = sext i32 %2238 to i64, !dbg !3878
  %2240 = getelementptr inbounds [32 x i32], ptr getelementptr inbounds ([3 x [32 x i32]], ptr @_ZN4RTTL15OnDemandBuilder8binCountE, i64 0, i64 2), i64 0, i64 %2239, !dbg !3878
  %2241 = load i32, ptr %2240, align 4, !dbg !3879
  %2242 = add nsw i32 %2241, 1, !dbg !3879
  store i32 %2242, ptr %2240, align 4, !dbg !3879
  br label %2243, !dbg !3880

2243:                                             ; preds = %2227
  %2244 = load i32, ptr %696, align 4, !dbg !3881
  %2245 = add nsw i32 %2244, 1, !dbg !3881
  store i32 %2245, ptr %696, align 4, !dbg !3881
  br label %1573, !dbg !3882, !llvm.loop !3883

2246:                                             ; preds = %1573
  call void @llvm.dbg.declare(metadata ptr %697, metadata !3885, metadata !DIExpression()), !dbg !3886
  call void @_ZN4RTTL4AABBC2Ev(ptr noundef nonnull align 4 dereferenceable(32) %697), !dbg !3886
  call void @llvm.dbg.declare(metadata ptr %698, metadata !3887, metadata !DIExpression()), !dbg !3888
  call void @_ZN4RTTL4AABBC2Ev(ptr noundef nonnull align 4 dereferenceable(32) %698), !dbg !3888
  call void @llvm.dbg.declare(metadata ptr %699, metadata !3889, metadata !DIExpression()), !dbg !3891
  store i32 0, ptr %699, align 4, !dbg !3891
  br label %2247, !dbg !3892

2247:                                             ; preds = %2882, %2246
  %2248 = load i32, ptr %699, align 4, !dbg !3893
  %2249 = icmp slt i32 %2248, 3, !dbg !3895
  br i1 %2249, label %2250, label %2885, !dbg !3896

2250:                                             ; preds = %2247
  call void @llvm.dbg.declare(metadata ptr %700, metadata !3897, metadata !DIExpression()), !dbg !3899
  %2251 = load i32, ptr %699, align 4, !dbg !3900
  store i32 %2251, ptr %700, align 4, !dbg !3899
  %2252 = load i32, ptr %699, align 4, !dbg !3901
  %2253 = sext i32 %2252 to i64, !dbg !3901
  %2254 = getelementptr inbounds float, ptr %677, i64 %2253, !dbg !3901
  %2255 = load float, ptr %2254, align 4, !dbg !3901
  %2256 = fcmp oeq float %2255, 0.000000e+00, !dbg !3903
  br i1 %2256, label %2257, label %2258, !dbg !3904

2257:                                             ; preds = %2250
  br label %2882, !dbg !3905

2258:                                             ; preds = %2250
  call void @llvm.dbg.declare(metadata ptr %701, metadata !3906, metadata !DIExpression()), !dbg !3907
  call void @_ZN4RTTL4AABBC2Ev(ptr noundef nonnull align 4 dereferenceable(32) %701), !dbg !3907
  store ptr %701, ptr %640, align 8
  call void @llvm.dbg.declare(metadata ptr %640, metadata !2598, metadata !DIExpression()), !dbg !3908
  %2259 = load ptr, ptr %640, align 8
  store ptr %2259, ptr %470, align 8
  call void @llvm.dbg.declare(metadata ptr %470, metadata !2602, metadata !DIExpression()), !dbg !3910
  %2260 = load ptr, ptr %470, align 8
  store float 0x47EFFFFFE0000000, ptr %465, align 4
  call void @llvm.dbg.declare(metadata ptr %465, metadata !1886, metadata !DIExpression()), !dbg !3912
  call void @llvm.dbg.declare(metadata ptr %464, metadata !1893, metadata !DIExpression()), !dbg !3914
  call void @_ZN5sse_fC2Ev(ptr noundef nonnull align 4 dereferenceable(16) %464), !dbg !3914
  call void @llvm.dbg.declare(metadata ptr %466, metadata !1895, metadata !DIExpression()), !dbg !3915
  store i32 0, ptr %466, align 4, !dbg !3915
  br label %2261, !dbg !3916

2261:                                             ; preds = %2264, %2258
  %2262 = load i32, ptr %466, align 4, !dbg !3917
  %2263 = icmp slt i32 %2262, 4, !dbg !3918
  br i1 %2263, label %2264, label %2271, !dbg !3919

2264:                                             ; preds = %2261
  %2265 = load float, ptr %465, align 4, !dbg !3920
  %2266 = load i32, ptr %466, align 4, !dbg !3921
  %2267 = sext i32 %2266 to i64, !dbg !3922
  %2268 = getelementptr inbounds [4 x float], ptr %464, i64 0, i64 %2267, !dbg !3922
  store float %2265, ptr %2268, align 4, !dbg !3923
  %2269 = load i32, ptr %466, align 4, !dbg !3924
  %2270 = add nsw i32 %2269, 1, !dbg !3924
  store i32 %2270, ptr %466, align 4, !dbg !3924
  br label %2261, !dbg !3925, !llvm.loop !3926

2271:                                             ; preds = %2261
  %2272 = load { <2 x float>, <2 x float> }, ptr %464, align 4, !dbg !3928
  %2273 = extractvalue { <2 x float>, <2 x float> } %2272, 0, !dbg !3929
  store <2 x float> %2273, ptr %471, align 4, !dbg !3929
  %2274 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %471, i32 0, i32 1, !dbg !3929
  %2275 = extractvalue { <2 x float>, <2 x float> } %2272, 1, !dbg !3929
  store <2 x float> %2275, ptr %2274, align 4, !dbg !3929
  store ptr %2260, ptr %413, align 8
  call void @llvm.dbg.declare(metadata ptr %413, metadata !2624, metadata !DIExpression()), !dbg !3930
  store ptr %471, ptr %414, align 8
  call void @llvm.dbg.declare(metadata ptr %414, metadata !2628, metadata !DIExpression()), !dbg !3932
  %2276 = load ptr, ptr %413, align 8
  call void @llvm.dbg.declare(metadata ptr %415, metadata !2630, metadata !DIExpression()), !dbg !3933
  %2277 = call noundef nonnull align 4 dereferenceable(16) ptr @_ZN4RTTL7RTVec_tILi1E5sse_fLi0EEcvRNS_8RTData_tILi1ES1_Li0EEEEv(ptr noundef nonnull align 4 dereferenceable(16) %2276), !dbg !3934
  store ptr %2277, ptr %415, align 8, !dbg !3933
  %2278 = load ptr, ptr %415, align 8, !dbg !3935
  %2279 = load ptr, ptr %414, align 8, !dbg !3936
  store ptr %2278, ptr %386, align 8
  call void @llvm.dbg.declare(metadata ptr %386, metadata !2635, metadata !DIExpression()), !dbg !3937
  store ptr %2279, ptr %387, align 8
  call void @llvm.dbg.declare(metadata ptr %387, metadata !2639, metadata !DIExpression()), !dbg !3939
  %2280 = load ptr, ptr %386, align 8
  call void @llvm.dbg.declare(metadata ptr %388, metadata !2641, metadata !DIExpression()), !dbg !3940
  store i32 0, ptr %388, align 4, !dbg !3940
  br label %2281, !dbg !3941

2281:                                             ; preds = %2284, %2271
  %2282 = load i32, ptr %388, align 4, !dbg !3942
  %2283 = icmp slt i32 %2282, 1, !dbg !3943
  br i1 %2283, label %2284, label %2291, !dbg !3944

2284:                                             ; preds = %2281
  %2285 = load ptr, ptr %387, align 8, !dbg !3945
  %2286 = load i32, ptr %388, align 4, !dbg !3946
  %2287 = sext i32 %2286 to i64, !dbg !3947
  %2288 = getelementptr inbounds [1 x %struct.sse_f], ptr %2280, i64 0, i64 %2287, !dbg !3947
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2288, ptr align 4 %2285, i64 16, i1 false), !dbg !3948
  %2289 = load i32, ptr %388, align 4, !dbg !3949
  %2290 = add nsw i32 %2289, 1, !dbg !3949
  store i32 %2290, ptr %388, align 4, !dbg !3949
  br label %2281, !dbg !3950, !llvm.loop !3951

2291:                                             ; preds = %2281
  store float 0xC7EFFFFFE0000000, ptr %468, align 4
  call void @llvm.dbg.declare(metadata ptr %468, metadata !1886, metadata !DIExpression()), !dbg !3953
  call void @llvm.dbg.declare(metadata ptr %467, metadata !1893, metadata !DIExpression()), !dbg !3955
  call void @_ZN5sse_fC2Ev(ptr noundef nonnull align 4 dereferenceable(16) %467), !dbg !3955
  call void @llvm.dbg.declare(metadata ptr %469, metadata !1895, metadata !DIExpression()), !dbg !3956
  store i32 0, ptr %469, align 4, !dbg !3956
  br label %2292, !dbg !3957

2292:                                             ; preds = %2295, %2291
  %2293 = load i32, ptr %469, align 4, !dbg !3958
  %2294 = icmp slt i32 %2293, 4, !dbg !3959
  br i1 %2294, label %2295, label %2302, !dbg !3960

2295:                                             ; preds = %2292
  %2296 = load float, ptr %468, align 4, !dbg !3961
  %2297 = load i32, ptr %469, align 4, !dbg !3962
  %2298 = sext i32 %2297 to i64, !dbg !3963
  %2299 = getelementptr inbounds [4 x float], ptr %467, i64 0, i64 %2298, !dbg !3963
  store float %2296, ptr %2299, align 4, !dbg !3964
  %2300 = load i32, ptr %469, align 4, !dbg !3965
  %2301 = add nsw i32 %2300, 1, !dbg !3965
  store i32 %2301, ptr %469, align 4, !dbg !3965
  br label %2292, !dbg !3966, !llvm.loop !3967

2302:                                             ; preds = %2292
  %2303 = load { <2 x float>, <2 x float> }, ptr %467, align 4, !dbg !3969
  %2304 = extractvalue { <2 x float>, <2 x float> } %2303, 0, !dbg !3970
  store <2 x float> %2304, ptr %472, align 4, !dbg !3970
  %2305 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %472, i32 0, i32 1, !dbg !3970
  %2306 = extractvalue { <2 x float>, <2 x float> } %2303, 1, !dbg !3970
  store <2 x float> %2306, ptr %2305, align 4, !dbg !3970
  %2307 = getelementptr inbounds %"class.RTTL::RTBox_t", ptr %2260, i32 0, i32 1, !dbg !3971
  store ptr %2307, ptr %416, align 8
  call void @llvm.dbg.declare(metadata ptr %416, metadata !2624, metadata !DIExpression()), !dbg !3972
  store ptr %472, ptr %417, align 8
  call void @llvm.dbg.declare(metadata ptr %417, metadata !2628, metadata !DIExpression()), !dbg !3974
  %2308 = load ptr, ptr %416, align 8
  call void @llvm.dbg.declare(metadata ptr %418, metadata !2630, metadata !DIExpression()), !dbg !3975
  %2309 = call noundef nonnull align 4 dereferenceable(16) ptr @_ZN4RTTL7RTVec_tILi1E5sse_fLi0EEcvRNS_8RTData_tILi1ES1_Li0EEEEv(ptr noundef nonnull align 4 dereferenceable(16) %2308), !dbg !3976
  store ptr %2309, ptr %418, align 8, !dbg !3975
  %2310 = load ptr, ptr %418, align 8, !dbg !3977
  %2311 = load ptr, ptr %417, align 8, !dbg !3978
  store ptr %2310, ptr %383, align 8
  call void @llvm.dbg.declare(metadata ptr %383, metadata !2635, metadata !DIExpression()), !dbg !3979
  store ptr %2311, ptr %384, align 8
  call void @llvm.dbg.declare(metadata ptr %384, metadata !2639, metadata !DIExpression()), !dbg !3981
  %2312 = load ptr, ptr %383, align 8
  call void @llvm.dbg.declare(metadata ptr %385, metadata !2641, metadata !DIExpression()), !dbg !3982
  store i32 0, ptr %385, align 4, !dbg !3982
  br label %2313, !dbg !3983

2313:                                             ; preds = %2316, %2302
  %2314 = load i32, ptr %385, align 4, !dbg !3984
  %2315 = icmp slt i32 %2314, 1, !dbg !3985
  br i1 %2315, label %2316, label %2323, !dbg !3986

2316:                                             ; preds = %2313
  %2317 = load ptr, ptr %384, align 8, !dbg !3987
  %2318 = load i32, ptr %385, align 4, !dbg !3988
  %2319 = sext i32 %2318 to i64, !dbg !3989
  %2320 = getelementptr inbounds [1 x %struct.sse_f], ptr %2312, i64 0, i64 %2319, !dbg !3989
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2320, ptr align 4 %2317, i64 16, i1 false), !dbg !3990
  %2321 = load i32, ptr %385, align 4, !dbg !3991
  %2322 = add nsw i32 %2321, 1, !dbg !3991
  store i32 %2322, ptr %385, align 4, !dbg !3991
  br label %2313, !dbg !3992, !llvm.loop !3993

2323:                                             ; preds = %2313
  call void @llvm.dbg.declare(metadata ptr %702, metadata !3995, metadata !DIExpression()), !dbg !3997
  %2324 = load i32, ptr %675, align 4, !dbg !3998
  %2325 = sub nsw i32 %2324, 1, !dbg !3999
  store i32 %2325, ptr %702, align 4, !dbg !3997
  br label %2326, !dbg !4000

2326:                                             ; preds = %2509, %2323
  %2327 = load i32, ptr %702, align 4, !dbg !4001
  %2328 = icmp sge i32 %2327, 0, !dbg !4003
  br i1 %2328, label %2329, label %2512, !dbg !4004

2329:                                             ; preds = %2326
  %2330 = load i32, ptr %700, align 4, !dbg !4005
  %2331 = sext i32 %2330 to i64, !dbg !4007
  %2332 = getelementptr inbounds [3 x [32 x %"class.RTTL::AABB"]], ptr @_ZN4RTTL15OnDemandBuilder9binBoundsE, i64 0, i64 %2331, !dbg !4007
  %2333 = load i32, ptr %702, align 4, !dbg !4008
  %2334 = sext i32 %2333 to i64, !dbg !4007
  %2335 = getelementptr inbounds [32 x %"class.RTTL::AABB"], ptr %2332, i64 0, i64 %2334, !dbg !4007
  store ptr %701, ptr %656, align 8
  call void @llvm.dbg.declare(metadata ptr %656, metadata !1978, metadata !DIExpression()), !dbg !4009
  store ptr %2335, ptr %657, align 8
  call void @llvm.dbg.declare(metadata ptr %657, metadata !1983, metadata !DIExpression()), !dbg !4011
  %2336 = load ptr, ptr %656, align 8
  %2337 = load ptr, ptr %657, align 8, !dbg !4012
  store ptr %2336, ptr %325, align 8
  call void @llvm.dbg.declare(metadata ptr %325, metadata !1986, metadata !DIExpression()), !dbg !4013
  store ptr %2337, ptr %326, align 8
  call void @llvm.dbg.declare(metadata ptr %326, metadata !1991, metadata !DIExpression()), !dbg !4015
  %2338 = load ptr, ptr %325, align 8
  call void @llvm.dbg.declare(metadata ptr %327, metadata !1993, metadata !DIExpression()), !dbg !4016
  %2339 = call noundef nonnull align 4 dereferenceable(16) ptr @_ZN4RTTL7RTVec_tILi1E5sse_fLi0EEcvRNS_8RTData_tILi1ES1_Li0EEEEv(ptr noundef nonnull align 4 dereferenceable(16) %2338), !dbg !4017
  store ptr %2339, ptr %327, align 8, !dbg !4016
  call void @llvm.dbg.declare(metadata ptr %328, metadata !1996, metadata !DIExpression()), !dbg !4018
  store i32 0, ptr %328, align 4, !dbg !4018
  br label %2340, !dbg !4019

2340:                                             ; preds = %2402, %2329
  %2341 = load i32, ptr %328, align 4, !dbg !4020
  %2342 = icmp slt i32 %2341, 1, !dbg !4021
  br i1 %2342, label %2343, label %2419, !dbg !4022

2343:                                             ; preds = %2340
  %2344 = load ptr, ptr %327, align 8, !dbg !4023
  %2345 = load i32, ptr %328, align 4, !dbg !4024
  store ptr %2344, ptr %321, align 8
  call void @llvm.dbg.declare(metadata ptr %321, metadata !2006, metadata !DIExpression()), !dbg !4025
  store i32 %2345, ptr %322, align 4
  call void @llvm.dbg.declare(metadata ptr %322, metadata !2011, metadata !DIExpression()), !dbg !4027
  %2346 = load ptr, ptr %321, align 8
  %2347 = load i32, ptr %322, align 4, !dbg !4028
  %2348 = sext i32 %2347 to i64, !dbg !4029
  %2349 = getelementptr inbounds [1 x %struct.sse_f], ptr %2346, i64 0, i64 %2348, !dbg !4029
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %330, ptr align 4 %2349, i64 16, i1 false), !dbg !4023
  %2350 = load ptr, ptr %326, align 8, !dbg !4030
  %2351 = load i32, ptr %328, align 4, !dbg !4031
  %2352 = call { <2 x float>, <2 x float> } @_ZNK4RTTL7RTVec_tILi1E5sse_fLi0EEixEi(ptr noundef nonnull align 4 dereferenceable(16) %2350, i32 noundef %2351), !dbg !4030
  %2353 = extractvalue { <2 x float>, <2 x float> } %2352, 0, !dbg !4030
  store <2 x float> %2353, ptr %331, align 4, !dbg !4030
  %2354 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %331, i32 0, i32 1, !dbg !4030
  %2355 = extractvalue { <2 x float>, <2 x float> } %2352, 1, !dbg !4030
  store <2 x float> %2355, ptr %2354, align 4, !dbg !4030
  %2356 = load <2 x float>, ptr %330, align 4, !dbg !4032
  %2357 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %330, i32 0, i32 1, !dbg !4032
  %2358 = load <2 x float>, ptr %2357, align 4, !dbg !4032
  %2359 = load <2 x float>, ptr %331, align 4, !dbg !4032
  %2360 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %331, i32 0, i32 1, !dbg !4032
  %2361 = load <2 x float>, ptr %2360, align 4, !dbg !4032
  store <2 x float> %2356, ptr %246, align 4
  %2362 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %246, i32 0, i32 1
  store <2 x float> %2358, ptr %2362, align 4
  store <2 x float> %2359, ptr %247, align 4
  %2363 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %247, i32 0, i32 1
  store <2 x float> %2361, ptr %2363, align 4
  call void @llvm.dbg.declare(metadata ptr %246, metadata !2018, metadata !DIExpression()), !dbg !4033
  call void @llvm.dbg.declare(metadata ptr %247, metadata !2024, metadata !DIExpression()), !dbg !4035
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %248, ptr align 4 %246, i64 16, i1 false), !dbg !4036
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %249, ptr align 4 %247, i64 16, i1 false), !dbg !4037
  %2364 = load <2 x float>, ptr %248, align 4, !dbg !4038
  %2365 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %248, i32 0, i32 1, !dbg !4038
  %2366 = load <2 x float>, ptr %2365, align 4, !dbg !4038
  %2367 = load <2 x float>, ptr %249, align 4, !dbg !4038
  %2368 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %249, i32 0, i32 1, !dbg !4038
  %2369 = load <2 x float>, ptr %2368, align 4, !dbg !4038
  store <2 x float> %2364, ptr %215, align 4
  %2370 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %215, i32 0, i32 1
  store <2 x float> %2366, ptr %2370, align 4
  store <2 x float> %2367, ptr %216, align 4
  %2371 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %216, i32 0, i32 1
  store <2 x float> %2369, ptr %2371, align 4
  call void @llvm.dbg.declare(metadata ptr %215, metadata !2029, metadata !DIExpression()), !dbg !4039
  call void @llvm.dbg.declare(metadata ptr %216, metadata !2033, metadata !DIExpression()), !dbg !4041
  call void @llvm.dbg.declare(metadata ptr %214, metadata !2035, metadata !DIExpression()), !dbg !4042
  call void @_ZN5sse_fC2Ev(ptr noundef nonnull align 4 dereferenceable(16) %214), !dbg !4042
  call void @llvm.dbg.declare(metadata ptr %217, metadata !2037, metadata !DIExpression()), !dbg !4043
  store i32 0, ptr %217, align 4, !dbg !4043
  br label %2372, !dbg !4044

2372:                                             ; preds = %2395, %2343
  %2373 = load i32, ptr %217, align 4, !dbg !4045
  %2374 = icmp slt i32 %2373, 4, !dbg !4046
  br i1 %2374, label %2375, label %2402, !dbg !4047

2375:                                             ; preds = %2372
  %2376 = load i32, ptr %217, align 4, !dbg !4048
  %2377 = sext i32 %2376 to i64, !dbg !4048
  %2378 = getelementptr inbounds [4 x float], ptr %215, i64 0, i64 %2377, !dbg !4048
  %2379 = load float, ptr %2378, align 4, !dbg !4048
  %2380 = load i32, ptr %217, align 4, !dbg !4048
  %2381 = sext i32 %2380 to i64, !dbg !4048
  %2382 = getelementptr inbounds [4 x float], ptr %216, i64 0, i64 %2381, !dbg !4048
  %2383 = load float, ptr %2382, align 4, !dbg !4048
  %2384 = fcmp olt float %2379, %2383, !dbg !4048
  br i1 %2384, label %2385, label %2390, !dbg !4048

2385:                                             ; preds = %2375
  %2386 = load i32, ptr %217, align 4, !dbg !4048
  %2387 = sext i32 %2386 to i64, !dbg !4048
  %2388 = getelementptr inbounds [4 x float], ptr %215, i64 0, i64 %2387, !dbg !4048
  %2389 = load float, ptr %2388, align 4, !dbg !4048
  br label %2395, !dbg !4048

2390:                                             ; preds = %2375
  %2391 = load i32, ptr %217, align 4, !dbg !4048
  %2392 = sext i32 %2391 to i64, !dbg !4048
  %2393 = getelementptr inbounds [4 x float], ptr %216, i64 0, i64 %2392, !dbg !4048
  %2394 = load float, ptr %2393, align 4, !dbg !4048
  br label %2395, !dbg !4048

2395:                                             ; preds = %2390, %2385
  %2396 = phi float [ %2389, %2385 ], [ %2394, %2390 ], !dbg !4048
  %2397 = load i32, ptr %217, align 4, !dbg !4049
  %2398 = sext i32 %2397 to i64, !dbg !4049
  %2399 = getelementptr inbounds [4 x float], ptr %214, i64 0, i64 %2398, !dbg !4049
  store float %2396, ptr %2399, align 4, !dbg !4050
  %2400 = load i32, ptr %217, align 4, !dbg !4051
  %2401 = add nsw i32 %2400, 1, !dbg !4051
  store i32 %2401, ptr %217, align 4, !dbg !4051
  br label %2372, !dbg !4052, !llvm.loop !4053

2402:                                             ; preds = %2372
  %2403 = load { <2 x float>, <2 x float> }, ptr %214, align 4, !dbg !4055
  %2404 = extractvalue { <2 x float>, <2 x float> } %2403, 0, !dbg !4038
  store <2 x float> %2404, ptr %245, align 4, !dbg !4038
  %2405 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %245, i32 0, i32 1, !dbg !4038
  %2406 = extractvalue { <2 x float>, <2 x float> } %2403, 1, !dbg !4038
  store <2 x float> %2406, ptr %2405, align 4, !dbg !4038
  %2407 = load { <2 x float>, <2 x float> }, ptr %245, align 4, !dbg !4056
  %2408 = extractvalue { <2 x float>, <2 x float> } %2407, 0, !dbg !4032
  store <2 x float> %2408, ptr %329, align 4, !dbg !4032
  %2409 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %329, i32 0, i32 1, !dbg !4032
  %2410 = extractvalue { <2 x float>, <2 x float> } %2407, 1, !dbg !4032
  store <2 x float> %2410, ptr %2409, align 4, !dbg !4032
  %2411 = load ptr, ptr %327, align 8, !dbg !4057
  %2412 = load i32, ptr %328, align 4, !dbg !4058
  store ptr %2411, ptr %323, align 8
  call void @llvm.dbg.declare(metadata ptr %323, metadata !2006, metadata !DIExpression()), !dbg !4059
  store i32 %2412, ptr %324, align 4
  call void @llvm.dbg.declare(metadata ptr %324, metadata !2011, metadata !DIExpression()), !dbg !4061
  %2413 = load ptr, ptr %323, align 8
  %2414 = load i32, ptr %324, align 4, !dbg !4062
  %2415 = sext i32 %2414 to i64, !dbg !4063
  %2416 = getelementptr inbounds [1 x %struct.sse_f], ptr %2413, i64 0, i64 %2415, !dbg !4063
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2416, ptr align 4 %329, i64 16, i1 false), !dbg !4064
  %2417 = load i32, ptr %328, align 4, !dbg !4065
  %2418 = add nsw i32 %2417, 1, !dbg !4065
  store i32 %2418, ptr %328, align 4, !dbg !4065
  br label %2340, !dbg !4066, !llvm.loop !4067

2419:                                             ; preds = %2340
  %2420 = getelementptr inbounds %"class.RTTL::RTBox_t", ptr %2336, i32 0, i32 1, !dbg !4069
  %2421 = load ptr, ptr %657, align 8, !dbg !4070
  %2422 = getelementptr inbounds %"class.RTTL::RTBox_t", ptr %2421, i32 0, i32 1, !dbg !4071
  store ptr %2420, ptr %270, align 8
  call void @llvm.dbg.declare(metadata ptr %270, metadata !2069, metadata !DIExpression()), !dbg !4072
  store ptr %2422, ptr %271, align 8
  call void @llvm.dbg.declare(metadata ptr %271, metadata !2073, metadata !DIExpression()), !dbg !4074
  %2423 = load ptr, ptr %270, align 8
  call void @llvm.dbg.declare(metadata ptr %272, metadata !2075, metadata !DIExpression()), !dbg !4075
  %2424 = call noundef nonnull align 4 dereferenceable(16) ptr @_ZN4RTTL7RTVec_tILi1E5sse_fLi0EEcvRNS_8RTData_tILi1ES1_Li0EEEEv(ptr noundef nonnull align 4 dereferenceable(16) %2423), !dbg !4076
  store ptr %2424, ptr %272, align 8, !dbg !4075
  call void @llvm.dbg.declare(metadata ptr %273, metadata !2078, metadata !DIExpression()), !dbg !4077
  store i32 0, ptr %273, align 4, !dbg !4077
  br label %2425, !dbg !4078

2425:                                             ; preds = %2487, %2419
  %2426 = load i32, ptr %273, align 4, !dbg !4079
  %2427 = icmp slt i32 %2426, 1, !dbg !4080
  br i1 %2427, label %2428, label %2504, !dbg !4081

2428:                                             ; preds = %2425
  %2429 = load ptr, ptr %272, align 8, !dbg !4082
  %2430 = load i32, ptr %273, align 4, !dbg !4083
  store ptr %2429, ptr %266, align 8
  call void @llvm.dbg.declare(metadata ptr %266, metadata !2006, metadata !DIExpression()), !dbg !4084
  store i32 %2430, ptr %267, align 4
  call void @llvm.dbg.declare(metadata ptr %267, metadata !2011, metadata !DIExpression()), !dbg !4086
  %2431 = load ptr, ptr %266, align 8
  %2432 = load i32, ptr %267, align 4, !dbg !4087
  %2433 = sext i32 %2432 to i64, !dbg !4088
  %2434 = getelementptr inbounds [1 x %struct.sse_f], ptr %2431, i64 0, i64 %2433, !dbg !4088
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %275, ptr align 4 %2434, i64 16, i1 false), !dbg !4082
  %2435 = load ptr, ptr %271, align 8, !dbg !4089
  %2436 = load i32, ptr %273, align 4, !dbg !4090
  %2437 = call { <2 x float>, <2 x float> } @_ZNK4RTTL7RTVec_tILi1E5sse_fLi0EEixEi(ptr noundef nonnull align 4 dereferenceable(16) %2435, i32 noundef %2436), !dbg !4089
  %2438 = extractvalue { <2 x float>, <2 x float> } %2437, 0, !dbg !4089
  store <2 x float> %2438, ptr %276, align 4, !dbg !4089
  %2439 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %276, i32 0, i32 1, !dbg !4089
  %2440 = extractvalue { <2 x float>, <2 x float> } %2437, 1, !dbg !4089
  store <2 x float> %2440, ptr %2439, align 4, !dbg !4089
  %2441 = load <2 x float>, ptr %275, align 4, !dbg !4091
  %2442 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %275, i32 0, i32 1, !dbg !4091
  %2443 = load <2 x float>, ptr %2442, align 4, !dbg !4091
  %2444 = load <2 x float>, ptr %276, align 4, !dbg !4091
  %2445 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %276, i32 0, i32 1, !dbg !4091
  %2446 = load <2 x float>, ptr %2445, align 4, !dbg !4091
  store <2 x float> %2441, ptr %201, align 4
  %2447 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %201, i32 0, i32 1
  store <2 x float> %2443, ptr %2447, align 4
  store <2 x float> %2444, ptr %202, align 4
  %2448 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %202, i32 0, i32 1
  store <2 x float> %2446, ptr %2448, align 4
  call void @llvm.dbg.declare(metadata ptr %201, metadata !2096, metadata !DIExpression()), !dbg !4092
  call void @llvm.dbg.declare(metadata ptr %202, metadata !2100, metadata !DIExpression()), !dbg !4094
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %203, ptr align 4 %201, i64 16, i1 false), !dbg !4095
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %204, ptr align 4 %202, i64 16, i1 false), !dbg !4096
  %2449 = load <2 x float>, ptr %203, align 4, !dbg !4097
  %2450 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %203, i32 0, i32 1, !dbg !4097
  %2451 = load <2 x float>, ptr %2450, align 4, !dbg !4097
  %2452 = load <2 x float>, ptr %204, align 4, !dbg !4097
  %2453 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %204, i32 0, i32 1, !dbg !4097
  %2454 = load <2 x float>, ptr %2453, align 4, !dbg !4097
  store <2 x float> %2449, ptr %170, align 4
  %2455 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %170, i32 0, i32 1
  store <2 x float> %2451, ptr %2455, align 4
  store <2 x float> %2452, ptr %171, align 4
  %2456 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %171, i32 0, i32 1
  store <2 x float> %2454, ptr %2456, align 4
  call void @llvm.dbg.declare(metadata ptr %170, metadata !2105, metadata !DIExpression()), !dbg !4098
  call void @llvm.dbg.declare(metadata ptr %171, metadata !2109, metadata !DIExpression()), !dbg !4100
  call void @llvm.dbg.declare(metadata ptr %169, metadata !2111, metadata !DIExpression()), !dbg !4101
  call void @_ZN5sse_fC2Ev(ptr noundef nonnull align 4 dereferenceable(16) %169), !dbg !4101
  call void @llvm.dbg.declare(metadata ptr %172, metadata !2113, metadata !DIExpression()), !dbg !4102
  store i32 0, ptr %172, align 4, !dbg !4102
  br label %2457, !dbg !4103

2457:                                             ; preds = %2480, %2428
  %2458 = load i32, ptr %172, align 4, !dbg !4104
  %2459 = icmp slt i32 %2458, 4, !dbg !4105
  br i1 %2459, label %2460, label %2487, !dbg !4106

2460:                                             ; preds = %2457
  %2461 = load i32, ptr %172, align 4, !dbg !4107
  %2462 = sext i32 %2461 to i64, !dbg !4107
  %2463 = getelementptr inbounds [4 x float], ptr %170, i64 0, i64 %2462, !dbg !4107
  %2464 = load float, ptr %2463, align 4, !dbg !4107
  %2465 = load i32, ptr %172, align 4, !dbg !4107
  %2466 = sext i32 %2465 to i64, !dbg !4107
  %2467 = getelementptr inbounds [4 x float], ptr %171, i64 0, i64 %2466, !dbg !4107
  %2468 = load float, ptr %2467, align 4, !dbg !4107
  %2469 = fcmp ogt float %2464, %2468, !dbg !4107
  br i1 %2469, label %2470, label %2475, !dbg !4107

2470:                                             ; preds = %2460
  %2471 = load i32, ptr %172, align 4, !dbg !4107
  %2472 = sext i32 %2471 to i64, !dbg !4107
  %2473 = getelementptr inbounds [4 x float], ptr %170, i64 0, i64 %2472, !dbg !4107
  %2474 = load float, ptr %2473, align 4, !dbg !4107
  br label %2480, !dbg !4107

2475:                                             ; preds = %2460
  %2476 = load i32, ptr %172, align 4, !dbg !4107
  %2477 = sext i32 %2476 to i64, !dbg !4107
  %2478 = getelementptr inbounds [4 x float], ptr %171, i64 0, i64 %2477, !dbg !4107
  %2479 = load float, ptr %2478, align 4, !dbg !4107
  br label %2480, !dbg !4107

2480:                                             ; preds = %2475, %2470
  %2481 = phi float [ %2474, %2470 ], [ %2479, %2475 ], !dbg !4107
  %2482 = load i32, ptr %172, align 4, !dbg !4108
  %2483 = sext i32 %2482 to i64, !dbg !4108
  %2484 = getelementptr inbounds [4 x float], ptr %169, i64 0, i64 %2483, !dbg !4108
  store float %2481, ptr %2484, align 4, !dbg !4109
  %2485 = load i32, ptr %172, align 4, !dbg !4110
  %2486 = add nsw i32 %2485, 1, !dbg !4110
  store i32 %2486, ptr %172, align 4, !dbg !4110
  br label %2457, !dbg !4111, !llvm.loop !4112

2487:                                             ; preds = %2457
  %2488 = load { <2 x float>, <2 x float> }, ptr %169, align 4, !dbg !4114
  %2489 = extractvalue { <2 x float>, <2 x float> } %2488, 0, !dbg !4097
  store <2 x float> %2489, ptr %200, align 4, !dbg !4097
  %2490 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %200, i32 0, i32 1, !dbg !4097
  %2491 = extractvalue { <2 x float>, <2 x float> } %2488, 1, !dbg !4097
  store <2 x float> %2491, ptr %2490, align 4, !dbg !4097
  %2492 = load { <2 x float>, <2 x float> }, ptr %200, align 4, !dbg !4115
  %2493 = extractvalue { <2 x float>, <2 x float> } %2492, 0, !dbg !4091
  store <2 x float> %2493, ptr %274, align 4, !dbg !4091
  %2494 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %274, i32 0, i32 1, !dbg !4091
  %2495 = extractvalue { <2 x float>, <2 x float> } %2492, 1, !dbg !4091
  store <2 x float> %2495, ptr %2494, align 4, !dbg !4091
  %2496 = load ptr, ptr %272, align 8, !dbg !4116
  %2497 = load i32, ptr %273, align 4, !dbg !4117
  store ptr %2496, ptr %268, align 8
  call void @llvm.dbg.declare(metadata ptr %268, metadata !2006, metadata !DIExpression()), !dbg !4118
  store i32 %2497, ptr %269, align 4
  call void @llvm.dbg.declare(metadata ptr %269, metadata !2011, metadata !DIExpression()), !dbg !4120
  %2498 = load ptr, ptr %268, align 8
  %2499 = load i32, ptr %269, align 4, !dbg !4121
  %2500 = sext i32 %2499 to i64, !dbg !4122
  %2501 = getelementptr inbounds [1 x %struct.sse_f], ptr %2498, i64 0, i64 %2500, !dbg !4122
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2501, ptr align 4 %274, i64 16, i1 false), !dbg !4123
  %2502 = load i32, ptr %273, align 4, !dbg !4124
  %2503 = add nsw i32 %2502, 1, !dbg !4124
  store i32 %2503, ptr %273, align 4, !dbg !4124
  br label %2425, !dbg !4125, !llvm.loop !4126

2504:                                             ; preds = %2425
  %2505 = load i32, ptr %702, align 4, !dbg !4128
  %2506 = sext i32 %2505 to i64, !dbg !4129
  %2507 = getelementptr inbounds [33 x %"class.RTTL::AABB"], ptr @_ZN4RTTL15OnDemandBuilder8rightBoxE, i64 0, i64 %2506, !dbg !4129
  %2508 = call noundef nonnull align 4 dereferenceable(32) ptr @_ZN4RTTL4AABBaSERKS0_(ptr noundef nonnull align 4 dereferenceable(32) %2507, ptr noundef nonnull align 4 dereferenceable(32) %701), !dbg !4130
  br label %2509, !dbg !4131

2509:                                             ; preds = %2504
  %2510 = load i32, ptr %702, align 4, !dbg !4132
  %2511 = add nsw i32 %2510, -1, !dbg !4132
  store i32 %2511, ptr %702, align 4, !dbg !4132
  br label %2326, !dbg !4133, !llvm.loop !4134

2512:                                             ; preds = %2326
  call void @llvm.dbg.declare(metadata ptr %703, metadata !4136, metadata !DIExpression()), !dbg !4137
  call void @_ZN4RTTL4AABBC2Ev(ptr noundef nonnull align 4 dereferenceable(32) %703), !dbg !4137
  store ptr %703, ptr %641, align 8
  call void @llvm.dbg.declare(metadata ptr %641, metadata !2598, metadata !DIExpression()), !dbg !4138
  %2513 = load ptr, ptr %641, align 8
  store ptr %2513, ptr %461, align 8
  call void @llvm.dbg.declare(metadata ptr %461, metadata !2602, metadata !DIExpression()), !dbg !4140
  %2514 = load ptr, ptr %461, align 8
  store float 0x47EFFFFFE0000000, ptr %456, align 4
  call void @llvm.dbg.declare(metadata ptr %456, metadata !1886, metadata !DIExpression()), !dbg !4142
  call void @llvm.dbg.declare(metadata ptr %455, metadata !1893, metadata !DIExpression()), !dbg !4144
  call void @_ZN5sse_fC2Ev(ptr noundef nonnull align 4 dereferenceable(16) %455), !dbg !4144
  call void @llvm.dbg.declare(metadata ptr %457, metadata !1895, metadata !DIExpression()), !dbg !4145
  store i32 0, ptr %457, align 4, !dbg !4145
  br label %2515, !dbg !4146

2515:                                             ; preds = %2518, %2512
  %2516 = load i32, ptr %457, align 4, !dbg !4147
  %2517 = icmp slt i32 %2516, 4, !dbg !4148
  br i1 %2517, label %2518, label %2525, !dbg !4149

2518:                                             ; preds = %2515
  %2519 = load float, ptr %456, align 4, !dbg !4150
  %2520 = load i32, ptr %457, align 4, !dbg !4151
  %2521 = sext i32 %2520 to i64, !dbg !4152
  %2522 = getelementptr inbounds [4 x float], ptr %455, i64 0, i64 %2521, !dbg !4152
  store float %2519, ptr %2522, align 4, !dbg !4153
  %2523 = load i32, ptr %457, align 4, !dbg !4154
  %2524 = add nsw i32 %2523, 1, !dbg !4154
  store i32 %2524, ptr %457, align 4, !dbg !4154
  br label %2515, !dbg !4155, !llvm.loop !4156

2525:                                             ; preds = %2515
  %2526 = load { <2 x float>, <2 x float> }, ptr %455, align 4, !dbg !4158
  %2527 = extractvalue { <2 x float>, <2 x float> } %2526, 0, !dbg !4159
  store <2 x float> %2527, ptr %462, align 4, !dbg !4159
  %2528 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %462, i32 0, i32 1, !dbg !4159
  %2529 = extractvalue { <2 x float>, <2 x float> } %2526, 1, !dbg !4159
  store <2 x float> %2529, ptr %2528, align 4, !dbg !4159
  store ptr %2514, ptr %419, align 8
  call void @llvm.dbg.declare(metadata ptr %419, metadata !2624, metadata !DIExpression()), !dbg !4160
  store ptr %462, ptr %420, align 8
  call void @llvm.dbg.declare(metadata ptr %420, metadata !2628, metadata !DIExpression()), !dbg !4162
  %2530 = load ptr, ptr %419, align 8
  call void @llvm.dbg.declare(metadata ptr %421, metadata !2630, metadata !DIExpression()), !dbg !4163
  %2531 = call noundef nonnull align 4 dereferenceable(16) ptr @_ZN4RTTL7RTVec_tILi1E5sse_fLi0EEcvRNS_8RTData_tILi1ES1_Li0EEEEv(ptr noundef nonnull align 4 dereferenceable(16) %2530), !dbg !4164
  store ptr %2531, ptr %421, align 8, !dbg !4163
  %2532 = load ptr, ptr %421, align 8, !dbg !4165
  %2533 = load ptr, ptr %420, align 8, !dbg !4166
  store ptr %2532, ptr %380, align 8
  call void @llvm.dbg.declare(metadata ptr %380, metadata !2635, metadata !DIExpression()), !dbg !4167
  store ptr %2533, ptr %381, align 8
  call void @llvm.dbg.declare(metadata ptr %381, metadata !2639, metadata !DIExpression()), !dbg !4169
  %2534 = load ptr, ptr %380, align 8
  call void @llvm.dbg.declare(metadata ptr %382, metadata !2641, metadata !DIExpression()), !dbg !4170
  store i32 0, ptr %382, align 4, !dbg !4170
  br label %2535, !dbg !4171

2535:                                             ; preds = %2538, %2525
  %2536 = load i32, ptr %382, align 4, !dbg !4172
  %2537 = icmp slt i32 %2536, 1, !dbg !4173
  br i1 %2537, label %2538, label %2545, !dbg !4174

2538:                                             ; preds = %2535
  %2539 = load ptr, ptr %381, align 8, !dbg !4175
  %2540 = load i32, ptr %382, align 4, !dbg !4176
  %2541 = sext i32 %2540 to i64, !dbg !4177
  %2542 = getelementptr inbounds [1 x %struct.sse_f], ptr %2534, i64 0, i64 %2541, !dbg !4177
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2542, ptr align 4 %2539, i64 16, i1 false), !dbg !4178
  %2543 = load i32, ptr %382, align 4, !dbg !4179
  %2544 = add nsw i32 %2543, 1, !dbg !4179
  store i32 %2544, ptr %382, align 4, !dbg !4179
  br label %2535, !dbg !4180, !llvm.loop !4181

2545:                                             ; preds = %2535
  store float 0xC7EFFFFFE0000000, ptr %459, align 4
  call void @llvm.dbg.declare(metadata ptr %459, metadata !1886, metadata !DIExpression()), !dbg !4183
  call void @llvm.dbg.declare(metadata ptr %458, metadata !1893, metadata !DIExpression()), !dbg !4185
  call void @_ZN5sse_fC2Ev(ptr noundef nonnull align 4 dereferenceable(16) %458), !dbg !4185
  call void @llvm.dbg.declare(metadata ptr %460, metadata !1895, metadata !DIExpression()), !dbg !4186
  store i32 0, ptr %460, align 4, !dbg !4186
  br label %2546, !dbg !4187

2546:                                             ; preds = %2549, %2545
  %2547 = load i32, ptr %460, align 4, !dbg !4188
  %2548 = icmp slt i32 %2547, 4, !dbg !4189
  br i1 %2548, label %2549, label %2556, !dbg !4190

2549:                                             ; preds = %2546
  %2550 = load float, ptr %459, align 4, !dbg !4191
  %2551 = load i32, ptr %460, align 4, !dbg !4192
  %2552 = sext i32 %2551 to i64, !dbg !4193
  %2553 = getelementptr inbounds [4 x float], ptr %458, i64 0, i64 %2552, !dbg !4193
  store float %2550, ptr %2553, align 4, !dbg !4194
  %2554 = load i32, ptr %460, align 4, !dbg !4195
  %2555 = add nsw i32 %2554, 1, !dbg !4195
  store i32 %2555, ptr %460, align 4, !dbg !4195
  br label %2546, !dbg !4196, !llvm.loop !4197

2556:                                             ; preds = %2546
  %2557 = load { <2 x float>, <2 x float> }, ptr %458, align 4, !dbg !4199
  %2558 = extractvalue { <2 x float>, <2 x float> } %2557, 0, !dbg !4200
  store <2 x float> %2558, ptr %463, align 4, !dbg !4200
  %2559 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %463, i32 0, i32 1, !dbg !4200
  %2560 = extractvalue { <2 x float>, <2 x float> } %2557, 1, !dbg !4200
  store <2 x float> %2560, ptr %2559, align 4, !dbg !4200
  %2561 = getelementptr inbounds %"class.RTTL::RTBox_t", ptr %2514, i32 0, i32 1, !dbg !4201
  store ptr %2561, ptr %422, align 8
  call void @llvm.dbg.declare(metadata ptr %422, metadata !2624, metadata !DIExpression()), !dbg !4202
  store ptr %463, ptr %423, align 8
  call void @llvm.dbg.declare(metadata ptr %423, metadata !2628, metadata !DIExpression()), !dbg !4204
  %2562 = load ptr, ptr %422, align 8
  call void @llvm.dbg.declare(metadata ptr %424, metadata !2630, metadata !DIExpression()), !dbg !4205
  %2563 = call noundef nonnull align 4 dereferenceable(16) ptr @_ZN4RTTL7RTVec_tILi1E5sse_fLi0EEcvRNS_8RTData_tILi1ES1_Li0EEEEv(ptr noundef nonnull align 4 dereferenceable(16) %2562), !dbg !4206
  store ptr %2563, ptr %424, align 8, !dbg !4205
  %2564 = load ptr, ptr %424, align 8, !dbg !4207
  %2565 = load ptr, ptr %423, align 8, !dbg !4208
  store ptr %2564, ptr %377, align 8
  call void @llvm.dbg.declare(metadata ptr %377, metadata !2635, metadata !DIExpression()), !dbg !4209
  store ptr %2565, ptr %378, align 8
  call void @llvm.dbg.declare(metadata ptr %378, metadata !2639, metadata !DIExpression()), !dbg !4211
  %2566 = load ptr, ptr %377, align 8
  call void @llvm.dbg.declare(metadata ptr %379, metadata !2641, metadata !DIExpression()), !dbg !4212
  store i32 0, ptr %379, align 4, !dbg !4212
  br label %2567, !dbg !4213

2567:                                             ; preds = %2570, %2556
  %2568 = load i32, ptr %379, align 4, !dbg !4214
  %2569 = icmp slt i32 %2568, 1, !dbg !4215
  br i1 %2569, label %2570, label %2577, !dbg !4216

2570:                                             ; preds = %2567
  %2571 = load ptr, ptr %378, align 8, !dbg !4217
  %2572 = load i32, ptr %379, align 4, !dbg !4218
  %2573 = sext i32 %2572 to i64, !dbg !4219
  %2574 = getelementptr inbounds [1 x %struct.sse_f], ptr %2566, i64 0, i64 %2573, !dbg !4219
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2574, ptr align 4 %2571, i64 16, i1 false), !dbg !4220
  %2575 = load i32, ptr %379, align 4, !dbg !4221
  %2576 = add nsw i32 %2575, 1, !dbg !4221
  store i32 %2576, ptr %379, align 4, !dbg !4221
  br label %2567, !dbg !4222, !llvm.loop !4223

2577:                                             ; preds = %2567
  call void @llvm.dbg.declare(metadata ptr %704, metadata !4225, metadata !DIExpression()), !dbg !4227
  store i32 1, ptr %704, align 4, !dbg !4227
  call void @llvm.dbg.declare(metadata ptr %705, metadata !4228, metadata !DIExpression()), !dbg !4229
  store i32 0, ptr %705, align 4, !dbg !4229
  br label %2578, !dbg !4230

2578:                                             ; preds = %2878, %2577
  %2579 = load i32, ptr %704, align 4, !dbg !4231
  %2580 = load i32, ptr %675, align 4, !dbg !4233
  %2581 = icmp slt i32 %2579, %2580, !dbg !4234
  br i1 %2581, label %2582, label %2881, !dbg !4235

2582:                                             ; preds = %2578
  %2583 = load i32, ptr %700, align 4, !dbg !4236
  %2584 = sext i32 %2583 to i64, !dbg !4238
  %2585 = getelementptr inbounds [3 x [32 x %"class.RTTL::AABB"]], ptr @_ZN4RTTL15OnDemandBuilder9binBoundsE, i64 0, i64 %2584, !dbg !4238
  %2586 = load i32, ptr %704, align 4, !dbg !4239
  %2587 = sub nsw i32 %2586, 1, !dbg !4240
  %2588 = sext i32 %2587 to i64, !dbg !4238
  %2589 = getelementptr inbounds [32 x %"class.RTTL::AABB"], ptr %2585, i64 0, i64 %2588, !dbg !4238
  store ptr %703, ptr %658, align 8
  call void @llvm.dbg.declare(metadata ptr %658, metadata !1978, metadata !DIExpression()), !dbg !4241
  store ptr %2589, ptr %659, align 8
  call void @llvm.dbg.declare(metadata ptr %659, metadata !1983, metadata !DIExpression()), !dbg !4243
  %2590 = load ptr, ptr %658, align 8
  %2591 = load ptr, ptr %659, align 8, !dbg !4244
  store ptr %2590, ptr %314, align 8
  call void @llvm.dbg.declare(metadata ptr %314, metadata !1986, metadata !DIExpression()), !dbg !4245
  store ptr %2591, ptr %315, align 8
  call void @llvm.dbg.declare(metadata ptr %315, metadata !1991, metadata !DIExpression()), !dbg !4247
  %2592 = load ptr, ptr %314, align 8
  call void @llvm.dbg.declare(metadata ptr %316, metadata !1993, metadata !DIExpression()), !dbg !4248
  %2593 = call noundef nonnull align 4 dereferenceable(16) ptr @_ZN4RTTL7RTVec_tILi1E5sse_fLi0EEcvRNS_8RTData_tILi1ES1_Li0EEEEv(ptr noundef nonnull align 4 dereferenceable(16) %2592), !dbg !4249
  store ptr %2593, ptr %316, align 8, !dbg !4248
  call void @llvm.dbg.declare(metadata ptr %317, metadata !1996, metadata !DIExpression()), !dbg !4250
  store i32 0, ptr %317, align 4, !dbg !4250
  br label %2594, !dbg !4251

2594:                                             ; preds = %2656, %2582
  %2595 = load i32, ptr %317, align 4, !dbg !4252
  %2596 = icmp slt i32 %2595, 1, !dbg !4253
  br i1 %2596, label %2597, label %2673, !dbg !4254

2597:                                             ; preds = %2594
  %2598 = load ptr, ptr %316, align 8, !dbg !4255
  %2599 = load i32, ptr %317, align 4, !dbg !4256
  store ptr %2598, ptr %310, align 8
  call void @llvm.dbg.declare(metadata ptr %310, metadata !2006, metadata !DIExpression()), !dbg !4257
  store i32 %2599, ptr %311, align 4
  call void @llvm.dbg.declare(metadata ptr %311, metadata !2011, metadata !DIExpression()), !dbg !4259
  %2600 = load ptr, ptr %310, align 8
  %2601 = load i32, ptr %311, align 4, !dbg !4260
  %2602 = sext i32 %2601 to i64, !dbg !4261
  %2603 = getelementptr inbounds [1 x %struct.sse_f], ptr %2600, i64 0, i64 %2602, !dbg !4261
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %319, ptr align 4 %2603, i64 16, i1 false), !dbg !4255
  %2604 = load ptr, ptr %315, align 8, !dbg !4262
  %2605 = load i32, ptr %317, align 4, !dbg !4263
  %2606 = call { <2 x float>, <2 x float> } @_ZNK4RTTL7RTVec_tILi1E5sse_fLi0EEixEi(ptr noundef nonnull align 4 dereferenceable(16) %2604, i32 noundef %2605), !dbg !4262
  %2607 = extractvalue { <2 x float>, <2 x float> } %2606, 0, !dbg !4262
  store <2 x float> %2607, ptr %320, align 4, !dbg !4262
  %2608 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %320, i32 0, i32 1, !dbg !4262
  %2609 = extractvalue { <2 x float>, <2 x float> } %2606, 1, !dbg !4262
  store <2 x float> %2609, ptr %2608, align 4, !dbg !4262
  %2610 = load <2 x float>, ptr %319, align 4, !dbg !4264
  %2611 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %319, i32 0, i32 1, !dbg !4264
  %2612 = load <2 x float>, ptr %2611, align 4, !dbg !4264
  %2613 = load <2 x float>, ptr %320, align 4, !dbg !4264
  %2614 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %320, i32 0, i32 1, !dbg !4264
  %2615 = load <2 x float>, ptr %2614, align 4, !dbg !4264
  store <2 x float> %2610, ptr %251, align 4
  %2616 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %251, i32 0, i32 1
  store <2 x float> %2612, ptr %2616, align 4
  store <2 x float> %2613, ptr %252, align 4
  %2617 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %252, i32 0, i32 1
  store <2 x float> %2615, ptr %2617, align 4
  call void @llvm.dbg.declare(metadata ptr %251, metadata !2018, metadata !DIExpression()), !dbg !4265
  call void @llvm.dbg.declare(metadata ptr %252, metadata !2024, metadata !DIExpression()), !dbg !4267
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %253, ptr align 4 %251, i64 16, i1 false), !dbg !4268
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %254, ptr align 4 %252, i64 16, i1 false), !dbg !4269
  %2618 = load <2 x float>, ptr %253, align 4, !dbg !4270
  %2619 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %253, i32 0, i32 1, !dbg !4270
  %2620 = load <2 x float>, ptr %2619, align 4, !dbg !4270
  %2621 = load <2 x float>, ptr %254, align 4, !dbg !4270
  %2622 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %254, i32 0, i32 1, !dbg !4270
  %2623 = load <2 x float>, ptr %2622, align 4, !dbg !4270
  store <2 x float> %2618, ptr %211, align 4
  %2624 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %211, i32 0, i32 1
  store <2 x float> %2620, ptr %2624, align 4
  store <2 x float> %2621, ptr %212, align 4
  %2625 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %212, i32 0, i32 1
  store <2 x float> %2623, ptr %2625, align 4
  call void @llvm.dbg.declare(metadata ptr %211, metadata !2029, metadata !DIExpression()), !dbg !4271
  call void @llvm.dbg.declare(metadata ptr %212, metadata !2033, metadata !DIExpression()), !dbg !4273
  call void @llvm.dbg.declare(metadata ptr %210, metadata !2035, metadata !DIExpression()), !dbg !4274
  call void @_ZN5sse_fC2Ev(ptr noundef nonnull align 4 dereferenceable(16) %210), !dbg !4274
  call void @llvm.dbg.declare(metadata ptr %213, metadata !2037, metadata !DIExpression()), !dbg !4275
  store i32 0, ptr %213, align 4, !dbg !4275
  br label %2626, !dbg !4276

2626:                                             ; preds = %2649, %2597
  %2627 = load i32, ptr %213, align 4, !dbg !4277
  %2628 = icmp slt i32 %2627, 4, !dbg !4278
  br i1 %2628, label %2629, label %2656, !dbg !4279

2629:                                             ; preds = %2626
  %2630 = load i32, ptr %213, align 4, !dbg !4280
  %2631 = sext i32 %2630 to i64, !dbg !4280
  %2632 = getelementptr inbounds [4 x float], ptr %211, i64 0, i64 %2631, !dbg !4280
  %2633 = load float, ptr %2632, align 4, !dbg !4280
  %2634 = load i32, ptr %213, align 4, !dbg !4280
  %2635 = sext i32 %2634 to i64, !dbg !4280
  %2636 = getelementptr inbounds [4 x float], ptr %212, i64 0, i64 %2635, !dbg !4280
  %2637 = load float, ptr %2636, align 4, !dbg !4280
  %2638 = fcmp olt float %2633, %2637, !dbg !4280
  br i1 %2638, label %2639, label %2644, !dbg !4280

2639:                                             ; preds = %2629
  %2640 = load i32, ptr %213, align 4, !dbg !4280
  %2641 = sext i32 %2640 to i64, !dbg !4280
  %2642 = getelementptr inbounds [4 x float], ptr %211, i64 0, i64 %2641, !dbg !4280
  %2643 = load float, ptr %2642, align 4, !dbg !4280
  br label %2649, !dbg !4280

2644:                                             ; preds = %2629
  %2645 = load i32, ptr %213, align 4, !dbg !4280
  %2646 = sext i32 %2645 to i64, !dbg !4280
  %2647 = getelementptr inbounds [4 x float], ptr %212, i64 0, i64 %2646, !dbg !4280
  %2648 = load float, ptr %2647, align 4, !dbg !4280
  br label %2649, !dbg !4280

2649:                                             ; preds = %2644, %2639
  %2650 = phi float [ %2643, %2639 ], [ %2648, %2644 ], !dbg !4280
  %2651 = load i32, ptr %213, align 4, !dbg !4281
  %2652 = sext i32 %2651 to i64, !dbg !4281
  %2653 = getelementptr inbounds [4 x float], ptr %210, i64 0, i64 %2652, !dbg !4281
  store float %2650, ptr %2653, align 4, !dbg !4282
  %2654 = load i32, ptr %213, align 4, !dbg !4283
  %2655 = add nsw i32 %2654, 1, !dbg !4283
  store i32 %2655, ptr %213, align 4, !dbg !4283
  br label %2626, !dbg !4284, !llvm.loop !4285

2656:                                             ; preds = %2626
  %2657 = load { <2 x float>, <2 x float> }, ptr %210, align 4, !dbg !4287
  %2658 = extractvalue { <2 x float>, <2 x float> } %2657, 0, !dbg !4270
  store <2 x float> %2658, ptr %250, align 4, !dbg !4270
  %2659 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %250, i32 0, i32 1, !dbg !4270
  %2660 = extractvalue { <2 x float>, <2 x float> } %2657, 1, !dbg !4270
  store <2 x float> %2660, ptr %2659, align 4, !dbg !4270
  %2661 = load { <2 x float>, <2 x float> }, ptr %250, align 4, !dbg !4288
  %2662 = extractvalue { <2 x float>, <2 x float> } %2661, 0, !dbg !4264
  store <2 x float> %2662, ptr %318, align 4, !dbg !4264
  %2663 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %318, i32 0, i32 1, !dbg !4264
  %2664 = extractvalue { <2 x float>, <2 x float> } %2661, 1, !dbg !4264
  store <2 x float> %2664, ptr %2663, align 4, !dbg !4264
  %2665 = load ptr, ptr %316, align 8, !dbg !4289
  %2666 = load i32, ptr %317, align 4, !dbg !4290
  store ptr %2665, ptr %312, align 8
  call void @llvm.dbg.declare(metadata ptr %312, metadata !2006, metadata !DIExpression()), !dbg !4291
  store i32 %2666, ptr %313, align 4
  call void @llvm.dbg.declare(metadata ptr %313, metadata !2011, metadata !DIExpression()), !dbg !4293
  %2667 = load ptr, ptr %312, align 8
  %2668 = load i32, ptr %313, align 4, !dbg !4294
  %2669 = sext i32 %2668 to i64, !dbg !4295
  %2670 = getelementptr inbounds [1 x %struct.sse_f], ptr %2667, i64 0, i64 %2669, !dbg !4295
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2670, ptr align 4 %318, i64 16, i1 false), !dbg !4296
  %2671 = load i32, ptr %317, align 4, !dbg !4297
  %2672 = add nsw i32 %2671, 1, !dbg !4297
  store i32 %2672, ptr %317, align 4, !dbg !4297
  br label %2594, !dbg !4298, !llvm.loop !4299

2673:                                             ; preds = %2594
  %2674 = getelementptr inbounds %"class.RTTL::RTBox_t", ptr %2590, i32 0, i32 1, !dbg !4301
  %2675 = load ptr, ptr %659, align 8, !dbg !4302
  %2676 = getelementptr inbounds %"class.RTTL::RTBox_t", ptr %2675, i32 0, i32 1, !dbg !4303
  store ptr %2674, ptr %259, align 8
  call void @llvm.dbg.declare(metadata ptr %259, metadata !2069, metadata !DIExpression()), !dbg !4304
  store ptr %2676, ptr %260, align 8
  call void @llvm.dbg.declare(metadata ptr %260, metadata !2073, metadata !DIExpression()), !dbg !4306
  %2677 = load ptr, ptr %259, align 8
  call void @llvm.dbg.declare(metadata ptr %261, metadata !2075, metadata !DIExpression()), !dbg !4307
  %2678 = call noundef nonnull align 4 dereferenceable(16) ptr @_ZN4RTTL7RTVec_tILi1E5sse_fLi0EEcvRNS_8RTData_tILi1ES1_Li0EEEEv(ptr noundef nonnull align 4 dereferenceable(16) %2677), !dbg !4308
  store ptr %2678, ptr %261, align 8, !dbg !4307
  call void @llvm.dbg.declare(metadata ptr %262, metadata !2078, metadata !DIExpression()), !dbg !4309
  store i32 0, ptr %262, align 4, !dbg !4309
  br label %2679, !dbg !4310

2679:                                             ; preds = %2741, %2673
  %2680 = load i32, ptr %262, align 4, !dbg !4311
  %2681 = icmp slt i32 %2680, 1, !dbg !4312
  br i1 %2681, label %2682, label %2758, !dbg !4313

2682:                                             ; preds = %2679
  %2683 = load ptr, ptr %261, align 8, !dbg !4314
  %2684 = load i32, ptr %262, align 4, !dbg !4315
  store ptr %2683, ptr %255, align 8
  call void @llvm.dbg.declare(metadata ptr %255, metadata !2006, metadata !DIExpression()), !dbg !4316
  store i32 %2684, ptr %256, align 4
  call void @llvm.dbg.declare(metadata ptr %256, metadata !2011, metadata !DIExpression()), !dbg !4318
  %2685 = load ptr, ptr %255, align 8
  %2686 = load i32, ptr %256, align 4, !dbg !4319
  %2687 = sext i32 %2686 to i64, !dbg !4320
  %2688 = getelementptr inbounds [1 x %struct.sse_f], ptr %2685, i64 0, i64 %2687, !dbg !4320
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %264, ptr align 4 %2688, i64 16, i1 false), !dbg !4314
  %2689 = load ptr, ptr %260, align 8, !dbg !4321
  %2690 = load i32, ptr %262, align 4, !dbg !4322
  %2691 = call { <2 x float>, <2 x float> } @_ZNK4RTTL7RTVec_tILi1E5sse_fLi0EEixEi(ptr noundef nonnull align 4 dereferenceable(16) %2689, i32 noundef %2690), !dbg !4321
  %2692 = extractvalue { <2 x float>, <2 x float> } %2691, 0, !dbg !4321
  store <2 x float> %2692, ptr %265, align 4, !dbg !4321
  %2693 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %265, i32 0, i32 1, !dbg !4321
  %2694 = extractvalue { <2 x float>, <2 x float> } %2691, 1, !dbg !4321
  store <2 x float> %2694, ptr %2693, align 4, !dbg !4321
  %2695 = load <2 x float>, ptr %264, align 4, !dbg !4323
  %2696 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %264, i32 0, i32 1, !dbg !4323
  %2697 = load <2 x float>, ptr %2696, align 4, !dbg !4323
  %2698 = load <2 x float>, ptr %265, align 4, !dbg !4323
  %2699 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %265, i32 0, i32 1, !dbg !4323
  %2700 = load <2 x float>, ptr %2699, align 4, !dbg !4323
  store <2 x float> %2695, ptr %206, align 4
  %2701 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %206, i32 0, i32 1
  store <2 x float> %2697, ptr %2701, align 4
  store <2 x float> %2698, ptr %207, align 4
  %2702 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %207, i32 0, i32 1
  store <2 x float> %2700, ptr %2702, align 4
  call void @llvm.dbg.declare(metadata ptr %206, metadata !2096, metadata !DIExpression()), !dbg !4324
  call void @llvm.dbg.declare(metadata ptr %207, metadata !2100, metadata !DIExpression()), !dbg !4326
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %208, ptr align 4 %206, i64 16, i1 false), !dbg !4327
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %209, ptr align 4 %207, i64 16, i1 false), !dbg !4328
  %2703 = load <2 x float>, ptr %208, align 4, !dbg !4329
  %2704 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %208, i32 0, i32 1, !dbg !4329
  %2705 = load <2 x float>, ptr %2704, align 4, !dbg !4329
  %2706 = load <2 x float>, ptr %209, align 4, !dbg !4329
  %2707 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %209, i32 0, i32 1, !dbg !4329
  %2708 = load <2 x float>, ptr %2707, align 4, !dbg !4329
  store <2 x float> %2703, ptr %166, align 4
  %2709 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %166, i32 0, i32 1
  store <2 x float> %2705, ptr %2709, align 4
  store <2 x float> %2706, ptr %167, align 4
  %2710 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %167, i32 0, i32 1
  store <2 x float> %2708, ptr %2710, align 4
  call void @llvm.dbg.declare(metadata ptr %166, metadata !2105, metadata !DIExpression()), !dbg !4330
  call void @llvm.dbg.declare(metadata ptr %167, metadata !2109, metadata !DIExpression()), !dbg !4332
  call void @llvm.dbg.declare(metadata ptr %165, metadata !2111, metadata !DIExpression()), !dbg !4333
  call void @_ZN5sse_fC2Ev(ptr noundef nonnull align 4 dereferenceable(16) %165), !dbg !4333
  call void @llvm.dbg.declare(metadata ptr %168, metadata !2113, metadata !DIExpression()), !dbg !4334
  store i32 0, ptr %168, align 4, !dbg !4334
  br label %2711, !dbg !4335

2711:                                             ; preds = %2734, %2682
  %2712 = load i32, ptr %168, align 4, !dbg !4336
  %2713 = icmp slt i32 %2712, 4, !dbg !4337
  br i1 %2713, label %2714, label %2741, !dbg !4338

2714:                                             ; preds = %2711
  %2715 = load i32, ptr %168, align 4, !dbg !4339
  %2716 = sext i32 %2715 to i64, !dbg !4339
  %2717 = getelementptr inbounds [4 x float], ptr %166, i64 0, i64 %2716, !dbg !4339
  %2718 = load float, ptr %2717, align 4, !dbg !4339
  %2719 = load i32, ptr %168, align 4, !dbg !4339
  %2720 = sext i32 %2719 to i64, !dbg !4339
  %2721 = getelementptr inbounds [4 x float], ptr %167, i64 0, i64 %2720, !dbg !4339
  %2722 = load float, ptr %2721, align 4, !dbg !4339
  %2723 = fcmp ogt float %2718, %2722, !dbg !4339
  br i1 %2723, label %2724, label %2729, !dbg !4339

2724:                                             ; preds = %2714
  %2725 = load i32, ptr %168, align 4, !dbg !4339
  %2726 = sext i32 %2725 to i64, !dbg !4339
  %2727 = getelementptr inbounds [4 x float], ptr %166, i64 0, i64 %2726, !dbg !4339
  %2728 = load float, ptr %2727, align 4, !dbg !4339
  br label %2734, !dbg !4339

2729:                                             ; preds = %2714
  %2730 = load i32, ptr %168, align 4, !dbg !4339
  %2731 = sext i32 %2730 to i64, !dbg !4339
  %2732 = getelementptr inbounds [4 x float], ptr %167, i64 0, i64 %2731, !dbg !4339
  %2733 = load float, ptr %2732, align 4, !dbg !4339
  br label %2734, !dbg !4339

2734:                                             ; preds = %2729, %2724
  %2735 = phi float [ %2728, %2724 ], [ %2733, %2729 ], !dbg !4339
  %2736 = load i32, ptr %168, align 4, !dbg !4340
  %2737 = sext i32 %2736 to i64, !dbg !4340
  %2738 = getelementptr inbounds [4 x float], ptr %165, i64 0, i64 %2737, !dbg !4340
  store float %2735, ptr %2738, align 4, !dbg !4341
  %2739 = load i32, ptr %168, align 4, !dbg !4342
  %2740 = add nsw i32 %2739, 1, !dbg !4342
  store i32 %2740, ptr %168, align 4, !dbg !4342
  br label %2711, !dbg !4343, !llvm.loop !4344

2741:                                             ; preds = %2711
  %2742 = load { <2 x float>, <2 x float> }, ptr %165, align 4, !dbg !4346
  %2743 = extractvalue { <2 x float>, <2 x float> } %2742, 0, !dbg !4329
  store <2 x float> %2743, ptr %205, align 4, !dbg !4329
  %2744 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %205, i32 0, i32 1, !dbg !4329
  %2745 = extractvalue { <2 x float>, <2 x float> } %2742, 1, !dbg !4329
  store <2 x float> %2745, ptr %2744, align 4, !dbg !4329
  %2746 = load { <2 x float>, <2 x float> }, ptr %205, align 4, !dbg !4347
  %2747 = extractvalue { <2 x float>, <2 x float> } %2746, 0, !dbg !4323
  store <2 x float> %2747, ptr %263, align 4, !dbg !4323
  %2748 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %263, i32 0, i32 1, !dbg !4323
  %2749 = extractvalue { <2 x float>, <2 x float> } %2746, 1, !dbg !4323
  store <2 x float> %2749, ptr %2748, align 4, !dbg !4323
  %2750 = load ptr, ptr %261, align 8, !dbg !4348
  %2751 = load i32, ptr %262, align 4, !dbg !4349
  store ptr %2750, ptr %257, align 8
  call void @llvm.dbg.declare(metadata ptr %257, metadata !2006, metadata !DIExpression()), !dbg !4350
  store i32 %2751, ptr %258, align 4
  call void @llvm.dbg.declare(metadata ptr %258, metadata !2011, metadata !DIExpression()), !dbg !4352
  %2752 = load ptr, ptr %257, align 8
  %2753 = load i32, ptr %258, align 4, !dbg !4353
  %2754 = sext i32 %2753 to i64, !dbg !4354
  %2755 = getelementptr inbounds [1 x %struct.sse_f], ptr %2752, i64 0, i64 %2754, !dbg !4354
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2755, ptr align 4 %263, i64 16, i1 false), !dbg !4355
  %2756 = load i32, ptr %262, align 4, !dbg !4356
  %2757 = add nsw i32 %2756, 1, !dbg !4356
  store i32 %2757, ptr %262, align 4, !dbg !4356
  br label %2679, !dbg !4357, !llvm.loop !4358

2758:                                             ; preds = %2679
  %2759 = load i32, ptr %700, align 4, !dbg !4360
  %2760 = sext i32 %2759 to i64, !dbg !4361
  %2761 = getelementptr inbounds [3 x [32 x i32]], ptr @_ZN4RTTL15OnDemandBuilder8binCountE, i64 0, i64 %2760, !dbg !4361
  %2762 = load i32, ptr %704, align 4, !dbg !4362
  %2763 = sub nsw i32 %2762, 1, !dbg !4363
  %2764 = sext i32 %2763 to i64, !dbg !4361
  %2765 = getelementptr inbounds [32 x i32], ptr %2761, i64 0, i64 %2764, !dbg !4361
  %2766 = load i32, ptr %2765, align 4, !dbg !4361
  %2767 = load i32, ptr %705, align 4, !dbg !4364
  %2768 = add nsw i32 %2767, %2766, !dbg !4364
  store i32 %2768, ptr %705, align 4, !dbg !4364
  call void @llvm.dbg.declare(metadata ptr %706, metadata !4365, metadata !DIExpression()), !dbg !4366
  %2769 = load i32, ptr %705, align 4, !dbg !4367
  store i32 %2769, ptr %706, align 4, !dbg !4366
  call void @llvm.dbg.declare(metadata ptr %707, metadata !4368, metadata !DIExpression()), !dbg !4369
  %2770 = load i32, ptr %670, align 4, !dbg !4370
  %2771 = load i32, ptr %706, align 4, !dbg !4371
  %2772 = sub nsw i32 %2770, %2771, !dbg !4372
  store i32 %2772, ptr %707, align 4, !dbg !4369
  %2773 = load i32, ptr %706, align 4, !dbg !4373
  %2774 = icmp eq i32 %2773, 0, !dbg !4375
  br i1 %2774, label %2778, label %2775, !dbg !4376

2775:                                             ; preds = %2758
  %2776 = load i32, ptr %707, align 4, !dbg !4377
  %2777 = icmp eq i32 %2776, 0, !dbg !4378
  br label %2778, !dbg !4376

2778:                                             ; preds = %2775, %2758
  %2779 = phi i1 [ true, %2758 ], [ %2777, %2775 ]
  br i1 %2779, label %2780, label %2781, !dbg !4379

2780:                                             ; preds = %2778
  br label %2878, !dbg !4380

2781:                                             ; preds = %2778
  call void @llvm.dbg.declare(metadata ptr %708, metadata !4381, metadata !DIExpression()), !dbg !4382
  store ptr %703, ptr %592, align 8
  call void @llvm.dbg.declare(metadata ptr %592, metadata !3167, metadata !DIExpression()), !dbg !4383
  %2782 = load ptr, ptr %592, align 8
  store ptr %2782, ptr %515, align 8
  call void @llvm.dbg.declare(metadata ptr %515, metadata !3171, metadata !DIExpression()), !dbg !4385
  %2783 = load ptr, ptr %515, align 8
  store ptr %2782, ptr %512, align 8
  call void @llvm.dbg.declare(metadata ptr %512, metadata !3175, metadata !DIExpression()), !dbg !4387
  %2784 = load ptr, ptr %512, align 8
  %2785 = getelementptr inbounds %"class.RTTL::RTBox_t", ptr %2784, i32 0, i32 1, !dbg !4389
  call void @_ZN4RTTL7RTBox_tILi3EfLi0EEC2ERKNS_7RTVec_tILi3EfLi0EEES5_(ptr noundef nonnull align 4 dereferenceable(24) %593, ptr noundef nonnull align 4 dereferenceable(12) %2783, ptr noundef nonnull align 4 dereferenceable(12) %2785), !dbg !4390
  store ptr %593, ptr %507, align 8
  call void @llvm.dbg.declare(metadata ptr %507, metadata !3181, metadata !DIExpression()), !dbg !4391
  %2786 = load ptr, ptr %507, align 8
  call void @llvm.dbg.declare(metadata ptr %508, metadata !3186, metadata !DIExpression()), !dbg !4393
  %2787 = getelementptr inbounds %"class.RTTL::RTBox_t.1", ptr %2786, i32 0, i32 1, !dbg !4394
  %2788 = call noundef float @_ZNK4RTTL7RTVec_tILi3EfLi0EEixEi(ptr noundef nonnull align 4 dereferenceable(12) %2787, i32 noundef 0), !dbg !4394
  %2789 = call noundef float @_ZNK4RTTL7RTVec_tILi3EfLi0EEixEi(ptr noundef nonnull align 4 dereferenceable(12) %2786, i32 noundef 0), !dbg !4395
  %2790 = fsub float %2788, %2789, !dbg !4396
  %2791 = getelementptr inbounds %"class.RTTL::RTBox_t.1", ptr %2786, i32 0, i32 1, !dbg !4397
  %2792 = call noundef float @_ZNK4RTTL7RTVec_tILi3EfLi0EEixEi(ptr noundef nonnull align 4 dereferenceable(12) %2791, i32 noundef 1), !dbg !4397
  %2793 = call noundef float @_ZNK4RTTL7RTVec_tILi3EfLi0EEixEi(ptr noundef nonnull align 4 dereferenceable(12) %2786, i32 noundef 1), !dbg !4398
  %2794 = fsub float %2792, %2793, !dbg !4399
  %2795 = fmul float %2790, %2794, !dbg !4400
  store float %2795, ptr %508, align 4, !dbg !4393
  %2796 = load float, ptr %508, align 4, !dbg !4401
  %2797 = getelementptr inbounds %"class.RTTL::RTBox_t.1", ptr %2786, i32 0, i32 1, !dbg !4402
  %2798 = call noundef float @_ZNK4RTTL7RTVec_tILi3EfLi0EEixEi(ptr noundef nonnull align 4 dereferenceable(12) %2797, i32 noundef 0), !dbg !4402
  %2799 = call noundef float @_ZNK4RTTL7RTVec_tILi3EfLi0EEixEi(ptr noundef nonnull align 4 dereferenceable(12) %2786, i32 noundef 0), !dbg !4403
  %2800 = fsub float %2798, %2799, !dbg !4404
  %2801 = getelementptr inbounds %"class.RTTL::RTBox_t.1", ptr %2786, i32 0, i32 1, !dbg !4405
  %2802 = call noundef float @_ZNK4RTTL7RTVec_tILi3EfLi0EEixEi(ptr noundef nonnull align 4 dereferenceable(12) %2801, i32 noundef 2), !dbg !4405
  %2803 = call noundef float @_ZNK4RTTL7RTVec_tILi3EfLi0EEixEi(ptr noundef nonnull align 4 dereferenceable(12) %2786, i32 noundef 2), !dbg !4406
  %2804 = fsub float %2802, %2803, !dbg !4407
  %2805 = call float @llvm.fmuladd.f32(float %2800, float %2804, float %2796), !dbg !4408
  %2806 = getelementptr inbounds %"class.RTTL::RTBox_t.1", ptr %2786, i32 0, i32 1, !dbg !4409
  %2807 = call noundef float @_ZNK4RTTL7RTVec_tILi3EfLi0EEixEi(ptr noundef nonnull align 4 dereferenceable(12) %2806, i32 noundef 1), !dbg !4409
  %2808 = call noundef float @_ZNK4RTTL7RTVec_tILi3EfLi0EEixEi(ptr noundef nonnull align 4 dereferenceable(12) %2786, i32 noundef 1), !dbg !4410
  %2809 = fsub float %2807, %2808, !dbg !4411
  %2810 = getelementptr inbounds %"class.RTTL::RTBox_t.1", ptr %2786, i32 0, i32 1, !dbg !4412
  %2811 = call noundef float @_ZNK4RTTL7RTVec_tILi3EfLi0EEixEi(ptr noundef nonnull align 4 dereferenceable(12) %2810, i32 noundef 2), !dbg !4412
  %2812 = call noundef float @_ZNK4RTTL7RTVec_tILi3EfLi0EEixEi(ptr noundef nonnull align 4 dereferenceable(12) %2786, i32 noundef 2), !dbg !4413
  %2813 = fsub float %2811, %2812, !dbg !4414
  %2814 = call float @llvm.fmuladd.f32(float %2809, float %2813, float %2805), !dbg !4415
  %2815 = fmul float 2.000000e+00, %2814, !dbg !4416
  store float %2815, ptr %508, align 4, !dbg !4417
  %2816 = load float, ptr %508, align 4, !dbg !4418
  store float %2816, ptr %708, align 4, !dbg !4382
  call void @llvm.dbg.declare(metadata ptr %709, metadata !4419, metadata !DIExpression()), !dbg !4420
  %2817 = load i32, ptr %704, align 4, !dbg !4421
  %2818 = sext i32 %2817 to i64, !dbg !4422
  %2819 = getelementptr inbounds [33 x %"class.RTTL::AABB"], ptr @_ZN4RTTL15OnDemandBuilder8rightBoxE, i64 0, i64 %2818, !dbg !4422
  store ptr %2819, ptr %594, align 8
  call void @llvm.dbg.declare(metadata ptr %594, metadata !3167, metadata !DIExpression()), !dbg !4423
  %2820 = load ptr, ptr %594, align 8
  store ptr %2820, ptr %514, align 8
  call void @llvm.dbg.declare(metadata ptr %514, metadata !3171, metadata !DIExpression()), !dbg !4425
  %2821 = load ptr, ptr %514, align 8
  store ptr %2820, ptr %511, align 8
  call void @llvm.dbg.declare(metadata ptr %511, metadata !3175, metadata !DIExpression()), !dbg !4427
  %2822 = load ptr, ptr %511, align 8
  %2823 = getelementptr inbounds %"class.RTTL::RTBox_t", ptr %2822, i32 0, i32 1, !dbg !4429
  call void @_ZN4RTTL7RTBox_tILi3EfLi0EEC2ERKNS_7RTVec_tILi3EfLi0EEES5_(ptr noundef nonnull align 4 dereferenceable(24) %595, ptr noundef nonnull align 4 dereferenceable(12) %2821, ptr noundef nonnull align 4 dereferenceable(12) %2823), !dbg !4430
  store ptr %595, ptr %505, align 8
  call void @llvm.dbg.declare(metadata ptr %505, metadata !3181, metadata !DIExpression()), !dbg !4431
  %2824 = load ptr, ptr %505, align 8
  call void @llvm.dbg.declare(metadata ptr %506, metadata !3186, metadata !DIExpression()), !dbg !4433
  %2825 = getelementptr inbounds %"class.RTTL::RTBox_t.1", ptr %2824, i32 0, i32 1, !dbg !4434
  %2826 = call noundef float @_ZNK4RTTL7RTVec_tILi3EfLi0EEixEi(ptr noundef nonnull align 4 dereferenceable(12) %2825, i32 noundef 0), !dbg !4434
  %2827 = call noundef float @_ZNK4RTTL7RTVec_tILi3EfLi0EEixEi(ptr noundef nonnull align 4 dereferenceable(12) %2824, i32 noundef 0), !dbg !4435
  %2828 = fsub float %2826, %2827, !dbg !4436
  %2829 = getelementptr inbounds %"class.RTTL::RTBox_t.1", ptr %2824, i32 0, i32 1, !dbg !4437
  %2830 = call noundef float @_ZNK4RTTL7RTVec_tILi3EfLi0EEixEi(ptr noundef nonnull align 4 dereferenceable(12) %2829, i32 noundef 1), !dbg !4437
  %2831 = call noundef float @_ZNK4RTTL7RTVec_tILi3EfLi0EEixEi(ptr noundef nonnull align 4 dereferenceable(12) %2824, i32 noundef 1), !dbg !4438
  %2832 = fsub float %2830, %2831, !dbg !4439
  %2833 = fmul float %2828, %2832, !dbg !4440
  store float %2833, ptr %506, align 4, !dbg !4433
  %2834 = load float, ptr %506, align 4, !dbg !4441
  %2835 = getelementptr inbounds %"class.RTTL::RTBox_t.1", ptr %2824, i32 0, i32 1, !dbg !4442
  %2836 = call noundef float @_ZNK4RTTL7RTVec_tILi3EfLi0EEixEi(ptr noundef nonnull align 4 dereferenceable(12) %2835, i32 noundef 0), !dbg !4442
  %2837 = call noundef float @_ZNK4RTTL7RTVec_tILi3EfLi0EEixEi(ptr noundef nonnull align 4 dereferenceable(12) %2824, i32 noundef 0), !dbg !4443
  %2838 = fsub float %2836, %2837, !dbg !4444
  %2839 = getelementptr inbounds %"class.RTTL::RTBox_t.1", ptr %2824, i32 0, i32 1, !dbg !4445
  %2840 = call noundef float @_ZNK4RTTL7RTVec_tILi3EfLi0EEixEi(ptr noundef nonnull align 4 dereferenceable(12) %2839, i32 noundef 2), !dbg !4445
  %2841 = call noundef float @_ZNK4RTTL7RTVec_tILi3EfLi0EEixEi(ptr noundef nonnull align 4 dereferenceable(12) %2824, i32 noundef 2), !dbg !4446
  %2842 = fsub float %2840, %2841, !dbg !4447
  %2843 = call float @llvm.fmuladd.f32(float %2838, float %2842, float %2834), !dbg !4448
  %2844 = getelementptr inbounds %"class.RTTL::RTBox_t.1", ptr %2824, i32 0, i32 1, !dbg !4449
  %2845 = call noundef float @_ZNK4RTTL7RTVec_tILi3EfLi0EEixEi(ptr noundef nonnull align 4 dereferenceable(12) %2844, i32 noundef 1), !dbg !4449
  %2846 = call noundef float @_ZNK4RTTL7RTVec_tILi3EfLi0EEixEi(ptr noundef nonnull align 4 dereferenceable(12) %2824, i32 noundef 1), !dbg !4450
  %2847 = fsub float %2845, %2846, !dbg !4451
  %2848 = getelementptr inbounds %"class.RTTL::RTBox_t.1", ptr %2824, i32 0, i32 1, !dbg !4452
  %2849 = call noundef float @_ZNK4RTTL7RTVec_tILi3EfLi0EEixEi(ptr noundef nonnull align 4 dereferenceable(12) %2848, i32 noundef 2), !dbg !4452
  %2850 = call noundef float @_ZNK4RTTL7RTVec_tILi3EfLi0EEixEi(ptr noundef nonnull align 4 dereferenceable(12) %2824, i32 noundef 2), !dbg !4453
  %2851 = fsub float %2849, %2850, !dbg !4454
  %2852 = call float @llvm.fmuladd.f32(float %2847, float %2851, float %2843), !dbg !4455
  %2853 = fmul float 2.000000e+00, %2852, !dbg !4456
  store float %2853, ptr %506, align 4, !dbg !4457
  %2854 = load float, ptr %506, align 4, !dbg !4458
  store float %2854, ptr %709, align 4, !dbg !4420
  call void @llvm.dbg.declare(metadata ptr %710, metadata !4459, metadata !DIExpression()), !dbg !4460
  %2855 = load float, ptr %708, align 4, !dbg !4461
  %2856 = load i32, ptr %706, align 4, !dbg !4462
  %2857 = sitofp i32 %2856 to float, !dbg !4462
  %2858 = load float, ptr %709, align 4, !dbg !4463
  %2859 = load i32, ptr %707, align 4, !dbg !4464
  %2860 = sitofp i32 %2859 to float, !dbg !4464
  %2861 = fmul float %2858, %2860, !dbg !4465
  %2862 = call float @llvm.fmuladd.f32(float %2855, float %2857, float %2861), !dbg !4466
  %2863 = load float, ptr %691, align 4, !dbg !4467
  %2864 = call float @llvm.fmuladd.f32(float 1.000000e+00, float %2863, float %2862), !dbg !4468
  store float %2864, ptr %710, align 4, !dbg !4460
  %2865 = load float, ptr %710, align 4, !dbg !4469
  %2866 = load float, ptr %694, align 4, !dbg !4471
  %2867 = fcmp olt float %2865, %2866, !dbg !4472
  br i1 %2867, label %2868, label %2877, !dbg !4473

2868:                                             ; preds = %2781
  %2869 = load float, ptr %710, align 4, !dbg !4474
  store float %2869, ptr %694, align 4, !dbg !4476
  %2870 = load i32, ptr %704, align 4, !dbg !4477
  store i32 %2870, ptr %692, align 4, !dbg !4478
  %2871 = load i32, ptr %699, align 4, !dbg !4479
  store i32 %2871, ptr %693, align 4, !dbg !4480
  %2872 = call noundef nonnull align 4 dereferenceable(32) ptr @_ZN4RTTL4AABBaSERKS0_(ptr noundef nonnull align 4 dereferenceable(32) %697, ptr noundef nonnull align 4 dereferenceable(32) %703), !dbg !4481
  %2873 = load i32, ptr %704, align 4, !dbg !4482
  %2874 = sext i32 %2873 to i64, !dbg !4483
  %2875 = getelementptr inbounds [33 x %"class.RTTL::AABB"], ptr @_ZN4RTTL15OnDemandBuilder8rightBoxE, i64 0, i64 %2874, !dbg !4483
  %2876 = call noundef nonnull align 4 dereferenceable(32) ptr @_ZN4RTTL4AABBaSERKS0_(ptr noundef nonnull align 4 dereferenceable(32) %698, ptr noundef nonnull align 4 dereferenceable(32) %2875), !dbg !4484
  br label %2877, !dbg !4485

2877:                                             ; preds = %2868, %2781
  br label %2878, !dbg !4486

2878:                                             ; preds = %2877, %2780
  %2879 = load i32, ptr %704, align 4, !dbg !4487
  %2880 = add nsw i32 %2879, 1, !dbg !4487
  store i32 %2880, ptr %704, align 4, !dbg !4487
  br label %2578, !dbg !4488, !llvm.loop !4489

2881:                                             ; preds = %2578
  br label %2882, !dbg !4491

2882:                                             ; preds = %2881, %2257
  %2883 = load i32, ptr %699, align 4, !dbg !4492
  %2884 = add nsw i32 %2883, 1, !dbg !4492
  store i32 %2884, ptr %699, align 4, !dbg !4492
  br label %2247, !dbg !4493, !llvm.loop !4494

2885:                                             ; preds = %2247
  %2886 = load i32, ptr %692, align 4, !dbg !4496
  %2887 = icmp eq i32 %2886, -1, !dbg !4498
  br i1 %2887, label %2888, label %2889, !dbg !4499

2888:                                             ; preds = %2885
  br label %768, !dbg !4500

2889:                                             ; preds = %2885
  call void @llvm.dbg.declare(metadata ptr %711, metadata !4501, metadata !DIExpression()), !dbg !4502
  %2890 = load ptr, ptr %665, align 8, !dbg !4503
  %2891 = load i32, ptr %668, align 4, !dbg !4504
  %2892 = sext i32 %2891 to i64, !dbg !4505
  %2893 = getelementptr inbounds i32, ptr %2890, i64 %2892, !dbg !4505
  store ptr %2893, ptr %711, align 8, !dbg !4502
  call void @llvm.dbg.declare(metadata ptr %712, metadata !4506, metadata !DIExpression()), !dbg !4507
  %2894 = load ptr, ptr %665, align 8, !dbg !4508
  %2895 = load i32, ptr %669, align 4, !dbg !4509
  %2896 = sext i32 %2895 to i64, !dbg !4510
  %2897 = getelementptr inbounds i32, ptr %2894, i64 %2896, !dbg !4510
  %2898 = getelementptr inbounds i32, ptr %2897, i64 -1, !dbg !4511
  store ptr %2898, ptr %712, align 8, !dbg !4507
  call void @llvm.dbg.declare(metadata ptr %713, metadata !4512, metadata !DIExpression()), !dbg !4513
  call void @llvm.dbg.declare(metadata ptr %714, metadata !4514, metadata !DIExpression()), !dbg !4515
  call void @_ZN4RTTL4AABBC2Ev(ptr noundef nonnull align 4 dereferenceable(32) %714), !dbg !4515
  call void @llvm.dbg.declare(metadata ptr %715, metadata !4516, metadata !DIExpression()), !dbg !4517
  call void @_ZN4RTTL4AABBC2Ev(ptr noundef nonnull align 4 dereferenceable(32) %715), !dbg !4517
  store ptr %714, ptr %642, align 8
  call void @llvm.dbg.declare(metadata ptr %642, metadata !2598, metadata !DIExpression()), !dbg !4518
  %2899 = load ptr, ptr %642, align 8
  store ptr %2899, ptr %452, align 8
  call void @llvm.dbg.declare(metadata ptr %452, metadata !2602, metadata !DIExpression()), !dbg !4520
  %2900 = load ptr, ptr %452, align 8
  store float 0x47EFFFFFE0000000, ptr %447, align 4
  call void @llvm.dbg.declare(metadata ptr %447, metadata !1886, metadata !DIExpression()), !dbg !4522
  call void @llvm.dbg.declare(metadata ptr %446, metadata !1893, metadata !DIExpression()), !dbg !4524
  call void @_ZN5sse_fC2Ev(ptr noundef nonnull align 4 dereferenceable(16) %446), !dbg !4524
  call void @llvm.dbg.declare(metadata ptr %448, metadata !1895, metadata !DIExpression()), !dbg !4525
  store i32 0, ptr %448, align 4, !dbg !4525
  br label %2901, !dbg !4526

2901:                                             ; preds = %2904, %2889
  %2902 = load i32, ptr %448, align 4, !dbg !4527
  %2903 = icmp slt i32 %2902, 4, !dbg !4528
  br i1 %2903, label %2904, label %2911, !dbg !4529

2904:                                             ; preds = %2901
  %2905 = load float, ptr %447, align 4, !dbg !4530
  %2906 = load i32, ptr %448, align 4, !dbg !4531
  %2907 = sext i32 %2906 to i64, !dbg !4532
  %2908 = getelementptr inbounds [4 x float], ptr %446, i64 0, i64 %2907, !dbg !4532
  store float %2905, ptr %2908, align 4, !dbg !4533
  %2909 = load i32, ptr %448, align 4, !dbg !4534
  %2910 = add nsw i32 %2909, 1, !dbg !4534
  store i32 %2910, ptr %448, align 4, !dbg !4534
  br label %2901, !dbg !4535, !llvm.loop !4536

2911:                                             ; preds = %2901
  %2912 = load { <2 x float>, <2 x float> }, ptr %446, align 4, !dbg !4538
  %2913 = extractvalue { <2 x float>, <2 x float> } %2912, 0, !dbg !4539
  store <2 x float> %2913, ptr %453, align 4, !dbg !4539
  %2914 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %453, i32 0, i32 1, !dbg !4539
  %2915 = extractvalue { <2 x float>, <2 x float> } %2912, 1, !dbg !4539
  store <2 x float> %2915, ptr %2914, align 4, !dbg !4539
  store ptr %2900, ptr %425, align 8
  call void @llvm.dbg.declare(metadata ptr %425, metadata !2624, metadata !DIExpression()), !dbg !4540
  store ptr %453, ptr %426, align 8
  call void @llvm.dbg.declare(metadata ptr %426, metadata !2628, metadata !DIExpression()), !dbg !4542
  %2916 = load ptr, ptr %425, align 8
  call void @llvm.dbg.declare(metadata ptr %427, metadata !2630, metadata !DIExpression()), !dbg !4543
  %2917 = call noundef nonnull align 4 dereferenceable(16) ptr @_ZN4RTTL7RTVec_tILi1E5sse_fLi0EEcvRNS_8RTData_tILi1ES1_Li0EEEEv(ptr noundef nonnull align 4 dereferenceable(16) %2916), !dbg !4544
  store ptr %2917, ptr %427, align 8, !dbg !4543
  %2918 = load ptr, ptr %427, align 8, !dbg !4545
  %2919 = load ptr, ptr %426, align 8, !dbg !4546
  store ptr %2918, ptr %374, align 8
  call void @llvm.dbg.declare(metadata ptr %374, metadata !2635, metadata !DIExpression()), !dbg !4547
  store ptr %2919, ptr %375, align 8
  call void @llvm.dbg.declare(metadata ptr %375, metadata !2639, metadata !DIExpression()), !dbg !4549
  %2920 = load ptr, ptr %374, align 8
  call void @llvm.dbg.declare(metadata ptr %376, metadata !2641, metadata !DIExpression()), !dbg !4550
  store i32 0, ptr %376, align 4, !dbg !4550
  br label %2921, !dbg !4551

2921:                                             ; preds = %2924, %2911
  %2922 = load i32, ptr %376, align 4, !dbg !4552
  %2923 = icmp slt i32 %2922, 1, !dbg !4553
  br i1 %2923, label %2924, label %2931, !dbg !4554

2924:                                             ; preds = %2921
  %2925 = load ptr, ptr %375, align 8, !dbg !4555
  %2926 = load i32, ptr %376, align 4, !dbg !4556
  %2927 = sext i32 %2926 to i64, !dbg !4557
  %2928 = getelementptr inbounds [1 x %struct.sse_f], ptr %2920, i64 0, i64 %2927, !dbg !4557
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2928, ptr align 4 %2925, i64 16, i1 false), !dbg !4558
  %2929 = load i32, ptr %376, align 4, !dbg !4559
  %2930 = add nsw i32 %2929, 1, !dbg !4559
  store i32 %2930, ptr %376, align 4, !dbg !4559
  br label %2921, !dbg !4560, !llvm.loop !4561

2931:                                             ; preds = %2921
  store float 0xC7EFFFFFE0000000, ptr %450, align 4
  call void @llvm.dbg.declare(metadata ptr %450, metadata !1886, metadata !DIExpression()), !dbg !4563
  call void @llvm.dbg.declare(metadata ptr %449, metadata !1893, metadata !DIExpression()), !dbg !4565
  call void @_ZN5sse_fC2Ev(ptr noundef nonnull align 4 dereferenceable(16) %449), !dbg !4565
  call void @llvm.dbg.declare(metadata ptr %451, metadata !1895, metadata !DIExpression()), !dbg !4566
  store i32 0, ptr %451, align 4, !dbg !4566
  br label %2932, !dbg !4567

2932:                                             ; preds = %2935, %2931
  %2933 = load i32, ptr %451, align 4, !dbg !4568
  %2934 = icmp slt i32 %2933, 4, !dbg !4569
  br i1 %2934, label %2935, label %2942, !dbg !4570

2935:                                             ; preds = %2932
  %2936 = load float, ptr %450, align 4, !dbg !4571
  %2937 = load i32, ptr %451, align 4, !dbg !4572
  %2938 = sext i32 %2937 to i64, !dbg !4573
  %2939 = getelementptr inbounds [4 x float], ptr %449, i64 0, i64 %2938, !dbg !4573
  store float %2936, ptr %2939, align 4, !dbg !4574
  %2940 = load i32, ptr %451, align 4, !dbg !4575
  %2941 = add nsw i32 %2940, 1, !dbg !4575
  store i32 %2941, ptr %451, align 4, !dbg !4575
  br label %2932, !dbg !4576, !llvm.loop !4577

2942:                                             ; preds = %2932
  %2943 = load { <2 x float>, <2 x float> }, ptr %449, align 4, !dbg !4579
  %2944 = extractvalue { <2 x float>, <2 x float> } %2943, 0, !dbg !4580
  store <2 x float> %2944, ptr %454, align 4, !dbg !4580
  %2945 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %454, i32 0, i32 1, !dbg !4580
  %2946 = extractvalue { <2 x float>, <2 x float> } %2943, 1, !dbg !4580
  store <2 x float> %2946, ptr %2945, align 4, !dbg !4580
  %2947 = getelementptr inbounds %"class.RTTL::RTBox_t", ptr %2900, i32 0, i32 1, !dbg !4581
  store ptr %2947, ptr %428, align 8
  call void @llvm.dbg.declare(metadata ptr %428, metadata !2624, metadata !DIExpression()), !dbg !4582
  store ptr %454, ptr %429, align 8
  call void @llvm.dbg.declare(metadata ptr %429, metadata !2628, metadata !DIExpression()), !dbg !4584
  %2948 = load ptr, ptr %428, align 8
  call void @llvm.dbg.declare(metadata ptr %430, metadata !2630, metadata !DIExpression()), !dbg !4585
  %2949 = call noundef nonnull align 4 dereferenceable(16) ptr @_ZN4RTTL7RTVec_tILi1E5sse_fLi0EEcvRNS_8RTData_tILi1ES1_Li0EEEEv(ptr noundef nonnull align 4 dereferenceable(16) %2948), !dbg !4586
  store ptr %2949, ptr %430, align 8, !dbg !4585
  %2950 = load ptr, ptr %430, align 8, !dbg !4587
  %2951 = load ptr, ptr %429, align 8, !dbg !4588
  store ptr %2950, ptr %371, align 8
  call void @llvm.dbg.declare(metadata ptr %371, metadata !2635, metadata !DIExpression()), !dbg !4589
  store ptr %2951, ptr %372, align 8
  call void @llvm.dbg.declare(metadata ptr %372, metadata !2639, metadata !DIExpression()), !dbg !4591
  %2952 = load ptr, ptr %371, align 8
  call void @llvm.dbg.declare(metadata ptr %373, metadata !2641, metadata !DIExpression()), !dbg !4592
  store i32 0, ptr %373, align 4, !dbg !4592
  br label %2953, !dbg !4593

2953:                                             ; preds = %2956, %2942
  %2954 = load i32, ptr %373, align 4, !dbg !4594
  %2955 = icmp slt i32 %2954, 1, !dbg !4595
  br i1 %2955, label %2956, label %2963, !dbg !4596

2956:                                             ; preds = %2953
  %2957 = load ptr, ptr %372, align 8, !dbg !4597
  %2958 = load i32, ptr %373, align 4, !dbg !4598
  %2959 = sext i32 %2958 to i64, !dbg !4599
  %2960 = getelementptr inbounds [1 x %struct.sse_f], ptr %2952, i64 0, i64 %2959, !dbg !4599
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2960, ptr align 4 %2957, i64 16, i1 false), !dbg !4600
  %2961 = load i32, ptr %373, align 4, !dbg !4601
  %2962 = add nsw i32 %2961, 1, !dbg !4601
  store i32 %2962, ptr %373, align 4, !dbg !4601
  br label %2953, !dbg !4602, !llvm.loop !4603

2963:                                             ; preds = %2953
  store ptr %715, ptr %643, align 8
  call void @llvm.dbg.declare(metadata ptr %643, metadata !2598, metadata !DIExpression()), !dbg !4605
  %2964 = load ptr, ptr %643, align 8
  store ptr %2964, ptr %443, align 8
  call void @llvm.dbg.declare(metadata ptr %443, metadata !2602, metadata !DIExpression()), !dbg !4607
  %2965 = load ptr, ptr %443, align 8
  store float 0x47EFFFFFE0000000, ptr %438, align 4
  call void @llvm.dbg.declare(metadata ptr %438, metadata !1886, metadata !DIExpression()), !dbg !4609
  call void @llvm.dbg.declare(metadata ptr %437, metadata !1893, metadata !DIExpression()), !dbg !4611
  call void @_ZN5sse_fC2Ev(ptr noundef nonnull align 4 dereferenceable(16) %437), !dbg !4611
  call void @llvm.dbg.declare(metadata ptr %439, metadata !1895, metadata !DIExpression()), !dbg !4612
  store i32 0, ptr %439, align 4, !dbg !4612
  br label %2966, !dbg !4613

2966:                                             ; preds = %2969, %2963
  %2967 = load i32, ptr %439, align 4, !dbg !4614
  %2968 = icmp slt i32 %2967, 4, !dbg !4615
  br i1 %2968, label %2969, label %2976, !dbg !4616

2969:                                             ; preds = %2966
  %2970 = load float, ptr %438, align 4, !dbg !4617
  %2971 = load i32, ptr %439, align 4, !dbg !4618
  %2972 = sext i32 %2971 to i64, !dbg !4619
  %2973 = getelementptr inbounds [4 x float], ptr %437, i64 0, i64 %2972, !dbg !4619
  store float %2970, ptr %2973, align 4, !dbg !4620
  %2974 = load i32, ptr %439, align 4, !dbg !4621
  %2975 = add nsw i32 %2974, 1, !dbg !4621
  store i32 %2975, ptr %439, align 4, !dbg !4621
  br label %2966, !dbg !4622, !llvm.loop !4623

2976:                                             ; preds = %2966
  %2977 = load { <2 x float>, <2 x float> }, ptr %437, align 4, !dbg !4625
  %2978 = extractvalue { <2 x float>, <2 x float> } %2977, 0, !dbg !4626
  store <2 x float> %2978, ptr %444, align 4, !dbg !4626
  %2979 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %444, i32 0, i32 1, !dbg !4626
  %2980 = extractvalue { <2 x float>, <2 x float> } %2977, 1, !dbg !4626
  store <2 x float> %2980, ptr %2979, align 4, !dbg !4626
  store ptr %2965, ptr %431, align 8
  call void @llvm.dbg.declare(metadata ptr %431, metadata !2624, metadata !DIExpression()), !dbg !4627
  store ptr %444, ptr %432, align 8
  call void @llvm.dbg.declare(metadata ptr %432, metadata !2628, metadata !DIExpression()), !dbg !4629
  %2981 = load ptr, ptr %431, align 8
  call void @llvm.dbg.declare(metadata ptr %433, metadata !2630, metadata !DIExpression()), !dbg !4630
  %2982 = call noundef nonnull align 4 dereferenceable(16) ptr @_ZN4RTTL7RTVec_tILi1E5sse_fLi0EEcvRNS_8RTData_tILi1ES1_Li0EEEEv(ptr noundef nonnull align 4 dereferenceable(16) %2981), !dbg !4631
  store ptr %2982, ptr %433, align 8, !dbg !4630
  %2983 = load ptr, ptr %433, align 8, !dbg !4632
  %2984 = load ptr, ptr %432, align 8, !dbg !4633
  store ptr %2983, ptr %368, align 8
  call void @llvm.dbg.declare(metadata ptr %368, metadata !2635, metadata !DIExpression()), !dbg !4634
  store ptr %2984, ptr %369, align 8
  call void @llvm.dbg.declare(metadata ptr %369, metadata !2639, metadata !DIExpression()), !dbg !4636
  %2985 = load ptr, ptr %368, align 8
  call void @llvm.dbg.declare(metadata ptr %370, metadata !2641, metadata !DIExpression()), !dbg !4637
  store i32 0, ptr %370, align 4, !dbg !4637
  br label %2986, !dbg !4638

2986:                                             ; preds = %2989, %2976
  %2987 = load i32, ptr %370, align 4, !dbg !4639
  %2988 = icmp slt i32 %2987, 1, !dbg !4640
  br i1 %2988, label %2989, label %2996, !dbg !4641

2989:                                             ; preds = %2986
  %2990 = load ptr, ptr %369, align 8, !dbg !4642
  %2991 = load i32, ptr %370, align 4, !dbg !4643
  %2992 = sext i32 %2991 to i64, !dbg !4644
  %2993 = getelementptr inbounds [1 x %struct.sse_f], ptr %2985, i64 0, i64 %2992, !dbg !4644
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2993, ptr align 4 %2990, i64 16, i1 false), !dbg !4645
  %2994 = load i32, ptr %370, align 4, !dbg !4646
  %2995 = add nsw i32 %2994, 1, !dbg !4646
  store i32 %2995, ptr %370, align 4, !dbg !4646
  br label %2986, !dbg !4647, !llvm.loop !4648

2996:                                             ; preds = %2986
  store float 0xC7EFFFFFE0000000, ptr %441, align 4
  call void @llvm.dbg.declare(metadata ptr %441, metadata !1886, metadata !DIExpression()), !dbg !4650
  call void @llvm.dbg.declare(metadata ptr %440, metadata !1893, metadata !DIExpression()), !dbg !4652
  call void @_ZN5sse_fC2Ev(ptr noundef nonnull align 4 dereferenceable(16) %440), !dbg !4652
  call void @llvm.dbg.declare(metadata ptr %442, metadata !1895, metadata !DIExpression()), !dbg !4653
  store i32 0, ptr %442, align 4, !dbg !4653
  br label %2997, !dbg !4654

2997:                                             ; preds = %3000, %2996
  %2998 = load i32, ptr %442, align 4, !dbg !4655
  %2999 = icmp slt i32 %2998, 4, !dbg !4656
  br i1 %2999, label %3000, label %3007, !dbg !4657

3000:                                             ; preds = %2997
  %3001 = load float, ptr %441, align 4, !dbg !4658
  %3002 = load i32, ptr %442, align 4, !dbg !4659
  %3003 = sext i32 %3002 to i64, !dbg !4660
  %3004 = getelementptr inbounds [4 x float], ptr %440, i64 0, i64 %3003, !dbg !4660
  store float %3001, ptr %3004, align 4, !dbg !4661
  %3005 = load i32, ptr %442, align 4, !dbg !4662
  %3006 = add nsw i32 %3005, 1, !dbg !4662
  store i32 %3006, ptr %442, align 4, !dbg !4662
  br label %2997, !dbg !4663, !llvm.loop !4664

3007:                                             ; preds = %2997
  %3008 = load { <2 x float>, <2 x float> }, ptr %440, align 4, !dbg !4666
  %3009 = extractvalue { <2 x float>, <2 x float> } %3008, 0, !dbg !4667
  store <2 x float> %3009, ptr %445, align 4, !dbg !4667
  %3010 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %445, i32 0, i32 1, !dbg !4667
  %3011 = extractvalue { <2 x float>, <2 x float> } %3008, 1, !dbg !4667
  store <2 x float> %3011, ptr %3010, align 4, !dbg !4667
  %3012 = getelementptr inbounds %"class.RTTL::RTBox_t", ptr %2965, i32 0, i32 1, !dbg !4668
  store ptr %3012, ptr %434, align 8
  call void @llvm.dbg.declare(metadata ptr %434, metadata !2624, metadata !DIExpression()), !dbg !4669
  store ptr %445, ptr %435, align 8
  call void @llvm.dbg.declare(metadata ptr %435, metadata !2628, metadata !DIExpression()), !dbg !4671
  %3013 = load ptr, ptr %434, align 8
  call void @llvm.dbg.declare(metadata ptr %436, metadata !2630, metadata !DIExpression()), !dbg !4672
  %3014 = call noundef nonnull align 4 dereferenceable(16) ptr @_ZN4RTTL7RTVec_tILi1E5sse_fLi0EEcvRNS_8RTData_tILi1ES1_Li0EEEEv(ptr noundef nonnull align 4 dereferenceable(16) %3013), !dbg !4673
  store ptr %3014, ptr %436, align 8, !dbg !4672
  %3015 = load ptr, ptr %436, align 8, !dbg !4674
  %3016 = load ptr, ptr %435, align 8, !dbg !4675
  store ptr %3015, ptr %365, align 8
  call void @llvm.dbg.declare(metadata ptr %365, metadata !2635, metadata !DIExpression()), !dbg !4676
  store ptr %3016, ptr %366, align 8
  call void @llvm.dbg.declare(metadata ptr %366, metadata !2639, metadata !DIExpression()), !dbg !4678
  %3017 = load ptr, ptr %365, align 8
  call void @llvm.dbg.declare(metadata ptr %367, metadata !2641, metadata !DIExpression()), !dbg !4679
  store i32 0, ptr %367, align 4, !dbg !4679
  br label %3018, !dbg !4680

3018:                                             ; preds = %3021, %3007
  %3019 = load i32, ptr %367, align 4, !dbg !4681
  %3020 = icmp slt i32 %3019, 1, !dbg !4682
  br i1 %3020, label %3021, label %3028, !dbg !4683

3021:                                             ; preds = %3018
  %3022 = load ptr, ptr %366, align 8, !dbg !4684
  %3023 = load i32, ptr %367, align 4, !dbg !4685
  %3024 = sext i32 %3023 to i64, !dbg !4686
  %3025 = getelementptr inbounds [1 x %struct.sse_f], ptr %3017, i64 0, i64 %3024, !dbg !4686
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %3025, ptr align 4 %3022, i64 16, i1 false), !dbg !4687
  %3026 = load i32, ptr %367, align 4, !dbg !4688
  %3027 = add nsw i32 %3026, 1, !dbg !4688
  store i32 %3027, ptr %367, align 4, !dbg !4688
  br label %3018, !dbg !4689, !llvm.loop !4690

3028:                                             ; preds = %3018
  call void @llvm.dbg.declare(metadata ptr %716, metadata !4692, metadata !DIExpression()), !dbg !4693
  %3029 = load i32, ptr %693, align 4, !dbg !4694
  %3030 = sext i32 %3029 to i64, !dbg !4694
  %3031 = getelementptr inbounds float, ptr %672, i64 %3030, !dbg !4694
  %3032 = load float, ptr %3031, align 4, !dbg !4694
  store float %3032, ptr %716, align 4, !dbg !4693
  call void @llvm.dbg.declare(metadata ptr %717, metadata !4695, metadata !DIExpression()), !dbg !4696
  %3033 = load i32, ptr %693, align 4, !dbg !4697
  %3034 = sext i32 %3033 to i64, !dbg !4697
  %3035 = getelementptr inbounds float, ptr %678, i64 %3034, !dbg !4697
  %3036 = load float, ptr %3035, align 4, !dbg !4697
  store float %3036, ptr %717, align 4, !dbg !4696
  br label %3037, !dbg !4698

3037:                                             ; preds = %3028, %3611
  br label %3038, !dbg !4699

3038:                                             ; preds = %3230, %3037
  %3039 = load ptr, ptr %711, align 8, !dbg !4701
  %3040 = load ptr, ptr %712, align 8, !dbg !4702
  %3041 = icmp ult ptr %3039, %3040, !dbg !4703
  br i1 %3041, label %3042, label %3058, !dbg !4704

3042:                                             ; preds = %3038
  %3043 = getelementptr inbounds %"class.RTTL::OnDemandBuilder", ptr %722, i32 0, i32 1, !dbg !4705
  %3044 = load ptr, ptr %3043, align 8, !dbg !4705
  %3045 = load ptr, ptr %711, align 8, !dbg !4706
  %3046 = load i32, ptr %3045, align 4, !dbg !4707
  %3047 = sext i32 %3046 to i64, !dbg !4705
  %3048 = getelementptr inbounds %"class.RTTL::CentroidDiffAABB", ptr %3044, i64 %3047, !dbg !4705
  %3049 = load i32, ptr %693, align 4, !dbg !4708
  %3050 = call noundef float @_ZNK4RTTL16CentroidDiffAABB8centroidEi(ptr noundef nonnull align 4 dereferenceable(32) %3048, i32 noundef %3049), !dbg !4709
  %3051 = load float, ptr %716, align 4, !dbg !4710
  %3052 = fsub float %3050, %3051, !dbg !4711
  %3053 = load float, ptr %717, align 4, !dbg !4712
  %3054 = fmul float %3052, %3053, !dbg !4713
  %3055 = fptosi float %3054 to i32, !dbg !4714
  %3056 = load i32, ptr %692, align 4, !dbg !4715
  %3057 = icmp slt i32 %3055, %3056, !dbg !4716
  br label %3058

3058:                                             ; preds = %3042, %3038
  %3059 = phi i1 [ false, %3038 ], [ %3057, %3042 ], !dbg !4717
  br i1 %3059, label %3060, label %3233, !dbg !4699

3060:                                             ; preds = %3058
  %3061 = getelementptr inbounds %"class.RTTL::OnDemandBuilder", ptr %722, i32 0, i32 1, !dbg !4718
  %3062 = load ptr, ptr %3061, align 8, !dbg !4718
  %3063 = load ptr, ptr %711, align 8, !dbg !4720
  %3064 = load i32, ptr %3063, align 4, !dbg !4721
  %3065 = sext i32 %3064 to i64, !dbg !4718
  %3066 = getelementptr inbounds %"class.RTTL::CentroidDiffAABB", ptr %3062, i64 %3065, !dbg !4718
  %3067 = call { <2 x float>, <2 x float> } @_ZNK4RTTL16CentroidDiffAABB8centroidEv(ptr noundef nonnull align 4 dereferenceable(32) %3066), !dbg !4722
  %3068 = getelementptr inbounds %struct.sse_f, ptr %718, i32 0, i32 0, !dbg !4722
  %3069 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %3068, i32 0, i32 0, !dbg !4722
  %3070 = extractvalue { <2 x float>, <2 x float> } %3067, 0, !dbg !4722
  store <2 x float> %3070, ptr %3069, align 4, !dbg !4722
  %3071 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %3068, i32 0, i32 1, !dbg !4722
  %3072 = extractvalue { <2 x float>, <2 x float> } %3067, 1, !dbg !4722
  store <2 x float> %3072, ptr %3071, align 4, !dbg !4722
  store ptr %714, ptr %631, align 8
  call void @llvm.dbg.declare(metadata ptr %631, metadata !2719, metadata !DIExpression()), !dbg !4723
  store ptr %718, ptr %632, align 8
  call void @llvm.dbg.declare(metadata ptr %632, metadata !2723, metadata !DIExpression()), !dbg !4725
  %3073 = load ptr, ptr %631, align 8
  %3074 = load ptr, ptr %632, align 8, !dbg !4726
  store ptr %3073, ptr %138, align 8
  call void @llvm.dbg.declare(metadata ptr %138, metadata !2726, metadata !DIExpression()), !dbg !4727
  store ptr %3074, ptr %139, align 8
  call void @llvm.dbg.declare(metadata ptr %139, metadata !2730, metadata !DIExpression()), !dbg !4729
  %3075 = load ptr, ptr %138, align 8
  call void @llvm.dbg.declare(metadata ptr %140, metadata !2732, metadata !DIExpression()), !dbg !4730
  %3076 = call noundef nonnull align 4 dereferenceable(16) ptr @_ZN4RTTL7RTVec_tILi1E5sse_fLi0EEcvRNS_8RTData_tILi1ES1_Li0EEEEv(ptr noundef nonnull align 4 dereferenceable(16) %3075), !dbg !4731
  store ptr %3076, ptr %140, align 8, !dbg !4730
  call void @llvm.dbg.declare(metadata ptr %141, metadata !2735, metadata !DIExpression()), !dbg !4732
  store i32 0, ptr %141, align 4, !dbg !4732
  br label %3077, !dbg !4733

3077:                                             ; preds = %3134, %3060
  %3078 = load i32, ptr %141, align 4, !dbg !4734
  %3079 = icmp slt i32 %3078, 1, !dbg !4735
  br i1 %3079, label %3080, label %3151, !dbg !4736

3080:                                             ; preds = %3077
  %3081 = load ptr, ptr %140, align 8, !dbg !4737
  %3082 = load i32, ptr %141, align 4, !dbg !4738
  store ptr %3081, ptr %134, align 8
  call void @llvm.dbg.declare(metadata ptr %134, metadata !2006, metadata !DIExpression()), !dbg !4739
  store i32 %3082, ptr %135, align 4
  call void @llvm.dbg.declare(metadata ptr %135, metadata !2011, metadata !DIExpression()), !dbg !4741
  %3083 = load ptr, ptr %134, align 8
  %3084 = load i32, ptr %135, align 4, !dbg !4742
  %3085 = sext i32 %3084 to i64, !dbg !4743
  %3086 = getelementptr inbounds [1 x %struct.sse_f], ptr %3083, i64 0, i64 %3085, !dbg !4743
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %143, ptr align 4 %3086, i64 16, i1 false), !dbg !4737
  %3087 = load ptr, ptr %139, align 8, !dbg !4744
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %144, ptr align 4 %3087, i64 16, i1 false), !dbg !4744
  %3088 = load <2 x float>, ptr %143, align 4, !dbg !4745
  %3089 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %143, i32 0, i32 1, !dbg !4745
  %3090 = load <2 x float>, ptr %3089, align 4, !dbg !4745
  %3091 = load <2 x float>, ptr %144, align 4, !dbg !4745
  %3092 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %144, i32 0, i32 1, !dbg !4745
  %3093 = load <2 x float>, ptr %3092, align 4, !dbg !4745
  store <2 x float> %3088, ptr %130, align 4
  %3094 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %130, i32 0, i32 1
  store <2 x float> %3090, ptr %3094, align 4
  store <2 x float> %3091, ptr %131, align 4
  %3095 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %131, i32 0, i32 1
  store <2 x float> %3093, ptr %3095, align 4
  call void @llvm.dbg.declare(metadata ptr %130, metadata !2018, metadata !DIExpression()), !dbg !4746
  call void @llvm.dbg.declare(metadata ptr %131, metadata !2024, metadata !DIExpression()), !dbg !4748
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %132, ptr align 4 %130, i64 16, i1 false), !dbg !4749
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %133, ptr align 4 %131, i64 16, i1 false), !dbg !4750
  %3096 = load <2 x float>, ptr %132, align 4, !dbg !4751
  %3097 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %132, i32 0, i32 1, !dbg !4751
  %3098 = load <2 x float>, ptr %3097, align 4, !dbg !4751
  %3099 = load <2 x float>, ptr %133, align 4, !dbg !4751
  %3100 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %133, i32 0, i32 1, !dbg !4751
  %3101 = load <2 x float>, ptr %3100, align 4, !dbg !4751
  store <2 x float> %3096, ptr %126, align 4
  %3102 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %126, i32 0, i32 1
  store <2 x float> %3098, ptr %3102, align 4
  store <2 x float> %3099, ptr %127, align 4
  %3103 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %127, i32 0, i32 1
  store <2 x float> %3101, ptr %3103, align 4
  call void @llvm.dbg.declare(metadata ptr %126, metadata !2029, metadata !DIExpression()), !dbg !4752
  call void @llvm.dbg.declare(metadata ptr %127, metadata !2033, metadata !DIExpression()), !dbg !4754
  call void @llvm.dbg.declare(metadata ptr %125, metadata !2035, metadata !DIExpression()), !dbg !4755
  call void @_ZN5sse_fC2Ev(ptr noundef nonnull align 4 dereferenceable(16) %125), !dbg !4755
  call void @llvm.dbg.declare(metadata ptr %128, metadata !2037, metadata !DIExpression()), !dbg !4756
  store i32 0, ptr %128, align 4, !dbg !4756
  br label %3104, !dbg !4757

3104:                                             ; preds = %3127, %3080
  %3105 = load i32, ptr %128, align 4, !dbg !4758
  %3106 = icmp slt i32 %3105, 4, !dbg !4759
  br i1 %3106, label %3107, label %3134, !dbg !4760

3107:                                             ; preds = %3104
  %3108 = load i32, ptr %128, align 4, !dbg !4761
  %3109 = sext i32 %3108 to i64, !dbg !4761
  %3110 = getelementptr inbounds [4 x float], ptr %126, i64 0, i64 %3109, !dbg !4761
  %3111 = load float, ptr %3110, align 4, !dbg !4761
  %3112 = load i32, ptr %128, align 4, !dbg !4761
  %3113 = sext i32 %3112 to i64, !dbg !4761
  %3114 = getelementptr inbounds [4 x float], ptr %127, i64 0, i64 %3113, !dbg !4761
  %3115 = load float, ptr %3114, align 4, !dbg !4761
  %3116 = fcmp olt float %3111, %3115, !dbg !4761
  br i1 %3116, label %3117, label %3122, !dbg !4761

3117:                                             ; preds = %3107
  %3118 = load i32, ptr %128, align 4, !dbg !4761
  %3119 = sext i32 %3118 to i64, !dbg !4761
  %3120 = getelementptr inbounds [4 x float], ptr %126, i64 0, i64 %3119, !dbg !4761
  %3121 = load float, ptr %3120, align 4, !dbg !4761
  br label %3127, !dbg !4761

3122:                                             ; preds = %3107
  %3123 = load i32, ptr %128, align 4, !dbg !4761
  %3124 = sext i32 %3123 to i64, !dbg !4761
  %3125 = getelementptr inbounds [4 x float], ptr %127, i64 0, i64 %3124, !dbg !4761
  %3126 = load float, ptr %3125, align 4, !dbg !4761
  br label %3127, !dbg !4761

3127:                                             ; preds = %3122, %3117
  %3128 = phi float [ %3121, %3117 ], [ %3126, %3122 ], !dbg !4761
  %3129 = load i32, ptr %128, align 4, !dbg !4762
  %3130 = sext i32 %3129 to i64, !dbg !4762
  %3131 = getelementptr inbounds [4 x float], ptr %125, i64 0, i64 %3130, !dbg !4762
  store float %3128, ptr %3131, align 4, !dbg !4763
  %3132 = load i32, ptr %128, align 4, !dbg !4764
  %3133 = add nsw i32 %3132, 1, !dbg !4764
  store i32 %3133, ptr %128, align 4, !dbg !4764
  br label %3104, !dbg !4765, !llvm.loop !4766

3134:                                             ; preds = %3104
  %3135 = load { <2 x float>, <2 x float> }, ptr %125, align 4, !dbg !4768
  %3136 = extractvalue { <2 x float>, <2 x float> } %3135, 0, !dbg !4751
  store <2 x float> %3136, ptr %129, align 4, !dbg !4751
  %3137 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %129, i32 0, i32 1, !dbg !4751
  %3138 = extractvalue { <2 x float>, <2 x float> } %3135, 1, !dbg !4751
  store <2 x float> %3138, ptr %3137, align 4, !dbg !4751
  %3139 = load { <2 x float>, <2 x float> }, ptr %129, align 4, !dbg !4769
  %3140 = extractvalue { <2 x float>, <2 x float> } %3139, 0, !dbg !4745
  store <2 x float> %3140, ptr %142, align 4, !dbg !4745
  %3141 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %142, i32 0, i32 1, !dbg !4745
  %3142 = extractvalue { <2 x float>, <2 x float> } %3139, 1, !dbg !4745
  store <2 x float> %3142, ptr %3141, align 4, !dbg !4745
  %3143 = load ptr, ptr %140, align 8, !dbg !4770
  %3144 = load i32, ptr %141, align 4, !dbg !4771
  store ptr %3143, ptr %136, align 8
  call void @llvm.dbg.declare(metadata ptr %136, metadata !2006, metadata !DIExpression()), !dbg !4772
  store i32 %3144, ptr %137, align 4
  call void @llvm.dbg.declare(metadata ptr %137, metadata !2011, metadata !DIExpression()), !dbg !4774
  %3145 = load ptr, ptr %136, align 8
  %3146 = load i32, ptr %137, align 4, !dbg !4775
  %3147 = sext i32 %3146 to i64, !dbg !4776
  %3148 = getelementptr inbounds [1 x %struct.sse_f], ptr %3145, i64 0, i64 %3147, !dbg !4776
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %3148, ptr align 4 %142, i64 16, i1 false), !dbg !4777
  %3149 = load i32, ptr %141, align 4, !dbg !4778
  %3150 = add nsw i32 %3149, 1, !dbg !4778
  store i32 %3150, ptr %141, align 4, !dbg !4778
  br label %3077, !dbg !4779, !llvm.loop !4780

3151:                                             ; preds = %3077
  %3152 = getelementptr inbounds %"class.RTTL::RTBox_t", ptr %3073, i32 0, i32 1, !dbg !4782
  %3153 = load ptr, ptr %632, align 8, !dbg !4783
  store ptr %3152, ptr %58, align 8
  call void @llvm.dbg.declare(metadata ptr %58, metadata !2790, metadata !DIExpression()), !dbg !4784
  store ptr %3153, ptr %59, align 8
  call void @llvm.dbg.declare(metadata ptr %59, metadata !2794, metadata !DIExpression()), !dbg !4786
  %3154 = load ptr, ptr %58, align 8
  call void @llvm.dbg.declare(metadata ptr %60, metadata !2796, metadata !DIExpression()), !dbg !4787
  %3155 = call noundef nonnull align 4 dereferenceable(16) ptr @_ZN4RTTL7RTVec_tILi1E5sse_fLi0EEcvRNS_8RTData_tILi1ES1_Li0EEEEv(ptr noundef nonnull align 4 dereferenceable(16) %3154), !dbg !4788
  store ptr %3155, ptr %60, align 8, !dbg !4787
  call void @llvm.dbg.declare(metadata ptr %61, metadata !2799, metadata !DIExpression()), !dbg !4789
  store i32 0, ptr %61, align 4, !dbg !4789
  br label %3156, !dbg !4790

3156:                                             ; preds = %3213, %3151
  %3157 = load i32, ptr %61, align 4, !dbg !4791
  %3158 = icmp slt i32 %3157, 1, !dbg !4792
  br i1 %3158, label %3159, label %3230, !dbg !4793

3159:                                             ; preds = %3156
  %3160 = load ptr, ptr %60, align 8, !dbg !4794
  %3161 = load i32, ptr %61, align 4, !dbg !4795
  store ptr %3160, ptr %54, align 8
  call void @llvm.dbg.declare(metadata ptr %54, metadata !2006, metadata !DIExpression()), !dbg !4796
  store i32 %3161, ptr %55, align 4
  call void @llvm.dbg.declare(metadata ptr %55, metadata !2011, metadata !DIExpression()), !dbg !4798
  %3162 = load ptr, ptr %54, align 8
  %3163 = load i32, ptr %55, align 4, !dbg !4799
  %3164 = sext i32 %3163 to i64, !dbg !4800
  %3165 = getelementptr inbounds [1 x %struct.sse_f], ptr %3162, i64 0, i64 %3164, !dbg !4800
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %63, ptr align 4 %3165, i64 16, i1 false), !dbg !4794
  %3166 = load ptr, ptr %59, align 8, !dbg !4801
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %64, ptr align 4 %3166, i64 16, i1 false), !dbg !4801
  %3167 = load <2 x float>, ptr %63, align 4, !dbg !4802
  %3168 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %63, i32 0, i32 1, !dbg !4802
  %3169 = load <2 x float>, ptr %3168, align 4, !dbg !4802
  %3170 = load <2 x float>, ptr %64, align 4, !dbg !4802
  %3171 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %64, i32 0, i32 1, !dbg !4802
  %3172 = load <2 x float>, ptr %3171, align 4, !dbg !4802
  store <2 x float> %3167, ptr %50, align 4
  %3173 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %50, i32 0, i32 1
  store <2 x float> %3169, ptr %3173, align 4
  store <2 x float> %3170, ptr %51, align 4
  %3174 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %51, i32 0, i32 1
  store <2 x float> %3172, ptr %3174, align 4
  call void @llvm.dbg.declare(metadata ptr %50, metadata !2096, metadata !DIExpression()), !dbg !4803
  call void @llvm.dbg.declare(metadata ptr %51, metadata !2100, metadata !DIExpression()), !dbg !4805
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %52, ptr align 4 %50, i64 16, i1 false), !dbg !4806
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %53, ptr align 4 %51, i64 16, i1 false), !dbg !4807
  %3175 = load <2 x float>, ptr %52, align 4, !dbg !4808
  %3176 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %52, i32 0, i32 1, !dbg !4808
  %3177 = load <2 x float>, ptr %3176, align 4, !dbg !4808
  %3178 = load <2 x float>, ptr %53, align 4, !dbg !4808
  %3179 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %53, i32 0, i32 1, !dbg !4808
  %3180 = load <2 x float>, ptr %3179, align 4, !dbg !4808
  store <2 x float> %3175, ptr %46, align 4
  %3181 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %46, i32 0, i32 1
  store <2 x float> %3177, ptr %3181, align 4
  store <2 x float> %3178, ptr %47, align 4
  %3182 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %47, i32 0, i32 1
  store <2 x float> %3180, ptr %3182, align 4
  call void @llvm.dbg.declare(metadata ptr %46, metadata !2105, metadata !DIExpression()), !dbg !4809
  call void @llvm.dbg.declare(metadata ptr %47, metadata !2109, metadata !DIExpression()), !dbg !4811
  call void @llvm.dbg.declare(metadata ptr %45, metadata !2111, metadata !DIExpression()), !dbg !4812
  call void @_ZN5sse_fC2Ev(ptr noundef nonnull align 4 dereferenceable(16) %45), !dbg !4812
  call void @llvm.dbg.declare(metadata ptr %48, metadata !2113, metadata !DIExpression()), !dbg !4813
  store i32 0, ptr %48, align 4, !dbg !4813
  br label %3183, !dbg !4814

3183:                                             ; preds = %3206, %3159
  %3184 = load i32, ptr %48, align 4, !dbg !4815
  %3185 = icmp slt i32 %3184, 4, !dbg !4816
  br i1 %3185, label %3186, label %3213, !dbg !4817

3186:                                             ; preds = %3183
  %3187 = load i32, ptr %48, align 4, !dbg !4818
  %3188 = sext i32 %3187 to i64, !dbg !4818
  %3189 = getelementptr inbounds [4 x float], ptr %46, i64 0, i64 %3188, !dbg !4818
  %3190 = load float, ptr %3189, align 4, !dbg !4818
  %3191 = load i32, ptr %48, align 4, !dbg !4818
  %3192 = sext i32 %3191 to i64, !dbg !4818
  %3193 = getelementptr inbounds [4 x float], ptr %47, i64 0, i64 %3192, !dbg !4818
  %3194 = load float, ptr %3193, align 4, !dbg !4818
  %3195 = fcmp ogt float %3190, %3194, !dbg !4818
  br i1 %3195, label %3196, label %3201, !dbg !4818

3196:                                             ; preds = %3186
  %3197 = load i32, ptr %48, align 4, !dbg !4818
  %3198 = sext i32 %3197 to i64, !dbg !4818
  %3199 = getelementptr inbounds [4 x float], ptr %46, i64 0, i64 %3198, !dbg !4818
  %3200 = load float, ptr %3199, align 4, !dbg !4818
  br label %3206, !dbg !4818

3201:                                             ; preds = %3186
  %3202 = load i32, ptr %48, align 4, !dbg !4818
  %3203 = sext i32 %3202 to i64, !dbg !4818
  %3204 = getelementptr inbounds [4 x float], ptr %47, i64 0, i64 %3203, !dbg !4818
  %3205 = load float, ptr %3204, align 4, !dbg !4818
  br label %3206, !dbg !4818

3206:                                             ; preds = %3201, %3196
  %3207 = phi float [ %3200, %3196 ], [ %3205, %3201 ], !dbg !4818
  %3208 = load i32, ptr %48, align 4, !dbg !4819
  %3209 = sext i32 %3208 to i64, !dbg !4819
  %3210 = getelementptr inbounds [4 x float], ptr %45, i64 0, i64 %3209, !dbg !4819
  store float %3207, ptr %3210, align 4, !dbg !4820
  %3211 = load i32, ptr %48, align 4, !dbg !4821
  %3212 = add nsw i32 %3211, 1, !dbg !4821
  store i32 %3212, ptr %48, align 4, !dbg !4821
  br label %3183, !dbg !4822, !llvm.loop !4823

3213:                                             ; preds = %3183
  %3214 = load { <2 x float>, <2 x float> }, ptr %45, align 4, !dbg !4825
  %3215 = extractvalue { <2 x float>, <2 x float> } %3214, 0, !dbg !4808
  store <2 x float> %3215, ptr %49, align 4, !dbg !4808
  %3216 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %49, i32 0, i32 1, !dbg !4808
  %3217 = extractvalue { <2 x float>, <2 x float> } %3214, 1, !dbg !4808
  store <2 x float> %3217, ptr %3216, align 4, !dbg !4808
  %3218 = load { <2 x float>, <2 x float> }, ptr %49, align 4, !dbg !4826
  %3219 = extractvalue { <2 x float>, <2 x float> } %3218, 0, !dbg !4802
  store <2 x float> %3219, ptr %62, align 4, !dbg !4802
  %3220 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %62, i32 0, i32 1, !dbg !4802
  %3221 = extractvalue { <2 x float>, <2 x float> } %3218, 1, !dbg !4802
  store <2 x float> %3221, ptr %3220, align 4, !dbg !4802
  %3222 = load ptr, ptr %60, align 8, !dbg !4827
  %3223 = load i32, ptr %61, align 4, !dbg !4828
  store ptr %3222, ptr %56, align 8
  call void @llvm.dbg.declare(metadata ptr %56, metadata !2006, metadata !DIExpression()), !dbg !4829
  store i32 %3223, ptr %57, align 4
  call void @llvm.dbg.declare(metadata ptr %57, metadata !2011, metadata !DIExpression()), !dbg !4831
  %3224 = load ptr, ptr %56, align 8
  %3225 = load i32, ptr %57, align 4, !dbg !4832
  %3226 = sext i32 %3225 to i64, !dbg !4833
  %3227 = getelementptr inbounds [1 x %struct.sse_f], ptr %3224, i64 0, i64 %3226, !dbg !4833
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %3227, ptr align 4 %62, i64 16, i1 false), !dbg !4834
  %3228 = load i32, ptr %61, align 4, !dbg !4835
  %3229 = add nsw i32 %3228, 1, !dbg !4835
  store i32 %3229, ptr %61, align 4, !dbg !4835
  br label %3156, !dbg !4836, !llvm.loop !4837

3230:                                             ; preds = %3156
  %3231 = load ptr, ptr %711, align 8, !dbg !4839
  %3232 = getelementptr inbounds i32, ptr %3231, i32 1, !dbg !4839
  store ptr %3232, ptr %711, align 8, !dbg !4839
  br label %3038, !dbg !4699, !llvm.loop !4840

3233:                                             ; preds = %3058
  br label %3234, !dbg !4842

3234:                                             ; preds = %3426, %3233
  %3235 = load ptr, ptr %711, align 8, !dbg !4843
  %3236 = load ptr, ptr %712, align 8, !dbg !4844
  %3237 = icmp ult ptr %3235, %3236, !dbg !4845
  br i1 %3237, label %3238, label %3254, !dbg !4846

3238:                                             ; preds = %3234
  %3239 = getelementptr inbounds %"class.RTTL::OnDemandBuilder", ptr %722, i32 0, i32 1, !dbg !4847
  %3240 = load ptr, ptr %3239, align 8, !dbg !4847
  %3241 = load ptr, ptr %712, align 8, !dbg !4848
  %3242 = load i32, ptr %3241, align 4, !dbg !4849
  %3243 = sext i32 %3242 to i64, !dbg !4847
  %3244 = getelementptr inbounds %"class.RTTL::CentroidDiffAABB", ptr %3240, i64 %3243, !dbg !4847
  %3245 = load i32, ptr %693, align 4, !dbg !4850
  %3246 = call noundef float @_ZNK4RTTL16CentroidDiffAABB8centroidEi(ptr noundef nonnull align 4 dereferenceable(32) %3244, i32 noundef %3245), !dbg !4851
  %3247 = load float, ptr %716, align 4, !dbg !4852
  %3248 = fsub float %3246, %3247, !dbg !4853
  %3249 = load float, ptr %717, align 4, !dbg !4854
  %3250 = fmul float %3248, %3249, !dbg !4855
  %3251 = fptosi float %3250 to i32, !dbg !4856
  %3252 = load i32, ptr %692, align 4, !dbg !4857
  %3253 = icmp sge i32 %3251, %3252, !dbg !4858
  br label %3254

3254:                                             ; preds = %3238, %3234
  %3255 = phi i1 [ false, %3234 ], [ %3253, %3238 ], !dbg !4717
  br i1 %3255, label %3256, label %3429, !dbg !4842

3256:                                             ; preds = %3254
  %3257 = getelementptr inbounds %"class.RTTL::OnDemandBuilder", ptr %722, i32 0, i32 1, !dbg !4859
  %3258 = load ptr, ptr %3257, align 8, !dbg !4859
  %3259 = load ptr, ptr %712, align 8, !dbg !4861
  %3260 = load i32, ptr %3259, align 4, !dbg !4862
  %3261 = sext i32 %3260 to i64, !dbg !4859
  %3262 = getelementptr inbounds %"class.RTTL::CentroidDiffAABB", ptr %3258, i64 %3261, !dbg !4859
  %3263 = call { <2 x float>, <2 x float> } @_ZNK4RTTL16CentroidDiffAABB8centroidEv(ptr noundef nonnull align 4 dereferenceable(32) %3262), !dbg !4863
  %3264 = getelementptr inbounds %struct.sse_f, ptr %719, i32 0, i32 0, !dbg !4863
  %3265 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %3264, i32 0, i32 0, !dbg !4863
  %3266 = extractvalue { <2 x float>, <2 x float> } %3263, 0, !dbg !4863
  store <2 x float> %3266, ptr %3265, align 4, !dbg !4863
  %3267 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %3264, i32 0, i32 1, !dbg !4863
  %3268 = extractvalue { <2 x float>, <2 x float> } %3263, 1, !dbg !4863
  store <2 x float> %3268, ptr %3267, align 4, !dbg !4863
  store ptr %715, ptr %633, align 8
  call void @llvm.dbg.declare(metadata ptr %633, metadata !2719, metadata !DIExpression()), !dbg !4864
  store ptr %719, ptr %634, align 8
  call void @llvm.dbg.declare(metadata ptr %634, metadata !2723, metadata !DIExpression()), !dbg !4866
  %3269 = load ptr, ptr %633, align 8
  %3270 = load ptr, ptr %634, align 8, !dbg !4867
  store ptr %3269, ptr %118, align 8
  call void @llvm.dbg.declare(metadata ptr %118, metadata !2726, metadata !DIExpression()), !dbg !4868
  store ptr %3270, ptr %119, align 8
  call void @llvm.dbg.declare(metadata ptr %119, metadata !2730, metadata !DIExpression()), !dbg !4870
  %3271 = load ptr, ptr %118, align 8
  call void @llvm.dbg.declare(metadata ptr %120, metadata !2732, metadata !DIExpression()), !dbg !4871
  %3272 = call noundef nonnull align 4 dereferenceable(16) ptr @_ZN4RTTL7RTVec_tILi1E5sse_fLi0EEcvRNS_8RTData_tILi1ES1_Li0EEEEv(ptr noundef nonnull align 4 dereferenceable(16) %3271), !dbg !4872
  store ptr %3272, ptr %120, align 8, !dbg !4871
  call void @llvm.dbg.declare(metadata ptr %121, metadata !2735, metadata !DIExpression()), !dbg !4873
  store i32 0, ptr %121, align 4, !dbg !4873
  br label %3273, !dbg !4874

3273:                                             ; preds = %3330, %3256
  %3274 = load i32, ptr %121, align 4, !dbg !4875
  %3275 = icmp slt i32 %3274, 1, !dbg !4876
  br i1 %3275, label %3276, label %3347, !dbg !4877

3276:                                             ; preds = %3273
  %3277 = load ptr, ptr %120, align 8, !dbg !4878
  %3278 = load i32, ptr %121, align 4, !dbg !4879
  store ptr %3277, ptr %114, align 8
  call void @llvm.dbg.declare(metadata ptr %114, metadata !2006, metadata !DIExpression()), !dbg !4880
  store i32 %3278, ptr %115, align 4
  call void @llvm.dbg.declare(metadata ptr %115, metadata !2011, metadata !DIExpression()), !dbg !4882
  %3279 = load ptr, ptr %114, align 8
  %3280 = load i32, ptr %115, align 4, !dbg !4883
  %3281 = sext i32 %3280 to i64, !dbg !4884
  %3282 = getelementptr inbounds [1 x %struct.sse_f], ptr %3279, i64 0, i64 %3281, !dbg !4884
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %123, ptr align 4 %3282, i64 16, i1 false), !dbg !4878
  %3283 = load ptr, ptr %119, align 8, !dbg !4885
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %124, ptr align 4 %3283, i64 16, i1 false), !dbg !4885
  %3284 = load <2 x float>, ptr %123, align 4, !dbg !4886
  %3285 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %123, i32 0, i32 1, !dbg !4886
  %3286 = load <2 x float>, ptr %3285, align 4, !dbg !4886
  %3287 = load <2 x float>, ptr %124, align 4, !dbg !4886
  %3288 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %124, i32 0, i32 1, !dbg !4886
  %3289 = load <2 x float>, ptr %3288, align 4, !dbg !4886
  store <2 x float> %3284, ptr %110, align 4
  %3290 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %110, i32 0, i32 1
  store <2 x float> %3286, ptr %3290, align 4
  store <2 x float> %3287, ptr %111, align 4
  %3291 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %111, i32 0, i32 1
  store <2 x float> %3289, ptr %3291, align 4
  call void @llvm.dbg.declare(metadata ptr %110, metadata !2018, metadata !DIExpression()), !dbg !4887
  call void @llvm.dbg.declare(metadata ptr %111, metadata !2024, metadata !DIExpression()), !dbg !4889
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %112, ptr align 4 %110, i64 16, i1 false), !dbg !4890
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %113, ptr align 4 %111, i64 16, i1 false), !dbg !4891
  %3292 = load <2 x float>, ptr %112, align 4, !dbg !4892
  %3293 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %112, i32 0, i32 1, !dbg !4892
  %3294 = load <2 x float>, ptr %3293, align 4, !dbg !4892
  %3295 = load <2 x float>, ptr %113, align 4, !dbg !4892
  %3296 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %113, i32 0, i32 1, !dbg !4892
  %3297 = load <2 x float>, ptr %3296, align 4, !dbg !4892
  store <2 x float> %3292, ptr %106, align 4
  %3298 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %106, i32 0, i32 1
  store <2 x float> %3294, ptr %3298, align 4
  store <2 x float> %3295, ptr %107, align 4
  %3299 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %107, i32 0, i32 1
  store <2 x float> %3297, ptr %3299, align 4
  call void @llvm.dbg.declare(metadata ptr %106, metadata !2029, metadata !DIExpression()), !dbg !4893
  call void @llvm.dbg.declare(metadata ptr %107, metadata !2033, metadata !DIExpression()), !dbg !4895
  call void @llvm.dbg.declare(metadata ptr %105, metadata !2035, metadata !DIExpression()), !dbg !4896
  call void @_ZN5sse_fC2Ev(ptr noundef nonnull align 4 dereferenceable(16) %105), !dbg !4896
  call void @llvm.dbg.declare(metadata ptr %108, metadata !2037, metadata !DIExpression()), !dbg !4897
  store i32 0, ptr %108, align 4, !dbg !4897
  br label %3300, !dbg !4898

3300:                                             ; preds = %3323, %3276
  %3301 = load i32, ptr %108, align 4, !dbg !4899
  %3302 = icmp slt i32 %3301, 4, !dbg !4900
  br i1 %3302, label %3303, label %3330, !dbg !4901

3303:                                             ; preds = %3300
  %3304 = load i32, ptr %108, align 4, !dbg !4902
  %3305 = sext i32 %3304 to i64, !dbg !4902
  %3306 = getelementptr inbounds [4 x float], ptr %106, i64 0, i64 %3305, !dbg !4902
  %3307 = load float, ptr %3306, align 4, !dbg !4902
  %3308 = load i32, ptr %108, align 4, !dbg !4902
  %3309 = sext i32 %3308 to i64, !dbg !4902
  %3310 = getelementptr inbounds [4 x float], ptr %107, i64 0, i64 %3309, !dbg !4902
  %3311 = load float, ptr %3310, align 4, !dbg !4902
  %3312 = fcmp olt float %3307, %3311, !dbg !4902
  br i1 %3312, label %3313, label %3318, !dbg !4902

3313:                                             ; preds = %3303
  %3314 = load i32, ptr %108, align 4, !dbg !4902
  %3315 = sext i32 %3314 to i64, !dbg !4902
  %3316 = getelementptr inbounds [4 x float], ptr %106, i64 0, i64 %3315, !dbg !4902
  %3317 = load float, ptr %3316, align 4, !dbg !4902
  br label %3323, !dbg !4902

3318:                                             ; preds = %3303
  %3319 = load i32, ptr %108, align 4, !dbg !4902
  %3320 = sext i32 %3319 to i64, !dbg !4902
  %3321 = getelementptr inbounds [4 x float], ptr %107, i64 0, i64 %3320, !dbg !4902
  %3322 = load float, ptr %3321, align 4, !dbg !4902
  br label %3323, !dbg !4902

3323:                                             ; preds = %3318, %3313
  %3324 = phi float [ %3317, %3313 ], [ %3322, %3318 ], !dbg !4902
  %3325 = load i32, ptr %108, align 4, !dbg !4903
  %3326 = sext i32 %3325 to i64, !dbg !4903
  %3327 = getelementptr inbounds [4 x float], ptr %105, i64 0, i64 %3326, !dbg !4903
  store float %3324, ptr %3327, align 4, !dbg !4904
  %3328 = load i32, ptr %108, align 4, !dbg !4905
  %3329 = add nsw i32 %3328, 1, !dbg !4905
  store i32 %3329, ptr %108, align 4, !dbg !4905
  br label %3300, !dbg !4906, !llvm.loop !4907

3330:                                             ; preds = %3300
  %3331 = load { <2 x float>, <2 x float> }, ptr %105, align 4, !dbg !4909
  %3332 = extractvalue { <2 x float>, <2 x float> } %3331, 0, !dbg !4892
  store <2 x float> %3332, ptr %109, align 4, !dbg !4892
  %3333 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %109, i32 0, i32 1, !dbg !4892
  %3334 = extractvalue { <2 x float>, <2 x float> } %3331, 1, !dbg !4892
  store <2 x float> %3334, ptr %3333, align 4, !dbg !4892
  %3335 = load { <2 x float>, <2 x float> }, ptr %109, align 4, !dbg !4910
  %3336 = extractvalue { <2 x float>, <2 x float> } %3335, 0, !dbg !4886
  store <2 x float> %3336, ptr %122, align 4, !dbg !4886
  %3337 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %122, i32 0, i32 1, !dbg !4886
  %3338 = extractvalue { <2 x float>, <2 x float> } %3335, 1, !dbg !4886
  store <2 x float> %3338, ptr %3337, align 4, !dbg !4886
  %3339 = load ptr, ptr %120, align 8, !dbg !4911
  %3340 = load i32, ptr %121, align 4, !dbg !4912
  store ptr %3339, ptr %116, align 8
  call void @llvm.dbg.declare(metadata ptr %116, metadata !2006, metadata !DIExpression()), !dbg !4913
  store i32 %3340, ptr %117, align 4
  call void @llvm.dbg.declare(metadata ptr %117, metadata !2011, metadata !DIExpression()), !dbg !4915
  %3341 = load ptr, ptr %116, align 8
  %3342 = load i32, ptr %117, align 4, !dbg !4916
  %3343 = sext i32 %3342 to i64, !dbg !4917
  %3344 = getelementptr inbounds [1 x %struct.sse_f], ptr %3341, i64 0, i64 %3343, !dbg !4917
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %3344, ptr align 4 %122, i64 16, i1 false), !dbg !4918
  %3345 = load i32, ptr %121, align 4, !dbg !4919
  %3346 = add nsw i32 %3345, 1, !dbg !4919
  store i32 %3346, ptr %121, align 4, !dbg !4919
  br label %3273, !dbg !4920, !llvm.loop !4921

3347:                                             ; preds = %3273
  %3348 = getelementptr inbounds %"class.RTTL::RTBox_t", ptr %3269, i32 0, i32 1, !dbg !4923
  %3349 = load ptr, ptr %634, align 8, !dbg !4924
  store ptr %3348, ptr %38, align 8
  call void @llvm.dbg.declare(metadata ptr %38, metadata !2790, metadata !DIExpression()), !dbg !4925
  store ptr %3349, ptr %39, align 8
  call void @llvm.dbg.declare(metadata ptr %39, metadata !2794, metadata !DIExpression()), !dbg !4927
  %3350 = load ptr, ptr %38, align 8
  call void @llvm.dbg.declare(metadata ptr %40, metadata !2796, metadata !DIExpression()), !dbg !4928
  %3351 = call noundef nonnull align 4 dereferenceable(16) ptr @_ZN4RTTL7RTVec_tILi1E5sse_fLi0EEcvRNS_8RTData_tILi1ES1_Li0EEEEv(ptr noundef nonnull align 4 dereferenceable(16) %3350), !dbg !4929
  store ptr %3351, ptr %40, align 8, !dbg !4928
  call void @llvm.dbg.declare(metadata ptr %41, metadata !2799, metadata !DIExpression()), !dbg !4930
  store i32 0, ptr %41, align 4, !dbg !4930
  br label %3352, !dbg !4931

3352:                                             ; preds = %3409, %3347
  %3353 = load i32, ptr %41, align 4, !dbg !4932
  %3354 = icmp slt i32 %3353, 1, !dbg !4933
  br i1 %3354, label %3355, label %3426, !dbg !4934

3355:                                             ; preds = %3352
  %3356 = load ptr, ptr %40, align 8, !dbg !4935
  %3357 = load i32, ptr %41, align 4, !dbg !4936
  store ptr %3356, ptr %34, align 8
  call void @llvm.dbg.declare(metadata ptr %34, metadata !2006, metadata !DIExpression()), !dbg !4937
  store i32 %3357, ptr %35, align 4
  call void @llvm.dbg.declare(metadata ptr %35, metadata !2011, metadata !DIExpression()), !dbg !4939
  %3358 = load ptr, ptr %34, align 8
  %3359 = load i32, ptr %35, align 4, !dbg !4940
  %3360 = sext i32 %3359 to i64, !dbg !4941
  %3361 = getelementptr inbounds [1 x %struct.sse_f], ptr %3358, i64 0, i64 %3360, !dbg !4941
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %43, ptr align 4 %3361, i64 16, i1 false), !dbg !4935
  %3362 = load ptr, ptr %39, align 8, !dbg !4942
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %44, ptr align 4 %3362, i64 16, i1 false), !dbg !4942
  %3363 = load <2 x float>, ptr %43, align 4, !dbg !4943
  %3364 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %43, i32 0, i32 1, !dbg !4943
  %3365 = load <2 x float>, ptr %3364, align 4, !dbg !4943
  %3366 = load <2 x float>, ptr %44, align 4, !dbg !4943
  %3367 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %44, i32 0, i32 1, !dbg !4943
  %3368 = load <2 x float>, ptr %3367, align 4, !dbg !4943
  store <2 x float> %3363, ptr %30, align 4
  %3369 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %30, i32 0, i32 1
  store <2 x float> %3365, ptr %3369, align 4
  store <2 x float> %3366, ptr %31, align 4
  %3370 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %31, i32 0, i32 1
  store <2 x float> %3368, ptr %3370, align 4
  call void @llvm.dbg.declare(metadata ptr %30, metadata !2096, metadata !DIExpression()), !dbg !4944
  call void @llvm.dbg.declare(metadata ptr %31, metadata !2100, metadata !DIExpression()), !dbg !4946
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %32, ptr align 4 %30, i64 16, i1 false), !dbg !4947
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %33, ptr align 4 %31, i64 16, i1 false), !dbg !4948
  %3371 = load <2 x float>, ptr %32, align 4, !dbg !4949
  %3372 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %32, i32 0, i32 1, !dbg !4949
  %3373 = load <2 x float>, ptr %3372, align 4, !dbg !4949
  %3374 = load <2 x float>, ptr %33, align 4, !dbg !4949
  %3375 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %33, i32 0, i32 1, !dbg !4949
  %3376 = load <2 x float>, ptr %3375, align 4, !dbg !4949
  store <2 x float> %3371, ptr %26, align 4
  %3377 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %26, i32 0, i32 1
  store <2 x float> %3373, ptr %3377, align 4
  store <2 x float> %3374, ptr %27, align 4
  %3378 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %27, i32 0, i32 1
  store <2 x float> %3376, ptr %3378, align 4
  call void @llvm.dbg.declare(metadata ptr %26, metadata !2105, metadata !DIExpression()), !dbg !4950
  call void @llvm.dbg.declare(metadata ptr %27, metadata !2109, metadata !DIExpression()), !dbg !4952
  call void @llvm.dbg.declare(metadata ptr %25, metadata !2111, metadata !DIExpression()), !dbg !4953
  call void @_ZN5sse_fC2Ev(ptr noundef nonnull align 4 dereferenceable(16) %25), !dbg !4953
  call void @llvm.dbg.declare(metadata ptr %28, metadata !2113, metadata !DIExpression()), !dbg !4954
  store i32 0, ptr %28, align 4, !dbg !4954
  br label %3379, !dbg !4955

3379:                                             ; preds = %3402, %3355
  %3380 = load i32, ptr %28, align 4, !dbg !4956
  %3381 = icmp slt i32 %3380, 4, !dbg !4957
  br i1 %3381, label %3382, label %3409, !dbg !4958

3382:                                             ; preds = %3379
  %3383 = load i32, ptr %28, align 4, !dbg !4959
  %3384 = sext i32 %3383 to i64, !dbg !4959
  %3385 = getelementptr inbounds [4 x float], ptr %26, i64 0, i64 %3384, !dbg !4959
  %3386 = load float, ptr %3385, align 4, !dbg !4959
  %3387 = load i32, ptr %28, align 4, !dbg !4959
  %3388 = sext i32 %3387 to i64, !dbg !4959
  %3389 = getelementptr inbounds [4 x float], ptr %27, i64 0, i64 %3388, !dbg !4959
  %3390 = load float, ptr %3389, align 4, !dbg !4959
  %3391 = fcmp ogt float %3386, %3390, !dbg !4959
  br i1 %3391, label %3392, label %3397, !dbg !4959

3392:                                             ; preds = %3382
  %3393 = load i32, ptr %28, align 4, !dbg !4959
  %3394 = sext i32 %3393 to i64, !dbg !4959
  %3395 = getelementptr inbounds [4 x float], ptr %26, i64 0, i64 %3394, !dbg !4959
  %3396 = load float, ptr %3395, align 4, !dbg !4959
  br label %3402, !dbg !4959

3397:                                             ; preds = %3382
  %3398 = load i32, ptr %28, align 4, !dbg !4959
  %3399 = sext i32 %3398 to i64, !dbg !4959
  %3400 = getelementptr inbounds [4 x float], ptr %27, i64 0, i64 %3399, !dbg !4959
  %3401 = load float, ptr %3400, align 4, !dbg !4959
  br label %3402, !dbg !4959

3402:                                             ; preds = %3397, %3392
  %3403 = phi float [ %3396, %3392 ], [ %3401, %3397 ], !dbg !4959
  %3404 = load i32, ptr %28, align 4, !dbg !4960
  %3405 = sext i32 %3404 to i64, !dbg !4960
  %3406 = getelementptr inbounds [4 x float], ptr %25, i64 0, i64 %3405, !dbg !4960
  store float %3403, ptr %3406, align 4, !dbg !4961
  %3407 = load i32, ptr %28, align 4, !dbg !4962
  %3408 = add nsw i32 %3407, 1, !dbg !4962
  store i32 %3408, ptr %28, align 4, !dbg !4962
  br label %3379, !dbg !4963, !llvm.loop !4964

3409:                                             ; preds = %3379
  %3410 = load { <2 x float>, <2 x float> }, ptr %25, align 4, !dbg !4966
  %3411 = extractvalue { <2 x float>, <2 x float> } %3410, 0, !dbg !4949
  store <2 x float> %3411, ptr %29, align 4, !dbg !4949
  %3412 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %29, i32 0, i32 1, !dbg !4949
  %3413 = extractvalue { <2 x float>, <2 x float> } %3410, 1, !dbg !4949
  store <2 x float> %3413, ptr %3412, align 4, !dbg !4949
  %3414 = load { <2 x float>, <2 x float> }, ptr %29, align 4, !dbg !4967
  %3415 = extractvalue { <2 x float>, <2 x float> } %3414, 0, !dbg !4943
  store <2 x float> %3415, ptr %42, align 4, !dbg !4943
  %3416 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %42, i32 0, i32 1, !dbg !4943
  %3417 = extractvalue { <2 x float>, <2 x float> } %3414, 1, !dbg !4943
  store <2 x float> %3417, ptr %3416, align 4, !dbg !4943
  %3418 = load ptr, ptr %40, align 8, !dbg !4968
  %3419 = load i32, ptr %41, align 4, !dbg !4969
  store ptr %3418, ptr %36, align 8
  call void @llvm.dbg.declare(metadata ptr %36, metadata !2006, metadata !DIExpression()), !dbg !4970
  store i32 %3419, ptr %37, align 4
  call void @llvm.dbg.declare(metadata ptr %37, metadata !2011, metadata !DIExpression()), !dbg !4972
  %3420 = load ptr, ptr %36, align 8
  %3421 = load i32, ptr %37, align 4, !dbg !4973
  %3422 = sext i32 %3421 to i64, !dbg !4974
  %3423 = getelementptr inbounds [1 x %struct.sse_f], ptr %3420, i64 0, i64 %3422, !dbg !4974
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %3423, ptr align 4 %42, i64 16, i1 false), !dbg !4975
  %3424 = load i32, ptr %41, align 4, !dbg !4976
  %3425 = add nsw i32 %3424, 1, !dbg !4976
  store i32 %3425, ptr %41, align 4, !dbg !4976
  br label %3352, !dbg !4977, !llvm.loop !4978

3426:                                             ; preds = %3352
  %3427 = load ptr, ptr %712, align 8, !dbg !4980
  %3428 = getelementptr inbounds i32, ptr %3427, i32 -1, !dbg !4980
  store ptr %3428, ptr %712, align 8, !dbg !4980
  br label %3234, !dbg !4842, !llvm.loop !4981

3429:                                             ; preds = %3254
  %3430 = load ptr, ptr %711, align 8, !dbg !4983
  %3431 = load ptr, ptr %712, align 8, !dbg !4985
  %3432 = icmp eq ptr %3430, %3431, !dbg !4986
  br i1 %3432, label %3433, label %3611, !dbg !4987

3433:                                             ; preds = %3429
  %3434 = load ptr, ptr %712, align 8, !dbg !4988
  %3435 = load ptr, ptr %665, align 8, !dbg !4990
  %3436 = ptrtoint ptr %3434 to i64, !dbg !4991
  %3437 = ptrtoint ptr %3435 to i64, !dbg !4991
  %3438 = sub i64 %3436, %3437, !dbg !4991
  %3439 = sdiv exact i64 %3438, 4, !dbg !4991
  %3440 = trunc i64 %3439 to i32, !dbg !4988
  store i32 %3440, ptr %713, align 4, !dbg !4992
  %3441 = getelementptr inbounds %"class.RTTL::OnDemandBuilder", ptr %722, i32 0, i32 1, !dbg !4993
  %3442 = load ptr, ptr %3441, align 8, !dbg !4993
  %3443 = load ptr, ptr %712, align 8, !dbg !4994
  %3444 = load i32, ptr %3443, align 4, !dbg !4995
  %3445 = sext i32 %3444 to i64, !dbg !4993
  %3446 = getelementptr inbounds %"class.RTTL::CentroidDiffAABB", ptr %3442, i64 %3445, !dbg !4993
  %3447 = call { <2 x float>, <2 x float> } @_ZNK4RTTL16CentroidDiffAABB8centroidEv(ptr noundef nonnull align 4 dereferenceable(32) %3446), !dbg !4996
  %3448 = getelementptr inbounds %struct.sse_f, ptr %720, i32 0, i32 0, !dbg !4996
  %3449 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %3448, i32 0, i32 0, !dbg !4996
  %3450 = extractvalue { <2 x float>, <2 x float> } %3447, 0, !dbg !4996
  store <2 x float> %3450, ptr %3449, align 4, !dbg !4996
  %3451 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %3448, i32 0, i32 1, !dbg !4996
  %3452 = extractvalue { <2 x float>, <2 x float> } %3447, 1, !dbg !4996
  store <2 x float> %3452, ptr %3451, align 4, !dbg !4996
  store ptr %715, ptr %635, align 8
  call void @llvm.dbg.declare(metadata ptr %635, metadata !2719, metadata !DIExpression()), !dbg !4997
  store ptr %720, ptr %636, align 8
  call void @llvm.dbg.declare(metadata ptr %636, metadata !2723, metadata !DIExpression()), !dbg !4999
  %3453 = load ptr, ptr %635, align 8
  %3454 = load ptr, ptr %636, align 8, !dbg !5000
  store ptr %3453, ptr %98, align 8
  call void @llvm.dbg.declare(metadata ptr %98, metadata !2726, metadata !DIExpression()), !dbg !5001
  store ptr %3454, ptr %99, align 8
  call void @llvm.dbg.declare(metadata ptr %99, metadata !2730, metadata !DIExpression()), !dbg !5003
  %3455 = load ptr, ptr %98, align 8
  call void @llvm.dbg.declare(metadata ptr %100, metadata !2732, metadata !DIExpression()), !dbg !5004
  %3456 = call noundef nonnull align 4 dereferenceable(16) ptr @_ZN4RTTL7RTVec_tILi1E5sse_fLi0EEcvRNS_8RTData_tILi1ES1_Li0EEEEv(ptr noundef nonnull align 4 dereferenceable(16) %3455), !dbg !5005
  store ptr %3456, ptr %100, align 8, !dbg !5004
  call void @llvm.dbg.declare(metadata ptr %101, metadata !2735, metadata !DIExpression()), !dbg !5006
  store i32 0, ptr %101, align 4, !dbg !5006
  br label %3457, !dbg !5007

3457:                                             ; preds = %3514, %3433
  %3458 = load i32, ptr %101, align 4, !dbg !5008
  %3459 = icmp slt i32 %3458, 1, !dbg !5009
  br i1 %3459, label %3460, label %3531, !dbg !5010

3460:                                             ; preds = %3457
  %3461 = load ptr, ptr %100, align 8, !dbg !5011
  %3462 = load i32, ptr %101, align 4, !dbg !5012
  store ptr %3461, ptr %94, align 8
  call void @llvm.dbg.declare(metadata ptr %94, metadata !2006, metadata !DIExpression()), !dbg !5013
  store i32 %3462, ptr %95, align 4
  call void @llvm.dbg.declare(metadata ptr %95, metadata !2011, metadata !DIExpression()), !dbg !5015
  %3463 = load ptr, ptr %94, align 8
  %3464 = load i32, ptr %95, align 4, !dbg !5016
  %3465 = sext i32 %3464 to i64, !dbg !5017
  %3466 = getelementptr inbounds [1 x %struct.sse_f], ptr %3463, i64 0, i64 %3465, !dbg !5017
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %103, ptr align 4 %3466, i64 16, i1 false), !dbg !5011
  %3467 = load ptr, ptr %99, align 8, !dbg !5018
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %104, ptr align 4 %3467, i64 16, i1 false), !dbg !5018
  %3468 = load <2 x float>, ptr %103, align 4, !dbg !5019
  %3469 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %103, i32 0, i32 1, !dbg !5019
  %3470 = load <2 x float>, ptr %3469, align 4, !dbg !5019
  %3471 = load <2 x float>, ptr %104, align 4, !dbg !5019
  %3472 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %104, i32 0, i32 1, !dbg !5019
  %3473 = load <2 x float>, ptr %3472, align 4, !dbg !5019
  store <2 x float> %3468, ptr %90, align 4
  %3474 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %90, i32 0, i32 1
  store <2 x float> %3470, ptr %3474, align 4
  store <2 x float> %3471, ptr %91, align 4
  %3475 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %91, i32 0, i32 1
  store <2 x float> %3473, ptr %3475, align 4
  call void @llvm.dbg.declare(metadata ptr %90, metadata !2018, metadata !DIExpression()), !dbg !5020
  call void @llvm.dbg.declare(metadata ptr %91, metadata !2024, metadata !DIExpression()), !dbg !5022
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %92, ptr align 4 %90, i64 16, i1 false), !dbg !5023
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %93, ptr align 4 %91, i64 16, i1 false), !dbg !5024
  %3476 = load <2 x float>, ptr %92, align 4, !dbg !5025
  %3477 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %92, i32 0, i32 1, !dbg !5025
  %3478 = load <2 x float>, ptr %3477, align 4, !dbg !5025
  %3479 = load <2 x float>, ptr %93, align 4, !dbg !5025
  %3480 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %93, i32 0, i32 1, !dbg !5025
  %3481 = load <2 x float>, ptr %3480, align 4, !dbg !5025
  store <2 x float> %3476, ptr %86, align 4
  %3482 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %86, i32 0, i32 1
  store <2 x float> %3478, ptr %3482, align 4
  store <2 x float> %3479, ptr %87, align 4
  %3483 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %87, i32 0, i32 1
  store <2 x float> %3481, ptr %3483, align 4
  call void @llvm.dbg.declare(metadata ptr %86, metadata !2029, metadata !DIExpression()), !dbg !5026
  call void @llvm.dbg.declare(metadata ptr %87, metadata !2033, metadata !DIExpression()), !dbg !5028
  call void @llvm.dbg.declare(metadata ptr %85, metadata !2035, metadata !DIExpression()), !dbg !5029
  call void @_ZN5sse_fC2Ev(ptr noundef nonnull align 4 dereferenceable(16) %85), !dbg !5029
  call void @llvm.dbg.declare(metadata ptr %88, metadata !2037, metadata !DIExpression()), !dbg !5030
  store i32 0, ptr %88, align 4, !dbg !5030
  br label %3484, !dbg !5031

3484:                                             ; preds = %3507, %3460
  %3485 = load i32, ptr %88, align 4, !dbg !5032
  %3486 = icmp slt i32 %3485, 4, !dbg !5033
  br i1 %3486, label %3487, label %3514, !dbg !5034

3487:                                             ; preds = %3484
  %3488 = load i32, ptr %88, align 4, !dbg !5035
  %3489 = sext i32 %3488 to i64, !dbg !5035
  %3490 = getelementptr inbounds [4 x float], ptr %86, i64 0, i64 %3489, !dbg !5035
  %3491 = load float, ptr %3490, align 4, !dbg !5035
  %3492 = load i32, ptr %88, align 4, !dbg !5035
  %3493 = sext i32 %3492 to i64, !dbg !5035
  %3494 = getelementptr inbounds [4 x float], ptr %87, i64 0, i64 %3493, !dbg !5035
  %3495 = load float, ptr %3494, align 4, !dbg !5035
  %3496 = fcmp olt float %3491, %3495, !dbg !5035
  br i1 %3496, label %3497, label %3502, !dbg !5035

3497:                                             ; preds = %3487
  %3498 = load i32, ptr %88, align 4, !dbg !5035
  %3499 = sext i32 %3498 to i64, !dbg !5035
  %3500 = getelementptr inbounds [4 x float], ptr %86, i64 0, i64 %3499, !dbg !5035
  %3501 = load float, ptr %3500, align 4, !dbg !5035
  br label %3507, !dbg !5035

3502:                                             ; preds = %3487
  %3503 = load i32, ptr %88, align 4, !dbg !5035
  %3504 = sext i32 %3503 to i64, !dbg !5035
  %3505 = getelementptr inbounds [4 x float], ptr %87, i64 0, i64 %3504, !dbg !5035
  %3506 = load float, ptr %3505, align 4, !dbg !5035
  br label %3507, !dbg !5035

3507:                                             ; preds = %3502, %3497
  %3508 = phi float [ %3501, %3497 ], [ %3506, %3502 ], !dbg !5035
  %3509 = load i32, ptr %88, align 4, !dbg !5036
  %3510 = sext i32 %3509 to i64, !dbg !5036
  %3511 = getelementptr inbounds [4 x float], ptr %85, i64 0, i64 %3510, !dbg !5036
  store float %3508, ptr %3511, align 4, !dbg !5037
  %3512 = load i32, ptr %88, align 4, !dbg !5038
  %3513 = add nsw i32 %3512, 1, !dbg !5038
  store i32 %3513, ptr %88, align 4, !dbg !5038
  br label %3484, !dbg !5039, !llvm.loop !5040

3514:                                             ; preds = %3484
  %3515 = load { <2 x float>, <2 x float> }, ptr %85, align 4, !dbg !5042
  %3516 = extractvalue { <2 x float>, <2 x float> } %3515, 0, !dbg !5025
  store <2 x float> %3516, ptr %89, align 4, !dbg !5025
  %3517 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %89, i32 0, i32 1, !dbg !5025
  %3518 = extractvalue { <2 x float>, <2 x float> } %3515, 1, !dbg !5025
  store <2 x float> %3518, ptr %3517, align 4, !dbg !5025
  %3519 = load { <2 x float>, <2 x float> }, ptr %89, align 4, !dbg !5043
  %3520 = extractvalue { <2 x float>, <2 x float> } %3519, 0, !dbg !5019
  store <2 x float> %3520, ptr %102, align 4, !dbg !5019
  %3521 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %102, i32 0, i32 1, !dbg !5019
  %3522 = extractvalue { <2 x float>, <2 x float> } %3519, 1, !dbg !5019
  store <2 x float> %3522, ptr %3521, align 4, !dbg !5019
  %3523 = load ptr, ptr %100, align 8, !dbg !5044
  %3524 = load i32, ptr %101, align 4, !dbg !5045
  store ptr %3523, ptr %96, align 8
  call void @llvm.dbg.declare(metadata ptr %96, metadata !2006, metadata !DIExpression()), !dbg !5046
  store i32 %3524, ptr %97, align 4
  call void @llvm.dbg.declare(metadata ptr %97, metadata !2011, metadata !DIExpression()), !dbg !5048
  %3525 = load ptr, ptr %96, align 8
  %3526 = load i32, ptr %97, align 4, !dbg !5049
  %3527 = sext i32 %3526 to i64, !dbg !5050
  %3528 = getelementptr inbounds [1 x %struct.sse_f], ptr %3525, i64 0, i64 %3527, !dbg !5050
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %3528, ptr align 4 %102, i64 16, i1 false), !dbg !5051
  %3529 = load i32, ptr %101, align 4, !dbg !5052
  %3530 = add nsw i32 %3529, 1, !dbg !5052
  store i32 %3530, ptr %101, align 4, !dbg !5052
  br label %3457, !dbg !5053, !llvm.loop !5054

3531:                                             ; preds = %3457
  %3532 = getelementptr inbounds %"class.RTTL::RTBox_t", ptr %3453, i32 0, i32 1, !dbg !5056
  %3533 = load ptr, ptr %636, align 8, !dbg !5057
  store ptr %3532, ptr %18, align 8
  call void @llvm.dbg.declare(metadata ptr %18, metadata !2790, metadata !DIExpression()), !dbg !5058
  store ptr %3533, ptr %19, align 8
  call void @llvm.dbg.declare(metadata ptr %19, metadata !2794, metadata !DIExpression()), !dbg !5060
  %3534 = load ptr, ptr %18, align 8
  call void @llvm.dbg.declare(metadata ptr %20, metadata !2796, metadata !DIExpression()), !dbg !5061
  %3535 = call noundef nonnull align 4 dereferenceable(16) ptr @_ZN4RTTL7RTVec_tILi1E5sse_fLi0EEcvRNS_8RTData_tILi1ES1_Li0EEEEv(ptr noundef nonnull align 4 dereferenceable(16) %3534), !dbg !5062
  store ptr %3535, ptr %20, align 8, !dbg !5061
  call void @llvm.dbg.declare(metadata ptr %21, metadata !2799, metadata !DIExpression()), !dbg !5063
  store i32 0, ptr %21, align 4, !dbg !5063
  br label %3536, !dbg !5064

3536:                                             ; preds = %3593, %3531
  %3537 = load i32, ptr %21, align 4, !dbg !5065
  %3538 = icmp slt i32 %3537, 1, !dbg !5066
  br i1 %3538, label %3539, label %3610, !dbg !5067

3539:                                             ; preds = %3536
  %3540 = load ptr, ptr %20, align 8, !dbg !5068
  %3541 = load i32, ptr %21, align 4, !dbg !5069
  store ptr %3540, ptr %14, align 8
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2006, metadata !DIExpression()), !dbg !5070
  store i32 %3541, ptr %15, align 4
  call void @llvm.dbg.declare(metadata ptr %15, metadata !2011, metadata !DIExpression()), !dbg !5072
  %3542 = load ptr, ptr %14, align 8
  %3543 = load i32, ptr %15, align 4, !dbg !5073
  %3544 = sext i32 %3543 to i64, !dbg !5074
  %3545 = getelementptr inbounds [1 x %struct.sse_f], ptr %3542, i64 0, i64 %3544, !dbg !5074
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %23, ptr align 4 %3545, i64 16, i1 false), !dbg !5068
  %3546 = load ptr, ptr %19, align 8, !dbg !5075
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %24, ptr align 4 %3546, i64 16, i1 false), !dbg !5075
  %3547 = load <2 x float>, ptr %23, align 4, !dbg !5076
  %3548 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %23, i32 0, i32 1, !dbg !5076
  %3549 = load <2 x float>, ptr %3548, align 4, !dbg !5076
  %3550 = load <2 x float>, ptr %24, align 4, !dbg !5076
  %3551 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %24, i32 0, i32 1, !dbg !5076
  %3552 = load <2 x float>, ptr %3551, align 4, !dbg !5076
  store <2 x float> %3547, ptr %10, align 4
  %3553 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %10, i32 0, i32 1
  store <2 x float> %3549, ptr %3553, align 4
  store <2 x float> %3550, ptr %11, align 4
  %3554 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %11, i32 0, i32 1
  store <2 x float> %3552, ptr %3554, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2096, metadata !DIExpression()), !dbg !5077
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2100, metadata !DIExpression()), !dbg !5079
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %12, ptr align 4 %10, i64 16, i1 false), !dbg !5080
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %13, ptr align 4 %11, i64 16, i1 false), !dbg !5081
  %3555 = load <2 x float>, ptr %12, align 4, !dbg !5082
  %3556 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %12, i32 0, i32 1, !dbg !5082
  %3557 = load <2 x float>, ptr %3556, align 4, !dbg !5082
  %3558 = load <2 x float>, ptr %13, align 4, !dbg !5082
  %3559 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %13, i32 0, i32 1, !dbg !5082
  %3560 = load <2 x float>, ptr %3559, align 4, !dbg !5082
  store <2 x float> %3555, ptr %6, align 4
  %3561 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %6, i32 0, i32 1
  store <2 x float> %3557, ptr %3561, align 4
  store <2 x float> %3558, ptr %7, align 4
  %3562 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %7, i32 0, i32 1
  store <2 x float> %3560, ptr %3562, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2105, metadata !DIExpression()), !dbg !5083
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2109, metadata !DIExpression()), !dbg !5085
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2111, metadata !DIExpression()), !dbg !5086
  call void @_ZN5sse_fC2Ev(ptr noundef nonnull align 4 dereferenceable(16) %5), !dbg !5086
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2113, metadata !DIExpression()), !dbg !5087
  store i32 0, ptr %8, align 4, !dbg !5087
  br label %3563, !dbg !5088

3563:                                             ; preds = %3586, %3539
  %3564 = load i32, ptr %8, align 4, !dbg !5089
  %3565 = icmp slt i32 %3564, 4, !dbg !5090
  br i1 %3565, label %3566, label %3593, !dbg !5091

3566:                                             ; preds = %3563
  %3567 = load i32, ptr %8, align 4, !dbg !5092
  %3568 = sext i32 %3567 to i64, !dbg !5092
  %3569 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 %3568, !dbg !5092
  %3570 = load float, ptr %3569, align 4, !dbg !5092
  %3571 = load i32, ptr %8, align 4, !dbg !5092
  %3572 = sext i32 %3571 to i64, !dbg !5092
  %3573 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 %3572, !dbg !5092
  %3574 = load float, ptr %3573, align 4, !dbg !5092
  %3575 = fcmp ogt float %3570, %3574, !dbg !5092
  br i1 %3575, label %3576, label %3581, !dbg !5092

3576:                                             ; preds = %3566
  %3577 = load i32, ptr %8, align 4, !dbg !5092
  %3578 = sext i32 %3577 to i64, !dbg !5092
  %3579 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 %3578, !dbg !5092
  %3580 = load float, ptr %3579, align 4, !dbg !5092
  br label %3586, !dbg !5092

3581:                                             ; preds = %3566
  %3582 = load i32, ptr %8, align 4, !dbg !5092
  %3583 = sext i32 %3582 to i64, !dbg !5092
  %3584 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 %3583, !dbg !5092
  %3585 = load float, ptr %3584, align 4, !dbg !5092
  br label %3586, !dbg !5092

3586:                                             ; preds = %3581, %3576
  %3587 = phi float [ %3580, %3576 ], [ %3585, %3581 ], !dbg !5092
  %3588 = load i32, ptr %8, align 4, !dbg !5093
  %3589 = sext i32 %3588 to i64, !dbg !5093
  %3590 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 %3589, !dbg !5093
  store float %3587, ptr %3590, align 4, !dbg !5094
  %3591 = load i32, ptr %8, align 4, !dbg !5095
  %3592 = add nsw i32 %3591, 1, !dbg !5095
  store i32 %3592, ptr %8, align 4, !dbg !5095
  br label %3563, !dbg !5096, !llvm.loop !5097

3593:                                             ; preds = %3563
  %3594 = load { <2 x float>, <2 x float> }, ptr %5, align 4, !dbg !5099
  %3595 = extractvalue { <2 x float>, <2 x float> } %3594, 0, !dbg !5082
  store <2 x float> %3595, ptr %9, align 4, !dbg !5082
  %3596 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %9, i32 0, i32 1, !dbg !5082
  %3597 = extractvalue { <2 x float>, <2 x float> } %3594, 1, !dbg !5082
  store <2 x float> %3597, ptr %3596, align 4, !dbg !5082
  %3598 = load { <2 x float>, <2 x float> }, ptr %9, align 4, !dbg !5100
  %3599 = extractvalue { <2 x float>, <2 x float> } %3598, 0, !dbg !5076
  store <2 x float> %3599, ptr %22, align 4, !dbg !5076
  %3600 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %22, i32 0, i32 1, !dbg !5076
  %3601 = extractvalue { <2 x float>, <2 x float> } %3598, 1, !dbg !5076
  store <2 x float> %3601, ptr %3600, align 4, !dbg !5076
  %3602 = load ptr, ptr %20, align 8, !dbg !5101
  %3603 = load i32, ptr %21, align 4, !dbg !5102
  store ptr %3602, ptr %16, align 8
  call void @llvm.dbg.declare(metadata ptr %16, metadata !2006, metadata !DIExpression()), !dbg !5103
  store i32 %3603, ptr %17, align 4
  call void @llvm.dbg.declare(metadata ptr %17, metadata !2011, metadata !DIExpression()), !dbg !5105
  %3604 = load ptr, ptr %16, align 8
  %3605 = load i32, ptr %17, align 4, !dbg !5106
  %3606 = sext i32 %3605 to i64, !dbg !5107
  %3607 = getelementptr inbounds [1 x %struct.sse_f], ptr %3604, i64 0, i64 %3606, !dbg !5107
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %3607, ptr align 4 %22, i64 16, i1 false), !dbg !5108
  %3608 = load i32, ptr %21, align 4, !dbg !5109
  %3609 = add nsw i32 %3608, 1, !dbg !5109
  store i32 %3609, ptr %21, align 4, !dbg !5109
  br label %3536, !dbg !5110, !llvm.loop !5111

3610:                                             ; preds = %3536
  br label %3619, !dbg !5113

3611:                                             ; preds = %3429
  call void @llvm.dbg.declare(metadata ptr %721, metadata !5114, metadata !DIExpression()), !dbg !5115
  %3612 = load ptr, ptr %711, align 8, !dbg !5116
  %3613 = load i32, ptr %3612, align 4, !dbg !5117
  store i32 %3613, ptr %721, align 4, !dbg !5115
  %3614 = load ptr, ptr %712, align 8, !dbg !5118
  %3615 = load i32, ptr %3614, align 4, !dbg !5119
  %3616 = load ptr, ptr %711, align 8, !dbg !5120
  store i32 %3615, ptr %3616, align 4, !dbg !5121
  %3617 = load i32, ptr %721, align 4, !dbg !5122
  %3618 = load ptr, ptr %712, align 8, !dbg !5123
  store i32 %3617, ptr %3618, align 4, !dbg !5124
  br label %3037, !dbg !4698, !llvm.loop !5125

3619:                                             ; preds = %3610
  %3620 = load ptr, ptr %664, align 8, !dbg !5127
  %3621 = load i32, ptr %666, align 4, !dbg !5128
  %3622 = sext i32 %3621 to i64, !dbg !5127
  %3623 = getelementptr inbounds %"class.RTTL::AABB", ptr %3620, i64 %3622, !dbg !5127
  %3624 = call noundef nonnull align 4 dereferenceable(32) ptr @_ZN4RTTL4AABBaSERKS0_(ptr noundef nonnull align 4 dereferenceable(32) %3623, ptr noundef nonnull align 4 dereferenceable(32) %667), !dbg !5129
  %3625 = load ptr, ptr %664, align 8, !dbg !5130
  %3626 = load i32, ptr %666, align 4, !dbg !5131
  %3627 = sext i32 %3626 to i64, !dbg !5130
  %3628 = getelementptr inbounds %"class.RTTL::AABB", ptr %3625, i64 %3627, !dbg !5130
  %3629 = load i32, ptr @nextFree, align 64, !dbg !5132
  %3630 = load i32, ptr %693, align 4, !dbg !5133
  %3631 = trunc i32 %3630 to i8, !dbg !5133
  store ptr %3628, ptr %561, align 8
  call void @llvm.dbg.declare(metadata ptr %561, metadata !5134, metadata !DIExpression()), !dbg !5136
  store i32 %3629, ptr %562, align 4
  call void @llvm.dbg.declare(metadata ptr %562, metadata !5138, metadata !DIExpression()), !dbg !5139
  store i8 %3631, ptr %563, align 1
  call void @llvm.dbg.declare(metadata ptr %563, metadata !5140, metadata !DIExpression()), !dbg !5141
  %3632 = load ptr, ptr %561, align 8
  %3633 = load i32, ptr %562, align 4, !dbg !5142
  store ptr %3632, ptr %560, align 8
  call void @llvm.dbg.declare(metadata ptr %560, metadata !2167, metadata !DIExpression()), !dbg !5143
  %3634 = load ptr, ptr %560, align 8
  %3635 = getelementptr inbounds %"struct.RTTL::BVHExtData", ptr %3634, i64 3, !dbg !5145
  store i32 %3633, ptr %3635, align 4, !dbg !5146
  %3636 = load i8, ptr %563, align 1, !dbg !5147
  store ptr %3632, ptr %550, align 8
  call void @llvm.dbg.declare(metadata ptr %550, metadata !2580, metadata !DIExpression()), !dbg !5148
  %3637 = load ptr, ptr %550, align 8
  %3638 = getelementptr inbounds %"class.RTTL::RTBox_t", ptr %3637, i32 0, i32 1, !dbg !5150
  %3639 = getelementptr inbounds %"struct.RTTL::BVHExtData", ptr %3638, i64 3, !dbg !5151
  store i8 %3636, ptr %3639, align 1, !dbg !5152
  store ptr %3632, ptr %548, align 8
  call void @llvm.dbg.declare(metadata ptr %548, metadata !2587, metadata !DIExpression()), !dbg !5153
  %3640 = load ptr, ptr %548, align 8
  %3641 = getelementptr inbounds %"class.RTTL::RTBox_t", ptr %3640, i32 0, i32 1, !dbg !5155
  %3642 = getelementptr inbounds %"struct.RTTL::BVHExtData", ptr %3641, i64 3, !dbg !5156
  %3643 = getelementptr inbounds %struct.anon, ptr %3642, i32 0, i32 1, !dbg !5157
  store i8 0, ptr %3643, align 1, !dbg !5158
  store ptr %3632, ptr %552, align 8
  call void @llvm.dbg.declare(metadata ptr %552, metadata !2572, metadata !DIExpression()), !dbg !5159
  %3644 = load ptr, ptr %552, align 8
  %3645 = getelementptr inbounds %"class.RTTL::RTBox_t", ptr %3644, i32 0, i32 1, !dbg !5161
  %3646 = getelementptr inbounds %"struct.RTTL::BVHExtData", ptr %3645, i64 3, !dbg !5162
  %3647 = getelementptr inbounds %struct.anon, ptr %3646, i32 0, i32 2, !dbg !5163
  store i16 0, ptr %3647, align 2, !dbg !5164
  %3648 = load ptr, ptr %664, align 8, !dbg !5165
  %3649 = load i32, ptr @nextFree, align 64, !dbg !5166
  %3650 = add nsw i32 %3649, 0, !dbg !5167
  %3651 = sext i32 %3650 to i64, !dbg !5165
  %3652 = getelementptr inbounds %"class.RTTL::AABB", ptr %3648, i64 %3651, !dbg !5165
  %3653 = call noundef nonnull align 4 dereferenceable(32) ptr @_ZN4RTTL4AABBaSERKS0_(ptr noundef nonnull align 4 dereferenceable(32) %3652, ptr noundef nonnull align 4 dereferenceable(32) %697), !dbg !5168
  %3654 = load ptr, ptr %664, align 8, !dbg !5169
  %3655 = load i32, ptr @nextFree, align 64, !dbg !5170
  %3656 = add nsw i32 %3655, 0, !dbg !5171
  %3657 = sext i32 %3656 to i64, !dbg !5169
  %3658 = getelementptr inbounds %"class.RTTL::AABB", ptr %3654, i64 %3657, !dbg !5169
  %3659 = load i32, ptr %668, align 4, !dbg !5172
  %3660 = load i32, ptr %713, align 4, !dbg !5173
  %3661 = load i32, ptr %668, align 4, !dbg !5174
  %3662 = sub nsw i32 %3660, %3661, !dbg !5175
  store ptr %3658, ptr %650, align 8
  call void @llvm.dbg.declare(metadata ptr %650, metadata !2157, metadata !DIExpression()), !dbg !5176
  store i32 %3659, ptr %651, align 4
  call void @llvm.dbg.declare(metadata ptr %651, metadata !2161, metadata !DIExpression()), !dbg !5178
  store i32 %3662, ptr %652, align 4
  call void @llvm.dbg.declare(metadata ptr %652, metadata !2163, metadata !DIExpression()), !dbg !5179
  %3663 = load ptr, ptr %650, align 8
  %3664 = load i32, ptr %651, align 4, !dbg !5180
  %3665 = or i32 %3664, -2147483648, !dbg !5181
  store ptr %3663, ptr %558, align 8
  call void @llvm.dbg.declare(metadata ptr %558, metadata !2167, metadata !DIExpression()), !dbg !5182
  %3666 = load ptr, ptr %558, align 8
  %3667 = getelementptr inbounds %"struct.RTTL::BVHExtData", ptr %3666, i64 3, !dbg !5184
  store i32 %3665, ptr %3667, align 4, !dbg !5185
  %3668 = load i32, ptr %652, align 4, !dbg !5186
  %3669 = or i32 %3668, -2147483648, !dbg !5187
  store ptr %3663, ptr %554, align 8
  call void @llvm.dbg.declare(metadata ptr %554, metadata !2176, metadata !DIExpression()), !dbg !5188
  %3670 = load ptr, ptr %554, align 8
  %3671 = getelementptr inbounds %"class.RTTL::RTBox_t", ptr %3670, i32 0, i32 1, !dbg !5190
  %3672 = getelementptr inbounds %"struct.RTTL::BVHExtData", ptr %3671, i64 3, !dbg !5191
  store i32 %3669, ptr %3672, align 4, !dbg !5192
  %3673 = load ptr, ptr %664, align 8, !dbg !5193
  %3674 = load i32, ptr @nextFree, align 64, !dbg !5194
  %3675 = add nsw i32 %3674, 1, !dbg !5195
  %3676 = sext i32 %3675 to i64, !dbg !5193
  %3677 = getelementptr inbounds %"class.RTTL::AABB", ptr %3673, i64 %3676, !dbg !5193
  %3678 = call noundef nonnull align 4 dereferenceable(32) ptr @_ZN4RTTL4AABBaSERKS0_(ptr noundef nonnull align 4 dereferenceable(32) %3677, ptr noundef nonnull align 4 dereferenceable(32) %698), !dbg !5196
  %3679 = load ptr, ptr %664, align 8, !dbg !5197
  %3680 = load i32, ptr @nextFree, align 64, !dbg !5198
  %3681 = add nsw i32 %3680, 1, !dbg !5199
  %3682 = sext i32 %3681 to i64, !dbg !5197
  %3683 = getelementptr inbounds %"class.RTTL::AABB", ptr %3679, i64 %3682, !dbg !5197
  %3684 = load i32, ptr %713, align 4, !dbg !5200
  %3685 = load i32, ptr %669, align 4, !dbg !5201
  %3686 = load i32, ptr %713, align 4, !dbg !5202
  %3687 = sub nsw i32 %3685, %3686, !dbg !5203
  store ptr %3683, ptr %653, align 8
  call void @llvm.dbg.declare(metadata ptr %653, metadata !2157, metadata !DIExpression()), !dbg !5204
  store i32 %3684, ptr %654, align 4
  call void @llvm.dbg.declare(metadata ptr %654, metadata !2161, metadata !DIExpression()), !dbg !5206
  store i32 %3687, ptr %655, align 4
  call void @llvm.dbg.declare(metadata ptr %655, metadata !2163, metadata !DIExpression()), !dbg !5207
  %3688 = load ptr, ptr %653, align 8
  %3689 = load i32, ptr %654, align 4, !dbg !5208
  %3690 = or i32 %3689, -2147483648, !dbg !5209
  store ptr %3688, ptr %557, align 8
  call void @llvm.dbg.declare(metadata ptr %557, metadata !2167, metadata !DIExpression()), !dbg !5210
  %3691 = load ptr, ptr %557, align 8
  %3692 = getelementptr inbounds %"struct.RTTL::BVHExtData", ptr %3691, i64 3, !dbg !5212
  store i32 %3690, ptr %3692, align 4, !dbg !5213
  %3693 = load i32, ptr %655, align 4, !dbg !5214
  %3694 = or i32 %3693, -2147483648, !dbg !5215
  store ptr %3688, ptr %553, align 8
  call void @llvm.dbg.declare(metadata ptr %553, metadata !2176, metadata !DIExpression()), !dbg !5216
  %3695 = load ptr, ptr %553, align 8
  %3696 = getelementptr inbounds %"class.RTTL::RTBox_t", ptr %3695, i32 0, i32 1, !dbg !5218
  %3697 = getelementptr inbounds %"struct.RTTL::BVHExtData", ptr %3696, i64 3, !dbg !5219
  store i32 %3694, ptr %3697, align 4, !dbg !5220
  %3698 = load i32, ptr @nextFree, align 64, !dbg !5221
  %3699 = add nsw i32 %3698, 2, !dbg !5221
  store i32 %3699, ptr @nextFree, align 64, !dbg !5221
  br label %3700, !dbg !5222

3700:                                             ; preds = %3619, %768
  ret void, !dbg !5222
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #10

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN4RTTL4AABBC2ERKS0_(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(32) %1) unnamed_addr #5 comdat align 2 !dbg !5223 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !5227, metadata !DIExpression()), !dbg !5228
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !5229, metadata !DIExpression()), !dbg !5228
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8, !dbg !5230
  call void @_ZN4RTTL7RTBox3aC2ERKS0_(ptr noundef nonnull align 4 dereferenceable(32) %5, ptr noundef nonnull align 4 dereferenceable(32) %6), !dbg !5230
  ret void, !dbg !5230
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local { <2 x float>, <2 x float> } @_ZNK4RTTL16CentroidDiffAABB8centroidEv(ptr noundef nonnull align 4 dereferenceable(32) %0) #6 comdat align 2 !dbg !5231 {
  %2 = alloca %struct.sse_f, align 4
  %3 = alloca ptr, align 8
  %4 = alloca %struct.sse_f, align 4
  %5 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !5232, metadata !DIExpression()), !dbg !5234
  %6 = load ptr, ptr %5, align 8
  store ptr %6, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2405, metadata !DIExpression()), !dbg !5235
  %7 = load ptr, ptr %3, align 8
  %8 = call { <2 x float>, <2 x float> } @_ZNK4RTTL7RTVec_tILi1E5sse_fLi0EEixEi(ptr noundef nonnull align 4 dereferenceable(16) %7, i32 noundef 0), !dbg !5237
  %9 = extractvalue { <2 x float>, <2 x float> } %8, 0, !dbg !5237
  store <2 x float> %9, ptr %2, align 4, !dbg !5237
  %10 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %2, i32 0, i32 1, !dbg !5237
  %11 = extractvalue { <2 x float>, <2 x float> } %8, 1, !dbg !5237
  store <2 x float> %11, ptr %10, align 4, !dbg !5237
  %12 = load { <2 x float>, <2 x float> }, ptr %2, align 4, !dbg !5238
  %13 = getelementptr inbounds %struct.sse_f, ptr %4, i32 0, i32 0, !dbg !5239
  %14 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %13, i32 0, i32 0, !dbg !5239
  %15 = extractvalue { <2 x float>, <2 x float> } %12, 0, !dbg !5239
  store <2 x float> %15, ptr %14, align 4, !dbg !5239
  %16 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %13, i32 0, i32 1, !dbg !5239
  %17 = extractvalue { <2 x float>, <2 x float> } %12, 1, !dbg !5239
  store <2 x float> %17, ptr %16, align 4, !dbg !5239
  %18 = getelementptr inbounds %struct.sse_f, ptr %4, i32 0, i32 0, !dbg !5240
  %19 = load { <2 x float>, <2 x float> }, ptr %18, align 4, !dbg !5240
  ret { <2 x float>, <2 x float> } %19, !dbg !5240
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3minIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #12 comdat !dbg !5241 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !5248, metadata !DIExpression()), !dbg !5250
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !5251, metadata !DIExpression()), !dbg !5252
  %6 = load ptr, ptr %5, align 8, !dbg !5253
  %7 = load i32, ptr %6, align 4, !dbg !5253
  %8 = load ptr, ptr %4, align 8, !dbg !5255
  %9 = load i32, ptr %8, align 4, !dbg !5255
  %10 = icmp slt i32 %7, %9, !dbg !5256
  br i1 %10, label %11, label %13, !dbg !5257

11:                                               ; preds = %2
  %12 = load ptr, ptr %5, align 8, !dbg !5258
  store ptr %12, ptr %3, align 8, !dbg !5259
  br label %15, !dbg !5259

13:                                               ; preds = %2
  %14 = load ptr, ptr %4, align 8, !dbg !5260
  store ptr %14, ptr %3, align 8, !dbg !5261
  br label %15, !dbg !5261

15:                                               ; preds = %13, %11
  %16 = load ptr, ptr %3, align 8, !dbg !5262
  ret ptr %16, !dbg !5262
}

; Function Attrs: nounwind
declare float @sqrtf(float noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef float @_ZNK4RTTL16CentroidDiffAABB8centroidEi(ptr noundef nonnull align 4 dereferenceable(32) %0, i32 noundef %1) #12 comdat align 2 !dbg !5263 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !5264, metadata !DIExpression()), !dbg !5265
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !5266, metadata !DIExpression()), !dbg !5267
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"class.RTTL::RTBox_t", ptr %5, i32 0, i32 0, !dbg !5268
  %7 = load i32, ptr %4, align 4, !dbg !5269
  %8 = sext i32 %7 to i64, !dbg !5270
  %9 = getelementptr inbounds float, ptr %6, i64 %8, !dbg !5270
  %10 = load float, ptr %9, align 4, !dbg !5270
  ret float %10, !dbg !5271
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN5sse_fC2Ev(ptr noundef nonnull align 4 dereferenceable(16) %0) unnamed_addr #13 comdat align 2 !dbg !5272 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !5273, metadata !DIExpression()), !dbg !5274
  %3 = load ptr, ptr %2, align 8
  ret void, !dbg !5275
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN4RTTL7RTBox3aC2Ev(ptr noundef nonnull align 4 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 !dbg !5276 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !5280, metadata !DIExpression()), !dbg !5281
  %3 = load ptr, ptr %2, align 8
  call void @_ZN4RTTL7RTBox_tILi1E5sse_fLi0EEC2Ev(ptr noundef nonnull align 4 dereferenceable(32) %3), !dbg !5282
  ret void, !dbg !5282
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN4RTTL7RTBox_tILi1E5sse_fLi0EEC2Ev(ptr noundef nonnull align 4 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 !dbg !5283 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !5284, metadata !DIExpression()), !dbg !5285
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.RTTL::RTBox_t", ptr %3, i32 0, i32 0, !dbg !5286
  call void @_ZN4RTTL7RTVec_tILi1E5sse_fLi0EEC2Ev(ptr noundef nonnull align 4 dereferenceable(16) %4), !dbg !5286
  %5 = getelementptr inbounds %"class.RTTL::RTBox_t", ptr %3, i32 0, i32 1, !dbg !5286
  call void @_ZN4RTTL7RTVec_tILi1E5sse_fLi0EEC2Ev(ptr noundef nonnull align 4 dereferenceable(16) %5), !dbg !5286
  ret void, !dbg !5287
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN4RTTL7RTVec_tILi1E5sse_fLi0EEC2Ev(ptr noundef nonnull align 4 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 !dbg !5288 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !5289, metadata !DIExpression()), !dbg !5290
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.RTTL::RTVec_t", ptr %3, i32 0, i32 0, !dbg !5291
  call void @_ZN4RTTL8RTData_tILi1E5sse_fLi0EEC2Ev(ptr noundef nonnull align 4 dereferenceable(16) %4), !dbg !5291
  ret void, !dbg !5292
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN4RTTL8RTData_tILi1E5sse_fLi0EEC2Ev(ptr noundef nonnull align 4 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 !dbg !5293 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !5297, metadata !DIExpression()), !dbg !5298
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.RTTL::RTData_t", ptr %3, i32 0, i32 0, !dbg !5299
  %5 = getelementptr inbounds [1 x %struct.sse_f], ptr %4, i32 0, i32 0, !dbg !5299
  %6 = getelementptr inbounds %struct.sse_f, ptr %5, i64 1, !dbg !5299
  br label %7, !dbg !5299

7:                                                ; preds = %7, %1
  %8 = phi ptr [ %5, %1 ], [ %9, %7 ], !dbg !5299
  call void @_ZN5sse_fC2Ev(ptr noundef nonnull align 4 dereferenceable(16) %8), !dbg !5299
  %9 = getelementptr inbounds %struct.sse_f, ptr %8, i64 1, !dbg !5299
  %10 = icmp eq ptr %9, %6, !dbg !5299
  br i1 %10, label %11, label %7, !dbg !5299

11:                                               ; preds = %7
  ret void, !dbg !5299
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(16) ptr @_ZN4RTTL7RTVec_tILi1E5sse_fLi0EEixEi(ptr noundef nonnull align 4 dereferenceable(16) %0, i32 noundef %1) #8 comdat align 2 !dbg !5300 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !5301, metadata !DIExpression()), !dbg !5302
  store i32 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !5303, metadata !DIExpression()), !dbg !5304
  %7 = load ptr, ptr %5, align 8
  %8 = getelementptr inbounds %"class.RTTL::RTVec_t", ptr %7, i32 0, i32 0, !dbg !5305
  %9 = load i32, ptr %6, align 4, !dbg !5306
  store ptr %8, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2006, metadata !DIExpression()), !dbg !5307
  store i32 %9, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2011, metadata !DIExpression()), !dbg !5309
  %10 = load ptr, ptr %3, align 8
  %11 = load i32, ptr %4, align 4, !dbg !5310
  %12 = sext i32 %11 to i64, !dbg !5311
  %13 = getelementptr inbounds [1 x %struct.sse_f], ptr %10, i64 0, i64 %12, !dbg !5311
  ret ptr %13, !dbg !5312
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local { <2 x float>, <2 x float> } @_ZNK4RTTL7RTVec_tILi1E5sse_fLi0EEixEi(ptr noundef nonnull align 4 dereferenceable(16) %0, i32 noundef %1) #6 comdat align 2 !dbg !5313 {
  %3 = alloca %struct.sse_f, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sse_f, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  store ptr %0, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !5314, metadata !DIExpression()), !dbg !5316
  store i32 %1, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !5317, metadata !DIExpression()), !dbg !5318
  %9 = load ptr, ptr %7, align 8
  %10 = getelementptr inbounds %"class.RTTL::RTVec_t", ptr %9, i32 0, i32 0, !dbg !5319
  %11 = load i32, ptr %8, align 4, !dbg !5320
  store ptr %10, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !5321, metadata !DIExpression()), !dbg !5324
  store i32 %11, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !5326, metadata !DIExpression()), !dbg !5327
  %12 = load ptr, ptr %4, align 8
  %13 = load i32, ptr %5, align 4, !dbg !5328
  %14 = sext i32 %13 to i64, !dbg !5329
  %15 = getelementptr inbounds [1 x %struct.sse_f], ptr %12, i64 0, i64 %14, !dbg !5329
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %3, ptr align 4 %15, i64 16, i1 false), !dbg !5329
  %16 = load { <2 x float>, <2 x float> }, ptr %3, align 4, !dbg !5330
  %17 = getelementptr inbounds %struct.sse_f, ptr %6, i32 0, i32 0, !dbg !5319
  %18 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %17, i32 0, i32 0, !dbg !5319
  %19 = extractvalue { <2 x float>, <2 x float> } %16, 0, !dbg !5319
  store <2 x float> %19, ptr %18, align 4, !dbg !5319
  %20 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %17, i32 0, i32 1, !dbg !5319
  %21 = extractvalue { <2 x float>, <2 x float> } %16, 1, !dbg !5319
  store <2 x float> %21, ptr %20, align 4, !dbg !5319
  %22 = getelementptr inbounds %struct.sse_f, ptr %6, i32 0, i32 0, !dbg !5331
  %23 = load { <2 x float>, <2 x float> }, ptr %22, align 4, !dbg !5331
  ret { <2 x float>, <2 x float> } %23, !dbg !5331
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(32) ptr @_ZN4RTTL7RTBox3aaSERKS0_(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(32) %1) #9 comdat align 2 !dbg !5332 {
  %3 = alloca %struct.sse_f, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sse_f, align 4
  %10 = alloca %struct.sse_f, align 4
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.sse_f, align 4
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  %21 = alloca ptr, align 8
  %22 = alloca ptr, align 8
  %23 = alloca ptr, align 8
  %24 = alloca ptr, align 8
  %25 = alloca ptr, align 8
  %26 = alloca ptr, align 8
  %27 = alloca ptr, align 8
  %28 = alloca ptr, align 8
  store ptr %0, ptr %27, align 8
  call void @llvm.dbg.declare(metadata ptr %27, metadata !5338, metadata !DIExpression()), !dbg !5339
  store ptr %1, ptr %28, align 8
  call void @llvm.dbg.declare(metadata ptr %28, metadata !5340, metadata !DIExpression()), !dbg !5339
  %29 = load ptr, ptr %27, align 8
  %30 = load ptr, ptr %28, align 8, !dbg !5341
  store ptr %29, ptr %25, align 8
  call void @llvm.dbg.declare(metadata ptr %25, metadata !5343, metadata !DIExpression()), !dbg !5345
  store ptr %30, ptr %26, align 8
  call void @llvm.dbg.declare(metadata ptr %26, metadata !5347, metadata !DIExpression()), !dbg !5348
  %31 = load ptr, ptr %25, align 8
  %32 = load ptr, ptr %26, align 8, !dbg !5349
  store ptr %31, ptr %17, align 8
  call void @llvm.dbg.declare(metadata ptr %17, metadata !5350, metadata !DIExpression()), !dbg !5352
  store ptr %32, ptr %18, align 8
  call void @llvm.dbg.declare(metadata ptr %18, metadata !5354, metadata !DIExpression()), !dbg !5355
  %33 = load ptr, ptr %17, align 8
  call void @llvm.dbg.declare(metadata ptr %19, metadata !5356, metadata !DIExpression()), !dbg !5357
  %34 = call noundef nonnull align 4 dereferenceable(16) ptr @_ZN4RTTL7RTVec_tILi1E5sse_fLi0EEcvRNS_8RTData_tILi1ES1_Li0EEEEv(ptr noundef nonnull align 4 dereferenceable(16) %33), !dbg !5358
  store ptr %34, ptr %19, align 8, !dbg !5357
  call void @llvm.dbg.declare(metadata ptr %20, metadata !5359, metadata !DIExpression()), !dbg !5360
  %35 = load ptr, ptr %18, align 8, !dbg !5361
  %36 = call noundef nonnull align 4 dereferenceable(16) ptr @_ZNK4RTTL7RTVec_tILi1E5sse_fLi0EEcvRKNS_8RTData_tILi1ES1_Li0EEEEv(ptr noundef nonnull align 4 dereferenceable(16) %35), !dbg !5361
  store ptr %36, ptr %20, align 8, !dbg !5360
  %37 = load ptr, ptr %19, align 8, !dbg !5362
  %38 = load ptr, ptr %20, align 8, !dbg !5363
  store ptr %37, ptr %13, align 8
  call void @llvm.dbg.declare(metadata ptr %13, metadata !5364, metadata !DIExpression()), !dbg !5371
  store ptr %38, ptr %14, align 8
  call void @llvm.dbg.declare(metadata ptr %14, metadata !5373, metadata !DIExpression()), !dbg !5374
  %39 = load ptr, ptr %13, align 8
  %40 = call noundef i32 @_ZN4RTTL8RTData_tILi1E5sse_fLi0EE9nElementsEv(), !dbg !5375
  %41 = load ptr, ptr %14, align 8, !dbg !5375
  %42 = call noundef i32 @_ZN4RTTL8RTData_tILi1E5sse_fLi0EE9nElementsEv(), !dbg !5375
  %43 = icmp sle i32 %40, %42, !dbg !5375
  br i1 %43, label %44, label %45, !dbg !5375

44:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %15, metadata !5376, metadata !DIExpression()), !dbg !5378
  store i32 0, ptr %15, align 4, !dbg !5378
  br label %46, !dbg !5379

45:                                               ; preds = %2
  call void @__assert_fail(ptr noundef @.str.7, ptr noundef @.str.8, i32 noundef 44, ptr noundef @__PRETTY_FUNCTION__._ZN4RTTL8RTData_tILi1E5sse_fLi0EE6assignILi1ES1_Li0EEEvRKNS0_IXT_ET0_XT1_EEE) #17, !dbg !5375
  unreachable, !dbg !5375

46:                                               ; preds = %49, %44
  %47 = load i32, ptr %15, align 4, !dbg !5380
  %48 = icmp slt i32 %47, 1, !dbg !5382
  br i1 %48, label %49, label %65, !dbg !5383

49:                                               ; preds = %46
  %50 = load ptr, ptr %14, align 8, !dbg !5384
  %51 = load i32, ptr %15, align 4, !dbg !5385
  store ptr %50, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !5321, metadata !DIExpression()), !dbg !5386
  store i32 %51, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !5326, metadata !DIExpression()), !dbg !5388
  %52 = load ptr, ptr %11, align 8
  %53 = load i32, ptr %12, align 4, !dbg !5389
  %54 = sext i32 %53 to i64, !dbg !5390
  %55 = getelementptr inbounds [1 x %struct.sse_f], ptr %52, i64 0, i64 %54, !dbg !5390
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %10, ptr align 4 %55, i64 16, i1 false), !dbg !5390
  %56 = load { <2 x float>, <2 x float> }, ptr %10, align 4, !dbg !5391
  %57 = extractvalue { <2 x float>, <2 x float> } %56, 0, !dbg !5384
  store <2 x float> %57, ptr %16, align 4, !dbg !5384
  %58 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %16, i32 0, i32 1, !dbg !5384
  %59 = extractvalue { <2 x float>, <2 x float> } %56, 1, !dbg !5384
  store <2 x float> %59, ptr %58, align 4, !dbg !5384
  %60 = load i32, ptr %15, align 4, !dbg !5392
  %61 = sext i32 %60 to i64, !dbg !5393
  %62 = getelementptr inbounds [1 x %struct.sse_f], ptr %39, i64 0, i64 %61, !dbg !5393
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %62, ptr align 4 %16, i64 16, i1 false), !dbg !5394
  %63 = load i32, ptr %15, align 4, !dbg !5395
  %64 = add nsw i32 %63, 1, !dbg !5395
  store i32 %64, ptr %15, align 4, !dbg !5395
  br label %46, !dbg !5396, !llvm.loop !5397

65:                                               ; preds = %46
  %66 = load ptr, ptr %26, align 8, !dbg !5399
  %67 = getelementptr inbounds %"class.RTTL::RTBox_t", ptr %66, i32 0, i32 1, !dbg !5400
  %68 = getelementptr inbounds %"class.RTTL::RTBox_t", ptr %31, i32 0, i32 1, !dbg !5401
  store ptr %68, ptr %21, align 8
  call void @llvm.dbg.declare(metadata ptr %21, metadata !5350, metadata !DIExpression()), !dbg !5402
  store ptr %67, ptr %22, align 8
  call void @llvm.dbg.declare(metadata ptr %22, metadata !5354, metadata !DIExpression()), !dbg !5404
  %69 = load ptr, ptr %21, align 8
  call void @llvm.dbg.declare(metadata ptr %23, metadata !5356, metadata !DIExpression()), !dbg !5405
  %70 = call noundef nonnull align 4 dereferenceable(16) ptr @_ZN4RTTL7RTVec_tILi1E5sse_fLi0EEcvRNS_8RTData_tILi1ES1_Li0EEEEv(ptr noundef nonnull align 4 dereferenceable(16) %69), !dbg !5406
  store ptr %70, ptr %23, align 8, !dbg !5405
  call void @llvm.dbg.declare(metadata ptr %24, metadata !5359, metadata !DIExpression()), !dbg !5407
  %71 = load ptr, ptr %22, align 8, !dbg !5408
  %72 = call noundef nonnull align 4 dereferenceable(16) ptr @_ZNK4RTTL7RTVec_tILi1E5sse_fLi0EEcvRKNS_8RTData_tILi1ES1_Li0EEEEv(ptr noundef nonnull align 4 dereferenceable(16) %71), !dbg !5408
  store ptr %72, ptr %24, align 8, !dbg !5407
  %73 = load ptr, ptr %23, align 8, !dbg !5409
  %74 = load ptr, ptr %24, align 8, !dbg !5410
  store ptr %73, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !5364, metadata !DIExpression()), !dbg !5411
  store ptr %74, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !5373, metadata !DIExpression()), !dbg !5413
  %75 = load ptr, ptr %6, align 8
  %76 = call noundef i32 @_ZN4RTTL8RTData_tILi1E5sse_fLi0EE9nElementsEv(), !dbg !5414
  %77 = load ptr, ptr %7, align 8, !dbg !5414
  %78 = call noundef i32 @_ZN4RTTL8RTData_tILi1E5sse_fLi0EE9nElementsEv(), !dbg !5414
  %79 = icmp sle i32 %76, %78, !dbg !5414
  br i1 %79, label %80, label %81, !dbg !5414

80:                                               ; preds = %65
  call void @llvm.dbg.declare(metadata ptr %8, metadata !5376, metadata !DIExpression()), !dbg !5415
  store i32 0, ptr %8, align 4, !dbg !5415
  br label %82, !dbg !5416

81:                                               ; preds = %65
  call void @__assert_fail(ptr noundef @.str.7, ptr noundef @.str.8, i32 noundef 44, ptr noundef @__PRETTY_FUNCTION__._ZN4RTTL8RTData_tILi1E5sse_fLi0EE6assignILi1ES1_Li0EEEvRKNS0_IXT_ET0_XT1_EEE) #17, !dbg !5414
  unreachable, !dbg !5414

82:                                               ; preds = %85, %80
  %83 = load i32, ptr %8, align 4, !dbg !5417
  %84 = icmp slt i32 %83, 1, !dbg !5418
  br i1 %84, label %85, label %101, !dbg !5419

85:                                               ; preds = %82
  %86 = load ptr, ptr %7, align 8, !dbg !5420
  %87 = load i32, ptr %8, align 4, !dbg !5421
  store ptr %86, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !5321, metadata !DIExpression()), !dbg !5422
  store i32 %87, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !5326, metadata !DIExpression()), !dbg !5424
  %88 = load ptr, ptr %4, align 8
  %89 = load i32, ptr %5, align 4, !dbg !5425
  %90 = sext i32 %89 to i64, !dbg !5426
  %91 = getelementptr inbounds [1 x %struct.sse_f], ptr %88, i64 0, i64 %90, !dbg !5426
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %3, ptr align 4 %91, i64 16, i1 false), !dbg !5426
  %92 = load { <2 x float>, <2 x float> }, ptr %3, align 4, !dbg !5427
  %93 = extractvalue { <2 x float>, <2 x float> } %92, 0, !dbg !5420
  store <2 x float> %93, ptr %9, align 4, !dbg !5420
  %94 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %9, i32 0, i32 1, !dbg !5420
  %95 = extractvalue { <2 x float>, <2 x float> } %92, 1, !dbg !5420
  store <2 x float> %95, ptr %94, align 4, !dbg !5420
  %96 = load i32, ptr %8, align 4, !dbg !5428
  %97 = sext i32 %96 to i64, !dbg !5429
  %98 = getelementptr inbounds [1 x %struct.sse_f], ptr %75, i64 0, i64 %97, !dbg !5429
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %98, ptr align 4 %9, i64 16, i1 false), !dbg !5430
  %99 = load i32, ptr %8, align 4, !dbg !5431
  %100 = add nsw i32 %99, 1, !dbg !5431
  store i32 %100, ptr %8, align 4, !dbg !5431
  br label %82, !dbg !5432, !llvm.loop !5433

101:                                              ; preds = %82
  ret ptr %29, !dbg !5341
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(16) ptr @_ZN4RTTL7RTVec_tILi1E5sse_fLi0EEcvRNS_8RTData_tILi1ES1_Li0EEEEv(ptr noundef nonnull align 4 dereferenceable(16) %0) #12 comdat align 2 !dbg !5435 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !5436, metadata !DIExpression()), !dbg !5437
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.RTTL::RTVec_t", ptr %3, i32 0, i32 0, !dbg !5438
  ret ptr %4, !dbg !5439
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(16) ptr @_ZNK4RTTL7RTVec_tILi1E5sse_fLi0EEcvRKNS_8RTData_tILi1ES1_Li0EEEEv(ptr noundef nonnull align 4 dereferenceable(16) %0) #12 comdat align 2 !dbg !5440 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !5441, metadata !DIExpression()), !dbg !5442
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.RTTL::RTVec_t", ptr %3, i32 0, i32 0, !dbg !5443
  ret ptr %4, !dbg !5444
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZN4RTTL8RTData_tILi1E5sse_fLi0EE9nElementsEv() #12 comdat align 2 !dbg !5445 {
  ret i32 1, !dbg !5446
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN4RTTL7RTBox3aC2ERKS0_(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(32) %1) unnamed_addr #5 comdat align 2 !dbg !5447 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !5451, metadata !DIExpression()), !dbg !5452
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !5453, metadata !DIExpression()), !dbg !5452
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8, !dbg !5454
  call void @_ZN4RTTL7RTBox_tILi1E5sse_fLi0EEC2ERKS2_(ptr noundef nonnull align 4 dereferenceable(32) %5, ptr noundef nonnull align 4 dereferenceable(32) %6), !dbg !5454
  ret void, !dbg !5454
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4RTTL7RTBox_tILi1E5sse_fLi0EEC2ERKS2_(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(32) %1) unnamed_addr #13 comdat align 2 !dbg !5455 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !5456, metadata !DIExpression()), !dbg !5457
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !5458, metadata !DIExpression()), !dbg !5459
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"class.RTTL::RTBox_t", ptr %5, i32 0, i32 0, !dbg !5460
  %7 = load ptr, ptr %4, align 8, !dbg !5461
  %8 = getelementptr inbounds %"class.RTTL::RTBox_t", ptr %7, i32 0, i32 0, !dbg !5462
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %6, ptr align 4 %8, i64 16, i1 false), !dbg !5460
  %9 = getelementptr inbounds %"class.RTTL::RTBox_t", ptr %5, i32 0, i32 1, !dbg !5463
  %10 = load ptr, ptr %4, align 8, !dbg !5464
  %11 = getelementptr inbounds %"class.RTTL::RTBox_t", ptr %10, i32 0, i32 1, !dbg !5465
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %9, ptr align 4 %11, i64 16, i1 false), !dbg !5463
  ret void, !dbg !5466
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZN4RTTL7RTVec_tILi1E5sse_fLi0EEcvPS1_Ev(ptr noundef nonnull align 4 dereferenceable(16) %0) #12 comdat align 2 !dbg !5467 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !5468, metadata !DIExpression()), !dbg !5469
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.RTTL::RTVec_t", ptr %3, i32 0, i32 0, !dbg !5470
  ret ptr %4, !dbg !5471
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(16) ptr @_ZN4RTTL7RTVec_tILi1E5sse_fLi0EE5arrayEv(ptr noundef nonnull align 4 dereferenceable(16) %0) #12 comdat align 2 !dbg !5472 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !5473, metadata !DIExpression()), !dbg !5474
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.RTTL::RTVec_t", ptr %3, i32 0, i32 0, !dbg !5475
  ret ptr %4, !dbg !5476
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(16) ptr @_ZNK4RTTL7RTVec_tILi1E5sse_fLi0EE5arrayEv(ptr noundef nonnull align 4 dereferenceable(16) %0) #12 comdat align 2 !dbg !5477 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !5478, metadata !DIExpression()), !dbg !5479
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.RTTL::RTVec_t", ptr %3, i32 0, i32 0, !dbg !5480
  ret ptr %4, !dbg !5481
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4RTTL7RTBox_tILi3EfLi0EEC2ERKNS_7RTVec_tILi3EfLi0EEES5_(ptr noundef nonnull align 4 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(12) %2) unnamed_addr #13 comdat align 2 !dbg !5482 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !5483, metadata !DIExpression()), !dbg !5485
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !5486, metadata !DIExpression()), !dbg !5487
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !5488, metadata !DIExpression()), !dbg !5489
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds %"class.RTTL::RTBox_t.1", ptr %7, i32 0, i32 0, !dbg !5490
  %9 = load ptr, ptr %5, align 8, !dbg !5491
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %8, ptr align 4 %9, i64 12, i1 false), !dbg !5490
  %10 = getelementptr inbounds %"class.RTTL::RTBox_t.1", ptr %7, i32 0, i32 1, !dbg !5492
  %11 = load ptr, ptr %6, align 8, !dbg !5493
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %10, ptr align 4 %11, i64 12, i1 false), !dbg !5492
  ret void, !dbg !5494
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef float @_ZNK4RTTL7RTVec_tILi3EfLi0EEixEi(ptr noundef nonnull align 4 dereferenceable(12) %0, i32 noundef %1) #8 comdat align 2 !dbg !5495 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !5501, metadata !DIExpression()), !dbg !5503
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !5504, metadata !DIExpression()), !dbg !5505
  %5 = load ptr, ptr %3, align 8
  %6 = call noundef ptr @_ZNK4RTTL7RTVec_tILi3EfLi0EE4dataEv(ptr noundef nonnull align 4 dereferenceable(12) %5), !dbg !5506
  %7 = load i32, ptr %4, align 4, !dbg !5507
  %8 = sext i32 %7 to i64, !dbg !5506
  %9 = getelementptr inbounds float, ptr %6, i64 %8, !dbg !5506
  %10 = load float, ptr %9, align 4, !dbg !5506
  ret float %10, !dbg !5508
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZNK4RTTL7RTVec_tILi3EfLi0EE4dataEv(ptr noundef nonnull align 4 dereferenceable(12) %0) #12 comdat align 2 !dbg !5509 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !5514, metadata !DIExpression()), !dbg !5515
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.RTTL::RTVec_t.2", ptr %3, i32 0, i32 0, !dbg !5516
  ret ptr %4, !dbg !5517
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNK4RTTL16CentroidDiffAABB7convertEv(ptr noalias sret(%"class.RTTL::AABB") align 4 %0, ptr noundef nonnull align 4 dereferenceable(32) %1) #6 comdat align 2 !dbg !5518 {
  %3 = alloca %struct.sse_f, align 4
  %4 = alloca %struct.sse_f, align 4
  %5 = alloca %struct.sse_f, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sse_f, align 4
  %8 = alloca %struct.sse_f, align 4
  %9 = alloca %struct.sse_f, align 4
  %10 = alloca %struct.sse_f, align 4
  %11 = alloca %struct.sse_f, align 4
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.sse_f, align 4
  %17 = alloca %struct.sse_f, align 4
  %18 = alloca %struct.sse_f, align 4
  %19 = alloca %"class.RTTL::RTVec_t", align 4
  %20 = alloca ptr, align 8
  %21 = alloca ptr, align 8
  %22 = alloca %struct.sse_f, align 4
  %23 = alloca %struct.sse_f, align 4
  %24 = alloca %struct.sse_f, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.sse_f, align 4
  %27 = alloca %struct.sse_f, align 4
  %28 = alloca %struct.sse_f, align 4
  %29 = alloca %struct.sse_f, align 4
  %30 = alloca %struct.sse_f, align 4
  %31 = alloca ptr, align 8
  %32 = alloca ptr, align 8
  %33 = alloca ptr, align 8
  %34 = alloca i32, align 4
  %35 = alloca %struct.sse_f, align 4
  %36 = alloca %struct.sse_f, align 4
  %37 = alloca %struct.sse_f, align 4
  %38 = alloca %"class.RTTL::RTVec_t", align 4
  %39 = alloca ptr, align 8
  %40 = alloca ptr, align 8
  %41 = alloca %struct.sse_f, align 4
  %42 = alloca ptr, align 8
  %43 = alloca i32, align 4
  %44 = alloca ptr, align 8
  %45 = alloca ptr, align 8
  %46 = alloca i32, align 4
  %47 = alloca %struct.sse_f, align 4
  %48 = alloca %struct.sse_f, align 4
  %49 = alloca ptr, align 8
  %50 = alloca i32, align 4
  %51 = alloca ptr, align 8
  %52 = alloca ptr, align 8
  %53 = alloca i32, align 4
  %54 = alloca %struct.sse_f, align 4
  %55 = alloca ptr, align 8
  %56 = alloca ptr, align 8
  %57 = alloca ptr, align 8
  %58 = alloca ptr, align 8
  %59 = alloca ptr, align 8
  %60 = alloca ptr, align 8
  %61 = alloca ptr, align 8
  %62 = alloca ptr, align 8
  %63 = alloca ptr, align 8
  %64 = alloca ptr, align 8
  %65 = alloca %"class.RTTL::RTVec_t", align 4
  %66 = alloca %"class.RTTL::RTVec_t", align 4
  store ptr %0, ptr %63, align 8
  store ptr %1, ptr %64, align 8
  call void @llvm.dbg.declare(metadata ptr %64, metadata !5519, metadata !DIExpression()), !dbg !5520
  %67 = load ptr, ptr %64, align 8
  call void @llvm.dbg.declare(metadata ptr %63, metadata !5521, metadata !DIExpression(DW_OP_deref)), !dbg !5522
  call void @_ZN4RTTL4AABBC2Ev(ptr noundef nonnull align 4 dereferenceable(32) %0), !dbg !5522
  %68 = getelementptr inbounds %"class.RTTL::RTBox_t", ptr %67, i32 0, i32 0, !dbg !5523
  %69 = getelementptr inbounds %"class.RTTL::RTBox_t", ptr %67, i32 0, i32 1, !dbg !5524
  store ptr %68, ptr %39, align 8
  call void @llvm.dbg.declare(metadata ptr %39, metadata !2240, metadata !DIExpression()), !dbg !5525
  store ptr %69, ptr %40, align 8
  call void @llvm.dbg.declare(metadata ptr %40, metadata !2248, metadata !DIExpression()), !dbg !5527
  call void @llvm.dbg.declare(metadata ptr %38, metadata !2250, metadata !DIExpression()), !dbg !5528
  call void @_ZN4RTTL7RTVec_tILi1E5sse_fLi0EEC2Ev(ptr noundef nonnull align 4 dereferenceable(16) %38), !dbg !5528
  %70 = call noundef nonnull align 4 dereferenceable(16) ptr @_ZN4RTTL7RTVec_tILi1E5sse_fLi0EE5arrayEv(ptr noundef nonnull align 4 dereferenceable(16) %38), !dbg !5529
  %71 = load ptr, ptr %39, align 8, !dbg !5530
  %72 = call noundef nonnull align 4 dereferenceable(16) ptr @_ZNK4RTTL7RTVec_tILi1E5sse_fLi0EE5arrayEv(ptr noundef nonnull align 4 dereferenceable(16) %71), !dbg !5531
  %73 = load ptr, ptr %40, align 8, !dbg !5532
  %74 = call noundef nonnull align 4 dereferenceable(16) ptr @_ZNK4RTTL7RTVec_tILi1E5sse_fLi0EE5arrayEv(ptr noundef nonnull align 4 dereferenceable(16) %73), !dbg !5533
  store ptr %70, ptr %31, align 8
  call void @llvm.dbg.declare(metadata ptr %31, metadata !2257, metadata !DIExpression()), !dbg !5534
  store ptr %72, ptr %32, align 8
  call void @llvm.dbg.declare(metadata ptr %32, metadata !2261, metadata !DIExpression()), !dbg !5536
  store ptr %74, ptr %33, align 8
  call void @llvm.dbg.declare(metadata ptr %33, metadata !2263, metadata !DIExpression()), !dbg !5537
  %75 = load ptr, ptr %31, align 8
  call void @llvm.dbg.declare(metadata ptr %34, metadata !2265, metadata !DIExpression()), !dbg !5538
  store i32 0, ptr %34, align 4, !dbg !5538
  br label %76, !dbg !5539

76:                                               ; preds = %122, %2
  %77 = load i32, ptr %34, align 4, !dbg !5540
  %78 = icmp slt i32 %77, 1, !dbg !5541
  br i1 %78, label %79, label %136, !dbg !5542

79:                                               ; preds = %76
  %80 = load ptr, ptr %32, align 8, !dbg !5543
  %81 = load i32, ptr %34, align 4, !dbg !5544
  %82 = sext i32 %81 to i64, !dbg !5543
  %83 = getelementptr inbounds [1 x %struct.sse_f], ptr %80, i64 0, i64 %82, !dbg !5543
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %36, ptr align 4 %83, i64 16, i1 false), !dbg !5543
  %84 = load ptr, ptr %33, align 8, !dbg !5545
  %85 = load i32, ptr %34, align 4, !dbg !5546
  %86 = sext i32 %85 to i64, !dbg !5545
  %87 = getelementptr inbounds [1 x %struct.sse_f], ptr %84, i64 0, i64 %86, !dbg !5545
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %37, ptr align 4 %87, i64 16, i1 false), !dbg !5545
  %88 = load <2 x float>, ptr %36, align 4, !dbg !5547
  %89 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %36, i32 0, i32 1, !dbg !5547
  %90 = load <2 x float>, ptr %89, align 4, !dbg !5547
  %91 = load <2 x float>, ptr %37, align 4, !dbg !5547
  %92 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %37, i32 0, i32 1, !dbg !5547
  %93 = load <2 x float>, ptr %92, align 4, !dbg !5547
  store <2 x float> %88, ptr %27, align 4
  %94 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %27, i32 0, i32 1
  store <2 x float> %90, ptr %94, align 4
  store <2 x float> %91, ptr %28, align 4
  %95 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %28, i32 0, i32 1
  store <2 x float> %93, ptr %95, align 4
  call void @llvm.dbg.declare(metadata ptr %27, metadata !2278, metadata !DIExpression()), !dbg !5548
  call void @llvm.dbg.declare(metadata ptr %28, metadata !2282, metadata !DIExpression()), !dbg !5550
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %29, ptr align 4 %27, i64 16, i1 false), !dbg !5551
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %30, ptr align 4 %28, i64 16, i1 false), !dbg !5552
  %96 = load <2 x float>, ptr %29, align 4, !dbg !5553
  %97 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %29, i32 0, i32 1, !dbg !5553
  %98 = load <2 x float>, ptr %97, align 4, !dbg !5553
  %99 = load <2 x float>, ptr %30, align 4, !dbg !5553
  %100 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %30, i32 0, i32 1, !dbg !5553
  %101 = load <2 x float>, ptr %100, align 4, !dbg !5553
  store <2 x float> %96, ptr %23, align 4
  %102 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %23, i32 0, i32 1
  store <2 x float> %98, ptr %102, align 4
  store <2 x float> %99, ptr %24, align 4
  %103 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %24, i32 0, i32 1
  store <2 x float> %101, ptr %103, align 4
  call void @llvm.dbg.declare(metadata ptr %23, metadata !2287, metadata !DIExpression()), !dbg !5554
  call void @llvm.dbg.declare(metadata ptr %24, metadata !2291, metadata !DIExpression()), !dbg !5556
  call void @llvm.dbg.declare(metadata ptr %22, metadata !2293, metadata !DIExpression()), !dbg !5557
  call void @_ZN5sse_fC2Ev(ptr noundef nonnull align 4 dereferenceable(16) %22), !dbg !5557
  call void @llvm.dbg.declare(metadata ptr %25, metadata !2295, metadata !DIExpression()), !dbg !5558
  store i32 0, ptr %25, align 4, !dbg !5558
  br label %104, !dbg !5559

104:                                              ; preds = %107, %79
  %105 = load i32, ptr %25, align 4, !dbg !5560
  %106 = icmp slt i32 %105, 4, !dbg !5561
  br i1 %106, label %107, label %122, !dbg !5562

107:                                              ; preds = %104
  %108 = load i32, ptr %25, align 4, !dbg !5563
  %109 = sext i32 %108 to i64, !dbg !5564
  %110 = getelementptr inbounds [4 x float], ptr %23, i64 0, i64 %109, !dbg !5564
  %111 = load float, ptr %110, align 4, !dbg !5564
  %112 = load i32, ptr %25, align 4, !dbg !5565
  %113 = sext i32 %112 to i64, !dbg !5566
  %114 = getelementptr inbounds [4 x float], ptr %24, i64 0, i64 %113, !dbg !5566
  %115 = load float, ptr %114, align 4, !dbg !5566
  %116 = fsub float %111, %115, !dbg !5567
  %117 = load i32, ptr %25, align 4, !dbg !5568
  %118 = sext i32 %117 to i64, !dbg !5569
  %119 = getelementptr inbounds [4 x float], ptr %22, i64 0, i64 %118, !dbg !5569
  store float %116, ptr %119, align 4, !dbg !5570
  %120 = load i32, ptr %25, align 4, !dbg !5571
  %121 = add nsw i32 %120, 1, !dbg !5571
  store i32 %121, ptr %25, align 4, !dbg !5571
  br label %104, !dbg !5572, !llvm.loop !5573

122:                                              ; preds = %104
  %123 = load { <2 x float>, <2 x float> }, ptr %22, align 4, !dbg !5575
  %124 = extractvalue { <2 x float>, <2 x float> } %123, 0, !dbg !5553
  store <2 x float> %124, ptr %26, align 4, !dbg !5553
  %125 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %26, i32 0, i32 1, !dbg !5553
  %126 = extractvalue { <2 x float>, <2 x float> } %123, 1, !dbg !5553
  store <2 x float> %126, ptr %125, align 4, !dbg !5553
  %127 = load { <2 x float>, <2 x float> }, ptr %26, align 4, !dbg !5576
  %128 = extractvalue { <2 x float>, <2 x float> } %127, 0, !dbg !5547
  store <2 x float> %128, ptr %35, align 4, !dbg !5547
  %129 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %35, i32 0, i32 1, !dbg !5547
  %130 = extractvalue { <2 x float>, <2 x float> } %127, 1, !dbg !5547
  store <2 x float> %130, ptr %129, align 4, !dbg !5547
  %131 = load i32, ptr %34, align 4, !dbg !5577
  %132 = sext i32 %131 to i64, !dbg !5578
  %133 = getelementptr inbounds [1 x %struct.sse_f], ptr %75, i64 0, i64 %132, !dbg !5578
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %133, ptr align 4 %35, i64 16, i1 false), !dbg !5579
  %134 = load i32, ptr %34, align 4, !dbg !5580
  %135 = add nsw i32 %134, 1, !dbg !5580
  store i32 %135, ptr %34, align 4, !dbg !5580
  br label %76, !dbg !5581, !llvm.loop !5582

136:                                              ; preds = %76
  %137 = load { <2 x float>, <2 x float> }, ptr %38, align 4, !dbg !5584
  %138 = getelementptr inbounds %"class.RTTL::RTVec_t", ptr %65, i32 0, i32 0, !dbg !5585
  %139 = getelementptr inbounds %"struct.RTTL::RTData_t", ptr %138, i32 0, i32 0, !dbg !5585
  %140 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %139, i32 0, i32 0, !dbg !5585
  %141 = extractvalue { <2 x float>, <2 x float> } %137, 0, !dbg !5585
  store <2 x float> %141, ptr %140, align 4, !dbg !5585
  %142 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %139, i32 0, i32 1, !dbg !5585
  %143 = extractvalue { <2 x float>, <2 x float> } %137, 1, !dbg !5585
  store <2 x float> %143, ptr %142, align 4, !dbg !5585
  %144 = getelementptr inbounds %"class.RTTL::RTBox_t", ptr %0, i32 0, i32 0, !dbg !5586
  store ptr %144, ptr %55, align 8
  call void @llvm.dbg.declare(metadata ptr %55, metadata !5350, metadata !DIExpression()), !dbg !5587
  store ptr %65, ptr %56, align 8
  call void @llvm.dbg.declare(metadata ptr %56, metadata !5354, metadata !DIExpression()), !dbg !5589
  %145 = load ptr, ptr %55, align 8
  call void @llvm.dbg.declare(metadata ptr %57, metadata !5356, metadata !DIExpression()), !dbg !5590
  %146 = call noundef nonnull align 4 dereferenceable(16) ptr @_ZN4RTTL7RTVec_tILi1E5sse_fLi0EEcvRNS_8RTData_tILi1ES1_Li0EEEEv(ptr noundef nonnull align 4 dereferenceable(16) %145), !dbg !5591
  store ptr %146, ptr %57, align 8, !dbg !5590
  call void @llvm.dbg.declare(metadata ptr %58, metadata !5359, metadata !DIExpression()), !dbg !5592
  %147 = load ptr, ptr %56, align 8, !dbg !5593
  %148 = call noundef nonnull align 4 dereferenceable(16) ptr @_ZNK4RTTL7RTVec_tILi1E5sse_fLi0EEcvRKNS_8RTData_tILi1ES1_Li0EEEEv(ptr noundef nonnull align 4 dereferenceable(16) %147), !dbg !5593
  store ptr %148, ptr %58, align 8, !dbg !5592
  %149 = load ptr, ptr %57, align 8, !dbg !5594
  %150 = load ptr, ptr %58, align 8, !dbg !5595
  store ptr %149, ptr %51, align 8
  call void @llvm.dbg.declare(metadata ptr %51, metadata !5364, metadata !DIExpression()), !dbg !5596
  store ptr %150, ptr %52, align 8
  call void @llvm.dbg.declare(metadata ptr %52, metadata !5373, metadata !DIExpression()), !dbg !5598
  %151 = load ptr, ptr %51, align 8
  %152 = call noundef i32 @_ZN4RTTL8RTData_tILi1E5sse_fLi0EE9nElementsEv(), !dbg !5599
  %153 = load ptr, ptr %52, align 8, !dbg !5599
  %154 = call noundef i32 @_ZN4RTTL8RTData_tILi1E5sse_fLi0EE9nElementsEv(), !dbg !5599
  %155 = icmp sle i32 %152, %154, !dbg !5599
  br i1 %155, label %156, label %157, !dbg !5599

156:                                              ; preds = %136
  call void @llvm.dbg.declare(metadata ptr %53, metadata !5376, metadata !DIExpression()), !dbg !5600
  store i32 0, ptr %53, align 4, !dbg !5600
  br label %158, !dbg !5601

157:                                              ; preds = %136
  call void @__assert_fail(ptr noundef @.str.7, ptr noundef @.str.8, i32 noundef 44, ptr noundef @__PRETTY_FUNCTION__._ZN4RTTL8RTData_tILi1E5sse_fLi0EE6assignILi1ES1_Li0EEEvRKNS0_IXT_ET0_XT1_EEE) #17, !dbg !5599
  unreachable, !dbg !5599

158:                                              ; preds = %161, %156
  %159 = load i32, ptr %53, align 4, !dbg !5602
  %160 = icmp slt i32 %159, 1, !dbg !5603
  br i1 %160, label %161, label %177, !dbg !5604

161:                                              ; preds = %158
  %162 = load ptr, ptr %52, align 8, !dbg !5605
  %163 = load i32, ptr %53, align 4, !dbg !5606
  store ptr %162, ptr %49, align 8
  call void @llvm.dbg.declare(metadata ptr %49, metadata !5321, metadata !DIExpression()), !dbg !5607
  store i32 %163, ptr %50, align 4
  call void @llvm.dbg.declare(metadata ptr %50, metadata !5326, metadata !DIExpression()), !dbg !5609
  %164 = load ptr, ptr %49, align 8
  %165 = load i32, ptr %50, align 4, !dbg !5610
  %166 = sext i32 %165 to i64, !dbg !5611
  %167 = getelementptr inbounds [1 x %struct.sse_f], ptr %164, i64 0, i64 %166, !dbg !5611
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %48, ptr align 4 %167, i64 16, i1 false), !dbg !5611
  %168 = load { <2 x float>, <2 x float> }, ptr %48, align 4, !dbg !5612
  %169 = extractvalue { <2 x float>, <2 x float> } %168, 0, !dbg !5605
  store <2 x float> %169, ptr %54, align 4, !dbg !5605
  %170 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %54, i32 0, i32 1, !dbg !5605
  %171 = extractvalue { <2 x float>, <2 x float> } %168, 1, !dbg !5605
  store <2 x float> %171, ptr %170, align 4, !dbg !5605
  %172 = load i32, ptr %53, align 4, !dbg !5613
  %173 = sext i32 %172 to i64, !dbg !5614
  %174 = getelementptr inbounds [1 x %struct.sse_f], ptr %151, i64 0, i64 %173, !dbg !5614
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %174, ptr align 4 %54, i64 16, i1 false), !dbg !5615
  %175 = load i32, ptr %53, align 4, !dbg !5616
  %176 = add nsw i32 %175, 1, !dbg !5616
  store i32 %176, ptr %53, align 4, !dbg !5616
  br label %158, !dbg !5617, !llvm.loop !5618

177:                                              ; preds = %158
  %178 = getelementptr inbounds %"class.RTTL::RTBox_t", ptr %67, i32 0, i32 0, !dbg !5620
  %179 = getelementptr inbounds %"class.RTTL::RTBox_t", ptr %67, i32 0, i32 1, !dbg !5621
  store ptr %178, ptr %20, align 8
  call void @llvm.dbg.declare(metadata ptr %20, metadata !5622, metadata !DIExpression()), !dbg !5624
  store ptr %179, ptr %21, align 8
  call void @llvm.dbg.declare(metadata ptr %21, metadata !5626, metadata !DIExpression()), !dbg !5627
  call void @llvm.dbg.declare(metadata ptr %19, metadata !5628, metadata !DIExpression()), !dbg !5629
  call void @_ZN4RTTL7RTVec_tILi1E5sse_fLi0EEC2Ev(ptr noundef nonnull align 4 dereferenceable(16) %19), !dbg !5629
  %180 = call noundef nonnull align 4 dereferenceable(16) ptr @_ZN4RTTL7RTVec_tILi1E5sse_fLi0EE5arrayEv(ptr noundef nonnull align 4 dereferenceable(16) %19), !dbg !5630
  %181 = load ptr, ptr %20, align 8, !dbg !5631
  %182 = call noundef nonnull align 4 dereferenceable(16) ptr @_ZNK4RTTL7RTVec_tILi1E5sse_fLi0EE5arrayEv(ptr noundef nonnull align 4 dereferenceable(16) %181), !dbg !5632
  %183 = load ptr, ptr %21, align 8, !dbg !5633
  %184 = call noundef nonnull align 4 dereferenceable(16) ptr @_ZNK4RTTL7RTVec_tILi1E5sse_fLi0EE5arrayEv(ptr noundef nonnull align 4 dereferenceable(16) %183), !dbg !5634
  store ptr %180, ptr %12, align 8
  call void @llvm.dbg.declare(metadata ptr %12, metadata !5635, metadata !DIExpression()), !dbg !5637
  store ptr %182, ptr %13, align 8
  call void @llvm.dbg.declare(metadata ptr %13, metadata !5639, metadata !DIExpression()), !dbg !5640
  store ptr %184, ptr %14, align 8
  call void @llvm.dbg.declare(metadata ptr %14, metadata !5641, metadata !DIExpression()), !dbg !5642
  %185 = load ptr, ptr %12, align 8
  call void @llvm.dbg.declare(metadata ptr %15, metadata !5643, metadata !DIExpression()), !dbg !5645
  store i32 0, ptr %15, align 4, !dbg !5645
  br label %186, !dbg !5646

186:                                              ; preds = %232, %177
  %187 = load i32, ptr %15, align 4, !dbg !5647
  %188 = icmp slt i32 %187, 1, !dbg !5649
  br i1 %188, label %189, label %246, !dbg !5650

189:                                              ; preds = %186
  %190 = load ptr, ptr %13, align 8, !dbg !5651
  %191 = load i32, ptr %15, align 4, !dbg !5652
  %192 = sext i32 %191 to i64, !dbg !5651
  %193 = getelementptr inbounds [1 x %struct.sse_f], ptr %190, i64 0, i64 %192, !dbg !5651
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %17, ptr align 4 %193, i64 16, i1 false), !dbg !5651
  %194 = load ptr, ptr %14, align 8, !dbg !5653
  %195 = load i32, ptr %15, align 4, !dbg !5654
  %196 = sext i32 %195 to i64, !dbg !5653
  %197 = getelementptr inbounds [1 x %struct.sse_f], ptr %194, i64 0, i64 %196, !dbg !5653
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %18, ptr align 4 %197, i64 16, i1 false), !dbg !5653
  %198 = load <2 x float>, ptr %17, align 4, !dbg !5655
  %199 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %17, i32 0, i32 1, !dbg !5655
  %200 = load <2 x float>, ptr %199, align 4, !dbg !5655
  %201 = load <2 x float>, ptr %18, align 4, !dbg !5655
  %202 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %18, i32 0, i32 1, !dbg !5655
  %203 = load <2 x float>, ptr %202, align 4, !dbg !5655
  store <2 x float> %198, ptr %8, align 4
  %204 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %8, i32 0, i32 1
  store <2 x float> %200, ptr %204, align 4
  store <2 x float> %201, ptr %9, align 4
  %205 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %9, i32 0, i32 1
  store <2 x float> %203, ptr %205, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2417, metadata !DIExpression()), !dbg !5656
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2421, metadata !DIExpression()), !dbg !5658
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %10, ptr align 4 %8, i64 16, i1 false), !dbg !5659
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %11, ptr align 4 %9, i64 16, i1 false), !dbg !5660
  %206 = load <2 x float>, ptr %10, align 4, !dbg !5661
  %207 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %10, i32 0, i32 1, !dbg !5661
  %208 = load <2 x float>, ptr %207, align 4, !dbg !5661
  %209 = load <2 x float>, ptr %11, align 4, !dbg !5661
  %210 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %11, i32 0, i32 1, !dbg !5661
  %211 = load <2 x float>, ptr %210, align 4, !dbg !5661
  store <2 x float> %206, ptr %4, align 4
  %212 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %4, i32 0, i32 1
  store <2 x float> %208, ptr %212, align 4
  store <2 x float> %209, ptr %5, align 4
  %213 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %5, i32 0, i32 1
  store <2 x float> %211, ptr %213, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2426, metadata !DIExpression()), !dbg !5662
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2430, metadata !DIExpression()), !dbg !5664
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2432, metadata !DIExpression()), !dbg !5665
  call void @_ZN5sse_fC2Ev(ptr noundef nonnull align 4 dereferenceable(16) %3), !dbg !5665
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2434, metadata !DIExpression()), !dbg !5666
  store i32 0, ptr %6, align 4, !dbg !5666
  br label %214, !dbg !5667

214:                                              ; preds = %217, %189
  %215 = load i32, ptr %6, align 4, !dbg !5668
  %216 = icmp slt i32 %215, 4, !dbg !5669
  br i1 %216, label %217, label %232, !dbg !5670

217:                                              ; preds = %214
  %218 = load i32, ptr %6, align 4, !dbg !5671
  %219 = sext i32 %218 to i64, !dbg !5672
  %220 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 %219, !dbg !5672
  %221 = load float, ptr %220, align 4, !dbg !5672
  %222 = load i32, ptr %6, align 4, !dbg !5673
  %223 = sext i32 %222 to i64, !dbg !5674
  %224 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 %223, !dbg !5674
  %225 = load float, ptr %224, align 4, !dbg !5674
  %226 = fadd float %221, %225, !dbg !5675
  %227 = load i32, ptr %6, align 4, !dbg !5676
  %228 = sext i32 %227 to i64, !dbg !5677
  %229 = getelementptr inbounds [4 x float], ptr %3, i64 0, i64 %228, !dbg !5677
  store float %226, ptr %229, align 4, !dbg !5678
  %230 = load i32, ptr %6, align 4, !dbg !5679
  %231 = add nsw i32 %230, 1, !dbg !5679
  store i32 %231, ptr %6, align 4, !dbg !5679
  br label %214, !dbg !5680, !llvm.loop !5681

232:                                              ; preds = %214
  %233 = load { <2 x float>, <2 x float> }, ptr %3, align 4, !dbg !5683
  %234 = extractvalue { <2 x float>, <2 x float> } %233, 0, !dbg !5661
  store <2 x float> %234, ptr %7, align 4, !dbg !5661
  %235 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %7, i32 0, i32 1, !dbg !5661
  %236 = extractvalue { <2 x float>, <2 x float> } %233, 1, !dbg !5661
  store <2 x float> %236, ptr %235, align 4, !dbg !5661
  %237 = load { <2 x float>, <2 x float> }, ptr %7, align 4, !dbg !5684
  %238 = extractvalue { <2 x float>, <2 x float> } %237, 0, !dbg !5655
  store <2 x float> %238, ptr %16, align 4, !dbg !5655
  %239 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %16, i32 0, i32 1, !dbg !5655
  %240 = extractvalue { <2 x float>, <2 x float> } %237, 1, !dbg !5655
  store <2 x float> %240, ptr %239, align 4, !dbg !5655
  %241 = load i32, ptr %15, align 4, !dbg !5685
  %242 = sext i32 %241 to i64, !dbg !5686
  %243 = getelementptr inbounds [1 x %struct.sse_f], ptr %185, i64 0, i64 %242, !dbg !5686
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %243, ptr align 4 %16, i64 16, i1 false), !dbg !5687
  %244 = load i32, ptr %15, align 4, !dbg !5688
  %245 = add nsw i32 %244, 1, !dbg !5688
  store i32 %245, ptr %15, align 4, !dbg !5688
  br label %186, !dbg !5689, !llvm.loop !5690

246:                                              ; preds = %186
  %247 = load { <2 x float>, <2 x float> }, ptr %19, align 4, !dbg !5692
  %248 = getelementptr inbounds %"class.RTTL::RTVec_t", ptr %66, i32 0, i32 0, !dbg !5693
  %249 = getelementptr inbounds %"struct.RTTL::RTData_t", ptr %248, i32 0, i32 0, !dbg !5693
  %250 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %249, i32 0, i32 0, !dbg !5693
  %251 = extractvalue { <2 x float>, <2 x float> } %247, 0, !dbg !5693
  store <2 x float> %251, ptr %250, align 4, !dbg !5693
  %252 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %249, i32 0, i32 1, !dbg !5693
  %253 = extractvalue { <2 x float>, <2 x float> } %247, 1, !dbg !5693
  store <2 x float> %253, ptr %252, align 4, !dbg !5693
  %254 = getelementptr inbounds %"class.RTTL::RTBox_t", ptr %0, i32 0, i32 1, !dbg !5694
  store ptr %254, ptr %59, align 8
  call void @llvm.dbg.declare(metadata ptr %59, metadata !5350, metadata !DIExpression()), !dbg !5695
  store ptr %66, ptr %60, align 8
  call void @llvm.dbg.declare(metadata ptr %60, metadata !5354, metadata !DIExpression()), !dbg !5697
  %255 = load ptr, ptr %59, align 8
  call void @llvm.dbg.declare(metadata ptr %61, metadata !5356, metadata !DIExpression()), !dbg !5698
  %256 = call noundef nonnull align 4 dereferenceable(16) ptr @_ZN4RTTL7RTVec_tILi1E5sse_fLi0EEcvRNS_8RTData_tILi1ES1_Li0EEEEv(ptr noundef nonnull align 4 dereferenceable(16) %255), !dbg !5699
  store ptr %256, ptr %61, align 8, !dbg !5698
  call void @llvm.dbg.declare(metadata ptr %62, metadata !5359, metadata !DIExpression()), !dbg !5700
  %257 = load ptr, ptr %60, align 8, !dbg !5701
  %258 = call noundef nonnull align 4 dereferenceable(16) ptr @_ZNK4RTTL7RTVec_tILi1E5sse_fLi0EEcvRKNS_8RTData_tILi1ES1_Li0EEEEv(ptr noundef nonnull align 4 dereferenceable(16) %257), !dbg !5701
  store ptr %258, ptr %62, align 8, !dbg !5700
  %259 = load ptr, ptr %61, align 8, !dbg !5702
  %260 = load ptr, ptr %62, align 8, !dbg !5703
  store ptr %259, ptr %44, align 8
  call void @llvm.dbg.declare(metadata ptr %44, metadata !5364, metadata !DIExpression()), !dbg !5704
  store ptr %260, ptr %45, align 8
  call void @llvm.dbg.declare(metadata ptr %45, metadata !5373, metadata !DIExpression()), !dbg !5706
  %261 = load ptr, ptr %44, align 8
  %262 = call noundef i32 @_ZN4RTTL8RTData_tILi1E5sse_fLi0EE9nElementsEv(), !dbg !5707
  %263 = load ptr, ptr %45, align 8, !dbg !5707
  %264 = call noundef i32 @_ZN4RTTL8RTData_tILi1E5sse_fLi0EE9nElementsEv(), !dbg !5707
  %265 = icmp sle i32 %262, %264, !dbg !5707
  br i1 %265, label %266, label %267, !dbg !5707

266:                                              ; preds = %246
  call void @llvm.dbg.declare(metadata ptr %46, metadata !5376, metadata !DIExpression()), !dbg !5708
  store i32 0, ptr %46, align 4, !dbg !5708
  br label %268, !dbg !5709

267:                                              ; preds = %246
  call void @__assert_fail(ptr noundef @.str.7, ptr noundef @.str.8, i32 noundef 44, ptr noundef @__PRETTY_FUNCTION__._ZN4RTTL8RTData_tILi1E5sse_fLi0EE6assignILi1ES1_Li0EEEvRKNS0_IXT_ET0_XT1_EEE) #17, !dbg !5707
  unreachable, !dbg !5707

268:                                              ; preds = %271, %266
  %269 = load i32, ptr %46, align 4, !dbg !5710
  %270 = icmp slt i32 %269, 1, !dbg !5711
  br i1 %270, label %271, label %287, !dbg !5712

271:                                              ; preds = %268
  %272 = load ptr, ptr %45, align 8, !dbg !5713
  %273 = load i32, ptr %46, align 4, !dbg !5714
  store ptr %272, ptr %42, align 8
  call void @llvm.dbg.declare(metadata ptr %42, metadata !5321, metadata !DIExpression()), !dbg !5715
  store i32 %273, ptr %43, align 4
  call void @llvm.dbg.declare(metadata ptr %43, metadata !5326, metadata !DIExpression()), !dbg !5717
  %274 = load ptr, ptr %42, align 8
  %275 = load i32, ptr %43, align 4, !dbg !5718
  %276 = sext i32 %275 to i64, !dbg !5719
  %277 = getelementptr inbounds [1 x %struct.sse_f], ptr %274, i64 0, i64 %276, !dbg !5719
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %41, ptr align 4 %277, i64 16, i1 false), !dbg !5719
  %278 = load { <2 x float>, <2 x float> }, ptr %41, align 4, !dbg !5720
  %279 = extractvalue { <2 x float>, <2 x float> } %278, 0, !dbg !5713
  store <2 x float> %279, ptr %47, align 4, !dbg !5713
  %280 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %47, i32 0, i32 1, !dbg !5713
  %281 = extractvalue { <2 x float>, <2 x float> } %278, 1, !dbg !5713
  store <2 x float> %281, ptr %280, align 4, !dbg !5713
  %282 = load i32, ptr %46, align 4, !dbg !5721
  %283 = sext i32 %282 to i64, !dbg !5722
  %284 = getelementptr inbounds [1 x %struct.sse_f], ptr %261, i64 0, i64 %283, !dbg !5722
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %284, ptr align 4 %47, i64 16, i1 false), !dbg !5723
  %285 = load i32, ptr %46, align 4, !dbg !5724
  %286 = add nsw i32 %285, 1, !dbg !5724
  store i32 %286, ptr %46, align 4, !dbg !5724
  br label %268, !dbg !5725, !llvm.loop !5726

287:                                              ; preds = %268
  ret void, !dbg !5728
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN5sse_iC2Ev(ptr noundef nonnull align 4 dereferenceable(16) %0) unnamed_addr #13 comdat align 2 !dbg !5729 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !5730, metadata !DIExpression()), !dbg !5732
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sse_i, ptr %3, i32 0, i32 0, !dbg !5733
  ret void, !dbg !5734
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #2

; Function Attrs: nounwind allocsize(1)
declare noalias ptr @memalign(i64 noundef, i64 noundef) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_OnDemandBuilder.cxx() #0 section ".text.startup" !dbg !5735 {
  call void @__cxx_global_var_init(), !dbg !5737
  call void @__cxx_global_var_init.1(), !dbg !5737
  call void @__cxx_global_var_init.2(), !dbg !5737
  call void @__cxx_global_var_init.3(), !dbg !5737
  ret void
}

attributes #0 = { noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { nounwind allocsize(1) }
attributes #17 = { noreturn nounwind }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!1872, !1873, !1874, !1875, !1876, !1877, !1878}
!llvm.ident = !{!1879}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__ioinit", linkageName: "_ZStL8__ioinit", scope: !2, file: !3, line: 74, type: !4, isLocal: true, isDefinition: true)
!2 = !DINamespace(name: "std", scope: null)
!3 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/iostream", directory: "")
!4 = !DICompositeType(tag: DW_TAG_class_type, name: "Init", scope: !6, file: !5, line: 626, size: 8, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt8ios_base4InitE")
!5 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/ios_base.h", directory: "")
!6 = !DICompositeType(tag: DW_TAG_class_type, name: "ios_base", scope: !2, file: !5, line: 228, size: 1728, flags: DIFlagFwdDecl | DIFlagNonTrivial)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "maxFloat", linkageName: "_ZL8maxFloat", scope: !9, file: !1871, line: 38, type: !373, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !10, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !11, globals: !568, imports: !665, splitDebugInlining: false, nameTableKind: None)
!10 = !DIFile(filename: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src/RTTL/BVH/Builder/OnDemandBuilder.cxx", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src/build/RTTL", checksumkind: CSK_MD5, checksum: "f4935d4fac11bc78298cc7adab27ac8f")
!11 = !{!12, !13, !14, !16, !17, !21, !33, !34, !37, !22, !362, !43, !46, !50, !55, !38, !417, !530}
!12 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!16 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DICompositeType(tag: DW_TAG_structure_type, name: "BVHExtData", scope: !20, file: !19, line: 147, size: 32, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN4RTTL10BVHExtDataE")
!19 = !DIFile(filename: "RTTL/BVH/Builder/../BVH.hxx", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src", checksumkind: CSK_MD5, checksum: "c3a2af3458e408a897501c5d46fd95a1")
!20 = !DINamespace(name: "RTTL", scope: null)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sse_f", file: !23, line: 20, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !24, identifier: "_ZTS5sse_f")
!23 = !DIFile(filename: "RTTL/common/RTEmulatedSSE.hxx", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src", checksumkind: CSK_MD5, checksum: "899b754f585bbc37282aa5883c939129")
!24 = !{!25, !29}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !22, file: !23, line: 23, baseType: !26, size: 128)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 128, elements: !27)
!27 = !{!28}
!28 = !DISubrange(count: 4)
!29 = !DISubprogram(name: "sse_f", scope: !22, file: !23, line: 21, type: !30, scopeLine: 21, flags: DIFlagPrototyped, spFlags: 0)
!30 = !DISubroutineType(types: !31)
!31 = !{null, !32}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "RTVec3f", scope: !20, file: !35, line: 269, baseType: !36)
!35 = !DIFile(filename: "RTTL/common/RTVec.hxx", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src", checksumkind: CSK_MD5, checksum: "adfbd7ae4dab54b31af1e64824b8abcb")
!36 = !DICompositeType(tag: DW_TAG_class_type, name: "RTVec_t<3, float, 0>", scope: !20, file: !35, line: 48, size: 96, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN4RTTL7RTVec_tILi3EfLi0EEE")
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "CentroidDiffAABB", scope: !20, file: !19, line: 236, size: 256, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !39, identifier: "_ZTSN4RTTL16CentroidDiffAABBE")
!39 = !{!40, !341, !345, !350, !353, !354, !359}
!40 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !38, baseType: !41, flags: DIFlagPublic, extraData: i32 0)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "RTBoxSSE", file: !42, line: 393, baseType: !43)
!42 = !DIFile(filename: "RTTL/BVH/Builder/../../common/RTBox.hxx", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src", checksumkind: CSK_MD5, checksum: "a4a4497a4fc18999a587672c7ed0e869")
!43 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "RTBox3a", scope: !20, file: !42, line: 285, size: 256, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !44, identifier: "_ZTSN4RTTL7RTBox3aE")
!44 = !{!45, !314, !320, !321, !324, !325, !329, !330, !334, !338, !339, !340}
!45 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !43, baseType: !46, flags: DIFlagPublic, extraData: i32 0)
!46 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "RTBox_t<1, sse_f, 0>", scope: !20, file: !42, line: 8, size: 256, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !47, templateParams: !116, identifier: "_ZTSN4RTTL7RTBox_tILi1E5sse_fLi0EEE")
!47 = !{!48, !209, !210, !214, !219, !223, !226, !231, !232, !233, !237, !238, !241, !242, !243, !246, !247, !248, !251, !252, !253, !254, !255, !258, !261, !262, !265, !268, !271, !272, !273, !276, !277, !278, !281, !284, !287, !288, !289, !290, !291, !295, !299, !302, !303, !304, !307, !308, !309, !312, !313}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "m_min", scope: !46, file: !42, line: 253, baseType: !49, size: 128, flags: DIFlagPublic)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "RTVec", scope: !46, file: !42, line: 10, baseType: !50, flags: DIFlagPublic)
!50 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "RTVec_t<1, sse_f, 0>", scope: !20, file: !35, line: 37, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !51, templateParams: !116, identifier: "_ZTSN4RTTL7RTVec_tILi1E5sse_fLi0EEE")
!51 = !{!52, !120, !124, !127, !130, !131, !132, !133, !138, !141, !142, !143, !144, !145, !146, !147, !148, !149, !153, !156, !157, !158, !161, !162, !163, !164, !167, !168, !169, !170, !173, !176, !179, !182, !186, !191, !192, !193, !196, !197, !198, !199, !200, !201, !202, !203, !206, !207, !208}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "t", scope: !50, file: !53, line: 457, baseType: !54, size: 128, flags: DIFlagProtected)
!53 = !DIFile(filename: "RTTL/common/RTVecBody.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src", checksumkind: CSK_MD5, checksum: "b80a89a3623c8e3d3f09e41d609e754a")
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "DataArray", scope: !50, file: !53, line: 26, baseType: !55, flags: DIFlagPublic)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RTData_t<1, sse_f, 0>", scope: !20, file: !56, line: 22, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !57, templateParams: !116, identifier: "_ZTSN4RTTL8RTData_tILi1E5sse_fLi0EEE")
!56 = !DIFile(filename: "RTTL/common/RTData.hxx", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src", checksumkind: CSK_MD5, checksum: "f4e0c70e47861859820b913e006060bd")
!57 = !{!58, !62, !67, !73, !77, !81, !84, !88, !89, !90, !91, !92, !93, !94, !95, !98, !99, !100, !101, !104, !105, !106, !107, !110, !111, !112, !113}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "t", scope: !55, file: !56, line: 178, baseType: !59, size: 128, flags: DIFlagProtected)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 128, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 1)
!62 = !DISubprogram(name: "alignment", linkageName: "_ZNK4RTTL8RTData_tILi1E5sse_fLi0EE9alignmentEv", scope: !55, file: !56, line: 25, type: !63, scopeLine: 25, flags: DIFlagPrototyped, spFlags: 0)
!63 = !DISubroutineType(types: !64)
!64 = !{!13, !65}
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!66 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !55)
!67 = !DISubprogram(name: "assignDataTypeValue", linkageName: "_ZN4RTTL8RTData_tILi1E5sse_fLi0EE19assignDataTypeValueERKS1_", scope: !55, file: !56, line: 28, type: !68, scopeLine: 28, flags: DIFlagPrototyped, spFlags: 0)
!68 = !DISubroutineType(types: !69)
!69 = !{null, !70, !71}
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!71 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!73 = !DISubprogram(name: "assignDataTypeArray", linkageName: "_ZN4RTTL8RTData_tILi1E5sse_fLi0EE19assignDataTypeArrayEPKS1_", scope: !55, file: !56, line: 32, type: !74, scopeLine: 32, flags: DIFlagPrototyped, spFlags: 0)
!74 = !DISubroutineType(types: !75)
!75 = !{null, !70, !76}
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!77 = !DISubprogram(name: "operator[]", linkageName: "_ZN4RTTL8RTData_tILi1E5sse_fLi0EEixEi", scope: !55, file: !56, line: 49, type: !78, scopeLine: 49, flags: DIFlagPrototyped, spFlags: 0)
!78 = !DISubroutineType(types: !79)
!79 = !{!80, !70, !13}
!80 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !22, size: 64)
!81 = !DISubprogram(name: "operator[]", linkageName: "_ZNK4RTTL8RTData_tILi1E5sse_fLi0EEixEi", scope: !55, file: !56, line: 52, type: !82, scopeLine: 52, flags: DIFlagPrototyped, spFlags: 0)
!82 = !DISubroutineType(types: !83)
!83 = !{!22, !65, !13}
!84 = !DISubprogram(name: "operator+=", linkageName: "_ZN4RTTL8RTData_tILi1E5sse_fLi0EEpLERKS2_", scope: !55, file: !56, line: 56, type: !85, scopeLine: 56, flags: DIFlagPrototyped, spFlags: 0)
!85 = !DISubroutineType(types: !86)
!86 = !{null, !70, !87}
!87 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !66, size: 64)
!88 = !DISubprogram(name: "operator-=", linkageName: "_ZN4RTTL8RTData_tILi1E5sse_fLi0EEmIERKS2_", scope: !55, file: !56, line: 61, type: !85, scopeLine: 61, flags: DIFlagPrototyped, spFlags: 0)
!89 = !DISubprogram(name: "operator*=", linkageName: "_ZN4RTTL8RTData_tILi1E5sse_fLi0EEmLERKS2_", scope: !55, file: !56, line: 66, type: !85, scopeLine: 66, flags: DIFlagPrototyped, spFlags: 0)
!90 = !DISubprogram(name: "operator/=", linkageName: "_ZN4RTTL8RTData_tILi1E5sse_fLi0EEdVERKS2_", scope: !55, file: !56, line: 71, type: !85, scopeLine: 71, flags: DIFlagPrototyped, spFlags: 0)
!91 = !DISubprogram(name: "operator+=", linkageName: "_ZN4RTTL8RTData_tILi1E5sse_fLi0EEpLERKS1_", scope: !55, file: !56, line: 76, type: !68, scopeLine: 76, flags: DIFlagPrototyped, spFlags: 0)
!92 = !DISubprogram(name: "operator-=", linkageName: "_ZN4RTTL8RTData_tILi1E5sse_fLi0EEmIERKS1_", scope: !55, file: !56, line: 81, type: !68, scopeLine: 81, flags: DIFlagPrototyped, spFlags: 0)
!93 = !DISubprogram(name: "operator*=", linkageName: "_ZN4RTTL8RTData_tILi1E5sse_fLi0EEmLERKS1_", scope: !55, file: !56, line: 86, type: !68, scopeLine: 86, flags: DIFlagPrototyped, spFlags: 0)
!94 = !DISubprogram(name: "operator/=", linkageName: "_ZN4RTTL8RTData_tILi1E5sse_fLi0EEdVERKS1_", scope: !55, file: !56, line: 91, type: !68, scopeLine: 91, flags: DIFlagPrototyped, spFlags: 0)
!95 = !DISubprogram(name: "add", linkageName: "_ZN4RTTL8RTData_tILi1E5sse_fLi0EE3addERKS2_S4_", scope: !55, file: !56, line: 96, type: !96, scopeLine: 96, flags: DIFlagPrototyped, spFlags: 0)
!96 = !DISubroutineType(types: !97)
!97 = !{null, !70, !87, !87}
!98 = !DISubprogram(name: "subtract", linkageName: "_ZN4RTTL8RTData_tILi1E5sse_fLi0EE8subtractERKS2_S4_", scope: !55, file: !56, line: 100, type: !96, scopeLine: 100, flags: DIFlagPrototyped, spFlags: 0)
!99 = !DISubprogram(name: "multiply", linkageName: "_ZN4RTTL8RTData_tILi1E5sse_fLi0EE8multiplyERKS2_S4_", scope: !55, file: !56, line: 104, type: !96, scopeLine: 104, flags: DIFlagPrototyped, spFlags: 0)
!100 = !DISubprogram(name: "divide", linkageName: "_ZN4RTTL8RTData_tILi1E5sse_fLi0EE6divideERKS2_S4_", scope: !55, file: !56, line: 108, type: !96, scopeLine: 108, flags: DIFlagPrototyped, spFlags: 0)
!101 = !DISubprogram(name: "add", linkageName: "_ZN4RTTL8RTData_tILi1E5sse_fLi0EE3addERKS2_PKS1_", scope: !55, file: !56, line: 113, type: !102, scopeLine: 113, flags: DIFlagPrototyped, spFlags: 0)
!102 = !DISubroutineType(types: !103)
!103 = !{null, !70, !87, !76}
!104 = !DISubprogram(name: "subtract", linkageName: "_ZN4RTTL8RTData_tILi1E5sse_fLi0EE8subtractERKS2_PKS1_", scope: !55, file: !56, line: 117, type: !102, scopeLine: 117, flags: DIFlagPrototyped, spFlags: 0)
!105 = !DISubprogram(name: "multiply", linkageName: "_ZN4RTTL8RTData_tILi1E5sse_fLi0EE8multiplyERKS2_PKS1_", scope: !55, file: !56, line: 121, type: !102, scopeLine: 121, flags: DIFlagPrototyped, spFlags: 0)
!106 = !DISubprogram(name: "divide", linkageName: "_ZN4RTTL8RTData_tILi1E5sse_fLi0EE6divideERKS2_PKS1_", scope: !55, file: !56, line: 125, type: !102, scopeLine: 125, flags: DIFlagPrototyped, spFlags: 0)
!107 = !DISubprogram(name: "add", linkageName: "_ZN4RTTL8RTData_tILi1E5sse_fLi0EE3addEPKS1_RKS2_", scope: !55, file: !56, line: 130, type: !108, scopeLine: 130, flags: DIFlagPrototyped, spFlags: 0)
!108 = !DISubroutineType(types: !109)
!109 = !{null, !70, !76, !87}
!110 = !DISubprogram(name: "subtract", linkageName: "_ZN4RTTL8RTData_tILi1E5sse_fLi0EE8subtractEPKS1_RKS2_", scope: !55, file: !56, line: 133, type: !108, scopeLine: 133, flags: DIFlagPrototyped, spFlags: 0)
!111 = !DISubprogram(name: "multiply", linkageName: "_ZN4RTTL8RTData_tILi1E5sse_fLi0EE8multiplyEPKS1_RKS2_", scope: !55, file: !56, line: 136, type: !108, scopeLine: 136, flags: DIFlagPrototyped, spFlags: 0)
!112 = !DISubprogram(name: "divide", linkageName: "_ZN4RTTL8RTData_tILi1E5sse_fLi0EE6divideEPKS1_RKS2_", scope: !55, file: !56, line: 139, type: !108, scopeLine: 139, flags: DIFlagPrototyped, spFlags: 0)
!113 = !DISubprogram(name: "nElements", linkageName: "_ZN4RTTL8RTData_tILi1E5sse_fLi0EE9nElementsEv", scope: !55, file: !56, line: 175, type: !114, scopeLine: 175, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!114 = !DISubroutineType(types: !115)
!115 = !{!13}
!116 = !{!117, !118, !119}
!117 = !DITemplateValueParameter(name: "N", type: !13, value: i32 1)
!118 = !DITemplateTypeParameter(name: "DataType", type: !22)
!119 = !DITemplateValueParameter(name: "align", type: !13, defaulted: true, value: i32 0)
!120 = !DISubprogram(name: "RTVec_t", scope: !50, file: !53, line: 29, type: !121, scopeLine: 29, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!121 = !DISubroutineType(types: !122)
!122 = !{null, !123}
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!124 = !DISubprogram(name: "RTVec_t", scope: !50, file: !53, line: 34, type: !125, scopeLine: 34, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!125 = !DISubroutineType(types: !126)
!126 = !{null, !123, !71}
!127 = !DISubprogram(name: "RTVec_t", scope: !50, file: !53, line: 50, type: !128, scopeLine: 50, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!128 = !DISubroutineType(types: !129)
!129 = !{null, !123, !76}
!130 = !DISubprogram(name: "nElements", linkageName: "_ZN4RTTL7RTVec_tILi1E5sse_fLi0EE9nElementsEv", scope: !50, file: !53, line: 56, type: !114, scopeLine: 56, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!131 = !DISubprogram(name: "entrySize", linkageName: "_ZN4RTTL7RTVec_tILi1E5sse_fLi0EE9entrySizeEv", scope: !50, file: !53, line: 57, type: !114, scopeLine: 57, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!132 = !DISubprogram(name: "totalSize", linkageName: "_ZN4RTTL7RTVec_tILi1E5sse_fLi0EE9totalSizeEv", scope: !50, file: !53, line: 58, type: !114, scopeLine: 58, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!133 = !DISubprogram(name: "operator=", linkageName: "_ZN4RTTL7RTVec_tILi1E5sse_fLi0EEaSERKS2_", scope: !50, file: !53, line: 74, type: !134, scopeLine: 74, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!134 = !DISubroutineType(types: !135)
!135 = !{!136, !123, !136}
!136 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!138 = !DISubprogram(name: "operator=", linkageName: "_ZN4RTTL7RTVec_tILi1E5sse_fLi0EEaSERKS1_", scope: !50, file: !53, line: 81, type: !139, scopeLine: 81, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!139 = !DISubroutineType(types: !140)
!140 = !{!136, !123, !71}
!141 = !DISubprogram(name: "operator+=", linkageName: "_ZN4RTTL7RTVec_tILi1E5sse_fLi0EEpLERKS2_", scope: !50, file: !53, line: 87, type: !134, scopeLine: 87, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!142 = !DISubprogram(name: "operator-=", linkageName: "_ZN4RTTL7RTVec_tILi1E5sse_fLi0EEmIERKS2_", scope: !50, file: !53, line: 93, type: !134, scopeLine: 93, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!143 = !DISubprogram(name: "operator*=", linkageName: "_ZN4RTTL7RTVec_tILi1E5sse_fLi0EEmLERKS2_", scope: !50, file: !53, line: 99, type: !134, scopeLine: 99, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!144 = !DISubprogram(name: "operator/=", linkageName: "_ZN4RTTL7RTVec_tILi1E5sse_fLi0EEdVERKS2_", scope: !50, file: !53, line: 105, type: !134, scopeLine: 105, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!145 = !DISubprogram(name: "operator+=", linkageName: "_ZN4RTTL7RTVec_tILi1E5sse_fLi0EEpLERKS1_", scope: !50, file: !53, line: 111, type: !139, scopeLine: 111, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!146 = !DISubprogram(name: "operator-=", linkageName: "_ZN4RTTL7RTVec_tILi1E5sse_fLi0EEmIERKS1_", scope: !50, file: !53, line: 117, type: !139, scopeLine: 117, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!147 = !DISubprogram(name: "operator*=", linkageName: "_ZN4RTTL7RTVec_tILi1E5sse_fLi0EEmLERKS1_", scope: !50, file: !53, line: 123, type: !139, scopeLine: 123, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!148 = !DISubprogram(name: "operator/=", linkageName: "_ZN4RTTL7RTVec_tILi1E5sse_fLi0EEdVERKS1_", scope: !50, file: !53, line: 129, type: !139, scopeLine: 129, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!149 = !DISubprogram(name: "dot", linkageName: "_ZNK4RTTL7RTVec_tILi1E5sse_fLi0EE3dotERKS2_", scope: !50, file: !53, line: 135, type: !150, scopeLine: 135, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!150 = !DISubroutineType(types: !151)
!151 = !{!22, !152, !136}
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!153 = !DISubprogram(name: "lengthSquared", linkageName: "_ZNK4RTTL7RTVec_tILi1E5sse_fLi0EE13lengthSquaredEv", scope: !50, file: !53, line: 145, type: !154, scopeLine: 145, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!154 = !DISubroutineType(types: !155)
!155 = !{!22, !152}
!156 = !DISubprogram(name: "length", linkageName: "_ZNK4RTTL7RTVec_tILi1E5sse_fLi0EE6lengthEv", scope: !50, file: !53, line: 153, type: !154, scopeLine: 153, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!157 = !DISubprogram(name: "normalize", linkageName: "_ZN4RTTL7RTVec_tILi1E5sse_fLi0EE9normalizeEv", scope: !50, file: !53, line: 157, type: !121, scopeLine: 157, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!158 = !DISubprogram(name: "setMin", linkageName: "_ZN4RTTL7RTVec_tILi1E5sse_fLi0EE6setMinERKS2_", scope: !50, file: !53, line: 164, type: !159, scopeLine: 164, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!159 = !DISubroutineType(types: !160)
!160 = !{null, !123, !136}
!161 = !DISubprogram(name: "setMin", linkageName: "_ZN4RTTL7RTVec_tILi1E5sse_fLi0EE6setMinERKS1_", scope: !50, file: !53, line: 169, type: !125, scopeLine: 169, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!162 = !DISubprogram(name: "setMax", linkageName: "_ZN4RTTL7RTVec_tILi1E5sse_fLi0EE6setMaxERKS2_", scope: !50, file: !53, line: 174, type: !159, scopeLine: 174, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!163 = !DISubprogram(name: "setMax", linkageName: "_ZN4RTTL7RTVec_tILi1E5sse_fLi0EE6setMaxERKS1_", scope: !50, file: !53, line: 179, type: !125, scopeLine: 179, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!164 = !DISubprogram(name: "epsilon", linkageName: "_ZN4RTTL7RTVec_tILi1E5sse_fLi0EE7epsilonEv", scope: !50, file: !53, line: 186, type: !165, scopeLine: 186, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!165 = !DISubroutineType(types: !166)
!166 = !{!22}
!167 = !DISubprogram(name: "minValue", linkageName: "_ZN4RTTL7RTVec_tILi1E5sse_fLi0EE8minValueEv", scope: !50, file: !53, line: 187, type: !165, scopeLine: 187, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!168 = !DISubprogram(name: "maxValue", linkageName: "_ZN4RTTL7RTVec_tILi1E5sse_fLi0EE8maxValueEv", scope: !50, file: !53, line: 188, type: !165, scopeLine: 188, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!169 = !DISubprogram(name: "infinity", linkageName: "_ZN4RTTL7RTVec_tILi1E5sse_fLi0EE8infinityEv", scope: !50, file: !53, line: 189, type: !165, scopeLine: 189, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!170 = !DISubprogram(name: "operator[]", linkageName: "_ZN4RTTL7RTVec_tILi1E5sse_fLi0EEixEi", scope: !50, file: !53, line: 349, type: !171, scopeLine: 349, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!171 = !DISubroutineType(types: !172)
!172 = !{!80, !123, !13}
!173 = !DISubprogram(name: "operator[]", linkageName: "_ZNK4RTTL7RTVec_tILi1E5sse_fLi0EEixEi", scope: !50, file: !53, line: 350, type: !174, scopeLine: 350, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!174 = !DISubroutineType(types: !175)
!175 = !{!22, !152, !13}
!176 = !DISubprogram(name: "operator sse_f *", linkageName: "_ZN4RTTL7RTVec_tILi1E5sse_fLi0EEcvPS1_Ev", scope: !50, file: !53, line: 353, type: !177, scopeLine: 353, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!177 = !DISubroutineType(types: !178)
!178 = !{!21, !123}
!179 = !DISubprogram(name: "operator const sse_f *", linkageName: "_ZNK4RTTL7RTVec_tILi1E5sse_fLi0EEcvPKS1_Ev", scope: !50, file: !53, line: 354, type: !180, scopeLine: 354, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!180 = !DISubroutineType(types: !181)
!181 = !{!76, !152}
!182 = !DISubprogram(name: "operator RTTL::RTData_t<1, sse_f> &", linkageName: "_ZN4RTTL7RTVec_tILi1E5sse_fLi0EEcvRNS_8RTData_tILi1ES1_Li0EEEEv", scope: !50, file: !53, line: 357, type: !183, scopeLine: 357, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!183 = !DISubroutineType(types: !184)
!184 = !{!185, !123}
!185 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !54, size: 64)
!186 = !DISubprogram(name: "operator const RTTL::RTData_t<1, sse_f> &", linkageName: "_ZNK4RTTL7RTVec_tILi1E5sse_fLi0EEcvRKNS_8RTData_tILi1ES1_Li0EEEEv", scope: !50, file: !53, line: 358, type: !187, scopeLine: 358, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!187 = !DISubroutineType(types: !188)
!188 = !{!189, !152}
!189 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !190, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!191 = !DISubprogram(name: "array", linkageName: "_ZN4RTTL7RTVec_tILi1E5sse_fLi0EE5arrayEv", scope: !50, file: !53, line: 359, type: !183, scopeLine: 359, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!192 = !DISubprogram(name: "array", linkageName: "_ZNK4RTTL7RTVec_tILi1E5sse_fLi0EE5arrayEv", scope: !50, file: !53, line: 360, type: !187, scopeLine: 360, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!193 = !DISubprogram(name: "entry", linkageName: "_ZNK4RTTL7RTVec_tILi1E5sse_fLi0EE5entryEi", scope: !50, file: !53, line: 385, type: !194, scopeLine: 385, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!194 = !DISubroutineType(types: !195)
!195 = !{!71, !152, !13}
!196 = !DISubprogram(name: "entry", linkageName: "_ZN4RTTL7RTVec_tILi1E5sse_fLi0EE5entryEi", scope: !50, file: !53, line: 389, type: !171, scopeLine: 389, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!197 = !DISubprogram(name: "pointer", linkageName: "_ZNK4RTTL7RTVec_tILi1E5sse_fLi0EE7pointerEv", scope: !50, file: !53, line: 393, type: !180, scopeLine: 393, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!198 = !DISubprogram(name: "pointer", linkageName: "_ZN4RTTL7RTVec_tILi1E5sse_fLi0EE7pointerEv", scope: !50, file: !53, line: 397, type: !177, scopeLine: 397, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!199 = !DISubprogram(name: "minimum", linkageName: "_ZNK4RTTL7RTVec_tILi1E5sse_fLi0EE7minimumEv", scope: !50, file: !53, line: 402, type: !154, scopeLine: 402, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!200 = !DISubprogram(name: "maximum", linkageName: "_ZNK4RTTL7RTVec_tILi1E5sse_fLi0EE7maximumEv", scope: !50, file: !53, line: 408, type: !154, scopeLine: 408, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!201 = !DISubprogram(name: "absMinimum", linkageName: "_ZNK4RTTL7RTVec_tILi1E5sse_fLi0EE10absMinimumEv", scope: !50, file: !53, line: 414, type: !154, scopeLine: 414, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!202 = !DISubprogram(name: "absMaximum", linkageName: "_ZNK4RTTL7RTVec_tILi1E5sse_fLi0EE10absMaximumEv", scope: !50, file: !53, line: 420, type: !154, scopeLine: 420, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!203 = !DISubprogram(name: "minIndex", linkageName: "_ZNK4RTTL7RTVec_tILi1E5sse_fLi0EE8minIndexEv", scope: !50, file: !53, line: 426, type: !204, scopeLine: 426, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!204 = !DISubroutineType(types: !205)
!205 = !{!13, !152}
!206 = !DISubprogram(name: "maxIndex", linkageName: "_ZNK4RTTL7RTVec_tILi1E5sse_fLi0EE8maxIndexEv", scope: !50, file: !53, line: 433, type: !204, scopeLine: 433, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!207 = !DISubprogram(name: "minAbsIndex", linkageName: "_ZNK4RTTL7RTVec_tILi1E5sse_fLi0EE11minAbsIndexEv", scope: !50, file: !53, line: 440, type: !204, scopeLine: 440, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!208 = !DISubprogram(name: "maxAbsIndex", linkageName: "_ZNK4RTTL7RTVec_tILi1E5sse_fLi0EE11maxAbsIndexEv", scope: !50, file: !53, line: 447, type: !204, scopeLine: 447, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "m_max", scope: !46, file: !42, line: 254, baseType: !49, size: 128, offset: 128, flags: DIFlagPublic)
!210 = !DISubprogram(name: "RTBox_t", scope: !46, file: !42, line: 12, type: !211, scopeLine: 12, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!211 = !DISubroutineType(types: !212)
!212 = !{null, !213}
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!214 = !DISubprogram(name: "RTBox_t", scope: !46, file: !42, line: 16, type: !215, scopeLine: 16, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!215 = !DISubroutineType(types: !216)
!216 = !{null, !213, !217, !217}
!217 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!219 = !DISubprogram(name: "RTBox_t", scope: !46, file: !42, line: 18, type: !220, scopeLine: 18, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!220 = !DISubroutineType(types: !221)
!221 = !{null, !213, !222, !13}
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!223 = !DISubprogram(name: "RTBox_t", scope: !46, file: !42, line: 24, type: !224, scopeLine: 24, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!224 = !DISubroutineType(types: !225)
!225 = !{null, !213, !217, !217, !217}
!226 = !DISubprogram(name: "RTBox_t", scope: !46, file: !42, line: 31, type: !227, scopeLine: 31, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!227 = !DISubroutineType(types: !228)
!228 = !{null, !213, !229}
!229 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !230, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!231 = !DISubprogram(name: "reset", linkageName: "_ZN4RTTL7RTBox_tILi1E5sse_fLi0EE5resetEv", scope: !46, file: !42, line: 266, type: !211, scopeLine: 266, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!232 = !DISubprogram(name: "setEmpty", linkageName: "_ZN4RTTL7RTBox_tILi1E5sse_fLi0EE8setEmptyEv", scope: !46, file: !42, line: 34, type: !211, scopeLine: 34, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!233 = !DISubprogram(name: "maxSide", linkageName: "_ZNK4RTTL7RTBox_tILi1E5sse_fLi0EE7maxSideEv", scope: !46, file: !42, line: 37, type: !234, scopeLine: 37, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!234 = !DISubroutineType(types: !235)
!235 = !{!22, !236}
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!237 = !DISubprogram(name: "minSide", linkageName: "_ZNK4RTTL7RTBox_tILi1E5sse_fLi0EE7minSideEv", scope: !46, file: !42, line: 38, type: !234, scopeLine: 38, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!238 = !DISubprogram(name: "maxIndex", linkageName: "_ZNK4RTTL7RTBox_tILi1E5sse_fLi0EE8maxIndexEv", scope: !46, file: !42, line: 41, type: !239, scopeLine: 41, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!239 = !DISubroutineType(types: !240)
!240 = !{!13, !236}
!241 = !DISubprogram(name: "minIndex", linkageName: "_ZNK4RTTL7RTBox_tILi1E5sse_fLi0EE8minIndexEv", scope: !46, file: !42, line: 42, type: !239, scopeLine: 42, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!242 = !DISubprogram(name: "flat", linkageName: "_ZNK4RTTL7RTBox_tILi1E5sse_fLi0EE4flatEv", scope: !46, file: !42, line: 45, type: !239, scopeLine: 45, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!243 = !DISubprogram(name: "isValid", linkageName: "_ZNK4RTTL7RTBox_tILi1E5sse_fLi0EE7isValidEv", scope: !46, file: !42, line: 54, type: !244, scopeLine: 54, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!244 = !DISubroutineType(types: !245)
!245 = !{!12, !236}
!246 = !DISubprogram(name: "volume", linkageName: "_ZNK4RTTL7RTBox_tILi1E5sse_fLi0EE6volumeEv", scope: !46, file: !42, line: 60, type: !234, scopeLine: 60, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!247 = !DISubprogram(name: "area", linkageName: "_ZNK4RTTL7RTBox_tILi1E5sse_fLi0EE4areaEv", scope: !46, file: !42, line: 69, type: !234, scopeLine: 69, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!248 = !DISubprogram(name: "set", linkageName: "_ZN4RTTL7RTBox_tILi1E5sse_fLi0EE3setERKNS_7RTVec_tILi1ES1_Li0EEE", scope: !46, file: !42, line: 79, type: !249, scopeLine: 79, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!249 = !DISubroutineType(types: !250)
!250 = !{null, !213, !217}
!251 = !DISubprogram(name: "extend", linkageName: "_ZN4RTTL7RTBox_tILi1E5sse_fLi0EE6extendEPKNS_7RTVec_tILi1ES1_Li0EEEi", scope: !46, file: !42, line: 84, type: !220, scopeLine: 84, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!252 = !DISubprogram(name: "around", linkageName: "_ZN4RTTL7RTBox_tILi1E5sse_fLi0EE6aroundEPKNS_7RTVec_tILi1ES1_Li0EEEi", scope: !46, file: !42, line: 89, type: !220, scopeLine: 89, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!253 = !DISubprogram(name: "extend", linkageName: "_ZN4RTTL7RTBox_tILi1E5sse_fLi0EE6extendERKNS_7RTVec_tILi1ES1_Li0EEE", scope: !46, file: !42, line: 95, type: !249, scopeLine: 95, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!254 = !DISubprogram(name: "extend", linkageName: "_ZN4RTTL7RTBox_tILi1E5sse_fLi0EE6extendERKS2_", scope: !46, file: !42, line: 99, type: !227, scopeLine: 99, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!255 = !DISubprogram(name: "extend", linkageName: "_ZN4RTTL7RTBox_tILi1E5sse_fLi0EE6extendERKS1_", scope: !46, file: !42, line: 103, type: !256, scopeLine: 103, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!256 = !DISubroutineType(types: !257)
!257 = !{null, !213, !71}
!258 = !DISubprogram(name: "intersection", linkageName: "_ZNK4RTTL7RTBox_tILi1E5sse_fLi0EE12intersectionERKS2_", scope: !46, file: !42, line: 108, type: !259, scopeLine: 108, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!259 = !DISubroutineType(types: !260)
!260 = !{!46, !236, !229}
!261 = !DISubprogram(name: "clip", linkageName: "_ZNK4RTTL7RTBox_tILi1E5sse_fLi0EE4clipERKS2_", scope: !46, file: !42, line: 111, type: !259, scopeLine: 111, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!262 = !DISubprogram(name: "intersect", linkageName: "_ZNK4RTTL7RTBox_tILi1E5sse_fLi0EE9intersectERKS2_", scope: !46, file: !42, line: 115, type: !263, scopeLine: 115, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!263 = !DISubroutineType(types: !264)
!264 = !{!12, !236, !229}
!265 = !DISubprogram(name: "enclose", linkageName: "_ZNK4RTTL7RTBox_tILi1E5sse_fLi0EE7encloseERKNS_7RTVec_tILi1ES1_Li0EEE", scope: !46, file: !42, line: 120, type: !266, scopeLine: 120, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!266 = !DISubroutineType(types: !267)
!267 = !{!12, !236, !217}
!268 = !DISubprogram(name: "encloseAny", linkageName: "_ZNK4RTTL7RTBox_tILi1E5sse_fLi0EE10encloseAnyEPKNS_7RTVec_tILi1ES1_Li0EEEi", scope: !46, file: !42, line: 124, type: !269, scopeLine: 124, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!269 = !DISubroutineType(types: !270)
!270 = !{!12, !236, !222, !13}
!271 = !DISubprogram(name: "encloseAll", linkageName: "_ZNK4RTTL7RTBox_tILi1E5sse_fLi0EE10encloseAllEPKNS_7RTVec_tILi1ES1_Li0EEEi", scope: !46, file: !42, line: 130, type: !269, scopeLine: 130, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!272 = !DISubprogram(name: "isStrictlyEnclose", linkageName: "_ZNK4RTTL7RTBox_tILi1E5sse_fLi0EE17isStrictlyEncloseERKNS_7RTVec_tILi1ES1_Li0EEE", scope: !46, file: !42, line: 137, type: !266, scopeLine: 137, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!273 = !DISubprogram(name: "isStrictlyEnclose", linkageName: "_ZNK4RTTL7RTBox_tILi1E5sse_fLi0EE17isStrictlyEncloseERKNS_7RTVec_tILi1ES1_Li0EEES1_", scope: !46, file: !42, line: 141, type: !274, scopeLine: 141, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!274 = !DISubroutineType(types: !275)
!275 = !{!12, !236, !217, !22}
!276 = !DISubprogram(name: "isInside", linkageName: "_ZNK4RTTL7RTBox_tILi1E5sse_fLi0EE8isInsideERKS2_", scope: !46, file: !42, line: 147, type: !263, scopeLine: 147, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!277 = !DISubprogram(name: "isStrictlyInside", linkageName: "_ZNK4RTTL7RTBox_tILi1E5sse_fLi0EE16isStrictlyInsideERKS2_", scope: !46, file: !42, line: 152, type: !263, scopeLine: 152, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!278 = !DISubprogram(name: "isStrictlyInside", linkageName: "_ZNK4RTTL7RTBox_tILi1E5sse_fLi0EE16isStrictlyInsideERKS2_S1_", scope: !46, file: !42, line: 156, type: !279, scopeLine: 156, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!279 = !DISubroutineType(types: !280)
!280 = !{!12, !236, !229, !22}
!281 = !DISubprogram(name: "enlarge", linkageName: "_ZN4RTTL7RTBox_tILi1E5sse_fLi0EE7enlargeES1_", scope: !46, file: !42, line: 161, type: !282, scopeLine: 161, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!282 = !DISubroutineType(types: !283)
!283 = !{null, !213, !22}
!284 = !DISubprogram(name: "sides", linkageName: "_ZNK4RTTL7RTBox_tILi1E5sse_fLi0EE5sidesEv", scope: !46, file: !42, line: 166, type: !285, scopeLine: 166, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!285 = !DISubroutineType(types: !286)
!286 = !{!49, !236}
!287 = !DISubprogram(name: "diameter", linkageName: "_ZNK4RTTL7RTBox_tILi1E5sse_fLi0EE8diameterEv", scope: !46, file: !42, line: 169, type: !285, scopeLine: 169, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!288 = !DISubprogram(name: "center", linkageName: "_ZNK4RTTL7RTBox_tILi1E5sse_fLi0EE6centerEv", scope: !46, file: !42, line: 173, type: !285, scopeLine: 173, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!289 = !DISubprogram(name: "operator==", linkageName: "_ZNK4RTTL7RTBox_tILi1E5sse_fLi0EEeqERKS2_", scope: !46, file: !42, line: 179, type: !263, scopeLine: 179, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!290 = !DISubprogram(name: "operator!=", linkageName: "_ZNK4RTTL7RTBox_tILi1E5sse_fLi0EEneERKS2_", scope: !46, file: !42, line: 183, type: !263, scopeLine: 183, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!291 = !DISubprogram(name: "operator[]", linkageName: "_ZNK4RTTL7RTBox_tILi1E5sse_fLi0EEixEi", scope: !46, file: !42, line: 187, type: !292, scopeLine: 187, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!292 = !DISubroutineType(types: !293)
!293 = !{!217, !236, !294}
!294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!295 = !DISubprogram(name: "operator[]", linkageName: "_ZN4RTTL7RTBox_tILi1E5sse_fLi0EEixEi", scope: !46, file: !42, line: 192, type: !296, scopeLine: 192, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!296 = !DISubroutineType(types: !297)
!297 = !{!298, !213, !294}
!298 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !49, size: 64)
!299 = !DISubprogram(name: "operator=", linkageName: "_ZN4RTTL7RTBox_tILi1E5sse_fLi0EEaSERKS2_", scope: !46, file: !42, line: 197, type: !300, scopeLine: 197, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!300 = !DISubroutineType(types: !301)
!301 = !{!229, !213, !229}
!302 = !DISubprogram(name: "operator+", linkageName: "_ZNK4RTTL7RTBox_tILi1E5sse_fLi0EEplERKS2_", scope: !46, file: !42, line: 204, type: !259, scopeLine: 204, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!303 = !DISubprogram(name: "operator-", linkageName: "_ZNK4RTTL7RTBox_tILi1E5sse_fLi0EEmiERKS2_", scope: !46, file: !42, line: 212, type: !259, scopeLine: 212, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!304 = !DISubprogram(name: "operator*", linkageName: "_ZNK4RTTL7RTBox_tILi1E5sse_fLi0EEmlES1_", scope: !46, file: !42, line: 219, type: !305, scopeLine: 219, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!305 = !DISubroutineType(types: !306)
!306 = !{!46, !236, !22}
!307 = !DISubprogram(name: "operator+=", linkageName: "_ZN4RTTL7RTBox_tILi1E5sse_fLi0EEpLERKS2_", scope: !46, file: !42, line: 224, type: !227, scopeLine: 224, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!308 = !DISubprogram(name: "operator-=", linkageName: "_ZN4RTTL7RTBox_tILi1E5sse_fLi0EEmIERKS2_", scope: !46, file: !42, line: 229, type: !227, scopeLine: 229, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!309 = !DISubprogram(name: "operator*=", linkageName: "_ZN4RTTL7RTBox_tILi1E5sse_fLi0EEmLES1_", scope: !46, file: !42, line: 234, type: !310, scopeLine: 234, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!310 = !DISubroutineType(types: !311)
!311 = !{!229, !213, !22}
!312 = !DISubprogram(name: "operator/=", linkageName: "_ZN4RTTL7RTBox_tILi1E5sse_fLi0EEdVES1_", scope: !46, file: !42, line: 240, type: !310, scopeLine: 240, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!313 = !DISubprogram(name: "operator%=", linkageName: "_ZN4RTTL7RTBox_tILi1E5sse_fLi0EErMES1_", scope: !46, file: !42, line: 247, type: !310, scopeLine: 247, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!314 = !DISubprogram(name: "center", linkageName: "_ZNK4RTTL7RTBox3a6centerEv", scope: !43, file: !42, line: 287, type: !315, scopeLine: 287, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!315 = !DISubroutineType(types: !316)
!316 = !{!317, !318}
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "sse_f", file: !23, line: 24, baseType: !22)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!319 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!320 = !DISubprogram(name: "diameter", linkageName: "_ZNK4RTTL7RTBox3a8diameterEv", scope: !43, file: !42, line: 288, type: !315, scopeLine: 288, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!321 = !DISubprogram(name: "volume", linkageName: "_ZNK4RTTL7RTBox3a6volumeEv", scope: !43, file: !42, line: 292, type: !322, scopeLine: 292, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!322 = !DISubroutineType(types: !323)
!323 = !{!15, !318}
!324 = !DISubprogram(name: "area", linkageName: "_ZNK4RTTL7RTBox3a4areaEv", scope: !43, file: !42, line: 295, type: !322, scopeLine: 295, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!325 = !DISubprogram(name: "min3f", linkageName: "_ZNK4RTTL7RTBox3a5min3fEv", scope: !43, file: !42, line: 310, type: !326, scopeLine: 310, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!326 = !DISubroutineType(types: !327)
!327 = !{!328, !318}
!328 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !34, size: 64)
!329 = !DISubprogram(name: "max3f", linkageName: "_ZNK4RTTL7RTBox3a5max3fEv", scope: !43, file: !42, line: 313, type: !326, scopeLine: 313, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!330 = !DISubprogram(name: "operator[]", linkageName: "_ZN4RTTL7RTBox3aixEi", scope: !43, file: !42, line: 317, type: !331, scopeLine: 317, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!331 = !DISubroutineType(types: !332)
!332 = !{!328, !333, !294}
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!334 = !DISubprogram(name: "min_f", linkageName: "_ZN4RTTL7RTBox3a5min_fEv", scope: !43, file: !42, line: 322, type: !335, scopeLine: 322, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!335 = !DISubroutineType(types: !336)
!336 = !{!337, !333}
!337 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !317, size: 64)
!338 = !DISubprogram(name: "max_f", linkageName: "_ZN4RTTL7RTBox3a5max_fEv", scope: !43, file: !42, line: 323, type: !335, scopeLine: 323, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!339 = !DISubprogram(name: "min_f", linkageName: "_ZNK4RTTL7RTBox3a5min_fEv", scope: !43, file: !42, line: 324, type: !315, scopeLine: 324, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!340 = !DISubprogram(name: "max_f", linkageName: "_ZNK4RTTL7RTBox3a5max_fEv", scope: !43, file: !42, line: 325, type: !315, scopeLine: 325, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!341 = !DISubprogram(name: "CentroidDiffAABB", scope: !38, file: !19, line: 242, type: !342, scopeLine: 242, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!342 = !DISubroutineType(types: !343)
!343 = !{null, !344}
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!345 = !DISubprogram(name: "centroid", linkageName: "_ZNK4RTTL16CentroidDiffAABB8centroidEv", scope: !38, file: !19, line: 245, type: !346, scopeLine: 245, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!346 = !DISubroutineType(types: !347)
!347 = !{!317, !348}
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!349 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!350 = !DISubprogram(name: "centroid", linkageName: "_ZNK4RTTL16CentroidDiffAABB8centroidEi", scope: !38, file: !19, line: 246, type: !351, scopeLine: 246, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!351 = !DISubroutineType(types: !352)
!352 = !{!15, !348, !294}
!353 = !DISubprogram(name: "diff", linkageName: "_ZNK4RTTL16CentroidDiffAABB4diffEv", scope: !38, file: !19, line: 247, type: !346, scopeLine: 247, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!354 = !DISubprogram(name: "CentroidDiffAABB", scope: !38, file: !19, line: 249, type: !355, scopeLine: 249, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!355 = !DISubroutineType(types: !356)
!356 = !{null, !344, !357}
!357 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !358, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!359 = !DISubprogram(name: "convert", linkageName: "_ZNK4RTTL16CentroidDiffAABB7convertEv", scope: !38, file: !19, line: 254, type: !360, scopeLine: 254, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!360 = !DISubroutineType(types: !361)
!361 = !{!362, !348}
!362 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "AABB", scope: !20, file: !19, line: 175, size: 256, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !363, identifier: "_ZTSN4RTTL4AABBE")
!363 = !{!364, !365, !369, !374, !377, !381, !386, !387, !390, !391, !397, !398, !403, !407, !410, !413, !414, !415, !416}
!364 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !362, baseType: !41, flags: DIFlagPublic, extraData: i32 0)
!365 = !DISubprogram(name: "AABB", scope: !362, file: !19, line: 178, type: !366, scopeLine: 178, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!366 = !DISubroutineType(types: !367)
!367 = !{null, !368}
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!369 = !DISubprogram(name: "AABB", scope: !362, file: !19, line: 181, type: !370, scopeLine: 181, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!370 = !DISubroutineType(types: !371)
!371 = !{null, !368, !372, !372}
!372 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !373, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !317)
!374 = !DISubprogram(name: "AABB", scope: !362, file: !19, line: 187, type: !375, scopeLine: 187, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!375 = !DISubroutineType(types: !376)
!376 = !{null, !368, !357}
!377 = !DISubprogram(name: "createLeaf", linkageName: "_ZN4RTTL4AABB10createLeafEjj", scope: !362, file: !19, line: 192, type: !378, scopeLine: 192, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!378 = !DISubroutineType(types: !379)
!379 = !{null, !368, !380, !380}
!380 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!381 = !DISubprogram(name: "createNode", linkageName: "_ZN4RTTL4AABB10createNodeEjh", scope: !362, file: !19, line: 200, type: !382, scopeLine: 200, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!382 = !DISubroutineType(types: !383)
!383 = !{null, !368, !380, !384}
!384 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !385)
!385 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!386 = !DISubprogram(name: "createLazyNode", linkageName: "_ZN4RTTL4AABB14createLazyNodeEjj", scope: !362, file: !19, line: 208, type: !378, scopeLine: 208, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!387 = !DISubprogram(name: "setMin", linkageName: "_ZN4RTTL4AABB6setMinEif", scope: !362, file: !19, line: 219, type: !388, scopeLine: 219, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!388 = !DISubroutineType(types: !389)
!389 = !{null, !368, !13, !15}
!390 = !DISubprogram(name: "setMax", linkageName: "_ZN4RTTL4AABB6setMaxEif", scope: !362, file: !19, line: 220, type: !388, scopeLine: 220, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!391 = !DISubprogram(name: "axis", linkageName: "_ZNK4RTTL4AABB4axisEv", scope: !362, file: !19, line: 222, type: !392, scopeLine: 222, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!392 = !DISubroutineType(types: !393)
!393 = !{!394, !395}
!394 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !385, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!396 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !362)
!397 = !DISubprogram(name: "sign", linkageName: "_ZNK4RTTL4AABB4signEv", scope: !362, file: !19, line: 223, type: !392, scopeLine: 223, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!398 = !DISubprogram(name: "items", linkageName: "_ZNK4RTTL4AABB5itemsEv", scope: !362, file: !19, line: 224, type: !399, scopeLine: 224, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!399 = !DISubroutineType(types: !400)
!400 = !{!401, !395}
!401 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !402, size: 64)
!402 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!403 = !DISubprogram(name: "children", linkageName: "_ZNK4RTTL4AABB8childrenEv", scope: !362, file: !19, line: 225, type: !404, scopeLine: 225, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!404 = !DISubroutineType(types: !405)
!405 = !{!406, !395}
!406 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !16, size: 64)
!407 = !DISubprogram(name: "itemOffset", linkageName: "_ZNK4RTTL4AABB10itemOffsetEv", scope: !362, file: !19, line: 226, type: !408, scopeLine: 226, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!408 = !DISubroutineType(types: !409)
!409 = !{!16, !395}
!410 = !DISubprogram(name: "isLeaf", linkageName: "_ZNK4RTTL4AABB6isLeafEv", scope: !362, file: !19, line: 227, type: !411, scopeLine: 227, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!411 = !DISubroutineType(types: !412)
!412 = !{!12, !395}
!413 = !DISubprogram(name: "isLazy", linkageName: "_ZNK4RTTL4AABB6isLazyEv", scope: !362, file: !19, line: 228, type: !411, scopeLine: 228, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!414 = !DISubprogram(name: "lazyItems", linkageName: "_ZNK4RTTL4AABB9lazyItemsEv", scope: !362, file: !19, line: 229, type: !408, scopeLine: 229, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!415 = !DISubprogram(name: "extMin", linkageName: "_ZNK4RTTL4AABB6extMinEv", scope: !362, file: !19, line: 232, type: !404, scopeLine: 232, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!416 = !DISubprogram(name: "extMax", linkageName: "_ZNK4RTTL4AABB6extMaxEv", scope: !362, file: !19, line: 233, type: !404, scopeLine: 233, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!417 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "RTBox_t<3, float, 0>", scope: !20, file: !42, line: 8, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !418, templateParams: !527, identifier: "_ZTSN4RTTL7RTBox_tILi3EfLi0EEE")
!418 = !{!419, !421, !422, !426, !431, !435, !438, !443, !444, !445, !449, !450, !453, !454, !455, !458, !459, !460, !463, !464, !465, !466, !467, !472, !475, !476, !479, !482, !485, !486, !487, !490, !491, !492, !495, !498, !501, !502, !503, !504, !505, !508, !512, !515, !516, !517, !520, !521, !522, !525, !526}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "m_min", scope: !417, file: !42, line: 253, baseType: !420, size: 96, flags: DIFlagPublic)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "RTVec", scope: !417, file: !42, line: 10, baseType: !36, flags: DIFlagPublic)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "m_max", scope: !417, file: !42, line: 254, baseType: !420, size: 96, offset: 96, flags: DIFlagPublic)
!422 = !DISubprogram(name: "RTBox_t", scope: !417, file: !42, line: 12, type: !423, scopeLine: 12, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!423 = !DISubroutineType(types: !424)
!424 = !{null, !425}
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!426 = !DISubprogram(name: "RTBox_t", scope: !417, file: !42, line: 16, type: !427, scopeLine: 16, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!427 = !DISubroutineType(types: !428)
!428 = !{null, !425, !429, !429}
!429 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !430, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !420)
!431 = !DISubprogram(name: "RTBox_t", scope: !417, file: !42, line: 18, type: !432, scopeLine: 18, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!432 = !DISubroutineType(types: !433)
!433 = !{null, !425, !434, !13}
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!435 = !DISubprogram(name: "RTBox_t", scope: !417, file: !42, line: 24, type: !436, scopeLine: 24, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!436 = !DISubroutineType(types: !437)
!437 = !{null, !425, !429, !429, !429}
!438 = !DISubprogram(name: "RTBox_t", scope: !417, file: !42, line: 31, type: !439, scopeLine: 31, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!439 = !DISubroutineType(types: !440)
!440 = !{null, !425, !441}
!441 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !442, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !417)
!443 = !DISubprogram(name: "reset", linkageName: "_ZN4RTTL7RTBox_tILi3EfLi0EE5resetEv", scope: !417, file: !42, line: 33, type: !423, scopeLine: 33, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!444 = !DISubprogram(name: "setEmpty", linkageName: "_ZN4RTTL7RTBox_tILi3EfLi0EE8setEmptyEv", scope: !417, file: !42, line: 34, type: !423, scopeLine: 34, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!445 = !DISubprogram(name: "maxSide", linkageName: "_ZNK4RTTL7RTBox_tILi3EfLi0EE7maxSideEv", scope: !417, file: !42, line: 37, type: !446, scopeLine: 37, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!446 = !DISubroutineType(types: !447)
!447 = !{!15, !448}
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!449 = !DISubprogram(name: "minSide", linkageName: "_ZNK4RTTL7RTBox_tILi3EfLi0EE7minSideEv", scope: !417, file: !42, line: 38, type: !446, scopeLine: 38, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!450 = !DISubprogram(name: "maxIndex", linkageName: "_ZNK4RTTL7RTBox_tILi3EfLi0EE8maxIndexEv", scope: !417, file: !42, line: 41, type: !451, scopeLine: 41, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!451 = !DISubroutineType(types: !452)
!452 = !{!13, !448}
!453 = !DISubprogram(name: "minIndex", linkageName: "_ZNK4RTTL7RTBox_tILi3EfLi0EE8minIndexEv", scope: !417, file: !42, line: 42, type: !451, scopeLine: 42, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!454 = !DISubprogram(name: "flat", linkageName: "_ZNK4RTTL7RTBox_tILi3EfLi0EE4flatEv", scope: !417, file: !42, line: 45, type: !451, scopeLine: 45, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!455 = !DISubprogram(name: "isValid", linkageName: "_ZNK4RTTL7RTBox_tILi3EfLi0EE7isValidEv", scope: !417, file: !42, line: 54, type: !456, scopeLine: 54, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!456 = !DISubroutineType(types: !457)
!457 = !{!12, !448}
!458 = !DISubprogram(name: "volume", linkageName: "_ZNK4RTTL7RTBox_tILi3EfLi0EE6volumeEv", scope: !417, file: !42, line: 60, type: !446, scopeLine: 60, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!459 = !DISubprogram(name: "area", linkageName: "_ZNK4RTTL7RTBox_tILi3EfLi0EE4areaEv", scope: !417, file: !42, line: 69, type: !446, scopeLine: 69, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!460 = !DISubprogram(name: "set", linkageName: "_ZN4RTTL7RTBox_tILi3EfLi0EE3setERKNS_7RTVec_tILi3EfLi0EEE", scope: !417, file: !42, line: 79, type: !461, scopeLine: 79, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!461 = !DISubroutineType(types: !462)
!462 = !{null, !425, !429}
!463 = !DISubprogram(name: "extend", linkageName: "_ZN4RTTL7RTBox_tILi3EfLi0EE6extendEPKNS_7RTVec_tILi3EfLi0EEEi", scope: !417, file: !42, line: 84, type: !432, scopeLine: 84, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!464 = !DISubprogram(name: "around", linkageName: "_ZN4RTTL7RTBox_tILi3EfLi0EE6aroundEPKNS_7RTVec_tILi3EfLi0EEEi", scope: !417, file: !42, line: 89, type: !432, scopeLine: 89, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!465 = !DISubprogram(name: "extend", linkageName: "_ZN4RTTL7RTBox_tILi3EfLi0EE6extendERKNS_7RTVec_tILi3EfLi0EEE", scope: !417, file: !42, line: 95, type: !461, scopeLine: 95, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!466 = !DISubprogram(name: "extend", linkageName: "_ZN4RTTL7RTBox_tILi3EfLi0EE6extendERKS1_", scope: !417, file: !42, line: 99, type: !439, scopeLine: 99, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!467 = !DISubprogram(name: "extend", linkageName: "_ZN4RTTL7RTBox_tILi3EfLi0EE6extendERKf", scope: !417, file: !42, line: 103, type: !468, scopeLine: 103, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!468 = !DISubroutineType(types: !469)
!469 = !{null, !425, !470}
!470 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !471, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!472 = !DISubprogram(name: "intersection", linkageName: "_ZNK4RTTL7RTBox_tILi3EfLi0EE12intersectionERKS1_", scope: !417, file: !42, line: 108, type: !473, scopeLine: 108, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!473 = !DISubroutineType(types: !474)
!474 = !{!417, !448, !441}
!475 = !DISubprogram(name: "clip", linkageName: "_ZNK4RTTL7RTBox_tILi3EfLi0EE4clipERKS1_", scope: !417, file: !42, line: 111, type: !473, scopeLine: 111, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!476 = !DISubprogram(name: "intersect", linkageName: "_ZNK4RTTL7RTBox_tILi3EfLi0EE9intersectERKS1_", scope: !417, file: !42, line: 115, type: !477, scopeLine: 115, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!477 = !DISubroutineType(types: !478)
!478 = !{!12, !448, !441}
!479 = !DISubprogram(name: "enclose", linkageName: "_ZNK4RTTL7RTBox_tILi3EfLi0EE7encloseERKNS_7RTVec_tILi3EfLi0EEE", scope: !417, file: !42, line: 120, type: !480, scopeLine: 120, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!480 = !DISubroutineType(types: !481)
!481 = !{!12, !448, !429}
!482 = !DISubprogram(name: "encloseAny", linkageName: "_ZNK4RTTL7RTBox_tILi3EfLi0EE10encloseAnyEPKNS_7RTVec_tILi3EfLi0EEEi", scope: !417, file: !42, line: 124, type: !483, scopeLine: 124, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!483 = !DISubroutineType(types: !484)
!484 = !{!12, !448, !434, !13}
!485 = !DISubprogram(name: "encloseAll", linkageName: "_ZNK4RTTL7RTBox_tILi3EfLi0EE10encloseAllEPKNS_7RTVec_tILi3EfLi0EEEi", scope: !417, file: !42, line: 130, type: !483, scopeLine: 130, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!486 = !DISubprogram(name: "isStrictlyEnclose", linkageName: "_ZNK4RTTL7RTBox_tILi3EfLi0EE17isStrictlyEncloseERKNS_7RTVec_tILi3EfLi0EEE", scope: !417, file: !42, line: 137, type: !480, scopeLine: 137, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!487 = !DISubprogram(name: "isStrictlyEnclose", linkageName: "_ZNK4RTTL7RTBox_tILi3EfLi0EE17isStrictlyEncloseERKNS_7RTVec_tILi3EfLi0EEEf", scope: !417, file: !42, line: 141, type: !488, scopeLine: 141, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!488 = !DISubroutineType(types: !489)
!489 = !{!12, !448, !429, !15}
!490 = !DISubprogram(name: "isInside", linkageName: "_ZNK4RTTL7RTBox_tILi3EfLi0EE8isInsideERKS1_", scope: !417, file: !42, line: 147, type: !477, scopeLine: 147, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!491 = !DISubprogram(name: "isStrictlyInside", linkageName: "_ZNK4RTTL7RTBox_tILi3EfLi0EE16isStrictlyInsideERKS1_", scope: !417, file: !42, line: 152, type: !477, scopeLine: 152, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!492 = !DISubprogram(name: "isStrictlyInside", linkageName: "_ZNK4RTTL7RTBox_tILi3EfLi0EE16isStrictlyInsideERKS1_f", scope: !417, file: !42, line: 156, type: !493, scopeLine: 156, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!493 = !DISubroutineType(types: !494)
!494 = !{!12, !448, !441, !15}
!495 = !DISubprogram(name: "enlarge", linkageName: "_ZN4RTTL7RTBox_tILi3EfLi0EE7enlargeEf", scope: !417, file: !42, line: 161, type: !496, scopeLine: 161, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!496 = !DISubroutineType(types: !497)
!497 = !{null, !425, !15}
!498 = !DISubprogram(name: "sides", linkageName: "_ZNK4RTTL7RTBox_tILi3EfLi0EE5sidesEv", scope: !417, file: !42, line: 166, type: !499, scopeLine: 166, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!499 = !DISubroutineType(types: !500)
!500 = !{!420, !448}
!501 = !DISubprogram(name: "diameter", linkageName: "_ZNK4RTTL7RTBox_tILi3EfLi0EE8diameterEv", scope: !417, file: !42, line: 169, type: !499, scopeLine: 169, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!502 = !DISubprogram(name: "center", linkageName: "_ZNK4RTTL7RTBox_tILi3EfLi0EE6centerEv", scope: !417, file: !42, line: 173, type: !499, scopeLine: 173, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!503 = !DISubprogram(name: "operator==", linkageName: "_ZNK4RTTL7RTBox_tILi3EfLi0EEeqERKS1_", scope: !417, file: !42, line: 179, type: !477, scopeLine: 179, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!504 = !DISubprogram(name: "operator!=", linkageName: "_ZNK4RTTL7RTBox_tILi3EfLi0EEneERKS1_", scope: !417, file: !42, line: 183, type: !477, scopeLine: 183, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!505 = !DISubprogram(name: "operator[]", linkageName: "_ZNK4RTTL7RTBox_tILi3EfLi0EEixEi", scope: !417, file: !42, line: 187, type: !506, scopeLine: 187, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!506 = !DISubroutineType(types: !507)
!507 = !{!429, !448, !294}
!508 = !DISubprogram(name: "operator[]", linkageName: "_ZN4RTTL7RTBox_tILi3EfLi0EEixEi", scope: !417, file: !42, line: 192, type: !509, scopeLine: 192, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!509 = !DISubroutineType(types: !510)
!510 = !{!511, !425, !294}
!511 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !420, size: 64)
!512 = !DISubprogram(name: "operator=", linkageName: "_ZN4RTTL7RTBox_tILi3EfLi0EEaSERKS1_", scope: !417, file: !42, line: 197, type: !513, scopeLine: 197, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!513 = !DISubroutineType(types: !514)
!514 = !{!441, !425, !441}
!515 = !DISubprogram(name: "operator+", linkageName: "_ZNK4RTTL7RTBox_tILi3EfLi0EEplERKS1_", scope: !417, file: !42, line: 204, type: !473, scopeLine: 204, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!516 = !DISubprogram(name: "operator-", linkageName: "_ZNK4RTTL7RTBox_tILi3EfLi0EEmiERKS1_", scope: !417, file: !42, line: 212, type: !473, scopeLine: 212, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!517 = !DISubprogram(name: "operator*", linkageName: "_ZNK4RTTL7RTBox_tILi3EfLi0EEmlEf", scope: !417, file: !42, line: 219, type: !518, scopeLine: 219, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!518 = !DISubroutineType(types: !519)
!519 = !{!417, !448, !15}
!520 = !DISubprogram(name: "operator+=", linkageName: "_ZN4RTTL7RTBox_tILi3EfLi0EEpLERKS1_", scope: !417, file: !42, line: 224, type: !439, scopeLine: 224, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!521 = !DISubprogram(name: "operator-=", linkageName: "_ZN4RTTL7RTBox_tILi3EfLi0EEmIERKS1_", scope: !417, file: !42, line: 229, type: !439, scopeLine: 229, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!522 = !DISubprogram(name: "operator*=", linkageName: "_ZN4RTTL7RTBox_tILi3EfLi0EEmLEf", scope: !417, file: !42, line: 234, type: !523, scopeLine: 234, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!523 = !DISubroutineType(types: !524)
!524 = !{!441, !425, !15}
!525 = !DISubprogram(name: "operator/=", linkageName: "_ZN4RTTL7RTBox_tILi3EfLi0EEdVEf", scope: !417, file: !42, line: 240, type: !523, scopeLine: 240, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!526 = !DISubprogram(name: "operator%=", linkageName: "_ZN4RTTL7RTBox_tILi3EfLi0EErMEf", scope: !417, file: !42, line: 247, type: !523, scopeLine: 247, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!527 = !{!528, !529, !119}
!528 = !DITemplateValueParameter(name: "N", type: !13, value: i32 3)
!529 = !DITemplateTypeParameter(name: "DataType", type: !15)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sse_i", file: !23, line: 34, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !531, identifier: "_ZTS5sse_i")
!531 = !{!532, !564}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "__sse_i", scope: !530, file: !23, line: 41, baseType: !533, size: 128)
!533 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !530, file: !23, line: 36, size: 128, flags: DIFlagTypePassByValue, elements: !534, identifier: "_ZTSN5sse_iUt_E")
!534 = !{!535, !540, !542, !544}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !533, file: !23, line: 37, baseType: !536, size: 128)
!536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !537, size: 128, elements: !538)
!537 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!538 = !{!539}
!539 = !DISubrange(count: 16)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !533, file: !23, line: 38, baseType: !541, size: 128)
!541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 128, elements: !27)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "ui", scope: !533, file: !23, line: 39, baseType: !543, size: 128)
!543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 128, elements: !27)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !533, file: !23, line: 40, baseType: !545, size: 128)
!545 = !DICompositeType(tag: DW_TAG_array_type, baseType: !546, size: 128, elements: !562)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "sse_i64", file: !23, line: 32, baseType: !547)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sse_i64", file: !23, line: 26, size: 64, flags: DIFlagTypePassByValue, elements: !548, identifier: "_ZTS7sse_i64")
!548 = !{!549}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "__sse_i64", scope: !547, file: !23, line: 31, baseType: !550, size: 64)
!550 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !547, file: !23, line: 27, size: 64, flags: DIFlagTypePassByValue, elements: !551, identifier: "_ZTSN7sse_i64Ut_E")
!551 = !{!552, !557, !560}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !550, file: !23, line: 28, baseType: !553, size: 64)
!553 = !DICompositeType(tag: DW_TAG_array_type, baseType: !554, size: 64, elements: !555)
!554 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!555 = !{!556}
!556 = !DISubrange(count: 8)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "wd", scope: !550, file: !23, line: 29, baseType: !558, size: 64)
!558 = !DICompositeType(tag: DW_TAG_array_type, baseType: !559, size: 64, elements: !27)
!559 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "dw", scope: !550, file: !23, line: 30, baseType: !561, size: 64)
!561 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 64, elements: !562)
!562 = !{!563}
!563 = !DISubrange(count: 2)
!564 = !DISubprogram(name: "sse_i", scope: !530, file: !23, line: 35, type: !565, scopeLine: 35, flags: DIFlagPrototyped, spFlags: 0)
!565 = !DISubroutineType(types: !566)
!566 = !{null, !567}
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!568 = !{!0, !7, !569, !612, !614, !616, !618, !624, !629, !632, !637, !642, !647, !652, !657, !662}
!569 = !DIGlobalVariableExpression(var: !570, expr: !DIExpression())
!570 = distinct !DIGlobalVariable(name: "binCount", linkageName: "_ZN4RTTL15OnDemandBuilder8binCountE", scope: !9, file: !571, line: 3, type: !572, isLocal: false, isDefinition: true, declaration: !576, align: 512)
!571 = !DIFile(filename: "RTTL/BVH/Builder/OnDemandBuilder.cxx", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src", checksumkind: CSK_MD5, checksum: "f4935d4fac11bc78298cc7adab27ac8f")
!572 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 3072, elements: !573)
!573 = !{!574, !575}
!574 = !DISubrange(count: 3)
!575 = !DISubrange(count: 32)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "binCount", scope: !578, file: !577, line: 16, baseType: !572, align: 512, flags: DIFlagPublic | DIFlagStaticMember)
!577 = !DIFile(filename: "RTTL/BVH/Builder/OnDemandBuilder.hxx", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src", checksumkind: CSK_MD5, checksum: "1949b43f28b0cba87020e61d0f43433c")
!578 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "OnDemandBuilder", scope: !20, file: !577, line: 9, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !579, vtableHolder: !581)
!579 = !{!580, !583, !576, !584, !586, !590, !594, !598, !603, !609}
!580 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !578, baseType: !581, flags: DIFlagPublic, extraData: i32 0)
!581 = !DICompositeType(tag: DW_TAG_class_type, name: "BVHBuilder", scope: !20, file: !582, line: 19, size: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN4RTTL10BVHBuilderE")
!582 = !DIFile(filename: "RTTL/BVH/Builder/Builder.hxx", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src", checksumkind: CSK_MD5, checksum: "fe7860fec0b0fa60176fcfef0a53cc02")
!583 = !DIDerivedType(tag: DW_TAG_member, name: "cdAABB", scope: !578, file: !577, line: 11, baseType: !37, size: 64, offset: 128, flags: DIFlagProtected)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "binBounds", scope: !578, file: !577, line: 17, baseType: !585, align: 512, flags: DIFlagPublic | DIFlagStaticMember)
!585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !362, size: 24576, elements: !573)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "rightBox", scope: !578, file: !577, line: 18, baseType: !587, align: 512, flags: DIFlagPublic | DIFlagStaticMember)
!587 = !DICompositeType(tag: DW_TAG_array_type, baseType: !362, size: 8448, elements: !588)
!588 = !{!589}
!589 = !DISubrange(count: 33)
!590 = !DISubprogram(name: "clearBins3Dim", linkageName: "_ZN4RTTL15OnDemandBuilder13clearBins3DimEi", scope: !578, file: !577, line: 20, type: !591, scopeLine: 20, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!591 = !DISubroutineType(types: !592)
!592 = !{null, !593, !294}
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!594 = !DISubprogram(name: "updateBinAll3Dim", linkageName: "_ZN4RTTL15OnDemandBuilder16updateBinAll3DimERKNS_16CentroidDiffAABBERK5sse_fS6_", scope: !578, file: !577, line: 32, type: !595, scopeLine: 32, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!595 = !DISubroutineType(types: !596)
!596 = !{null, !593, !597, !372, !372}
!597 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !349, size: 64)
!598 = !DISubprogram(name: "OnDemandBuilder", scope: !578, file: !577, line: 49, type: !599, scopeLine: 49, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!599 = !DISubroutineType(types: !600)
!600 = !{null, !593, !601}
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DICompositeType(tag: DW_TAG_structure_type, name: "BVH", scope: !20, file: !19, line: 44, size: 320, flags: DIFlagFwdDecl | DIFlagNonTrivial)
!603 = !DISubprogram(name: "createNode", linkageName: "_ZN4RTTL15OnDemandBuilder10createNodeEPNS_4AABBEPii", scope: !578, file: !577, line: 53, type: !604, scopeLine: 53, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!604 = !DISubroutineType(types: !605)
!605 = !{null, !593, !606, !608, !13}
!606 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !607)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!609 = !DISubprogram(name: "build", linkageName: "_ZN4RTTL15OnDemandBuilder5buildERKNS_7RTBox3aES3_", scope: !578, file: !577, line: 57, type: !610, scopeLine: 57, containingType: !578, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!610 = !DISubroutineType(types: !611)
!611 = !{null, !593, !357, !357}
!612 = !DIGlobalVariableExpression(var: !613, expr: !DIExpression())
!613 = distinct !DIGlobalVariable(name: "binBounds", linkageName: "_ZN4RTTL15OnDemandBuilder9binBoundsE", scope: !9, file: !571, line: 4, type: !585, isLocal: false, isDefinition: true, declaration: !584, align: 512)
!614 = !DIGlobalVariableExpression(var: !615, expr: !DIExpression())
!615 = distinct !DIGlobalVariable(name: "rightBox", linkageName: "_ZN4RTTL15OnDemandBuilder8rightBoxE", scope: !9, file: !571, line: 5, type: !587, isLocal: false, isDefinition: true, declaration: !586, align: 512)
!616 = !DIGlobalVariableExpression(var: !617, expr: !DIExpression())
!617 = distinct !DIGlobalVariable(name: "nextFree", scope: !9, file: !571, line: 6, type: !13, isLocal: false, isDefinition: true, align: 512)
!618 = !DIGlobalVariableExpression(var: !619, expr: !DIExpression())
!619 = distinct !DIGlobalVariable(scope: null, file: !571, line: 10, type: !620, isLocal: true, isDefinition: true)
!620 = !DICompositeType(tag: DW_TAG_array_type, baseType: !621, size: 624, elements: !622)
!621 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !554)
!622 = !{!623}
!623 = !DISubrange(count: 78)
!624 = !DIGlobalVariableExpression(var: !625, expr: !DIExpression())
!625 = distinct !DIGlobalVariable(scope: null, file: !571, line: 31, type: !626, isLocal: true, isDefinition: true)
!626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !621, size: 72, elements: !627)
!627 = !{!628}
!628 = !DISubrange(count: 9)
!629 = !DIGlobalVariableExpression(var: !630, expr: !DIExpression())
!630 = distinct !DIGlobalVariable(scope: null, file: !571, line: 31, type: !631, isLocal: true, isDefinition: true)
!631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !621, size: 32, elements: !27)
!632 = !DIGlobalVariableExpression(var: !633, expr: !DIExpression())
!633 = distinct !DIGlobalVariable(scope: null, file: !571, line: 44, type: !634, isLocal: true, isDefinition: true)
!634 = !DICompositeType(tag: DW_TAG_array_type, baseType: !621, size: 168, elements: !635)
!635 = !{!636}
!636 = !DISubrange(count: 21)
!637 = !DIGlobalVariableExpression(var: !638, expr: !DIExpression())
!638 = distinct !DIGlobalVariable(scope: null, file: !571, line: 44, type: !639, isLocal: true, isDefinition: true)
!639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !621, size: 816, elements: !640)
!640 = !{!641}
!641 = !DISubrange(count: 102)
!642 = !DIGlobalVariableExpression(var: !643, expr: !DIExpression())
!643 = distinct !DIGlobalVariable(scope: null, file: !571, line: 44, type: !644, isLocal: true, isDefinition: true)
!644 = !DICompositeType(tag: DW_TAG_array_type, baseType: !621, size: 552, elements: !645)
!645 = !{!646}
!646 = !DISubrange(count: 69)
!647 = !DIGlobalVariableExpression(var: !648, expr: !DIExpression())
!648 = distinct !DIGlobalVariable(scope: null, file: !56, line: 44, type: !649, isLocal: true, isDefinition: true)
!649 = !DICompositeType(tag: DW_TAG_array_type, baseType: !621, size: 232, elements: !650)
!650 = !{!651}
!651 = !DISubrange(count: 29)
!652 = !DIGlobalVariableExpression(var: !653, expr: !DIExpression())
!653 = distinct !DIGlobalVariable(scope: null, file: !56, line: 44, type: !654, isLocal: true, isDefinition: true)
!654 = !DICompositeType(tag: DW_TAG_array_type, baseType: !621, size: 704, elements: !655)
!655 = !{!656}
!656 = !DISubrange(count: 88)
!657 = !DIGlobalVariableExpression(var: !658, expr: !DIExpression())
!658 = distinct !DIGlobalVariable(scope: null, file: !56, line: 44, type: !659, isLocal: true, isDefinition: true)
!659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !621, size: 1528, elements: !660)
!660 = !{!661}
!661 = !DISubrange(count: 191)
!662 = !DIGlobalVariableExpression(var: !663, expr: !DIExpression())
!663 = distinct !DIGlobalVariable(name: "maxBins", linkageName: "_ZN4RTTLL7maxBinsE", scope: !20, file: !664, line: 8, type: !294, isLocal: true, isDefinition: true)
!664 = !DIFile(filename: "RTTL/BVH/Builder/BinnedAllDimsSaveSpace.hxx", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src", checksumkind: CSK_MD5, checksum: "cac9c327fd66d39fa5e4af9691adb562")
!665 = !{!666, !672, !676, !683, !687, !695, !700, !702, !708, !712, !716, !726, !728, !732, !736, !740, !745, !749, !753, !757, !761, !769, !773, !777, !779, !781, !785, !789, !795, !799, !803, !805, !813, !817, !825, !827, !831, !835, !839, !843, !848, !852, !857, !858, !859, !860, !862, !863, !864, !865, !866, !867, !868, !870, !871, !872, !873, !874, !875, !876, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !911, !913, !915, !919, !921, !923, !925, !927, !929, !931, !933, !937, !941, !943, !945, !950, !952, !954, !956, !958, !960, !962, !965, !967, !969, !973, !977, !979, !981, !983, !985, !987, !989, !991, !993, !995, !997, !1001, !1005, !1007, !1009, !1011, !1013, !1015, !1017, !1019, !1021, !1023, !1025, !1027, !1029, !1031, !1033, !1035, !1039, !1043, !1047, !1049, !1051, !1053, !1055, !1057, !1059, !1061, !1063, !1065, !1069, !1073, !1077, !1079, !1081, !1083, !1087, !1091, !1095, !1097, !1099, !1101, !1103, !1105, !1107, !1109, !1111, !1113, !1115, !1117, !1119, !1123, !1127, !1131, !1133, !1135, !1137, !1139, !1143, !1147, !1149, !1151, !1153, !1155, !1157, !1159, !1163, !1167, !1169, !1171, !1173, !1175, !1179, !1183, !1187, !1189, !1191, !1193, !1195, !1197, !1199, !1203, !1207, !1211, !1213, !1217, !1221, !1223, !1225, !1227, !1229, !1231, !1233, !1237, !1239, !1244, !1259, !1262, !1267, !1276, !1281, !1285, !1289, !1293, !1297, !1299, !1301, !1305, !1311, !1315, !1321, !1327, !1329, !1333, !1337, !1341, !1345, !1357, !1359, !1363, !1367, !1371, !1373, !1377, !1381, !1385, !1387, !1389, !1393, !1401, !1405, !1409, !1413, !1415, !1421, !1423, !1429, !1433, !1437, !1441, !1445, !1449, !1453, !1455, !1457, !1461, !1465, !1469, !1471, !1475, !1479, !1481, !1483, !1487, !1491, !1495, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1513, !1517, !1523, !1526, !1529, !1532, !1535, !1537, !1539, !1541, !1544, !1547, !1550, !1553, !1556, !1558, !1562, !1565, !1568, !1571, !1573, !1575, !1577, !1579, !1582, !1585, !1588, !1591, !1594, !1596, !1600, !1604, !1609, !1613, !1615, !1617, !1619, !1621, !1623, !1625, !1627, !1629, !1631, !1633, !1635, !1637, !1639, !1643, !1649, !1654, !1658, !1660, !1662, !1664, !1666, !1673, !1677, !1681, !1685, !1689, !1693, !1698, !1702, !1704, !1708, !1714, !1718, !1723, !1725, !1727, !1731, !1735, !1737, !1739, !1741, !1743, !1747, !1749, !1751, !1755, !1759, !1763, !1767, !1771, !1775, !1777, !1781, !1785, !1789, !1793, !1795, !1797, !1801, !1805, !1806, !1807, !1808, !1809, !1810, !1816, !1819, !1820, !1822, !1824, !1826, !1828, !1832, !1834, !1836, !1838, !1840, !1842, !1844, !1846, !1848, !1852, !1856, !1858, !1862, !1866, !1868, !1869}
!666 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !667, file: !671, line: 52)
!667 = !DISubprogram(name: "abs", scope: !668, file: !668, line: 848, type: !669, flags: DIFlagPrototyped, spFlags: 0)
!668 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!669 = !DISubroutineType(types: !670)
!670 = !{!13, !13}
!671 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/std_abs.h", directory: "")
!672 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !673, file: !675, line: 127)
!673 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !668, line: 63, baseType: !674)
!674 = !DICompositeType(tag: DW_TAG_structure_type, file: !668, line: 59, size: 64, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!675 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cstdlib", directory: "")
!676 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !677, file: !675, line: 128)
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !668, line: 71, baseType: !678)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !668, line: 67, size: 128, flags: DIFlagTypePassByValue, elements: !679, identifier: "_ZTS6ldiv_t")
!679 = !{!680, !682}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !678, file: !668, line: 69, baseType: !681, size: 64)
!681 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !678, file: !668, line: 70, baseType: !681, size: 64, offset: 64)
!683 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !684, file: !675, line: 130)
!684 = !DISubprogram(name: "abort", scope: !668, file: !668, line: 598, type: !685, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!685 = !DISubroutineType(types: !686)
!686 = !{null}
!687 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !688, file: !675, line: 132)
!688 = !DISubprogram(name: "aligned_alloc", scope: !668, file: !668, line: 592, type: !689, flags: DIFlagPrototyped, spFlags: 0)
!689 = !DISubroutineType(types: !690)
!690 = !{!691, !692, !692}
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !693, line: 46, baseType: !694)
!693 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!694 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!695 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !696, file: !675, line: 134)
!696 = !DISubprogram(name: "atexit", scope: !668, file: !668, line: 602, type: !697, flags: DIFlagPrototyped, spFlags: 0)
!697 = !DISubroutineType(types: !698)
!698 = !{!13, !699}
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!700 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !701, file: !675, line: 137)
!701 = !DISubprogram(name: "at_quick_exit", scope: !668, file: !668, line: 607, type: !697, flags: DIFlagPrototyped, spFlags: 0)
!702 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !703, file: !675, line: 140)
!703 = !DISubprogram(name: "atof", scope: !668, file: !668, line: 102, type: !704, flags: DIFlagPrototyped, spFlags: 0)
!704 = !DISubroutineType(types: !705)
!705 = !{!706, !707}
!706 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!708 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !709, file: !675, line: 141)
!709 = !DISubprogram(name: "atoi", scope: !668, file: !668, line: 105, type: !710, flags: DIFlagPrototyped, spFlags: 0)
!710 = !DISubroutineType(types: !711)
!711 = !{!13, !707}
!712 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !713, file: !675, line: 142)
!713 = !DISubprogram(name: "atol", scope: !668, file: !668, line: 108, type: !714, flags: DIFlagPrototyped, spFlags: 0)
!714 = !DISubroutineType(types: !715)
!715 = !{!681, !707}
!716 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !717, file: !675, line: 143)
!717 = !DISubprogram(name: "bsearch", scope: !668, file: !668, line: 828, type: !718, flags: DIFlagPrototyped, spFlags: 0)
!718 = !DISubroutineType(types: !719)
!719 = !{!691, !720, !720, !692, !692, !722}
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!722 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !668, line: 816, baseType: !723)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DISubroutineType(types: !725)
!725 = !{!13, !720, !720}
!726 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !727, file: !675, line: 144)
!727 = !DISubprogram(name: "calloc", scope: !668, file: !668, line: 543, type: !689, flags: DIFlagPrototyped, spFlags: 0)
!728 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !729, file: !675, line: 145)
!729 = !DISubprogram(name: "div", scope: !668, file: !668, line: 860, type: !730, flags: DIFlagPrototyped, spFlags: 0)
!730 = !DISubroutineType(types: !731)
!731 = !{!673, !13, !13}
!732 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !733, file: !675, line: 146)
!733 = !DISubprogram(name: "exit", scope: !668, file: !668, line: 624, type: !734, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!734 = !DISubroutineType(types: !735)
!735 = !{null, !13}
!736 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !737, file: !675, line: 147)
!737 = !DISubprogram(name: "free", scope: !668, file: !668, line: 555, type: !738, flags: DIFlagPrototyped, spFlags: 0)
!738 = !DISubroutineType(types: !739)
!739 = !{null, !691}
!740 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !741, file: !675, line: 148)
!741 = !DISubprogram(name: "getenv", scope: !668, file: !668, line: 641, type: !742, flags: DIFlagPrototyped, spFlags: 0)
!742 = !DISubroutineType(types: !743)
!743 = !{!744, !707}
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!745 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !746, file: !675, line: 149)
!746 = !DISubprogram(name: "labs", scope: !668, file: !668, line: 849, type: !747, flags: DIFlagPrototyped, spFlags: 0)
!747 = !DISubroutineType(types: !748)
!748 = !{!681, !681}
!749 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !750, file: !675, line: 150)
!750 = !DISubprogram(name: "ldiv", scope: !668, file: !668, line: 862, type: !751, flags: DIFlagPrototyped, spFlags: 0)
!751 = !DISubroutineType(types: !752)
!752 = !{!677, !681, !681}
!753 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !754, file: !675, line: 151)
!754 = !DISubprogram(name: "malloc", scope: !668, file: !668, line: 540, type: !755, flags: DIFlagPrototyped, spFlags: 0)
!755 = !DISubroutineType(types: !756)
!756 = !{!691, !692}
!757 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !758, file: !675, line: 153)
!758 = !DISubprogram(name: "mblen", scope: !668, file: !668, line: 930, type: !759, flags: DIFlagPrototyped, spFlags: 0)
!759 = !DISubroutineType(types: !760)
!760 = !{!13, !707, !692}
!761 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !762, file: !675, line: 154)
!762 = !DISubprogram(name: "mbstowcs", scope: !668, file: !668, line: 941, type: !763, flags: DIFlagPrototyped, spFlags: 0)
!763 = !DISubroutineType(types: !764)
!764 = !{!692, !765, !768, !692}
!765 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !766)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!768 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !707)
!769 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !770, file: !675, line: 155)
!770 = !DISubprogram(name: "mbtowc", scope: !668, file: !668, line: 933, type: !771, flags: DIFlagPrototyped, spFlags: 0)
!771 = !DISubroutineType(types: !772)
!772 = !{!13, !765, !768, !692}
!773 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !774, file: !675, line: 157)
!774 = !DISubprogram(name: "qsort", scope: !668, file: !668, line: 838, type: !775, flags: DIFlagPrototyped, spFlags: 0)
!775 = !DISubroutineType(types: !776)
!776 = !{null, !691, !692, !692, !722}
!777 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !778, file: !675, line: 160)
!778 = !DISubprogram(name: "quick_exit", scope: !668, file: !668, line: 630, type: !734, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!779 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !780, file: !675, line: 163)
!780 = !DISubprogram(name: "rand", scope: !668, file: !668, line: 454, type: !114, flags: DIFlagPrototyped, spFlags: 0)
!781 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !782, file: !675, line: 164)
!782 = !DISubprogram(name: "realloc", scope: !668, file: !668, line: 551, type: !783, flags: DIFlagPrototyped, spFlags: 0)
!783 = !DISubroutineType(types: !784)
!784 = !{!691, !691, !692}
!785 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !786, file: !675, line: 165)
!786 = !DISubprogram(name: "srand", scope: !668, file: !668, line: 456, type: !787, flags: DIFlagPrototyped, spFlags: 0)
!787 = !DISubroutineType(types: !788)
!788 = !{null, !16}
!789 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !790, file: !675, line: 166)
!790 = !DISubprogram(name: "strtod", scope: !668, file: !668, line: 118, type: !791, flags: DIFlagPrototyped, spFlags: 0)
!791 = !DISubroutineType(types: !792)
!792 = !{!706, !768, !793}
!793 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !794)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!795 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !796, file: !675, line: 167)
!796 = !DISubprogram(name: "strtol", scope: !668, file: !668, line: 177, type: !797, flags: DIFlagPrototyped, spFlags: 0)
!797 = !DISubroutineType(types: !798)
!798 = !{!681, !768, !793, !13}
!799 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !800, file: !675, line: 168)
!800 = !DISubprogram(name: "strtoul", scope: !668, file: !668, line: 181, type: !801, flags: DIFlagPrototyped, spFlags: 0)
!801 = !DISubroutineType(types: !802)
!802 = !{!694, !768, !793, !13}
!803 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !804, file: !675, line: 169)
!804 = !DISubprogram(name: "system", scope: !668, file: !668, line: 791, type: !710, flags: DIFlagPrototyped, spFlags: 0)
!805 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !806, file: !675, line: 171)
!806 = !DISubprogram(name: "wcstombs", scope: !668, file: !668, line: 945, type: !807, flags: DIFlagPrototyped, spFlags: 0)
!807 = !DISubroutineType(types: !808)
!808 = !{!692, !809, !810, !692}
!809 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !744)
!810 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !811)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !767)
!813 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !814, file: !675, line: 172)
!814 = !DISubprogram(name: "wctomb", scope: !668, file: !668, line: 937, type: !815, flags: DIFlagPrototyped, spFlags: 0)
!815 = !DISubroutineType(types: !816)
!816 = !{!13, !744, !767}
!817 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !818, entity: !819, file: !675, line: 200)
!818 = !DINamespace(name: "__gnu_cxx", scope: null)
!819 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !668, line: 81, baseType: !820)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !668, line: 77, size: 128, flags: DIFlagTypePassByValue, elements: !821, identifier: "_ZTS7lldiv_t")
!821 = !{!822, !824}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !820, file: !668, line: 79, baseType: !823, size: 64)
!823 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !820, file: !668, line: 80, baseType: !823, size: 64, offset: 64)
!825 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !818, entity: !826, file: !675, line: 206)
!826 = !DISubprogram(name: "_Exit", scope: !668, file: !668, line: 636, type: !734, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!827 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !818, entity: !828, file: !675, line: 210)
!828 = !DISubprogram(name: "llabs", scope: !668, file: !668, line: 852, type: !829, flags: DIFlagPrototyped, spFlags: 0)
!829 = !DISubroutineType(types: !830)
!830 = !{!823, !823}
!831 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !818, entity: !832, file: !675, line: 216)
!832 = !DISubprogram(name: "lldiv", scope: !668, file: !668, line: 866, type: !833, flags: DIFlagPrototyped, spFlags: 0)
!833 = !DISubroutineType(types: !834)
!834 = !{!819, !823, !823}
!835 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !818, entity: !836, file: !675, line: 227)
!836 = !DISubprogram(name: "atoll", scope: !668, file: !668, line: 113, type: !837, flags: DIFlagPrototyped, spFlags: 0)
!837 = !DISubroutineType(types: !838)
!838 = !{!823, !707}
!839 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !818, entity: !840, file: !675, line: 228)
!840 = !DISubprogram(name: "strtoll", scope: !668, file: !668, line: 201, type: !841, flags: DIFlagPrototyped, spFlags: 0)
!841 = !DISubroutineType(types: !842)
!842 = !{!823, !768, !793, !13}
!843 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !818, entity: !844, file: !675, line: 229)
!844 = !DISubprogram(name: "strtoull", scope: !668, file: !668, line: 206, type: !845, flags: DIFlagPrototyped, spFlags: 0)
!845 = !DISubroutineType(types: !846)
!846 = !{!847, !768, !793, !13}
!847 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!848 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !818, entity: !849, file: !675, line: 231)
!849 = !DISubprogram(name: "strtof", scope: !668, file: !668, line: 124, type: !850, flags: DIFlagPrototyped, spFlags: 0)
!850 = !DISubroutineType(types: !851)
!851 = !{!15, !768, !793}
!852 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !818, entity: !853, file: !675, line: 232)
!853 = !DISubprogram(name: "strtold", scope: !668, file: !668, line: 127, type: !854, flags: DIFlagPrototyped, spFlags: 0)
!854 = !DISubroutineType(types: !855)
!855 = !{!856, !768, !793}
!856 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!857 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !819, file: !675, line: 240)
!858 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !826, file: !675, line: 242)
!859 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !828, file: !675, line: 244)
!860 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !861, file: !675, line: 245)
!861 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !818, file: !675, line: 213, type: !833, flags: DIFlagPrototyped, spFlags: 0)
!862 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !832, file: !675, line: 246)
!863 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !836, file: !675, line: 248)
!864 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !849, file: !675, line: 249)
!865 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !840, file: !675, line: 250)
!866 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !844, file: !675, line: 251)
!867 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !853, file: !675, line: 252)
!868 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !684, file: !869, line: 38)
!869 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "0f5b773a303c24013fb112082e6d18a5")
!870 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !696, file: !869, line: 39)
!871 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !733, file: !869, line: 40)
!872 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !701, file: !869, line: 43)
!873 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !778, file: !869, line: 46)
!874 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !673, file: !869, line: 51)
!875 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !677, file: !869, line: 52)
!876 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !877, file: !869, line: 54)
!877 = !DISubprogram(name: "abs", linkageName: "_ZSt3absg", scope: !2, file: !671, line: 103, type: !878, flags: DIFlagPrototyped, spFlags: 0)
!878 = !DISubroutineType(types: !879)
!879 = !{!880, !880}
!880 = !DIBasicType(name: "__float128", size: 128, encoding: DW_ATE_float)
!881 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !703, file: !869, line: 55)
!882 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !709, file: !869, line: 56)
!883 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !713, file: !869, line: 57)
!884 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !717, file: !869, line: 58)
!885 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !727, file: !869, line: 59)
!886 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !861, file: !869, line: 60)
!887 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !737, file: !869, line: 61)
!888 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !741, file: !869, line: 62)
!889 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !746, file: !869, line: 63)
!890 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !750, file: !869, line: 64)
!891 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !754, file: !869, line: 65)
!892 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !758, file: !869, line: 67)
!893 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !762, file: !869, line: 68)
!894 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !770, file: !869, line: 69)
!895 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !774, file: !869, line: 71)
!896 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !780, file: !869, line: 72)
!897 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !782, file: !869, line: 73)
!898 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !786, file: !869, line: 74)
!899 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !790, file: !869, line: 75)
!900 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !796, file: !869, line: 76)
!901 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !800, file: !869, line: 77)
!902 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !804, file: !869, line: 78)
!903 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !806, file: !869, line: 80)
!904 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !814, file: !869, line: 81)
!905 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !906, file: !910, line: 83)
!906 = !DISubprogram(name: "acos", scope: !907, file: !907, line: 53, type: !908, flags: DIFlagPrototyped, spFlags: 0)
!907 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "8c6e2d0d2bda65bc5ba1ca02b65383b7")
!908 = !DISubroutineType(types: !909)
!909 = !{!706, !706}
!910 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cmath", directory: "")
!911 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !912, file: !910, line: 102)
!912 = !DISubprogram(name: "asin", scope: !907, file: !907, line: 55, type: !908, flags: DIFlagPrototyped, spFlags: 0)
!913 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !914, file: !910, line: 121)
!914 = !DISubprogram(name: "atan", scope: !907, file: !907, line: 57, type: !908, flags: DIFlagPrototyped, spFlags: 0)
!915 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !916, file: !910, line: 140)
!916 = !DISubprogram(name: "atan2", scope: !907, file: !907, line: 59, type: !917, flags: DIFlagPrototyped, spFlags: 0)
!917 = !DISubroutineType(types: !918)
!918 = !{!706, !706, !706}
!919 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !920, file: !910, line: 161)
!920 = !DISubprogram(name: "ceil", scope: !907, file: !907, line: 159, type: !908, flags: DIFlagPrototyped, spFlags: 0)
!921 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !922, file: !910, line: 180)
!922 = !DISubprogram(name: "cos", scope: !907, file: !907, line: 62, type: !908, flags: DIFlagPrototyped, spFlags: 0)
!923 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !924, file: !910, line: 199)
!924 = !DISubprogram(name: "cosh", scope: !907, file: !907, line: 71, type: !908, flags: DIFlagPrototyped, spFlags: 0)
!925 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !926, file: !910, line: 218)
!926 = !DISubprogram(name: "exp", scope: !907, file: !907, line: 95, type: !908, flags: DIFlagPrototyped, spFlags: 0)
!927 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !928, file: !910, line: 237)
!928 = !DISubprogram(name: "fabs", scope: !907, file: !907, line: 162, type: !908, flags: DIFlagPrototyped, spFlags: 0)
!929 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !930, file: !910, line: 256)
!930 = !DISubprogram(name: "floor", scope: !907, file: !907, line: 165, type: !908, flags: DIFlagPrototyped, spFlags: 0)
!931 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !932, file: !910, line: 275)
!932 = !DISubprogram(name: "fmod", scope: !907, file: !907, line: 168, type: !917, flags: DIFlagPrototyped, spFlags: 0)
!933 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !934, file: !910, line: 296)
!934 = !DISubprogram(name: "frexp", scope: !907, file: !907, line: 98, type: !935, flags: DIFlagPrototyped, spFlags: 0)
!935 = !DISubroutineType(types: !936)
!936 = !{!706, !706, !33}
!937 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !938, file: !910, line: 315)
!938 = !DISubprogram(name: "ldexp", scope: !907, file: !907, line: 101, type: !939, flags: DIFlagPrototyped, spFlags: 0)
!939 = !DISubroutineType(types: !940)
!940 = !{!706, !706, !13}
!941 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !942, file: !910, line: 334)
!942 = !DISubprogram(name: "log", scope: !907, file: !907, line: 104, type: !908, flags: DIFlagPrototyped, spFlags: 0)
!943 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !944, file: !910, line: 353)
!944 = !DISubprogram(name: "log10", scope: !907, file: !907, line: 107, type: !908, flags: DIFlagPrototyped, spFlags: 0)
!945 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !946, file: !910, line: 372)
!946 = !DISubprogram(name: "modf", scope: !907, file: !907, line: 110, type: !947, flags: DIFlagPrototyped, spFlags: 0)
!947 = !DISubroutineType(types: !948)
!948 = !{!706, !706, !949}
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!950 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !951, file: !910, line: 384)
!951 = !DISubprogram(name: "pow", scope: !907, file: !907, line: 140, type: !917, flags: DIFlagPrototyped, spFlags: 0)
!952 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !953, file: !910, line: 421)
!953 = !DISubprogram(name: "sin", scope: !907, file: !907, line: 64, type: !908, flags: DIFlagPrototyped, spFlags: 0)
!954 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !955, file: !910, line: 440)
!955 = !DISubprogram(name: "sinh", scope: !907, file: !907, line: 73, type: !908, flags: DIFlagPrototyped, spFlags: 0)
!956 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !957, file: !910, line: 459)
!957 = !DISubprogram(name: "sqrt", scope: !907, file: !907, line: 143, type: !908, flags: DIFlagPrototyped, spFlags: 0)
!958 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !959, file: !910, line: 478)
!959 = !DISubprogram(name: "tan", scope: !907, file: !907, line: 66, type: !908, flags: DIFlagPrototyped, spFlags: 0)
!960 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !961, file: !910, line: 497)
!961 = !DISubprogram(name: "tanh", scope: !907, file: !907, line: 75, type: !908, flags: DIFlagPrototyped, spFlags: 0)
!962 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !963, file: !910, line: 1065)
!963 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_t", file: !964, line: 164, baseType: !706)
!964 = !DIFile(filename: "/usr/include/math.h", directory: "", checksumkind: CSK_MD5, checksum: "f3450d1d586f704597de1a1b2bed18f3")
!965 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !966, file: !910, line: 1066)
!966 = !DIDerivedType(tag: DW_TAG_typedef, name: "float_t", file: !964, line: 163, baseType: !15)
!967 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !968, file: !910, line: 1069)
!968 = !DISubprogram(name: "acosh", scope: !907, file: !907, line: 85, type: !908, flags: DIFlagPrototyped, spFlags: 0)
!969 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !970, file: !910, line: 1070)
!970 = !DISubprogram(name: "acoshf", scope: !907, file: !907, line: 85, type: !971, flags: DIFlagPrototyped, spFlags: 0)
!971 = !DISubroutineType(types: !972)
!972 = !{!15, !15}
!973 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !974, file: !910, line: 1071)
!974 = !DISubprogram(name: "acoshl", scope: !907, file: !907, line: 85, type: !975, flags: DIFlagPrototyped, spFlags: 0)
!975 = !DISubroutineType(types: !976)
!976 = !{!856, !856}
!977 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !978, file: !910, line: 1073)
!978 = !DISubprogram(name: "asinh", scope: !907, file: !907, line: 87, type: !908, flags: DIFlagPrototyped, spFlags: 0)
!979 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !980, file: !910, line: 1074)
!980 = !DISubprogram(name: "asinhf", scope: !907, file: !907, line: 87, type: !971, flags: DIFlagPrototyped, spFlags: 0)
!981 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !982, file: !910, line: 1075)
!982 = !DISubprogram(name: "asinhl", scope: !907, file: !907, line: 87, type: !975, flags: DIFlagPrototyped, spFlags: 0)
!983 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !984, file: !910, line: 1077)
!984 = !DISubprogram(name: "atanh", scope: !907, file: !907, line: 89, type: !908, flags: DIFlagPrototyped, spFlags: 0)
!985 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !986, file: !910, line: 1078)
!986 = !DISubprogram(name: "atanhf", scope: !907, file: !907, line: 89, type: !971, flags: DIFlagPrototyped, spFlags: 0)
!987 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !988, file: !910, line: 1079)
!988 = !DISubprogram(name: "atanhl", scope: !907, file: !907, line: 89, type: !975, flags: DIFlagPrototyped, spFlags: 0)
!989 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !990, file: !910, line: 1081)
!990 = !DISubprogram(name: "cbrt", scope: !907, file: !907, line: 152, type: !908, flags: DIFlagPrototyped, spFlags: 0)
!991 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !992, file: !910, line: 1082)
!992 = !DISubprogram(name: "cbrtf", scope: !907, file: !907, line: 152, type: !971, flags: DIFlagPrototyped, spFlags: 0)
!993 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !994, file: !910, line: 1083)
!994 = !DISubprogram(name: "cbrtl", scope: !907, file: !907, line: 152, type: !975, flags: DIFlagPrototyped, spFlags: 0)
!995 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !996, file: !910, line: 1085)
!996 = !DISubprogram(name: "copysign", scope: !907, file: !907, line: 198, type: !917, flags: DIFlagPrototyped, spFlags: 0)
!997 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !998, file: !910, line: 1086)
!998 = !DISubprogram(name: "copysignf", scope: !907, file: !907, line: 198, type: !999, flags: DIFlagPrototyped, spFlags: 0)
!999 = !DISubroutineType(types: !1000)
!1000 = !{!15, !15, !15}
!1001 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1002, file: !910, line: 1087)
!1002 = !DISubprogram(name: "copysignl", scope: !907, file: !907, line: 198, type: !1003, flags: DIFlagPrototyped, spFlags: 0)
!1003 = !DISubroutineType(types: !1004)
!1004 = !{!856, !856, !856}
!1005 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1006, file: !910, line: 1089)
!1006 = !DISubprogram(name: "erf", scope: !907, file: !907, line: 231, type: !908, flags: DIFlagPrototyped, spFlags: 0)
!1007 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1008, file: !910, line: 1090)
!1008 = !DISubprogram(name: "erff", scope: !907, file: !907, line: 231, type: !971, flags: DIFlagPrototyped, spFlags: 0)
!1009 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1010, file: !910, line: 1091)
!1010 = !DISubprogram(name: "erfl", scope: !907, file: !907, line: 231, type: !975, flags: DIFlagPrototyped, spFlags: 0)
!1011 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1012, file: !910, line: 1093)
!1012 = !DISubprogram(name: "erfc", scope: !907, file: !907, line: 232, type: !908, flags: DIFlagPrototyped, spFlags: 0)
!1013 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1014, file: !910, line: 1094)
!1014 = !DISubprogram(name: "erfcf", scope: !907, file: !907, line: 232, type: !971, flags: DIFlagPrototyped, spFlags: 0)
!1015 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1016, file: !910, line: 1095)
!1016 = !DISubprogram(name: "erfcl", scope: !907, file: !907, line: 232, type: !975, flags: DIFlagPrototyped, spFlags: 0)
!1017 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1018, file: !910, line: 1097)
!1018 = !DISubprogram(name: "exp2", scope: !907, file: !907, line: 130, type: !908, flags: DIFlagPrototyped, spFlags: 0)
!1019 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1020, file: !910, line: 1098)
!1020 = !DISubprogram(name: "exp2f", scope: !907, file: !907, line: 130, type: !971, flags: DIFlagPrototyped, spFlags: 0)
!1021 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1022, file: !910, line: 1099)
!1022 = !DISubprogram(name: "exp2l", scope: !907, file: !907, line: 130, type: !975, flags: DIFlagPrototyped, spFlags: 0)
!1023 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1024, file: !910, line: 1101)
!1024 = !DISubprogram(name: "expm1", scope: !907, file: !907, line: 119, type: !908, flags: DIFlagPrototyped, spFlags: 0)
!1025 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1026, file: !910, line: 1102)
!1026 = !DISubprogram(name: "expm1f", scope: !907, file: !907, line: 119, type: !971, flags: DIFlagPrototyped, spFlags: 0)
!1027 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1028, file: !910, line: 1103)
!1028 = !DISubprogram(name: "expm1l", scope: !907, file: !907, line: 119, type: !975, flags: DIFlagPrototyped, spFlags: 0)
!1029 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1030, file: !910, line: 1105)
!1030 = !DISubprogram(name: "fdim", scope: !907, file: !907, line: 329, type: !917, flags: DIFlagPrototyped, spFlags: 0)
!1031 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1032, file: !910, line: 1106)
!1032 = !DISubprogram(name: "fdimf", scope: !907, file: !907, line: 329, type: !999, flags: DIFlagPrototyped, spFlags: 0)
!1033 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1034, file: !910, line: 1107)
!1034 = !DISubprogram(name: "fdiml", scope: !907, file: !907, line: 329, type: !1003, flags: DIFlagPrototyped, spFlags: 0)
!1035 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1036, file: !910, line: 1109)
!1036 = !DISubprogram(name: "fma", scope: !907, file: !907, line: 340, type: !1037, flags: DIFlagPrototyped, spFlags: 0)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{!706, !706, !706, !706}
!1039 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1040, file: !910, line: 1110)
!1040 = !DISubprogram(name: "fmaf", scope: !907, file: !907, line: 340, type: !1041, flags: DIFlagPrototyped, spFlags: 0)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!15, !15, !15, !15}
!1043 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1044, file: !910, line: 1111)
!1044 = !DISubprogram(name: "fmal", scope: !907, file: !907, line: 340, type: !1045, flags: DIFlagPrototyped, spFlags: 0)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!856, !856, !856, !856}
!1047 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1048, file: !910, line: 1113)
!1048 = !DISubprogram(name: "fmax", scope: !907, file: !907, line: 333, type: !917, flags: DIFlagPrototyped, spFlags: 0)
!1049 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1050, file: !910, line: 1114)
!1050 = !DISubprogram(name: "fmaxf", scope: !907, file: !907, line: 333, type: !999, flags: DIFlagPrototyped, spFlags: 0)
!1051 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1052, file: !910, line: 1115)
!1052 = !DISubprogram(name: "fmaxl", scope: !907, file: !907, line: 333, type: !1003, flags: DIFlagPrototyped, spFlags: 0)
!1053 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1054, file: !910, line: 1117)
!1054 = !DISubprogram(name: "fmin", scope: !907, file: !907, line: 336, type: !917, flags: DIFlagPrototyped, spFlags: 0)
!1055 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1056, file: !910, line: 1118)
!1056 = !DISubprogram(name: "fminf", scope: !907, file: !907, line: 336, type: !999, flags: DIFlagPrototyped, spFlags: 0)
!1057 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1058, file: !910, line: 1119)
!1058 = !DISubprogram(name: "fminl", scope: !907, file: !907, line: 336, type: !1003, flags: DIFlagPrototyped, spFlags: 0)
!1059 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1060, file: !910, line: 1121)
!1060 = !DISubprogram(name: "hypot", scope: !907, file: !907, line: 147, type: !917, flags: DIFlagPrototyped, spFlags: 0)
!1061 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1062, file: !910, line: 1122)
!1062 = !DISubprogram(name: "hypotf", scope: !907, file: !907, line: 147, type: !999, flags: DIFlagPrototyped, spFlags: 0)
!1063 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1064, file: !910, line: 1123)
!1064 = !DISubprogram(name: "hypotl", scope: !907, file: !907, line: 147, type: !1003, flags: DIFlagPrototyped, spFlags: 0)
!1065 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1066, file: !910, line: 1125)
!1066 = !DISubprogram(name: "ilogb", scope: !907, file: !907, line: 283, type: !1067, flags: DIFlagPrototyped, spFlags: 0)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{!13, !706}
!1069 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1070, file: !910, line: 1126)
!1070 = !DISubprogram(name: "ilogbf", scope: !907, file: !907, line: 283, type: !1071, flags: DIFlagPrototyped, spFlags: 0)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{!13, !15}
!1073 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1074, file: !910, line: 1127)
!1074 = !DISubprogram(name: "ilogbl", scope: !907, file: !907, line: 283, type: !1075, flags: DIFlagPrototyped, spFlags: 0)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{!13, !856}
!1077 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1078, file: !910, line: 1129)
!1078 = !DISubprogram(name: "lgamma", scope: !907, file: !907, line: 233, type: !908, flags: DIFlagPrototyped, spFlags: 0)
!1079 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1080, file: !910, line: 1130)
!1080 = !DISubprogram(name: "lgammaf", scope: !907, file: !907, line: 233, type: !971, flags: DIFlagPrototyped, spFlags: 0)
!1081 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1082, file: !910, line: 1131)
!1082 = !DISubprogram(name: "lgammal", scope: !907, file: !907, line: 233, type: !975, flags: DIFlagPrototyped, spFlags: 0)
!1083 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1084, file: !910, line: 1134)
!1084 = !DISubprogram(name: "llrint", scope: !907, file: !907, line: 319, type: !1085, flags: DIFlagPrototyped, spFlags: 0)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{!823, !706}
!1087 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1088, file: !910, line: 1135)
!1088 = !DISubprogram(name: "llrintf", scope: !907, file: !907, line: 319, type: !1089, flags: DIFlagPrototyped, spFlags: 0)
!1089 = !DISubroutineType(types: !1090)
!1090 = !{!823, !15}
!1091 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1092, file: !910, line: 1136)
!1092 = !DISubprogram(name: "llrintl", scope: !907, file: !907, line: 319, type: !1093, flags: DIFlagPrototyped, spFlags: 0)
!1093 = !DISubroutineType(types: !1094)
!1094 = !{!823, !856}
!1095 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1096, file: !910, line: 1138)
!1096 = !DISubprogram(name: "llround", scope: !907, file: !907, line: 325, type: !1085, flags: DIFlagPrototyped, spFlags: 0)
!1097 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1098, file: !910, line: 1139)
!1098 = !DISubprogram(name: "llroundf", scope: !907, file: !907, line: 325, type: !1089, flags: DIFlagPrototyped, spFlags: 0)
!1099 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1100, file: !910, line: 1140)
!1100 = !DISubprogram(name: "llroundl", scope: !907, file: !907, line: 325, type: !1093, flags: DIFlagPrototyped, spFlags: 0)
!1101 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1102, file: !910, line: 1143)
!1102 = !DISubprogram(name: "log1p", scope: !907, file: !907, line: 122, type: !908, flags: DIFlagPrototyped, spFlags: 0)
!1103 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1104, file: !910, line: 1144)
!1104 = !DISubprogram(name: "log1pf", scope: !907, file: !907, line: 122, type: !971, flags: DIFlagPrototyped, spFlags: 0)
!1105 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1106, file: !910, line: 1145)
!1106 = !DISubprogram(name: "log1pl", scope: !907, file: !907, line: 122, type: !975, flags: DIFlagPrototyped, spFlags: 0)
!1107 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1108, file: !910, line: 1147)
!1108 = !DISubprogram(name: "log2", scope: !907, file: !907, line: 133, type: !908, flags: DIFlagPrototyped, spFlags: 0)
!1109 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1110, file: !910, line: 1148)
!1110 = !DISubprogram(name: "log2f", scope: !907, file: !907, line: 133, type: !971, flags: DIFlagPrototyped, spFlags: 0)
!1111 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1112, file: !910, line: 1149)
!1112 = !DISubprogram(name: "log2l", scope: !907, file: !907, line: 133, type: !975, flags: DIFlagPrototyped, spFlags: 0)
!1113 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1114, file: !910, line: 1151)
!1114 = !DISubprogram(name: "logb", scope: !907, file: !907, line: 125, type: !908, flags: DIFlagPrototyped, spFlags: 0)
!1115 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1116, file: !910, line: 1152)
!1116 = !DISubprogram(name: "logbf", scope: !907, file: !907, line: 125, type: !971, flags: DIFlagPrototyped, spFlags: 0)
!1117 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1118, file: !910, line: 1153)
!1118 = !DISubprogram(name: "logbl", scope: !907, file: !907, line: 125, type: !975, flags: DIFlagPrototyped, spFlags: 0)
!1119 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1120, file: !910, line: 1155)
!1120 = !DISubprogram(name: "lrint", scope: !907, file: !907, line: 317, type: !1121, flags: DIFlagPrototyped, spFlags: 0)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{!681, !706}
!1123 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1124, file: !910, line: 1156)
!1124 = !DISubprogram(name: "lrintf", scope: !907, file: !907, line: 317, type: !1125, flags: DIFlagPrototyped, spFlags: 0)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{!681, !15}
!1127 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1128, file: !910, line: 1157)
!1128 = !DISubprogram(name: "lrintl", scope: !907, file: !907, line: 317, type: !1129, flags: DIFlagPrototyped, spFlags: 0)
!1129 = !DISubroutineType(types: !1130)
!1130 = !{!681, !856}
!1131 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1132, file: !910, line: 1159)
!1132 = !DISubprogram(name: "lround", scope: !907, file: !907, line: 323, type: !1121, flags: DIFlagPrototyped, spFlags: 0)
!1133 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1134, file: !910, line: 1160)
!1134 = !DISubprogram(name: "lroundf", scope: !907, file: !907, line: 323, type: !1125, flags: DIFlagPrototyped, spFlags: 0)
!1135 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1136, file: !910, line: 1161)
!1136 = !DISubprogram(name: "lroundl", scope: !907, file: !907, line: 323, type: !1129, flags: DIFlagPrototyped, spFlags: 0)
!1137 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1138, file: !910, line: 1163)
!1138 = !DISubprogram(name: "nan", scope: !907, file: !907, line: 203, type: !704, flags: DIFlagPrototyped, spFlags: 0)
!1139 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1140, file: !910, line: 1164)
!1140 = !DISubprogram(name: "nanf", scope: !907, file: !907, line: 203, type: !1141, flags: DIFlagPrototyped, spFlags: 0)
!1141 = !DISubroutineType(types: !1142)
!1142 = !{!15, !707}
!1143 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1144, file: !910, line: 1165)
!1144 = !DISubprogram(name: "nanl", scope: !907, file: !907, line: 203, type: !1145, flags: DIFlagPrototyped, spFlags: 0)
!1145 = !DISubroutineType(types: !1146)
!1146 = !{!856, !707}
!1147 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1148, file: !910, line: 1167)
!1148 = !DISubprogram(name: "nearbyint", scope: !907, file: !907, line: 297, type: !908, flags: DIFlagPrototyped, spFlags: 0)
!1149 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1150, file: !910, line: 1168)
!1150 = !DISubprogram(name: "nearbyintf", scope: !907, file: !907, line: 297, type: !971, flags: DIFlagPrototyped, spFlags: 0)
!1151 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1152, file: !910, line: 1169)
!1152 = !DISubprogram(name: "nearbyintl", scope: !907, file: !907, line: 297, type: !975, flags: DIFlagPrototyped, spFlags: 0)
!1153 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1154, file: !910, line: 1171)
!1154 = !DISubprogram(name: "nextafter", scope: !907, file: !907, line: 262, type: !917, flags: DIFlagPrototyped, spFlags: 0)
!1155 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1156, file: !910, line: 1172)
!1156 = !DISubprogram(name: "nextafterf", scope: !907, file: !907, line: 262, type: !999, flags: DIFlagPrototyped, spFlags: 0)
!1157 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1158, file: !910, line: 1173)
!1158 = !DISubprogram(name: "nextafterl", scope: !907, file: !907, line: 262, type: !1003, flags: DIFlagPrototyped, spFlags: 0)
!1159 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1160, file: !910, line: 1175)
!1160 = !DISubprogram(name: "nexttoward", scope: !907, file: !907, line: 264, type: !1161, flags: DIFlagPrototyped, spFlags: 0)
!1161 = !DISubroutineType(types: !1162)
!1162 = !{!706, !706, !856}
!1163 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1164, file: !910, line: 1176)
!1164 = !DISubprogram(name: "nexttowardf", scope: !907, file: !907, line: 264, type: !1165, flags: DIFlagPrototyped, spFlags: 0)
!1165 = !DISubroutineType(types: !1166)
!1166 = !{!15, !15, !856}
!1167 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1168, file: !910, line: 1177)
!1168 = !DISubprogram(name: "nexttowardl", scope: !907, file: !907, line: 264, type: !1003, flags: DIFlagPrototyped, spFlags: 0)
!1169 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1170, file: !910, line: 1179)
!1170 = !DISubprogram(name: "remainder", scope: !907, file: !907, line: 275, type: !917, flags: DIFlagPrototyped, spFlags: 0)
!1171 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1172, file: !910, line: 1180)
!1172 = !DISubprogram(name: "remainderf", scope: !907, file: !907, line: 275, type: !999, flags: DIFlagPrototyped, spFlags: 0)
!1173 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1174, file: !910, line: 1181)
!1174 = !DISubprogram(name: "remainderl", scope: !907, file: !907, line: 275, type: !1003, flags: DIFlagPrototyped, spFlags: 0)
!1175 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1176, file: !910, line: 1183)
!1176 = !DISubprogram(name: "remquo", scope: !907, file: !907, line: 310, type: !1177, flags: DIFlagPrototyped, spFlags: 0)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{!706, !706, !706, !33}
!1179 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1180, file: !910, line: 1184)
!1180 = !DISubprogram(name: "remquof", scope: !907, file: !907, line: 310, type: !1181, flags: DIFlagPrototyped, spFlags: 0)
!1181 = !DISubroutineType(types: !1182)
!1182 = !{!15, !15, !15, !33}
!1183 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1184, file: !910, line: 1185)
!1184 = !DISubprogram(name: "remquol", scope: !907, file: !907, line: 310, type: !1185, flags: DIFlagPrototyped, spFlags: 0)
!1185 = !DISubroutineType(types: !1186)
!1186 = !{!856, !856, !856, !33}
!1187 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1188, file: !910, line: 1187)
!1188 = !DISubprogram(name: "rint", scope: !907, file: !907, line: 259, type: !908, flags: DIFlagPrototyped, spFlags: 0)
!1189 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1190, file: !910, line: 1188)
!1190 = !DISubprogram(name: "rintf", scope: !907, file: !907, line: 259, type: !971, flags: DIFlagPrototyped, spFlags: 0)
!1191 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1192, file: !910, line: 1189)
!1192 = !DISubprogram(name: "rintl", scope: !907, file: !907, line: 259, type: !975, flags: DIFlagPrototyped, spFlags: 0)
!1193 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1194, file: !910, line: 1191)
!1194 = !DISubprogram(name: "round", scope: !907, file: !907, line: 301, type: !908, flags: DIFlagPrototyped, spFlags: 0)
!1195 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1196, file: !910, line: 1192)
!1196 = !DISubprogram(name: "roundf", scope: !907, file: !907, line: 301, type: !971, flags: DIFlagPrototyped, spFlags: 0)
!1197 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1198, file: !910, line: 1193)
!1198 = !DISubprogram(name: "roundl", scope: !907, file: !907, line: 301, type: !975, flags: DIFlagPrototyped, spFlags: 0)
!1199 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1200, file: !910, line: 1195)
!1200 = !DISubprogram(name: "scalbln", scope: !907, file: !907, line: 293, type: !1201, flags: DIFlagPrototyped, spFlags: 0)
!1201 = !DISubroutineType(types: !1202)
!1202 = !{!706, !706, !681}
!1203 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1204, file: !910, line: 1196)
!1204 = !DISubprogram(name: "scalblnf", scope: !907, file: !907, line: 293, type: !1205, flags: DIFlagPrototyped, spFlags: 0)
!1205 = !DISubroutineType(types: !1206)
!1206 = !{!15, !15, !681}
!1207 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1208, file: !910, line: 1197)
!1208 = !DISubprogram(name: "scalblnl", scope: !907, file: !907, line: 293, type: !1209, flags: DIFlagPrototyped, spFlags: 0)
!1209 = !DISubroutineType(types: !1210)
!1210 = !{!856, !856, !681}
!1211 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1212, file: !910, line: 1199)
!1212 = !DISubprogram(name: "scalbn", scope: !907, file: !907, line: 279, type: !939, flags: DIFlagPrototyped, spFlags: 0)
!1213 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1214, file: !910, line: 1200)
!1214 = !DISubprogram(name: "scalbnf", scope: !907, file: !907, line: 279, type: !1215, flags: DIFlagPrototyped, spFlags: 0)
!1215 = !DISubroutineType(types: !1216)
!1216 = !{!15, !15, !13}
!1217 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1218, file: !910, line: 1201)
!1218 = !DISubprogram(name: "scalbnl", scope: !907, file: !907, line: 279, type: !1219, flags: DIFlagPrototyped, spFlags: 0)
!1219 = !DISubroutineType(types: !1220)
!1220 = !{!856, !856, !13}
!1221 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1222, file: !910, line: 1203)
!1222 = !DISubprogram(name: "tgamma", scope: !907, file: !907, line: 238, type: !908, flags: DIFlagPrototyped, spFlags: 0)
!1223 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1224, file: !910, line: 1204)
!1224 = !DISubprogram(name: "tgammaf", scope: !907, file: !907, line: 238, type: !971, flags: DIFlagPrototyped, spFlags: 0)
!1225 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1226, file: !910, line: 1205)
!1226 = !DISubprogram(name: "tgammal", scope: !907, file: !907, line: 238, type: !975, flags: DIFlagPrototyped, spFlags: 0)
!1227 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1228, file: !910, line: 1207)
!1228 = !DISubprogram(name: "trunc", scope: !907, file: !907, line: 305, type: !908, flags: DIFlagPrototyped, spFlags: 0)
!1229 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1230, file: !910, line: 1208)
!1230 = !DISubprogram(name: "truncf", scope: !907, file: !907, line: 305, type: !971, flags: DIFlagPrototyped, spFlags: 0)
!1231 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1232, file: !910, line: 1209)
!1232 = !DISubprogram(name: "truncl", scope: !907, file: !907, line: 305, type: !975, flags: DIFlagPrototyped, spFlags: 0)
!1233 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !1234, entity: !1235, file: !1236, line: 58)
!1234 = !DINamespace(name: "__gnu_debug", scope: null)
!1235 = !DINamespace(name: "__debug", scope: !2)
!1236 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/debug/debug.h", directory: "", checksumkind: CSK_MD5, checksum: "982c0103e1e5f86b0818efdfc5273c3c")
!1237 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !877, file: !1238, line: 38)
!1238 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/math.h", directory: "", checksumkind: CSK_MD5, checksum: "a990cded20a6fb8dad866460b8c40922")
!1239 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !1240, file: !1238, line: 54)
!1240 = !DISubprogram(name: "modf", linkageName: "_ZSt4modfePe", scope: !2, file: !910, line: 380, type: !1241, flags: DIFlagPrototyped, spFlags: 0)
!1241 = !DISubroutineType(types: !1242)
!1242 = !{!856, !856, !1243}
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!1244 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1245, file: !1258, line: 64)
!1245 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1246, line: 6, baseType: !1247)
!1246 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!1247 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1248, line: 21, baseType: !1249)
!1248 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!1249 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1248, line: 13, size: 64, flags: DIFlagTypePassByValue, elements: !1250, identifier: "_ZTS11__mbstate_t")
!1250 = !{!1251, !1252}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1249, file: !1248, line: 15, baseType: !13, size: 32)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1249, file: !1248, line: 20, baseType: !1253, size: 32, offset: 32)
!1253 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1249, file: !1248, line: 16, size: 32, flags: DIFlagTypePassByValue, elements: !1254, identifier: "_ZTSN11__mbstate_tUt_E")
!1254 = !{!1255, !1256}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1253, file: !1248, line: 18, baseType: !16, size: 32)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1253, file: !1248, line: 19, baseType: !1257, size: 32)
!1257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !554, size: 32, elements: !27)
!1258 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cwchar", directory: "")
!1259 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1260, file: !1258, line: 141)
!1260 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1261, line: 20, baseType: !16)
!1261 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1262 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1263, file: !1258, line: 143)
!1263 = !DISubprogram(name: "btowc", scope: !1264, file: !1264, line: 285, type: !1265, flags: DIFlagPrototyped, spFlags: 0)
!1264 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!1265 = !DISubroutineType(types: !1266)
!1266 = !{!1260, !13}
!1267 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1268, file: !1258, line: 144)
!1268 = !DISubprogram(name: "fgetwc", scope: !1264, file: !1264, line: 744, type: !1269, flags: DIFlagPrototyped, spFlags: 0)
!1269 = !DISubroutineType(types: !1270)
!1270 = !{!1260, !1271}
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !1273, line: 5, baseType: !1274)
!1273 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "72a8fe90981f484acae7c6f3dfc5c2b7")
!1274 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1275, line: 49, size: 1728, flags: DIFlagFwdDecl, identifier: "_ZTS8_IO_FILE")
!1275 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!1276 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1277, file: !1258, line: 145)
!1277 = !DISubprogram(name: "fgetws", scope: !1264, file: !1264, line: 773, type: !1278, flags: DIFlagPrototyped, spFlags: 0)
!1278 = !DISubroutineType(types: !1279)
!1279 = !{!766, !765, !13, !1280}
!1280 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1271)
!1281 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1282, file: !1258, line: 146)
!1282 = !DISubprogram(name: "fputwc", scope: !1264, file: !1264, line: 758, type: !1283, flags: DIFlagPrototyped, spFlags: 0)
!1283 = !DISubroutineType(types: !1284)
!1284 = !{!1260, !767, !1271}
!1285 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1286, file: !1258, line: 147)
!1286 = !DISubprogram(name: "fputws", scope: !1264, file: !1264, line: 780, type: !1287, flags: DIFlagPrototyped, spFlags: 0)
!1287 = !DISubroutineType(types: !1288)
!1288 = !{!13, !810, !1280}
!1289 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1290, file: !1258, line: 148)
!1290 = !DISubprogram(name: "fwide", scope: !1264, file: !1264, line: 588, type: !1291, flags: DIFlagPrototyped, spFlags: 0)
!1291 = !DISubroutineType(types: !1292)
!1292 = !{!13, !1271, !13}
!1293 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1294, file: !1258, line: 149)
!1294 = !DISubprogram(name: "fwprintf", scope: !1264, file: !1264, line: 595, type: !1295, flags: DIFlagPrototyped, spFlags: 0)
!1295 = !DISubroutineType(types: !1296)
!1296 = !{!13, !1280, !810, null}
!1297 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1298, file: !1258, line: 150)
!1298 = !DISubprogram(name: "fwscanf", linkageName: "__isoc99_fwscanf", scope: !1264, file: !1264, line: 657, type: !1295, flags: DIFlagPrototyped, spFlags: 0)
!1299 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1300, file: !1258, line: 151)
!1300 = !DISubprogram(name: "getwc", scope: !1264, file: !1264, line: 745, type: !1269, flags: DIFlagPrototyped, spFlags: 0)
!1301 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1302, file: !1258, line: 152)
!1302 = !DISubprogram(name: "getwchar", scope: !1264, file: !1264, line: 751, type: !1303, flags: DIFlagPrototyped, spFlags: 0)
!1303 = !DISubroutineType(types: !1304)
!1304 = !{!1260}
!1305 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1306, file: !1258, line: 153)
!1306 = !DISubprogram(name: "mbrlen", scope: !1264, file: !1264, line: 308, type: !1307, flags: DIFlagPrototyped, spFlags: 0)
!1307 = !DISubroutineType(types: !1308)
!1308 = !{!692, !768, !692, !1309}
!1309 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1310)
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1311 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1312, file: !1258, line: 154)
!1312 = !DISubprogram(name: "mbrtowc", scope: !1264, file: !1264, line: 297, type: !1313, flags: DIFlagPrototyped, spFlags: 0)
!1313 = !DISubroutineType(types: !1314)
!1314 = !{!692, !765, !768, !692, !1309}
!1315 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1316, file: !1258, line: 155)
!1316 = !DISubprogram(name: "mbsinit", scope: !1264, file: !1264, line: 293, type: !1317, flags: DIFlagPrototyped, spFlags: 0)
!1317 = !DISubroutineType(types: !1318)
!1318 = !{!13, !1319}
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1245)
!1321 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1322, file: !1258, line: 156)
!1322 = !DISubprogram(name: "mbsrtowcs", scope: !1264, file: !1264, line: 338, type: !1323, flags: DIFlagPrototyped, spFlags: 0)
!1323 = !DISubroutineType(types: !1324)
!1324 = !{!692, !765, !1325, !692, !1309}
!1325 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1326)
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!1327 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1328, file: !1258, line: 157)
!1328 = !DISubprogram(name: "putwc", scope: !1264, file: !1264, line: 759, type: !1283, flags: DIFlagPrototyped, spFlags: 0)
!1329 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1330, file: !1258, line: 158)
!1330 = !DISubprogram(name: "putwchar", scope: !1264, file: !1264, line: 765, type: !1331, flags: DIFlagPrototyped, spFlags: 0)
!1331 = !DISubroutineType(types: !1332)
!1332 = !{!1260, !767}
!1333 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1334, file: !1258, line: 160)
!1334 = !DISubprogram(name: "swprintf", scope: !1264, file: !1264, line: 605, type: !1335, flags: DIFlagPrototyped, spFlags: 0)
!1335 = !DISubroutineType(types: !1336)
!1336 = !{!13, !765, !692, !810, null}
!1337 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1338, file: !1258, line: 162)
!1338 = !DISubprogram(name: "swscanf", linkageName: "__isoc99_swscanf", scope: !1264, file: !1264, line: 664, type: !1339, flags: DIFlagPrototyped, spFlags: 0)
!1339 = !DISubroutineType(types: !1340)
!1340 = !{!13, !810, !810, null}
!1341 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1342, file: !1258, line: 163)
!1342 = !DISubprogram(name: "ungetwc", scope: !1264, file: !1264, line: 788, type: !1343, flags: DIFlagPrototyped, spFlags: 0)
!1343 = !DISubroutineType(types: !1344)
!1344 = !{!1260, !1260, !1271}
!1345 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1346, file: !1258, line: 164)
!1346 = !DISubprogram(name: "vfwprintf", scope: !1264, file: !1264, line: 613, type: !1347, flags: DIFlagPrototyped, spFlags: 0)
!1347 = !DISubroutineType(types: !1348)
!1348 = !{!13, !1280, !810, !1349}
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, flags: DIFlagTypePassByValue, elements: !1351, identifier: "_ZTS13__va_list_tag")
!1351 = !{!1352, !1354, !1355, !1356}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1350, file: !1353, baseType: !16, size: 32)
!1353 = !DIFile(filename: "RTTL/BVH/Builder/OnDemandBuilder.cxx", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src")
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1350, file: !1353, baseType: !16, size: 32, offset: 32)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1350, file: !1353, baseType: !691, size: 64, offset: 64)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1350, file: !1353, baseType: !691, size: 64, offset: 128)
!1357 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1358, file: !1258, line: 166)
!1358 = !DISubprogram(name: "vfwscanf", linkageName: "__isoc99_vfwscanf", scope: !1264, file: !1264, line: 711, type: !1347, flags: DIFlagPrototyped, spFlags: 0)
!1359 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1360, file: !1258, line: 169)
!1360 = !DISubprogram(name: "vswprintf", scope: !1264, file: !1264, line: 626, type: !1361, flags: DIFlagPrototyped, spFlags: 0)
!1361 = !DISubroutineType(types: !1362)
!1362 = !{!13, !765, !692, !810, !1349}
!1363 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1364, file: !1258, line: 172)
!1364 = !DISubprogram(name: "vswscanf", linkageName: "__isoc99_vswscanf", scope: !1264, file: !1264, line: 718, type: !1365, flags: DIFlagPrototyped, spFlags: 0)
!1365 = !DISubroutineType(types: !1366)
!1366 = !{!13, !810, !810, !1349}
!1367 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1368, file: !1258, line: 174)
!1368 = !DISubprogram(name: "vwprintf", scope: !1264, file: !1264, line: 621, type: !1369, flags: DIFlagPrototyped, spFlags: 0)
!1369 = !DISubroutineType(types: !1370)
!1370 = !{!13, !810, !1349}
!1371 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1372, file: !1258, line: 176)
!1372 = !DISubprogram(name: "vwscanf", linkageName: "__isoc99_vwscanf", scope: !1264, file: !1264, line: 715, type: !1369, flags: DIFlagPrototyped, spFlags: 0)
!1373 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1374, file: !1258, line: 178)
!1374 = !DISubprogram(name: "wcrtomb", scope: !1264, file: !1264, line: 302, type: !1375, flags: DIFlagPrototyped, spFlags: 0)
!1375 = !DISubroutineType(types: !1376)
!1376 = !{!692, !809, !767, !1309}
!1377 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1378, file: !1258, line: 179)
!1378 = !DISubprogram(name: "wcscat", scope: !1264, file: !1264, line: 97, type: !1379, flags: DIFlagPrototyped, spFlags: 0)
!1379 = !DISubroutineType(types: !1380)
!1380 = !{!766, !765, !810}
!1381 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1382, file: !1258, line: 180)
!1382 = !DISubprogram(name: "wcscmp", scope: !1264, file: !1264, line: 106, type: !1383, flags: DIFlagPrototyped, spFlags: 0)
!1383 = !DISubroutineType(types: !1384)
!1384 = !{!13, !811, !811}
!1385 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1386, file: !1258, line: 181)
!1386 = !DISubprogram(name: "wcscoll", scope: !1264, file: !1264, line: 131, type: !1383, flags: DIFlagPrototyped, spFlags: 0)
!1387 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1388, file: !1258, line: 182)
!1388 = !DISubprogram(name: "wcscpy", scope: !1264, file: !1264, line: 87, type: !1379, flags: DIFlagPrototyped, spFlags: 0)
!1389 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1390, file: !1258, line: 183)
!1390 = !DISubprogram(name: "wcscspn", scope: !1264, file: !1264, line: 188, type: !1391, flags: DIFlagPrototyped, spFlags: 0)
!1391 = !DISubroutineType(types: !1392)
!1392 = !{!692, !811, !811}
!1393 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1394, file: !1258, line: 184)
!1394 = !DISubprogram(name: "wcsftime", scope: !1264, file: !1264, line: 852, type: !1395, flags: DIFlagPrototyped, spFlags: 0)
!1395 = !DISubroutineType(types: !1396)
!1396 = !{!692, !765, !692, !810, !1397}
!1397 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1398)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1400)
!1400 = !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !1264, line: 83, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS2tm")
!1401 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1402, file: !1258, line: 185)
!1402 = !DISubprogram(name: "wcslen", scope: !1264, file: !1264, line: 223, type: !1403, flags: DIFlagPrototyped, spFlags: 0)
!1403 = !DISubroutineType(types: !1404)
!1404 = !{!692, !811}
!1405 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1406, file: !1258, line: 186)
!1406 = !DISubprogram(name: "wcsncat", scope: !1264, file: !1264, line: 101, type: !1407, flags: DIFlagPrototyped, spFlags: 0)
!1407 = !DISubroutineType(types: !1408)
!1408 = !{!766, !765, !810, !692}
!1409 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1410, file: !1258, line: 187)
!1410 = !DISubprogram(name: "wcsncmp", scope: !1264, file: !1264, line: 109, type: !1411, flags: DIFlagPrototyped, spFlags: 0)
!1411 = !DISubroutineType(types: !1412)
!1412 = !{!13, !811, !811, !692}
!1413 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1414, file: !1258, line: 188)
!1414 = !DISubprogram(name: "wcsncpy", scope: !1264, file: !1264, line: 92, type: !1407, flags: DIFlagPrototyped, spFlags: 0)
!1415 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1416, file: !1258, line: 189)
!1416 = !DISubprogram(name: "wcsrtombs", scope: !1264, file: !1264, line: 344, type: !1417, flags: DIFlagPrototyped, spFlags: 0)
!1417 = !DISubroutineType(types: !1418)
!1418 = !{!692, !809, !1419, !692, !1309}
!1419 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1420)
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!1421 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1422, file: !1258, line: 190)
!1422 = !DISubprogram(name: "wcsspn", scope: !1264, file: !1264, line: 192, type: !1391, flags: DIFlagPrototyped, spFlags: 0)
!1423 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1424, file: !1258, line: 191)
!1424 = !DISubprogram(name: "wcstod", scope: !1264, file: !1264, line: 378, type: !1425, flags: DIFlagPrototyped, spFlags: 0)
!1425 = !DISubroutineType(types: !1426)
!1426 = !{!706, !810, !1427}
!1427 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1428)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!1429 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1430, file: !1258, line: 193)
!1430 = !DISubprogram(name: "wcstof", scope: !1264, file: !1264, line: 383, type: !1431, flags: DIFlagPrototyped, spFlags: 0)
!1431 = !DISubroutineType(types: !1432)
!1432 = !{!15, !810, !1427}
!1433 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1434, file: !1258, line: 195)
!1434 = !DISubprogram(name: "wcstok", scope: !1264, file: !1264, line: 218, type: !1435, flags: DIFlagPrototyped, spFlags: 0)
!1435 = !DISubroutineType(types: !1436)
!1436 = !{!766, !765, !810, !1427}
!1437 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1438, file: !1258, line: 196)
!1438 = !DISubprogram(name: "wcstol", scope: !1264, file: !1264, line: 429, type: !1439, flags: DIFlagPrototyped, spFlags: 0)
!1439 = !DISubroutineType(types: !1440)
!1440 = !{!681, !810, !1427, !13}
!1441 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1442, file: !1258, line: 197)
!1442 = !DISubprogram(name: "wcstoul", scope: !1264, file: !1264, line: 434, type: !1443, flags: DIFlagPrototyped, spFlags: 0)
!1443 = !DISubroutineType(types: !1444)
!1444 = !{!694, !810, !1427, !13}
!1445 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1446, file: !1258, line: 198)
!1446 = !DISubprogram(name: "wcsxfrm", scope: !1264, file: !1264, line: 135, type: !1447, flags: DIFlagPrototyped, spFlags: 0)
!1447 = !DISubroutineType(types: !1448)
!1448 = !{!692, !765, !810, !692}
!1449 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1450, file: !1258, line: 199)
!1450 = !DISubprogram(name: "wctob", scope: !1264, file: !1264, line: 289, type: !1451, flags: DIFlagPrototyped, spFlags: 0)
!1451 = !DISubroutineType(types: !1452)
!1452 = !{!13, !1260}
!1453 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1454, file: !1258, line: 200)
!1454 = !DISubprogram(name: "wmemcmp", scope: !1264, file: !1264, line: 259, type: !1411, flags: DIFlagPrototyped, spFlags: 0)
!1455 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1456, file: !1258, line: 201)
!1456 = !DISubprogram(name: "wmemcpy", scope: !1264, file: !1264, line: 263, type: !1407, flags: DIFlagPrototyped, spFlags: 0)
!1457 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1458, file: !1258, line: 202)
!1458 = !DISubprogram(name: "wmemmove", scope: !1264, file: !1264, line: 268, type: !1459, flags: DIFlagPrototyped, spFlags: 0)
!1459 = !DISubroutineType(types: !1460)
!1460 = !{!766, !766, !811, !692}
!1461 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1462, file: !1258, line: 203)
!1462 = !DISubprogram(name: "wmemset", scope: !1264, file: !1264, line: 272, type: !1463, flags: DIFlagPrototyped, spFlags: 0)
!1463 = !DISubroutineType(types: !1464)
!1464 = !{!766, !766, !767, !692}
!1465 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1466, file: !1258, line: 204)
!1466 = !DISubprogram(name: "wprintf", scope: !1264, file: !1264, line: 602, type: !1467, flags: DIFlagPrototyped, spFlags: 0)
!1467 = !DISubroutineType(types: !1468)
!1468 = !{!13, !810, null}
!1469 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1470, file: !1258, line: 205)
!1470 = !DISubprogram(name: "wscanf", linkageName: "__isoc99_wscanf", scope: !1264, file: !1264, line: 661, type: !1467, flags: DIFlagPrototyped, spFlags: 0)
!1471 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1472, file: !1258, line: 206)
!1472 = !DISubprogram(name: "wcschr", scope: !1264, file: !1264, line: 165, type: !1473, flags: DIFlagPrototyped, spFlags: 0)
!1473 = !DISubroutineType(types: !1474)
!1474 = !{!766, !811, !767}
!1475 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1476, file: !1258, line: 207)
!1476 = !DISubprogram(name: "wcspbrk", scope: !1264, file: !1264, line: 202, type: !1477, flags: DIFlagPrototyped, spFlags: 0)
!1477 = !DISubroutineType(types: !1478)
!1478 = !{!766, !811, !811}
!1479 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1480, file: !1258, line: 208)
!1480 = !DISubprogram(name: "wcsrchr", scope: !1264, file: !1264, line: 175, type: !1473, flags: DIFlagPrototyped, spFlags: 0)
!1481 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1482, file: !1258, line: 209)
!1482 = !DISubprogram(name: "wcsstr", scope: !1264, file: !1264, line: 213, type: !1477, flags: DIFlagPrototyped, spFlags: 0)
!1483 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1484, file: !1258, line: 210)
!1484 = !DISubprogram(name: "wmemchr", scope: !1264, file: !1264, line: 254, type: !1485, flags: DIFlagPrototyped, spFlags: 0)
!1485 = !DISubroutineType(types: !1486)
!1486 = !{!766, !811, !767, !692}
!1487 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !818, entity: !1488, file: !1258, line: 251)
!1488 = !DISubprogram(name: "wcstold", scope: !1264, file: !1264, line: 385, type: !1489, flags: DIFlagPrototyped, spFlags: 0)
!1489 = !DISubroutineType(types: !1490)
!1490 = !{!856, !810, !1427}
!1491 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !818, entity: !1492, file: !1258, line: 260)
!1492 = !DISubprogram(name: "wcstoll", scope: !1264, file: !1264, line: 442, type: !1493, flags: DIFlagPrototyped, spFlags: 0)
!1493 = !DISubroutineType(types: !1494)
!1494 = !{!823, !810, !1427, !13}
!1495 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !818, entity: !1496, file: !1258, line: 261)
!1496 = !DISubprogram(name: "wcstoull", scope: !1264, file: !1264, line: 449, type: !1497, flags: DIFlagPrototyped, spFlags: 0)
!1497 = !DISubroutineType(types: !1498)
!1498 = !{!847, !810, !1427, !13}
!1499 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1488, file: !1258, line: 267)
!1500 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1492, file: !1258, line: 268)
!1501 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1496, file: !1258, line: 269)
!1502 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1430, file: !1258, line: 283)
!1503 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1358, file: !1258, line: 286)
!1504 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1364, file: !1258, line: 289)
!1505 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1372, file: !1258, line: 292)
!1506 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1488, file: !1258, line: 296)
!1507 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1492, file: !1258, line: 297)
!1508 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1496, file: !1258, line: 298)
!1509 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1510, file: !1511, line: 68)
!1510 = !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !1512, file: !1511, line: 90, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!1511 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/exception_ptr.h", directory: "", checksumkind: CSK_MD5, checksum: "ed433011c81450fc2dabd9aa8a29a038")
!1512 = !DINamespace(name: "__exception_ptr", scope: !2)
!1513 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !1512, entity: !1514, file: !1511, line: 84)
!1514 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !2, file: !1511, line: 80, type: !1515, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!1515 = !DISubroutineType(types: !1516)
!1516 = !{null, !1510}
!1517 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1518, file: !1522, line: 47)
!1518 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !1519, line: 24, baseType: !1520)
!1519 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!1520 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !1521, line: 37, baseType: !537)
!1521 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!1522 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cstdint", directory: "")
!1523 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1524, file: !1522, line: 48)
!1524 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !1519, line: 25, baseType: !1525)
!1525 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !1521, line: 39, baseType: !559)
!1526 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1527, file: !1522, line: 49)
!1527 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !1519, line: 26, baseType: !1528)
!1528 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !1521, line: 41, baseType: !13)
!1529 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1530, file: !1522, line: 50)
!1530 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !1519, line: 27, baseType: !1531)
!1531 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !1521, line: 44, baseType: !681)
!1532 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1533, file: !1522, line: 52)
!1533 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !1534, line: 58, baseType: !537)
!1534 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!1535 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1536, file: !1522, line: 53)
!1536 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !1534, line: 60, baseType: !681)
!1537 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1538, file: !1522, line: 54)
!1538 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !1534, line: 61, baseType: !681)
!1539 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1540, file: !1522, line: 55)
!1540 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !1534, line: 62, baseType: !681)
!1541 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1542, file: !1522, line: 57)
!1542 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !1534, line: 43, baseType: !1543)
!1543 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least8_t", file: !1521, line: 52, baseType: !1520)
!1544 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1545, file: !1522, line: 58)
!1545 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !1534, line: 44, baseType: !1546)
!1546 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least16_t", file: !1521, line: 54, baseType: !1525)
!1547 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1548, file: !1522, line: 59)
!1548 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !1534, line: 45, baseType: !1549)
!1549 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least32_t", file: !1521, line: 56, baseType: !1528)
!1550 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1551, file: !1522, line: 60)
!1551 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !1534, line: 46, baseType: !1552)
!1552 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least64_t", file: !1521, line: 58, baseType: !1531)
!1553 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1554, file: !1522, line: 62)
!1554 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !1534, line: 101, baseType: !1555)
!1555 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1521, line: 72, baseType: !681)
!1556 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1557, file: !1522, line: 63)
!1557 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !1534, line: 87, baseType: !681)
!1558 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1559, file: !1522, line: 65)
!1559 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !1560, line: 24, baseType: !1561)
!1560 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!1561 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !1521, line: 38, baseType: !385)
!1562 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1563, file: !1522, line: 66)
!1563 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !1560, line: 25, baseType: !1564)
!1564 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !1521, line: 40, baseType: !402)
!1565 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1566, file: !1522, line: 67)
!1566 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !1560, line: 26, baseType: !1567)
!1567 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !1521, line: 42, baseType: !16)
!1568 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1569, file: !1522, line: 68)
!1569 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !1560, line: 27, baseType: !1570)
!1570 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !1521, line: 45, baseType: !694)
!1571 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1572, file: !1522, line: 70)
!1572 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !1534, line: 71, baseType: !385)
!1573 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1574, file: !1522, line: 71)
!1574 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !1534, line: 73, baseType: !694)
!1575 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1576, file: !1522, line: 72)
!1576 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !1534, line: 74, baseType: !694)
!1577 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1578, file: !1522, line: 73)
!1578 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !1534, line: 75, baseType: !694)
!1579 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1580, file: !1522, line: 75)
!1580 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !1534, line: 49, baseType: !1581)
!1581 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least8_t", file: !1521, line: 53, baseType: !1561)
!1582 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1583, file: !1522, line: 76)
!1583 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !1534, line: 50, baseType: !1584)
!1584 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least16_t", file: !1521, line: 55, baseType: !1564)
!1585 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1586, file: !1522, line: 77)
!1586 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !1534, line: 51, baseType: !1587)
!1587 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !1521, line: 57, baseType: !1567)
!1588 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1589, file: !1522, line: 78)
!1589 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !1534, line: 52, baseType: !1590)
!1590 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least64_t", file: !1521, line: 59, baseType: !1570)
!1591 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1592, file: !1522, line: 80)
!1592 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1534, line: 102, baseType: !1593)
!1593 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1521, line: 73, baseType: !694)
!1594 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1595, file: !1522, line: 81)
!1595 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !1534, line: 90, baseType: !694)
!1596 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1597, file: !1599, line: 53)
!1597 = !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !1598, line: 51, size: 768, flags: DIFlagFwdDecl, identifier: "_ZTS5lconv")
!1598 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1599 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/clocale", directory: "")
!1600 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1601, file: !1599, line: 54)
!1601 = !DISubprogram(name: "setlocale", scope: !1598, file: !1598, line: 122, type: !1602, flags: DIFlagPrototyped, spFlags: 0)
!1602 = !DISubroutineType(types: !1603)
!1603 = !{!744, !13, !707}
!1604 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1605, file: !1599, line: 55)
!1605 = !DISubprogram(name: "localeconv", scope: !1598, file: !1598, line: 125, type: !1606, flags: DIFlagPrototyped, spFlags: 0)
!1606 = !DISubroutineType(types: !1607)
!1607 = !{!1608}
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1609 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1610, file: !1612, line: 64)
!1610 = !DISubprogram(name: "isalnum", scope: !1611, file: !1611, line: 108, type: !669, flags: DIFlagPrototyped, spFlags: 0)
!1611 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!1612 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cctype", directory: "")
!1613 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1614, file: !1612, line: 65)
!1614 = !DISubprogram(name: "isalpha", scope: !1611, file: !1611, line: 109, type: !669, flags: DIFlagPrototyped, spFlags: 0)
!1615 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1616, file: !1612, line: 66)
!1616 = !DISubprogram(name: "iscntrl", scope: !1611, file: !1611, line: 110, type: !669, flags: DIFlagPrototyped, spFlags: 0)
!1617 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1618, file: !1612, line: 67)
!1618 = !DISubprogram(name: "isdigit", scope: !1611, file: !1611, line: 111, type: !669, flags: DIFlagPrototyped, spFlags: 0)
!1619 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1620, file: !1612, line: 68)
!1620 = !DISubprogram(name: "isgraph", scope: !1611, file: !1611, line: 113, type: !669, flags: DIFlagPrototyped, spFlags: 0)
!1621 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1622, file: !1612, line: 69)
!1622 = !DISubprogram(name: "islower", scope: !1611, file: !1611, line: 112, type: !669, flags: DIFlagPrototyped, spFlags: 0)
!1623 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1624, file: !1612, line: 70)
!1624 = !DISubprogram(name: "isprint", scope: !1611, file: !1611, line: 114, type: !669, flags: DIFlagPrototyped, spFlags: 0)
!1625 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1626, file: !1612, line: 71)
!1626 = !DISubprogram(name: "ispunct", scope: !1611, file: !1611, line: 115, type: !669, flags: DIFlagPrototyped, spFlags: 0)
!1627 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1628, file: !1612, line: 72)
!1628 = !DISubprogram(name: "isspace", scope: !1611, file: !1611, line: 116, type: !669, flags: DIFlagPrototyped, spFlags: 0)
!1629 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1630, file: !1612, line: 73)
!1630 = !DISubprogram(name: "isupper", scope: !1611, file: !1611, line: 117, type: !669, flags: DIFlagPrototyped, spFlags: 0)
!1631 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1632, file: !1612, line: 74)
!1632 = !DISubprogram(name: "isxdigit", scope: !1611, file: !1611, line: 118, type: !669, flags: DIFlagPrototyped, spFlags: 0)
!1633 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1634, file: !1612, line: 75)
!1634 = !DISubprogram(name: "tolower", scope: !1611, file: !1611, line: 122, type: !669, flags: DIFlagPrototyped, spFlags: 0)
!1635 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1636, file: !1612, line: 76)
!1636 = !DISubprogram(name: "toupper", scope: !1611, file: !1611, line: 125, type: !669, flags: DIFlagPrototyped, spFlags: 0)
!1637 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1638, file: !1612, line: 87)
!1638 = !DISubprogram(name: "isblank", scope: !1611, file: !1611, line: 130, type: !669, flags: DIFlagPrototyped, spFlags: 0)
!1639 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1640, file: !1642, line: 98)
!1640 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1641, line: 7, baseType: !1274)
!1641 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!1642 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cstdio", directory: "")
!1643 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1644, file: !1642, line: 99)
!1644 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !1645, line: 84, baseType: !1646)
!1645 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!1646 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fpos_t", file: !1647, line: 14, baseType: !1648)
!1647 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h", directory: "", checksumkind: CSK_MD5, checksum: "32de8bdaf3551a6c0a9394f9af4389ce")
!1648 = !DICompositeType(tag: DW_TAG_structure_type, name: "_G_fpos_t", file: !1647, line: 10, size: 128, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
!1649 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1650, file: !1642, line: 101)
!1650 = !DISubprogram(name: "clearerr", scope: !1645, file: !1645, line: 786, type: !1651, flags: DIFlagPrototyped, spFlags: 0)
!1651 = !DISubroutineType(types: !1652)
!1652 = !{null, !1653}
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1654 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1655, file: !1642, line: 102)
!1655 = !DISubprogram(name: "fclose", scope: !1645, file: !1645, line: 178, type: !1656, flags: DIFlagPrototyped, spFlags: 0)
!1656 = !DISubroutineType(types: !1657)
!1657 = !{!13, !1653}
!1658 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1659, file: !1642, line: 103)
!1659 = !DISubprogram(name: "feof", scope: !1645, file: !1645, line: 788, type: !1656, flags: DIFlagPrototyped, spFlags: 0)
!1660 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1661, file: !1642, line: 104)
!1661 = !DISubprogram(name: "ferror", scope: !1645, file: !1645, line: 790, type: !1656, flags: DIFlagPrototyped, spFlags: 0)
!1662 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1663, file: !1642, line: 105)
!1663 = !DISubprogram(name: "fflush", scope: !1645, file: !1645, line: 230, type: !1656, flags: DIFlagPrototyped, spFlags: 0)
!1664 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1665, file: !1642, line: 106)
!1665 = !DISubprogram(name: "fgetc", scope: !1645, file: !1645, line: 513, type: !1656, flags: DIFlagPrototyped, spFlags: 0)
!1666 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1667, file: !1642, line: 107)
!1667 = !DISubprogram(name: "fgetpos", scope: !1645, file: !1645, line: 760, type: !1668, flags: DIFlagPrototyped, spFlags: 0)
!1668 = !DISubroutineType(types: !1669)
!1669 = !{!13, !1670, !1671}
!1670 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1653)
!1671 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1672)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1673 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1674, file: !1642, line: 108)
!1674 = !DISubprogram(name: "fgets", scope: !1645, file: !1645, line: 592, type: !1675, flags: DIFlagPrototyped, spFlags: 0)
!1675 = !DISubroutineType(types: !1676)
!1676 = !{!744, !809, !13, !1670}
!1677 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1678, file: !1642, line: 109)
!1678 = !DISubprogram(name: "fopen", scope: !1645, file: !1645, line: 258, type: !1679, flags: DIFlagPrototyped, spFlags: 0)
!1679 = !DISubroutineType(types: !1680)
!1680 = !{!1653, !768, !768}
!1681 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1682, file: !1642, line: 110)
!1682 = !DISubprogram(name: "fprintf", scope: !1645, file: !1645, line: 350, type: !1683, flags: DIFlagPrototyped, spFlags: 0)
!1683 = !DISubroutineType(types: !1684)
!1684 = !{!13, !1670, !768, null}
!1685 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1686, file: !1642, line: 111)
!1686 = !DISubprogram(name: "fputc", scope: !1645, file: !1645, line: 549, type: !1687, flags: DIFlagPrototyped, spFlags: 0)
!1687 = !DISubroutineType(types: !1688)
!1688 = !{!13, !13, !1653}
!1689 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1690, file: !1642, line: 112)
!1690 = !DISubprogram(name: "fputs", scope: !1645, file: !1645, line: 655, type: !1691, flags: DIFlagPrototyped, spFlags: 0)
!1691 = !DISubroutineType(types: !1692)
!1692 = !{!13, !768, !1670}
!1693 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1694, file: !1642, line: 113)
!1694 = !DISubprogram(name: "fread", scope: !1645, file: !1645, line: 675, type: !1695, flags: DIFlagPrototyped, spFlags: 0)
!1695 = !DISubroutineType(types: !1696)
!1696 = !{!692, !1697, !692, !692, !1670}
!1697 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !691)
!1698 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1699, file: !1642, line: 114)
!1699 = !DISubprogram(name: "freopen", scope: !1645, file: !1645, line: 265, type: !1700, flags: DIFlagPrototyped, spFlags: 0)
!1700 = !DISubroutineType(types: !1701)
!1701 = !{!1653, !768, !768, !1670}
!1702 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1703, file: !1642, line: 115)
!1703 = !DISubprogram(name: "fscanf", linkageName: "__isoc99_fscanf", scope: !1645, file: !1645, line: 434, type: !1683, flags: DIFlagPrototyped, spFlags: 0)
!1704 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1705, file: !1642, line: 116)
!1705 = !DISubprogram(name: "fseek", scope: !1645, file: !1645, line: 713, type: !1706, flags: DIFlagPrototyped, spFlags: 0)
!1706 = !DISubroutineType(types: !1707)
!1707 = !{!13, !1653, !681, !13}
!1708 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1709, file: !1642, line: 117)
!1709 = !DISubprogram(name: "fsetpos", scope: !1645, file: !1645, line: 765, type: !1710, flags: DIFlagPrototyped, spFlags: 0)
!1710 = !DISubroutineType(types: !1711)
!1711 = !{!13, !1653, !1712}
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1644)
!1714 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1715, file: !1642, line: 118)
!1715 = !DISubprogram(name: "ftell", scope: !1645, file: !1645, line: 718, type: !1716, flags: DIFlagPrototyped, spFlags: 0)
!1716 = !DISubroutineType(types: !1717)
!1717 = !{!681, !1653}
!1718 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1719, file: !1642, line: 119)
!1719 = !DISubprogram(name: "fwrite", scope: !1645, file: !1645, line: 681, type: !1720, flags: DIFlagPrototyped, spFlags: 0)
!1720 = !DISubroutineType(types: !1721)
!1721 = !{!692, !1722, !692, !692, !1670}
!1722 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !720)
!1723 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1724, file: !1642, line: 120)
!1724 = !DISubprogram(name: "getc", scope: !1645, file: !1645, line: 514, type: !1656, flags: DIFlagPrototyped, spFlags: 0)
!1725 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1726, file: !1642, line: 121)
!1726 = !DISubprogram(name: "getchar", scope: !1645, file: !1645, line: 520, type: !114, flags: DIFlagPrototyped, spFlags: 0)
!1727 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1728, file: !1642, line: 126)
!1728 = !DISubprogram(name: "perror", scope: !1645, file: !1645, line: 804, type: !1729, flags: DIFlagPrototyped, spFlags: 0)
!1729 = !DISubroutineType(types: !1730)
!1730 = !{null, !707}
!1731 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1732, file: !1642, line: 127)
!1732 = !DISubprogram(name: "printf", scope: !1645, file: !1645, line: 356, type: !1733, flags: DIFlagPrototyped, spFlags: 0)
!1733 = !DISubroutineType(types: !1734)
!1734 = !{!13, !768, null}
!1735 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1736, file: !1642, line: 128)
!1736 = !DISubprogram(name: "putc", scope: !1645, file: !1645, line: 550, type: !1687, flags: DIFlagPrototyped, spFlags: 0)
!1737 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1738, file: !1642, line: 129)
!1738 = !DISubprogram(name: "putchar", scope: !1645, file: !1645, line: 556, type: !669, flags: DIFlagPrototyped, spFlags: 0)
!1739 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1740, file: !1642, line: 130)
!1740 = !DISubprogram(name: "puts", scope: !1645, file: !1645, line: 661, type: !710, flags: DIFlagPrototyped, spFlags: 0)
!1741 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1742, file: !1642, line: 131)
!1742 = !DISubprogram(name: "remove", scope: !1645, file: !1645, line: 152, type: !710, flags: DIFlagPrototyped, spFlags: 0)
!1743 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1744, file: !1642, line: 132)
!1744 = !DISubprogram(name: "rename", scope: !1645, file: !1645, line: 154, type: !1745, flags: DIFlagPrototyped, spFlags: 0)
!1745 = !DISubroutineType(types: !1746)
!1746 = !{!13, !707, !707}
!1747 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1748, file: !1642, line: 133)
!1748 = !DISubprogram(name: "rewind", scope: !1645, file: !1645, line: 723, type: !1651, flags: DIFlagPrototyped, spFlags: 0)
!1749 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1750, file: !1642, line: 134)
!1750 = !DISubprogram(name: "scanf", linkageName: "__isoc99_scanf", scope: !1645, file: !1645, line: 437, type: !1733, flags: DIFlagPrototyped, spFlags: 0)
!1751 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1752, file: !1642, line: 135)
!1752 = !DISubprogram(name: "setbuf", scope: !1645, file: !1645, line: 328, type: !1753, flags: DIFlagPrototyped, spFlags: 0)
!1753 = !DISubroutineType(types: !1754)
!1754 = !{null, !1670, !809}
!1755 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1756, file: !1642, line: 136)
!1756 = !DISubprogram(name: "setvbuf", scope: !1645, file: !1645, line: 332, type: !1757, flags: DIFlagPrototyped, spFlags: 0)
!1757 = !DISubroutineType(types: !1758)
!1758 = !{!13, !1670, !809, !13, !692}
!1759 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1760, file: !1642, line: 137)
!1760 = !DISubprogram(name: "sprintf", scope: !1645, file: !1645, line: 358, type: !1761, flags: DIFlagPrototyped, spFlags: 0)
!1761 = !DISubroutineType(types: !1762)
!1762 = !{!13, !809, !768, null}
!1763 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1764, file: !1642, line: 138)
!1764 = !DISubprogram(name: "sscanf", linkageName: "__isoc99_sscanf", scope: !1645, file: !1645, line: 439, type: !1765, flags: DIFlagPrototyped, spFlags: 0)
!1765 = !DISubroutineType(types: !1766)
!1766 = !{!13, !768, !768, null}
!1767 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1768, file: !1642, line: 139)
!1768 = !DISubprogram(name: "tmpfile", scope: !1645, file: !1645, line: 188, type: !1769, flags: DIFlagPrototyped, spFlags: 0)
!1769 = !DISubroutineType(types: !1770)
!1770 = !{!1653}
!1771 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1772, file: !1642, line: 141)
!1772 = !DISubprogram(name: "tmpnam", scope: !1645, file: !1645, line: 205, type: !1773, flags: DIFlagPrototyped, spFlags: 0)
!1773 = !DISubroutineType(types: !1774)
!1774 = !{!744, !744}
!1775 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1776, file: !1642, line: 143)
!1776 = !DISubprogram(name: "ungetc", scope: !1645, file: !1645, line: 668, type: !1687, flags: DIFlagPrototyped, spFlags: 0)
!1777 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1778, file: !1642, line: 144)
!1778 = !DISubprogram(name: "vfprintf", scope: !1645, file: !1645, line: 365, type: !1779, flags: DIFlagPrototyped, spFlags: 0)
!1779 = !DISubroutineType(types: !1780)
!1780 = !{!13, !1670, !768, !1349}
!1781 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1782, file: !1642, line: 145)
!1782 = !DISubprogram(name: "vprintf", scope: !1645, file: !1645, line: 371, type: !1783, flags: DIFlagPrototyped, spFlags: 0)
!1783 = !DISubroutineType(types: !1784)
!1784 = !{!13, !768, !1349}
!1785 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1786, file: !1642, line: 146)
!1786 = !DISubprogram(name: "vsprintf", scope: !1645, file: !1645, line: 373, type: !1787, flags: DIFlagPrototyped, spFlags: 0)
!1787 = !DISubroutineType(types: !1788)
!1788 = !{!13, !809, !768, !1349}
!1789 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !818, entity: !1790, file: !1642, line: 175)
!1790 = !DISubprogram(name: "snprintf", scope: !1645, file: !1645, line: 378, type: !1791, flags: DIFlagPrototyped, spFlags: 0)
!1791 = !DISubroutineType(types: !1792)
!1792 = !{!13, !809, !692, !768, null}
!1793 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !818, entity: !1794, file: !1642, line: 176)
!1794 = !DISubprogram(name: "vfscanf", linkageName: "__isoc99_vfscanf", scope: !1645, file: !1645, line: 479, type: !1779, flags: DIFlagPrototyped, spFlags: 0)
!1795 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !818, entity: !1796, file: !1642, line: 177)
!1796 = !DISubprogram(name: "vscanf", linkageName: "__isoc99_vscanf", scope: !1645, file: !1645, line: 484, type: !1783, flags: DIFlagPrototyped, spFlags: 0)
!1797 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !818, entity: !1798, file: !1642, line: 178)
!1798 = !DISubprogram(name: "vsnprintf", scope: !1645, file: !1645, line: 382, type: !1799, flags: DIFlagPrototyped, spFlags: 0)
!1799 = !DISubroutineType(types: !1800)
!1800 = !{!13, !809, !692, !768, !1349}
!1801 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !818, entity: !1802, file: !1642, line: 179)
!1802 = !DISubprogram(name: "vsscanf", linkageName: "__isoc99_vsscanf", scope: !1645, file: !1645, line: 487, type: !1803, flags: DIFlagPrototyped, spFlags: 0)
!1803 = !DISubroutineType(types: !1804)
!1804 = !{!13, !768, !768, !1349}
!1805 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1790, file: !1642, line: 185)
!1806 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1794, file: !1642, line: 186)
!1807 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1796, file: !1642, line: 187)
!1808 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1798, file: !1642, line: 188)
!1809 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1802, file: !1642, line: 189)
!1810 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1811, file: !1815, line: 82)
!1811 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctrans_t", file: !1812, line: 48, baseType: !1813)
!1812 = !DIFile(filename: "/usr/include/wctype.h", directory: "", checksumkind: CSK_MD5, checksum: "9bcd8e8b8cd2078c8a6c42e262af7d7b")
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1528)
!1815 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cwctype", directory: "")
!1816 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1817, file: !1815, line: 83)
!1817 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctype_t", file: !1818, line: 38, baseType: !694)
!1818 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!1819 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1260, file: !1815, line: 84)
!1820 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1821, file: !1815, line: 86)
!1821 = !DISubprogram(name: "iswalnum", scope: !1818, file: !1818, line: 95, type: !1451, flags: DIFlagPrototyped, spFlags: 0)
!1822 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1823, file: !1815, line: 87)
!1823 = !DISubprogram(name: "iswalpha", scope: !1818, file: !1818, line: 101, type: !1451, flags: DIFlagPrototyped, spFlags: 0)
!1824 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1825, file: !1815, line: 89)
!1825 = !DISubprogram(name: "iswblank", scope: !1818, file: !1818, line: 146, type: !1451, flags: DIFlagPrototyped, spFlags: 0)
!1826 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1827, file: !1815, line: 91)
!1827 = !DISubprogram(name: "iswcntrl", scope: !1818, file: !1818, line: 104, type: !1451, flags: DIFlagPrototyped, spFlags: 0)
!1828 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1829, file: !1815, line: 92)
!1829 = !DISubprogram(name: "iswctype", scope: !1818, file: !1818, line: 159, type: !1830, flags: DIFlagPrototyped, spFlags: 0)
!1830 = !DISubroutineType(types: !1831)
!1831 = !{!13, !1260, !1817}
!1832 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1833, file: !1815, line: 93)
!1833 = !DISubprogram(name: "iswdigit", scope: !1818, file: !1818, line: 108, type: !1451, flags: DIFlagPrototyped, spFlags: 0)
!1834 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1835, file: !1815, line: 94)
!1835 = !DISubprogram(name: "iswgraph", scope: !1818, file: !1818, line: 112, type: !1451, flags: DIFlagPrototyped, spFlags: 0)
!1836 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1837, file: !1815, line: 95)
!1837 = !DISubprogram(name: "iswlower", scope: !1818, file: !1818, line: 117, type: !1451, flags: DIFlagPrototyped, spFlags: 0)
!1838 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1839, file: !1815, line: 96)
!1839 = !DISubprogram(name: "iswprint", scope: !1818, file: !1818, line: 120, type: !1451, flags: DIFlagPrototyped, spFlags: 0)
!1840 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1841, file: !1815, line: 97)
!1841 = !DISubprogram(name: "iswpunct", scope: !1818, file: !1818, line: 125, type: !1451, flags: DIFlagPrototyped, spFlags: 0)
!1842 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1843, file: !1815, line: 98)
!1843 = !DISubprogram(name: "iswspace", scope: !1818, file: !1818, line: 130, type: !1451, flags: DIFlagPrototyped, spFlags: 0)
!1844 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1845, file: !1815, line: 99)
!1845 = !DISubprogram(name: "iswupper", scope: !1818, file: !1818, line: 135, type: !1451, flags: DIFlagPrototyped, spFlags: 0)
!1846 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1847, file: !1815, line: 100)
!1847 = !DISubprogram(name: "iswxdigit", scope: !1818, file: !1818, line: 140, type: !1451, flags: DIFlagPrototyped, spFlags: 0)
!1848 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1849, file: !1815, line: 101)
!1849 = !DISubprogram(name: "towctrans", scope: !1812, file: !1812, line: 55, type: !1850, flags: DIFlagPrototyped, spFlags: 0)
!1850 = !DISubroutineType(types: !1851)
!1851 = !{!1260, !1260, !1811}
!1852 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1853, file: !1815, line: 102)
!1853 = !DISubprogram(name: "towlower", scope: !1818, file: !1818, line: 166, type: !1854, flags: DIFlagPrototyped, spFlags: 0)
!1854 = !DISubroutineType(types: !1855)
!1855 = !{!1260, !1260}
!1856 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1857, file: !1815, line: 103)
!1857 = !DISubprogram(name: "towupper", scope: !1818, file: !1818, line: 169, type: !1854, flags: DIFlagPrototyped, spFlags: 0)
!1858 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1859, file: !1815, line: 104)
!1859 = !DISubprogram(name: "wctrans", scope: !1812, file: !1812, line: 52, type: !1860, flags: DIFlagPrototyped, spFlags: 0)
!1860 = !DISubroutineType(types: !1861)
!1861 = !{!1811, !707}
!1862 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1863, file: !1815, line: 105)
!1863 = !DISubprogram(name: "wctype", scope: !1818, file: !1818, line: 155, type: !1864, flags: DIFlagPrototyped, spFlags: 0)
!1864 = !DISubroutineType(types: !1865)
!1865 = !{!1817, !707}
!1866 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !9, entity: !2, file: !1867, line: 70)
!1867 = !DIFile(filename: "RTTL/BVH/Builder/../../common/RTInclude.hxx", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src", checksumkind: CSK_MD5, checksum: "735b2b9337cd60438b3f1c6b71b217f1")
!1868 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !9, entity: !2, file: !35, line: 7)
!1869 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !9, entity: !20, file: !1870, line: 10)
!1870 = !DIFile(filename: "RTTL/BVH/Builder/../../Triangle/Triangle.hxx", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src", checksumkind: CSK_MD5, checksum: "5520012dde959a8e77b0f8f6df2de19f")
!1871 = !DIFile(filename: "RTTL/common/RTSSE.hxx", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src", checksumkind: CSK_MD5, checksum: "bbd5737e46ece2f5710eab9b8aad1d25")
!1872 = !{i32 7, !"Dwarf Version", i32 5}
!1873 = !{i32 2, !"Debug Info Version", i32 3}
!1874 = !{i32 1, !"wchar_size", i32 4}
!1875 = !{i32 8, !"PIC Level", i32 2}
!1876 = !{i32 7, !"PIE Level", i32 2}
!1877 = !{i32 7, !"uwtable", i32 2}
!1878 = !{i32 7, !"frame-pointer", i32 2}
!1879 = !{!"clang version 16.0.0"}
!1880 = distinct !DISubprogram(name: "__cxx_global_var_init", scope: !1353, file: !1353, type: !685, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !1881)
!1881 = !{}
!1882 = !DILocation(line: 74, column: 25, scope: !1883)
!1883 = !DILexicalBlockFile(scope: !1880, file: !3, discriminator: 0)
!1884 = !DILocation(line: 0, scope: !1880)
!1885 = distinct !DISubprogram(name: "__cxx_global_var_init.1", scope: !1353, file: !1353, type: !685, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !1881)
!1886 = !DILocalVariable(name: "a", arg: 1, scope: !1887, file: !23, line: 622, type: !15)
!1887 = distinct !DISubprogram(name: "_mm_set_ps1", linkageName: "_ZL11_mm_set_ps1f", scope: !23, file: !23, line: 622, type: !1888, scopeLine: 622, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !1881)
!1888 = !DISubroutineType(types: !1889)
!1889 = !{!317, !15}
!1890 = !DILocation(line: 622, column: 40, scope: !1887, inlinedAt: !1891)
!1891 = distinct !DILocation(line: 38, column: 31, scope: !1892)
!1892 = !DILexicalBlockFile(scope: !1885, file: !1871, discriminator: 0)
!1893 = !DILocalVariable(name: "result", scope: !1887, file: !23, line: 623, type: !317)
!1894 = !DILocation(line: 623, column: 11, scope: !1887, inlinedAt: !1891)
!1895 = !DILocalVariable(name: "i", scope: !1896, file: !23, line: 626, type: !13)
!1896 = distinct !DILexicalBlock(scope: !1887, file: !23, line: 626, column: 5)
!1897 = !DILocation(line: 626, column: 14, scope: !1896, inlinedAt: !1891)
!1898 = !DILocation(line: 626, column: 10, scope: !1896, inlinedAt: !1891)
!1899 = !DILocation(line: 626, column: 21, scope: !1900, inlinedAt: !1891)
!1900 = distinct !DILexicalBlock(scope: !1896, file: !23, line: 626, column: 5)
!1901 = !DILocation(line: 626, column: 23, scope: !1900, inlinedAt: !1891)
!1902 = !DILocation(line: 626, column: 5, scope: !1896, inlinedAt: !1891)
!1903 = !DILocation(line: 627, column: 23, scope: !1900, inlinedAt: !1891)
!1904 = !DILocation(line: 627, column: 18, scope: !1900, inlinedAt: !1891)
!1905 = !DILocation(line: 627, column: 9, scope: !1900, inlinedAt: !1891)
!1906 = !DILocation(line: 627, column: 21, scope: !1900, inlinedAt: !1891)
!1907 = !DILocation(line: 626, column: 39, scope: !1900, inlinedAt: !1891)
!1908 = !DILocation(line: 626, column: 5, scope: !1900, inlinedAt: !1891)
!1909 = distinct !{!1909, !1902, !1910, !1911}
!1910 = !DILocation(line: 627, column: 23, scope: !1896, inlinedAt: !1891)
!1911 = !{!"llvm.loop.mustprogress"}
!1912 = !DILocation(line: 629, column: 5, scope: !1887, inlinedAt: !1891)
!1913 = !DILocation(line: 38, column: 31, scope: !1892)
!1914 = !DILocation(line: 38, column: 43, scope: !1892)
!1915 = distinct !DISubprogram(name: "__cxx_global_var_init.2", scope: !1353, file: !1353, type: !685, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !1881)
!1916 = !DILocation(line: 4, column: 50, scope: !1917)
!1917 = !DILexicalBlockFile(scope: !1915, file: !571, discriminator: 0)
!1918 = distinct !DISubprogram(name: "AABB", linkageName: "_ZN4RTTL4AABBC2Ev", scope: !362, file: !19, line: 178, type: !366, scopeLine: 178, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !365, retainedNodes: !1881)
!1919 = !DILocalVariable(name: "this", arg: 1, scope: !1918, type: !607, flags: DIFlagArtificial | DIFlagObjectPointer)
!1920 = !DILocation(line: 0, scope: !1918)
!1921 = !DILocation(line: 178, column: 9, scope: !1918)
!1922 = !DILocation(line: 179, column: 9, scope: !1918)
!1923 = distinct !DISubprogram(name: "__cxx_global_var_init.3", scope: !1353, file: !1353, type: !685, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !1881)
!1924 = !DILocation(line: 5, column: 50, scope: !1925)
!1925 = !DILexicalBlockFile(scope: !1923, file: !571, discriminator: 0)
!1926 = distinct !DISubprogram(name: "build", linkageName: "_ZN4RTTL15OnDemandBuilder5buildERKNS_7RTBox3aES3_", scope: !578, file: !571, line: 8, type: !610, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !609, retainedNodes: !1881)
!1927 = !DILocalVariable(name: "this", arg: 1, scope: !1926, type: !1928, flags: DIFlagArtificial | DIFlagObjectPointer)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!1929 = !DILocation(line: 0, scope: !1926)
!1930 = !DILocalVariable(name: "sceneAABB", arg: 2, scope: !1926, file: !571, line: 8, type: !357)
!1931 = !DILocation(line: 8, column: 45, scope: !1926)
!1932 = !DILocalVariable(name: "centroidAABB", arg: 3, scope: !1926, file: !571, line: 8, type: !357)
!1933 = !DILocation(line: 8, column: 71, scope: !1926)
!1934 = !DILocation(line: 10, column: 3, scope: !1926)
!1935 = !DILocalVariable(name: "aabb", scope: !1926, file: !571, line: 11, type: !607)
!1936 = !DILocation(line: 11, column: 9, scope: !1926)
!1937 = !DILocation(line: 11, column: 16, scope: !1926)
!1938 = !DILocation(line: 11, column: 21, scope: !1926)
!1939 = !DILocalVariable(name: "numAABBs", scope: !1926, file: !571, line: 12, type: !294)
!1940 = !DILocation(line: 12, column: 13, scope: !1926)
!1941 = !DILocation(line: 12, column: 24, scope: !1926)
!1942 = !DILocation(line: 12, column: 29, scope: !1926)
!1943 = !DILocation(line: 13, column: 3, scope: !1926)
!1944 = !DILocation(line: 13, column: 16, scope: !1926)
!1945 = !DILocation(line: 13, column: 8, scope: !1926)
!1946 = !DILocation(line: 15, column: 7, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1926, file: !571, line: 15, column: 7)
!1948 = !DILocation(line: 15, column: 7, scope: !1926)
!1949 = !DILocation(line: 16, column: 17, scope: !1947)
!1950 = !DILocation(line: 16, column: 4, scope: !1947)
!1951 = !DILocation(line: 18, column: 45, scope: !1926)
!1952 = !DILocation(line: 18, column: 12, scope: !1926)
!1953 = !DILocation(line: 18, column: 3, scope: !1926)
!1954 = !DILocation(line: 18, column: 10, scope: !1926)
!1955 = !DILocalVariable(name: "triBounds", scope: !1926, file: !571, line: 20, type: !362)
!1956 = !DILocation(line: 20, column: 8, scope: !1926)
!1957 = !DILocalVariable(name: "i", scope: !1958, file: !571, line: 22, type: !13)
!1958 = distinct !DILexicalBlock(scope: !1926, file: !571, line: 22, column: 3)
!1959 = !DILocation(line: 22, column: 12, scope: !1958)
!1960 = !DILocation(line: 22, column: 8, scope: !1958)
!1961 = !DILocation(line: 22, column: 16, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1958, file: !571, line: 22, column: 3)
!1963 = !DILocation(line: 22, column: 18, scope: !1962)
!1964 = !DILocation(line: 22, column: 17, scope: !1962)
!1965 = !DILocation(line: 22, column: 3, scope: !1958)
!1966 = !DILocation(line: 24, column: 22, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1962, file: !571, line: 23, column: 5)
!1968 = !DILocation(line: 24, column: 7, scope: !1967)
!1969 = !DILocation(line: 24, column: 12, scope: !1967)
!1970 = !DILocation(line: 24, column: 17, scope: !1967)
!1971 = !DILocation(line: 24, column: 20, scope: !1967)
!1972 = !DILocalVariable(name: "cd", scope: !1967, file: !571, line: 25, type: !38)
!1973 = !DILocation(line: 25, column: 24, scope: !1967)
!1974 = !DILocation(line: 25, column: 29, scope: !1967)
!1975 = !DILocation(line: 25, column: 34, scope: !1967)
!1976 = !DILocation(line: 26, column: 24, scope: !1967)
!1977 = !DILocation(line: 26, column: 29, scope: !1967)
!1978 = !DILocalVariable(name: "this", arg: 1, scope: !1979, type: !1980, flags: DIFlagArtificial | DIFlagObjectPointer)
!1979 = distinct !DISubprogram(name: "extend", linkageName: "_ZN4RTTL7RTBox_tILi1E5sse_fLi0EE6extendERKS2_", scope: !46, file: !42, line: 99, type: !227, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !254, retainedNodes: !1881)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!1981 = !DILocation(line: 0, scope: !1979, inlinedAt: !1982)
!1982 = distinct !DILocation(line: 26, column: 17, scope: !1967)
!1983 = !DILocalVariable(name: "b", arg: 2, scope: !1979, file: !42, line: 99, type: !229)
!1984 = !DILocation(line: 99, column: 44, scope: !1979, inlinedAt: !1982)
!1985 = !DILocation(line: 100, column: 26, scope: !1979, inlinedAt: !1982)
!1986 = !DILocalVariable(name: "this", arg: 1, scope: !1987, type: !1988, flags: DIFlagArtificial | DIFlagObjectPointer)
!1987 = distinct !DISubprogram(name: "setMin", linkageName: "_ZN4RTTL7RTVec_tILi1E5sse_fLi0EE6setMinERKS2_", scope: !50, file: !53, line: 164, type: !159, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !158, retainedNodes: !1881)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!1989 = !DILocation(line: 0, scope: !1987, inlinedAt: !1990)
!1990 = distinct !DILocation(line: 100, column: 19, scope: !1979, inlinedAt: !1982)
!1991 = !DILocalVariable(name: "other", arg: 2, scope: !1987, file: !53, line: 164, type: !136)
!1992 = !DILocation(line: 164, column: 53, scope: !1987, inlinedAt: !1990)
!1993 = !DILocalVariable(name: "t", scope: !1987, file: !53, line: 165, type: !185)
!1994 = !DILocation(line: 165, column: 20, scope: !1987, inlinedAt: !1990)
!1995 = !DILocation(line: 165, column: 24, scope: !1987, inlinedAt: !1990)
!1996 = !DILocalVariable(name: "i", scope: !1997, file: !53, line: 166, type: !13)
!1997 = distinct !DILexicalBlock(scope: !1987, file: !53, line: 166, column: 9)
!1998 = !DILocation(line: 166, column: 18, scope: !1997, inlinedAt: !1990)
!1999 = !DILocation(line: 166, column: 14, scope: !1997, inlinedAt: !1990)
!2000 = !DILocation(line: 166, column: 25, scope: !2001, inlinedAt: !1990)
!2001 = distinct !DILexicalBlock(scope: !1997, file: !53, line: 166, column: 9)
!2002 = !DILocation(line: 166, column: 27, scope: !2001, inlinedAt: !1990)
!2003 = !DILocation(line: 166, column: 9, scope: !1997, inlinedAt: !1990)
!2004 = !DILocation(line: 167, column: 24, scope: !2001, inlinedAt: !1990)
!2005 = !DILocation(line: 167, column: 26, scope: !2001, inlinedAt: !1990)
!2006 = !DILocalVariable(name: "this", arg: 1, scope: !2007, type: !2008, flags: DIFlagArtificial | DIFlagObjectPointer)
!2007 = distinct !DISubprogram(name: "operator[]", linkageName: "_ZN4RTTL8RTData_tILi1E5sse_fLi0EEixEi", scope: !55, file: !56, line: 49, type: !78, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !77, retainedNodes: !1881)
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!2009 = !DILocation(line: 0, scope: !2007, inlinedAt: !2010)
!2010 = distinct !DILocation(line: 167, column: 24, scope: !2001, inlinedAt: !1990)
!2011 = !DILocalVariable(name: "index", arg: 2, scope: !2007, file: !56, line: 49, type: !13)
!2012 = !DILocation(line: 49, column: 42, scope: !2007, inlinedAt: !2010)
!2013 = !DILocation(line: 50, column: 22, scope: !2007, inlinedAt: !2010)
!2014 = !DILocation(line: 50, column: 20, scope: !2007, inlinedAt: !2010)
!2015 = !DILocation(line: 167, column: 30, scope: !2001, inlinedAt: !1990)
!2016 = !DILocation(line: 167, column: 36, scope: !2001, inlinedAt: !1990)
!2017 = !DILocation(line: 167, column: 20, scope: !2001, inlinedAt: !1990)
!2018 = !DILocalVariable(name: "a", arg: 1, scope: !2019, file: !1871, line: 107, type: !317)
!2019 = distinct !DISubprogram(name: "min", linkageName: "_Z3min5sse_fS_", scope: !1871, file: !1871, line: 107, type: !2020, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !1881)
!2020 = !DISubroutineType(types: !2021)
!2021 = !{!317, !317, !317}
!2022 = !DILocation(line: 107, column: 25, scope: !2019, inlinedAt: !2023)
!2023 = distinct !DILocation(line: 167, column: 20, scope: !2001, inlinedAt: !1990)
!2024 = !DILocalVariable(name: "b", arg: 2, scope: !2019, file: !1871, line: 107, type: !317)
!2025 = !DILocation(line: 107, column: 34, scope: !2019, inlinedAt: !2023)
!2026 = !DILocation(line: 108, column: 23, scope: !2019, inlinedAt: !2023)
!2027 = !DILocation(line: 108, column: 25, scope: !2019, inlinedAt: !2023)
!2028 = !DILocation(line: 108, column: 12, scope: !2019, inlinedAt: !2023)
!2029 = !DILocalVariable(name: "a", arg: 1, scope: !2030, file: !23, line: 453, type: !317)
!2030 = distinct !DISubprogram(name: "_mm_min_ps", linkageName: "_ZL10_mm_min_ps5sse_fS_", scope: !23, file: !23, line: 453, type: !2020, scopeLine: 453, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !1881)
!2031 = !DILocation(line: 453, column: 39, scope: !2030, inlinedAt: !2032)
!2032 = distinct !DILocation(line: 108, column: 12, scope: !2019, inlinedAt: !2023)
!2033 = !DILocalVariable(name: "b", arg: 2, scope: !2030, file: !23, line: 453, type: !317)
!2034 = !DILocation(line: 453, column: 48, scope: !2030, inlinedAt: !2032)
!2035 = !DILocalVariable(name: "result", scope: !2030, file: !23, line: 454, type: !317)
!2036 = !DILocation(line: 454, column: 8, scope: !2030, inlinedAt: !2032)
!2037 = !DILocalVariable(name: "i", scope: !2038, file: !23, line: 457, type: !13)
!2038 = distinct !DILexicalBlock(scope: !2030, file: !23, line: 457, column: 5)
!2039 = !DILocation(line: 457, column: 14, scope: !2038, inlinedAt: !2032)
!2040 = !DILocation(line: 457, column: 10, scope: !2038, inlinedAt: !2032)
!2041 = !DILocation(line: 457, column: 21, scope: !2042, inlinedAt: !2032)
!2042 = distinct !DILexicalBlock(scope: !2038, file: !23, line: 457, column: 5)
!2043 = !DILocation(line: 457, column: 23, scope: !2042, inlinedAt: !2032)
!2044 = !DILocation(line: 457, column: 5, scope: !2038, inlinedAt: !2032)
!2045 = !DILocation(line: 458, column: 28, scope: !2042, inlinedAt: !2032)
!2046 = !DILocation(line: 458, column: 9, scope: !2042, inlinedAt: !2032)
!2047 = !DILocation(line: 458, column: 26, scope: !2042, inlinedAt: !2032)
!2048 = !DILocation(line: 457, column: 39, scope: !2042, inlinedAt: !2032)
!2049 = !DILocation(line: 457, column: 5, scope: !2042, inlinedAt: !2032)
!2050 = distinct !{!2050, !2044, !2051, !1911}
!2051 = !DILocation(line: 458, column: 28, scope: !2038, inlinedAt: !2032)
!2052 = !DILocation(line: 460, column: 2, scope: !2030, inlinedAt: !2032)
!2053 = !DILocation(line: 108, column: 5, scope: !2019, inlinedAt: !2023)
!2054 = !DILocation(line: 167, column: 13, scope: !2001, inlinedAt: !1990)
!2055 = !DILocation(line: 167, column: 15, scope: !2001, inlinedAt: !1990)
!2056 = !DILocation(line: 0, scope: !2007, inlinedAt: !2057)
!2057 = distinct !DILocation(line: 167, column: 13, scope: !2001, inlinedAt: !1990)
!2058 = !DILocation(line: 49, column: 42, scope: !2007, inlinedAt: !2057)
!2059 = !DILocation(line: 50, column: 22, scope: !2007, inlinedAt: !2057)
!2060 = !DILocation(line: 50, column: 20, scope: !2007, inlinedAt: !2057)
!2061 = !DILocation(line: 167, column: 18, scope: !2001, inlinedAt: !1990)
!2062 = !DILocation(line: 166, column: 33, scope: !2001, inlinedAt: !1990)
!2063 = !DILocation(line: 166, column: 9, scope: !2001, inlinedAt: !1990)
!2064 = distinct !{!2064, !2003, !2065, !1911}
!2065 = !DILocation(line: 167, column: 38, scope: !1997, inlinedAt: !1990)
!2066 = !DILocation(line: 101, column: 13, scope: !1979, inlinedAt: !1982)
!2067 = !DILocation(line: 101, column: 26, scope: !1979, inlinedAt: !1982)
!2068 = !DILocation(line: 101, column: 28, scope: !1979, inlinedAt: !1982)
!2069 = !DILocalVariable(name: "this", arg: 1, scope: !2070, type: !1988, flags: DIFlagArtificial | DIFlagObjectPointer)
!2070 = distinct !DISubprogram(name: "setMax", linkageName: "_ZN4RTTL7RTVec_tILi1E5sse_fLi0EE6setMaxERKS2_", scope: !50, file: !53, line: 174, type: !159, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !162, retainedNodes: !1881)
!2071 = !DILocation(line: 0, scope: !2070, inlinedAt: !2072)
!2072 = distinct !DILocation(line: 101, column: 19, scope: !1979, inlinedAt: !1982)
!2073 = !DILocalVariable(name: "other", arg: 2, scope: !2070, file: !53, line: 174, type: !136)
!2074 = !DILocation(line: 174, column: 53, scope: !2070, inlinedAt: !2072)
!2075 = !DILocalVariable(name: "t", scope: !2070, file: !53, line: 175, type: !185)
!2076 = !DILocation(line: 175, column: 20, scope: !2070, inlinedAt: !2072)
!2077 = !DILocation(line: 175, column: 24, scope: !2070, inlinedAt: !2072)
!2078 = !DILocalVariable(name: "i", scope: !2079, file: !53, line: 176, type: !13)
!2079 = distinct !DILexicalBlock(scope: !2070, file: !53, line: 176, column: 9)
!2080 = !DILocation(line: 176, column: 18, scope: !2079, inlinedAt: !2072)
!2081 = !DILocation(line: 176, column: 14, scope: !2079, inlinedAt: !2072)
!2082 = !DILocation(line: 176, column: 25, scope: !2083, inlinedAt: !2072)
!2083 = distinct !DILexicalBlock(scope: !2079, file: !53, line: 176, column: 9)
!2084 = !DILocation(line: 176, column: 27, scope: !2083, inlinedAt: !2072)
!2085 = !DILocation(line: 176, column: 9, scope: !2079, inlinedAt: !2072)
!2086 = !DILocation(line: 177, column: 24, scope: !2083, inlinedAt: !2072)
!2087 = !DILocation(line: 177, column: 26, scope: !2083, inlinedAt: !2072)
!2088 = !DILocation(line: 0, scope: !2007, inlinedAt: !2089)
!2089 = distinct !DILocation(line: 177, column: 24, scope: !2083, inlinedAt: !2072)
!2090 = !DILocation(line: 49, column: 42, scope: !2007, inlinedAt: !2089)
!2091 = !DILocation(line: 50, column: 22, scope: !2007, inlinedAt: !2089)
!2092 = !DILocation(line: 50, column: 20, scope: !2007, inlinedAt: !2089)
!2093 = !DILocation(line: 177, column: 30, scope: !2083, inlinedAt: !2072)
!2094 = !DILocation(line: 177, column: 36, scope: !2083, inlinedAt: !2072)
!2095 = !DILocation(line: 177, column: 20, scope: !2083, inlinedAt: !2072)
!2096 = !DILocalVariable(name: "a", arg: 1, scope: !2097, file: !1871, line: 111, type: !317)
!2097 = distinct !DISubprogram(name: "max", linkageName: "_Z3max5sse_fS_", scope: !1871, file: !1871, line: 111, type: !2020, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !1881)
!2098 = !DILocation(line: 111, column: 25, scope: !2097, inlinedAt: !2099)
!2099 = distinct !DILocation(line: 177, column: 20, scope: !2083, inlinedAt: !2072)
!2100 = !DILocalVariable(name: "b", arg: 2, scope: !2097, file: !1871, line: 111, type: !317)
!2101 = !DILocation(line: 111, column: 34, scope: !2097, inlinedAt: !2099)
!2102 = !DILocation(line: 112, column: 23, scope: !2097, inlinedAt: !2099)
!2103 = !DILocation(line: 112, column: 25, scope: !2097, inlinedAt: !2099)
!2104 = !DILocation(line: 112, column: 12, scope: !2097, inlinedAt: !2099)
!2105 = !DILocalVariable(name: "a", arg: 1, scope: !2106, file: !23, line: 443, type: !317)
!2106 = distinct !DISubprogram(name: "_mm_max_ps", linkageName: "_ZL10_mm_max_ps5sse_fS_", scope: !23, file: !23, line: 443, type: !2020, scopeLine: 443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !1881)
!2107 = !DILocation(line: 443, column: 39, scope: !2106, inlinedAt: !2108)
!2108 = distinct !DILocation(line: 112, column: 12, scope: !2097, inlinedAt: !2099)
!2109 = !DILocalVariable(name: "b", arg: 2, scope: !2106, file: !23, line: 443, type: !317)
!2110 = !DILocation(line: 443, column: 48, scope: !2106, inlinedAt: !2108)
!2111 = !DILocalVariable(name: "result", scope: !2106, file: !23, line: 444, type: !317)
!2112 = !DILocation(line: 444, column: 8, scope: !2106, inlinedAt: !2108)
!2113 = !DILocalVariable(name: "i", scope: !2114, file: !23, line: 447, type: !13)
!2114 = distinct !DILexicalBlock(scope: !2106, file: !23, line: 447, column: 5)
!2115 = !DILocation(line: 447, column: 14, scope: !2114, inlinedAt: !2108)
!2116 = !DILocation(line: 447, column: 10, scope: !2114, inlinedAt: !2108)
!2117 = !DILocation(line: 447, column: 21, scope: !2118, inlinedAt: !2108)
!2118 = distinct !DILexicalBlock(scope: !2114, file: !23, line: 447, column: 5)
!2119 = !DILocation(line: 447, column: 23, scope: !2118, inlinedAt: !2108)
!2120 = !DILocation(line: 447, column: 5, scope: !2114, inlinedAt: !2108)
!2121 = !DILocation(line: 448, column: 28, scope: !2118, inlinedAt: !2108)
!2122 = !DILocation(line: 448, column: 9, scope: !2118, inlinedAt: !2108)
!2123 = !DILocation(line: 448, column: 26, scope: !2118, inlinedAt: !2108)
!2124 = !DILocation(line: 447, column: 39, scope: !2118, inlinedAt: !2108)
!2125 = !DILocation(line: 447, column: 5, scope: !2118, inlinedAt: !2108)
!2126 = distinct !{!2126, !2120, !2127, !1911}
!2127 = !DILocation(line: 448, column: 28, scope: !2114, inlinedAt: !2108)
!2128 = !DILocation(line: 450, column: 2, scope: !2106, inlinedAt: !2108)
!2129 = !DILocation(line: 112, column: 5, scope: !2097, inlinedAt: !2099)
!2130 = !DILocation(line: 177, column: 13, scope: !2083, inlinedAt: !2072)
!2131 = !DILocation(line: 177, column: 15, scope: !2083, inlinedAt: !2072)
!2132 = !DILocation(line: 0, scope: !2007, inlinedAt: !2133)
!2133 = distinct !DILocation(line: 177, column: 13, scope: !2083, inlinedAt: !2072)
!2134 = !DILocation(line: 49, column: 42, scope: !2007, inlinedAt: !2133)
!2135 = !DILocation(line: 50, column: 22, scope: !2007, inlinedAt: !2133)
!2136 = !DILocation(line: 50, column: 20, scope: !2007, inlinedAt: !2133)
!2137 = !DILocation(line: 177, column: 18, scope: !2083, inlinedAt: !2072)
!2138 = !DILocation(line: 176, column: 33, scope: !2083, inlinedAt: !2072)
!2139 = !DILocation(line: 176, column: 9, scope: !2083, inlinedAt: !2072)
!2140 = distinct !{!2140, !2085, !2141, !1911}
!2141 = !DILocation(line: 177, column: 38, scope: !2079, inlinedAt: !2072)
!2142 = !DILocation(line: 27, column: 7, scope: !1967)
!2143 = !DILocation(line: 27, column: 14, scope: !1967)
!2144 = !DILocation(line: 27, column: 17, scope: !1967)
!2145 = !DILocation(line: 28, column: 5, scope: !1967)
!2146 = !DILocation(line: 22, column: 28, scope: !1962)
!2147 = !DILocation(line: 22, column: 3, scope: !1962)
!2148 = distinct !{!2148, !1965, !2149, !1911}
!2149 = !DILocation(line: 28, column: 5, scope: !1958)
!2150 = !DILocation(line: 31, column: 3, scope: !1926)
!2151 = !DILocation(line: 32, column: 3, scope: !1926)
!2152 = !DILocation(line: 32, column: 8, scope: !1926)
!2153 = !DILocation(line: 32, column: 16, scope: !1926)
!2154 = !DILocation(line: 33, column: 3, scope: !1926)
!2155 = !DILocation(line: 33, column: 8, scope: !1926)
!2156 = !DILocation(line: 33, column: 33, scope: !1926)
!2157 = !DILocalVariable(name: "this", arg: 1, scope: !2158, type: !607, flags: DIFlagArtificial | DIFlagObjectPointer)
!2158 = distinct !DISubprogram(name: "createLazyNode", linkageName: "_ZN4RTTL4AABB14createLazyNodeEjj", scope: !362, file: !19, line: 208, type: !378, scopeLine: 209, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !386, retainedNodes: !1881)
!2159 = !DILocation(line: 0, scope: !2158, inlinedAt: !2160)
!2160 = distinct !DILocation(line: 33, column: 16, scope: !1926)
!2161 = !DILocalVariable(name: "offset", arg: 2, scope: !2158, file: !19, line: 208, type: !380)
!2162 = !DILocation(line: 208, column: 56, scope: !2158, inlinedAt: !2160)
!2163 = !DILocalVariable(name: "entries", arg: 3, scope: !2158, file: !19, line: 208, type: !380)
!2164 = !DILocation(line: 208, column: 83, scope: !2158, inlinedAt: !2160)
!2165 = !DILocation(line: 210, column: 26, scope: !2158, inlinedAt: !2160)
!2166 = !DILocation(line: 210, column: 33, scope: !2158, inlinedAt: !2160)
!2167 = !DILocalVariable(name: "this", arg: 1, scope: !2168, type: !2169, flags: DIFlagArtificial | DIFlagObjectPointer)
!2168 = distinct !DISubprogram(name: "children", linkageName: "_ZNK4RTTL4AABB8childrenEv", scope: !362, file: !19, line: 225, type: !404, scopeLine: 225, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !403, retainedNodes: !1881)
!2169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!2170 = !DILocation(line: 0, scope: !2168, inlinedAt: !2171)
!2171 = distinct !DILocation(line: 210, column: 13, scope: !2158, inlinedAt: !2160)
!2172 = !DILocation(line: 225, column: 57, scope: !2168, inlinedAt: !2171)
!2173 = !DILocation(line: 210, column: 24, scope: !2158, inlinedAt: !2160)
!2174 = !DILocation(line: 211, column: 24, scope: !2158, inlinedAt: !2160)
!2175 = !DILocation(line: 211, column: 32, scope: !2158, inlinedAt: !2160)
!2176 = !DILocalVariable(name: "this", arg: 1, scope: !2177, type: !2169, flags: DIFlagArtificial | DIFlagObjectPointer)
!2177 = distinct !DISubprogram(name: "extMax", linkageName: "_ZNK4RTTL4AABB6extMaxEv", scope: !362, file: !19, line: 233, type: !404, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !416, retainedNodes: !1881)
!2178 = !DILocation(line: 0, scope: !2177, inlinedAt: !2179)
!2179 = distinct !DILocation(line: 211, column: 13, scope: !2158, inlinedAt: !2160)
!2180 = !DILocation(line: 233, column: 70, scope: !2177, inlinedAt: !2179)
!2181 = !DILocation(line: 233, column: 55, scope: !2177, inlinedAt: !2179)
!2182 = !DILocation(line: 211, column: 22, scope: !2158, inlinedAt: !2160)
!2183 = !DILocation(line: 37, column: 3, scope: !1926)
!2184 = !DILocation(line: 37, column: 35, scope: !1926)
!2185 = !DILocation(line: 37, column: 8, scope: !1926)
!2186 = !DILocation(line: 38, column: 1, scope: !1926)
!2187 = distinct !DISubprogram(name: "aligned_free<RTTL::CentroidDiffAABB>", linkageName: "_Z12aligned_freeIN4RTTL16CentroidDiffAABBEEvPT_", scope: !1867, file: !1867, line: 292, type: !2188, scopeLine: 293, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !2190, retainedNodes: !1881)
!2188 = !DISubroutineType(types: !2189)
!2189 = !{null, !37}
!2190 = !{!2191}
!2191 = !DITemplateTypeParameter(name: "T", type: !38)
!2192 = !DILocalVariable(name: "t", arg: 1, scope: !2187, file: !1867, line: 292, type: !37)
!2193 = !DILocation(line: 292, column: 22, scope: !2187)
!2194 = !DILocation(line: 293, column: 21, scope: !2187)
!2195 = !DILocalVariable(name: "ptr", arg: 1, scope: !2196, file: !1867, line: 211, type: !691)
!2196 = distinct !DISubprogram(name: "free_align", linkageName: "_Z10free_alignPv", scope: !1867, file: !1867, line: 211, type: !738, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !1881)
!2197 = !DILocation(line: 211, column: 31, scope: !2196, inlinedAt: !2198)
!2198 = distinct !DILocation(line: 293, column: 10, scope: !2187)
!2199 = !DILocation(line: 213, column: 10, scope: !2196, inlinedAt: !2198)
!2200 = !DILocation(line: 213, column: 5, scope: !2196, inlinedAt: !2198)
!2201 = !DILocation(line: 293, column: 3, scope: !2187)
!2202 = distinct !DISubprogram(name: "aligned_malloc<RTTL::CentroidDiffAABB>", linkageName: "_Z14aligned_mallocIN4RTTL16CentroidDiffAABBEEPT_i", scope: !1867, file: !1867, line: 287, type: !2203, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !2190, retainedNodes: !1881)
!2203 = !DISubroutineType(types: !2204)
!2204 = !{!37, !13}
!2205 = !DILocalVariable(name: "N", arg: 1, scope: !2202, file: !1867, line: 287, type: !13)
!2206 = !DILocation(line: 287, column: 23, scope: !2202)
!2207 = !DILocation(line: 288, column: 27, scope: !2202)
!2208 = !DILocation(line: 288, column: 29, scope: !2202)
!2209 = !DILocalVariable(name: "size", arg: 1, scope: !2210, file: !1867, line: 203, type: !294)
!2210 = distinct !DISubprogram(name: "malloc_align", linkageName: "_Z12malloc_alignii", scope: !1867, file: !1867, line: 203, type: !2211, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !1881)
!2211 = !DISubroutineType(types: !2212)
!2212 = !{!691, !294, !294}
!2213 = !DILocation(line: 203, column: 38, scope: !2210, inlinedAt: !2214)
!2214 = distinct !DILocation(line: 288, column: 14, scope: !2202)
!2215 = !DILocalVariable(name: "alignment", arg: 2, scope: !2210, file: !1867, line: 203, type: !294)
!2216 = !DILocation(line: 203, column: 53, scope: !2210, inlinedAt: !2214)
!2217 = !DILocation(line: 205, column: 21, scope: !2210, inlinedAt: !2214)
!2218 = !DILocation(line: 205, column: 31, scope: !2210, inlinedAt: !2214)
!2219 = !DILocation(line: 205, column: 12, scope: !2210, inlinedAt: !2214)
!2220 = !DILocation(line: 288, column: 3, scope: !2202)
!2221 = distinct !DISubprogram(name: "CentroidDiffAABB", linkageName: "_ZN4RTTL16CentroidDiffAABBC2ERKNS_7RTBox3aE", scope: !38, file: !19, line: 249, type: !355, scopeLine: 249, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !354, retainedNodes: !1881)
!2222 = !DILocalVariable(name: "this", arg: 1, scope: !2221, type: !37, flags: DIFlagArtificial | DIFlagObjectPointer)
!2223 = !DILocation(line: 0, scope: !2221)
!2224 = !DILocalVariable(name: "b", arg: 2, scope: !2221, file: !19, line: 249, type: !357)
!2225 = !DILocation(line: 249, column: 42, scope: !2221)
!2226 = !DILocation(line: 249, column: 9, scope: !2221)
!2227 = !DILocation(line: 250, column: 17, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2221, file: !19, line: 249, column: 45)
!2229 = !DILocalVariable(name: "this", arg: 1, scope: !2230, type: !2231, flags: DIFlagArtificial | DIFlagObjectPointer)
!2230 = distinct !DISubprogram(name: "diameter", linkageName: "_ZNK4RTTL7RTBox3a8diameterEv", scope: !43, file: !42, line: 288, type: !315, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !320, retainedNodes: !1881)
!2231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!2232 = !DILocation(line: 0, scope: !2230, inlinedAt: !2233)
!2233 = distinct !DILocation(line: 250, column: 19, scope: !2228)
!2234 = !DILocalVariable(name: "this", arg: 1, scope: !2235, type: !2236, flags: DIFlagArtificial | DIFlagObjectPointer)
!2235 = distinct !DISubprogram(name: "diameter", linkageName: "_ZNK4RTTL7RTBox_tILi1E5sse_fLi0EE8diameterEv", scope: !46, file: !42, line: 169, type: !285, scopeLine: 169, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !287, retainedNodes: !1881)
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!2237 = !DILocation(line: 0, scope: !2235, inlinedAt: !2238)
!2238 = distinct !DILocation(line: 288, column: 69, scope: !2230, inlinedAt: !2233)
!2239 = !DILocation(line: 170, column: 20, scope: !2235, inlinedAt: !2238)
!2240 = !DILocalVariable(name: "a", arg: 1, scope: !2241, file: !35, line: 139, type: !136)
!2241 = distinct !DISubprogram(name: "operator-<1, sse_f, 0>", linkageName: "_ZN4RTTLmiILi1E5sse_fLi0EEENS_7RTVec_tIXT_ET0_XT1_EEERKS4_S6_", scope: !20, file: !35, line: 139, type: !2242, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !2244, retainedNodes: !1881)
!2242 = !DISubroutineType(types: !2243)
!2243 = !{!50, !136, !136}
!2244 = !{!117, !118, !2245}
!2245 = !DITemplateValueParameter(name: "align", type: !13, value: i32 0)
!2246 = !DILocation(line: 139, column: 86, scope: !2241, inlinedAt: !2247)
!2247 = distinct !DILocation(line: 170, column: 26, scope: !2235, inlinedAt: !2238)
!2248 = !DILocalVariable(name: "b", arg: 2, scope: !2241, file: !35, line: 139, type: !136)
!2249 = !DILocation(line: 139, column: 124, scope: !2241, inlinedAt: !2247)
!2250 = !DILocalVariable(name: "result", scope: !2241, file: !35, line: 140, type: !50)
!2251 = !DILocation(line: 140, column: 37, scope: !2241, inlinedAt: !2247)
!2252 = !DILocation(line: 141, column: 17, scope: !2241, inlinedAt: !2247)
!2253 = !DILocation(line: 141, column: 35, scope: !2241, inlinedAt: !2247)
!2254 = !DILocation(line: 141, column: 37, scope: !2241, inlinedAt: !2247)
!2255 = !DILocation(line: 141, column: 46, scope: !2241, inlinedAt: !2247)
!2256 = !DILocation(line: 141, column: 48, scope: !2241, inlinedAt: !2247)
!2257 = !DILocalVariable(name: "this", arg: 1, scope: !2258, type: !2008, flags: DIFlagArtificial | DIFlagObjectPointer)
!2258 = distinct !DISubprogram(name: "subtract", linkageName: "_ZN4RTTL8RTData_tILi1E5sse_fLi0EE8subtractERKS2_S4_", scope: !55, file: !56, line: 100, type: !96, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !98, retainedNodes: !1881)
!2259 = !DILocation(line: 0, scope: !2258, inlinedAt: !2260)
!2260 = distinct !DILocation(line: 141, column: 26, scope: !2241, inlinedAt: !2247)
!2261 = !DILocalVariable(name: "v1", arg: 2, scope: !2258, file: !56, line: 100, type: !87)
!2262 = !DILocation(line: 100, column: 47, scope: !2258, inlinedAt: !2260)
!2263 = !DILocalVariable(name: "v2", arg: 3, scope: !2258, file: !56, line: 100, type: !87)
!2264 = !DILocation(line: 100, column: 67, scope: !2258, inlinedAt: !2260)
!2265 = !DILocalVariable(name: "i", scope: !2266, file: !56, line: 101, type: !13)
!2266 = distinct !DILexicalBlock(scope: !2258, file: !56, line: 101, column: 13)
!2267 = !DILocation(line: 101, column: 22, scope: !2266, inlinedAt: !2260)
!2268 = !DILocation(line: 101, column: 18, scope: !2266, inlinedAt: !2260)
!2269 = !DILocation(line: 101, column: 29, scope: !2270, inlinedAt: !2260)
!2270 = distinct !DILexicalBlock(scope: !2266, file: !56, line: 101, column: 13)
!2271 = !DILocation(line: 101, column: 31, scope: !2270, inlinedAt: !2260)
!2272 = !DILocation(line: 101, column: 13, scope: !2266, inlinedAt: !2260)
!2273 = !DILocation(line: 102, column: 24, scope: !2270, inlinedAt: !2260)
!2274 = !DILocation(line: 102, column: 29, scope: !2270, inlinedAt: !2260)
!2275 = !DILocation(line: 102, column: 34, scope: !2270, inlinedAt: !2260)
!2276 = !DILocation(line: 102, column: 39, scope: !2270, inlinedAt: !2260)
!2277 = !DILocation(line: 102, column: 32, scope: !2270, inlinedAt: !2260)
!2278 = !DILocalVariable(name: "a", arg: 1, scope: !2279, file: !1871, line: 72, type: !317)
!2279 = distinct !DISubprogram(name: "operator-", linkageName: "_Zmi5sse_fS_", scope: !1871, file: !1871, line: 72, type: !2020, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !1881)
!2280 = !DILocation(line: 72, column: 32, scope: !2279, inlinedAt: !2281)
!2281 = distinct !DILocation(line: 102, column: 32, scope: !2270, inlinedAt: !2260)
!2282 = !DILocalVariable(name: "b", arg: 2, scope: !2279, file: !1871, line: 72, type: !317)
!2283 = !DILocation(line: 72, column: 41, scope: !2279, inlinedAt: !2281)
!2284 = !DILocation(line: 72, column: 64, scope: !2279, inlinedAt: !2281)
!2285 = !DILocation(line: 72, column: 67, scope: !2279, inlinedAt: !2281)
!2286 = !DILocation(line: 72, column: 53, scope: !2279, inlinedAt: !2281)
!2287 = !DILocalVariable(name: "a", arg: 1, scope: !2288, file: !23, line: 779, type: !317)
!2288 = distinct !DISubprogram(name: "_mm_sub_ps", linkageName: "_ZL10_mm_sub_ps5sse_fS_", scope: !23, file: !23, line: 779, type: !2020, scopeLine: 779, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !1881)
!2289 = !DILocation(line: 779, column: 39, scope: !2288, inlinedAt: !2290)
!2290 = distinct !DILocation(line: 72, column: 53, scope: !2279, inlinedAt: !2281)
!2291 = !DILocalVariable(name: "b", arg: 2, scope: !2288, file: !23, line: 779, type: !317)
!2292 = !DILocation(line: 779, column: 48, scope: !2288, inlinedAt: !2290)
!2293 = !DILocalVariable(name: "result", scope: !2288, file: !23, line: 780, type: !317)
!2294 = !DILocation(line: 780, column: 11, scope: !2288, inlinedAt: !2290)
!2295 = !DILocalVariable(name: "i", scope: !2296, file: !23, line: 783, type: !13)
!2296 = distinct !DILexicalBlock(scope: !2288, file: !23, line: 783, column: 5)
!2297 = !DILocation(line: 783, column: 14, scope: !2296, inlinedAt: !2290)
!2298 = !DILocation(line: 783, column: 10, scope: !2296, inlinedAt: !2290)
!2299 = !DILocation(line: 783, column: 21, scope: !2300, inlinedAt: !2290)
!2300 = distinct !DILexicalBlock(scope: !2296, file: !23, line: 783, column: 5)
!2301 = !DILocation(line: 783, column: 23, scope: !2300, inlinedAt: !2290)
!2302 = !DILocation(line: 783, column: 5, scope: !2296, inlinedAt: !2290)
!2303 = !DILocation(line: 784, column: 27, scope: !2300, inlinedAt: !2290)
!2304 = !DILocation(line: 784, column: 23, scope: !2300, inlinedAt: !2290)
!2305 = !DILocation(line: 784, column: 36, scope: !2300, inlinedAt: !2290)
!2306 = !DILocation(line: 784, column: 32, scope: !2300, inlinedAt: !2290)
!2307 = !DILocation(line: 784, column: 30, scope: !2300, inlinedAt: !2290)
!2308 = !DILocation(line: 784, column: 18, scope: !2300, inlinedAt: !2290)
!2309 = !DILocation(line: 784, column: 9, scope: !2300, inlinedAt: !2290)
!2310 = !DILocation(line: 784, column: 21, scope: !2300, inlinedAt: !2290)
!2311 = !DILocation(line: 783, column: 39, scope: !2300, inlinedAt: !2290)
!2312 = !DILocation(line: 783, column: 5, scope: !2300, inlinedAt: !2290)
!2313 = distinct !{!2313, !2302, !2314, !1911}
!2314 = !DILocation(line: 784, column: 37, scope: !2296, inlinedAt: !2290)
!2315 = !DILocation(line: 786, column: 5, scope: !2288, inlinedAt: !2290)
!2316 = !DILocation(line: 72, column: 46, scope: !2279, inlinedAt: !2281)
!2317 = !DILocation(line: 102, column: 19, scope: !2270, inlinedAt: !2260)
!2318 = !DILocation(line: 102, column: 17, scope: !2270, inlinedAt: !2260)
!2319 = !DILocation(line: 102, column: 22, scope: !2270, inlinedAt: !2260)
!2320 = !DILocation(line: 101, column: 37, scope: !2270, inlinedAt: !2260)
!2321 = !DILocation(line: 101, column: 13, scope: !2270, inlinedAt: !2260)
!2322 = distinct !{!2322, !2272, !2323, !1911}
!2323 = !DILocation(line: 102, column: 40, scope: !2266, inlinedAt: !2260)
!2324 = !DILocation(line: 142, column: 9, scope: !2241, inlinedAt: !2247)
!2325 = !DILocation(line: 170, column: 26, scope: !2235, inlinedAt: !2238)
!2326 = !DILocation(line: 170, column: 13, scope: !2235, inlinedAt: !2238)
!2327 = !DILocation(line: 288, column: 69, scope: !2230, inlinedAt: !2233)
!2328 = !DILocation(line: 288, column: 50, scope: !2230, inlinedAt: !2233)
!2329 = !DILocation(line: 288, column: 49, scope: !2230, inlinedAt: !2233)
!2330 = !DILocation(line: 288, column: 42, scope: !2230, inlinedAt: !2233)
!2331 = !DILocation(line: 250, column: 19, scope: !2228)
!2332 = !DILocation(line: 250, column: 30, scope: !2228)
!2333 = !DILocalVariable(name: "a", arg: 1, scope: !2334, file: !1871, line: 79, type: !317)
!2334 = distinct !DISubprogram(name: "operator*", linkageName: "_Zml5sse_ff", scope: !1871, file: !1871, line: 79, type: !2335, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !1881)
!2335 = !DISubroutineType(types: !2336)
!2336 = !{!317, !317, !15}
!2337 = !DILocation(line: 79, column: 32, scope: !2334, inlinedAt: !2338)
!2338 = distinct !DILocation(line: 250, column: 30, scope: !2228)
!2339 = !DILocalVariable(name: "b", arg: 2, scope: !2334, file: !1871, line: 79, type: !15)
!2340 = !DILocation(line: 79, column: 41, scope: !2334, inlinedAt: !2338)
!2341 = !DILocation(line: 79, column: 65, scope: !2334, inlinedAt: !2338)
!2342 = !DILocation(line: 79, column: 83, scope: !2334, inlinedAt: !2338)
!2343 = !DILocalVariable(name: "n", arg: 1, scope: !2344, file: !35, line: 14, type: !15)
!2344 = distinct !DISubprogram(name: "convert<sse_f>", linkageName: "_Z7convertI5sse_fET_f", scope: !35, file: !35, line: 14, type: !1888, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !2345, retainedNodes: !1881)
!2345 = !{!118}
!2346 = !DILocation(line: 14, column: 48, scope: !2344, inlinedAt: !2347)
!2347 = distinct !DILocation(line: 79, column: 68, scope: !2334, inlinedAt: !2338)
!2348 = !DILocation(line: 14, column: 72, scope: !2344, inlinedAt: !2347)
!2349 = !DILocation(line: 622, column: 40, scope: !1887, inlinedAt: !2350)
!2350 = distinct !DILocation(line: 14, column: 60, scope: !2344, inlinedAt: !2347)
!2351 = !DILocation(line: 623, column: 11, scope: !1887, inlinedAt: !2350)
!2352 = !DILocation(line: 626, column: 14, scope: !1896, inlinedAt: !2350)
!2353 = !DILocation(line: 626, column: 10, scope: !1896, inlinedAt: !2350)
!2354 = !DILocation(line: 626, column: 21, scope: !1900, inlinedAt: !2350)
!2355 = !DILocation(line: 626, column: 23, scope: !1900, inlinedAt: !2350)
!2356 = !DILocation(line: 626, column: 5, scope: !1896, inlinedAt: !2350)
!2357 = !DILocation(line: 627, column: 23, scope: !1900, inlinedAt: !2350)
!2358 = !DILocation(line: 627, column: 18, scope: !1900, inlinedAt: !2350)
!2359 = !DILocation(line: 627, column: 9, scope: !1900, inlinedAt: !2350)
!2360 = !DILocation(line: 627, column: 21, scope: !1900, inlinedAt: !2350)
!2361 = !DILocation(line: 626, column: 39, scope: !1900, inlinedAt: !2350)
!2362 = !DILocation(line: 626, column: 5, scope: !1900, inlinedAt: !2350)
!2363 = distinct !{!2363, !2356, !2364, !1911}
!2364 = !DILocation(line: 627, column: 23, scope: !1896, inlinedAt: !2350)
!2365 = !DILocation(line: 629, column: 5, scope: !1887, inlinedAt: !2350)
!2366 = !DILocation(line: 14, column: 60, scope: !2344, inlinedAt: !2347)
!2367 = !DILocation(line: 14, column: 53, scope: !2344, inlinedAt: !2347)
!2368 = !DILocation(line: 79, column: 68, scope: !2334, inlinedAt: !2338)
!2369 = !DILocation(line: 79, column: 54, scope: !2334, inlinedAt: !2338)
!2370 = !DILocalVariable(name: "a", arg: 1, scope: !2371, file: !23, line: 511, type: !317)
!2371 = distinct !DISubprogram(name: "_mm_mul_ps", linkageName: "_ZL10_mm_mul_ps5sse_fS_", scope: !23, file: !23, line: 511, type: !2020, scopeLine: 511, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !1881)
!2372 = !DILocation(line: 511, column: 39, scope: !2371, inlinedAt: !2373)
!2373 = distinct !DILocation(line: 79, column: 54, scope: !2334, inlinedAt: !2338)
!2374 = !DILocalVariable(name: "b", arg: 2, scope: !2371, file: !23, line: 511, type: !317)
!2375 = !DILocation(line: 511, column: 48, scope: !2371, inlinedAt: !2373)
!2376 = !DILocalVariable(name: "result", scope: !2371, file: !23, line: 512, type: !317)
!2377 = !DILocation(line: 512, column: 11, scope: !2371, inlinedAt: !2373)
!2378 = !DILocalVariable(name: "i", scope: !2379, file: !23, line: 515, type: !13)
!2379 = distinct !DILexicalBlock(scope: !2371, file: !23, line: 515, column: 5)
!2380 = !DILocation(line: 515, column: 14, scope: !2379, inlinedAt: !2373)
!2381 = !DILocation(line: 515, column: 10, scope: !2379, inlinedAt: !2373)
!2382 = !DILocation(line: 515, column: 21, scope: !2383, inlinedAt: !2373)
!2383 = distinct !DILexicalBlock(scope: !2379, file: !23, line: 515, column: 5)
!2384 = !DILocation(line: 515, column: 23, scope: !2383, inlinedAt: !2373)
!2385 = !DILocation(line: 515, column: 5, scope: !2379, inlinedAt: !2373)
!2386 = !DILocation(line: 516, column: 28, scope: !2383, inlinedAt: !2373)
!2387 = !DILocation(line: 516, column: 42, scope: !2383, inlinedAt: !2373)
!2388 = !DILocation(line: 516, column: 40, scope: !2383, inlinedAt: !2373)
!2389 = !DILocation(line: 516, column: 9, scope: !2383, inlinedAt: !2373)
!2390 = !DILocation(line: 516, column: 26, scope: !2383, inlinedAt: !2373)
!2391 = !DILocation(line: 515, column: 39, scope: !2383, inlinedAt: !2373)
!2392 = !DILocation(line: 515, column: 5, scope: !2383, inlinedAt: !2373)
!2393 = distinct !{!2393, !2385, !2394, !1911}
!2394 = !DILocation(line: 516, column: 42, scope: !2379, inlinedAt: !2373)
!2395 = !DILocation(line: 518, column: 5, scope: !2371, inlinedAt: !2373)
!2396 = !DILocation(line: 79, column: 47, scope: !2334, inlinedAt: !2338)
!2397 = !DILocalVariable(name: "this", arg: 1, scope: !2398, type: !2399, flags: DIFlagArtificial | DIFlagObjectPointer)
!2398 = distinct !DISubprogram(name: "max_f", linkageName: "_ZN4RTTL7RTBox3a5max_fEv", scope: !43, file: !42, line: 323, type: !335, scopeLine: 323, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !338, retainedNodes: !1881)
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!2400 = !DILocation(line: 0, scope: !2398, inlinedAt: !2401)
!2401 = distinct !DILocation(line: 250, column: 7, scope: !2228)
!2402 = !DILocation(line: 323, column: 39, scope: !2398, inlinedAt: !2401)
!2403 = !DILocation(line: 250, column: 15, scope: !2228)
!2404 = !DILocation(line: 251, column: 21, scope: !2228)
!2405 = !DILocalVariable(name: "this", arg: 1, scope: !2406, type: !2231, flags: DIFlagArtificial | DIFlagObjectPointer)
!2406 = distinct !DISubprogram(name: "min_f", linkageName: "_ZNK4RTTL7RTBox3a5min_fEv", scope: !43, file: !42, line: 324, type: !315, scopeLine: 324, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !339, retainedNodes: !1881)
!2407 = !DILocation(line: 0, scope: !2406, inlinedAt: !2408)
!2408 = distinct !DILocation(line: 251, column: 23, scope: !2228)
!2409 = !DILocation(line: 324, column: 44, scope: !2406, inlinedAt: !2408)
!2410 = !DILocation(line: 324, column: 37, scope: !2406, inlinedAt: !2408)
!2411 = !DILocation(line: 251, column: 23, scope: !2228)
!2412 = !DILocation(line: 0, scope: !2398, inlinedAt: !2413)
!2413 = distinct !DILocation(line: 251, column: 33, scope: !2228)
!2414 = !DILocation(line: 323, column: 39, scope: !2398, inlinedAt: !2413)
!2415 = !DILocation(line: 251, column: 33, scope: !2228)
!2416 = !DILocation(line: 251, column: 31, scope: !2228)
!2417 = !DILocalVariable(name: "a", arg: 1, scope: !2418, file: !1871, line: 71, type: !317)
!2418 = distinct !DISubprogram(name: "operator+", linkageName: "_Zpl5sse_fS_", scope: !1871, file: !1871, line: 71, type: !2020, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !1881)
!2419 = !DILocation(line: 71, column: 32, scope: !2418, inlinedAt: !2420)
!2420 = distinct !DILocation(line: 251, column: 31, scope: !2228)
!2421 = !DILocalVariable(name: "b", arg: 2, scope: !2418, file: !1871, line: 71, type: !317)
!2422 = !DILocation(line: 71, column: 41, scope: !2418, inlinedAt: !2420)
!2423 = !DILocation(line: 71, column: 64, scope: !2418, inlinedAt: !2420)
!2424 = !DILocation(line: 71, column: 67, scope: !2418, inlinedAt: !2420)
!2425 = !DILocation(line: 71, column: 53, scope: !2418, inlinedAt: !2420)
!2426 = !DILocalVariable(name: "a", arg: 1, scope: !2427, file: !23, line: 172, type: !317)
!2427 = distinct !DISubprogram(name: "_mm_add_ps", linkageName: "_ZL10_mm_add_ps5sse_fS_", scope: !23, file: !23, line: 172, type: !2020, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !1881)
!2428 = !DILocation(line: 172, column: 39, scope: !2427, inlinedAt: !2429)
!2429 = distinct !DILocation(line: 71, column: 53, scope: !2418, inlinedAt: !2420)
!2430 = !DILocalVariable(name: "b", arg: 2, scope: !2427, file: !23, line: 172, type: !317)
!2431 = !DILocation(line: 172, column: 48, scope: !2427, inlinedAt: !2429)
!2432 = !DILocalVariable(name: "result", scope: !2427, file: !23, line: 173, type: !317)
!2433 = !DILocation(line: 173, column: 8, scope: !2427, inlinedAt: !2429)
!2434 = !DILocalVariable(name: "i", scope: !2435, file: !23, line: 176, type: !13)
!2435 = distinct !DILexicalBlock(scope: !2427, file: !23, line: 176, column: 5)
!2436 = !DILocation(line: 176, column: 14, scope: !2435, inlinedAt: !2429)
!2437 = !DILocation(line: 176, column: 10, scope: !2435, inlinedAt: !2429)
!2438 = !DILocation(line: 176, column: 21, scope: !2439, inlinedAt: !2429)
!2439 = distinct !DILexicalBlock(scope: !2435, file: !23, line: 176, column: 5)
!2440 = !DILocation(line: 176, column: 23, scope: !2439, inlinedAt: !2429)
!2441 = !DILocation(line: 176, column: 5, scope: !2435, inlinedAt: !2429)
!2442 = !DILocation(line: 177, column: 27, scope: !2439, inlinedAt: !2429)
!2443 = !DILocation(line: 177, column: 23, scope: !2439, inlinedAt: !2429)
!2444 = !DILocation(line: 177, column: 36, scope: !2439, inlinedAt: !2429)
!2445 = !DILocation(line: 177, column: 32, scope: !2439, inlinedAt: !2429)
!2446 = !DILocation(line: 177, column: 30, scope: !2439, inlinedAt: !2429)
!2447 = !DILocation(line: 177, column: 18, scope: !2439, inlinedAt: !2429)
!2448 = !DILocation(line: 177, column: 9, scope: !2439, inlinedAt: !2429)
!2449 = !DILocation(line: 177, column: 21, scope: !2439, inlinedAt: !2429)
!2450 = !DILocation(line: 176, column: 39, scope: !2439, inlinedAt: !2429)
!2451 = !DILocation(line: 176, column: 5, scope: !2439, inlinedAt: !2429)
!2452 = distinct !{!2452, !2441, !2453, !1911}
!2453 = !DILocation(line: 177, column: 37, scope: !2435, inlinedAt: !2429)
!2454 = !DILocation(line: 179, column: 2, scope: !2427, inlinedAt: !2429)
!2455 = !DILocation(line: 71, column: 46, scope: !2418, inlinedAt: !2420)
!2456 = !DILocalVariable(name: "this", arg: 1, scope: !2457, type: !2399, flags: DIFlagArtificial | DIFlagObjectPointer)
!2457 = distinct !DISubprogram(name: "min_f", linkageName: "_ZN4RTTL7RTBox3a5min_fEv", scope: !43, file: !42, line: 322, type: !335, scopeLine: 322, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !334, retainedNodes: !1881)
!2458 = !DILocation(line: 0, scope: !2457, inlinedAt: !2459)
!2459 = distinct !DILocation(line: 251, column: 11, scope: !2228)
!2460 = !DILocation(line: 322, column: 39, scope: !2457, inlinedAt: !2459)
!2461 = !DILocation(line: 251, column: 19, scope: !2228)
!2462 = !DILocation(line: 252, column: 9, scope: !2221)
!2463 = distinct !DISubprogram(name: "operator=", linkageName: "_ZN4RTTL16CentroidDiffAABBaSERKS0_", scope: !38, file: !19, line: 236, type: !2464, scopeLine: 236, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !2467, retainedNodes: !1881)
!2464 = !DISubroutineType(types: !2465)
!2465 = !{!2466, !344, !597}
!2466 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !38, size: 64)
!2467 = !DISubprogram(name: "operator=", linkageName: "_ZN4RTTL16CentroidDiffAABBaSERKS0_", scope: !38, type: !2464, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!2468 = !DILocalVariable(name: "this", arg: 1, scope: !2463, type: !37, flags: DIFlagArtificial | DIFlagObjectPointer)
!2469 = !DILocation(line: 0, scope: !2463)
!2470 = !DILocalVariable(arg: 2, scope: !2463, type: !597)
!2471 = !DILocation(line: 236, column: 11, scope: !2472)
!2472 = distinct !DILexicalBlock(scope: !2463, file: !19, line: 236, column: 11)
!2473 = distinct !DISubprogram(name: "operator=", linkageName: "_ZN4RTTL4AABBaSERKS0_", scope: !362, file: !19, line: 175, type: !2474, scopeLine: 175, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !2478, retainedNodes: !1881)
!2474 = !DISubroutineType(types: !2475)
!2475 = !{!2476, !368, !2477}
!2476 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !362, size: 64)
!2477 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !396, size: 64)
!2478 = !DISubprogram(name: "operator=", linkageName: "_ZN4RTTL4AABBaSERKS0_", scope: !362, type: !2474, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!2479 = !DILocalVariable(name: "this", arg: 1, scope: !2473, type: !607, flags: DIFlagArtificial | DIFlagObjectPointer)
!2480 = !DILocation(line: 0, scope: !2473)
!2481 = !DILocalVariable(arg: 2, scope: !2473, type: !2477)
!2482 = !DILocation(line: 175, column: 11, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !2473, file: !19, line: 175, column: 11)
!2484 = distinct !DISubprogram(name: "createNode", linkageName: "_ZN4RTTL15OnDemandBuilder10createNodeEPNS_4AABBEPii", scope: !578, file: !571, line: 40, type: !604, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !603, retainedNodes: !1881)
!2485 = !DILocalVariable(name: "this", arg: 1, scope: !2484, type: !1928, flags: DIFlagArtificial | DIFlagObjectPointer)
!2486 = !DILocation(line: 0, scope: !2484)
!2487 = !DILocalVariable(name: "bvh", arg: 2, scope: !2484, file: !571, line: 40, type: !606)
!2488 = !DILocation(line: 40, column: 46, scope: !2484)
!2489 = !DILocalVariable(name: "item", arg: 3, scope: !2484, file: !571, line: 41, type: !608)
!2490 = !DILocation(line: 41, column: 33, scope: !2484)
!2491 = !DILocalVariable(name: "nodeID", arg: 4, scope: !2484, file: !571, line: 42, type: !13)
!2492 = !DILocation(line: 42, column: 26, scope: !2484)
!2493 = !DILocation(line: 44, column: 3, scope: !2484)
!2494 = !DILocalVariable(name: "this", arg: 1, scope: !2495, type: !2169, flags: DIFlagArtificial | DIFlagObjectPointer)
!2495 = distinct !DISubprogram(name: "isLazy", linkageName: "_ZNK4RTTL4AABB6isLazyEv", scope: !362, file: !19, line: 228, type: !411, scopeLine: 228, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !413, retainedNodes: !1881)
!2496 = !DILocation(line: 0, scope: !2495, inlinedAt: !2497)
!2497 = distinct !DILocation(line: 44, column: 3, scope: !2484)
!2498 = !DILocation(line: 0, scope: !2177, inlinedAt: !2499)
!2499 = distinct !DILocation(line: 228, column: 46, scope: !2495, inlinedAt: !2497)
!2500 = !DILocation(line: 233, column: 70, scope: !2177, inlinedAt: !2499)
!2501 = !DILocation(line: 233, column: 55, scope: !2177, inlinedAt: !2499)
!2502 = !DILocation(line: 228, column: 46, scope: !2495, inlinedAt: !2497)
!2503 = !DILocation(line: 228, column: 55, scope: !2495, inlinedAt: !2497)
!2504 = !DILocalVariable(name: "voxel", scope: !2484, file: !571, line: 46, type: !362)
!2505 = !DILocation(line: 46, column: 8, scope: !2484)
!2506 = !DILocation(line: 46, column: 16, scope: !2484)
!2507 = !DILocation(line: 46, column: 20, scope: !2484)
!2508 = !DILocalVariable(name: "begin", scope: !2484, file: !571, line: 47, type: !294)
!2509 = !DILocation(line: 47, column: 13, scope: !2484)
!2510 = !DILocation(line: 47, column: 21, scope: !2484)
!2511 = !DILocation(line: 47, column: 25, scope: !2484)
!2512 = !DILocalVariable(name: "this", arg: 1, scope: !2513, type: !2169, flags: DIFlagArtificial | DIFlagObjectPointer)
!2513 = distinct !DISubprogram(name: "itemOffset", linkageName: "_ZNK4RTTL4AABB10itemOffsetEv", scope: !362, file: !19, line: 226, type: !408, scopeLine: 226, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !407, retainedNodes: !1881)
!2514 = !DILocation(line: 0, scope: !2513, inlinedAt: !2515)
!2515 = distinct !DILocation(line: 47, column: 33, scope: !2484)
!2516 = !DILocation(line: 226, column: 58, scope: !2513, inlinedAt: !2515)
!2517 = !DILocation(line: 226, column: 83, scope: !2513, inlinedAt: !2515)
!2518 = !DILocation(line: 226, column: 92, scope: !2513, inlinedAt: !2515)
!2519 = !DILocalVariable(name: "end", scope: !2484, file: !571, line: 48, type: !294)
!2520 = !DILocation(line: 48, column: 13, scope: !2484)
!2521 = !DILocation(line: 48, column: 19, scope: !2484)
!2522 = !DILocation(line: 48, column: 25, scope: !2484)
!2523 = !DILocation(line: 48, column: 29, scope: !2484)
!2524 = !DILocalVariable(name: "this", arg: 1, scope: !2525, type: !2169, flags: DIFlagArtificial | DIFlagObjectPointer)
!2525 = distinct !DISubprogram(name: "lazyItems", linkageName: "_ZNK4RTTL4AABB9lazyItemsEv", scope: !362, file: !19, line: 229, type: !408, scopeLine: 229, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !414, retainedNodes: !1881)
!2526 = !DILocation(line: 0, scope: !2525, inlinedAt: !2527)
!2527 = distinct !DILocation(line: 48, column: 37, scope: !2484)
!2528 = !DILocation(line: 0, scope: !2177, inlinedAt: !2529)
!2529 = distinct !DILocation(line: 229, column: 57, scope: !2525, inlinedAt: !2527)
!2530 = !DILocation(line: 233, column: 70, scope: !2177, inlinedAt: !2529)
!2531 = !DILocation(line: 233, column: 55, scope: !2177, inlinedAt: !2529)
!2532 = !DILocation(line: 229, column: 57, scope: !2525, inlinedAt: !2527)
!2533 = !DILocation(line: 229, column: 66, scope: !2525, inlinedAt: !2527)
!2534 = !DILocation(line: 48, column: 24, scope: !2484)
!2535 = !DILocalVariable(name: "items", scope: !2484, file: !571, line: 49, type: !294)
!2536 = !DILocation(line: 49, column: 13, scope: !2484)
!2537 = !DILocation(line: 49, column: 21, scope: !2484)
!2538 = !DILocation(line: 49, column: 25, scope: !2484)
!2539 = !DILocation(line: 49, column: 24, scope: !2484)
!2540 = !DILocation(line: 53, column: 7, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !2484, file: !571, line: 53, column: 7)
!2542 = !DILocation(line: 53, column: 13, scope: !2541)
!2543 = !DILocation(line: 53, column: 7, scope: !2484)
!2544 = !DILocation(line: 54, column: 5, scope: !2541)
!2545 = !DILabel(scope: !2546, name: "createLeaf", file: !571, line: 56)
!2546 = distinct !DILexicalBlock(scope: !2541, file: !571, line: 54, column: 5)
!2547 = !DILocation(line: 56, column: 5, scope: !2546)
!2548 = !DILocation(line: 57, column: 7, scope: !2546)
!2549 = !DILocation(line: 57, column: 11, scope: !2546)
!2550 = !DILocation(line: 57, column: 19, scope: !2546)
!2551 = !DILocation(line: 58, column: 7, scope: !2546)
!2552 = !DILocation(line: 58, column: 11, scope: !2546)
!2553 = !DILocation(line: 58, column: 30, scope: !2546)
!2554 = !DILocation(line: 58, column: 36, scope: !2546)
!2555 = !DILocation(line: 58, column: 40, scope: !2546)
!2556 = !DILocation(line: 58, column: 39, scope: !2546)
!2557 = !DILocalVariable(name: "this", arg: 1, scope: !2558, type: !607, flags: DIFlagArtificial | DIFlagObjectPointer)
!2558 = distinct !DISubprogram(name: "createLeaf", linkageName: "_ZN4RTTL4AABB10createLeafEjj", scope: !362, file: !19, line: 192, type: !378, scopeLine: 193, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !377, retainedNodes: !1881)
!2559 = !DILocation(line: 0, scope: !2558, inlinedAt: !2560)
!2560 = distinct !DILocation(line: 58, column: 19, scope: !2546)
!2561 = !DILocalVariable(name: "offset", arg: 2, scope: !2558, file: !19, line: 192, type: !380)
!2562 = !DILocation(line: 192, column: 52, scope: !2558, inlinedAt: !2560)
!2563 = !DILocalVariable(name: "entries", arg: 3, scope: !2558, file: !19, line: 192, type: !380)
!2564 = !DILocation(line: 192, column: 79, scope: !2558, inlinedAt: !2560)
!2565 = !DILocation(line: 194, column: 26, scope: !2558, inlinedAt: !2560)
!2566 = !DILocation(line: 194, column: 33, scope: !2558, inlinedAt: !2560)
!2567 = !DILocation(line: 0, scope: !2168, inlinedAt: !2568)
!2568 = distinct !DILocation(line: 194, column: 13, scope: !2558, inlinedAt: !2560)
!2569 = !DILocation(line: 225, column: 57, scope: !2168, inlinedAt: !2568)
!2570 = !DILocation(line: 194, column: 24, scope: !2558, inlinedAt: !2560)
!2571 = !DILocation(line: 195, column: 23, scope: !2558, inlinedAt: !2560)
!2572 = !DILocalVariable(name: "this", arg: 1, scope: !2573, type: !2169, flags: DIFlagArtificial | DIFlagObjectPointer)
!2573 = distinct !DISubprogram(name: "items", linkageName: "_ZNK4RTTL4AABB5itemsEv", scope: !362, file: !19, line: 224, type: !399, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !398, retainedNodes: !1881)
!2574 = !DILocation(line: 0, scope: !2573, inlinedAt: !2575)
!2575 = distinct !DILocation(line: 195, column: 13, scope: !2558, inlinedAt: !2560)
!2576 = !DILocation(line: 224, column: 71, scope: !2573, inlinedAt: !2575)
!2577 = !DILocation(line: 224, column: 56, scope: !2573, inlinedAt: !2575)
!2578 = !DILocation(line: 224, column: 81, scope: !2573, inlinedAt: !2575)
!2579 = !DILocation(line: 195, column: 21, scope: !2558, inlinedAt: !2560)
!2580 = !DILocalVariable(name: "this", arg: 1, scope: !2581, type: !2169, flags: DIFlagArtificial | DIFlagObjectPointer)
!2581 = distinct !DISubprogram(name: "axis", linkageName: "_ZNK4RTTL4AABB4axisEv", scope: !362, file: !19, line: 222, type: !392, scopeLine: 222, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !391, retainedNodes: !1881)
!2582 = !DILocation(line: 0, scope: !2581, inlinedAt: !2583)
!2583 = distinct !DILocation(line: 196, column: 13, scope: !2558, inlinedAt: !2560)
!2584 = !DILocation(line: 222, column: 69, scope: !2581, inlinedAt: !2583)
!2585 = !DILocation(line: 222, column: 54, scope: !2581, inlinedAt: !2583)
!2586 = !DILocation(line: 196, column: 20, scope: !2558, inlinedAt: !2560)
!2587 = !DILocalVariable(name: "this", arg: 1, scope: !2588, type: !2169, flags: DIFlagArtificial | DIFlagObjectPointer)
!2588 = distinct !DISubprogram(name: "sign", linkageName: "_ZNK4RTTL4AABB4signEv", scope: !362, file: !19, line: 223, type: !392, scopeLine: 223, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !397, retainedNodes: !1881)
!2589 = !DILocation(line: 0, scope: !2588, inlinedAt: !2590)
!2590 = distinct !DILocation(line: 197, column: 13, scope: !2558, inlinedAt: !2560)
!2591 = !DILocation(line: 223, column: 69, scope: !2588, inlinedAt: !2590)
!2592 = !DILocation(line: 223, column: 54, scope: !2588, inlinedAt: !2590)
!2593 = !DILocation(line: 223, column: 79, scope: !2588, inlinedAt: !2590)
!2594 = !DILocation(line: 197, column: 20, scope: !2558, inlinedAt: !2560)
!2595 = !DILocation(line: 59, column: 7, scope: !2546)
!2596 = !DILocalVariable(name: "centroidBounds", scope: !2484, file: !571, line: 61, type: !362)
!2597 = !DILocation(line: 61, column: 8, scope: !2484)
!2598 = !DILocalVariable(name: "this", arg: 1, scope: !2599, type: !1980, flags: DIFlagArtificial | DIFlagObjectPointer)
!2599 = distinct !DISubprogram(name: "setEmpty", linkageName: "_ZN4RTTL7RTBox_tILi1E5sse_fLi0EE8setEmptyEv", scope: !46, file: !42, line: 34, type: !211, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !232, retainedNodes: !1881)
!2600 = !DILocation(line: 0, scope: !2599, inlinedAt: !2601)
!2601 = distinct !DILocation(line: 62, column: 18, scope: !2484)
!2602 = !DILocalVariable(name: "this", arg: 1, scope: !2603, type: !1980, flags: DIFlagArtificial | DIFlagObjectPointer)
!2603 = distinct !DISubprogram(name: "reset", linkageName: "_ZN4RTTL7RTBox_tILi1E5sse_fLi0EE5resetEv", scope: !46, file: !42, line: 266, type: !211, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !231, retainedNodes: !1881)
!2604 = !DILocation(line: 0, scope: !2603, inlinedAt: !2605)
!2605 = distinct !DILocation(line: 34, column: 35, scope: !2599, inlinedAt: !2601)
!2606 = !DILocation(line: 622, column: 40, scope: !1887, inlinedAt: !2607)
!2607 = distinct !DILocation(line: 268, column: 17, scope: !2603, inlinedAt: !2605)
!2608 = !DILocation(line: 623, column: 11, scope: !1887, inlinedAt: !2607)
!2609 = !DILocation(line: 626, column: 14, scope: !1896, inlinedAt: !2607)
!2610 = !DILocation(line: 626, column: 10, scope: !1896, inlinedAt: !2607)
!2611 = !DILocation(line: 626, column: 21, scope: !1900, inlinedAt: !2607)
!2612 = !DILocation(line: 626, column: 23, scope: !1900, inlinedAt: !2607)
!2613 = !DILocation(line: 626, column: 5, scope: !1896, inlinedAt: !2607)
!2614 = !DILocation(line: 627, column: 23, scope: !1900, inlinedAt: !2607)
!2615 = !DILocation(line: 627, column: 18, scope: !1900, inlinedAt: !2607)
!2616 = !DILocation(line: 627, column: 9, scope: !1900, inlinedAt: !2607)
!2617 = !DILocation(line: 627, column: 21, scope: !1900, inlinedAt: !2607)
!2618 = !DILocation(line: 626, column: 39, scope: !1900, inlinedAt: !2607)
!2619 = !DILocation(line: 626, column: 5, scope: !1900, inlinedAt: !2607)
!2620 = distinct !{!2620, !2613, !2621, !1911}
!2621 = !DILocation(line: 627, column: 23, scope: !1896, inlinedAt: !2607)
!2622 = !DILocation(line: 629, column: 5, scope: !1887, inlinedAt: !2607)
!2623 = !DILocation(line: 268, column: 17, scope: !2603, inlinedAt: !2605)
!2624 = !DILocalVariable(name: "this", arg: 1, scope: !2625, type: !1988, flags: DIFlagArtificial | DIFlagObjectPointer)
!2625 = distinct !DISubprogram(name: "operator=", linkageName: "_ZN4RTTL7RTVec_tILi1E5sse_fLi0EEaSERKS1_", scope: !50, file: !53, line: 81, type: !139, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !138, retainedNodes: !1881)
!2626 = !DILocation(line: 0, scope: !2625, inlinedAt: !2627)
!2627 = distinct !DILocation(line: 268, column: 15, scope: !2603, inlinedAt: !2605)
!2628 = !DILocalVariable(name: "x", arg: 2, scope: !2625, file: !53, line: 81, type: !71)
!2629 = !DILocation(line: 81, column: 54, scope: !2625, inlinedAt: !2627)
!2630 = !DILocalVariable(name: "t", scope: !2625, file: !53, line: 82, type: !185)
!2631 = !DILocation(line: 82, column: 20, scope: !2625, inlinedAt: !2627)
!2632 = !DILocation(line: 82, column: 24, scope: !2625, inlinedAt: !2627)
!2633 = !DILocation(line: 83, column: 9, scope: !2625, inlinedAt: !2627)
!2634 = !DILocation(line: 83, column: 31, scope: !2625, inlinedAt: !2627)
!2635 = !DILocalVariable(name: "this", arg: 1, scope: !2636, type: !2008, flags: DIFlagArtificial | DIFlagObjectPointer)
!2636 = distinct !DISubprogram(name: "assignDataTypeValue", linkageName: "_ZN4RTTL8RTData_tILi1E5sse_fLi0EE19assignDataTypeValueERKS1_", scope: !55, file: !56, line: 28, type: !68, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !67, retainedNodes: !1881)
!2637 = !DILocation(line: 0, scope: !2636, inlinedAt: !2638)
!2638 = distinct !DILocation(line: 83, column: 11, scope: !2625, inlinedAt: !2627)
!2639 = !DILocalVariable(name: "v", arg: 2, scope: !2636, file: !56, line: 28, type: !71)
!2640 = !DILocation(line: 28, column: 58, scope: !2636, inlinedAt: !2638)
!2641 = !DILocalVariable(name: "i", scope: !2642, file: !56, line: 29, type: !13)
!2642 = distinct !DILexicalBlock(scope: !2636, file: !56, line: 29, column: 13)
!2643 = !DILocation(line: 29, column: 22, scope: !2642, inlinedAt: !2638)
!2644 = !DILocation(line: 29, column: 18, scope: !2642, inlinedAt: !2638)
!2645 = !DILocation(line: 29, column: 29, scope: !2646, inlinedAt: !2638)
!2646 = distinct !DILexicalBlock(scope: !2642, file: !56, line: 29, column: 13)
!2647 = !DILocation(line: 29, column: 31, scope: !2646, inlinedAt: !2638)
!2648 = !DILocation(line: 29, column: 13, scope: !2642, inlinedAt: !2638)
!2649 = !DILocation(line: 30, column: 24, scope: !2646, inlinedAt: !2638)
!2650 = !DILocation(line: 30, column: 19, scope: !2646, inlinedAt: !2638)
!2651 = !DILocation(line: 30, column: 17, scope: !2646, inlinedAt: !2638)
!2652 = !DILocation(line: 30, column: 22, scope: !2646, inlinedAt: !2638)
!2653 = !DILocation(line: 29, column: 37, scope: !2646, inlinedAt: !2638)
!2654 = !DILocation(line: 29, column: 13, scope: !2646, inlinedAt: !2638)
!2655 = distinct !{!2655, !2648, !2656, !1911}
!2656 = !DILocation(line: 30, column: 24, scope: !2642, inlinedAt: !2638)
!2657 = !DILocation(line: 622, column: 40, scope: !1887, inlinedAt: !2658)
!2658 = distinct !DILocation(line: 269, column: 17, scope: !2603, inlinedAt: !2605)
!2659 = !DILocation(line: 623, column: 11, scope: !1887, inlinedAt: !2658)
!2660 = !DILocation(line: 626, column: 14, scope: !1896, inlinedAt: !2658)
!2661 = !DILocation(line: 626, column: 10, scope: !1896, inlinedAt: !2658)
!2662 = !DILocation(line: 626, column: 21, scope: !1900, inlinedAt: !2658)
!2663 = !DILocation(line: 626, column: 23, scope: !1900, inlinedAt: !2658)
!2664 = !DILocation(line: 626, column: 5, scope: !1896, inlinedAt: !2658)
!2665 = !DILocation(line: 627, column: 23, scope: !1900, inlinedAt: !2658)
!2666 = !DILocation(line: 627, column: 18, scope: !1900, inlinedAt: !2658)
!2667 = !DILocation(line: 627, column: 9, scope: !1900, inlinedAt: !2658)
!2668 = !DILocation(line: 627, column: 21, scope: !1900, inlinedAt: !2658)
!2669 = !DILocation(line: 626, column: 39, scope: !1900, inlinedAt: !2658)
!2670 = !DILocation(line: 626, column: 5, scope: !1900, inlinedAt: !2658)
!2671 = distinct !{!2671, !2664, !2672, !1911}
!2672 = !DILocation(line: 627, column: 23, scope: !1896, inlinedAt: !2658)
!2673 = !DILocation(line: 629, column: 5, scope: !1887, inlinedAt: !2658)
!2674 = !DILocation(line: 269, column: 17, scope: !2603, inlinedAt: !2605)
!2675 = !DILocation(line: 269, column: 9, scope: !2603, inlinedAt: !2605)
!2676 = !DILocation(line: 0, scope: !2625, inlinedAt: !2677)
!2677 = distinct !DILocation(line: 269, column: 15, scope: !2603, inlinedAt: !2605)
!2678 = !DILocation(line: 81, column: 54, scope: !2625, inlinedAt: !2677)
!2679 = !DILocation(line: 82, column: 20, scope: !2625, inlinedAt: !2677)
!2680 = !DILocation(line: 82, column: 24, scope: !2625, inlinedAt: !2677)
!2681 = !DILocation(line: 83, column: 9, scope: !2625, inlinedAt: !2677)
!2682 = !DILocation(line: 83, column: 31, scope: !2625, inlinedAt: !2677)
!2683 = !DILocation(line: 0, scope: !2636, inlinedAt: !2684)
!2684 = distinct !DILocation(line: 83, column: 11, scope: !2625, inlinedAt: !2677)
!2685 = !DILocation(line: 28, column: 58, scope: !2636, inlinedAt: !2684)
!2686 = !DILocation(line: 29, column: 22, scope: !2642, inlinedAt: !2684)
!2687 = !DILocation(line: 29, column: 18, scope: !2642, inlinedAt: !2684)
!2688 = !DILocation(line: 29, column: 29, scope: !2646, inlinedAt: !2684)
!2689 = !DILocation(line: 29, column: 31, scope: !2646, inlinedAt: !2684)
!2690 = !DILocation(line: 29, column: 13, scope: !2642, inlinedAt: !2684)
!2691 = !DILocation(line: 30, column: 24, scope: !2646, inlinedAt: !2684)
!2692 = !DILocation(line: 30, column: 19, scope: !2646, inlinedAt: !2684)
!2693 = !DILocation(line: 30, column: 17, scope: !2646, inlinedAt: !2684)
!2694 = !DILocation(line: 30, column: 22, scope: !2646, inlinedAt: !2684)
!2695 = !DILocation(line: 29, column: 37, scope: !2646, inlinedAt: !2684)
!2696 = !DILocation(line: 29, column: 13, scope: !2646, inlinedAt: !2684)
!2697 = distinct !{!2697, !2690, !2698, !1911}
!2698 = !DILocation(line: 30, column: 24, scope: !2642, inlinedAt: !2684)
!2699 = !DILocalVariable(name: "c_min", scope: !2484, file: !571, line: 63, type: !373)
!2700 = !DILocation(line: 63, column: 15, scope: !2484)
!2701 = !DILocation(line: 0, scope: !2457, inlinedAt: !2702)
!2702 = distinct !DILocation(line: 63, column: 38, scope: !2484)
!2703 = !DILocation(line: 322, column: 39, scope: !2457, inlinedAt: !2702)
!2704 = !DILocation(line: 63, column: 23, scope: !2484)
!2705 = !DILocalVariable(name: "i", scope: !2706, file: !571, line: 65, type: !13)
!2706 = distinct !DILexicalBlock(scope: !2484, file: !571, line: 65, column: 3)
!2707 = !DILocation(line: 65, column: 12, scope: !2706)
!2708 = !DILocation(line: 65, column: 14, scope: !2706)
!2709 = !DILocation(line: 65, column: 8, scope: !2706)
!2710 = !DILocation(line: 65, column: 20, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !2706, file: !571, line: 65, column: 3)
!2712 = !DILocation(line: 65, column: 22, scope: !2711)
!2713 = !DILocation(line: 65, column: 21, scope: !2711)
!2714 = !DILocation(line: 65, column: 3, scope: !2706)
!2715 = !DILocation(line: 66, column: 27, scope: !2711)
!2716 = !DILocation(line: 66, column: 34, scope: !2711)
!2717 = !DILocation(line: 66, column: 39, scope: !2711)
!2718 = !DILocation(line: 66, column: 43, scope: !2711)
!2719 = !DILocalVariable(name: "this", arg: 1, scope: !2720, type: !1980, flags: DIFlagArtificial | DIFlagObjectPointer)
!2720 = distinct !DISubprogram(name: "extend", linkageName: "_ZN4RTTL7RTBox_tILi1E5sse_fLi0EE6extendERKS1_", scope: !46, file: !42, line: 103, type: !256, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !255, retainedNodes: !1881)
!2721 = !DILocation(line: 0, scope: !2720, inlinedAt: !2722)
!2722 = distinct !DILocation(line: 66, column: 20, scope: !2711)
!2723 = !DILocalVariable(name: "v", arg: 2, scope: !2720, file: !42, line: 103, type: !71)
!2724 = !DILocation(line: 103, column: 45, scope: !2720, inlinedAt: !2722)
!2725 = !DILocation(line: 104, column: 26, scope: !2720, inlinedAt: !2722)
!2726 = !DILocalVariable(name: "this", arg: 1, scope: !2727, type: !1988, flags: DIFlagArtificial | DIFlagObjectPointer)
!2727 = distinct !DISubprogram(name: "setMin", linkageName: "_ZN4RTTL7RTVec_tILi1E5sse_fLi0EE6setMinERKS1_", scope: !50, file: !53, line: 169, type: !125, scopeLine: 169, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !161, retainedNodes: !1881)
!2728 = !DILocation(line: 0, scope: !2727, inlinedAt: !2729)
!2729 = distinct !DILocation(line: 104, column: 19, scope: !2720, inlinedAt: !2722)
!2730 = !DILocalVariable(name: "other", arg: 2, scope: !2727, file: !53, line: 169, type: !71)
!2731 = !DILocation(line: 169, column: 41, scope: !2727, inlinedAt: !2729)
!2732 = !DILocalVariable(name: "t", scope: !2727, file: !53, line: 170, type: !185)
!2733 = !DILocation(line: 170, column: 20, scope: !2727, inlinedAt: !2729)
!2734 = !DILocation(line: 170, column: 24, scope: !2727, inlinedAt: !2729)
!2735 = !DILocalVariable(name: "i", scope: !2736, file: !53, line: 171, type: !13)
!2736 = distinct !DILexicalBlock(scope: !2727, file: !53, line: 171, column: 9)
!2737 = !DILocation(line: 171, column: 18, scope: !2736, inlinedAt: !2729)
!2738 = !DILocation(line: 171, column: 14, scope: !2736, inlinedAt: !2729)
!2739 = !DILocation(line: 171, column: 25, scope: !2740, inlinedAt: !2729)
!2740 = distinct !DILexicalBlock(scope: !2736, file: !53, line: 171, column: 9)
!2741 = !DILocation(line: 171, column: 27, scope: !2740, inlinedAt: !2729)
!2742 = !DILocation(line: 171, column: 9, scope: !2736, inlinedAt: !2729)
!2743 = !DILocation(line: 172, column: 24, scope: !2740, inlinedAt: !2729)
!2744 = !DILocation(line: 172, column: 26, scope: !2740, inlinedAt: !2729)
!2745 = !DILocation(line: 0, scope: !2007, inlinedAt: !2746)
!2746 = distinct !DILocation(line: 172, column: 24, scope: !2740, inlinedAt: !2729)
!2747 = !DILocation(line: 49, column: 42, scope: !2007, inlinedAt: !2746)
!2748 = !DILocation(line: 50, column: 22, scope: !2007, inlinedAt: !2746)
!2749 = !DILocation(line: 50, column: 20, scope: !2007, inlinedAt: !2746)
!2750 = !DILocation(line: 172, column: 30, scope: !2740, inlinedAt: !2729)
!2751 = !DILocation(line: 172, column: 20, scope: !2740, inlinedAt: !2729)
!2752 = !DILocation(line: 107, column: 25, scope: !2019, inlinedAt: !2753)
!2753 = distinct !DILocation(line: 172, column: 20, scope: !2740, inlinedAt: !2729)
!2754 = !DILocation(line: 107, column: 34, scope: !2019, inlinedAt: !2753)
!2755 = !DILocation(line: 108, column: 23, scope: !2019, inlinedAt: !2753)
!2756 = !DILocation(line: 108, column: 25, scope: !2019, inlinedAt: !2753)
!2757 = !DILocation(line: 108, column: 12, scope: !2019, inlinedAt: !2753)
!2758 = !DILocation(line: 453, column: 39, scope: !2030, inlinedAt: !2759)
!2759 = distinct !DILocation(line: 108, column: 12, scope: !2019, inlinedAt: !2753)
!2760 = !DILocation(line: 453, column: 48, scope: !2030, inlinedAt: !2759)
!2761 = !DILocation(line: 454, column: 8, scope: !2030, inlinedAt: !2759)
!2762 = !DILocation(line: 457, column: 14, scope: !2038, inlinedAt: !2759)
!2763 = !DILocation(line: 457, column: 10, scope: !2038, inlinedAt: !2759)
!2764 = !DILocation(line: 457, column: 21, scope: !2042, inlinedAt: !2759)
!2765 = !DILocation(line: 457, column: 23, scope: !2042, inlinedAt: !2759)
!2766 = !DILocation(line: 457, column: 5, scope: !2038, inlinedAt: !2759)
!2767 = !DILocation(line: 458, column: 28, scope: !2042, inlinedAt: !2759)
!2768 = !DILocation(line: 458, column: 9, scope: !2042, inlinedAt: !2759)
!2769 = !DILocation(line: 458, column: 26, scope: !2042, inlinedAt: !2759)
!2770 = !DILocation(line: 457, column: 39, scope: !2042, inlinedAt: !2759)
!2771 = !DILocation(line: 457, column: 5, scope: !2042, inlinedAt: !2759)
!2772 = distinct !{!2772, !2766, !2773, !1911}
!2773 = !DILocation(line: 458, column: 28, scope: !2038, inlinedAt: !2759)
!2774 = !DILocation(line: 460, column: 2, scope: !2030, inlinedAt: !2759)
!2775 = !DILocation(line: 108, column: 5, scope: !2019, inlinedAt: !2753)
!2776 = !DILocation(line: 172, column: 13, scope: !2740, inlinedAt: !2729)
!2777 = !DILocation(line: 172, column: 15, scope: !2740, inlinedAt: !2729)
!2778 = !DILocation(line: 0, scope: !2007, inlinedAt: !2779)
!2779 = distinct !DILocation(line: 172, column: 13, scope: !2740, inlinedAt: !2729)
!2780 = !DILocation(line: 49, column: 42, scope: !2007, inlinedAt: !2779)
!2781 = !DILocation(line: 50, column: 22, scope: !2007, inlinedAt: !2779)
!2782 = !DILocation(line: 50, column: 20, scope: !2007, inlinedAt: !2779)
!2783 = !DILocation(line: 172, column: 18, scope: !2740, inlinedAt: !2729)
!2784 = !DILocation(line: 171, column: 33, scope: !2740, inlinedAt: !2729)
!2785 = !DILocation(line: 171, column: 9, scope: !2740, inlinedAt: !2729)
!2786 = distinct !{!2786, !2742, !2787, !1911}
!2787 = !DILocation(line: 172, column: 35, scope: !2736, inlinedAt: !2729)
!2788 = !DILocation(line: 105, column: 13, scope: !2720, inlinedAt: !2722)
!2789 = !DILocation(line: 105, column: 26, scope: !2720, inlinedAt: !2722)
!2790 = !DILocalVariable(name: "this", arg: 1, scope: !2791, type: !1988, flags: DIFlagArtificial | DIFlagObjectPointer)
!2791 = distinct !DISubprogram(name: "setMax", linkageName: "_ZN4RTTL7RTVec_tILi1E5sse_fLi0EE6setMaxERKS1_", scope: !50, file: !53, line: 179, type: !125, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !163, retainedNodes: !1881)
!2792 = !DILocation(line: 0, scope: !2791, inlinedAt: !2793)
!2793 = distinct !DILocation(line: 105, column: 19, scope: !2720, inlinedAt: !2722)
!2794 = !DILocalVariable(name: "other", arg: 2, scope: !2791, file: !53, line: 179, type: !71)
!2795 = !DILocation(line: 179, column: 41, scope: !2791, inlinedAt: !2793)
!2796 = !DILocalVariable(name: "t", scope: !2791, file: !53, line: 180, type: !185)
!2797 = !DILocation(line: 180, column: 20, scope: !2791, inlinedAt: !2793)
!2798 = !DILocation(line: 180, column: 24, scope: !2791, inlinedAt: !2793)
!2799 = !DILocalVariable(name: "i", scope: !2800, file: !53, line: 181, type: !13)
!2800 = distinct !DILexicalBlock(scope: !2791, file: !53, line: 181, column: 9)
!2801 = !DILocation(line: 181, column: 18, scope: !2800, inlinedAt: !2793)
!2802 = !DILocation(line: 181, column: 14, scope: !2800, inlinedAt: !2793)
!2803 = !DILocation(line: 181, column: 25, scope: !2804, inlinedAt: !2793)
!2804 = distinct !DILexicalBlock(scope: !2800, file: !53, line: 181, column: 9)
!2805 = !DILocation(line: 181, column: 27, scope: !2804, inlinedAt: !2793)
!2806 = !DILocation(line: 181, column: 9, scope: !2800, inlinedAt: !2793)
!2807 = !DILocation(line: 182, column: 24, scope: !2804, inlinedAt: !2793)
!2808 = !DILocation(line: 182, column: 26, scope: !2804, inlinedAt: !2793)
!2809 = !DILocation(line: 0, scope: !2007, inlinedAt: !2810)
!2810 = distinct !DILocation(line: 182, column: 24, scope: !2804, inlinedAt: !2793)
!2811 = !DILocation(line: 49, column: 42, scope: !2007, inlinedAt: !2810)
!2812 = !DILocation(line: 50, column: 22, scope: !2007, inlinedAt: !2810)
!2813 = !DILocation(line: 50, column: 20, scope: !2007, inlinedAt: !2810)
!2814 = !DILocation(line: 182, column: 30, scope: !2804, inlinedAt: !2793)
!2815 = !DILocation(line: 182, column: 20, scope: !2804, inlinedAt: !2793)
!2816 = !DILocation(line: 111, column: 25, scope: !2097, inlinedAt: !2817)
!2817 = distinct !DILocation(line: 182, column: 20, scope: !2804, inlinedAt: !2793)
!2818 = !DILocation(line: 111, column: 34, scope: !2097, inlinedAt: !2817)
!2819 = !DILocation(line: 112, column: 23, scope: !2097, inlinedAt: !2817)
!2820 = !DILocation(line: 112, column: 25, scope: !2097, inlinedAt: !2817)
!2821 = !DILocation(line: 112, column: 12, scope: !2097, inlinedAt: !2817)
!2822 = !DILocation(line: 443, column: 39, scope: !2106, inlinedAt: !2823)
!2823 = distinct !DILocation(line: 112, column: 12, scope: !2097, inlinedAt: !2817)
!2824 = !DILocation(line: 443, column: 48, scope: !2106, inlinedAt: !2823)
!2825 = !DILocation(line: 444, column: 8, scope: !2106, inlinedAt: !2823)
!2826 = !DILocation(line: 447, column: 14, scope: !2114, inlinedAt: !2823)
!2827 = !DILocation(line: 447, column: 10, scope: !2114, inlinedAt: !2823)
!2828 = !DILocation(line: 447, column: 21, scope: !2118, inlinedAt: !2823)
!2829 = !DILocation(line: 447, column: 23, scope: !2118, inlinedAt: !2823)
!2830 = !DILocation(line: 447, column: 5, scope: !2114, inlinedAt: !2823)
!2831 = !DILocation(line: 448, column: 28, scope: !2118, inlinedAt: !2823)
!2832 = !DILocation(line: 448, column: 9, scope: !2118, inlinedAt: !2823)
!2833 = !DILocation(line: 448, column: 26, scope: !2118, inlinedAt: !2823)
!2834 = !DILocation(line: 447, column: 39, scope: !2118, inlinedAt: !2823)
!2835 = !DILocation(line: 447, column: 5, scope: !2118, inlinedAt: !2823)
!2836 = distinct !{!2836, !2830, !2837, !1911}
!2837 = !DILocation(line: 448, column: 28, scope: !2114, inlinedAt: !2823)
!2838 = !DILocation(line: 450, column: 2, scope: !2106, inlinedAt: !2823)
!2839 = !DILocation(line: 112, column: 5, scope: !2097, inlinedAt: !2817)
!2840 = !DILocation(line: 182, column: 13, scope: !2804, inlinedAt: !2793)
!2841 = !DILocation(line: 182, column: 15, scope: !2804, inlinedAt: !2793)
!2842 = !DILocation(line: 0, scope: !2007, inlinedAt: !2843)
!2843 = distinct !DILocation(line: 182, column: 13, scope: !2804, inlinedAt: !2793)
!2844 = !DILocation(line: 49, column: 42, scope: !2007, inlinedAt: !2843)
!2845 = !DILocation(line: 50, column: 22, scope: !2007, inlinedAt: !2843)
!2846 = !DILocation(line: 50, column: 20, scope: !2007, inlinedAt: !2843)
!2847 = !DILocation(line: 182, column: 18, scope: !2804, inlinedAt: !2793)
!2848 = !DILocation(line: 181, column: 33, scope: !2804, inlinedAt: !2793)
!2849 = !DILocation(line: 181, column: 9, scope: !2804, inlinedAt: !2793)
!2850 = distinct !{!2850, !2806, !2851, !1911}
!2851 = !DILocation(line: 182, column: 35, scope: !2800, inlinedAt: !2793)
!2852 = !DILocation(line: 66, column: 5, scope: !2711)
!2853 = !DILocation(line: 65, column: 27, scope: !2711)
!2854 = !DILocation(line: 65, column: 3, scope: !2711)
!2855 = distinct !{!2855, !2714, !2856, !1911}
!2856 = !DILocation(line: 66, column: 53, scope: !2706)
!2857 = !DILocalVariable(name: "numBins", scope: !2484, file: !571, line: 68, type: !294)
!2858 = !DILocation(line: 68, column: 17, scope: !2484)
!2859 = !DILocation(line: 68, column: 56, scope: !2484)
!2860 = !DILocation(line: 68, column: 50, scope: !2484)
!2861 = !DILocation(line: 68, column: 44, scope: !2484)
!2862 = !DILocation(line: 68, column: 41, scope: !2484)
!2863 = !DILocation(line: 68, column: 39, scope: !2484)
!2864 = !DILocation(line: 68, column: 27, scope: !2484)
!2865 = !DILocalVariable(name: "distance", scope: !2484, file: !571, line: 69, type: !373)
!2866 = !DILocation(line: 69, column: 19, scope: !2484)
!2867 = !DILocation(line: 0, scope: !2230, inlinedAt: !2868)
!2868 = distinct !DILocation(line: 69, column: 45, scope: !2484)
!2869 = !DILocation(line: 0, scope: !2235, inlinedAt: !2870)
!2870 = distinct !DILocation(line: 288, column: 69, scope: !2230, inlinedAt: !2868)
!2871 = !DILocation(line: 170, column: 20, scope: !2235, inlinedAt: !2870)
!2872 = !DILocation(line: 139, column: 86, scope: !2241, inlinedAt: !2873)
!2873 = distinct !DILocation(line: 170, column: 26, scope: !2235, inlinedAt: !2870)
!2874 = !DILocation(line: 139, column: 124, scope: !2241, inlinedAt: !2873)
!2875 = !DILocation(line: 140, column: 37, scope: !2241, inlinedAt: !2873)
!2876 = !DILocation(line: 141, column: 17, scope: !2241, inlinedAt: !2873)
!2877 = !DILocation(line: 141, column: 35, scope: !2241, inlinedAt: !2873)
!2878 = !DILocation(line: 141, column: 37, scope: !2241, inlinedAt: !2873)
!2879 = !DILocation(line: 141, column: 46, scope: !2241, inlinedAt: !2873)
!2880 = !DILocation(line: 141, column: 48, scope: !2241, inlinedAt: !2873)
!2881 = !DILocation(line: 0, scope: !2258, inlinedAt: !2882)
!2882 = distinct !DILocation(line: 141, column: 26, scope: !2241, inlinedAt: !2873)
!2883 = !DILocation(line: 100, column: 47, scope: !2258, inlinedAt: !2882)
!2884 = !DILocation(line: 100, column: 67, scope: !2258, inlinedAt: !2882)
!2885 = !DILocation(line: 101, column: 22, scope: !2266, inlinedAt: !2882)
!2886 = !DILocation(line: 101, column: 18, scope: !2266, inlinedAt: !2882)
!2887 = !DILocation(line: 101, column: 29, scope: !2270, inlinedAt: !2882)
!2888 = !DILocation(line: 101, column: 31, scope: !2270, inlinedAt: !2882)
!2889 = !DILocation(line: 101, column: 13, scope: !2266, inlinedAt: !2882)
!2890 = !DILocation(line: 102, column: 24, scope: !2270, inlinedAt: !2882)
!2891 = !DILocation(line: 102, column: 29, scope: !2270, inlinedAt: !2882)
!2892 = !DILocation(line: 102, column: 34, scope: !2270, inlinedAt: !2882)
!2893 = !DILocation(line: 102, column: 39, scope: !2270, inlinedAt: !2882)
!2894 = !DILocation(line: 102, column: 32, scope: !2270, inlinedAt: !2882)
!2895 = !DILocation(line: 72, column: 32, scope: !2279, inlinedAt: !2896)
!2896 = distinct !DILocation(line: 102, column: 32, scope: !2270, inlinedAt: !2882)
!2897 = !DILocation(line: 72, column: 41, scope: !2279, inlinedAt: !2896)
!2898 = !DILocation(line: 72, column: 64, scope: !2279, inlinedAt: !2896)
!2899 = !DILocation(line: 72, column: 67, scope: !2279, inlinedAt: !2896)
!2900 = !DILocation(line: 72, column: 53, scope: !2279, inlinedAt: !2896)
!2901 = !DILocation(line: 779, column: 39, scope: !2288, inlinedAt: !2902)
!2902 = distinct !DILocation(line: 72, column: 53, scope: !2279, inlinedAt: !2896)
!2903 = !DILocation(line: 779, column: 48, scope: !2288, inlinedAt: !2902)
!2904 = !DILocation(line: 780, column: 11, scope: !2288, inlinedAt: !2902)
!2905 = !DILocation(line: 783, column: 14, scope: !2296, inlinedAt: !2902)
!2906 = !DILocation(line: 783, column: 10, scope: !2296, inlinedAt: !2902)
!2907 = !DILocation(line: 783, column: 21, scope: !2300, inlinedAt: !2902)
!2908 = !DILocation(line: 783, column: 23, scope: !2300, inlinedAt: !2902)
!2909 = !DILocation(line: 783, column: 5, scope: !2296, inlinedAt: !2902)
!2910 = !DILocation(line: 784, column: 27, scope: !2300, inlinedAt: !2902)
!2911 = !DILocation(line: 784, column: 23, scope: !2300, inlinedAt: !2902)
!2912 = !DILocation(line: 784, column: 36, scope: !2300, inlinedAt: !2902)
!2913 = !DILocation(line: 784, column: 32, scope: !2300, inlinedAt: !2902)
!2914 = !DILocation(line: 784, column: 30, scope: !2300, inlinedAt: !2902)
!2915 = !DILocation(line: 784, column: 18, scope: !2300, inlinedAt: !2902)
!2916 = !DILocation(line: 784, column: 9, scope: !2300, inlinedAt: !2902)
!2917 = !DILocation(line: 784, column: 21, scope: !2300, inlinedAt: !2902)
!2918 = !DILocation(line: 783, column: 39, scope: !2300, inlinedAt: !2902)
!2919 = !DILocation(line: 783, column: 5, scope: !2300, inlinedAt: !2902)
!2920 = distinct !{!2920, !2909, !2921, !1911}
!2921 = !DILocation(line: 784, column: 37, scope: !2296, inlinedAt: !2902)
!2922 = !DILocation(line: 786, column: 5, scope: !2288, inlinedAt: !2902)
!2923 = !DILocation(line: 72, column: 46, scope: !2279, inlinedAt: !2896)
!2924 = !DILocation(line: 102, column: 19, scope: !2270, inlinedAt: !2882)
!2925 = !DILocation(line: 102, column: 17, scope: !2270, inlinedAt: !2882)
!2926 = !DILocation(line: 102, column: 22, scope: !2270, inlinedAt: !2882)
!2927 = !DILocation(line: 101, column: 37, scope: !2270, inlinedAt: !2882)
!2928 = !DILocation(line: 101, column: 13, scope: !2270, inlinedAt: !2882)
!2929 = distinct !{!2929, !2889, !2930, !1911}
!2930 = !DILocation(line: 102, column: 40, scope: !2266, inlinedAt: !2882)
!2931 = !DILocation(line: 142, column: 9, scope: !2241, inlinedAt: !2873)
!2932 = !DILocation(line: 170, column: 26, scope: !2235, inlinedAt: !2870)
!2933 = !DILocation(line: 170, column: 13, scope: !2235, inlinedAt: !2870)
!2934 = !DILocation(line: 288, column: 69, scope: !2230, inlinedAt: !2868)
!2935 = !DILocation(line: 288, column: 50, scope: !2230, inlinedAt: !2868)
!2936 = !DILocation(line: 288, column: 49, scope: !2230, inlinedAt: !2868)
!2937 = !DILocation(line: 288, column: 42, scope: !2230, inlinedAt: !2868)
!2938 = !DILocation(line: 69, column: 45, scope: !2484)
!2939 = !DILocalVariable(name: "scale", scope: !2484, file: !571, line: 71, type: !373)
!2940 = !DILocation(line: 71, column: 19, scope: !2484)
!2941 = !DILocation(line: 71, column: 27, scope: !2484)
!2942 = !DILocalVariable(name: "result", scope: !2943, file: !23, line: 665, type: !317)
!2943 = distinct !DISubprogram(name: "_mm_setzero_ps", linkageName: "_ZL14_mm_setzero_psv", scope: !23, file: !23, line: 664, type: !2944, scopeLine: 664, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !1881)
!2944 = !DISubroutineType(types: !2945)
!2945 = !{!317}
!2946 = !DILocation(line: 665, column: 11, scope: !2943, inlinedAt: !2947)
!2947 = distinct !DILocation(line: 71, column: 27, scope: !2484)
!2948 = !DILocalVariable(name: "i", scope: !2949, file: !23, line: 668, type: !13)
!2949 = distinct !DILexicalBlock(scope: !2943, file: !23, line: 668, column: 5)
!2950 = !DILocation(line: 668, column: 14, scope: !2949, inlinedAt: !2947)
!2951 = !DILocation(line: 668, column: 10, scope: !2949, inlinedAt: !2947)
!2952 = !DILocation(line: 668, column: 21, scope: !2953, inlinedAt: !2947)
!2953 = distinct !DILexicalBlock(scope: !2949, file: !23, line: 668, column: 5)
!2954 = !DILocation(line: 668, column: 23, scope: !2953, inlinedAt: !2947)
!2955 = !DILocation(line: 668, column: 5, scope: !2949, inlinedAt: !2947)
!2956 = !DILocation(line: 669, column: 18, scope: !2953, inlinedAt: !2947)
!2957 = !DILocation(line: 669, column: 9, scope: !2953, inlinedAt: !2947)
!2958 = !DILocation(line: 669, column: 21, scope: !2953, inlinedAt: !2947)
!2959 = !DILocation(line: 668, column: 39, scope: !2953, inlinedAt: !2947)
!2960 = !DILocation(line: 668, column: 5, scope: !2953, inlinedAt: !2947)
!2961 = distinct !{!2961, !2955, !2962, !1911}
!2962 = !DILocation(line: 669, column: 23, scope: !2949, inlinedAt: !2947)
!2963 = !DILocation(line: 670, column: 5, scope: !2943, inlinedAt: !2947)
!2964 = !DILocalVariable(name: "a", arg: 1, scope: !2965, file: !23, line: 327, type: !317)
!2965 = distinct !DISubprogram(name: "_mm_cmpneq_ps", linkageName: "_ZL13_mm_cmpneq_ps5sse_fS_", scope: !23, file: !23, line: 327, type: !2020, scopeLine: 327, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !1881)
!2966 = !DILocation(line: 327, column: 43, scope: !2965, inlinedAt: !2967)
!2967 = distinct !DILocation(line: 71, column: 27, scope: !2484)
!2968 = !DILocalVariable(name: "b", arg: 2, scope: !2965, file: !23, line: 327, type: !317)
!2969 = !DILocation(line: 327, column: 52, scope: !2965, inlinedAt: !2967)
!2970 = !DILocalVariable(name: "result", scope: !2965, file: !23, line: 328, type: !317)
!2971 = !DILocation(line: 328, column: 8, scope: !2965, inlinedAt: !2967)
!2972 = !DILocalVariable(name: "i", scope: !2973, file: !23, line: 331, type: !13)
!2973 = distinct !DILexicalBlock(scope: !2965, file: !23, line: 331, column: 5)
!2974 = !DILocation(line: 331, column: 14, scope: !2973, inlinedAt: !2967)
!2975 = !DILocation(line: 331, column: 10, scope: !2973, inlinedAt: !2967)
!2976 = !DILocation(line: 331, column: 21, scope: !2977, inlinedAt: !2967)
!2977 = distinct !DILexicalBlock(scope: !2973, file: !23, line: 331, column: 5)
!2978 = !DILocation(line: 331, column: 23, scope: !2977, inlinedAt: !2967)
!2979 = !DILocation(line: 331, column: 5, scope: !2973, inlinedAt: !2967)
!2980 = !DILocation(line: 332, column: 32, scope: !2977, inlinedAt: !2967)
!2981 = !DILocation(line: 332, column: 47, scope: !2977, inlinedAt: !2967)
!2982 = !DILocation(line: 332, column: 44, scope: !2977, inlinedAt: !2967)
!2983 = !DILocation(line: 332, column: 30, scope: !2977, inlinedAt: !2967)
!2984 = !DILocation(line: 332, column: 29, scope: !2977, inlinedAt: !2967)
!2985 = !DILocation(line: 332, column: 9, scope: !2977, inlinedAt: !2967)
!2986 = !DILocation(line: 332, column: 27, scope: !2977, inlinedAt: !2967)
!2987 = !DILocation(line: 331, column: 39, scope: !2977, inlinedAt: !2967)
!2988 = !DILocation(line: 331, column: 5, scope: !2977, inlinedAt: !2967)
!2989 = distinct !{!2989, !2979, !2990, !1911}
!2990 = !DILocation(line: 332, column: 76, scope: !2973, inlinedAt: !2967)
!2991 = !DILocation(line: 334, column: 2, scope: !2965, inlinedAt: !2967)
!2992 = !DILocation(line: 622, column: 40, scope: !1887, inlinedAt: !2993)
!2993 = distinct !DILocation(line: 71, column: 27, scope: !2484)
!2994 = !DILocation(line: 623, column: 11, scope: !1887, inlinedAt: !2993)
!2995 = !DILocation(line: 626, column: 14, scope: !1896, inlinedAt: !2993)
!2996 = !DILocation(line: 626, column: 10, scope: !1896, inlinedAt: !2993)
!2997 = !DILocation(line: 626, column: 21, scope: !1900, inlinedAt: !2993)
!2998 = !DILocation(line: 626, column: 23, scope: !1900, inlinedAt: !2993)
!2999 = !DILocation(line: 626, column: 5, scope: !1896, inlinedAt: !2993)
!3000 = !DILocation(line: 627, column: 23, scope: !1900, inlinedAt: !2993)
!3001 = !DILocation(line: 627, column: 18, scope: !1900, inlinedAt: !2993)
!3002 = !DILocation(line: 627, column: 9, scope: !1900, inlinedAt: !2993)
!3003 = !DILocation(line: 627, column: 21, scope: !1900, inlinedAt: !2993)
!3004 = !DILocation(line: 626, column: 39, scope: !1900, inlinedAt: !2993)
!3005 = !DILocation(line: 626, column: 5, scope: !1900, inlinedAt: !2993)
!3006 = distinct !{!3006, !2999, !3007, !1911}
!3007 = !DILocation(line: 627, column: 23, scope: !1896, inlinedAt: !2993)
!3008 = !DILocation(line: 629, column: 5, scope: !1887, inlinedAt: !2993)
!3009 = !DILocalVariable(name: "a", arg: 1, scope: !3010, file: !23, line: 400, type: !317)
!3010 = distinct !DISubprogram(name: "_mm_div_ps", linkageName: "_ZL10_mm_div_ps5sse_fS_", scope: !23, file: !23, line: 400, type: !2020, scopeLine: 400, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !1881)
!3011 = !DILocation(line: 400, column: 39, scope: !3010, inlinedAt: !3012)
!3012 = distinct !DILocation(line: 71, column: 27, scope: !2484)
!3013 = !DILocalVariable(name: "b", arg: 2, scope: !3010, file: !23, line: 400, type: !317)
!3014 = !DILocation(line: 400, column: 48, scope: !3010, inlinedAt: !3012)
!3015 = !DILocalVariable(name: "result", scope: !3010, file: !23, line: 401, type: !317)
!3016 = !DILocation(line: 401, column: 11, scope: !3010, inlinedAt: !3012)
!3017 = !DILocalVariable(name: "i", scope: !3018, file: !23, line: 404, type: !13)
!3018 = distinct !DILexicalBlock(scope: !3010, file: !23, line: 404, column: 5)
!3019 = !DILocation(line: 404, column: 14, scope: !3018, inlinedAt: !3012)
!3020 = !DILocation(line: 404, column: 10, scope: !3018, inlinedAt: !3012)
!3021 = !DILocation(line: 404, column: 21, scope: !3022, inlinedAt: !3012)
!3022 = distinct !DILexicalBlock(scope: !3018, file: !23, line: 404, column: 5)
!3023 = !DILocation(line: 404, column: 23, scope: !3022, inlinedAt: !3012)
!3024 = !DILocation(line: 404, column: 5, scope: !3018, inlinedAt: !3012)
!3025 = !DILocation(line: 405, column: 28, scope: !3022, inlinedAt: !3012)
!3026 = !DILocation(line: 405, column: 42, scope: !3022, inlinedAt: !3012)
!3027 = !DILocation(line: 405, column: 40, scope: !3022, inlinedAt: !3012)
!3028 = !DILocation(line: 405, column: 9, scope: !3022, inlinedAt: !3012)
!3029 = !DILocation(line: 405, column: 26, scope: !3022, inlinedAt: !3012)
!3030 = !DILocation(line: 404, column: 39, scope: !3022, inlinedAt: !3012)
!3031 = !DILocation(line: 404, column: 5, scope: !3022, inlinedAt: !3012)
!3032 = distinct !{!3032, !3024, !3033, !1911}
!3033 = !DILocation(line: 405, column: 42, scope: !3018, inlinedAt: !3012)
!3034 = !DILocation(line: 407, column: 5, scope: !3010, inlinedAt: !3012)
!3035 = !DILocalVariable(name: "a", arg: 1, scope: !3036, file: !23, line: 193, type: !317)
!3036 = distinct !DISubprogram(name: "_mm_and_ps", linkageName: "_ZL10_mm_and_ps5sse_fS_", scope: !23, file: !23, line: 193, type: !2020, scopeLine: 193, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !1881)
!3037 = !DILocation(line: 193, column: 39, scope: !3036, inlinedAt: !3038)
!3038 = distinct !DILocation(line: 71, column: 27, scope: !2484)
!3039 = !DILocalVariable(name: "b", arg: 2, scope: !3036, file: !23, line: 193, type: !317)
!3040 = !DILocation(line: 193, column: 48, scope: !3036, inlinedAt: !3038)
!3041 = !DILocalVariable(name: "result", scope: !3036, file: !23, line: 194, type: !317)
!3042 = !DILocation(line: 194, column: 8, scope: !3036, inlinedAt: !3038)
!3043 = !DILocalVariable(name: "i", scope: !3044, file: !23, line: 197, type: !13)
!3044 = distinct !DILexicalBlock(scope: !3036, file: !23, line: 197, column: 5)
!3045 = !DILocation(line: 197, column: 14, scope: !3044, inlinedAt: !3038)
!3046 = !DILocation(line: 197, column: 10, scope: !3044, inlinedAt: !3038)
!3047 = !DILocation(line: 197, column: 21, scope: !3048, inlinedAt: !3038)
!3048 = distinct !DILexicalBlock(scope: !3044, file: !23, line: 197, column: 5)
!3049 = !DILocation(line: 197, column: 23, scope: !3048, inlinedAt: !3038)
!3050 = !DILocation(line: 197, column: 5, scope: !3044, inlinedAt: !3038)
!3051 = !DILocation(line: 198, column: 29, scope: !3048, inlinedAt: !3038)
!3052 = !DILocation(line: 198, column: 44, scope: !3048, inlinedAt: !3038)
!3053 = !DILocation(line: 198, column: 42, scope: !3048, inlinedAt: !3038)
!3054 = !DILocation(line: 198, column: 9, scope: !3048, inlinedAt: !3038)
!3055 = !DILocation(line: 198, column: 27, scope: !3048, inlinedAt: !3038)
!3056 = !DILocation(line: 197, column: 39, scope: !3048, inlinedAt: !3038)
!3057 = !DILocation(line: 197, column: 5, scope: !3048, inlinedAt: !3038)
!3058 = distinct !{!3058, !3050, !3059, !1911}
!3059 = !DILocation(line: 198, column: 44, scope: !3044, inlinedAt: !3038)
!3060 = !DILocation(line: 200, column: 2, scope: !3036, inlinedAt: !3038)
!3061 = !DILocation(line: 665, column: 11, scope: !2943, inlinedAt: !3062)
!3062 = distinct !DILocation(line: 71, column: 27, scope: !2484)
!3063 = !DILocation(line: 668, column: 14, scope: !2949, inlinedAt: !3062)
!3064 = !DILocation(line: 668, column: 10, scope: !2949, inlinedAt: !3062)
!3065 = !DILocation(line: 668, column: 21, scope: !2953, inlinedAt: !3062)
!3066 = !DILocation(line: 668, column: 23, scope: !2953, inlinedAt: !3062)
!3067 = !DILocation(line: 668, column: 5, scope: !2949, inlinedAt: !3062)
!3068 = !DILocation(line: 669, column: 18, scope: !2953, inlinedAt: !3062)
!3069 = !DILocation(line: 669, column: 9, scope: !2953, inlinedAt: !3062)
!3070 = !DILocation(line: 669, column: 21, scope: !2953, inlinedAt: !3062)
!3071 = !DILocation(line: 668, column: 39, scope: !2953, inlinedAt: !3062)
!3072 = !DILocation(line: 668, column: 5, scope: !2953, inlinedAt: !3062)
!3073 = distinct !{!3073, !3067, !3074, !1911}
!3074 = !DILocation(line: 669, column: 23, scope: !2949, inlinedAt: !3062)
!3075 = !DILocation(line: 670, column: 5, scope: !2943, inlinedAt: !3062)
!3076 = !DILocation(line: 327, column: 43, scope: !2965, inlinedAt: !3077)
!3077 = distinct !DILocation(line: 71, column: 27, scope: !2484)
!3078 = !DILocation(line: 327, column: 52, scope: !2965, inlinedAt: !3077)
!3079 = !DILocation(line: 328, column: 8, scope: !2965, inlinedAt: !3077)
!3080 = !DILocation(line: 331, column: 14, scope: !2973, inlinedAt: !3077)
!3081 = !DILocation(line: 331, column: 10, scope: !2973, inlinedAt: !3077)
!3082 = !DILocation(line: 331, column: 21, scope: !2977, inlinedAt: !3077)
!3083 = !DILocation(line: 331, column: 23, scope: !2977, inlinedAt: !3077)
!3084 = !DILocation(line: 331, column: 5, scope: !2973, inlinedAt: !3077)
!3085 = !DILocation(line: 332, column: 32, scope: !2977, inlinedAt: !3077)
!3086 = !DILocation(line: 332, column: 47, scope: !2977, inlinedAt: !3077)
!3087 = !DILocation(line: 332, column: 44, scope: !2977, inlinedAt: !3077)
!3088 = !DILocation(line: 332, column: 30, scope: !2977, inlinedAt: !3077)
!3089 = !DILocation(line: 332, column: 29, scope: !2977, inlinedAt: !3077)
!3090 = !DILocation(line: 332, column: 9, scope: !2977, inlinedAt: !3077)
!3091 = !DILocation(line: 332, column: 27, scope: !2977, inlinedAt: !3077)
!3092 = !DILocation(line: 331, column: 39, scope: !2977, inlinedAt: !3077)
!3093 = !DILocation(line: 331, column: 5, scope: !2977, inlinedAt: !3077)
!3094 = distinct !{!3094, !3084, !3095, !1911}
!3095 = !DILocation(line: 332, column: 76, scope: !2973, inlinedAt: !3077)
!3096 = !DILocation(line: 334, column: 2, scope: !2965, inlinedAt: !3077)
!3097 = !DILocation(line: 665, column: 11, scope: !2943, inlinedAt: !3098)
!3098 = distinct !DILocation(line: 71, column: 27, scope: !2484)
!3099 = !DILocation(line: 668, column: 14, scope: !2949, inlinedAt: !3098)
!3100 = !DILocation(line: 668, column: 10, scope: !2949, inlinedAt: !3098)
!3101 = !DILocation(line: 668, column: 21, scope: !2953, inlinedAt: !3098)
!3102 = !DILocation(line: 668, column: 23, scope: !2953, inlinedAt: !3098)
!3103 = !DILocation(line: 668, column: 5, scope: !2949, inlinedAt: !3098)
!3104 = !DILocation(line: 669, column: 18, scope: !2953, inlinedAt: !3098)
!3105 = !DILocation(line: 669, column: 9, scope: !2953, inlinedAt: !3098)
!3106 = !DILocation(line: 669, column: 21, scope: !2953, inlinedAt: !3098)
!3107 = !DILocation(line: 668, column: 39, scope: !2953, inlinedAt: !3098)
!3108 = !DILocation(line: 668, column: 5, scope: !2953, inlinedAt: !3098)
!3109 = distinct !{!3109, !3103, !3110, !1911}
!3110 = !DILocation(line: 669, column: 23, scope: !2949, inlinedAt: !3098)
!3111 = !DILocation(line: 670, column: 5, scope: !2943, inlinedAt: !3098)
!3112 = !DILocalVariable(name: "a", arg: 1, scope: !3113, file: !23, line: 213, type: !317)
!3113 = distinct !DISubprogram(name: "_mm_andnot_ps", linkageName: "_ZL13_mm_andnot_ps5sse_fS_", scope: !23, file: !23, line: 213, type: !2020, scopeLine: 213, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !1881)
!3114 = !DILocation(line: 213, column: 42, scope: !3113, inlinedAt: !3115)
!3115 = distinct !DILocation(line: 71, column: 27, scope: !2484)
!3116 = !DILocalVariable(name: "b", arg: 2, scope: !3113, file: !23, line: 213, type: !317)
!3117 = !DILocation(line: 213, column: 51, scope: !3113, inlinedAt: !3115)
!3118 = !DILocalVariable(name: "result", scope: !3113, file: !23, line: 214, type: !317)
!3119 = !DILocation(line: 214, column: 8, scope: !3113, inlinedAt: !3115)
!3120 = !DILocalVariable(name: "i", scope: !3121, file: !23, line: 217, type: !13)
!3121 = distinct !DILexicalBlock(scope: !3113, file: !23, line: 217, column: 5)
!3122 = !DILocation(line: 217, column: 14, scope: !3121, inlinedAt: !3115)
!3123 = !DILocation(line: 217, column: 10, scope: !3121, inlinedAt: !3115)
!3124 = !DILocation(line: 217, column: 21, scope: !3125, inlinedAt: !3115)
!3125 = distinct !DILexicalBlock(scope: !3121, file: !23, line: 217, column: 5)
!3126 = !DILocation(line: 217, column: 23, scope: !3125, inlinedAt: !3115)
!3127 = !DILocation(line: 217, column: 5, scope: !3121, inlinedAt: !3115)
!3128 = !DILocation(line: 218, column: 31, scope: !3125, inlinedAt: !3115)
!3129 = !DILocation(line: 218, column: 30, scope: !3125, inlinedAt: !3115)
!3130 = !DILocation(line: 218, column: 47, scope: !3125, inlinedAt: !3115)
!3131 = !DILocation(line: 218, column: 45, scope: !3125, inlinedAt: !3115)
!3132 = !DILocation(line: 218, column: 9, scope: !3125, inlinedAt: !3115)
!3133 = !DILocation(line: 218, column: 27, scope: !3125, inlinedAt: !3115)
!3134 = !DILocation(line: 217, column: 39, scope: !3125, inlinedAt: !3115)
!3135 = !DILocation(line: 217, column: 5, scope: !3125, inlinedAt: !3115)
!3136 = distinct !{!3136, !3127, !3137, !1911}
!3137 = !DILocation(line: 218, column: 47, scope: !3121, inlinedAt: !3115)
!3138 = !DILocation(line: 220, column: 2, scope: !3113, inlinedAt: !3115)
!3139 = !DILocalVariable(name: "a", arg: 1, scope: !3140, file: !23, line: 529, type: !317)
!3140 = distinct !DISubprogram(name: "_mm_or_ps", linkageName: "_ZL9_mm_or_ps5sse_fS_", scope: !23, file: !23, line: 529, type: !2020, scopeLine: 529, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !1881)
!3141 = !DILocation(line: 529, column: 38, scope: !3140, inlinedAt: !3142)
!3142 = distinct !DILocation(line: 71, column: 27, scope: !2484)
!3143 = !DILocalVariable(name: "b", arg: 2, scope: !3140, file: !23, line: 529, type: !317)
!3144 = !DILocation(line: 529, column: 47, scope: !3140, inlinedAt: !3142)
!3145 = !DILocalVariable(name: "result", scope: !3140, file: !23, line: 530, type: !317)
!3146 = !DILocation(line: 530, column: 11, scope: !3140, inlinedAt: !3142)
!3147 = !DILocalVariable(name: "i", scope: !3148, file: !23, line: 533, type: !13)
!3148 = distinct !DILexicalBlock(scope: !3140, file: !23, line: 533, column: 5)
!3149 = !DILocation(line: 533, column: 14, scope: !3148, inlinedAt: !3142)
!3150 = !DILocation(line: 533, column: 10, scope: !3148, inlinedAt: !3142)
!3151 = !DILocation(line: 533, column: 21, scope: !3152, inlinedAt: !3142)
!3152 = distinct !DILexicalBlock(scope: !3148, file: !23, line: 533, column: 5)
!3153 = !DILocation(line: 533, column: 23, scope: !3152, inlinedAt: !3142)
!3154 = !DILocation(line: 533, column: 5, scope: !3148, inlinedAt: !3142)
!3155 = !DILocation(line: 534, column: 29, scope: !3152, inlinedAt: !3142)
!3156 = !DILocation(line: 534, column: 44, scope: !3152, inlinedAt: !3142)
!3157 = !DILocation(line: 534, column: 42, scope: !3152, inlinedAt: !3142)
!3158 = !DILocation(line: 534, column: 9, scope: !3152, inlinedAt: !3142)
!3159 = !DILocation(line: 534, column: 27, scope: !3152, inlinedAt: !3142)
!3160 = !DILocation(line: 533, column: 39, scope: !3152, inlinedAt: !3142)
!3161 = !DILocation(line: 533, column: 5, scope: !3152, inlinedAt: !3142)
!3162 = distinct !{!3162, !3154, !3163, !1911}
!3163 = !DILocation(line: 534, column: 44, scope: !3148, inlinedAt: !3142)
!3164 = !DILocation(line: 536, column: 5, scope: !3140, inlinedAt: !3142)
!3165 = !DILocalVariable(name: "voxelArea", scope: !2484, file: !571, line: 72, type: !471)
!3166 = !DILocation(line: 72, column: 19, scope: !2484)
!3167 = !DILocalVariable(name: "this", arg: 1, scope: !3168, type: !2231, flags: DIFlagArtificial | DIFlagObjectPointer)
!3168 = distinct !DISubprogram(name: "area", linkageName: "_ZNK4RTTL7RTBox3a4areaEv", scope: !43, file: !42, line: 295, type: !322, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !324, retainedNodes: !1881)
!3169 = !DILocation(line: 0, scope: !3168, inlinedAt: !3170)
!3170 = distinct !DILocation(line: 72, column: 37, scope: !2484)
!3171 = !DILocalVariable(name: "this", arg: 1, scope: !3172, type: !2231, flags: DIFlagArtificial | DIFlagObjectPointer)
!3172 = distinct !DISubprogram(name: "min3f", linkageName: "_ZNK4RTTL7RTBox3a5min3fEv", scope: !43, file: !42, line: 310, type: !326, scopeLine: 310, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !325, retainedNodes: !1881)
!3173 = !DILocation(line: 0, scope: !3172, inlinedAt: !3174)
!3174 = distinct !DILocation(line: 296, column: 41, scope: !3168, inlinedAt: !3170)
!3175 = !DILocalVariable(name: "this", arg: 1, scope: !3176, type: !2231, flags: DIFlagArtificial | DIFlagObjectPointer)
!3176 = distinct !DISubprogram(name: "max3f", linkageName: "_ZNK4RTTL7RTBox3a5max3fEv", scope: !43, file: !42, line: 313, type: !326, scopeLine: 313, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !329, retainedNodes: !1881)
!3177 = !DILocation(line: 0, scope: !3176, inlinedAt: !3178)
!3178 = distinct !DILocation(line: 296, column: 50, scope: !3168, inlinedAt: !3170)
!3179 = !DILocation(line: 314, column: 30, scope: !3176, inlinedAt: !3178)
!3180 = !DILocation(line: 296, column: 20, scope: !3168, inlinedAt: !3170)
!3181 = !DILocalVariable(name: "this", arg: 1, scope: !3182, type: !3183, flags: DIFlagArtificial | DIFlagObjectPointer)
!3182 = distinct !DISubprogram(name: "area", linkageName: "_ZNK4RTTL7RTBox_tILi3EfLi0EE4areaEv", scope: !417, file: !42, line: 69, type: !446, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !459, retainedNodes: !1881)
!3183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!3184 = !DILocation(line: 0, scope: !3182, inlinedAt: !3185)
!3185 = distinct !DILocation(line: 296, column: 59, scope: !3168, inlinedAt: !3170)
!3186 = !DILocalVariable(name: "a", scope: !3182, file: !42, line: 70, type: !15)
!3187 = !DILocation(line: 70, column: 22, scope: !3182, inlinedAt: !3185)
!3188 = !DILocation(line: 70, column: 27, scope: !3182, inlinedAt: !3185)
!3189 = !DILocation(line: 70, column: 36, scope: !3182, inlinedAt: !3185)
!3190 = !DILocation(line: 70, column: 35, scope: !3182, inlinedAt: !3185)
!3191 = !DILocation(line: 70, column: 49, scope: !3182, inlinedAt: !3185)
!3192 = !DILocation(line: 70, column: 58, scope: !3182, inlinedAt: !3185)
!3193 = !DILocation(line: 70, column: 57, scope: !3182, inlinedAt: !3185)
!3194 = !DILocation(line: 70, column: 46, scope: !3182, inlinedAt: !3185)
!3195 = !DILocation(line: 72, column: 26, scope: !3196, inlinedAt: !3185)
!3196 = distinct !DILexicalBlock(scope: !3197, file: !42, line: 71, column: 25)
!3197 = distinct !DILexicalBlock(scope: !3182, file: !42, line: 71, column: 17)
!3198 = !DILocation(line: 73, column: 27, scope: !3196, inlinedAt: !3185)
!3199 = !DILocation(line: 73, column: 36, scope: !3196, inlinedAt: !3185)
!3200 = !DILocation(line: 73, column: 35, scope: !3196, inlinedAt: !3185)
!3201 = !DILocation(line: 73, column: 49, scope: !3196, inlinedAt: !3185)
!3202 = !DILocation(line: 73, column: 58, scope: !3196, inlinedAt: !3185)
!3203 = !DILocation(line: 73, column: 57, scope: !3196, inlinedAt: !3185)
!3204 = !DILocation(line: 72, column: 28, scope: !3196, inlinedAt: !3185)
!3205 = !DILocation(line: 74, column: 27, scope: !3196, inlinedAt: !3185)
!3206 = !DILocation(line: 74, column: 36, scope: !3196, inlinedAt: !3185)
!3207 = !DILocation(line: 74, column: 35, scope: !3196, inlinedAt: !3185)
!3208 = !DILocation(line: 74, column: 49, scope: !3196, inlinedAt: !3185)
!3209 = !DILocation(line: 74, column: 58, scope: !3196, inlinedAt: !3185)
!3210 = !DILocation(line: 74, column: 57, scope: !3196, inlinedAt: !3185)
!3211 = !DILocation(line: 73, column: 68, scope: !3196, inlinedAt: !3185)
!3212 = !DILocation(line: 72, column: 23, scope: !3196, inlinedAt: !3185)
!3213 = !DILocation(line: 72, column: 19, scope: !3196, inlinedAt: !3185)
!3214 = !DILocation(line: 76, column: 20, scope: !3182, inlinedAt: !3185)
!3215 = !DILocalVariable(name: "bestSplit", scope: !2484, file: !571, line: 73, type: !13)
!3216 = !DILocation(line: 73, column: 11, scope: !2484)
!3217 = !DILocalVariable(name: "bestSplitDim", scope: !2484, file: !571, line: 74, type: !13)
!3218 = !DILocation(line: 74, column: 11, scope: !2484)
!3219 = !DILocalVariable(name: "bestCost", scope: !2484, file: !571, line: 75, type: !15)
!3220 = !DILocation(line: 75, column: 13, scope: !2484)
!3221 = !DILocation(line: 75, column: 24, scope: !2484)
!3222 = !DILocation(line: 75, column: 32, scope: !2484)
!3223 = !DILocation(line: 75, column: 30, scope: !2484)
!3224 = !DILocation(line: 78, column: 21, scope: !2484)
!3225 = !DILocalVariable(name: "this", arg: 1, scope: !3226, type: !1928, flags: DIFlagArtificial | DIFlagObjectPointer)
!3226 = distinct !DISubprogram(name: "clearBins3Dim", linkageName: "_ZN4RTTL15OnDemandBuilder13clearBins3DimEi", scope: !578, file: !577, line: 20, type: !591, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !590, retainedNodes: !1881)
!3227 = !DILocation(line: 0, scope: !3226, inlinedAt: !3228)
!3228 = distinct !DILocation(line: 78, column: 7, scope: !2484)
!3229 = !DILocalVariable(name: "numBins", arg: 2, scope: !3226, file: !577, line: 20, type: !294)
!3230 = !DILocation(line: 20, column: 46, scope: !3226, inlinedAt: !3228)
!3231 = !DILocalVariable(name: "dim", scope: !3232, file: !577, line: 22, type: !13)
!3232 = distinct !DILexicalBlock(scope: !3226, file: !577, line: 22, column: 13)
!3233 = !DILocation(line: 22, column: 22, scope: !3232, inlinedAt: !3228)
!3234 = !DILocation(line: 22, column: 18, scope: !3232, inlinedAt: !3228)
!3235 = !DILocation(line: 22, column: 28, scope: !3236, inlinedAt: !3228)
!3236 = distinct !DILexicalBlock(scope: !3232, file: !577, line: 22, column: 13)
!3237 = !DILocation(line: 22, column: 31, scope: !3236, inlinedAt: !3228)
!3238 = !DILocation(line: 22, column: 13, scope: !3232, inlinedAt: !3228)
!3239 = !DILocalVariable(name: "i", scope: !3240, file: !577, line: 24, type: !13)
!3240 = distinct !DILexicalBlock(scope: !3241, file: !577, line: 24, column: 17)
!3241 = distinct !DILexicalBlock(scope: !3236, file: !577, line: 23, column: 13)
!3242 = !DILocation(line: 24, column: 26, scope: !3240, inlinedAt: !3228)
!3243 = !DILocation(line: 24, column: 22, scope: !3240, inlinedAt: !3228)
!3244 = !DILocation(line: 24, column: 30, scope: !3245, inlinedAt: !3228)
!3245 = distinct !DILexicalBlock(scope: !3240, file: !577, line: 24, column: 17)
!3246 = !DILocation(line: 24, column: 32, scope: !3245, inlinedAt: !3228)
!3247 = !DILocation(line: 24, column: 31, scope: !3245, inlinedAt: !3228)
!3248 = !DILocation(line: 24, column: 17, scope: !3240, inlinedAt: !3228)
!3249 = !DILocation(line: 25, column: 31, scope: !3245, inlinedAt: !3228)
!3250 = !DILocation(line: 25, column: 21, scope: !3245, inlinedAt: !3228)
!3251 = !DILocation(line: 25, column: 36, scope: !3245, inlinedAt: !3228)
!3252 = !DILocation(line: 0, scope: !2599, inlinedAt: !3253)
!3253 = distinct !DILocation(line: 25, column: 39, scope: !3245, inlinedAt: !3228)
!3254 = !DILocation(line: 0, scope: !2603, inlinedAt: !3255)
!3255 = distinct !DILocation(line: 34, column: 35, scope: !2599, inlinedAt: !3253)
!3256 = !DILocation(line: 622, column: 40, scope: !1887, inlinedAt: !3257)
!3257 = distinct !DILocation(line: 268, column: 17, scope: !2603, inlinedAt: !3255)
!3258 = !DILocation(line: 623, column: 11, scope: !1887, inlinedAt: !3257)
!3259 = !DILocation(line: 626, column: 14, scope: !1896, inlinedAt: !3257)
!3260 = !DILocation(line: 626, column: 10, scope: !1896, inlinedAt: !3257)
!3261 = !DILocation(line: 626, column: 21, scope: !1900, inlinedAt: !3257)
!3262 = !DILocation(line: 626, column: 23, scope: !1900, inlinedAt: !3257)
!3263 = !DILocation(line: 626, column: 5, scope: !1896, inlinedAt: !3257)
!3264 = !DILocation(line: 627, column: 23, scope: !1900, inlinedAt: !3257)
!3265 = !DILocation(line: 627, column: 18, scope: !1900, inlinedAt: !3257)
!3266 = !DILocation(line: 627, column: 9, scope: !1900, inlinedAt: !3257)
!3267 = !DILocation(line: 627, column: 21, scope: !1900, inlinedAt: !3257)
!3268 = !DILocation(line: 626, column: 39, scope: !1900, inlinedAt: !3257)
!3269 = !DILocation(line: 626, column: 5, scope: !1900, inlinedAt: !3257)
!3270 = distinct !{!3270, !3263, !3271, !1911}
!3271 = !DILocation(line: 627, column: 23, scope: !1896, inlinedAt: !3257)
!3272 = !DILocation(line: 629, column: 5, scope: !1887, inlinedAt: !3257)
!3273 = !DILocation(line: 268, column: 17, scope: !2603, inlinedAt: !3255)
!3274 = !DILocation(line: 0, scope: !2625, inlinedAt: !3275)
!3275 = distinct !DILocation(line: 268, column: 15, scope: !2603, inlinedAt: !3255)
!3276 = !DILocation(line: 81, column: 54, scope: !2625, inlinedAt: !3275)
!3277 = !DILocation(line: 82, column: 20, scope: !2625, inlinedAt: !3275)
!3278 = !DILocation(line: 82, column: 24, scope: !2625, inlinedAt: !3275)
!3279 = !DILocation(line: 83, column: 9, scope: !2625, inlinedAt: !3275)
!3280 = !DILocation(line: 83, column: 31, scope: !2625, inlinedAt: !3275)
!3281 = !DILocation(line: 0, scope: !2636, inlinedAt: !3282)
!3282 = distinct !DILocation(line: 83, column: 11, scope: !2625, inlinedAt: !3275)
!3283 = !DILocation(line: 28, column: 58, scope: !2636, inlinedAt: !3282)
!3284 = !DILocation(line: 29, column: 22, scope: !2642, inlinedAt: !3282)
!3285 = !DILocation(line: 29, column: 18, scope: !2642, inlinedAt: !3282)
!3286 = !DILocation(line: 29, column: 29, scope: !2646, inlinedAt: !3282)
!3287 = !DILocation(line: 29, column: 31, scope: !2646, inlinedAt: !3282)
!3288 = !DILocation(line: 29, column: 13, scope: !2642, inlinedAt: !3282)
!3289 = !DILocation(line: 30, column: 24, scope: !2646, inlinedAt: !3282)
!3290 = !DILocation(line: 30, column: 19, scope: !2646, inlinedAt: !3282)
!3291 = !DILocation(line: 30, column: 17, scope: !2646, inlinedAt: !3282)
!3292 = !DILocation(line: 30, column: 22, scope: !2646, inlinedAt: !3282)
!3293 = !DILocation(line: 29, column: 37, scope: !2646, inlinedAt: !3282)
!3294 = !DILocation(line: 29, column: 13, scope: !2646, inlinedAt: !3282)
!3295 = distinct !{!3295, !3288, !3296, !1911}
!3296 = !DILocation(line: 30, column: 24, scope: !2642, inlinedAt: !3282)
!3297 = !DILocation(line: 622, column: 40, scope: !1887, inlinedAt: !3298)
!3298 = distinct !DILocation(line: 269, column: 17, scope: !2603, inlinedAt: !3255)
!3299 = !DILocation(line: 623, column: 11, scope: !1887, inlinedAt: !3298)
!3300 = !DILocation(line: 626, column: 14, scope: !1896, inlinedAt: !3298)
!3301 = !DILocation(line: 626, column: 10, scope: !1896, inlinedAt: !3298)
!3302 = !DILocation(line: 626, column: 21, scope: !1900, inlinedAt: !3298)
!3303 = !DILocation(line: 626, column: 23, scope: !1900, inlinedAt: !3298)
!3304 = !DILocation(line: 626, column: 5, scope: !1896, inlinedAt: !3298)
!3305 = !DILocation(line: 627, column: 23, scope: !1900, inlinedAt: !3298)
!3306 = !DILocation(line: 627, column: 18, scope: !1900, inlinedAt: !3298)
!3307 = !DILocation(line: 627, column: 9, scope: !1900, inlinedAt: !3298)
!3308 = !DILocation(line: 627, column: 21, scope: !1900, inlinedAt: !3298)
!3309 = !DILocation(line: 626, column: 39, scope: !1900, inlinedAt: !3298)
!3310 = !DILocation(line: 626, column: 5, scope: !1900, inlinedAt: !3298)
!3311 = distinct !{!3311, !3304, !3312, !1911}
!3312 = !DILocation(line: 627, column: 23, scope: !1896, inlinedAt: !3298)
!3313 = !DILocation(line: 629, column: 5, scope: !1887, inlinedAt: !3298)
!3314 = !DILocation(line: 269, column: 17, scope: !2603, inlinedAt: !3255)
!3315 = !DILocation(line: 269, column: 9, scope: !2603, inlinedAt: !3255)
!3316 = !DILocation(line: 0, scope: !2625, inlinedAt: !3317)
!3317 = distinct !DILocation(line: 269, column: 15, scope: !2603, inlinedAt: !3255)
!3318 = !DILocation(line: 81, column: 54, scope: !2625, inlinedAt: !3317)
!3319 = !DILocation(line: 82, column: 20, scope: !2625, inlinedAt: !3317)
!3320 = !DILocation(line: 82, column: 24, scope: !2625, inlinedAt: !3317)
!3321 = !DILocation(line: 83, column: 9, scope: !2625, inlinedAt: !3317)
!3322 = !DILocation(line: 83, column: 31, scope: !2625, inlinedAt: !3317)
!3323 = !DILocation(line: 0, scope: !2636, inlinedAt: !3324)
!3324 = distinct !DILocation(line: 83, column: 11, scope: !2625, inlinedAt: !3317)
!3325 = !DILocation(line: 28, column: 58, scope: !2636, inlinedAt: !3324)
!3326 = !DILocation(line: 29, column: 22, scope: !2642, inlinedAt: !3324)
!3327 = !DILocation(line: 29, column: 18, scope: !2642, inlinedAt: !3324)
!3328 = !DILocation(line: 29, column: 29, scope: !2646, inlinedAt: !3324)
!3329 = !DILocation(line: 29, column: 31, scope: !2646, inlinedAt: !3324)
!3330 = !DILocation(line: 29, column: 13, scope: !2642, inlinedAt: !3324)
!3331 = !DILocation(line: 30, column: 24, scope: !2646, inlinedAt: !3324)
!3332 = !DILocation(line: 30, column: 19, scope: !2646, inlinedAt: !3324)
!3333 = !DILocation(line: 30, column: 17, scope: !2646, inlinedAt: !3324)
!3334 = !DILocation(line: 30, column: 22, scope: !2646, inlinedAt: !3324)
!3335 = !DILocation(line: 29, column: 37, scope: !2646, inlinedAt: !3324)
!3336 = !DILocation(line: 29, column: 13, scope: !2646, inlinedAt: !3324)
!3337 = distinct !{!3337, !3330, !3338, !1911}
!3338 = !DILocation(line: 30, column: 24, scope: !2642, inlinedAt: !3324)
!3339 = !DILocation(line: 24, column: 41, scope: !3245, inlinedAt: !3228)
!3340 = !DILocation(line: 24, column: 17, scope: !3245, inlinedAt: !3228)
!3341 = distinct !{!3341, !3248, !3342, !1911}
!3342 = !DILocation(line: 25, column: 48, scope: !3240, inlinedAt: !3228)
!3343 = !DILocalVariable(name: "i", scope: !3344, file: !577, line: 27, type: !13)
!3344 = distinct !DILexicalBlock(scope: !3241, file: !577, line: 27, column: 17)
!3345 = !DILocation(line: 27, column: 26, scope: !3344, inlinedAt: !3228)
!3346 = !DILocation(line: 27, column: 22, scope: !3344, inlinedAt: !3228)
!3347 = !DILocation(line: 27, column: 30, scope: !3348, inlinedAt: !3228)
!3348 = distinct !DILexicalBlock(scope: !3344, file: !577, line: 27, column: 17)
!3349 = !DILocation(line: 27, column: 32, scope: !3348, inlinedAt: !3228)
!3350 = !DILocation(line: 27, column: 31, scope: !3348, inlinedAt: !3228)
!3351 = !DILocation(line: 27, column: 17, scope: !3344, inlinedAt: !3228)
!3352 = !DILocation(line: 28, column: 30, scope: !3348, inlinedAt: !3228)
!3353 = !DILocation(line: 28, column: 21, scope: !3348, inlinedAt: !3228)
!3354 = !DILocation(line: 28, column: 35, scope: !3348, inlinedAt: !3228)
!3355 = !DILocation(line: 28, column: 38, scope: !3348, inlinedAt: !3228)
!3356 = !DILocation(line: 27, column: 41, scope: !3348, inlinedAt: !3228)
!3357 = !DILocation(line: 27, column: 17, scope: !3348, inlinedAt: !3228)
!3358 = distinct !{!3358, !3351, !3359, !1911}
!3359 = !DILocation(line: 28, column: 40, scope: !3344, inlinedAt: !3228)
!3360 = !DILocation(line: 22, column: 37, scope: !3236, inlinedAt: !3228)
!3361 = !DILocation(line: 22, column: 13, scope: !3236, inlinedAt: !3228)
!3362 = distinct !{!3362, !3238, !3363, !1911}
!3363 = !DILocation(line: 29, column: 13, scope: !3232, inlinedAt: !3228)
!3364 = !DILocalVariable(name: "centroidBoundsMin", scope: !2484, file: !571, line: 79, type: !373)
!3365 = !DILocation(line: 79, column: 19, scope: !2484)
!3366 = !DILocation(line: 0, scope: !2457, inlinedAt: !3367)
!3367 = distinct !DILocation(line: 79, column: 54, scope: !2484)
!3368 = !DILocation(line: 322, column: 39, scope: !2457, inlinedAt: !3367)
!3369 = !DILocation(line: 79, column: 39, scope: !2484)
!3370 = !DILocalVariable(name: "i", scope: !3371, file: !571, line: 80, type: !13)
!3371 = distinct !DILexicalBlock(scope: !2484, file: !571, line: 80, column: 7)
!3372 = !DILocation(line: 80, column: 16, scope: !3371)
!3373 = !DILocation(line: 80, column: 18, scope: !3371)
!3374 = !DILocation(line: 80, column: 12, scope: !3371)
!3375 = !DILocation(line: 80, column: 24, scope: !3376)
!3376 = distinct !DILexicalBlock(scope: !3371, file: !571, line: 80, column: 7)
!3377 = !DILocation(line: 80, column: 26, scope: !3376)
!3378 = !DILocation(line: 80, column: 25, scope: !3376)
!3379 = !DILocation(line: 80, column: 7, scope: !3371)
!3380 = !DILocation(line: 81, column: 22, scope: !3376)
!3381 = !DILocation(line: 81, column: 29, scope: !3376)
!3382 = !DILocation(line: 81, column: 34, scope: !3376)
!3383 = !DILocalVariable(name: "this", arg: 1, scope: !3384, type: !1928, flags: DIFlagArtificial | DIFlagObjectPointer)
!3384 = distinct !DISubprogram(name: "updateBinAll3Dim", linkageName: "_ZN4RTTL15OnDemandBuilder16updateBinAll3DimERKNS_16CentroidDiffAABBERK5sse_fS6_", scope: !578, file: !577, line: 32, type: !595, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !594, retainedNodes: !1881)
!3385 = !DILocation(line: 0, scope: !3384, inlinedAt: !3386)
!3386 = distinct !DILocation(line: 81, column: 5, scope: !3376)
!3387 = !DILocalVariable(name: "cdAABB", arg: 2, scope: !3384, file: !577, line: 32, type: !597)
!3388 = !DILocation(line: 32, column: 63, scope: !3384, inlinedAt: !3386)
!3389 = !DILocalVariable(name: "c", arg: 3, scope: !3384, file: !577, line: 33, type: !372)
!3390 = !DILocation(line: 33, column: 26, scope: !3384, inlinedAt: !3386)
!3391 = !DILocalVariable(name: "scale", arg: 4, scope: !3384, file: !577, line: 34, type: !372)
!3392 = !DILocation(line: 34, column: 26, scope: !3384, inlinedAt: !3386)
!3393 = !DILocalVariable(name: "bin", scope: !3384, file: !577, line: 36, type: !3394)
!3394 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3395)
!3395 = !DIDerivedType(tag: DW_TAG_typedef, name: "sse_i", file: !23, line: 42, baseType: !530)
!3396 = !DILocation(line: 36, column: 25, scope: !3384, inlinedAt: !3386)
!3397 = !DILocation(line: 36, column: 49, scope: !3384, inlinedAt: !3386)
!3398 = !DILocation(line: 36, column: 56, scope: !3384, inlinedAt: !3386)
!3399 = !DILocation(line: 36, column: 69, scope: !3384, inlinedAt: !3386)
!3400 = !DILocation(line: 36, column: 67, scope: !3384, inlinedAt: !3386)
!3401 = !DILocation(line: 72, column: 32, scope: !2279, inlinedAt: !3402)
!3402 = distinct !DILocation(line: 36, column: 67, scope: !3384, inlinedAt: !3386)
!3403 = !DILocation(line: 72, column: 41, scope: !2279, inlinedAt: !3402)
!3404 = !DILocation(line: 72, column: 64, scope: !2279, inlinedAt: !3402)
!3405 = !DILocation(line: 72, column: 67, scope: !2279, inlinedAt: !3402)
!3406 = !DILocation(line: 72, column: 53, scope: !2279, inlinedAt: !3402)
!3407 = !DILocation(line: 779, column: 39, scope: !2288, inlinedAt: !3408)
!3408 = distinct !DILocation(line: 72, column: 53, scope: !2279, inlinedAt: !3402)
!3409 = !DILocation(line: 779, column: 48, scope: !2288, inlinedAt: !3408)
!3410 = !DILocation(line: 780, column: 11, scope: !2288, inlinedAt: !3408)
!3411 = !DILocation(line: 783, column: 14, scope: !2296, inlinedAt: !3408)
!3412 = !DILocation(line: 783, column: 10, scope: !2296, inlinedAt: !3408)
!3413 = !DILocation(line: 783, column: 21, scope: !2300, inlinedAt: !3408)
!3414 = !DILocation(line: 783, column: 23, scope: !2300, inlinedAt: !3408)
!3415 = !DILocation(line: 783, column: 5, scope: !2296, inlinedAt: !3408)
!3416 = !DILocation(line: 784, column: 27, scope: !2300, inlinedAt: !3408)
!3417 = !DILocation(line: 784, column: 23, scope: !2300, inlinedAt: !3408)
!3418 = !DILocation(line: 784, column: 36, scope: !2300, inlinedAt: !3408)
!3419 = !DILocation(line: 784, column: 32, scope: !2300, inlinedAt: !3408)
!3420 = !DILocation(line: 784, column: 30, scope: !2300, inlinedAt: !3408)
!3421 = !DILocation(line: 784, column: 18, scope: !2300, inlinedAt: !3408)
!3422 = !DILocation(line: 784, column: 9, scope: !2300, inlinedAt: !3408)
!3423 = !DILocation(line: 784, column: 21, scope: !2300, inlinedAt: !3408)
!3424 = !DILocation(line: 783, column: 39, scope: !2300, inlinedAt: !3408)
!3425 = !DILocation(line: 783, column: 5, scope: !2300, inlinedAt: !3408)
!3426 = distinct !{!3426, !3415, !3427, !1911}
!3427 = !DILocation(line: 784, column: 37, scope: !2296, inlinedAt: !3408)
!3428 = !DILocation(line: 786, column: 5, scope: !2288, inlinedAt: !3408)
!3429 = !DILocation(line: 72, column: 46, scope: !2279, inlinedAt: !3402)
!3430 = !DILocation(line: 36, column: 74, scope: !3384, inlinedAt: !3386)
!3431 = !DILocation(line: 36, column: 72, scope: !3384, inlinedAt: !3386)
!3432 = !DILocalVariable(name: "a", arg: 1, scope: !3433, file: !1871, line: 73, type: !317)
!3433 = distinct !DISubprogram(name: "operator*", linkageName: "_Zml5sse_fS_", scope: !1871, file: !1871, line: 73, type: !2020, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !1881)
!3434 = !DILocation(line: 73, column: 32, scope: !3433, inlinedAt: !3435)
!3435 = distinct !DILocation(line: 36, column: 72, scope: !3384, inlinedAt: !3386)
!3436 = !DILocalVariable(name: "b", arg: 2, scope: !3433, file: !1871, line: 73, type: !317)
!3437 = !DILocation(line: 73, column: 41, scope: !3433, inlinedAt: !3435)
!3438 = !DILocation(line: 73, column: 64, scope: !3433, inlinedAt: !3435)
!3439 = !DILocation(line: 73, column: 67, scope: !3433, inlinedAt: !3435)
!3440 = !DILocation(line: 73, column: 53, scope: !3433, inlinedAt: !3435)
!3441 = !DILocation(line: 511, column: 39, scope: !2371, inlinedAt: !3442)
!3442 = distinct !DILocation(line: 73, column: 53, scope: !3433, inlinedAt: !3435)
!3443 = !DILocation(line: 511, column: 48, scope: !2371, inlinedAt: !3442)
!3444 = !DILocation(line: 512, column: 11, scope: !2371, inlinedAt: !3442)
!3445 = !DILocation(line: 515, column: 14, scope: !2379, inlinedAt: !3442)
!3446 = !DILocation(line: 515, column: 10, scope: !2379, inlinedAt: !3442)
!3447 = !DILocation(line: 515, column: 21, scope: !2383, inlinedAt: !3442)
!3448 = !DILocation(line: 515, column: 23, scope: !2383, inlinedAt: !3442)
!3449 = !DILocation(line: 515, column: 5, scope: !2379, inlinedAt: !3442)
!3450 = !DILocation(line: 516, column: 28, scope: !2383, inlinedAt: !3442)
!3451 = !DILocation(line: 516, column: 42, scope: !2383, inlinedAt: !3442)
!3452 = !DILocation(line: 516, column: 40, scope: !2383, inlinedAt: !3442)
!3453 = !DILocation(line: 516, column: 9, scope: !2383, inlinedAt: !3442)
!3454 = !DILocation(line: 516, column: 26, scope: !2383, inlinedAt: !3442)
!3455 = !DILocation(line: 515, column: 39, scope: !2383, inlinedAt: !3442)
!3456 = !DILocation(line: 515, column: 5, scope: !2383, inlinedAt: !3442)
!3457 = distinct !{!3457, !3449, !3458, !1911}
!3458 = !DILocation(line: 516, column: 42, scope: !2379, inlinedAt: !3442)
!3459 = !DILocation(line: 518, column: 5, scope: !2371, inlinedAt: !3442)
!3460 = !DILocation(line: 73, column: 46, scope: !3433, inlinedAt: !3435)
!3461 = !DILocation(line: 36, column: 31, scope: !3384, inlinedAt: !3386)
!3462 = !DILocalVariable(name: "a", arg: 1, scope: !3463, file: !23, line: 370, type: !317)
!3463 = distinct !DISubprogram(name: "_mm_cvttps_epi32", linkageName: "_ZL16_mm_cvttps_epi325sse_f", scope: !23, file: !23, line: 370, type: !3464, scopeLine: 370, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !1881)
!3464 = !DISubroutineType(types: !3465)
!3465 = !{!3395, !317}
!3466 = !DILocation(line: 370, column: 45, scope: !3463, inlinedAt: !3467)
!3467 = distinct !DILocation(line: 36, column: 31, scope: !3384, inlinedAt: !3386)
!3468 = !DILocalVariable(name: "result", scope: !3463, file: !23, line: 371, type: !3395)
!3469 = !DILocation(line: 371, column: 8, scope: !3463, inlinedAt: !3467)
!3470 = !DILocalVariable(name: "temp", scope: !3463, file: !23, line: 372, type: !317)
!3471 = !DILocation(line: 372, column: 8, scope: !3463, inlinedAt: !3467)
!3472 = !DILocation(line: 373, column: 7, scope: !3463, inlinedAt: !3467)
!3473 = !DILocalVariable(name: "i", scope: !3474, file: !23, line: 376, type: !13)
!3474 = distinct !DILexicalBlock(scope: !3463, file: !23, line: 376, column: 5)
!3475 = !DILocation(line: 376, column: 14, scope: !3474, inlinedAt: !3467)
!3476 = !DILocation(line: 376, column: 10, scope: !3474, inlinedAt: !3467)
!3477 = !DILocation(line: 376, column: 21, scope: !3478, inlinedAt: !3467)
!3478 = distinct !DILexicalBlock(scope: !3474, file: !23, line: 376, column: 5)
!3479 = !DILocation(line: 376, column: 23, scope: !3478, inlinedAt: !3467)
!3480 = !DILocation(line: 376, column: 5, scope: !3474, inlinedAt: !3467)
!3481 = !DILocation(line: 377, column: 48, scope: !3478, inlinedAt: !3467)
!3482 = !DILocalVariable(name: "d", arg: 1, scope: !3483, file: !23, line: 69, type: !706)
!3483 = distinct !DISubprogram(name: "_emm_round_trunc", linkageName: "_ZL16_emm_round_truncd", scope: !23, file: !23, line: 69, type: !1067, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !1881)
!3484 = !DILocation(line: 69, column: 44, scope: !3483, inlinedAt: !3485)
!3485 = distinct !DILocation(line: 377, column: 31, scope: !3478, inlinedAt: !3467)
!3486 = !DILocation(line: 70, column: 17, scope: !3483, inlinedAt: !3485)
!3487 = !DILocation(line: 377, column: 26, scope: !3478, inlinedAt: !3467)
!3488 = !DILocation(line: 377, column: 9, scope: !3478, inlinedAt: !3467)
!3489 = !DILocation(line: 377, column: 29, scope: !3478, inlinedAt: !3467)
!3490 = !DILocation(line: 376, column: 39, scope: !3478, inlinedAt: !3467)
!3491 = !DILocation(line: 376, column: 5, scope: !3478, inlinedAt: !3467)
!3492 = distinct !{!3492, !3480, !3493, !1911}
!3493 = !DILocation(line: 377, column: 62, scope: !3474, inlinedAt: !3467)
!3494 = !DILocation(line: 379, column: 2, scope: !3463, inlinedAt: !3467)
!3495 = !DILocalVariable(name: "bin0", scope: !3384, file: !577, line: 37, type: !294)
!3496 = !DILocation(line: 37, column: 23, scope: !3384, inlinedAt: !3386)
!3497 = !DILocation(line: 37, column: 30, scope: !3384, inlinedAt: !3386)
!3498 = !DILocalVariable(name: "bin1", scope: !3384, file: !577, line: 38, type: !294)
!3499 = !DILocation(line: 38, column: 23, scope: !3384, inlinedAt: !3386)
!3500 = !DILocation(line: 38, column: 30, scope: !3384, inlinedAt: !3386)
!3501 = !DILocalVariable(name: "bin2", scope: !3384, file: !577, line: 39, type: !294)
!3502 = !DILocation(line: 39, column: 23, scope: !3384, inlinedAt: !3386)
!3503 = !DILocation(line: 39, column: 30, scope: !3384, inlinedAt: !3386)
!3504 = !DILocalVariable(name: "aabb", scope: !3384, file: !577, line: 40, type: !396)
!3505 = !DILocation(line: 40, column: 24, scope: !3384, inlinedAt: !3386)
!3506 = !DILocation(line: 40, column: 31, scope: !3384, inlinedAt: !3386)
!3507 = !DILocation(line: 40, column: 38, scope: !3384, inlinedAt: !3386)
!3508 = !DILocation(line: 41, column: 26, scope: !3384, inlinedAt: !3386)
!3509 = !DILocation(line: 41, column: 13, scope: !3384, inlinedAt: !3386)
!3510 = !DILocation(line: 0, scope: !1979, inlinedAt: !3511)
!3511 = distinct !DILocation(line: 41, column: 32, scope: !3384, inlinedAt: !3386)
!3512 = !DILocation(line: 99, column: 44, scope: !1979, inlinedAt: !3511)
!3513 = !DILocation(line: 100, column: 26, scope: !1979, inlinedAt: !3511)
!3514 = !DILocation(line: 0, scope: !1987, inlinedAt: !3515)
!3515 = distinct !DILocation(line: 100, column: 19, scope: !1979, inlinedAt: !3511)
!3516 = !DILocation(line: 164, column: 53, scope: !1987, inlinedAt: !3515)
!3517 = !DILocation(line: 165, column: 20, scope: !1987, inlinedAt: !3515)
!3518 = !DILocation(line: 165, column: 24, scope: !1987, inlinedAt: !3515)
!3519 = !DILocation(line: 166, column: 18, scope: !1997, inlinedAt: !3515)
!3520 = !DILocation(line: 166, column: 14, scope: !1997, inlinedAt: !3515)
!3521 = !DILocation(line: 166, column: 25, scope: !2001, inlinedAt: !3515)
!3522 = !DILocation(line: 166, column: 27, scope: !2001, inlinedAt: !3515)
!3523 = !DILocation(line: 166, column: 9, scope: !1997, inlinedAt: !3515)
!3524 = !DILocation(line: 167, column: 24, scope: !2001, inlinedAt: !3515)
!3525 = !DILocation(line: 167, column: 26, scope: !2001, inlinedAt: !3515)
!3526 = !DILocation(line: 0, scope: !2007, inlinedAt: !3527)
!3527 = distinct !DILocation(line: 167, column: 24, scope: !2001, inlinedAt: !3515)
!3528 = !DILocation(line: 49, column: 42, scope: !2007, inlinedAt: !3527)
!3529 = !DILocation(line: 50, column: 22, scope: !2007, inlinedAt: !3527)
!3530 = !DILocation(line: 50, column: 20, scope: !2007, inlinedAt: !3527)
!3531 = !DILocation(line: 167, column: 30, scope: !2001, inlinedAt: !3515)
!3532 = !DILocation(line: 167, column: 36, scope: !2001, inlinedAt: !3515)
!3533 = !DILocation(line: 167, column: 20, scope: !2001, inlinedAt: !3515)
!3534 = !DILocation(line: 107, column: 25, scope: !2019, inlinedAt: !3535)
!3535 = distinct !DILocation(line: 167, column: 20, scope: !2001, inlinedAt: !3515)
!3536 = !DILocation(line: 107, column: 34, scope: !2019, inlinedAt: !3535)
!3537 = !DILocation(line: 108, column: 23, scope: !2019, inlinedAt: !3535)
!3538 = !DILocation(line: 108, column: 25, scope: !2019, inlinedAt: !3535)
!3539 = !DILocation(line: 108, column: 12, scope: !2019, inlinedAt: !3535)
!3540 = !DILocation(line: 453, column: 39, scope: !2030, inlinedAt: !3541)
!3541 = distinct !DILocation(line: 108, column: 12, scope: !2019, inlinedAt: !3535)
!3542 = !DILocation(line: 453, column: 48, scope: !2030, inlinedAt: !3541)
!3543 = !DILocation(line: 454, column: 8, scope: !2030, inlinedAt: !3541)
!3544 = !DILocation(line: 457, column: 14, scope: !2038, inlinedAt: !3541)
!3545 = !DILocation(line: 457, column: 10, scope: !2038, inlinedAt: !3541)
!3546 = !DILocation(line: 457, column: 21, scope: !2042, inlinedAt: !3541)
!3547 = !DILocation(line: 457, column: 23, scope: !2042, inlinedAt: !3541)
!3548 = !DILocation(line: 457, column: 5, scope: !2038, inlinedAt: !3541)
!3549 = !DILocation(line: 458, column: 28, scope: !2042, inlinedAt: !3541)
!3550 = !DILocation(line: 458, column: 9, scope: !2042, inlinedAt: !3541)
!3551 = !DILocation(line: 458, column: 26, scope: !2042, inlinedAt: !3541)
!3552 = !DILocation(line: 457, column: 39, scope: !2042, inlinedAt: !3541)
!3553 = !DILocation(line: 457, column: 5, scope: !2042, inlinedAt: !3541)
!3554 = distinct !{!3554, !3548, !3555, !1911}
!3555 = !DILocation(line: 458, column: 28, scope: !2038, inlinedAt: !3541)
!3556 = !DILocation(line: 460, column: 2, scope: !2030, inlinedAt: !3541)
!3557 = !DILocation(line: 108, column: 5, scope: !2019, inlinedAt: !3535)
!3558 = !DILocation(line: 167, column: 13, scope: !2001, inlinedAt: !3515)
!3559 = !DILocation(line: 167, column: 15, scope: !2001, inlinedAt: !3515)
!3560 = !DILocation(line: 0, scope: !2007, inlinedAt: !3561)
!3561 = distinct !DILocation(line: 167, column: 13, scope: !2001, inlinedAt: !3515)
!3562 = !DILocation(line: 49, column: 42, scope: !2007, inlinedAt: !3561)
!3563 = !DILocation(line: 50, column: 22, scope: !2007, inlinedAt: !3561)
!3564 = !DILocation(line: 50, column: 20, scope: !2007, inlinedAt: !3561)
!3565 = !DILocation(line: 167, column: 18, scope: !2001, inlinedAt: !3515)
!3566 = !DILocation(line: 166, column: 33, scope: !2001, inlinedAt: !3515)
!3567 = !DILocation(line: 166, column: 9, scope: !2001, inlinedAt: !3515)
!3568 = distinct !{!3568, !3523, !3569, !1911}
!3569 = !DILocation(line: 167, column: 38, scope: !1997, inlinedAt: !3515)
!3570 = !DILocation(line: 101, column: 13, scope: !1979, inlinedAt: !3511)
!3571 = !DILocation(line: 101, column: 26, scope: !1979, inlinedAt: !3511)
!3572 = !DILocation(line: 101, column: 28, scope: !1979, inlinedAt: !3511)
!3573 = !DILocation(line: 0, scope: !2070, inlinedAt: !3574)
!3574 = distinct !DILocation(line: 101, column: 19, scope: !1979, inlinedAt: !3511)
!3575 = !DILocation(line: 174, column: 53, scope: !2070, inlinedAt: !3574)
!3576 = !DILocation(line: 175, column: 20, scope: !2070, inlinedAt: !3574)
!3577 = !DILocation(line: 175, column: 24, scope: !2070, inlinedAt: !3574)
!3578 = !DILocation(line: 176, column: 18, scope: !2079, inlinedAt: !3574)
!3579 = !DILocation(line: 176, column: 14, scope: !2079, inlinedAt: !3574)
!3580 = !DILocation(line: 176, column: 25, scope: !2083, inlinedAt: !3574)
!3581 = !DILocation(line: 176, column: 27, scope: !2083, inlinedAt: !3574)
!3582 = !DILocation(line: 176, column: 9, scope: !2079, inlinedAt: !3574)
!3583 = !DILocation(line: 177, column: 24, scope: !2083, inlinedAt: !3574)
!3584 = !DILocation(line: 177, column: 26, scope: !2083, inlinedAt: !3574)
!3585 = !DILocation(line: 0, scope: !2007, inlinedAt: !3586)
!3586 = distinct !DILocation(line: 177, column: 24, scope: !2083, inlinedAt: !3574)
!3587 = !DILocation(line: 49, column: 42, scope: !2007, inlinedAt: !3586)
!3588 = !DILocation(line: 50, column: 22, scope: !2007, inlinedAt: !3586)
!3589 = !DILocation(line: 50, column: 20, scope: !2007, inlinedAt: !3586)
!3590 = !DILocation(line: 177, column: 30, scope: !2083, inlinedAt: !3574)
!3591 = !DILocation(line: 177, column: 36, scope: !2083, inlinedAt: !3574)
!3592 = !DILocation(line: 177, column: 20, scope: !2083, inlinedAt: !3574)
!3593 = !DILocation(line: 111, column: 25, scope: !2097, inlinedAt: !3594)
!3594 = distinct !DILocation(line: 177, column: 20, scope: !2083, inlinedAt: !3574)
!3595 = !DILocation(line: 111, column: 34, scope: !2097, inlinedAt: !3594)
!3596 = !DILocation(line: 112, column: 23, scope: !2097, inlinedAt: !3594)
!3597 = !DILocation(line: 112, column: 25, scope: !2097, inlinedAt: !3594)
!3598 = !DILocation(line: 112, column: 12, scope: !2097, inlinedAt: !3594)
!3599 = !DILocation(line: 443, column: 39, scope: !2106, inlinedAt: !3600)
!3600 = distinct !DILocation(line: 112, column: 12, scope: !2097, inlinedAt: !3594)
!3601 = !DILocation(line: 443, column: 48, scope: !2106, inlinedAt: !3600)
!3602 = !DILocation(line: 444, column: 8, scope: !2106, inlinedAt: !3600)
!3603 = !DILocation(line: 447, column: 14, scope: !2114, inlinedAt: !3600)
!3604 = !DILocation(line: 447, column: 10, scope: !2114, inlinedAt: !3600)
!3605 = !DILocation(line: 447, column: 21, scope: !2118, inlinedAt: !3600)
!3606 = !DILocation(line: 447, column: 23, scope: !2118, inlinedAt: !3600)
!3607 = !DILocation(line: 447, column: 5, scope: !2114, inlinedAt: !3600)
!3608 = !DILocation(line: 448, column: 28, scope: !2118, inlinedAt: !3600)
!3609 = !DILocation(line: 448, column: 9, scope: !2118, inlinedAt: !3600)
!3610 = !DILocation(line: 448, column: 26, scope: !2118, inlinedAt: !3600)
!3611 = !DILocation(line: 447, column: 39, scope: !2118, inlinedAt: !3600)
!3612 = !DILocation(line: 447, column: 5, scope: !2118, inlinedAt: !3600)
!3613 = distinct !{!3613, !3607, !3614, !1911}
!3614 = !DILocation(line: 448, column: 28, scope: !2114, inlinedAt: !3600)
!3615 = !DILocation(line: 450, column: 2, scope: !2106, inlinedAt: !3600)
!3616 = !DILocation(line: 112, column: 5, scope: !2097, inlinedAt: !3594)
!3617 = !DILocation(line: 177, column: 13, scope: !2083, inlinedAt: !3574)
!3618 = !DILocation(line: 177, column: 15, scope: !2083, inlinedAt: !3574)
!3619 = !DILocation(line: 0, scope: !2007, inlinedAt: !3620)
!3620 = distinct !DILocation(line: 177, column: 13, scope: !2083, inlinedAt: !3574)
!3621 = !DILocation(line: 49, column: 42, scope: !2007, inlinedAt: !3620)
!3622 = !DILocation(line: 50, column: 22, scope: !2007, inlinedAt: !3620)
!3623 = !DILocation(line: 50, column: 20, scope: !2007, inlinedAt: !3620)
!3624 = !DILocation(line: 177, column: 18, scope: !2083, inlinedAt: !3574)
!3625 = !DILocation(line: 176, column: 33, scope: !2083, inlinedAt: !3574)
!3626 = !DILocation(line: 176, column: 9, scope: !2083, inlinedAt: !3574)
!3627 = distinct !{!3627, !3582, !3628, !1911}
!3628 = !DILocation(line: 177, column: 38, scope: !2079, inlinedAt: !3574)
!3629 = !DILocation(line: 42, column: 26, scope: !3384, inlinedAt: !3386)
!3630 = !DILocation(line: 42, column: 13, scope: !3384, inlinedAt: !3386)
!3631 = !DILocation(line: 0, scope: !1979, inlinedAt: !3632)
!3632 = distinct !DILocation(line: 42, column: 32, scope: !3384, inlinedAt: !3386)
!3633 = !DILocation(line: 99, column: 44, scope: !1979, inlinedAt: !3632)
!3634 = !DILocation(line: 100, column: 26, scope: !1979, inlinedAt: !3632)
!3635 = !DILocation(line: 0, scope: !1987, inlinedAt: !3636)
!3636 = distinct !DILocation(line: 100, column: 19, scope: !1979, inlinedAt: !3632)
!3637 = !DILocation(line: 164, column: 53, scope: !1987, inlinedAt: !3636)
!3638 = !DILocation(line: 165, column: 20, scope: !1987, inlinedAt: !3636)
!3639 = !DILocation(line: 165, column: 24, scope: !1987, inlinedAt: !3636)
!3640 = !DILocation(line: 166, column: 18, scope: !1997, inlinedAt: !3636)
!3641 = !DILocation(line: 166, column: 14, scope: !1997, inlinedAt: !3636)
!3642 = !DILocation(line: 166, column: 25, scope: !2001, inlinedAt: !3636)
!3643 = !DILocation(line: 166, column: 27, scope: !2001, inlinedAt: !3636)
!3644 = !DILocation(line: 166, column: 9, scope: !1997, inlinedAt: !3636)
!3645 = !DILocation(line: 167, column: 24, scope: !2001, inlinedAt: !3636)
!3646 = !DILocation(line: 167, column: 26, scope: !2001, inlinedAt: !3636)
!3647 = !DILocation(line: 0, scope: !2007, inlinedAt: !3648)
!3648 = distinct !DILocation(line: 167, column: 24, scope: !2001, inlinedAt: !3636)
!3649 = !DILocation(line: 49, column: 42, scope: !2007, inlinedAt: !3648)
!3650 = !DILocation(line: 50, column: 22, scope: !2007, inlinedAt: !3648)
!3651 = !DILocation(line: 50, column: 20, scope: !2007, inlinedAt: !3648)
!3652 = !DILocation(line: 167, column: 30, scope: !2001, inlinedAt: !3636)
!3653 = !DILocation(line: 167, column: 36, scope: !2001, inlinedAt: !3636)
!3654 = !DILocation(line: 167, column: 20, scope: !2001, inlinedAt: !3636)
!3655 = !DILocation(line: 107, column: 25, scope: !2019, inlinedAt: !3656)
!3656 = distinct !DILocation(line: 167, column: 20, scope: !2001, inlinedAt: !3636)
!3657 = !DILocation(line: 107, column: 34, scope: !2019, inlinedAt: !3656)
!3658 = !DILocation(line: 108, column: 23, scope: !2019, inlinedAt: !3656)
!3659 = !DILocation(line: 108, column: 25, scope: !2019, inlinedAt: !3656)
!3660 = !DILocation(line: 108, column: 12, scope: !2019, inlinedAt: !3656)
!3661 = !DILocation(line: 453, column: 39, scope: !2030, inlinedAt: !3662)
!3662 = distinct !DILocation(line: 108, column: 12, scope: !2019, inlinedAt: !3656)
!3663 = !DILocation(line: 453, column: 48, scope: !2030, inlinedAt: !3662)
!3664 = !DILocation(line: 454, column: 8, scope: !2030, inlinedAt: !3662)
!3665 = !DILocation(line: 457, column: 14, scope: !2038, inlinedAt: !3662)
!3666 = !DILocation(line: 457, column: 10, scope: !2038, inlinedAt: !3662)
!3667 = !DILocation(line: 457, column: 21, scope: !2042, inlinedAt: !3662)
!3668 = !DILocation(line: 457, column: 23, scope: !2042, inlinedAt: !3662)
!3669 = !DILocation(line: 457, column: 5, scope: !2038, inlinedAt: !3662)
!3670 = !DILocation(line: 458, column: 28, scope: !2042, inlinedAt: !3662)
!3671 = !DILocation(line: 458, column: 9, scope: !2042, inlinedAt: !3662)
!3672 = !DILocation(line: 458, column: 26, scope: !2042, inlinedAt: !3662)
!3673 = !DILocation(line: 457, column: 39, scope: !2042, inlinedAt: !3662)
!3674 = !DILocation(line: 457, column: 5, scope: !2042, inlinedAt: !3662)
!3675 = distinct !{!3675, !3669, !3676, !1911}
!3676 = !DILocation(line: 458, column: 28, scope: !2038, inlinedAt: !3662)
!3677 = !DILocation(line: 460, column: 2, scope: !2030, inlinedAt: !3662)
!3678 = !DILocation(line: 108, column: 5, scope: !2019, inlinedAt: !3656)
!3679 = !DILocation(line: 167, column: 13, scope: !2001, inlinedAt: !3636)
!3680 = !DILocation(line: 167, column: 15, scope: !2001, inlinedAt: !3636)
!3681 = !DILocation(line: 0, scope: !2007, inlinedAt: !3682)
!3682 = distinct !DILocation(line: 167, column: 13, scope: !2001, inlinedAt: !3636)
!3683 = !DILocation(line: 49, column: 42, scope: !2007, inlinedAt: !3682)
!3684 = !DILocation(line: 50, column: 22, scope: !2007, inlinedAt: !3682)
!3685 = !DILocation(line: 50, column: 20, scope: !2007, inlinedAt: !3682)
!3686 = !DILocation(line: 167, column: 18, scope: !2001, inlinedAt: !3636)
!3687 = !DILocation(line: 166, column: 33, scope: !2001, inlinedAt: !3636)
!3688 = !DILocation(line: 166, column: 9, scope: !2001, inlinedAt: !3636)
!3689 = distinct !{!3689, !3644, !3690, !1911}
!3690 = !DILocation(line: 167, column: 38, scope: !1997, inlinedAt: !3636)
!3691 = !DILocation(line: 101, column: 13, scope: !1979, inlinedAt: !3632)
!3692 = !DILocation(line: 101, column: 26, scope: !1979, inlinedAt: !3632)
!3693 = !DILocation(line: 101, column: 28, scope: !1979, inlinedAt: !3632)
!3694 = !DILocation(line: 0, scope: !2070, inlinedAt: !3695)
!3695 = distinct !DILocation(line: 101, column: 19, scope: !1979, inlinedAt: !3632)
!3696 = !DILocation(line: 174, column: 53, scope: !2070, inlinedAt: !3695)
!3697 = !DILocation(line: 175, column: 20, scope: !2070, inlinedAt: !3695)
!3698 = !DILocation(line: 175, column: 24, scope: !2070, inlinedAt: !3695)
!3699 = !DILocation(line: 176, column: 18, scope: !2079, inlinedAt: !3695)
!3700 = !DILocation(line: 176, column: 14, scope: !2079, inlinedAt: !3695)
!3701 = !DILocation(line: 176, column: 25, scope: !2083, inlinedAt: !3695)
!3702 = !DILocation(line: 176, column: 27, scope: !2083, inlinedAt: !3695)
!3703 = !DILocation(line: 176, column: 9, scope: !2079, inlinedAt: !3695)
!3704 = !DILocation(line: 177, column: 24, scope: !2083, inlinedAt: !3695)
!3705 = !DILocation(line: 177, column: 26, scope: !2083, inlinedAt: !3695)
!3706 = !DILocation(line: 0, scope: !2007, inlinedAt: !3707)
!3707 = distinct !DILocation(line: 177, column: 24, scope: !2083, inlinedAt: !3695)
!3708 = !DILocation(line: 49, column: 42, scope: !2007, inlinedAt: !3707)
!3709 = !DILocation(line: 50, column: 22, scope: !2007, inlinedAt: !3707)
!3710 = !DILocation(line: 50, column: 20, scope: !2007, inlinedAt: !3707)
!3711 = !DILocation(line: 177, column: 30, scope: !2083, inlinedAt: !3695)
!3712 = !DILocation(line: 177, column: 36, scope: !2083, inlinedAt: !3695)
!3713 = !DILocation(line: 177, column: 20, scope: !2083, inlinedAt: !3695)
!3714 = !DILocation(line: 111, column: 25, scope: !2097, inlinedAt: !3715)
!3715 = distinct !DILocation(line: 177, column: 20, scope: !2083, inlinedAt: !3695)
!3716 = !DILocation(line: 111, column: 34, scope: !2097, inlinedAt: !3715)
!3717 = !DILocation(line: 112, column: 23, scope: !2097, inlinedAt: !3715)
!3718 = !DILocation(line: 112, column: 25, scope: !2097, inlinedAt: !3715)
!3719 = !DILocation(line: 112, column: 12, scope: !2097, inlinedAt: !3715)
!3720 = !DILocation(line: 443, column: 39, scope: !2106, inlinedAt: !3721)
!3721 = distinct !DILocation(line: 112, column: 12, scope: !2097, inlinedAt: !3715)
!3722 = !DILocation(line: 443, column: 48, scope: !2106, inlinedAt: !3721)
!3723 = !DILocation(line: 444, column: 8, scope: !2106, inlinedAt: !3721)
!3724 = !DILocation(line: 447, column: 14, scope: !2114, inlinedAt: !3721)
!3725 = !DILocation(line: 447, column: 10, scope: !2114, inlinedAt: !3721)
!3726 = !DILocation(line: 447, column: 21, scope: !2118, inlinedAt: !3721)
!3727 = !DILocation(line: 447, column: 23, scope: !2118, inlinedAt: !3721)
!3728 = !DILocation(line: 447, column: 5, scope: !2114, inlinedAt: !3721)
!3729 = !DILocation(line: 448, column: 28, scope: !2118, inlinedAt: !3721)
!3730 = !DILocation(line: 448, column: 9, scope: !2118, inlinedAt: !3721)
!3731 = !DILocation(line: 448, column: 26, scope: !2118, inlinedAt: !3721)
!3732 = !DILocation(line: 447, column: 39, scope: !2118, inlinedAt: !3721)
!3733 = !DILocation(line: 447, column: 5, scope: !2118, inlinedAt: !3721)
!3734 = distinct !{!3734, !3728, !3735, !1911}
!3735 = !DILocation(line: 448, column: 28, scope: !2114, inlinedAt: !3721)
!3736 = !DILocation(line: 450, column: 2, scope: !2106, inlinedAt: !3721)
!3737 = !DILocation(line: 112, column: 5, scope: !2097, inlinedAt: !3715)
!3738 = !DILocation(line: 177, column: 13, scope: !2083, inlinedAt: !3695)
!3739 = !DILocation(line: 177, column: 15, scope: !2083, inlinedAt: !3695)
!3740 = !DILocation(line: 0, scope: !2007, inlinedAt: !3741)
!3741 = distinct !DILocation(line: 177, column: 13, scope: !2083, inlinedAt: !3695)
!3742 = !DILocation(line: 49, column: 42, scope: !2007, inlinedAt: !3741)
!3743 = !DILocation(line: 50, column: 22, scope: !2007, inlinedAt: !3741)
!3744 = !DILocation(line: 50, column: 20, scope: !2007, inlinedAt: !3741)
!3745 = !DILocation(line: 177, column: 18, scope: !2083, inlinedAt: !3695)
!3746 = !DILocation(line: 176, column: 33, scope: !2083, inlinedAt: !3695)
!3747 = !DILocation(line: 176, column: 9, scope: !2083, inlinedAt: !3695)
!3748 = distinct !{!3748, !3703, !3749, !1911}
!3749 = !DILocation(line: 177, column: 38, scope: !2079, inlinedAt: !3695)
!3750 = !DILocation(line: 43, column: 26, scope: !3384, inlinedAt: !3386)
!3751 = !DILocation(line: 43, column: 13, scope: !3384, inlinedAt: !3386)
!3752 = !DILocation(line: 0, scope: !1979, inlinedAt: !3753)
!3753 = distinct !DILocation(line: 43, column: 32, scope: !3384, inlinedAt: !3386)
!3754 = !DILocation(line: 99, column: 44, scope: !1979, inlinedAt: !3753)
!3755 = !DILocation(line: 100, column: 26, scope: !1979, inlinedAt: !3753)
!3756 = !DILocation(line: 0, scope: !1987, inlinedAt: !3757)
!3757 = distinct !DILocation(line: 100, column: 19, scope: !1979, inlinedAt: !3753)
!3758 = !DILocation(line: 164, column: 53, scope: !1987, inlinedAt: !3757)
!3759 = !DILocation(line: 165, column: 20, scope: !1987, inlinedAt: !3757)
!3760 = !DILocation(line: 165, column: 24, scope: !1987, inlinedAt: !3757)
!3761 = !DILocation(line: 166, column: 18, scope: !1997, inlinedAt: !3757)
!3762 = !DILocation(line: 166, column: 14, scope: !1997, inlinedAt: !3757)
!3763 = !DILocation(line: 166, column: 25, scope: !2001, inlinedAt: !3757)
!3764 = !DILocation(line: 166, column: 27, scope: !2001, inlinedAt: !3757)
!3765 = !DILocation(line: 166, column: 9, scope: !1997, inlinedAt: !3757)
!3766 = !DILocation(line: 167, column: 24, scope: !2001, inlinedAt: !3757)
!3767 = !DILocation(line: 167, column: 26, scope: !2001, inlinedAt: !3757)
!3768 = !DILocation(line: 0, scope: !2007, inlinedAt: !3769)
!3769 = distinct !DILocation(line: 167, column: 24, scope: !2001, inlinedAt: !3757)
!3770 = !DILocation(line: 49, column: 42, scope: !2007, inlinedAt: !3769)
!3771 = !DILocation(line: 50, column: 22, scope: !2007, inlinedAt: !3769)
!3772 = !DILocation(line: 50, column: 20, scope: !2007, inlinedAt: !3769)
!3773 = !DILocation(line: 167, column: 30, scope: !2001, inlinedAt: !3757)
!3774 = !DILocation(line: 167, column: 36, scope: !2001, inlinedAt: !3757)
!3775 = !DILocation(line: 167, column: 20, scope: !2001, inlinedAt: !3757)
!3776 = !DILocation(line: 107, column: 25, scope: !2019, inlinedAt: !3777)
!3777 = distinct !DILocation(line: 167, column: 20, scope: !2001, inlinedAt: !3757)
!3778 = !DILocation(line: 107, column: 34, scope: !2019, inlinedAt: !3777)
!3779 = !DILocation(line: 108, column: 23, scope: !2019, inlinedAt: !3777)
!3780 = !DILocation(line: 108, column: 25, scope: !2019, inlinedAt: !3777)
!3781 = !DILocation(line: 108, column: 12, scope: !2019, inlinedAt: !3777)
!3782 = !DILocation(line: 453, column: 39, scope: !2030, inlinedAt: !3783)
!3783 = distinct !DILocation(line: 108, column: 12, scope: !2019, inlinedAt: !3777)
!3784 = !DILocation(line: 453, column: 48, scope: !2030, inlinedAt: !3783)
!3785 = !DILocation(line: 454, column: 8, scope: !2030, inlinedAt: !3783)
!3786 = !DILocation(line: 457, column: 14, scope: !2038, inlinedAt: !3783)
!3787 = !DILocation(line: 457, column: 10, scope: !2038, inlinedAt: !3783)
!3788 = !DILocation(line: 457, column: 21, scope: !2042, inlinedAt: !3783)
!3789 = !DILocation(line: 457, column: 23, scope: !2042, inlinedAt: !3783)
!3790 = !DILocation(line: 457, column: 5, scope: !2038, inlinedAt: !3783)
!3791 = !DILocation(line: 458, column: 28, scope: !2042, inlinedAt: !3783)
!3792 = !DILocation(line: 458, column: 9, scope: !2042, inlinedAt: !3783)
!3793 = !DILocation(line: 458, column: 26, scope: !2042, inlinedAt: !3783)
!3794 = !DILocation(line: 457, column: 39, scope: !2042, inlinedAt: !3783)
!3795 = !DILocation(line: 457, column: 5, scope: !2042, inlinedAt: !3783)
!3796 = distinct !{!3796, !3790, !3797, !1911}
!3797 = !DILocation(line: 458, column: 28, scope: !2038, inlinedAt: !3783)
!3798 = !DILocation(line: 460, column: 2, scope: !2030, inlinedAt: !3783)
!3799 = !DILocation(line: 108, column: 5, scope: !2019, inlinedAt: !3777)
!3800 = !DILocation(line: 167, column: 13, scope: !2001, inlinedAt: !3757)
!3801 = !DILocation(line: 167, column: 15, scope: !2001, inlinedAt: !3757)
!3802 = !DILocation(line: 0, scope: !2007, inlinedAt: !3803)
!3803 = distinct !DILocation(line: 167, column: 13, scope: !2001, inlinedAt: !3757)
!3804 = !DILocation(line: 49, column: 42, scope: !2007, inlinedAt: !3803)
!3805 = !DILocation(line: 50, column: 22, scope: !2007, inlinedAt: !3803)
!3806 = !DILocation(line: 50, column: 20, scope: !2007, inlinedAt: !3803)
!3807 = !DILocation(line: 167, column: 18, scope: !2001, inlinedAt: !3757)
!3808 = !DILocation(line: 166, column: 33, scope: !2001, inlinedAt: !3757)
!3809 = !DILocation(line: 166, column: 9, scope: !2001, inlinedAt: !3757)
!3810 = distinct !{!3810, !3765, !3811, !1911}
!3811 = !DILocation(line: 167, column: 38, scope: !1997, inlinedAt: !3757)
!3812 = !DILocation(line: 101, column: 13, scope: !1979, inlinedAt: !3753)
!3813 = !DILocation(line: 101, column: 26, scope: !1979, inlinedAt: !3753)
!3814 = !DILocation(line: 101, column: 28, scope: !1979, inlinedAt: !3753)
!3815 = !DILocation(line: 0, scope: !2070, inlinedAt: !3816)
!3816 = distinct !DILocation(line: 101, column: 19, scope: !1979, inlinedAt: !3753)
!3817 = !DILocation(line: 174, column: 53, scope: !2070, inlinedAt: !3816)
!3818 = !DILocation(line: 175, column: 20, scope: !2070, inlinedAt: !3816)
!3819 = !DILocation(line: 175, column: 24, scope: !2070, inlinedAt: !3816)
!3820 = !DILocation(line: 176, column: 18, scope: !2079, inlinedAt: !3816)
!3821 = !DILocation(line: 176, column: 14, scope: !2079, inlinedAt: !3816)
!3822 = !DILocation(line: 176, column: 25, scope: !2083, inlinedAt: !3816)
!3823 = !DILocation(line: 176, column: 27, scope: !2083, inlinedAt: !3816)
!3824 = !DILocation(line: 176, column: 9, scope: !2079, inlinedAt: !3816)
!3825 = !DILocation(line: 177, column: 24, scope: !2083, inlinedAt: !3816)
!3826 = !DILocation(line: 177, column: 26, scope: !2083, inlinedAt: !3816)
!3827 = !DILocation(line: 0, scope: !2007, inlinedAt: !3828)
!3828 = distinct !DILocation(line: 177, column: 24, scope: !2083, inlinedAt: !3816)
!3829 = !DILocation(line: 49, column: 42, scope: !2007, inlinedAt: !3828)
!3830 = !DILocation(line: 50, column: 22, scope: !2007, inlinedAt: !3828)
!3831 = !DILocation(line: 50, column: 20, scope: !2007, inlinedAt: !3828)
!3832 = !DILocation(line: 177, column: 30, scope: !2083, inlinedAt: !3816)
!3833 = !DILocation(line: 177, column: 36, scope: !2083, inlinedAt: !3816)
!3834 = !DILocation(line: 177, column: 20, scope: !2083, inlinedAt: !3816)
!3835 = !DILocation(line: 111, column: 25, scope: !2097, inlinedAt: !3836)
!3836 = distinct !DILocation(line: 177, column: 20, scope: !2083, inlinedAt: !3816)
!3837 = !DILocation(line: 111, column: 34, scope: !2097, inlinedAt: !3836)
!3838 = !DILocation(line: 112, column: 23, scope: !2097, inlinedAt: !3836)
!3839 = !DILocation(line: 112, column: 25, scope: !2097, inlinedAt: !3836)
!3840 = !DILocation(line: 112, column: 12, scope: !2097, inlinedAt: !3836)
!3841 = !DILocation(line: 443, column: 39, scope: !2106, inlinedAt: !3842)
!3842 = distinct !DILocation(line: 112, column: 12, scope: !2097, inlinedAt: !3836)
!3843 = !DILocation(line: 443, column: 48, scope: !2106, inlinedAt: !3842)
!3844 = !DILocation(line: 444, column: 8, scope: !2106, inlinedAt: !3842)
!3845 = !DILocation(line: 447, column: 14, scope: !2114, inlinedAt: !3842)
!3846 = !DILocation(line: 447, column: 10, scope: !2114, inlinedAt: !3842)
!3847 = !DILocation(line: 447, column: 21, scope: !2118, inlinedAt: !3842)
!3848 = !DILocation(line: 447, column: 23, scope: !2118, inlinedAt: !3842)
!3849 = !DILocation(line: 447, column: 5, scope: !2114, inlinedAt: !3842)
!3850 = !DILocation(line: 448, column: 28, scope: !2118, inlinedAt: !3842)
!3851 = !DILocation(line: 448, column: 9, scope: !2118, inlinedAt: !3842)
!3852 = !DILocation(line: 448, column: 26, scope: !2118, inlinedAt: !3842)
!3853 = !DILocation(line: 447, column: 39, scope: !2118, inlinedAt: !3842)
!3854 = !DILocation(line: 447, column: 5, scope: !2118, inlinedAt: !3842)
!3855 = distinct !{!3855, !3849, !3856, !1911}
!3856 = !DILocation(line: 448, column: 28, scope: !2114, inlinedAt: !3842)
!3857 = !DILocation(line: 450, column: 2, scope: !2106, inlinedAt: !3842)
!3858 = !DILocation(line: 112, column: 5, scope: !2097, inlinedAt: !3836)
!3859 = !DILocation(line: 177, column: 13, scope: !2083, inlinedAt: !3816)
!3860 = !DILocation(line: 177, column: 15, scope: !2083, inlinedAt: !3816)
!3861 = !DILocation(line: 0, scope: !2007, inlinedAt: !3862)
!3862 = distinct !DILocation(line: 177, column: 13, scope: !2083, inlinedAt: !3816)
!3863 = !DILocation(line: 49, column: 42, scope: !2007, inlinedAt: !3862)
!3864 = !DILocation(line: 50, column: 22, scope: !2007, inlinedAt: !3862)
!3865 = !DILocation(line: 50, column: 20, scope: !2007, inlinedAt: !3862)
!3866 = !DILocation(line: 177, column: 18, scope: !2083, inlinedAt: !3816)
!3867 = !DILocation(line: 176, column: 33, scope: !2083, inlinedAt: !3816)
!3868 = !DILocation(line: 176, column: 9, scope: !2083, inlinedAt: !3816)
!3869 = distinct !{!3869, !3824, !3870, !1911}
!3870 = !DILocation(line: 177, column: 38, scope: !2079, inlinedAt: !3816)
!3871 = !DILocation(line: 44, column: 25, scope: !3384, inlinedAt: !3386)
!3872 = !DILocation(line: 44, column: 13, scope: !3384, inlinedAt: !3386)
!3873 = !DILocation(line: 44, column: 30, scope: !3384, inlinedAt: !3386)
!3874 = !DILocation(line: 45, column: 25, scope: !3384, inlinedAt: !3386)
!3875 = !DILocation(line: 45, column: 13, scope: !3384, inlinedAt: !3386)
!3876 = !DILocation(line: 45, column: 30, scope: !3384, inlinedAt: !3386)
!3877 = !DILocation(line: 46, column: 25, scope: !3384, inlinedAt: !3386)
!3878 = !DILocation(line: 46, column: 13, scope: !3384, inlinedAt: !3386)
!3879 = !DILocation(line: 46, column: 30, scope: !3384, inlinedAt: !3386)
!3880 = !DILocation(line: 81, column: 5, scope: !3376)
!3881 = !DILocation(line: 80, column: 31, scope: !3376)
!3882 = !DILocation(line: 80, column: 7, scope: !3376)
!3883 = distinct !{!3883, !3379, !3884, !1911}
!3884 = !DILocation(line: 81, column: 61, scope: !3371)
!3885 = !DILocalVariable(name: "leftTriAABB", scope: !2484, file: !571, line: 84, type: !362)
!3886 = !DILocation(line: 84, column: 12, scope: !2484)
!3887 = !DILocalVariable(name: "rightTriAABB", scope: !2484, file: !571, line: 84, type: !362)
!3888 = !DILocation(line: 84, column: 24, scope: !2484)
!3889 = !DILocalVariable(name: "dim", scope: !3890, file: !571, line: 86, type: !13)
!3890 = distinct !DILexicalBlock(scope: !2484, file: !571, line: 86, column: 7)
!3891 = !DILocation(line: 86, column: 16, scope: !3890)
!3892 = !DILocation(line: 86, column: 12, scope: !3890)
!3893 = !DILocation(line: 86, column: 22, scope: !3894)
!3894 = distinct !DILexicalBlock(scope: !3890, file: !571, line: 86, column: 7)
!3895 = !DILocation(line: 86, column: 25, scope: !3894)
!3896 = !DILocation(line: 86, column: 7, scope: !3890)
!3897 = !DILocalVariable(name: "binDim", scope: !3898, file: !571, line: 88, type: !294)
!3898 = distinct !DILexicalBlock(scope: !3894, file: !571, line: 87, column: 7)
!3899 = !DILocation(line: 88, column: 21, scope: !3898)
!3900 = !DILocation(line: 88, column: 30, scope: !3898)
!3901 = !DILocation(line: 89, column: 32, scope: !3902)
!3902 = distinct !DILexicalBlock(scope: !3898, file: !571, line: 89, column: 15)
!3903 = !DILocation(line: 89, column: 57, scope: !3902)
!3904 = !DILocation(line: 89, column: 15, scope: !3898)
!3905 = !DILocation(line: 89, column: 69, scope: !3902)
!3906 = !DILocalVariable(name: "rightBounds", scope: !3898, file: !571, line: 91, type: !362)
!3907 = !DILocation(line: 91, column: 16, scope: !3898)
!3908 = !DILocation(line: 0, scope: !2599, inlinedAt: !3909)
!3909 = distinct !DILocation(line: 92, column: 23, scope: !3898)
!3910 = !DILocation(line: 0, scope: !2603, inlinedAt: !3911)
!3911 = distinct !DILocation(line: 34, column: 35, scope: !2599, inlinedAt: !3909)
!3912 = !DILocation(line: 622, column: 40, scope: !1887, inlinedAt: !3913)
!3913 = distinct !DILocation(line: 268, column: 17, scope: !2603, inlinedAt: !3911)
!3914 = !DILocation(line: 623, column: 11, scope: !1887, inlinedAt: !3913)
!3915 = !DILocation(line: 626, column: 14, scope: !1896, inlinedAt: !3913)
!3916 = !DILocation(line: 626, column: 10, scope: !1896, inlinedAt: !3913)
!3917 = !DILocation(line: 626, column: 21, scope: !1900, inlinedAt: !3913)
!3918 = !DILocation(line: 626, column: 23, scope: !1900, inlinedAt: !3913)
!3919 = !DILocation(line: 626, column: 5, scope: !1896, inlinedAt: !3913)
!3920 = !DILocation(line: 627, column: 23, scope: !1900, inlinedAt: !3913)
!3921 = !DILocation(line: 627, column: 18, scope: !1900, inlinedAt: !3913)
!3922 = !DILocation(line: 627, column: 9, scope: !1900, inlinedAt: !3913)
!3923 = !DILocation(line: 627, column: 21, scope: !1900, inlinedAt: !3913)
!3924 = !DILocation(line: 626, column: 39, scope: !1900, inlinedAt: !3913)
!3925 = !DILocation(line: 626, column: 5, scope: !1900, inlinedAt: !3913)
!3926 = distinct !{!3926, !3919, !3927, !1911}
!3927 = !DILocation(line: 627, column: 23, scope: !1896, inlinedAt: !3913)
!3928 = !DILocation(line: 629, column: 5, scope: !1887, inlinedAt: !3913)
!3929 = !DILocation(line: 268, column: 17, scope: !2603, inlinedAt: !3911)
!3930 = !DILocation(line: 0, scope: !2625, inlinedAt: !3931)
!3931 = distinct !DILocation(line: 268, column: 15, scope: !2603, inlinedAt: !3911)
!3932 = !DILocation(line: 81, column: 54, scope: !2625, inlinedAt: !3931)
!3933 = !DILocation(line: 82, column: 20, scope: !2625, inlinedAt: !3931)
!3934 = !DILocation(line: 82, column: 24, scope: !2625, inlinedAt: !3931)
!3935 = !DILocation(line: 83, column: 9, scope: !2625, inlinedAt: !3931)
!3936 = !DILocation(line: 83, column: 31, scope: !2625, inlinedAt: !3931)
!3937 = !DILocation(line: 0, scope: !2636, inlinedAt: !3938)
!3938 = distinct !DILocation(line: 83, column: 11, scope: !2625, inlinedAt: !3931)
!3939 = !DILocation(line: 28, column: 58, scope: !2636, inlinedAt: !3938)
!3940 = !DILocation(line: 29, column: 22, scope: !2642, inlinedAt: !3938)
!3941 = !DILocation(line: 29, column: 18, scope: !2642, inlinedAt: !3938)
!3942 = !DILocation(line: 29, column: 29, scope: !2646, inlinedAt: !3938)
!3943 = !DILocation(line: 29, column: 31, scope: !2646, inlinedAt: !3938)
!3944 = !DILocation(line: 29, column: 13, scope: !2642, inlinedAt: !3938)
!3945 = !DILocation(line: 30, column: 24, scope: !2646, inlinedAt: !3938)
!3946 = !DILocation(line: 30, column: 19, scope: !2646, inlinedAt: !3938)
!3947 = !DILocation(line: 30, column: 17, scope: !2646, inlinedAt: !3938)
!3948 = !DILocation(line: 30, column: 22, scope: !2646, inlinedAt: !3938)
!3949 = !DILocation(line: 29, column: 37, scope: !2646, inlinedAt: !3938)
!3950 = !DILocation(line: 29, column: 13, scope: !2646, inlinedAt: !3938)
!3951 = distinct !{!3951, !3944, !3952, !1911}
!3952 = !DILocation(line: 30, column: 24, scope: !2642, inlinedAt: !3938)
!3953 = !DILocation(line: 622, column: 40, scope: !1887, inlinedAt: !3954)
!3954 = distinct !DILocation(line: 269, column: 17, scope: !2603, inlinedAt: !3911)
!3955 = !DILocation(line: 623, column: 11, scope: !1887, inlinedAt: !3954)
!3956 = !DILocation(line: 626, column: 14, scope: !1896, inlinedAt: !3954)
!3957 = !DILocation(line: 626, column: 10, scope: !1896, inlinedAt: !3954)
!3958 = !DILocation(line: 626, column: 21, scope: !1900, inlinedAt: !3954)
!3959 = !DILocation(line: 626, column: 23, scope: !1900, inlinedAt: !3954)
!3960 = !DILocation(line: 626, column: 5, scope: !1896, inlinedAt: !3954)
!3961 = !DILocation(line: 627, column: 23, scope: !1900, inlinedAt: !3954)
!3962 = !DILocation(line: 627, column: 18, scope: !1900, inlinedAt: !3954)
!3963 = !DILocation(line: 627, column: 9, scope: !1900, inlinedAt: !3954)
!3964 = !DILocation(line: 627, column: 21, scope: !1900, inlinedAt: !3954)
!3965 = !DILocation(line: 626, column: 39, scope: !1900, inlinedAt: !3954)
!3966 = !DILocation(line: 626, column: 5, scope: !1900, inlinedAt: !3954)
!3967 = distinct !{!3967, !3960, !3968, !1911}
!3968 = !DILocation(line: 627, column: 23, scope: !1896, inlinedAt: !3954)
!3969 = !DILocation(line: 629, column: 5, scope: !1887, inlinedAt: !3954)
!3970 = !DILocation(line: 269, column: 17, scope: !2603, inlinedAt: !3911)
!3971 = !DILocation(line: 269, column: 9, scope: !2603, inlinedAt: !3911)
!3972 = !DILocation(line: 0, scope: !2625, inlinedAt: !3973)
!3973 = distinct !DILocation(line: 269, column: 15, scope: !2603, inlinedAt: !3911)
!3974 = !DILocation(line: 81, column: 54, scope: !2625, inlinedAt: !3973)
!3975 = !DILocation(line: 82, column: 20, scope: !2625, inlinedAt: !3973)
!3976 = !DILocation(line: 82, column: 24, scope: !2625, inlinedAt: !3973)
!3977 = !DILocation(line: 83, column: 9, scope: !2625, inlinedAt: !3973)
!3978 = !DILocation(line: 83, column: 31, scope: !2625, inlinedAt: !3973)
!3979 = !DILocation(line: 0, scope: !2636, inlinedAt: !3980)
!3980 = distinct !DILocation(line: 83, column: 11, scope: !2625, inlinedAt: !3973)
!3981 = !DILocation(line: 28, column: 58, scope: !2636, inlinedAt: !3980)
!3982 = !DILocation(line: 29, column: 22, scope: !2642, inlinedAt: !3980)
!3983 = !DILocation(line: 29, column: 18, scope: !2642, inlinedAt: !3980)
!3984 = !DILocation(line: 29, column: 29, scope: !2646, inlinedAt: !3980)
!3985 = !DILocation(line: 29, column: 31, scope: !2646, inlinedAt: !3980)
!3986 = !DILocation(line: 29, column: 13, scope: !2642, inlinedAt: !3980)
!3987 = !DILocation(line: 30, column: 24, scope: !2646, inlinedAt: !3980)
!3988 = !DILocation(line: 30, column: 19, scope: !2646, inlinedAt: !3980)
!3989 = !DILocation(line: 30, column: 17, scope: !2646, inlinedAt: !3980)
!3990 = !DILocation(line: 30, column: 22, scope: !2646, inlinedAt: !3980)
!3991 = !DILocation(line: 29, column: 37, scope: !2646, inlinedAt: !3980)
!3992 = !DILocation(line: 29, column: 13, scope: !2646, inlinedAt: !3980)
!3993 = distinct !{!3993, !3986, !3994, !1911}
!3994 = !DILocation(line: 30, column: 24, scope: !2642, inlinedAt: !3980)
!3995 = !DILocalVariable(name: "i", scope: !3996, file: !571, line: 93, type: !13)
!3996 = distinct !DILexicalBlock(scope: !3898, file: !571, line: 93, column: 11)
!3997 = !DILocation(line: 93, column: 20, scope: !3996)
!3998 = !DILocation(line: 93, column: 22, scope: !3996)
!3999 = !DILocation(line: 93, column: 29, scope: !3996)
!4000 = !DILocation(line: 93, column: 16, scope: !3996)
!4001 = !DILocation(line: 93, column: 32, scope: !4002)
!4002 = distinct !DILexicalBlock(scope: !3996, file: !571, line: 93, column: 11)
!4003 = !DILocation(line: 93, column: 33, scope: !4002)
!4004 = !DILocation(line: 93, column: 11, scope: !3996)
!4005 = !DILocation(line: 95, column: 44, scope: !4006)
!4006 = distinct !DILexicalBlock(scope: !4002, file: !571, line: 94, column: 11)
!4007 = !DILocation(line: 95, column: 34, scope: !4006)
!4008 = !DILocation(line: 95, column: 52, scope: !4006)
!4009 = !DILocation(line: 0, scope: !1979, inlinedAt: !4010)
!4010 = distinct !DILocation(line: 95, column: 27, scope: !4006)
!4011 = !DILocation(line: 99, column: 44, scope: !1979, inlinedAt: !4010)
!4012 = !DILocation(line: 100, column: 26, scope: !1979, inlinedAt: !4010)
!4013 = !DILocation(line: 0, scope: !1987, inlinedAt: !4014)
!4014 = distinct !DILocation(line: 100, column: 19, scope: !1979, inlinedAt: !4010)
!4015 = !DILocation(line: 164, column: 53, scope: !1987, inlinedAt: !4014)
!4016 = !DILocation(line: 165, column: 20, scope: !1987, inlinedAt: !4014)
!4017 = !DILocation(line: 165, column: 24, scope: !1987, inlinedAt: !4014)
!4018 = !DILocation(line: 166, column: 18, scope: !1997, inlinedAt: !4014)
!4019 = !DILocation(line: 166, column: 14, scope: !1997, inlinedAt: !4014)
!4020 = !DILocation(line: 166, column: 25, scope: !2001, inlinedAt: !4014)
!4021 = !DILocation(line: 166, column: 27, scope: !2001, inlinedAt: !4014)
!4022 = !DILocation(line: 166, column: 9, scope: !1997, inlinedAt: !4014)
!4023 = !DILocation(line: 167, column: 24, scope: !2001, inlinedAt: !4014)
!4024 = !DILocation(line: 167, column: 26, scope: !2001, inlinedAt: !4014)
!4025 = !DILocation(line: 0, scope: !2007, inlinedAt: !4026)
!4026 = distinct !DILocation(line: 167, column: 24, scope: !2001, inlinedAt: !4014)
!4027 = !DILocation(line: 49, column: 42, scope: !2007, inlinedAt: !4026)
!4028 = !DILocation(line: 50, column: 22, scope: !2007, inlinedAt: !4026)
!4029 = !DILocation(line: 50, column: 20, scope: !2007, inlinedAt: !4026)
!4030 = !DILocation(line: 167, column: 30, scope: !2001, inlinedAt: !4014)
!4031 = !DILocation(line: 167, column: 36, scope: !2001, inlinedAt: !4014)
!4032 = !DILocation(line: 167, column: 20, scope: !2001, inlinedAt: !4014)
!4033 = !DILocation(line: 107, column: 25, scope: !2019, inlinedAt: !4034)
!4034 = distinct !DILocation(line: 167, column: 20, scope: !2001, inlinedAt: !4014)
!4035 = !DILocation(line: 107, column: 34, scope: !2019, inlinedAt: !4034)
!4036 = !DILocation(line: 108, column: 23, scope: !2019, inlinedAt: !4034)
!4037 = !DILocation(line: 108, column: 25, scope: !2019, inlinedAt: !4034)
!4038 = !DILocation(line: 108, column: 12, scope: !2019, inlinedAt: !4034)
!4039 = !DILocation(line: 453, column: 39, scope: !2030, inlinedAt: !4040)
!4040 = distinct !DILocation(line: 108, column: 12, scope: !2019, inlinedAt: !4034)
!4041 = !DILocation(line: 453, column: 48, scope: !2030, inlinedAt: !4040)
!4042 = !DILocation(line: 454, column: 8, scope: !2030, inlinedAt: !4040)
!4043 = !DILocation(line: 457, column: 14, scope: !2038, inlinedAt: !4040)
!4044 = !DILocation(line: 457, column: 10, scope: !2038, inlinedAt: !4040)
!4045 = !DILocation(line: 457, column: 21, scope: !2042, inlinedAt: !4040)
!4046 = !DILocation(line: 457, column: 23, scope: !2042, inlinedAt: !4040)
!4047 = !DILocation(line: 457, column: 5, scope: !2038, inlinedAt: !4040)
!4048 = !DILocation(line: 458, column: 28, scope: !2042, inlinedAt: !4040)
!4049 = !DILocation(line: 458, column: 9, scope: !2042, inlinedAt: !4040)
!4050 = !DILocation(line: 458, column: 26, scope: !2042, inlinedAt: !4040)
!4051 = !DILocation(line: 457, column: 39, scope: !2042, inlinedAt: !4040)
!4052 = !DILocation(line: 457, column: 5, scope: !2042, inlinedAt: !4040)
!4053 = distinct !{!4053, !4047, !4054, !1911}
!4054 = !DILocation(line: 458, column: 28, scope: !2038, inlinedAt: !4040)
!4055 = !DILocation(line: 460, column: 2, scope: !2030, inlinedAt: !4040)
!4056 = !DILocation(line: 108, column: 5, scope: !2019, inlinedAt: !4034)
!4057 = !DILocation(line: 167, column: 13, scope: !2001, inlinedAt: !4014)
!4058 = !DILocation(line: 167, column: 15, scope: !2001, inlinedAt: !4014)
!4059 = !DILocation(line: 0, scope: !2007, inlinedAt: !4060)
!4060 = distinct !DILocation(line: 167, column: 13, scope: !2001, inlinedAt: !4014)
!4061 = !DILocation(line: 49, column: 42, scope: !2007, inlinedAt: !4060)
!4062 = !DILocation(line: 50, column: 22, scope: !2007, inlinedAt: !4060)
!4063 = !DILocation(line: 50, column: 20, scope: !2007, inlinedAt: !4060)
!4064 = !DILocation(line: 167, column: 18, scope: !2001, inlinedAt: !4014)
!4065 = !DILocation(line: 166, column: 33, scope: !2001, inlinedAt: !4014)
!4066 = !DILocation(line: 166, column: 9, scope: !2001, inlinedAt: !4014)
!4067 = distinct !{!4067, !4022, !4068, !1911}
!4068 = !DILocation(line: 167, column: 38, scope: !1997, inlinedAt: !4014)
!4069 = !DILocation(line: 101, column: 13, scope: !1979, inlinedAt: !4010)
!4070 = !DILocation(line: 101, column: 26, scope: !1979, inlinedAt: !4010)
!4071 = !DILocation(line: 101, column: 28, scope: !1979, inlinedAt: !4010)
!4072 = !DILocation(line: 0, scope: !2070, inlinedAt: !4073)
!4073 = distinct !DILocation(line: 101, column: 19, scope: !1979, inlinedAt: !4010)
!4074 = !DILocation(line: 174, column: 53, scope: !2070, inlinedAt: !4073)
!4075 = !DILocation(line: 175, column: 20, scope: !2070, inlinedAt: !4073)
!4076 = !DILocation(line: 175, column: 24, scope: !2070, inlinedAt: !4073)
!4077 = !DILocation(line: 176, column: 18, scope: !2079, inlinedAt: !4073)
!4078 = !DILocation(line: 176, column: 14, scope: !2079, inlinedAt: !4073)
!4079 = !DILocation(line: 176, column: 25, scope: !2083, inlinedAt: !4073)
!4080 = !DILocation(line: 176, column: 27, scope: !2083, inlinedAt: !4073)
!4081 = !DILocation(line: 176, column: 9, scope: !2079, inlinedAt: !4073)
!4082 = !DILocation(line: 177, column: 24, scope: !2083, inlinedAt: !4073)
!4083 = !DILocation(line: 177, column: 26, scope: !2083, inlinedAt: !4073)
!4084 = !DILocation(line: 0, scope: !2007, inlinedAt: !4085)
!4085 = distinct !DILocation(line: 177, column: 24, scope: !2083, inlinedAt: !4073)
!4086 = !DILocation(line: 49, column: 42, scope: !2007, inlinedAt: !4085)
!4087 = !DILocation(line: 50, column: 22, scope: !2007, inlinedAt: !4085)
!4088 = !DILocation(line: 50, column: 20, scope: !2007, inlinedAt: !4085)
!4089 = !DILocation(line: 177, column: 30, scope: !2083, inlinedAt: !4073)
!4090 = !DILocation(line: 177, column: 36, scope: !2083, inlinedAt: !4073)
!4091 = !DILocation(line: 177, column: 20, scope: !2083, inlinedAt: !4073)
!4092 = !DILocation(line: 111, column: 25, scope: !2097, inlinedAt: !4093)
!4093 = distinct !DILocation(line: 177, column: 20, scope: !2083, inlinedAt: !4073)
!4094 = !DILocation(line: 111, column: 34, scope: !2097, inlinedAt: !4093)
!4095 = !DILocation(line: 112, column: 23, scope: !2097, inlinedAt: !4093)
!4096 = !DILocation(line: 112, column: 25, scope: !2097, inlinedAt: !4093)
!4097 = !DILocation(line: 112, column: 12, scope: !2097, inlinedAt: !4093)
!4098 = !DILocation(line: 443, column: 39, scope: !2106, inlinedAt: !4099)
!4099 = distinct !DILocation(line: 112, column: 12, scope: !2097, inlinedAt: !4093)
!4100 = !DILocation(line: 443, column: 48, scope: !2106, inlinedAt: !4099)
!4101 = !DILocation(line: 444, column: 8, scope: !2106, inlinedAt: !4099)
!4102 = !DILocation(line: 447, column: 14, scope: !2114, inlinedAt: !4099)
!4103 = !DILocation(line: 447, column: 10, scope: !2114, inlinedAt: !4099)
!4104 = !DILocation(line: 447, column: 21, scope: !2118, inlinedAt: !4099)
!4105 = !DILocation(line: 447, column: 23, scope: !2118, inlinedAt: !4099)
!4106 = !DILocation(line: 447, column: 5, scope: !2114, inlinedAt: !4099)
!4107 = !DILocation(line: 448, column: 28, scope: !2118, inlinedAt: !4099)
!4108 = !DILocation(line: 448, column: 9, scope: !2118, inlinedAt: !4099)
!4109 = !DILocation(line: 448, column: 26, scope: !2118, inlinedAt: !4099)
!4110 = !DILocation(line: 447, column: 39, scope: !2118, inlinedAt: !4099)
!4111 = !DILocation(line: 447, column: 5, scope: !2118, inlinedAt: !4099)
!4112 = distinct !{!4112, !4106, !4113, !1911}
!4113 = !DILocation(line: 448, column: 28, scope: !2114, inlinedAt: !4099)
!4114 = !DILocation(line: 450, column: 2, scope: !2106, inlinedAt: !4099)
!4115 = !DILocation(line: 112, column: 5, scope: !2097, inlinedAt: !4093)
!4116 = !DILocation(line: 177, column: 13, scope: !2083, inlinedAt: !4073)
!4117 = !DILocation(line: 177, column: 15, scope: !2083, inlinedAt: !4073)
!4118 = !DILocation(line: 0, scope: !2007, inlinedAt: !4119)
!4119 = distinct !DILocation(line: 177, column: 13, scope: !2083, inlinedAt: !4073)
!4120 = !DILocation(line: 49, column: 42, scope: !2007, inlinedAt: !4119)
!4121 = !DILocation(line: 50, column: 22, scope: !2007, inlinedAt: !4119)
!4122 = !DILocation(line: 50, column: 20, scope: !2007, inlinedAt: !4119)
!4123 = !DILocation(line: 177, column: 18, scope: !2083, inlinedAt: !4073)
!4124 = !DILocation(line: 176, column: 33, scope: !2083, inlinedAt: !4073)
!4125 = !DILocation(line: 176, column: 9, scope: !2083, inlinedAt: !4073)
!4126 = distinct !{!4126, !4081, !4127, !1911}
!4127 = !DILocation(line: 177, column: 38, scope: !2079, inlinedAt: !4073)
!4128 = !DILocation(line: 96, column: 24, scope: !4006)
!4129 = !DILocation(line: 96, column: 15, scope: !4006)
!4130 = !DILocation(line: 96, column: 27, scope: !4006)
!4131 = !DILocation(line: 97, column: 11, scope: !4006)
!4132 = !DILocation(line: 93, column: 37, scope: !4002)
!4133 = !DILocation(line: 93, column: 11, scope: !4002)
!4134 = distinct !{!4134, !4004, !4135, !1911}
!4135 = !DILocation(line: 97, column: 11, scope: !3996)
!4136 = !DILocalVariable(name: "leftBounds", scope: !3898, file: !571, line: 99, type: !362)
!4137 = !DILocation(line: 99, column: 16, scope: !3898)
!4138 = !DILocation(line: 0, scope: !2599, inlinedAt: !4139)
!4139 = distinct !DILocation(line: 100, column: 22, scope: !3898)
!4140 = !DILocation(line: 0, scope: !2603, inlinedAt: !4141)
!4141 = distinct !DILocation(line: 34, column: 35, scope: !2599, inlinedAt: !4139)
!4142 = !DILocation(line: 622, column: 40, scope: !1887, inlinedAt: !4143)
!4143 = distinct !DILocation(line: 268, column: 17, scope: !2603, inlinedAt: !4141)
!4144 = !DILocation(line: 623, column: 11, scope: !1887, inlinedAt: !4143)
!4145 = !DILocation(line: 626, column: 14, scope: !1896, inlinedAt: !4143)
!4146 = !DILocation(line: 626, column: 10, scope: !1896, inlinedAt: !4143)
!4147 = !DILocation(line: 626, column: 21, scope: !1900, inlinedAt: !4143)
!4148 = !DILocation(line: 626, column: 23, scope: !1900, inlinedAt: !4143)
!4149 = !DILocation(line: 626, column: 5, scope: !1896, inlinedAt: !4143)
!4150 = !DILocation(line: 627, column: 23, scope: !1900, inlinedAt: !4143)
!4151 = !DILocation(line: 627, column: 18, scope: !1900, inlinedAt: !4143)
!4152 = !DILocation(line: 627, column: 9, scope: !1900, inlinedAt: !4143)
!4153 = !DILocation(line: 627, column: 21, scope: !1900, inlinedAt: !4143)
!4154 = !DILocation(line: 626, column: 39, scope: !1900, inlinedAt: !4143)
!4155 = !DILocation(line: 626, column: 5, scope: !1900, inlinedAt: !4143)
!4156 = distinct !{!4156, !4149, !4157, !1911}
!4157 = !DILocation(line: 627, column: 23, scope: !1896, inlinedAt: !4143)
!4158 = !DILocation(line: 629, column: 5, scope: !1887, inlinedAt: !4143)
!4159 = !DILocation(line: 268, column: 17, scope: !2603, inlinedAt: !4141)
!4160 = !DILocation(line: 0, scope: !2625, inlinedAt: !4161)
!4161 = distinct !DILocation(line: 268, column: 15, scope: !2603, inlinedAt: !4141)
!4162 = !DILocation(line: 81, column: 54, scope: !2625, inlinedAt: !4161)
!4163 = !DILocation(line: 82, column: 20, scope: !2625, inlinedAt: !4161)
!4164 = !DILocation(line: 82, column: 24, scope: !2625, inlinedAt: !4161)
!4165 = !DILocation(line: 83, column: 9, scope: !2625, inlinedAt: !4161)
!4166 = !DILocation(line: 83, column: 31, scope: !2625, inlinedAt: !4161)
!4167 = !DILocation(line: 0, scope: !2636, inlinedAt: !4168)
!4168 = distinct !DILocation(line: 83, column: 11, scope: !2625, inlinedAt: !4161)
!4169 = !DILocation(line: 28, column: 58, scope: !2636, inlinedAt: !4168)
!4170 = !DILocation(line: 29, column: 22, scope: !2642, inlinedAt: !4168)
!4171 = !DILocation(line: 29, column: 18, scope: !2642, inlinedAt: !4168)
!4172 = !DILocation(line: 29, column: 29, scope: !2646, inlinedAt: !4168)
!4173 = !DILocation(line: 29, column: 31, scope: !2646, inlinedAt: !4168)
!4174 = !DILocation(line: 29, column: 13, scope: !2642, inlinedAt: !4168)
!4175 = !DILocation(line: 30, column: 24, scope: !2646, inlinedAt: !4168)
!4176 = !DILocation(line: 30, column: 19, scope: !2646, inlinedAt: !4168)
!4177 = !DILocation(line: 30, column: 17, scope: !2646, inlinedAt: !4168)
!4178 = !DILocation(line: 30, column: 22, scope: !2646, inlinedAt: !4168)
!4179 = !DILocation(line: 29, column: 37, scope: !2646, inlinedAt: !4168)
!4180 = !DILocation(line: 29, column: 13, scope: !2646, inlinedAt: !4168)
!4181 = distinct !{!4181, !4174, !4182, !1911}
!4182 = !DILocation(line: 30, column: 24, scope: !2642, inlinedAt: !4168)
!4183 = !DILocation(line: 622, column: 40, scope: !1887, inlinedAt: !4184)
!4184 = distinct !DILocation(line: 269, column: 17, scope: !2603, inlinedAt: !4141)
!4185 = !DILocation(line: 623, column: 11, scope: !1887, inlinedAt: !4184)
!4186 = !DILocation(line: 626, column: 14, scope: !1896, inlinedAt: !4184)
!4187 = !DILocation(line: 626, column: 10, scope: !1896, inlinedAt: !4184)
!4188 = !DILocation(line: 626, column: 21, scope: !1900, inlinedAt: !4184)
!4189 = !DILocation(line: 626, column: 23, scope: !1900, inlinedAt: !4184)
!4190 = !DILocation(line: 626, column: 5, scope: !1896, inlinedAt: !4184)
!4191 = !DILocation(line: 627, column: 23, scope: !1900, inlinedAt: !4184)
!4192 = !DILocation(line: 627, column: 18, scope: !1900, inlinedAt: !4184)
!4193 = !DILocation(line: 627, column: 9, scope: !1900, inlinedAt: !4184)
!4194 = !DILocation(line: 627, column: 21, scope: !1900, inlinedAt: !4184)
!4195 = !DILocation(line: 626, column: 39, scope: !1900, inlinedAt: !4184)
!4196 = !DILocation(line: 626, column: 5, scope: !1900, inlinedAt: !4184)
!4197 = distinct !{!4197, !4190, !4198, !1911}
!4198 = !DILocation(line: 627, column: 23, scope: !1896, inlinedAt: !4184)
!4199 = !DILocation(line: 629, column: 5, scope: !1887, inlinedAt: !4184)
!4200 = !DILocation(line: 269, column: 17, scope: !2603, inlinedAt: !4141)
!4201 = !DILocation(line: 269, column: 9, scope: !2603, inlinedAt: !4141)
!4202 = !DILocation(line: 0, scope: !2625, inlinedAt: !4203)
!4203 = distinct !DILocation(line: 269, column: 15, scope: !2603, inlinedAt: !4141)
!4204 = !DILocation(line: 81, column: 54, scope: !2625, inlinedAt: !4203)
!4205 = !DILocation(line: 82, column: 20, scope: !2625, inlinedAt: !4203)
!4206 = !DILocation(line: 82, column: 24, scope: !2625, inlinedAt: !4203)
!4207 = !DILocation(line: 83, column: 9, scope: !2625, inlinedAt: !4203)
!4208 = !DILocation(line: 83, column: 31, scope: !2625, inlinedAt: !4203)
!4209 = !DILocation(line: 0, scope: !2636, inlinedAt: !4210)
!4210 = distinct !DILocation(line: 83, column: 11, scope: !2625, inlinedAt: !4203)
!4211 = !DILocation(line: 28, column: 58, scope: !2636, inlinedAt: !4210)
!4212 = !DILocation(line: 29, column: 22, scope: !2642, inlinedAt: !4210)
!4213 = !DILocation(line: 29, column: 18, scope: !2642, inlinedAt: !4210)
!4214 = !DILocation(line: 29, column: 29, scope: !2646, inlinedAt: !4210)
!4215 = !DILocation(line: 29, column: 31, scope: !2646, inlinedAt: !4210)
!4216 = !DILocation(line: 29, column: 13, scope: !2642, inlinedAt: !4210)
!4217 = !DILocation(line: 30, column: 24, scope: !2646, inlinedAt: !4210)
!4218 = !DILocation(line: 30, column: 19, scope: !2646, inlinedAt: !4210)
!4219 = !DILocation(line: 30, column: 17, scope: !2646, inlinedAt: !4210)
!4220 = !DILocation(line: 30, column: 22, scope: !2646, inlinedAt: !4210)
!4221 = !DILocation(line: 29, column: 37, scope: !2646, inlinedAt: !4210)
!4222 = !DILocation(line: 29, column: 13, scope: !2646, inlinedAt: !4210)
!4223 = distinct !{!4223, !4216, !4224, !1911}
!4224 = !DILocation(line: 30, column: 24, scope: !2642, inlinedAt: !4210)
!4225 = !DILocalVariable(name: "i", scope: !4226, file: !571, line: 101, type: !13)
!4226 = distinct !DILexicalBlock(scope: !3898, file: !571, line: 101, column: 11)
!4227 = !DILocation(line: 101, column: 20, scope: !4226)
!4228 = !DILocalVariable(name: "count", scope: !4226, file: !571, line: 101, type: !13)
!4229 = !DILocation(line: 101, column: 24, scope: !4226)
!4230 = !DILocation(line: 101, column: 16, scope: !4226)
!4231 = !DILocation(line: 101, column: 34, scope: !4232)
!4232 = distinct !DILexicalBlock(scope: !4226, file: !571, line: 101, column: 11)
!4233 = !DILocation(line: 101, column: 36, scope: !4232)
!4234 = !DILocation(line: 101, column: 35, scope: !4232)
!4235 = !DILocation(line: 101, column: 11, scope: !4226)
!4236 = !DILocation(line: 103, column: 43, scope: !4237)
!4237 = distinct !DILexicalBlock(scope: !4232, file: !571, line: 102, column: 11)
!4238 = !DILocation(line: 103, column: 33, scope: !4237)
!4239 = !DILocation(line: 103, column: 51, scope: !4237)
!4240 = !DILocation(line: 103, column: 52, scope: !4237)
!4241 = !DILocation(line: 0, scope: !1979, inlinedAt: !4242)
!4242 = distinct !DILocation(line: 103, column: 26, scope: !4237)
!4243 = !DILocation(line: 99, column: 44, scope: !1979, inlinedAt: !4242)
!4244 = !DILocation(line: 100, column: 26, scope: !1979, inlinedAt: !4242)
!4245 = !DILocation(line: 0, scope: !1987, inlinedAt: !4246)
!4246 = distinct !DILocation(line: 100, column: 19, scope: !1979, inlinedAt: !4242)
!4247 = !DILocation(line: 164, column: 53, scope: !1987, inlinedAt: !4246)
!4248 = !DILocation(line: 165, column: 20, scope: !1987, inlinedAt: !4246)
!4249 = !DILocation(line: 165, column: 24, scope: !1987, inlinedAt: !4246)
!4250 = !DILocation(line: 166, column: 18, scope: !1997, inlinedAt: !4246)
!4251 = !DILocation(line: 166, column: 14, scope: !1997, inlinedAt: !4246)
!4252 = !DILocation(line: 166, column: 25, scope: !2001, inlinedAt: !4246)
!4253 = !DILocation(line: 166, column: 27, scope: !2001, inlinedAt: !4246)
!4254 = !DILocation(line: 166, column: 9, scope: !1997, inlinedAt: !4246)
!4255 = !DILocation(line: 167, column: 24, scope: !2001, inlinedAt: !4246)
!4256 = !DILocation(line: 167, column: 26, scope: !2001, inlinedAt: !4246)
!4257 = !DILocation(line: 0, scope: !2007, inlinedAt: !4258)
!4258 = distinct !DILocation(line: 167, column: 24, scope: !2001, inlinedAt: !4246)
!4259 = !DILocation(line: 49, column: 42, scope: !2007, inlinedAt: !4258)
!4260 = !DILocation(line: 50, column: 22, scope: !2007, inlinedAt: !4258)
!4261 = !DILocation(line: 50, column: 20, scope: !2007, inlinedAt: !4258)
!4262 = !DILocation(line: 167, column: 30, scope: !2001, inlinedAt: !4246)
!4263 = !DILocation(line: 167, column: 36, scope: !2001, inlinedAt: !4246)
!4264 = !DILocation(line: 167, column: 20, scope: !2001, inlinedAt: !4246)
!4265 = !DILocation(line: 107, column: 25, scope: !2019, inlinedAt: !4266)
!4266 = distinct !DILocation(line: 167, column: 20, scope: !2001, inlinedAt: !4246)
!4267 = !DILocation(line: 107, column: 34, scope: !2019, inlinedAt: !4266)
!4268 = !DILocation(line: 108, column: 23, scope: !2019, inlinedAt: !4266)
!4269 = !DILocation(line: 108, column: 25, scope: !2019, inlinedAt: !4266)
!4270 = !DILocation(line: 108, column: 12, scope: !2019, inlinedAt: !4266)
!4271 = !DILocation(line: 453, column: 39, scope: !2030, inlinedAt: !4272)
!4272 = distinct !DILocation(line: 108, column: 12, scope: !2019, inlinedAt: !4266)
!4273 = !DILocation(line: 453, column: 48, scope: !2030, inlinedAt: !4272)
!4274 = !DILocation(line: 454, column: 8, scope: !2030, inlinedAt: !4272)
!4275 = !DILocation(line: 457, column: 14, scope: !2038, inlinedAt: !4272)
!4276 = !DILocation(line: 457, column: 10, scope: !2038, inlinedAt: !4272)
!4277 = !DILocation(line: 457, column: 21, scope: !2042, inlinedAt: !4272)
!4278 = !DILocation(line: 457, column: 23, scope: !2042, inlinedAt: !4272)
!4279 = !DILocation(line: 457, column: 5, scope: !2038, inlinedAt: !4272)
!4280 = !DILocation(line: 458, column: 28, scope: !2042, inlinedAt: !4272)
!4281 = !DILocation(line: 458, column: 9, scope: !2042, inlinedAt: !4272)
!4282 = !DILocation(line: 458, column: 26, scope: !2042, inlinedAt: !4272)
!4283 = !DILocation(line: 457, column: 39, scope: !2042, inlinedAt: !4272)
!4284 = !DILocation(line: 457, column: 5, scope: !2042, inlinedAt: !4272)
!4285 = distinct !{!4285, !4279, !4286, !1911}
!4286 = !DILocation(line: 458, column: 28, scope: !2038, inlinedAt: !4272)
!4287 = !DILocation(line: 460, column: 2, scope: !2030, inlinedAt: !4272)
!4288 = !DILocation(line: 108, column: 5, scope: !2019, inlinedAt: !4266)
!4289 = !DILocation(line: 167, column: 13, scope: !2001, inlinedAt: !4246)
!4290 = !DILocation(line: 167, column: 15, scope: !2001, inlinedAt: !4246)
!4291 = !DILocation(line: 0, scope: !2007, inlinedAt: !4292)
!4292 = distinct !DILocation(line: 167, column: 13, scope: !2001, inlinedAt: !4246)
!4293 = !DILocation(line: 49, column: 42, scope: !2007, inlinedAt: !4292)
!4294 = !DILocation(line: 50, column: 22, scope: !2007, inlinedAt: !4292)
!4295 = !DILocation(line: 50, column: 20, scope: !2007, inlinedAt: !4292)
!4296 = !DILocation(line: 167, column: 18, scope: !2001, inlinedAt: !4246)
!4297 = !DILocation(line: 166, column: 33, scope: !2001, inlinedAt: !4246)
!4298 = !DILocation(line: 166, column: 9, scope: !2001, inlinedAt: !4246)
!4299 = distinct !{!4299, !4254, !4300, !1911}
!4300 = !DILocation(line: 167, column: 38, scope: !1997, inlinedAt: !4246)
!4301 = !DILocation(line: 101, column: 13, scope: !1979, inlinedAt: !4242)
!4302 = !DILocation(line: 101, column: 26, scope: !1979, inlinedAt: !4242)
!4303 = !DILocation(line: 101, column: 28, scope: !1979, inlinedAt: !4242)
!4304 = !DILocation(line: 0, scope: !2070, inlinedAt: !4305)
!4305 = distinct !DILocation(line: 101, column: 19, scope: !1979, inlinedAt: !4242)
!4306 = !DILocation(line: 174, column: 53, scope: !2070, inlinedAt: !4305)
!4307 = !DILocation(line: 175, column: 20, scope: !2070, inlinedAt: !4305)
!4308 = !DILocation(line: 175, column: 24, scope: !2070, inlinedAt: !4305)
!4309 = !DILocation(line: 176, column: 18, scope: !2079, inlinedAt: !4305)
!4310 = !DILocation(line: 176, column: 14, scope: !2079, inlinedAt: !4305)
!4311 = !DILocation(line: 176, column: 25, scope: !2083, inlinedAt: !4305)
!4312 = !DILocation(line: 176, column: 27, scope: !2083, inlinedAt: !4305)
!4313 = !DILocation(line: 176, column: 9, scope: !2079, inlinedAt: !4305)
!4314 = !DILocation(line: 177, column: 24, scope: !2083, inlinedAt: !4305)
!4315 = !DILocation(line: 177, column: 26, scope: !2083, inlinedAt: !4305)
!4316 = !DILocation(line: 0, scope: !2007, inlinedAt: !4317)
!4317 = distinct !DILocation(line: 177, column: 24, scope: !2083, inlinedAt: !4305)
!4318 = !DILocation(line: 49, column: 42, scope: !2007, inlinedAt: !4317)
!4319 = !DILocation(line: 50, column: 22, scope: !2007, inlinedAt: !4317)
!4320 = !DILocation(line: 50, column: 20, scope: !2007, inlinedAt: !4317)
!4321 = !DILocation(line: 177, column: 30, scope: !2083, inlinedAt: !4305)
!4322 = !DILocation(line: 177, column: 36, scope: !2083, inlinedAt: !4305)
!4323 = !DILocation(line: 177, column: 20, scope: !2083, inlinedAt: !4305)
!4324 = !DILocation(line: 111, column: 25, scope: !2097, inlinedAt: !4325)
!4325 = distinct !DILocation(line: 177, column: 20, scope: !2083, inlinedAt: !4305)
!4326 = !DILocation(line: 111, column: 34, scope: !2097, inlinedAt: !4325)
!4327 = !DILocation(line: 112, column: 23, scope: !2097, inlinedAt: !4325)
!4328 = !DILocation(line: 112, column: 25, scope: !2097, inlinedAt: !4325)
!4329 = !DILocation(line: 112, column: 12, scope: !2097, inlinedAt: !4325)
!4330 = !DILocation(line: 443, column: 39, scope: !2106, inlinedAt: !4331)
!4331 = distinct !DILocation(line: 112, column: 12, scope: !2097, inlinedAt: !4325)
!4332 = !DILocation(line: 443, column: 48, scope: !2106, inlinedAt: !4331)
!4333 = !DILocation(line: 444, column: 8, scope: !2106, inlinedAt: !4331)
!4334 = !DILocation(line: 447, column: 14, scope: !2114, inlinedAt: !4331)
!4335 = !DILocation(line: 447, column: 10, scope: !2114, inlinedAt: !4331)
!4336 = !DILocation(line: 447, column: 21, scope: !2118, inlinedAt: !4331)
!4337 = !DILocation(line: 447, column: 23, scope: !2118, inlinedAt: !4331)
!4338 = !DILocation(line: 447, column: 5, scope: !2114, inlinedAt: !4331)
!4339 = !DILocation(line: 448, column: 28, scope: !2118, inlinedAt: !4331)
!4340 = !DILocation(line: 448, column: 9, scope: !2118, inlinedAt: !4331)
!4341 = !DILocation(line: 448, column: 26, scope: !2118, inlinedAt: !4331)
!4342 = !DILocation(line: 447, column: 39, scope: !2118, inlinedAt: !4331)
!4343 = !DILocation(line: 447, column: 5, scope: !2118, inlinedAt: !4331)
!4344 = distinct !{!4344, !4338, !4345, !1911}
!4345 = !DILocation(line: 448, column: 28, scope: !2114, inlinedAt: !4331)
!4346 = !DILocation(line: 450, column: 2, scope: !2106, inlinedAt: !4331)
!4347 = !DILocation(line: 112, column: 5, scope: !2097, inlinedAt: !4325)
!4348 = !DILocation(line: 177, column: 13, scope: !2083, inlinedAt: !4305)
!4349 = !DILocation(line: 177, column: 15, scope: !2083, inlinedAt: !4305)
!4350 = !DILocation(line: 0, scope: !2007, inlinedAt: !4351)
!4351 = distinct !DILocation(line: 177, column: 13, scope: !2083, inlinedAt: !4305)
!4352 = !DILocation(line: 49, column: 42, scope: !2007, inlinedAt: !4351)
!4353 = !DILocation(line: 50, column: 22, scope: !2007, inlinedAt: !4351)
!4354 = !DILocation(line: 50, column: 20, scope: !2007, inlinedAt: !4351)
!4355 = !DILocation(line: 177, column: 18, scope: !2083, inlinedAt: !4305)
!4356 = !DILocation(line: 176, column: 33, scope: !2083, inlinedAt: !4305)
!4357 = !DILocation(line: 176, column: 9, scope: !2083, inlinedAt: !4305)
!4358 = distinct !{!4358, !4313, !4359, !1911}
!4359 = !DILocation(line: 177, column: 38, scope: !2079, inlinedAt: !4305)
!4360 = !DILocation(line: 104, column: 33, scope: !4237)
!4361 = !DILocation(line: 104, column: 24, scope: !4237)
!4362 = !DILocation(line: 104, column: 41, scope: !4237)
!4363 = !DILocation(line: 104, column: 42, scope: !4237)
!4364 = !DILocation(line: 104, column: 21, scope: !4237)
!4365 = !DILocalVariable(name: "lnum", scope: !4237, file: !571, line: 106, type: !294)
!4366 = !DILocation(line: 106, column: 25, scope: !4237)
!4367 = !DILocation(line: 106, column: 32, scope: !4237)
!4368 = !DILocalVariable(name: "rnum", scope: !4237, file: !571, line: 107, type: !294)
!4369 = !DILocation(line: 107, column: 25, scope: !4237)
!4370 = !DILocation(line: 107, column: 32, scope: !4237)
!4371 = !DILocation(line: 107, column: 38, scope: !4237)
!4372 = !DILocation(line: 107, column: 37, scope: !4237)
!4373 = !DILocation(line: 109, column: 36, scope: !4374)
!4374 = distinct !DILexicalBlock(scope: !4237, file: !571, line: 109, column: 19)
!4375 = !DILocation(line: 109, column: 41, scope: !4374)
!4376 = !DILocation(line: 109, column: 46, scope: !4374)
!4377 = !DILocation(line: 109, column: 49, scope: !4374)
!4378 = !DILocation(line: 109, column: 54, scope: !4374)
!4379 = !DILocation(line: 109, column: 19, scope: !4237)
!4380 = !DILocation(line: 109, column: 63, scope: !4374)
!4381 = !DILocalVariable(name: "lsa", scope: !4237, file: !571, line: 111, type: !471)
!4382 = !DILocation(line: 111, column: 27, scope: !4237)
!4383 = !DILocation(line: 0, scope: !3168, inlinedAt: !4384)
!4384 = distinct !DILocation(line: 111, column: 44, scope: !4237)
!4385 = !DILocation(line: 0, scope: !3172, inlinedAt: !4386)
!4386 = distinct !DILocation(line: 296, column: 41, scope: !3168, inlinedAt: !4384)
!4387 = !DILocation(line: 0, scope: !3176, inlinedAt: !4388)
!4388 = distinct !DILocation(line: 296, column: 50, scope: !3168, inlinedAt: !4384)
!4389 = !DILocation(line: 314, column: 30, scope: !3176, inlinedAt: !4388)
!4390 = !DILocation(line: 296, column: 20, scope: !3168, inlinedAt: !4384)
!4391 = !DILocation(line: 0, scope: !3182, inlinedAt: !4392)
!4392 = distinct !DILocation(line: 296, column: 59, scope: !3168, inlinedAt: !4384)
!4393 = !DILocation(line: 70, column: 22, scope: !3182, inlinedAt: !4392)
!4394 = !DILocation(line: 70, column: 27, scope: !3182, inlinedAt: !4392)
!4395 = !DILocation(line: 70, column: 36, scope: !3182, inlinedAt: !4392)
!4396 = !DILocation(line: 70, column: 35, scope: !3182, inlinedAt: !4392)
!4397 = !DILocation(line: 70, column: 49, scope: !3182, inlinedAt: !4392)
!4398 = !DILocation(line: 70, column: 58, scope: !3182, inlinedAt: !4392)
!4399 = !DILocation(line: 70, column: 57, scope: !3182, inlinedAt: !4392)
!4400 = !DILocation(line: 70, column: 46, scope: !3182, inlinedAt: !4392)
!4401 = !DILocation(line: 72, column: 26, scope: !3196, inlinedAt: !4392)
!4402 = !DILocation(line: 73, column: 27, scope: !3196, inlinedAt: !4392)
!4403 = !DILocation(line: 73, column: 36, scope: !3196, inlinedAt: !4392)
!4404 = !DILocation(line: 73, column: 35, scope: !3196, inlinedAt: !4392)
!4405 = !DILocation(line: 73, column: 49, scope: !3196, inlinedAt: !4392)
!4406 = !DILocation(line: 73, column: 58, scope: !3196, inlinedAt: !4392)
!4407 = !DILocation(line: 73, column: 57, scope: !3196, inlinedAt: !4392)
!4408 = !DILocation(line: 72, column: 28, scope: !3196, inlinedAt: !4392)
!4409 = !DILocation(line: 74, column: 27, scope: !3196, inlinedAt: !4392)
!4410 = !DILocation(line: 74, column: 36, scope: !3196, inlinedAt: !4392)
!4411 = !DILocation(line: 74, column: 35, scope: !3196, inlinedAt: !4392)
!4412 = !DILocation(line: 74, column: 49, scope: !3196, inlinedAt: !4392)
!4413 = !DILocation(line: 74, column: 58, scope: !3196, inlinedAt: !4392)
!4414 = !DILocation(line: 74, column: 57, scope: !3196, inlinedAt: !4392)
!4415 = !DILocation(line: 73, column: 68, scope: !3196, inlinedAt: !4392)
!4416 = !DILocation(line: 72, column: 23, scope: !3196, inlinedAt: !4392)
!4417 = !DILocation(line: 72, column: 19, scope: !3196, inlinedAt: !4392)
!4418 = !DILocation(line: 76, column: 20, scope: !3182, inlinedAt: !4392)
!4419 = !DILocalVariable(name: "rsa", scope: !4237, file: !571, line: 112, type: !471)
!4420 = !DILocation(line: 112, column: 27, scope: !4237)
!4421 = !DILocation(line: 112, column: 42, scope: !4237)
!4422 = !DILocation(line: 112, column: 33, scope: !4237)
!4423 = !DILocation(line: 0, scope: !3168, inlinedAt: !4424)
!4424 = distinct !DILocation(line: 112, column: 45, scope: !4237)
!4425 = !DILocation(line: 0, scope: !3172, inlinedAt: !4426)
!4426 = distinct !DILocation(line: 296, column: 41, scope: !3168, inlinedAt: !4424)
!4427 = !DILocation(line: 0, scope: !3176, inlinedAt: !4428)
!4428 = distinct !DILocation(line: 296, column: 50, scope: !3168, inlinedAt: !4424)
!4429 = !DILocation(line: 314, column: 30, scope: !3176, inlinedAt: !4428)
!4430 = !DILocation(line: 296, column: 20, scope: !3168, inlinedAt: !4424)
!4431 = !DILocation(line: 0, scope: !3182, inlinedAt: !4432)
!4432 = distinct !DILocation(line: 296, column: 59, scope: !3168, inlinedAt: !4424)
!4433 = !DILocation(line: 70, column: 22, scope: !3182, inlinedAt: !4432)
!4434 = !DILocation(line: 70, column: 27, scope: !3182, inlinedAt: !4432)
!4435 = !DILocation(line: 70, column: 36, scope: !3182, inlinedAt: !4432)
!4436 = !DILocation(line: 70, column: 35, scope: !3182, inlinedAt: !4432)
!4437 = !DILocation(line: 70, column: 49, scope: !3182, inlinedAt: !4432)
!4438 = !DILocation(line: 70, column: 58, scope: !3182, inlinedAt: !4432)
!4439 = !DILocation(line: 70, column: 57, scope: !3182, inlinedAt: !4432)
!4440 = !DILocation(line: 70, column: 46, scope: !3182, inlinedAt: !4432)
!4441 = !DILocation(line: 72, column: 26, scope: !3196, inlinedAt: !4432)
!4442 = !DILocation(line: 73, column: 27, scope: !3196, inlinedAt: !4432)
!4443 = !DILocation(line: 73, column: 36, scope: !3196, inlinedAt: !4432)
!4444 = !DILocation(line: 73, column: 35, scope: !3196, inlinedAt: !4432)
!4445 = !DILocation(line: 73, column: 49, scope: !3196, inlinedAt: !4432)
!4446 = !DILocation(line: 73, column: 58, scope: !3196, inlinedAt: !4432)
!4447 = !DILocation(line: 73, column: 57, scope: !3196, inlinedAt: !4432)
!4448 = !DILocation(line: 72, column: 28, scope: !3196, inlinedAt: !4432)
!4449 = !DILocation(line: 74, column: 27, scope: !3196, inlinedAt: !4432)
!4450 = !DILocation(line: 74, column: 36, scope: !3196, inlinedAt: !4432)
!4451 = !DILocation(line: 74, column: 35, scope: !3196, inlinedAt: !4432)
!4452 = !DILocation(line: 74, column: 49, scope: !3196, inlinedAt: !4432)
!4453 = !DILocation(line: 74, column: 58, scope: !3196, inlinedAt: !4432)
!4454 = !DILocation(line: 74, column: 57, scope: !3196, inlinedAt: !4432)
!4455 = !DILocation(line: 73, column: 68, scope: !3196, inlinedAt: !4432)
!4456 = !DILocation(line: 72, column: 23, scope: !3196, inlinedAt: !4432)
!4457 = !DILocation(line: 72, column: 19, scope: !3196, inlinedAt: !4432)
!4458 = !DILocation(line: 76, column: 20, scope: !3182, inlinedAt: !4432)
!4459 = !DILocalVariable(name: "cost", scope: !4237, file: !571, line: 113, type: !471)
!4460 = !DILocation(line: 113, column: 27, scope: !4237)
!4461 = !DILocation(line: 113, column: 36, scope: !4237)
!4462 = !DILocation(line: 113, column: 42, scope: !4237)
!4463 = !DILocation(line: 113, column: 49, scope: !4237)
!4464 = !DILocation(line: 113, column: 55, scope: !4237)
!4465 = !DILocation(line: 113, column: 53, scope: !4237)
!4466 = !DILocation(line: 113, column: 47, scope: !4237)
!4467 = !DILocation(line: 113, column: 69, scope: !4237)
!4468 = !DILocation(line: 113, column: 60, scope: !4237)
!4469 = !DILocation(line: 116, column: 19, scope: !4470)
!4470 = distinct !DILexicalBlock(scope: !4237, file: !571, line: 116, column: 19)
!4471 = !DILocation(line: 116, column: 26, scope: !4470)
!4472 = !DILocation(line: 116, column: 24, scope: !4470)
!4473 = !DILocation(line: 116, column: 19, scope: !4237)
!4474 = !DILocation(line: 118, column: 30, scope: !4475)
!4475 = distinct !DILexicalBlock(scope: !4470, file: !571, line: 117, column: 15)
!4476 = !DILocation(line: 118, column: 28, scope: !4475)
!4477 = !DILocation(line: 119, column: 31, scope: !4475)
!4478 = !DILocation(line: 119, column: 29, scope: !4475)
!4479 = !DILocation(line: 120, column: 34, scope: !4475)
!4480 = !DILocation(line: 120, column: 32, scope: !4475)
!4481 = !DILocation(line: 121, column: 31, scope: !4475)
!4482 = !DILocation(line: 122, column: 43, scope: !4475)
!4483 = !DILocation(line: 122, column: 34, scope: !4475)
!4484 = !DILocation(line: 122, column: 32, scope: !4475)
!4485 = !DILocation(line: 123, column: 15, scope: !4475)
!4486 = !DILocation(line: 125, column: 11, scope: !4237)
!4487 = !DILocation(line: 101, column: 45, scope: !4232)
!4488 = !DILocation(line: 101, column: 11, scope: !4232)
!4489 = distinct !{!4489, !4235, !4490, !1911}
!4490 = !DILocation(line: 125, column: 11, scope: !4226)
!4491 = !DILocation(line: 126, column: 7, scope: !3898)
!4492 = !DILocation(line: 86, column: 31, scope: !3894)
!4493 = !DILocation(line: 86, column: 7, scope: !3894)
!4494 = distinct !{!4494, !3896, !4495, !1911}
!4495 = !DILocation(line: 126, column: 7, scope: !3890)
!4496 = !DILocation(line: 128, column: 11, scope: !4497)
!4497 = distinct !DILexicalBlock(scope: !2484, file: !571, line: 128, column: 11)
!4498 = !DILocation(line: 128, column: 21, scope: !4497)
!4499 = !DILocation(line: 128, column: 11, scope: !2484)
!4500 = !DILocation(line: 128, column: 28, scope: !4497)
!4501 = !DILocalVariable(name: "l", scope: !2484, file: !571, line: 130, type: !33)
!4502 = !DILocation(line: 130, column: 12, scope: !2484)
!4503 = !DILocation(line: 130, column: 16, scope: !2484)
!4504 = !DILocation(line: 130, column: 23, scope: !2484)
!4505 = !DILocation(line: 130, column: 21, scope: !2484)
!4506 = !DILocalVariable(name: "r", scope: !2484, file: !571, line: 131, type: !33)
!4507 = !DILocation(line: 131, column: 12, scope: !2484)
!4508 = !DILocation(line: 131, column: 16, scope: !2484)
!4509 = !DILocation(line: 131, column: 23, scope: !2484)
!4510 = !DILocation(line: 131, column: 21, scope: !2484)
!4511 = !DILocation(line: 131, column: 26, scope: !2484)
!4512 = !DILocalVariable(name: "mid", scope: !2484, file: !571, line: 132, type: !13)
!4513 = !DILocation(line: 132, column: 11, scope: !2484)
!4514 = !DILocalVariable(name: "leftCentroidBounds", scope: !2484, file: !571, line: 134, type: !362)
!4515 = !DILocation(line: 134, column: 12, scope: !2484)
!4516 = !DILocalVariable(name: "rightCentroidBounds", scope: !2484, file: !571, line: 135, type: !362)
!4517 = !DILocation(line: 135, column: 12, scope: !2484)
!4518 = !DILocation(line: 0, scope: !2599, inlinedAt: !4519)
!4519 = distinct !DILocation(line: 136, column: 26, scope: !2484)
!4520 = !DILocation(line: 0, scope: !2603, inlinedAt: !4521)
!4521 = distinct !DILocation(line: 34, column: 35, scope: !2599, inlinedAt: !4519)
!4522 = !DILocation(line: 622, column: 40, scope: !1887, inlinedAt: !4523)
!4523 = distinct !DILocation(line: 268, column: 17, scope: !2603, inlinedAt: !4521)
!4524 = !DILocation(line: 623, column: 11, scope: !1887, inlinedAt: !4523)
!4525 = !DILocation(line: 626, column: 14, scope: !1896, inlinedAt: !4523)
!4526 = !DILocation(line: 626, column: 10, scope: !1896, inlinedAt: !4523)
!4527 = !DILocation(line: 626, column: 21, scope: !1900, inlinedAt: !4523)
!4528 = !DILocation(line: 626, column: 23, scope: !1900, inlinedAt: !4523)
!4529 = !DILocation(line: 626, column: 5, scope: !1896, inlinedAt: !4523)
!4530 = !DILocation(line: 627, column: 23, scope: !1900, inlinedAt: !4523)
!4531 = !DILocation(line: 627, column: 18, scope: !1900, inlinedAt: !4523)
!4532 = !DILocation(line: 627, column: 9, scope: !1900, inlinedAt: !4523)
!4533 = !DILocation(line: 627, column: 21, scope: !1900, inlinedAt: !4523)
!4534 = !DILocation(line: 626, column: 39, scope: !1900, inlinedAt: !4523)
!4535 = !DILocation(line: 626, column: 5, scope: !1900, inlinedAt: !4523)
!4536 = distinct !{!4536, !4529, !4537, !1911}
!4537 = !DILocation(line: 627, column: 23, scope: !1896, inlinedAt: !4523)
!4538 = !DILocation(line: 629, column: 5, scope: !1887, inlinedAt: !4523)
!4539 = !DILocation(line: 268, column: 17, scope: !2603, inlinedAt: !4521)
!4540 = !DILocation(line: 0, scope: !2625, inlinedAt: !4541)
!4541 = distinct !DILocation(line: 268, column: 15, scope: !2603, inlinedAt: !4521)
!4542 = !DILocation(line: 81, column: 54, scope: !2625, inlinedAt: !4541)
!4543 = !DILocation(line: 82, column: 20, scope: !2625, inlinedAt: !4541)
!4544 = !DILocation(line: 82, column: 24, scope: !2625, inlinedAt: !4541)
!4545 = !DILocation(line: 83, column: 9, scope: !2625, inlinedAt: !4541)
!4546 = !DILocation(line: 83, column: 31, scope: !2625, inlinedAt: !4541)
!4547 = !DILocation(line: 0, scope: !2636, inlinedAt: !4548)
!4548 = distinct !DILocation(line: 83, column: 11, scope: !2625, inlinedAt: !4541)
!4549 = !DILocation(line: 28, column: 58, scope: !2636, inlinedAt: !4548)
!4550 = !DILocation(line: 29, column: 22, scope: !2642, inlinedAt: !4548)
!4551 = !DILocation(line: 29, column: 18, scope: !2642, inlinedAt: !4548)
!4552 = !DILocation(line: 29, column: 29, scope: !2646, inlinedAt: !4548)
!4553 = !DILocation(line: 29, column: 31, scope: !2646, inlinedAt: !4548)
!4554 = !DILocation(line: 29, column: 13, scope: !2642, inlinedAt: !4548)
!4555 = !DILocation(line: 30, column: 24, scope: !2646, inlinedAt: !4548)
!4556 = !DILocation(line: 30, column: 19, scope: !2646, inlinedAt: !4548)
!4557 = !DILocation(line: 30, column: 17, scope: !2646, inlinedAt: !4548)
!4558 = !DILocation(line: 30, column: 22, scope: !2646, inlinedAt: !4548)
!4559 = !DILocation(line: 29, column: 37, scope: !2646, inlinedAt: !4548)
!4560 = !DILocation(line: 29, column: 13, scope: !2646, inlinedAt: !4548)
!4561 = distinct !{!4561, !4554, !4562, !1911}
!4562 = !DILocation(line: 30, column: 24, scope: !2642, inlinedAt: !4548)
!4563 = !DILocation(line: 622, column: 40, scope: !1887, inlinedAt: !4564)
!4564 = distinct !DILocation(line: 269, column: 17, scope: !2603, inlinedAt: !4521)
!4565 = !DILocation(line: 623, column: 11, scope: !1887, inlinedAt: !4564)
!4566 = !DILocation(line: 626, column: 14, scope: !1896, inlinedAt: !4564)
!4567 = !DILocation(line: 626, column: 10, scope: !1896, inlinedAt: !4564)
!4568 = !DILocation(line: 626, column: 21, scope: !1900, inlinedAt: !4564)
!4569 = !DILocation(line: 626, column: 23, scope: !1900, inlinedAt: !4564)
!4570 = !DILocation(line: 626, column: 5, scope: !1896, inlinedAt: !4564)
!4571 = !DILocation(line: 627, column: 23, scope: !1900, inlinedAt: !4564)
!4572 = !DILocation(line: 627, column: 18, scope: !1900, inlinedAt: !4564)
!4573 = !DILocation(line: 627, column: 9, scope: !1900, inlinedAt: !4564)
!4574 = !DILocation(line: 627, column: 21, scope: !1900, inlinedAt: !4564)
!4575 = !DILocation(line: 626, column: 39, scope: !1900, inlinedAt: !4564)
!4576 = !DILocation(line: 626, column: 5, scope: !1900, inlinedAt: !4564)
!4577 = distinct !{!4577, !4570, !4578, !1911}
!4578 = !DILocation(line: 627, column: 23, scope: !1896, inlinedAt: !4564)
!4579 = !DILocation(line: 629, column: 5, scope: !1887, inlinedAt: !4564)
!4580 = !DILocation(line: 269, column: 17, scope: !2603, inlinedAt: !4521)
!4581 = !DILocation(line: 269, column: 9, scope: !2603, inlinedAt: !4521)
!4582 = !DILocation(line: 0, scope: !2625, inlinedAt: !4583)
!4583 = distinct !DILocation(line: 269, column: 15, scope: !2603, inlinedAt: !4521)
!4584 = !DILocation(line: 81, column: 54, scope: !2625, inlinedAt: !4583)
!4585 = !DILocation(line: 82, column: 20, scope: !2625, inlinedAt: !4583)
!4586 = !DILocation(line: 82, column: 24, scope: !2625, inlinedAt: !4583)
!4587 = !DILocation(line: 83, column: 9, scope: !2625, inlinedAt: !4583)
!4588 = !DILocation(line: 83, column: 31, scope: !2625, inlinedAt: !4583)
!4589 = !DILocation(line: 0, scope: !2636, inlinedAt: !4590)
!4590 = distinct !DILocation(line: 83, column: 11, scope: !2625, inlinedAt: !4583)
!4591 = !DILocation(line: 28, column: 58, scope: !2636, inlinedAt: !4590)
!4592 = !DILocation(line: 29, column: 22, scope: !2642, inlinedAt: !4590)
!4593 = !DILocation(line: 29, column: 18, scope: !2642, inlinedAt: !4590)
!4594 = !DILocation(line: 29, column: 29, scope: !2646, inlinedAt: !4590)
!4595 = !DILocation(line: 29, column: 31, scope: !2646, inlinedAt: !4590)
!4596 = !DILocation(line: 29, column: 13, scope: !2642, inlinedAt: !4590)
!4597 = !DILocation(line: 30, column: 24, scope: !2646, inlinedAt: !4590)
!4598 = !DILocation(line: 30, column: 19, scope: !2646, inlinedAt: !4590)
!4599 = !DILocation(line: 30, column: 17, scope: !2646, inlinedAt: !4590)
!4600 = !DILocation(line: 30, column: 22, scope: !2646, inlinedAt: !4590)
!4601 = !DILocation(line: 29, column: 37, scope: !2646, inlinedAt: !4590)
!4602 = !DILocation(line: 29, column: 13, scope: !2646, inlinedAt: !4590)
!4603 = distinct !{!4603, !4596, !4604, !1911}
!4604 = !DILocation(line: 30, column: 24, scope: !2642, inlinedAt: !4590)
!4605 = !DILocation(line: 0, scope: !2599, inlinedAt: !4606)
!4606 = distinct !DILocation(line: 137, column: 27, scope: !2484)
!4607 = !DILocation(line: 0, scope: !2603, inlinedAt: !4608)
!4608 = distinct !DILocation(line: 34, column: 35, scope: !2599, inlinedAt: !4606)
!4609 = !DILocation(line: 622, column: 40, scope: !1887, inlinedAt: !4610)
!4610 = distinct !DILocation(line: 268, column: 17, scope: !2603, inlinedAt: !4608)
!4611 = !DILocation(line: 623, column: 11, scope: !1887, inlinedAt: !4610)
!4612 = !DILocation(line: 626, column: 14, scope: !1896, inlinedAt: !4610)
!4613 = !DILocation(line: 626, column: 10, scope: !1896, inlinedAt: !4610)
!4614 = !DILocation(line: 626, column: 21, scope: !1900, inlinedAt: !4610)
!4615 = !DILocation(line: 626, column: 23, scope: !1900, inlinedAt: !4610)
!4616 = !DILocation(line: 626, column: 5, scope: !1896, inlinedAt: !4610)
!4617 = !DILocation(line: 627, column: 23, scope: !1900, inlinedAt: !4610)
!4618 = !DILocation(line: 627, column: 18, scope: !1900, inlinedAt: !4610)
!4619 = !DILocation(line: 627, column: 9, scope: !1900, inlinedAt: !4610)
!4620 = !DILocation(line: 627, column: 21, scope: !1900, inlinedAt: !4610)
!4621 = !DILocation(line: 626, column: 39, scope: !1900, inlinedAt: !4610)
!4622 = !DILocation(line: 626, column: 5, scope: !1900, inlinedAt: !4610)
!4623 = distinct !{!4623, !4616, !4624, !1911}
!4624 = !DILocation(line: 627, column: 23, scope: !1896, inlinedAt: !4610)
!4625 = !DILocation(line: 629, column: 5, scope: !1887, inlinedAt: !4610)
!4626 = !DILocation(line: 268, column: 17, scope: !2603, inlinedAt: !4608)
!4627 = !DILocation(line: 0, scope: !2625, inlinedAt: !4628)
!4628 = distinct !DILocation(line: 268, column: 15, scope: !2603, inlinedAt: !4608)
!4629 = !DILocation(line: 81, column: 54, scope: !2625, inlinedAt: !4628)
!4630 = !DILocation(line: 82, column: 20, scope: !2625, inlinedAt: !4628)
!4631 = !DILocation(line: 82, column: 24, scope: !2625, inlinedAt: !4628)
!4632 = !DILocation(line: 83, column: 9, scope: !2625, inlinedAt: !4628)
!4633 = !DILocation(line: 83, column: 31, scope: !2625, inlinedAt: !4628)
!4634 = !DILocation(line: 0, scope: !2636, inlinedAt: !4635)
!4635 = distinct !DILocation(line: 83, column: 11, scope: !2625, inlinedAt: !4628)
!4636 = !DILocation(line: 28, column: 58, scope: !2636, inlinedAt: !4635)
!4637 = !DILocation(line: 29, column: 22, scope: !2642, inlinedAt: !4635)
!4638 = !DILocation(line: 29, column: 18, scope: !2642, inlinedAt: !4635)
!4639 = !DILocation(line: 29, column: 29, scope: !2646, inlinedAt: !4635)
!4640 = !DILocation(line: 29, column: 31, scope: !2646, inlinedAt: !4635)
!4641 = !DILocation(line: 29, column: 13, scope: !2642, inlinedAt: !4635)
!4642 = !DILocation(line: 30, column: 24, scope: !2646, inlinedAt: !4635)
!4643 = !DILocation(line: 30, column: 19, scope: !2646, inlinedAt: !4635)
!4644 = !DILocation(line: 30, column: 17, scope: !2646, inlinedAt: !4635)
!4645 = !DILocation(line: 30, column: 22, scope: !2646, inlinedAt: !4635)
!4646 = !DILocation(line: 29, column: 37, scope: !2646, inlinedAt: !4635)
!4647 = !DILocation(line: 29, column: 13, scope: !2646, inlinedAt: !4635)
!4648 = distinct !{!4648, !4641, !4649, !1911}
!4649 = !DILocation(line: 30, column: 24, scope: !2642, inlinedAt: !4635)
!4650 = !DILocation(line: 622, column: 40, scope: !1887, inlinedAt: !4651)
!4651 = distinct !DILocation(line: 269, column: 17, scope: !2603, inlinedAt: !4608)
!4652 = !DILocation(line: 623, column: 11, scope: !1887, inlinedAt: !4651)
!4653 = !DILocation(line: 626, column: 14, scope: !1896, inlinedAt: !4651)
!4654 = !DILocation(line: 626, column: 10, scope: !1896, inlinedAt: !4651)
!4655 = !DILocation(line: 626, column: 21, scope: !1900, inlinedAt: !4651)
!4656 = !DILocation(line: 626, column: 23, scope: !1900, inlinedAt: !4651)
!4657 = !DILocation(line: 626, column: 5, scope: !1896, inlinedAt: !4651)
!4658 = !DILocation(line: 627, column: 23, scope: !1900, inlinedAt: !4651)
!4659 = !DILocation(line: 627, column: 18, scope: !1900, inlinedAt: !4651)
!4660 = !DILocation(line: 627, column: 9, scope: !1900, inlinedAt: !4651)
!4661 = !DILocation(line: 627, column: 21, scope: !1900, inlinedAt: !4651)
!4662 = !DILocation(line: 626, column: 39, scope: !1900, inlinedAt: !4651)
!4663 = !DILocation(line: 626, column: 5, scope: !1900, inlinedAt: !4651)
!4664 = distinct !{!4664, !4657, !4665, !1911}
!4665 = !DILocation(line: 627, column: 23, scope: !1896, inlinedAt: !4651)
!4666 = !DILocation(line: 629, column: 5, scope: !1887, inlinedAt: !4651)
!4667 = !DILocation(line: 269, column: 17, scope: !2603, inlinedAt: !4608)
!4668 = !DILocation(line: 269, column: 9, scope: !2603, inlinedAt: !4608)
!4669 = !DILocation(line: 0, scope: !2625, inlinedAt: !4670)
!4670 = distinct !DILocation(line: 269, column: 15, scope: !2603, inlinedAt: !4608)
!4671 = !DILocation(line: 81, column: 54, scope: !2625, inlinedAt: !4670)
!4672 = !DILocation(line: 82, column: 20, scope: !2625, inlinedAt: !4670)
!4673 = !DILocation(line: 82, column: 24, scope: !2625, inlinedAt: !4670)
!4674 = !DILocation(line: 83, column: 9, scope: !2625, inlinedAt: !4670)
!4675 = !DILocation(line: 83, column: 31, scope: !2625, inlinedAt: !4670)
!4676 = !DILocation(line: 0, scope: !2636, inlinedAt: !4677)
!4677 = distinct !DILocation(line: 83, column: 11, scope: !2625, inlinedAt: !4670)
!4678 = !DILocation(line: 28, column: 58, scope: !2636, inlinedAt: !4677)
!4679 = !DILocation(line: 29, column: 22, scope: !2642, inlinedAt: !4677)
!4680 = !DILocation(line: 29, column: 18, scope: !2642, inlinedAt: !4677)
!4681 = !DILocation(line: 29, column: 29, scope: !2646, inlinedAt: !4677)
!4682 = !DILocation(line: 29, column: 31, scope: !2646, inlinedAt: !4677)
!4683 = !DILocation(line: 29, column: 13, scope: !2642, inlinedAt: !4677)
!4684 = !DILocation(line: 30, column: 24, scope: !2646, inlinedAt: !4677)
!4685 = !DILocation(line: 30, column: 19, scope: !2646, inlinedAt: !4677)
!4686 = !DILocation(line: 30, column: 17, scope: !2646, inlinedAt: !4677)
!4687 = !DILocation(line: 30, column: 22, scope: !2646, inlinedAt: !4677)
!4688 = !DILocation(line: 29, column: 37, scope: !2646, inlinedAt: !4677)
!4689 = !DILocation(line: 29, column: 13, scope: !2646, inlinedAt: !4677)
!4690 = distinct !{!4690, !4683, !4691, !1911}
!4691 = !DILocation(line: 30, column: 24, scope: !2642, inlinedAt: !4677)
!4692 = !DILocalVariable(name: "c", scope: !2484, file: !571, line: 138, type: !471)
!4693 = !DILocation(line: 138, column: 19, scope: !2484)
!4694 = !DILocation(line: 138, column: 23, scope: !2484)
!4695 = !DILocalVariable(name: "s", scope: !2484, file: !571, line: 139, type: !471)
!4696 = !DILocation(line: 139, column: 19, scope: !2484)
!4697 = !DILocation(line: 139, column: 23, scope: !2484)
!4698 = !DILocation(line: 140, column: 7, scope: !2484)
!4699 = !DILocation(line: 143, column: 11, scope: !4700)
!4700 = distinct !DILexicalBlock(scope: !2484, file: !571, line: 141, column: 7)
!4701 = !DILocation(line: 143, column: 18, scope: !4700)
!4702 = !DILocation(line: 143, column: 22, scope: !4700)
!4703 = !DILocation(line: 143, column: 20, scope: !4700)
!4704 = !DILocation(line: 143, column: 24, scope: !4700)
!4705 = !DILocation(line: 143, column: 32, scope: !4700)
!4706 = !DILocation(line: 143, column: 40, scope: !4700)
!4707 = !DILocation(line: 143, column: 39, scope: !4700)
!4708 = !DILocation(line: 143, column: 52, scope: !4700)
!4709 = !DILocation(line: 143, column: 43, scope: !4700)
!4710 = !DILocation(line: 143, column: 68, scope: !4700)
!4711 = !DILocation(line: 143, column: 66, scope: !4700)
!4712 = !DILocation(line: 143, column: 73, scope: !4700)
!4713 = !DILocation(line: 143, column: 71, scope: !4700)
!4714 = !DILocation(line: 143, column: 31, scope: !4700)
!4715 = !DILocation(line: 143, column: 78, scope: !4700)
!4716 = !DILocation(line: 143, column: 76, scope: !4700)
!4717 = !DILocation(line: 0, scope: !4700)
!4718 = !DILocation(line: 145, column: 41, scope: !4719)
!4719 = distinct !DILexicalBlock(scope: !4700, file: !571, line: 144, column: 11)
!4720 = !DILocation(line: 145, column: 49, scope: !4719)
!4721 = !DILocation(line: 145, column: 48, scope: !4719)
!4722 = !DILocation(line: 145, column: 52, scope: !4719)
!4723 = !DILocation(line: 0, scope: !2720, inlinedAt: !4724)
!4724 = distinct !DILocation(line: 145, column: 34, scope: !4719)
!4725 = !DILocation(line: 103, column: 45, scope: !2720, inlinedAt: !4724)
!4726 = !DILocation(line: 104, column: 26, scope: !2720, inlinedAt: !4724)
!4727 = !DILocation(line: 0, scope: !2727, inlinedAt: !4728)
!4728 = distinct !DILocation(line: 104, column: 19, scope: !2720, inlinedAt: !4724)
!4729 = !DILocation(line: 169, column: 41, scope: !2727, inlinedAt: !4728)
!4730 = !DILocation(line: 170, column: 20, scope: !2727, inlinedAt: !4728)
!4731 = !DILocation(line: 170, column: 24, scope: !2727, inlinedAt: !4728)
!4732 = !DILocation(line: 171, column: 18, scope: !2736, inlinedAt: !4728)
!4733 = !DILocation(line: 171, column: 14, scope: !2736, inlinedAt: !4728)
!4734 = !DILocation(line: 171, column: 25, scope: !2740, inlinedAt: !4728)
!4735 = !DILocation(line: 171, column: 27, scope: !2740, inlinedAt: !4728)
!4736 = !DILocation(line: 171, column: 9, scope: !2736, inlinedAt: !4728)
!4737 = !DILocation(line: 172, column: 24, scope: !2740, inlinedAt: !4728)
!4738 = !DILocation(line: 172, column: 26, scope: !2740, inlinedAt: !4728)
!4739 = !DILocation(line: 0, scope: !2007, inlinedAt: !4740)
!4740 = distinct !DILocation(line: 172, column: 24, scope: !2740, inlinedAt: !4728)
!4741 = !DILocation(line: 49, column: 42, scope: !2007, inlinedAt: !4740)
!4742 = !DILocation(line: 50, column: 22, scope: !2007, inlinedAt: !4740)
!4743 = !DILocation(line: 50, column: 20, scope: !2007, inlinedAt: !4740)
!4744 = !DILocation(line: 172, column: 30, scope: !2740, inlinedAt: !4728)
!4745 = !DILocation(line: 172, column: 20, scope: !2740, inlinedAt: !4728)
!4746 = !DILocation(line: 107, column: 25, scope: !2019, inlinedAt: !4747)
!4747 = distinct !DILocation(line: 172, column: 20, scope: !2740, inlinedAt: !4728)
!4748 = !DILocation(line: 107, column: 34, scope: !2019, inlinedAt: !4747)
!4749 = !DILocation(line: 108, column: 23, scope: !2019, inlinedAt: !4747)
!4750 = !DILocation(line: 108, column: 25, scope: !2019, inlinedAt: !4747)
!4751 = !DILocation(line: 108, column: 12, scope: !2019, inlinedAt: !4747)
!4752 = !DILocation(line: 453, column: 39, scope: !2030, inlinedAt: !4753)
!4753 = distinct !DILocation(line: 108, column: 12, scope: !2019, inlinedAt: !4747)
!4754 = !DILocation(line: 453, column: 48, scope: !2030, inlinedAt: !4753)
!4755 = !DILocation(line: 454, column: 8, scope: !2030, inlinedAt: !4753)
!4756 = !DILocation(line: 457, column: 14, scope: !2038, inlinedAt: !4753)
!4757 = !DILocation(line: 457, column: 10, scope: !2038, inlinedAt: !4753)
!4758 = !DILocation(line: 457, column: 21, scope: !2042, inlinedAt: !4753)
!4759 = !DILocation(line: 457, column: 23, scope: !2042, inlinedAt: !4753)
!4760 = !DILocation(line: 457, column: 5, scope: !2038, inlinedAt: !4753)
!4761 = !DILocation(line: 458, column: 28, scope: !2042, inlinedAt: !4753)
!4762 = !DILocation(line: 458, column: 9, scope: !2042, inlinedAt: !4753)
!4763 = !DILocation(line: 458, column: 26, scope: !2042, inlinedAt: !4753)
!4764 = !DILocation(line: 457, column: 39, scope: !2042, inlinedAt: !4753)
!4765 = !DILocation(line: 457, column: 5, scope: !2042, inlinedAt: !4753)
!4766 = distinct !{!4766, !4760, !4767, !1911}
!4767 = !DILocation(line: 458, column: 28, scope: !2038, inlinedAt: !4753)
!4768 = !DILocation(line: 460, column: 2, scope: !2030, inlinedAt: !4753)
!4769 = !DILocation(line: 108, column: 5, scope: !2019, inlinedAt: !4747)
!4770 = !DILocation(line: 172, column: 13, scope: !2740, inlinedAt: !4728)
!4771 = !DILocation(line: 172, column: 15, scope: !2740, inlinedAt: !4728)
!4772 = !DILocation(line: 0, scope: !2007, inlinedAt: !4773)
!4773 = distinct !DILocation(line: 172, column: 13, scope: !2740, inlinedAt: !4728)
!4774 = !DILocation(line: 49, column: 42, scope: !2007, inlinedAt: !4773)
!4775 = !DILocation(line: 50, column: 22, scope: !2007, inlinedAt: !4773)
!4776 = !DILocation(line: 50, column: 20, scope: !2007, inlinedAt: !4773)
!4777 = !DILocation(line: 172, column: 18, scope: !2740, inlinedAt: !4728)
!4778 = !DILocation(line: 171, column: 33, scope: !2740, inlinedAt: !4728)
!4779 = !DILocation(line: 171, column: 9, scope: !2740, inlinedAt: !4728)
!4780 = distinct !{!4780, !4736, !4781, !1911}
!4781 = !DILocation(line: 172, column: 35, scope: !2736, inlinedAt: !4728)
!4782 = !DILocation(line: 105, column: 13, scope: !2720, inlinedAt: !4724)
!4783 = !DILocation(line: 105, column: 26, scope: !2720, inlinedAt: !4724)
!4784 = !DILocation(line: 0, scope: !2791, inlinedAt: !4785)
!4785 = distinct !DILocation(line: 105, column: 19, scope: !2720, inlinedAt: !4724)
!4786 = !DILocation(line: 179, column: 41, scope: !2791, inlinedAt: !4785)
!4787 = !DILocation(line: 180, column: 20, scope: !2791, inlinedAt: !4785)
!4788 = !DILocation(line: 180, column: 24, scope: !2791, inlinedAt: !4785)
!4789 = !DILocation(line: 181, column: 18, scope: !2800, inlinedAt: !4785)
!4790 = !DILocation(line: 181, column: 14, scope: !2800, inlinedAt: !4785)
!4791 = !DILocation(line: 181, column: 25, scope: !2804, inlinedAt: !4785)
!4792 = !DILocation(line: 181, column: 27, scope: !2804, inlinedAt: !4785)
!4793 = !DILocation(line: 181, column: 9, scope: !2800, inlinedAt: !4785)
!4794 = !DILocation(line: 182, column: 24, scope: !2804, inlinedAt: !4785)
!4795 = !DILocation(line: 182, column: 26, scope: !2804, inlinedAt: !4785)
!4796 = !DILocation(line: 0, scope: !2007, inlinedAt: !4797)
!4797 = distinct !DILocation(line: 182, column: 24, scope: !2804, inlinedAt: !4785)
!4798 = !DILocation(line: 49, column: 42, scope: !2007, inlinedAt: !4797)
!4799 = !DILocation(line: 50, column: 22, scope: !2007, inlinedAt: !4797)
!4800 = !DILocation(line: 50, column: 20, scope: !2007, inlinedAt: !4797)
!4801 = !DILocation(line: 182, column: 30, scope: !2804, inlinedAt: !4785)
!4802 = !DILocation(line: 182, column: 20, scope: !2804, inlinedAt: !4785)
!4803 = !DILocation(line: 111, column: 25, scope: !2097, inlinedAt: !4804)
!4804 = distinct !DILocation(line: 182, column: 20, scope: !2804, inlinedAt: !4785)
!4805 = !DILocation(line: 111, column: 34, scope: !2097, inlinedAt: !4804)
!4806 = !DILocation(line: 112, column: 23, scope: !2097, inlinedAt: !4804)
!4807 = !DILocation(line: 112, column: 25, scope: !2097, inlinedAt: !4804)
!4808 = !DILocation(line: 112, column: 12, scope: !2097, inlinedAt: !4804)
!4809 = !DILocation(line: 443, column: 39, scope: !2106, inlinedAt: !4810)
!4810 = distinct !DILocation(line: 112, column: 12, scope: !2097, inlinedAt: !4804)
!4811 = !DILocation(line: 443, column: 48, scope: !2106, inlinedAt: !4810)
!4812 = !DILocation(line: 444, column: 8, scope: !2106, inlinedAt: !4810)
!4813 = !DILocation(line: 447, column: 14, scope: !2114, inlinedAt: !4810)
!4814 = !DILocation(line: 447, column: 10, scope: !2114, inlinedAt: !4810)
!4815 = !DILocation(line: 447, column: 21, scope: !2118, inlinedAt: !4810)
!4816 = !DILocation(line: 447, column: 23, scope: !2118, inlinedAt: !4810)
!4817 = !DILocation(line: 447, column: 5, scope: !2114, inlinedAt: !4810)
!4818 = !DILocation(line: 448, column: 28, scope: !2118, inlinedAt: !4810)
!4819 = !DILocation(line: 448, column: 9, scope: !2118, inlinedAt: !4810)
!4820 = !DILocation(line: 448, column: 26, scope: !2118, inlinedAt: !4810)
!4821 = !DILocation(line: 447, column: 39, scope: !2118, inlinedAt: !4810)
!4822 = !DILocation(line: 447, column: 5, scope: !2118, inlinedAt: !4810)
!4823 = distinct !{!4823, !4817, !4824, !1911}
!4824 = !DILocation(line: 448, column: 28, scope: !2114, inlinedAt: !4810)
!4825 = !DILocation(line: 450, column: 2, scope: !2106, inlinedAt: !4810)
!4826 = !DILocation(line: 112, column: 5, scope: !2097, inlinedAt: !4804)
!4827 = !DILocation(line: 182, column: 13, scope: !2804, inlinedAt: !4785)
!4828 = !DILocation(line: 182, column: 15, scope: !2804, inlinedAt: !4785)
!4829 = !DILocation(line: 0, scope: !2007, inlinedAt: !4830)
!4830 = distinct !DILocation(line: 182, column: 13, scope: !2804, inlinedAt: !4785)
!4831 = !DILocation(line: 49, column: 42, scope: !2007, inlinedAt: !4830)
!4832 = !DILocation(line: 50, column: 22, scope: !2007, inlinedAt: !4830)
!4833 = !DILocation(line: 50, column: 20, scope: !2007, inlinedAt: !4830)
!4834 = !DILocation(line: 182, column: 18, scope: !2804, inlinedAt: !4785)
!4835 = !DILocation(line: 181, column: 33, scope: !2804, inlinedAt: !4785)
!4836 = !DILocation(line: 181, column: 9, scope: !2804, inlinedAt: !4785)
!4837 = distinct !{!4837, !4793, !4838, !1911}
!4838 = !DILocation(line: 182, column: 35, scope: !2800, inlinedAt: !4785)
!4839 = !DILocation(line: 146, column: 15, scope: !4719)
!4840 = distinct !{!4840, !4699, !4841, !1911}
!4841 = !DILocation(line: 147, column: 11, scope: !4700)
!4842 = !DILocation(line: 148, column: 11, scope: !4700)
!4843 = !DILocation(line: 148, column: 18, scope: !4700)
!4844 = !DILocation(line: 148, column: 22, scope: !4700)
!4845 = !DILocation(line: 148, column: 20, scope: !4700)
!4846 = !DILocation(line: 148, column: 24, scope: !4700)
!4847 = !DILocation(line: 148, column: 32, scope: !4700)
!4848 = !DILocation(line: 148, column: 40, scope: !4700)
!4849 = !DILocation(line: 148, column: 39, scope: !4700)
!4850 = !DILocation(line: 148, column: 52, scope: !4700)
!4851 = !DILocation(line: 148, column: 43, scope: !4700)
!4852 = !DILocation(line: 148, column: 68, scope: !4700)
!4853 = !DILocation(line: 148, column: 66, scope: !4700)
!4854 = !DILocation(line: 148, column: 73, scope: !4700)
!4855 = !DILocation(line: 148, column: 71, scope: !4700)
!4856 = !DILocation(line: 148, column: 31, scope: !4700)
!4857 = !DILocation(line: 148, column: 79, scope: !4700)
!4858 = !DILocation(line: 148, column: 76, scope: !4700)
!4859 = !DILocation(line: 150, column: 42, scope: !4860)
!4860 = distinct !DILexicalBlock(scope: !4700, file: !571, line: 149, column: 11)
!4861 = !DILocation(line: 150, column: 50, scope: !4860)
!4862 = !DILocation(line: 150, column: 49, scope: !4860)
!4863 = !DILocation(line: 150, column: 53, scope: !4860)
!4864 = !DILocation(line: 0, scope: !2720, inlinedAt: !4865)
!4865 = distinct !DILocation(line: 150, column: 35, scope: !4860)
!4866 = !DILocation(line: 103, column: 45, scope: !2720, inlinedAt: !4865)
!4867 = !DILocation(line: 104, column: 26, scope: !2720, inlinedAt: !4865)
!4868 = !DILocation(line: 0, scope: !2727, inlinedAt: !4869)
!4869 = distinct !DILocation(line: 104, column: 19, scope: !2720, inlinedAt: !4865)
!4870 = !DILocation(line: 169, column: 41, scope: !2727, inlinedAt: !4869)
!4871 = !DILocation(line: 170, column: 20, scope: !2727, inlinedAt: !4869)
!4872 = !DILocation(line: 170, column: 24, scope: !2727, inlinedAt: !4869)
!4873 = !DILocation(line: 171, column: 18, scope: !2736, inlinedAt: !4869)
!4874 = !DILocation(line: 171, column: 14, scope: !2736, inlinedAt: !4869)
!4875 = !DILocation(line: 171, column: 25, scope: !2740, inlinedAt: !4869)
!4876 = !DILocation(line: 171, column: 27, scope: !2740, inlinedAt: !4869)
!4877 = !DILocation(line: 171, column: 9, scope: !2736, inlinedAt: !4869)
!4878 = !DILocation(line: 172, column: 24, scope: !2740, inlinedAt: !4869)
!4879 = !DILocation(line: 172, column: 26, scope: !2740, inlinedAt: !4869)
!4880 = !DILocation(line: 0, scope: !2007, inlinedAt: !4881)
!4881 = distinct !DILocation(line: 172, column: 24, scope: !2740, inlinedAt: !4869)
!4882 = !DILocation(line: 49, column: 42, scope: !2007, inlinedAt: !4881)
!4883 = !DILocation(line: 50, column: 22, scope: !2007, inlinedAt: !4881)
!4884 = !DILocation(line: 50, column: 20, scope: !2007, inlinedAt: !4881)
!4885 = !DILocation(line: 172, column: 30, scope: !2740, inlinedAt: !4869)
!4886 = !DILocation(line: 172, column: 20, scope: !2740, inlinedAt: !4869)
!4887 = !DILocation(line: 107, column: 25, scope: !2019, inlinedAt: !4888)
!4888 = distinct !DILocation(line: 172, column: 20, scope: !2740, inlinedAt: !4869)
!4889 = !DILocation(line: 107, column: 34, scope: !2019, inlinedAt: !4888)
!4890 = !DILocation(line: 108, column: 23, scope: !2019, inlinedAt: !4888)
!4891 = !DILocation(line: 108, column: 25, scope: !2019, inlinedAt: !4888)
!4892 = !DILocation(line: 108, column: 12, scope: !2019, inlinedAt: !4888)
!4893 = !DILocation(line: 453, column: 39, scope: !2030, inlinedAt: !4894)
!4894 = distinct !DILocation(line: 108, column: 12, scope: !2019, inlinedAt: !4888)
!4895 = !DILocation(line: 453, column: 48, scope: !2030, inlinedAt: !4894)
!4896 = !DILocation(line: 454, column: 8, scope: !2030, inlinedAt: !4894)
!4897 = !DILocation(line: 457, column: 14, scope: !2038, inlinedAt: !4894)
!4898 = !DILocation(line: 457, column: 10, scope: !2038, inlinedAt: !4894)
!4899 = !DILocation(line: 457, column: 21, scope: !2042, inlinedAt: !4894)
!4900 = !DILocation(line: 457, column: 23, scope: !2042, inlinedAt: !4894)
!4901 = !DILocation(line: 457, column: 5, scope: !2038, inlinedAt: !4894)
!4902 = !DILocation(line: 458, column: 28, scope: !2042, inlinedAt: !4894)
!4903 = !DILocation(line: 458, column: 9, scope: !2042, inlinedAt: !4894)
!4904 = !DILocation(line: 458, column: 26, scope: !2042, inlinedAt: !4894)
!4905 = !DILocation(line: 457, column: 39, scope: !2042, inlinedAt: !4894)
!4906 = !DILocation(line: 457, column: 5, scope: !2042, inlinedAt: !4894)
!4907 = distinct !{!4907, !4901, !4908, !1911}
!4908 = !DILocation(line: 458, column: 28, scope: !2038, inlinedAt: !4894)
!4909 = !DILocation(line: 460, column: 2, scope: !2030, inlinedAt: !4894)
!4910 = !DILocation(line: 108, column: 5, scope: !2019, inlinedAt: !4888)
!4911 = !DILocation(line: 172, column: 13, scope: !2740, inlinedAt: !4869)
!4912 = !DILocation(line: 172, column: 15, scope: !2740, inlinedAt: !4869)
!4913 = !DILocation(line: 0, scope: !2007, inlinedAt: !4914)
!4914 = distinct !DILocation(line: 172, column: 13, scope: !2740, inlinedAt: !4869)
!4915 = !DILocation(line: 49, column: 42, scope: !2007, inlinedAt: !4914)
!4916 = !DILocation(line: 50, column: 22, scope: !2007, inlinedAt: !4914)
!4917 = !DILocation(line: 50, column: 20, scope: !2007, inlinedAt: !4914)
!4918 = !DILocation(line: 172, column: 18, scope: !2740, inlinedAt: !4869)
!4919 = !DILocation(line: 171, column: 33, scope: !2740, inlinedAt: !4869)
!4920 = !DILocation(line: 171, column: 9, scope: !2740, inlinedAt: !4869)
!4921 = distinct !{!4921, !4877, !4922, !1911}
!4922 = !DILocation(line: 172, column: 35, scope: !2736, inlinedAt: !4869)
!4923 = !DILocation(line: 105, column: 13, scope: !2720, inlinedAt: !4865)
!4924 = !DILocation(line: 105, column: 26, scope: !2720, inlinedAt: !4865)
!4925 = !DILocation(line: 0, scope: !2791, inlinedAt: !4926)
!4926 = distinct !DILocation(line: 105, column: 19, scope: !2720, inlinedAt: !4865)
!4927 = !DILocation(line: 179, column: 41, scope: !2791, inlinedAt: !4926)
!4928 = !DILocation(line: 180, column: 20, scope: !2791, inlinedAt: !4926)
!4929 = !DILocation(line: 180, column: 24, scope: !2791, inlinedAt: !4926)
!4930 = !DILocation(line: 181, column: 18, scope: !2800, inlinedAt: !4926)
!4931 = !DILocation(line: 181, column: 14, scope: !2800, inlinedAt: !4926)
!4932 = !DILocation(line: 181, column: 25, scope: !2804, inlinedAt: !4926)
!4933 = !DILocation(line: 181, column: 27, scope: !2804, inlinedAt: !4926)
!4934 = !DILocation(line: 181, column: 9, scope: !2800, inlinedAt: !4926)
!4935 = !DILocation(line: 182, column: 24, scope: !2804, inlinedAt: !4926)
!4936 = !DILocation(line: 182, column: 26, scope: !2804, inlinedAt: !4926)
!4937 = !DILocation(line: 0, scope: !2007, inlinedAt: !4938)
!4938 = distinct !DILocation(line: 182, column: 24, scope: !2804, inlinedAt: !4926)
!4939 = !DILocation(line: 49, column: 42, scope: !2007, inlinedAt: !4938)
!4940 = !DILocation(line: 50, column: 22, scope: !2007, inlinedAt: !4938)
!4941 = !DILocation(line: 50, column: 20, scope: !2007, inlinedAt: !4938)
!4942 = !DILocation(line: 182, column: 30, scope: !2804, inlinedAt: !4926)
!4943 = !DILocation(line: 182, column: 20, scope: !2804, inlinedAt: !4926)
!4944 = !DILocation(line: 111, column: 25, scope: !2097, inlinedAt: !4945)
!4945 = distinct !DILocation(line: 182, column: 20, scope: !2804, inlinedAt: !4926)
!4946 = !DILocation(line: 111, column: 34, scope: !2097, inlinedAt: !4945)
!4947 = !DILocation(line: 112, column: 23, scope: !2097, inlinedAt: !4945)
!4948 = !DILocation(line: 112, column: 25, scope: !2097, inlinedAt: !4945)
!4949 = !DILocation(line: 112, column: 12, scope: !2097, inlinedAt: !4945)
!4950 = !DILocation(line: 443, column: 39, scope: !2106, inlinedAt: !4951)
!4951 = distinct !DILocation(line: 112, column: 12, scope: !2097, inlinedAt: !4945)
!4952 = !DILocation(line: 443, column: 48, scope: !2106, inlinedAt: !4951)
!4953 = !DILocation(line: 444, column: 8, scope: !2106, inlinedAt: !4951)
!4954 = !DILocation(line: 447, column: 14, scope: !2114, inlinedAt: !4951)
!4955 = !DILocation(line: 447, column: 10, scope: !2114, inlinedAt: !4951)
!4956 = !DILocation(line: 447, column: 21, scope: !2118, inlinedAt: !4951)
!4957 = !DILocation(line: 447, column: 23, scope: !2118, inlinedAt: !4951)
!4958 = !DILocation(line: 447, column: 5, scope: !2114, inlinedAt: !4951)
!4959 = !DILocation(line: 448, column: 28, scope: !2118, inlinedAt: !4951)
!4960 = !DILocation(line: 448, column: 9, scope: !2118, inlinedAt: !4951)
!4961 = !DILocation(line: 448, column: 26, scope: !2118, inlinedAt: !4951)
!4962 = !DILocation(line: 447, column: 39, scope: !2118, inlinedAt: !4951)
!4963 = !DILocation(line: 447, column: 5, scope: !2118, inlinedAt: !4951)
!4964 = distinct !{!4964, !4958, !4965, !1911}
!4965 = !DILocation(line: 448, column: 28, scope: !2114, inlinedAt: !4951)
!4966 = !DILocation(line: 450, column: 2, scope: !2106, inlinedAt: !4951)
!4967 = !DILocation(line: 112, column: 5, scope: !2097, inlinedAt: !4945)
!4968 = !DILocation(line: 182, column: 13, scope: !2804, inlinedAt: !4926)
!4969 = !DILocation(line: 182, column: 15, scope: !2804, inlinedAt: !4926)
!4970 = !DILocation(line: 0, scope: !2007, inlinedAt: !4971)
!4971 = distinct !DILocation(line: 182, column: 13, scope: !2804, inlinedAt: !4926)
!4972 = !DILocation(line: 49, column: 42, scope: !2007, inlinedAt: !4971)
!4973 = !DILocation(line: 50, column: 22, scope: !2007, inlinedAt: !4971)
!4974 = !DILocation(line: 50, column: 20, scope: !2007, inlinedAt: !4971)
!4975 = !DILocation(line: 182, column: 18, scope: !2804, inlinedAt: !4926)
!4976 = !DILocation(line: 181, column: 33, scope: !2804, inlinedAt: !4926)
!4977 = !DILocation(line: 181, column: 9, scope: !2804, inlinedAt: !4926)
!4978 = distinct !{!4978, !4934, !4979, !1911}
!4979 = !DILocation(line: 182, column: 35, scope: !2800, inlinedAt: !4926)
!4980 = !DILocation(line: 151, column: 15, scope: !4860)
!4981 = distinct !{!4981, !4842, !4982, !1911}
!4982 = !DILocation(line: 152, column: 11, scope: !4700)
!4983 = !DILocation(line: 153, column: 15, scope: !4984)
!4984 = distinct !DILexicalBlock(scope: !4700, file: !571, line: 153, column: 15)
!4985 = !DILocation(line: 153, column: 20, scope: !4984)
!4986 = !DILocation(line: 153, column: 17, scope: !4984)
!4987 = !DILocation(line: 153, column: 15, scope: !4700)
!4988 = !DILocation(line: 155, column: 21, scope: !4989)
!4989 = distinct !DILexicalBlock(scope: !4984, file: !571, line: 154, column: 11)
!4990 = !DILocation(line: 155, column: 26, scope: !4989)
!4991 = !DILocation(line: 155, column: 23, scope: !4989)
!4992 = !DILocation(line: 155, column: 19, scope: !4989)
!4993 = !DILocation(line: 156, column: 42, scope: !4989)
!4994 = !DILocation(line: 156, column: 50, scope: !4989)
!4995 = !DILocation(line: 156, column: 49, scope: !4989)
!4996 = !DILocation(line: 156, column: 53, scope: !4989)
!4997 = !DILocation(line: 0, scope: !2720, inlinedAt: !4998)
!4998 = distinct !DILocation(line: 156, column: 35, scope: !4989)
!4999 = !DILocation(line: 103, column: 45, scope: !2720, inlinedAt: !4998)
!5000 = !DILocation(line: 104, column: 26, scope: !2720, inlinedAt: !4998)
!5001 = !DILocation(line: 0, scope: !2727, inlinedAt: !5002)
!5002 = distinct !DILocation(line: 104, column: 19, scope: !2720, inlinedAt: !4998)
!5003 = !DILocation(line: 169, column: 41, scope: !2727, inlinedAt: !5002)
!5004 = !DILocation(line: 170, column: 20, scope: !2727, inlinedAt: !5002)
!5005 = !DILocation(line: 170, column: 24, scope: !2727, inlinedAt: !5002)
!5006 = !DILocation(line: 171, column: 18, scope: !2736, inlinedAt: !5002)
!5007 = !DILocation(line: 171, column: 14, scope: !2736, inlinedAt: !5002)
!5008 = !DILocation(line: 171, column: 25, scope: !2740, inlinedAt: !5002)
!5009 = !DILocation(line: 171, column: 27, scope: !2740, inlinedAt: !5002)
!5010 = !DILocation(line: 171, column: 9, scope: !2736, inlinedAt: !5002)
!5011 = !DILocation(line: 172, column: 24, scope: !2740, inlinedAt: !5002)
!5012 = !DILocation(line: 172, column: 26, scope: !2740, inlinedAt: !5002)
!5013 = !DILocation(line: 0, scope: !2007, inlinedAt: !5014)
!5014 = distinct !DILocation(line: 172, column: 24, scope: !2740, inlinedAt: !5002)
!5015 = !DILocation(line: 49, column: 42, scope: !2007, inlinedAt: !5014)
!5016 = !DILocation(line: 50, column: 22, scope: !2007, inlinedAt: !5014)
!5017 = !DILocation(line: 50, column: 20, scope: !2007, inlinedAt: !5014)
!5018 = !DILocation(line: 172, column: 30, scope: !2740, inlinedAt: !5002)
!5019 = !DILocation(line: 172, column: 20, scope: !2740, inlinedAt: !5002)
!5020 = !DILocation(line: 107, column: 25, scope: !2019, inlinedAt: !5021)
!5021 = distinct !DILocation(line: 172, column: 20, scope: !2740, inlinedAt: !5002)
!5022 = !DILocation(line: 107, column: 34, scope: !2019, inlinedAt: !5021)
!5023 = !DILocation(line: 108, column: 23, scope: !2019, inlinedAt: !5021)
!5024 = !DILocation(line: 108, column: 25, scope: !2019, inlinedAt: !5021)
!5025 = !DILocation(line: 108, column: 12, scope: !2019, inlinedAt: !5021)
!5026 = !DILocation(line: 453, column: 39, scope: !2030, inlinedAt: !5027)
!5027 = distinct !DILocation(line: 108, column: 12, scope: !2019, inlinedAt: !5021)
!5028 = !DILocation(line: 453, column: 48, scope: !2030, inlinedAt: !5027)
!5029 = !DILocation(line: 454, column: 8, scope: !2030, inlinedAt: !5027)
!5030 = !DILocation(line: 457, column: 14, scope: !2038, inlinedAt: !5027)
!5031 = !DILocation(line: 457, column: 10, scope: !2038, inlinedAt: !5027)
!5032 = !DILocation(line: 457, column: 21, scope: !2042, inlinedAt: !5027)
!5033 = !DILocation(line: 457, column: 23, scope: !2042, inlinedAt: !5027)
!5034 = !DILocation(line: 457, column: 5, scope: !2038, inlinedAt: !5027)
!5035 = !DILocation(line: 458, column: 28, scope: !2042, inlinedAt: !5027)
!5036 = !DILocation(line: 458, column: 9, scope: !2042, inlinedAt: !5027)
!5037 = !DILocation(line: 458, column: 26, scope: !2042, inlinedAt: !5027)
!5038 = !DILocation(line: 457, column: 39, scope: !2042, inlinedAt: !5027)
!5039 = !DILocation(line: 457, column: 5, scope: !2042, inlinedAt: !5027)
!5040 = distinct !{!5040, !5034, !5041, !1911}
!5041 = !DILocation(line: 458, column: 28, scope: !2038, inlinedAt: !5027)
!5042 = !DILocation(line: 460, column: 2, scope: !2030, inlinedAt: !5027)
!5043 = !DILocation(line: 108, column: 5, scope: !2019, inlinedAt: !5021)
!5044 = !DILocation(line: 172, column: 13, scope: !2740, inlinedAt: !5002)
!5045 = !DILocation(line: 172, column: 15, scope: !2740, inlinedAt: !5002)
!5046 = !DILocation(line: 0, scope: !2007, inlinedAt: !5047)
!5047 = distinct !DILocation(line: 172, column: 13, scope: !2740, inlinedAt: !5002)
!5048 = !DILocation(line: 49, column: 42, scope: !2007, inlinedAt: !5047)
!5049 = !DILocation(line: 50, column: 22, scope: !2007, inlinedAt: !5047)
!5050 = !DILocation(line: 50, column: 20, scope: !2007, inlinedAt: !5047)
!5051 = !DILocation(line: 172, column: 18, scope: !2740, inlinedAt: !5002)
!5052 = !DILocation(line: 171, column: 33, scope: !2740, inlinedAt: !5002)
!5053 = !DILocation(line: 171, column: 9, scope: !2740, inlinedAt: !5002)
!5054 = distinct !{!5054, !5010, !5055, !1911}
!5055 = !DILocation(line: 172, column: 35, scope: !2736, inlinedAt: !5002)
!5056 = !DILocation(line: 105, column: 13, scope: !2720, inlinedAt: !4998)
!5057 = !DILocation(line: 105, column: 26, scope: !2720, inlinedAt: !4998)
!5058 = !DILocation(line: 0, scope: !2791, inlinedAt: !5059)
!5059 = distinct !DILocation(line: 105, column: 19, scope: !2720, inlinedAt: !4998)
!5060 = !DILocation(line: 179, column: 41, scope: !2791, inlinedAt: !5059)
!5061 = !DILocation(line: 180, column: 20, scope: !2791, inlinedAt: !5059)
!5062 = !DILocation(line: 180, column: 24, scope: !2791, inlinedAt: !5059)
!5063 = !DILocation(line: 181, column: 18, scope: !2800, inlinedAt: !5059)
!5064 = !DILocation(line: 181, column: 14, scope: !2800, inlinedAt: !5059)
!5065 = !DILocation(line: 181, column: 25, scope: !2804, inlinedAt: !5059)
!5066 = !DILocation(line: 181, column: 27, scope: !2804, inlinedAt: !5059)
!5067 = !DILocation(line: 181, column: 9, scope: !2800, inlinedAt: !5059)
!5068 = !DILocation(line: 182, column: 24, scope: !2804, inlinedAt: !5059)
!5069 = !DILocation(line: 182, column: 26, scope: !2804, inlinedAt: !5059)
!5070 = !DILocation(line: 0, scope: !2007, inlinedAt: !5071)
!5071 = distinct !DILocation(line: 182, column: 24, scope: !2804, inlinedAt: !5059)
!5072 = !DILocation(line: 49, column: 42, scope: !2007, inlinedAt: !5071)
!5073 = !DILocation(line: 50, column: 22, scope: !2007, inlinedAt: !5071)
!5074 = !DILocation(line: 50, column: 20, scope: !2007, inlinedAt: !5071)
!5075 = !DILocation(line: 182, column: 30, scope: !2804, inlinedAt: !5059)
!5076 = !DILocation(line: 182, column: 20, scope: !2804, inlinedAt: !5059)
!5077 = !DILocation(line: 111, column: 25, scope: !2097, inlinedAt: !5078)
!5078 = distinct !DILocation(line: 182, column: 20, scope: !2804, inlinedAt: !5059)
!5079 = !DILocation(line: 111, column: 34, scope: !2097, inlinedAt: !5078)
!5080 = !DILocation(line: 112, column: 23, scope: !2097, inlinedAt: !5078)
!5081 = !DILocation(line: 112, column: 25, scope: !2097, inlinedAt: !5078)
!5082 = !DILocation(line: 112, column: 12, scope: !2097, inlinedAt: !5078)
!5083 = !DILocation(line: 443, column: 39, scope: !2106, inlinedAt: !5084)
!5084 = distinct !DILocation(line: 112, column: 12, scope: !2097, inlinedAt: !5078)
!5085 = !DILocation(line: 443, column: 48, scope: !2106, inlinedAt: !5084)
!5086 = !DILocation(line: 444, column: 8, scope: !2106, inlinedAt: !5084)
!5087 = !DILocation(line: 447, column: 14, scope: !2114, inlinedAt: !5084)
!5088 = !DILocation(line: 447, column: 10, scope: !2114, inlinedAt: !5084)
!5089 = !DILocation(line: 447, column: 21, scope: !2118, inlinedAt: !5084)
!5090 = !DILocation(line: 447, column: 23, scope: !2118, inlinedAt: !5084)
!5091 = !DILocation(line: 447, column: 5, scope: !2114, inlinedAt: !5084)
!5092 = !DILocation(line: 448, column: 28, scope: !2118, inlinedAt: !5084)
!5093 = !DILocation(line: 448, column: 9, scope: !2118, inlinedAt: !5084)
!5094 = !DILocation(line: 448, column: 26, scope: !2118, inlinedAt: !5084)
!5095 = !DILocation(line: 447, column: 39, scope: !2118, inlinedAt: !5084)
!5096 = !DILocation(line: 447, column: 5, scope: !2118, inlinedAt: !5084)
!5097 = distinct !{!5097, !5091, !5098, !1911}
!5098 = !DILocation(line: 448, column: 28, scope: !2114, inlinedAt: !5084)
!5099 = !DILocation(line: 450, column: 2, scope: !2106, inlinedAt: !5084)
!5100 = !DILocation(line: 112, column: 5, scope: !2097, inlinedAt: !5078)
!5101 = !DILocation(line: 182, column: 13, scope: !2804, inlinedAt: !5059)
!5102 = !DILocation(line: 182, column: 15, scope: !2804, inlinedAt: !5059)
!5103 = !DILocation(line: 0, scope: !2007, inlinedAt: !5104)
!5104 = distinct !DILocation(line: 182, column: 13, scope: !2804, inlinedAt: !5059)
!5105 = !DILocation(line: 49, column: 42, scope: !2007, inlinedAt: !5104)
!5106 = !DILocation(line: 50, column: 22, scope: !2007, inlinedAt: !5104)
!5107 = !DILocation(line: 50, column: 20, scope: !2007, inlinedAt: !5104)
!5108 = !DILocation(line: 182, column: 18, scope: !2804, inlinedAt: !5059)
!5109 = !DILocation(line: 181, column: 33, scope: !2804, inlinedAt: !5059)
!5110 = !DILocation(line: 181, column: 9, scope: !2804, inlinedAt: !5059)
!5111 = distinct !{!5111, !5067, !5112, !1911}
!5112 = !DILocation(line: 182, column: 35, scope: !2800, inlinedAt: !5059)
!5113 = !DILocation(line: 157, column: 15, scope: !4989)
!5114 = !DILocalVariable(name: "h", scope: !4700, file: !571, line: 159, type: !294)
!5115 = !DILocation(line: 159, column: 21, scope: !4700)
!5116 = !DILocation(line: 159, column: 26, scope: !4700)
!5117 = !DILocation(line: 159, column: 25, scope: !4700)
!5118 = !DILocation(line: 159, column: 35, scope: !4700)
!5119 = !DILocation(line: 159, column: 34, scope: !4700)
!5120 = !DILocation(line: 159, column: 30, scope: !4700)
!5121 = !DILocation(line: 159, column: 32, scope: !4700)
!5122 = !DILocation(line: 159, column: 43, scope: !4700)
!5123 = !DILocation(line: 159, column: 39, scope: !4700)
!5124 = !DILocation(line: 159, column: 41, scope: !4700)
!5125 = distinct !{!5125, !4698, !5126, !1911}
!5126 = !DILocation(line: 160, column: 7, scope: !2484)
!5127 = !DILocation(line: 162, column: 7, scope: !2484)
!5128 = !DILocation(line: 162, column: 11, scope: !2484)
!5129 = !DILocation(line: 162, column: 19, scope: !2484)
!5130 = !DILocation(line: 163, column: 7, scope: !2484)
!5131 = !DILocation(line: 163, column: 11, scope: !2484)
!5132 = !DILocation(line: 163, column: 30, scope: !2484)
!5133 = !DILocation(line: 163, column: 39, scope: !2484)
!5134 = !DILocalVariable(name: "this", arg: 1, scope: !5135, type: !607, flags: DIFlagArtificial | DIFlagObjectPointer)
!5135 = distinct !DISubprogram(name: "createNode", linkageName: "_ZN4RTTL4AABB10createNodeEjh", scope: !362, file: !19, line: 200, type: !382, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !381, retainedNodes: !1881)
!5136 = !DILocation(line: 0, scope: !5135, inlinedAt: !5137)
!5137 = distinct !DILocation(line: 163, column: 19, scope: !2484)
!5138 = !DILocalVariable(name: "index", arg: 2, scope: !5135, file: !19, line: 200, type: !380)
!5139 = !DILocation(line: 200, column: 52, scope: !5135, inlinedAt: !5137)
!5140 = !DILocalVariable(name: "dim", arg: 3, scope: !5135, file: !19, line: 200, type: !384)
!5141 = !DILocation(line: 200, column: 79, scope: !5135, inlinedAt: !5137)
!5142 = !DILocation(line: 202, column: 26, scope: !5135, inlinedAt: !5137)
!5143 = !DILocation(line: 0, scope: !2168, inlinedAt: !5144)
!5144 = distinct !DILocation(line: 202, column: 13, scope: !5135, inlinedAt: !5137)
!5145 = !DILocation(line: 225, column: 57, scope: !2168, inlinedAt: !5144)
!5146 = !DILocation(line: 202, column: 24, scope: !5135, inlinedAt: !5137)
!5147 = !DILocation(line: 203, column: 22, scope: !5135, inlinedAt: !5137)
!5148 = !DILocation(line: 0, scope: !2581, inlinedAt: !5149)
!5149 = distinct !DILocation(line: 203, column: 13, scope: !5135, inlinedAt: !5137)
!5150 = !DILocation(line: 222, column: 69, scope: !2581, inlinedAt: !5149)
!5151 = !DILocation(line: 222, column: 54, scope: !2581, inlinedAt: !5149)
!5152 = !DILocation(line: 203, column: 20, scope: !5135, inlinedAt: !5137)
!5153 = !DILocation(line: 0, scope: !2588, inlinedAt: !5154)
!5154 = distinct !DILocation(line: 204, column: 13, scope: !5135, inlinedAt: !5137)
!5155 = !DILocation(line: 223, column: 69, scope: !2588, inlinedAt: !5154)
!5156 = !DILocation(line: 223, column: 54, scope: !2588, inlinedAt: !5154)
!5157 = !DILocation(line: 223, column: 79, scope: !2588, inlinedAt: !5154)
!5158 = !DILocation(line: 204, column: 20, scope: !5135, inlinedAt: !5137)
!5159 = !DILocation(line: 0, scope: !2573, inlinedAt: !5160)
!5160 = distinct !DILocation(line: 205, column: 13, scope: !5135, inlinedAt: !5137)
!5161 = !DILocation(line: 224, column: 71, scope: !2573, inlinedAt: !5160)
!5162 = !DILocation(line: 224, column: 56, scope: !2573, inlinedAt: !5160)
!5163 = !DILocation(line: 224, column: 81, scope: !2573, inlinedAt: !5160)
!5164 = !DILocation(line: 205, column: 21, scope: !5135, inlinedAt: !5137)
!5165 = !DILocation(line: 165, column: 7, scope: !2484)
!5166 = !DILocation(line: 165, column: 11, scope: !2484)
!5167 = !DILocation(line: 165, column: 19, scope: !2484)
!5168 = !DILocation(line: 165, column: 23, scope: !2484)
!5169 = !DILocation(line: 166, column: 7, scope: !2484)
!5170 = !DILocation(line: 166, column: 11, scope: !2484)
!5171 = !DILocation(line: 166, column: 19, scope: !2484)
!5172 = !DILocation(line: 166, column: 38, scope: !2484)
!5173 = !DILocation(line: 166, column: 44, scope: !2484)
!5174 = !DILocation(line: 166, column: 48, scope: !2484)
!5175 = !DILocation(line: 166, column: 47, scope: !2484)
!5176 = !DILocation(line: 0, scope: !2158, inlinedAt: !5177)
!5177 = distinct !DILocation(line: 166, column: 23, scope: !2484)
!5178 = !DILocation(line: 208, column: 56, scope: !2158, inlinedAt: !5177)
!5179 = !DILocation(line: 208, column: 83, scope: !2158, inlinedAt: !5177)
!5180 = !DILocation(line: 210, column: 26, scope: !2158, inlinedAt: !5177)
!5181 = !DILocation(line: 210, column: 33, scope: !2158, inlinedAt: !5177)
!5182 = !DILocation(line: 0, scope: !2168, inlinedAt: !5183)
!5183 = distinct !DILocation(line: 210, column: 13, scope: !2158, inlinedAt: !5177)
!5184 = !DILocation(line: 225, column: 57, scope: !2168, inlinedAt: !5183)
!5185 = !DILocation(line: 210, column: 24, scope: !2158, inlinedAt: !5177)
!5186 = !DILocation(line: 211, column: 24, scope: !2158, inlinedAt: !5177)
!5187 = !DILocation(line: 211, column: 32, scope: !2158, inlinedAt: !5177)
!5188 = !DILocation(line: 0, scope: !2177, inlinedAt: !5189)
!5189 = distinct !DILocation(line: 211, column: 13, scope: !2158, inlinedAt: !5177)
!5190 = !DILocation(line: 233, column: 70, scope: !2177, inlinedAt: !5189)
!5191 = !DILocation(line: 233, column: 55, scope: !2177, inlinedAt: !5189)
!5192 = !DILocation(line: 211, column: 22, scope: !2158, inlinedAt: !5177)
!5193 = !DILocation(line: 167, column: 7, scope: !2484)
!5194 = !DILocation(line: 167, column: 11, scope: !2484)
!5195 = !DILocation(line: 167, column: 19, scope: !2484)
!5196 = !DILocation(line: 167, column: 23, scope: !2484)
!5197 = !DILocation(line: 168, column: 7, scope: !2484)
!5198 = !DILocation(line: 168, column: 11, scope: !2484)
!5199 = !DILocation(line: 168, column: 19, scope: !2484)
!5200 = !DILocation(line: 168, column: 38, scope: !2484)
!5201 = !DILocation(line: 168, column: 42, scope: !2484)
!5202 = !DILocation(line: 168, column: 46, scope: !2484)
!5203 = !DILocation(line: 168, column: 45, scope: !2484)
!5204 = !DILocation(line: 0, scope: !2158, inlinedAt: !5205)
!5205 = distinct !DILocation(line: 168, column: 23, scope: !2484)
!5206 = !DILocation(line: 208, column: 56, scope: !2158, inlinedAt: !5205)
!5207 = !DILocation(line: 208, column: 83, scope: !2158, inlinedAt: !5205)
!5208 = !DILocation(line: 210, column: 26, scope: !2158, inlinedAt: !5205)
!5209 = !DILocation(line: 210, column: 33, scope: !2158, inlinedAt: !5205)
!5210 = !DILocation(line: 0, scope: !2168, inlinedAt: !5211)
!5211 = distinct !DILocation(line: 210, column: 13, scope: !2158, inlinedAt: !5205)
!5212 = !DILocation(line: 225, column: 57, scope: !2168, inlinedAt: !5211)
!5213 = !DILocation(line: 210, column: 24, scope: !2158, inlinedAt: !5205)
!5214 = !DILocation(line: 211, column: 24, scope: !2158, inlinedAt: !5205)
!5215 = !DILocation(line: 211, column: 32, scope: !2158, inlinedAt: !5205)
!5216 = !DILocation(line: 0, scope: !2177, inlinedAt: !5217)
!5217 = distinct !DILocation(line: 211, column: 13, scope: !2158, inlinedAt: !5205)
!5218 = !DILocation(line: 233, column: 70, scope: !2177, inlinedAt: !5217)
!5219 = !DILocation(line: 233, column: 55, scope: !2177, inlinedAt: !5217)
!5220 = !DILocation(line: 211, column: 22, scope: !2158, inlinedAt: !5205)
!5221 = !DILocation(line: 169, column: 16, scope: !2484)
!5222 = !DILocation(line: 170, column: 1, scope: !2484)
!5223 = distinct !DISubprogram(name: "AABB", linkageName: "_ZN4RTTL4AABBC2ERKS0_", scope: !362, file: !19, line: 175, type: !5224, scopeLine: 175, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !5226, retainedNodes: !1881)
!5224 = !DISubroutineType(types: !5225)
!5225 = !{null, !368, !2477}
!5226 = !DISubprogram(name: "AABB", scope: !362, type: !5224, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!5227 = !DILocalVariable(name: "this", arg: 1, scope: !5223, type: !607, flags: DIFlagArtificial | DIFlagObjectPointer)
!5228 = !DILocation(line: 0, scope: !5223)
!5229 = !DILocalVariable(arg: 2, scope: !5223, type: !2477)
!5230 = !DILocation(line: 175, column: 11, scope: !5223)
!5231 = distinct !DISubprogram(name: "centroid", linkageName: "_ZNK4RTTL16CentroidDiffAABB8centroidEv", scope: !38, file: !19, line: 245, type: !346, scopeLine: 245, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !345, retainedNodes: !1881)
!5232 = !DILocalVariable(name: "this", arg: 1, scope: !5231, type: !5233, flags: DIFlagArtificial | DIFlagObjectPointer)
!5233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!5234 = !DILocation(line: 0, scope: !5231)
!5235 = !DILocation(line: 0, scope: !2406, inlinedAt: !5236)
!5236 = distinct !DILocation(line: 245, column: 39, scope: !5231)
!5237 = !DILocation(line: 324, column: 44, scope: !2406, inlinedAt: !5236)
!5238 = !DILocation(line: 324, column: 37, scope: !2406, inlinedAt: !5236)
!5239 = !DILocation(line: 245, column: 39, scope: !5231)
!5240 = !DILocation(line: 245, column: 32, scope: !5231)
!5241 = distinct !DISubprogram(name: "min<int>", linkageName: "_ZSt3minIiERKT_S2_S2_", scope: !2, file: !5242, line: 230, type: !5243, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !5246, retainedNodes: !1881)
!5242 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/stl_algobase.h", directory: "", checksumkind: CSK_MD5, checksum: "906433670cd4a8daf96f73a1b6f6012b")
!5243 = !DISubroutineType(types: !5244)
!5244 = !{!5245, !5245, !5245}
!5245 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !294, size: 64)
!5246 = !{!5247}
!5247 = !DITemplateTypeParameter(name: "_Tp", type: !13)
!5248 = !DILocalVariable(name: "__a", arg: 1, scope: !5241, file: !5249, line: 420, type: !5245)
!5249 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/algorithmfwd.h", directory: "")
!5250 = !DILocation(line: 420, column: 19, scope: !5241)
!5251 = !DILocalVariable(name: "__b", arg: 2, scope: !5241, file: !5249, line: 420, type: !5245)
!5252 = !DILocation(line: 420, column: 31, scope: !5241)
!5253 = !DILocation(line: 235, column: 11, scope: !5254)
!5254 = distinct !DILexicalBlock(scope: !5241, file: !5242, line: 235, column: 11)
!5255 = !DILocation(line: 235, column: 17, scope: !5254)
!5256 = !DILocation(line: 235, column: 15, scope: !5254)
!5257 = !DILocation(line: 235, column: 11, scope: !5241)
!5258 = !DILocation(line: 236, column: 9, scope: !5254)
!5259 = !DILocation(line: 236, column: 2, scope: !5254)
!5260 = !DILocation(line: 237, column: 14, scope: !5241)
!5261 = !DILocation(line: 237, column: 7, scope: !5241)
!5262 = !DILocation(line: 238, column: 5, scope: !5241)
!5263 = distinct !DISubprogram(name: "centroid", linkageName: "_ZNK4RTTL16CentroidDiffAABB8centroidEi", scope: !38, file: !19, line: 246, type: !351, scopeLine: 246, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !350, retainedNodes: !1881)
!5264 = !DILocalVariable(name: "this", arg: 1, scope: !5263, type: !5233, flags: DIFlagArtificial | DIFlagObjectPointer)
!5265 = !DILocation(line: 0, scope: !5263)
!5266 = !DILocalVariable(name: "i", arg: 2, scope: !5263, file: !19, line: 246, type: !294)
!5267 = !DILocation(line: 246, column: 32, scope: !5263)
!5268 = !DILocation(line: 246, column: 60, scope: !5263)
!5269 = !DILocation(line: 246, column: 67, scope: !5263)
!5270 = !DILocation(line: 246, column: 50, scope: !5263)
!5271 = !DILocation(line: 246, column: 43, scope: !5263)
!5272 = distinct !DISubprogram(name: "sse_f", linkageName: "_ZN5sse_fC2Ev", scope: !22, file: !23, line: 21, type: !30, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !29, retainedNodes: !1881)
!5273 = !DILocalVariable(name: "this", arg: 1, scope: !5272, type: !21, flags: DIFlagArtificial | DIFlagObjectPointer)
!5274 = !DILocation(line: 0, scope: !5272)
!5275 = !DILocation(line: 21, column: 11, scope: !5272)
!5276 = distinct !DISubprogram(name: "RTBox3a", linkageName: "_ZN4RTTL7RTBox3aC2Ev", scope: !43, file: !42, line: 285, type: !5277, scopeLine: 285, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !5279, retainedNodes: !1881)
!5277 = !DISubroutineType(types: !5278)
!5278 = !{null, !333}
!5279 = !DISubprogram(name: "RTBox3a", scope: !43, type: !5277, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!5280 = !DILocalVariable(name: "this", arg: 1, scope: !5276, type: !2399, flags: DIFlagArtificial | DIFlagObjectPointer)
!5281 = !DILocation(line: 0, scope: !5276)
!5282 = !DILocation(line: 285, column: 11, scope: !5276)
!5283 = distinct !DISubprogram(name: "RTBox_t", linkageName: "_ZN4RTTL7RTBox_tILi1E5sse_fLi0EEC2Ev", scope: !46, file: !42, line: 12, type: !211, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !210, retainedNodes: !1881)
!5284 = !DILocalVariable(name: "this", arg: 1, scope: !5283, type: !1980, flags: DIFlagArtificial | DIFlagObjectPointer)
!5285 = !DILocation(line: 0, scope: !5283)
!5286 = !DILocation(line: 12, column: 9, scope: !5283)
!5287 = !DILocation(line: 14, column: 9, scope: !5283)
!5288 = distinct !DISubprogram(name: "RTVec_t", linkageName: "_ZN4RTTL7RTVec_tILi1E5sse_fLi0EEC2Ev", scope: !50, file: !53, line: 29, type: !121, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !120, retainedNodes: !1881)
!5289 = !DILocalVariable(name: "this", arg: 1, scope: !5288, type: !1988, flags: DIFlagArtificial | DIFlagObjectPointer)
!5290 = !DILocation(line: 0, scope: !5288)
!5291 = !DILocation(line: 29, column: 5, scope: !5288)
!5292 = !DILocation(line: 31, column: 5, scope: !5288)
!5293 = distinct !DISubprogram(name: "RTData_t", linkageName: "_ZN4RTTL8RTData_tILi1E5sse_fLi0EEC2Ev", scope: !55, file: !56, line: 22, type: !5294, scopeLine: 22, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !5296, retainedNodes: !1881)
!5294 = !DISubroutineType(types: !5295)
!5295 = !{null, !70}
!5296 = !DISubprogram(name: "RTData_t", scope: !55, type: !5294, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!5297 = !DILocalVariable(name: "this", arg: 1, scope: !5293, type: !2008, flags: DIFlagArtificial | DIFlagObjectPointer)
!5298 = !DILocation(line: 0, scope: !5293)
!5299 = !DILocation(line: 22, column: 12, scope: !5293)
!5300 = distinct !DISubprogram(name: "operator[]", linkageName: "_ZN4RTTL7RTVec_tILi1E5sse_fLi0EEixEi", scope: !50, file: !53, line: 349, type: !171, scopeLine: 349, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !170, retainedNodes: !1881)
!5301 = !DILocalVariable(name: "this", arg: 1, scope: !5300, type: !1988, flags: DIFlagArtificial | DIFlagObjectPointer)
!5302 = !DILocation(line: 0, scope: !5300)
!5303 = !DILocalVariable(name: "index", arg: 2, scope: !5300, file: !53, line: 349, type: !13)
!5304 = !DILocation(line: 349, column: 30, scope: !5300)
!5305 = !DILocation(line: 349, column: 52, scope: !5300)
!5306 = !DILocation(line: 349, column: 54, scope: !5300)
!5307 = !DILocation(line: 0, scope: !2007, inlinedAt: !5308)
!5308 = distinct !DILocation(line: 349, column: 52, scope: !5300)
!5309 = !DILocation(line: 49, column: 42, scope: !2007, inlinedAt: !5308)
!5310 = !DILocation(line: 50, column: 22, scope: !2007, inlinedAt: !5308)
!5311 = !DILocation(line: 50, column: 20, scope: !2007, inlinedAt: !5308)
!5312 = !DILocation(line: 349, column: 45, scope: !5300)
!5313 = distinct !DISubprogram(name: "operator[]", linkageName: "_ZNK4RTTL7RTVec_tILi1E5sse_fLi0EEixEi", scope: !50, file: !53, line: 350, type: !174, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !173, retainedNodes: !1881)
!5314 = !DILocalVariable(name: "this", arg: 1, scope: !5313, type: !5315, flags: DIFlagArtificial | DIFlagObjectPointer)
!5315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!5316 = !DILocation(line: 0, scope: !5313)
!5317 = !DILocalVariable(name: "index", arg: 2, scope: !5313, file: !53, line: 350, type: !13)
!5318 = !DILocation(line: 350, column: 29, scope: !5313)
!5319 = !DILocation(line: 350, column: 52, scope: !5313)
!5320 = !DILocation(line: 350, column: 54, scope: !5313)
!5321 = !DILocalVariable(name: "this", arg: 1, scope: !5322, type: !5323, flags: DIFlagArtificial | DIFlagObjectPointer)
!5322 = distinct !DISubprogram(name: "operator[]", linkageName: "_ZNK4RTTL8RTData_tILi1E5sse_fLi0EEixEi", scope: !55, file: !56, line: 52, type: !82, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !81, retainedNodes: !1881)
!5323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!5324 = !DILocation(line: 0, scope: !5322, inlinedAt: !5325)
!5325 = distinct !DILocation(line: 350, column: 52, scope: !5313)
!5326 = !DILocalVariable(name: "index", arg: 2, scope: !5322, file: !56, line: 52, type: !13)
!5327 = !DILocation(line: 52, column: 41, scope: !5322, inlinedAt: !5325)
!5328 = !DILocation(line: 53, column: 22, scope: !5322, inlinedAt: !5325)
!5329 = !DILocation(line: 53, column: 20, scope: !5322, inlinedAt: !5325)
!5330 = !DILocation(line: 53, column: 13, scope: !5322, inlinedAt: !5325)
!5331 = !DILocation(line: 350, column: 45, scope: !5313)
!5332 = distinct !DISubprogram(name: "operator=", linkageName: "_ZN4RTTL7RTBox3aaSERKS0_", scope: !43, file: !42, line: 285, type: !5333, scopeLine: 285, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !5337, retainedNodes: !1881)
!5333 = !DISubroutineType(types: !5334)
!5334 = !{!5335, !333, !5336}
!5335 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !43, size: 64)
!5336 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !319, size: 64)
!5337 = !DISubprogram(name: "operator=", linkageName: "_ZN4RTTL7RTBox3aaSERKS0_", scope: !43, type: !5333, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!5338 = !DILocalVariable(name: "this", arg: 1, scope: !5332, type: !2399, flags: DIFlagArtificial | DIFlagObjectPointer)
!5339 = !DILocation(line: 0, scope: !5332)
!5340 = !DILocalVariable(arg: 2, scope: !5332, type: !5336)
!5341 = !DILocation(line: 285, column: 11, scope: !5342)
!5342 = distinct !DILexicalBlock(scope: !5332, file: !42, line: 285, column: 11)
!5343 = !DILocalVariable(name: "this", arg: 1, scope: !5344, type: !1980, flags: DIFlagArtificial | DIFlagObjectPointer)
!5344 = distinct !DISubprogram(name: "operator=", linkageName: "_ZN4RTTL7RTBox_tILi1E5sse_fLi0EEaSERKS2_", scope: !46, file: !42, line: 197, type: !300, scopeLine: 197, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !299, retainedNodes: !1881)
!5345 = !DILocation(line: 0, scope: !5344, inlinedAt: !5346)
!5346 = distinct !DILocation(line: 285, column: 11, scope: !5342)
!5347 = !DILocalVariable(name: "b", arg: 2, scope: !5344, file: !42, line: 197, type: !229)
!5348 = !DILocation(line: 197, column: 57, scope: !5344, inlinedAt: !5346)
!5349 = !DILocation(line: 198, column: 21, scope: !5344, inlinedAt: !5346)
!5350 = !DILocalVariable(name: "this", arg: 1, scope: !5351, type: !1988, flags: DIFlagArtificial | DIFlagObjectPointer)
!5351 = distinct !DISubprogram(name: "operator=", linkageName: "_ZN4RTTL7RTVec_tILi1E5sse_fLi0EEaSERKS2_", scope: !50, file: !53, line: 74, type: !134, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !133, retainedNodes: !1881)
!5352 = !DILocation(line: 0, scope: !5351, inlinedAt: !5353)
!5353 = distinct !DILocation(line: 198, column: 19, scope: !5344, inlinedAt: !5346)
!5354 = !DILocalVariable(name: "x", arg: 2, scope: !5351, file: !53, line: 74, type: !136)
!5355 = !DILocation(line: 74, column: 53, scope: !5351, inlinedAt: !5353)
!5356 = !DILocalVariable(name: "t", scope: !5351, file: !53, line: 75, type: !185)
!5357 = !DILocation(line: 75, column: 20, scope: !5351, inlinedAt: !5353)
!5358 = !DILocation(line: 75, column: 24, scope: !5351, inlinedAt: !5353)
!5359 = !DILocalVariable(name: "xt", scope: !5351, file: !53, line: 76, type: !189)
!5360 = !DILocation(line: 76, column: 26, scope: !5351, inlinedAt: !5353)
!5361 = !DILocation(line: 76, column: 31, scope: !5351, inlinedAt: !5353)
!5362 = !DILocation(line: 77, column: 9, scope: !5351, inlinedAt: !5353)
!5363 = !DILocation(line: 77, column: 18, scope: !5351, inlinedAt: !5353)
!5364 = !DILocalVariable(name: "this", arg: 1, scope: !5365, type: !2008, flags: DIFlagArtificial | DIFlagObjectPointer)
!5365 = distinct !DISubprogram(name: "assign<1, sse_f, 0>", linkageName: "_ZN4RTTL8RTData_tILi1E5sse_fLi0EE6assignILi1ES1_Li0EEEvRKNS0_IXT_ET0_XT1_EEE", scope: !55, file: !56, line: 43, type: !85, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !5367, declaration: !5366, retainedNodes: !1881)
!5366 = !DISubprogram(name: "assign<1, sse_f, 0>", linkageName: "_ZN4RTTL8RTData_tILi1E5sse_fLi0EE6assignILi1ES1_Li0EEEvRKNS0_IXT_ET0_XT1_EEE", scope: !55, file: !56, line: 43, type: !85, scopeLine: 43, flags: DIFlagPrototyped, spFlags: 0, templateParams: !5367)
!5367 = !{!5368, !5369, !5370}
!5368 = !DITemplateValueParameter(name: "AnotherN", type: !13, value: i32 1)
!5369 = !DITemplateTypeParameter(name: "AnotherDataType", type: !22)
!5370 = !DITemplateValueParameter(name: "AnotherAlign", type: !13, value: i32 0)
!5371 = !DILocation(line: 0, scope: !5365, inlinedAt: !5372)
!5372 = distinct !DILocation(line: 77, column: 11, scope: !5351, inlinedAt: !5353)
!5373 = !DILocalVariable(name: "v", arg: 2, scope: !5365, file: !56, line: 43, type: !87)
!5374 = !DILocation(line: 43, column: 86, scope: !5365, inlinedAt: !5372)
!5375 = !DILocation(line: 44, column: 13, scope: !5365, inlinedAt: !5372)
!5376 = !DILocalVariable(name: "i", scope: !5377, file: !56, line: 46, type: !13)
!5377 = distinct !DILexicalBlock(scope: !5365, file: !56, line: 46, column: 13)
!5378 = !DILocation(line: 46, column: 22, scope: !5377, inlinedAt: !5372)
!5379 = !DILocation(line: 46, column: 18, scope: !5377, inlinedAt: !5372)
!5380 = !DILocation(line: 46, column: 29, scope: !5381, inlinedAt: !5372)
!5381 = distinct !DILexicalBlock(scope: !5377, file: !56, line: 46, column: 13)
!5382 = !DILocation(line: 46, column: 31, scope: !5381, inlinedAt: !5372)
!5383 = !DILocation(line: 46, column: 13, scope: !5377, inlinedAt: !5372)
!5384 = !DILocation(line: 47, column: 24, scope: !5381, inlinedAt: !5372)
!5385 = !DILocation(line: 47, column: 26, scope: !5381, inlinedAt: !5372)
!5386 = !DILocation(line: 0, scope: !5322, inlinedAt: !5387)
!5387 = distinct !DILocation(line: 47, column: 24, scope: !5381, inlinedAt: !5372)
!5388 = !DILocation(line: 52, column: 41, scope: !5322, inlinedAt: !5387)
!5389 = !DILocation(line: 53, column: 22, scope: !5322, inlinedAt: !5387)
!5390 = !DILocation(line: 53, column: 20, scope: !5322, inlinedAt: !5387)
!5391 = !DILocation(line: 53, column: 13, scope: !5322, inlinedAt: !5387)
!5392 = !DILocation(line: 47, column: 19, scope: !5381, inlinedAt: !5372)
!5393 = !DILocation(line: 47, column: 17, scope: !5381, inlinedAt: !5372)
!5394 = !DILocation(line: 47, column: 22, scope: !5381, inlinedAt: !5372)
!5395 = !DILocation(line: 46, column: 37, scope: !5381, inlinedAt: !5372)
!5396 = !DILocation(line: 46, column: 13, scope: !5381, inlinedAt: !5372)
!5397 = distinct !{!5397, !5383, !5398, !1911}
!5398 = !DILocation(line: 47, column: 27, scope: !5377, inlinedAt: !5372)
!5399 = !DILocation(line: 199, column: 21, scope: !5344, inlinedAt: !5346)
!5400 = !DILocation(line: 199, column: 23, scope: !5344, inlinedAt: !5346)
!5401 = !DILocation(line: 199, column: 13, scope: !5344, inlinedAt: !5346)
!5402 = !DILocation(line: 0, scope: !5351, inlinedAt: !5403)
!5403 = distinct !DILocation(line: 199, column: 19, scope: !5344, inlinedAt: !5346)
!5404 = !DILocation(line: 74, column: 53, scope: !5351, inlinedAt: !5403)
!5405 = !DILocation(line: 75, column: 20, scope: !5351, inlinedAt: !5403)
!5406 = !DILocation(line: 75, column: 24, scope: !5351, inlinedAt: !5403)
!5407 = !DILocation(line: 76, column: 26, scope: !5351, inlinedAt: !5403)
!5408 = !DILocation(line: 76, column: 31, scope: !5351, inlinedAt: !5403)
!5409 = !DILocation(line: 77, column: 9, scope: !5351, inlinedAt: !5403)
!5410 = !DILocation(line: 77, column: 18, scope: !5351, inlinedAt: !5403)
!5411 = !DILocation(line: 0, scope: !5365, inlinedAt: !5412)
!5412 = distinct !DILocation(line: 77, column: 11, scope: !5351, inlinedAt: !5403)
!5413 = !DILocation(line: 43, column: 86, scope: !5365, inlinedAt: !5412)
!5414 = !DILocation(line: 44, column: 13, scope: !5365, inlinedAt: !5412)
!5415 = !DILocation(line: 46, column: 22, scope: !5377, inlinedAt: !5412)
!5416 = !DILocation(line: 46, column: 18, scope: !5377, inlinedAt: !5412)
!5417 = !DILocation(line: 46, column: 29, scope: !5381, inlinedAt: !5412)
!5418 = !DILocation(line: 46, column: 31, scope: !5381, inlinedAt: !5412)
!5419 = !DILocation(line: 46, column: 13, scope: !5377, inlinedAt: !5412)
!5420 = !DILocation(line: 47, column: 24, scope: !5381, inlinedAt: !5412)
!5421 = !DILocation(line: 47, column: 26, scope: !5381, inlinedAt: !5412)
!5422 = !DILocation(line: 0, scope: !5322, inlinedAt: !5423)
!5423 = distinct !DILocation(line: 47, column: 24, scope: !5381, inlinedAt: !5412)
!5424 = !DILocation(line: 52, column: 41, scope: !5322, inlinedAt: !5423)
!5425 = !DILocation(line: 53, column: 22, scope: !5322, inlinedAt: !5423)
!5426 = !DILocation(line: 53, column: 20, scope: !5322, inlinedAt: !5423)
!5427 = !DILocation(line: 53, column: 13, scope: !5322, inlinedAt: !5423)
!5428 = !DILocation(line: 47, column: 19, scope: !5381, inlinedAt: !5412)
!5429 = !DILocation(line: 47, column: 17, scope: !5381, inlinedAt: !5412)
!5430 = !DILocation(line: 47, column: 22, scope: !5381, inlinedAt: !5412)
!5431 = !DILocation(line: 46, column: 37, scope: !5381, inlinedAt: !5412)
!5432 = !DILocation(line: 46, column: 13, scope: !5381, inlinedAt: !5412)
!5433 = distinct !{!5433, !5419, !5434, !1911}
!5434 = !DILocation(line: 47, column: 27, scope: !5377, inlinedAt: !5412)
!5435 = distinct !DISubprogram(name: "operator RTTL::RTData_t<1, sse_f> &", linkageName: "_ZN4RTTL7RTVec_tILi1E5sse_fLi0EEcvRNS_8RTData_tILi1ES1_Li0EEEEv", scope: !50, file: !53, line: 357, type: !183, scopeLine: 357, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !182, retainedNodes: !1881)
!5436 = !DILocalVariable(name: "this", arg: 1, scope: !5435, type: !1988, flags: DIFlagArtificial | DIFlagObjectPointer)
!5437 = !DILocation(line: 0, scope: !5435)
!5438 = !DILocation(line: 357, column: 52, scope: !5435)
!5439 = !DILocation(line: 357, column: 45, scope: !5435)
!5440 = distinct !DISubprogram(name: "operator const RTTL::RTData_t<1, sse_f> &", linkageName: "_ZNK4RTTL7RTVec_tILi1E5sse_fLi0EEcvRKNS_8RTData_tILi1ES1_Li0EEEEv", scope: !50, file: !53, line: 358, type: !187, scopeLine: 358, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !186, retainedNodes: !1881)
!5441 = !DILocalVariable(name: "this", arg: 1, scope: !5440, type: !5315, flags: DIFlagArtificial | DIFlagObjectPointer)
!5442 = !DILocation(line: 0, scope: !5440)
!5443 = !DILocation(line: 358, column: 52, scope: !5440)
!5444 = !DILocation(line: 358, column: 45, scope: !5440)
!5445 = distinct !DISubprogram(name: "nElements", linkageName: "_ZN4RTTL8RTData_tILi1E5sse_fLi0EE9nElementsEv", scope: !55, file: !56, line: 175, type: !114, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !113, retainedNodes: !1881)
!5446 = !DILocation(line: 175, column: 34, scope: !5445)
!5447 = distinct !DISubprogram(name: "RTBox3a", linkageName: "_ZN4RTTL7RTBox3aC2ERKS0_", scope: !43, file: !42, line: 285, type: !5448, scopeLine: 285, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !5450, retainedNodes: !1881)
!5448 = !DISubroutineType(types: !5449)
!5449 = !{null, !333, !5336}
!5450 = !DISubprogram(name: "RTBox3a", scope: !43, type: !5448, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!5451 = !DILocalVariable(name: "this", arg: 1, scope: !5447, type: !2399, flags: DIFlagArtificial | DIFlagObjectPointer)
!5452 = !DILocation(line: 0, scope: !5447)
!5453 = !DILocalVariable(arg: 2, scope: !5447, type: !5336)
!5454 = !DILocation(line: 285, column: 11, scope: !5447)
!5455 = distinct !DISubprogram(name: "RTBox_t", linkageName: "_ZN4RTTL7RTBox_tILi1E5sse_fLi0EEC2ERKS2_", scope: !46, file: !42, line: 31, type: !227, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !226, retainedNodes: !1881)
!5456 = !DILocalVariable(name: "this", arg: 1, scope: !5455, type: !1980, flags: DIFlagArtificial | DIFlagObjectPointer)
!5457 = !DILocation(line: 0, scope: !5455)
!5458 = !DILocalVariable(name: "b", arg: 2, scope: !5455, file: !42, line: 31, type: !229)
!5459 = !DILocation(line: 31, column: 32, scope: !5455)
!5460 = !DILocation(line: 31, column: 37, scope: !5455)
!5461 = !DILocation(line: 31, column: 43, scope: !5455)
!5462 = !DILocation(line: 31, column: 45, scope: !5455)
!5463 = !DILocation(line: 31, column: 53, scope: !5455)
!5464 = !DILocation(line: 31, column: 59, scope: !5455)
!5465 = !DILocation(line: 31, column: 61, scope: !5455)
!5466 = !DILocation(line: 31, column: 69, scope: !5455)
!5467 = distinct !DISubprogram(name: "operator sse_f *", linkageName: "_ZN4RTTL7RTVec_tILi1E5sse_fLi0EEcvPS1_Ev", scope: !50, file: !53, line: 353, type: !177, scopeLine: 353, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !176, retainedNodes: !1881)
!5468 = !DILocalVariable(name: "this", arg: 1, scope: !5467, type: !1988, flags: DIFlagArtificial | DIFlagObjectPointer)
!5469 = !DILocation(line: 0, scope: !5467)
!5470 = !DILocation(line: 353, column: 64, scope: !5467)
!5471 = !DILocation(line: 353, column: 45, scope: !5467)
!5472 = distinct !DISubprogram(name: "array", linkageName: "_ZN4RTTL7RTVec_tILi1E5sse_fLi0EE5arrayEv", scope: !50, file: !53, line: 359, type: !183, scopeLine: 359, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !191, retainedNodes: !1881)
!5473 = !DILocalVariable(name: "this", arg: 1, scope: !5472, type: !1988, flags: DIFlagArtificial | DIFlagObjectPointer)
!5474 = !DILocation(line: 0, scope: !5472)
!5475 = !DILocation(line: 359, column: 52, scope: !5472)
!5476 = !DILocation(line: 359, column: 45, scope: !5472)
!5477 = distinct !DISubprogram(name: "array", linkageName: "_ZNK4RTTL7RTVec_tILi1E5sse_fLi0EE5arrayEv", scope: !50, file: !53, line: 360, type: !187, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !192, retainedNodes: !1881)
!5478 = !DILocalVariable(name: "this", arg: 1, scope: !5477, type: !5315, flags: DIFlagArtificial | DIFlagObjectPointer)
!5479 = !DILocation(line: 0, scope: !5477)
!5480 = !DILocation(line: 360, column: 52, scope: !5477)
!5481 = !DILocation(line: 360, column: 45, scope: !5477)
!5482 = distinct !DISubprogram(name: "RTBox_t", linkageName: "_ZN4RTTL7RTBox_tILi3EfLi0EEC2ERKNS_7RTVec_tILi3EfLi0EEES5_", scope: !417, file: !42, line: 16, type: !427, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !426, retainedNodes: !1881)
!5483 = !DILocalVariable(name: "this", arg: 1, scope: !5482, type: !5484, flags: DIFlagArtificial | DIFlagObjectPointer)
!5484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!5485 = !DILocation(line: 0, scope: !5482)
!5486 = !DILocalVariable(name: "cmin", arg: 2, scope: !5482, file: !42, line: 16, type: !429)
!5487 = !DILocation(line: 16, column: 30, scope: !5482)
!5488 = !DILocalVariable(name: "cmax", arg: 3, scope: !5482, file: !42, line: 16, type: !429)
!5489 = !DILocation(line: 16, column: 49, scope: !5482)
!5490 = !DILocation(line: 16, column: 56, scope: !5482)
!5491 = !DILocation(line: 16, column: 62, scope: !5482)
!5492 = !DILocation(line: 16, column: 69, scope: !5482)
!5493 = !DILocation(line: 16, column: 75, scope: !5482)
!5494 = !DILocation(line: 16, column: 82, scope: !5482)
!5495 = distinct !DISubprogram(name: "operator[]", linkageName: "_ZNK4RTTL7RTVec_tILi3EfLi0EEixEi", scope: !36, file: !53, line: 206, type: !5496, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !5500, retainedNodes: !1881)
!5496 = !DISubroutineType(types: !5497)
!5497 = !{!15, !5498, !13}
!5498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5499, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!5499 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!5500 = !DISubprogram(name: "operator[]", linkageName: "_ZNK4RTTL7RTVec_tILi3EfLi0EEixEi", scope: !36, file: !53, line: 206, type: !5496, scopeLine: 206, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!5501 = !DILocalVariable(name: "this", arg: 1, scope: !5495, type: !5502, flags: DIFlagArtificial | DIFlagObjectPointer)
!5502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5499, size: 64)
!5503 = !DILocation(line: 0, scope: !5495)
!5504 = !DILocalVariable(name: "index", arg: 2, scope: !5495, file: !53, line: 206, type: !13)
!5505 = !DILocation(line: 206, column: 30, scope: !5495)
!5506 = !DILocation(line: 206, column: 52, scope: !5495)
!5507 = !DILocation(line: 206, column: 59, scope: !5495)
!5508 = !DILocation(line: 206, column: 45, scope: !5495)
!5509 = distinct !DISubprogram(name: "data", linkageName: "_ZNK4RTTL7RTVec_tILi3EfLi0EE4dataEv", scope: !36, file: !53, line: 202, type: !5510, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !5513, retainedNodes: !1881)
!5510 = !DISubroutineType(types: !5511)
!5511 = !{!5512, !5498}
!5512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!5513 = !DISubprogram(name: "data", linkageName: "_ZNK4RTTL7RTVec_tILi3EfLi0EE4dataEv", scope: !36, file: !53, line: 202, type: !5510, scopeLine: 202, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!5514 = !DILocalVariable(name: "this", arg: 1, scope: !5509, type: !5502, flags: DIFlagArtificial | DIFlagObjectPointer)
!5515 = !DILocation(line: 0, scope: !5509)
!5516 = !DILocation(line: 202, column: 44, scope: !5509)
!5517 = !DILocation(line: 202, column: 36, scope: !5509)
!5518 = distinct !DISubprogram(name: "convert", linkageName: "_ZNK4RTTL16CentroidDiffAABB7convertEv", scope: !38, file: !19, line: 254, type: !360, scopeLine: 255, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !359, retainedNodes: !1881)
!5519 = !DILocalVariable(name: "this", arg: 1, scope: !5518, type: !5233, flags: DIFlagArtificial | DIFlagObjectPointer)
!5520 = !DILocation(line: 0, scope: !5518)
!5521 = !DILocalVariable(name: "aabb", scope: !5518, file: !19, line: 256, type: !362)
!5522 = !DILocation(line: 256, column: 18, scope: !5518)
!5523 = !DILocation(line: 257, column: 26, scope: !5518)
!5524 = !DILocation(line: 257, column: 34, scope: !5518)
!5525 = !DILocation(line: 139, column: 86, scope: !2241, inlinedAt: !5526)
!5526 = distinct !DILocation(line: 257, column: 32, scope: !5518)
!5527 = !DILocation(line: 139, column: 124, scope: !2241, inlinedAt: !5526)
!5528 = !DILocation(line: 140, column: 37, scope: !2241, inlinedAt: !5526)
!5529 = !DILocation(line: 141, column: 17, scope: !2241, inlinedAt: !5526)
!5530 = !DILocation(line: 141, column: 35, scope: !2241, inlinedAt: !5526)
!5531 = !DILocation(line: 141, column: 37, scope: !2241, inlinedAt: !5526)
!5532 = !DILocation(line: 141, column: 46, scope: !2241, inlinedAt: !5526)
!5533 = !DILocation(line: 141, column: 48, scope: !2241, inlinedAt: !5526)
!5534 = !DILocation(line: 0, scope: !2258, inlinedAt: !5535)
!5535 = distinct !DILocation(line: 141, column: 26, scope: !2241, inlinedAt: !5526)
!5536 = !DILocation(line: 100, column: 47, scope: !2258, inlinedAt: !5535)
!5537 = !DILocation(line: 100, column: 67, scope: !2258, inlinedAt: !5535)
!5538 = !DILocation(line: 101, column: 22, scope: !2266, inlinedAt: !5535)
!5539 = !DILocation(line: 101, column: 18, scope: !2266, inlinedAt: !5535)
!5540 = !DILocation(line: 101, column: 29, scope: !2270, inlinedAt: !5535)
!5541 = !DILocation(line: 101, column: 31, scope: !2270, inlinedAt: !5535)
!5542 = !DILocation(line: 101, column: 13, scope: !2266, inlinedAt: !5535)
!5543 = !DILocation(line: 102, column: 24, scope: !2270, inlinedAt: !5535)
!5544 = !DILocation(line: 102, column: 29, scope: !2270, inlinedAt: !5535)
!5545 = !DILocation(line: 102, column: 34, scope: !2270, inlinedAt: !5535)
!5546 = !DILocation(line: 102, column: 39, scope: !2270, inlinedAt: !5535)
!5547 = !DILocation(line: 102, column: 32, scope: !2270, inlinedAt: !5535)
!5548 = !DILocation(line: 72, column: 32, scope: !2279, inlinedAt: !5549)
!5549 = distinct !DILocation(line: 102, column: 32, scope: !2270, inlinedAt: !5535)
!5550 = !DILocation(line: 72, column: 41, scope: !2279, inlinedAt: !5549)
!5551 = !DILocation(line: 72, column: 64, scope: !2279, inlinedAt: !5549)
!5552 = !DILocation(line: 72, column: 67, scope: !2279, inlinedAt: !5549)
!5553 = !DILocation(line: 72, column: 53, scope: !2279, inlinedAt: !5549)
!5554 = !DILocation(line: 779, column: 39, scope: !2288, inlinedAt: !5555)
!5555 = distinct !DILocation(line: 72, column: 53, scope: !2279, inlinedAt: !5549)
!5556 = !DILocation(line: 779, column: 48, scope: !2288, inlinedAt: !5555)
!5557 = !DILocation(line: 780, column: 11, scope: !2288, inlinedAt: !5555)
!5558 = !DILocation(line: 783, column: 14, scope: !2296, inlinedAt: !5555)
!5559 = !DILocation(line: 783, column: 10, scope: !2296, inlinedAt: !5555)
!5560 = !DILocation(line: 783, column: 21, scope: !2300, inlinedAt: !5555)
!5561 = !DILocation(line: 783, column: 23, scope: !2300, inlinedAt: !5555)
!5562 = !DILocation(line: 783, column: 5, scope: !2296, inlinedAt: !5555)
!5563 = !DILocation(line: 784, column: 27, scope: !2300, inlinedAt: !5555)
!5564 = !DILocation(line: 784, column: 23, scope: !2300, inlinedAt: !5555)
!5565 = !DILocation(line: 784, column: 36, scope: !2300, inlinedAt: !5555)
!5566 = !DILocation(line: 784, column: 32, scope: !2300, inlinedAt: !5555)
!5567 = !DILocation(line: 784, column: 30, scope: !2300, inlinedAt: !5555)
!5568 = !DILocation(line: 784, column: 18, scope: !2300, inlinedAt: !5555)
!5569 = !DILocation(line: 784, column: 9, scope: !2300, inlinedAt: !5555)
!5570 = !DILocation(line: 784, column: 21, scope: !2300, inlinedAt: !5555)
!5571 = !DILocation(line: 783, column: 39, scope: !2300, inlinedAt: !5555)
!5572 = !DILocation(line: 783, column: 5, scope: !2300, inlinedAt: !5555)
!5573 = distinct !{!5573, !5562, !5574, !1911}
!5574 = !DILocation(line: 784, column: 37, scope: !2296, inlinedAt: !5555)
!5575 = !DILocation(line: 786, column: 5, scope: !2288, inlinedAt: !5555)
!5576 = !DILocation(line: 72, column: 46, scope: !2279, inlinedAt: !5549)
!5577 = !DILocation(line: 102, column: 19, scope: !2270, inlinedAt: !5535)
!5578 = !DILocation(line: 102, column: 17, scope: !2270, inlinedAt: !5535)
!5579 = !DILocation(line: 102, column: 22, scope: !2270, inlinedAt: !5535)
!5580 = !DILocation(line: 101, column: 37, scope: !2270, inlinedAt: !5535)
!5581 = !DILocation(line: 101, column: 13, scope: !2270, inlinedAt: !5535)
!5582 = distinct !{!5582, !5542, !5583, !1911}
!5583 = !DILocation(line: 102, column: 40, scope: !2266, inlinedAt: !5535)
!5584 = !DILocation(line: 142, column: 9, scope: !2241, inlinedAt: !5526)
!5585 = !DILocation(line: 257, column: 32, scope: !5518)
!5586 = !DILocation(line: 257, column: 18, scope: !5518)
!5587 = !DILocation(line: 0, scope: !5351, inlinedAt: !5588)
!5588 = distinct !DILocation(line: 257, column: 24, scope: !5518)
!5589 = !DILocation(line: 74, column: 53, scope: !5351, inlinedAt: !5588)
!5590 = !DILocation(line: 75, column: 20, scope: !5351, inlinedAt: !5588)
!5591 = !DILocation(line: 75, column: 24, scope: !5351, inlinedAt: !5588)
!5592 = !DILocation(line: 76, column: 26, scope: !5351, inlinedAt: !5588)
!5593 = !DILocation(line: 76, column: 31, scope: !5351, inlinedAt: !5588)
!5594 = !DILocation(line: 77, column: 9, scope: !5351, inlinedAt: !5588)
!5595 = !DILocation(line: 77, column: 18, scope: !5351, inlinedAt: !5588)
!5596 = !DILocation(line: 0, scope: !5365, inlinedAt: !5597)
!5597 = distinct !DILocation(line: 77, column: 11, scope: !5351, inlinedAt: !5588)
!5598 = !DILocation(line: 43, column: 86, scope: !5365, inlinedAt: !5597)
!5599 = !DILocation(line: 44, column: 13, scope: !5365, inlinedAt: !5597)
!5600 = !DILocation(line: 46, column: 22, scope: !5377, inlinedAt: !5597)
!5601 = !DILocation(line: 46, column: 18, scope: !5377, inlinedAt: !5597)
!5602 = !DILocation(line: 46, column: 29, scope: !5381, inlinedAt: !5597)
!5603 = !DILocation(line: 46, column: 31, scope: !5381, inlinedAt: !5597)
!5604 = !DILocation(line: 46, column: 13, scope: !5377, inlinedAt: !5597)
!5605 = !DILocation(line: 47, column: 24, scope: !5381, inlinedAt: !5597)
!5606 = !DILocation(line: 47, column: 26, scope: !5381, inlinedAt: !5597)
!5607 = !DILocation(line: 0, scope: !5322, inlinedAt: !5608)
!5608 = distinct !DILocation(line: 47, column: 24, scope: !5381, inlinedAt: !5597)
!5609 = !DILocation(line: 52, column: 41, scope: !5322, inlinedAt: !5608)
!5610 = !DILocation(line: 53, column: 22, scope: !5322, inlinedAt: !5608)
!5611 = !DILocation(line: 53, column: 20, scope: !5322, inlinedAt: !5608)
!5612 = !DILocation(line: 53, column: 13, scope: !5322, inlinedAt: !5608)
!5613 = !DILocation(line: 47, column: 19, scope: !5381, inlinedAt: !5597)
!5614 = !DILocation(line: 47, column: 17, scope: !5381, inlinedAt: !5597)
!5615 = !DILocation(line: 47, column: 22, scope: !5381, inlinedAt: !5597)
!5616 = !DILocation(line: 46, column: 37, scope: !5381, inlinedAt: !5597)
!5617 = !DILocation(line: 46, column: 13, scope: !5381, inlinedAt: !5597)
!5618 = distinct !{!5618, !5604, !5619, !1911}
!5619 = !DILocation(line: 47, column: 27, scope: !5377, inlinedAt: !5597)
!5620 = !DILocation(line: 258, column: 26, scope: !5518)
!5621 = !DILocation(line: 258, column: 34, scope: !5518)
!5622 = !DILocalVariable(name: "a", arg: 1, scope: !5623, file: !35, line: 132, type: !136)
!5623 = distinct !DISubprogram(name: "operator+<1, sse_f, 0>", linkageName: "_ZN4RTTLplILi1E5sse_fLi0EEENS_7RTVec_tIXT_ET0_XT1_EEERKS4_S6_", scope: !20, file: !35, line: 132, type: !2242, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !2244, retainedNodes: !1881)
!5624 = !DILocation(line: 132, column: 86, scope: !5623, inlinedAt: !5625)
!5625 = distinct !DILocation(line: 258, column: 32, scope: !5518)
!5626 = !DILocalVariable(name: "b", arg: 2, scope: !5623, file: !35, line: 132, type: !136)
!5627 = !DILocation(line: 132, column: 124, scope: !5623, inlinedAt: !5625)
!5628 = !DILocalVariable(name: "result", scope: !5623, file: !35, line: 133, type: !50)
!5629 = !DILocation(line: 133, column: 37, scope: !5623, inlinedAt: !5625)
!5630 = !DILocation(line: 134, column: 17, scope: !5623, inlinedAt: !5625)
!5631 = !DILocation(line: 134, column: 30, scope: !5623, inlinedAt: !5625)
!5632 = !DILocation(line: 134, column: 32, scope: !5623, inlinedAt: !5625)
!5633 = !DILocation(line: 134, column: 41, scope: !5623, inlinedAt: !5625)
!5634 = !DILocation(line: 134, column: 43, scope: !5623, inlinedAt: !5625)
!5635 = !DILocalVariable(name: "this", arg: 1, scope: !5636, type: !2008, flags: DIFlagArtificial | DIFlagObjectPointer)
!5636 = distinct !DISubprogram(name: "add", linkageName: "_ZN4RTTL8RTData_tILi1E5sse_fLi0EE3addERKS2_S4_", scope: !55, file: !56, line: 96, type: !96, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !95, retainedNodes: !1881)
!5637 = !DILocation(line: 0, scope: !5636, inlinedAt: !5638)
!5638 = distinct !DILocation(line: 134, column: 26, scope: !5623, inlinedAt: !5625)
!5639 = !DILocalVariable(name: "v1", arg: 2, scope: !5636, file: !56, line: 96, type: !87)
!5640 = !DILocation(line: 96, column: 42, scope: !5636, inlinedAt: !5638)
!5641 = !DILocalVariable(name: "v2", arg: 3, scope: !5636, file: !56, line: 96, type: !87)
!5642 = !DILocation(line: 96, column: 62, scope: !5636, inlinedAt: !5638)
!5643 = !DILocalVariable(name: "i", scope: !5644, file: !56, line: 97, type: !13)
!5644 = distinct !DILexicalBlock(scope: !5636, file: !56, line: 97, column: 13)
!5645 = !DILocation(line: 97, column: 22, scope: !5644, inlinedAt: !5638)
!5646 = !DILocation(line: 97, column: 18, scope: !5644, inlinedAt: !5638)
!5647 = !DILocation(line: 97, column: 29, scope: !5648, inlinedAt: !5638)
!5648 = distinct !DILexicalBlock(scope: !5644, file: !56, line: 97, column: 13)
!5649 = !DILocation(line: 97, column: 31, scope: !5648, inlinedAt: !5638)
!5650 = !DILocation(line: 97, column: 13, scope: !5644, inlinedAt: !5638)
!5651 = !DILocation(line: 98, column: 24, scope: !5648, inlinedAt: !5638)
!5652 = !DILocation(line: 98, column: 29, scope: !5648, inlinedAt: !5638)
!5653 = !DILocation(line: 98, column: 34, scope: !5648, inlinedAt: !5638)
!5654 = !DILocation(line: 98, column: 39, scope: !5648, inlinedAt: !5638)
!5655 = !DILocation(line: 98, column: 32, scope: !5648, inlinedAt: !5638)
!5656 = !DILocation(line: 71, column: 32, scope: !2418, inlinedAt: !5657)
!5657 = distinct !DILocation(line: 98, column: 32, scope: !5648, inlinedAt: !5638)
!5658 = !DILocation(line: 71, column: 41, scope: !2418, inlinedAt: !5657)
!5659 = !DILocation(line: 71, column: 64, scope: !2418, inlinedAt: !5657)
!5660 = !DILocation(line: 71, column: 67, scope: !2418, inlinedAt: !5657)
!5661 = !DILocation(line: 71, column: 53, scope: !2418, inlinedAt: !5657)
!5662 = !DILocation(line: 172, column: 39, scope: !2427, inlinedAt: !5663)
!5663 = distinct !DILocation(line: 71, column: 53, scope: !2418, inlinedAt: !5657)
!5664 = !DILocation(line: 172, column: 48, scope: !2427, inlinedAt: !5663)
!5665 = !DILocation(line: 173, column: 8, scope: !2427, inlinedAt: !5663)
!5666 = !DILocation(line: 176, column: 14, scope: !2435, inlinedAt: !5663)
!5667 = !DILocation(line: 176, column: 10, scope: !2435, inlinedAt: !5663)
!5668 = !DILocation(line: 176, column: 21, scope: !2439, inlinedAt: !5663)
!5669 = !DILocation(line: 176, column: 23, scope: !2439, inlinedAt: !5663)
!5670 = !DILocation(line: 176, column: 5, scope: !2435, inlinedAt: !5663)
!5671 = !DILocation(line: 177, column: 27, scope: !2439, inlinedAt: !5663)
!5672 = !DILocation(line: 177, column: 23, scope: !2439, inlinedAt: !5663)
!5673 = !DILocation(line: 177, column: 36, scope: !2439, inlinedAt: !5663)
!5674 = !DILocation(line: 177, column: 32, scope: !2439, inlinedAt: !5663)
!5675 = !DILocation(line: 177, column: 30, scope: !2439, inlinedAt: !5663)
!5676 = !DILocation(line: 177, column: 18, scope: !2439, inlinedAt: !5663)
!5677 = !DILocation(line: 177, column: 9, scope: !2439, inlinedAt: !5663)
!5678 = !DILocation(line: 177, column: 21, scope: !2439, inlinedAt: !5663)
!5679 = !DILocation(line: 176, column: 39, scope: !2439, inlinedAt: !5663)
!5680 = !DILocation(line: 176, column: 5, scope: !2439, inlinedAt: !5663)
!5681 = distinct !{!5681, !5670, !5682, !1911}
!5682 = !DILocation(line: 177, column: 37, scope: !2435, inlinedAt: !5663)
!5683 = !DILocation(line: 179, column: 2, scope: !2427, inlinedAt: !5663)
!5684 = !DILocation(line: 71, column: 46, scope: !2418, inlinedAt: !5657)
!5685 = !DILocation(line: 98, column: 19, scope: !5648, inlinedAt: !5638)
!5686 = !DILocation(line: 98, column: 17, scope: !5648, inlinedAt: !5638)
!5687 = !DILocation(line: 98, column: 22, scope: !5648, inlinedAt: !5638)
!5688 = !DILocation(line: 97, column: 37, scope: !5648, inlinedAt: !5638)
!5689 = !DILocation(line: 97, column: 13, scope: !5648, inlinedAt: !5638)
!5690 = distinct !{!5690, !5650, !5691, !1911}
!5691 = !DILocation(line: 98, column: 40, scope: !5644, inlinedAt: !5638)
!5692 = !DILocation(line: 135, column: 9, scope: !5623, inlinedAt: !5625)
!5693 = !DILocation(line: 258, column: 32, scope: !5518)
!5694 = !DILocation(line: 258, column: 18, scope: !5518)
!5695 = !DILocation(line: 0, scope: !5351, inlinedAt: !5696)
!5696 = distinct !DILocation(line: 258, column: 24, scope: !5518)
!5697 = !DILocation(line: 74, column: 53, scope: !5351, inlinedAt: !5696)
!5698 = !DILocation(line: 75, column: 20, scope: !5351, inlinedAt: !5696)
!5699 = !DILocation(line: 75, column: 24, scope: !5351, inlinedAt: !5696)
!5700 = !DILocation(line: 76, column: 26, scope: !5351, inlinedAt: !5696)
!5701 = !DILocation(line: 76, column: 31, scope: !5351, inlinedAt: !5696)
!5702 = !DILocation(line: 77, column: 9, scope: !5351, inlinedAt: !5696)
!5703 = !DILocation(line: 77, column: 18, scope: !5351, inlinedAt: !5696)
!5704 = !DILocation(line: 0, scope: !5365, inlinedAt: !5705)
!5705 = distinct !DILocation(line: 77, column: 11, scope: !5351, inlinedAt: !5696)
!5706 = !DILocation(line: 43, column: 86, scope: !5365, inlinedAt: !5705)
!5707 = !DILocation(line: 44, column: 13, scope: !5365, inlinedAt: !5705)
!5708 = !DILocation(line: 46, column: 22, scope: !5377, inlinedAt: !5705)
!5709 = !DILocation(line: 46, column: 18, scope: !5377, inlinedAt: !5705)
!5710 = !DILocation(line: 46, column: 29, scope: !5381, inlinedAt: !5705)
!5711 = !DILocation(line: 46, column: 31, scope: !5381, inlinedAt: !5705)
!5712 = !DILocation(line: 46, column: 13, scope: !5377, inlinedAt: !5705)
!5713 = !DILocation(line: 47, column: 24, scope: !5381, inlinedAt: !5705)
!5714 = !DILocation(line: 47, column: 26, scope: !5381, inlinedAt: !5705)
!5715 = !DILocation(line: 0, scope: !5322, inlinedAt: !5716)
!5716 = distinct !DILocation(line: 47, column: 24, scope: !5381, inlinedAt: !5705)
!5717 = !DILocation(line: 52, column: 41, scope: !5322, inlinedAt: !5716)
!5718 = !DILocation(line: 53, column: 22, scope: !5322, inlinedAt: !5716)
!5719 = !DILocation(line: 53, column: 20, scope: !5322, inlinedAt: !5716)
!5720 = !DILocation(line: 53, column: 13, scope: !5322, inlinedAt: !5716)
!5721 = !DILocation(line: 47, column: 19, scope: !5381, inlinedAt: !5705)
!5722 = !DILocation(line: 47, column: 17, scope: !5381, inlinedAt: !5705)
!5723 = !DILocation(line: 47, column: 22, scope: !5381, inlinedAt: !5705)
!5724 = !DILocation(line: 46, column: 37, scope: !5381, inlinedAt: !5705)
!5725 = !DILocation(line: 46, column: 13, scope: !5381, inlinedAt: !5705)
!5726 = distinct !{!5726, !5712, !5727, !1911}
!5727 = !DILocation(line: 47, column: 27, scope: !5377, inlinedAt: !5705)
!5728 = !DILocation(line: 259, column: 13, scope: !5518)
!5729 = distinct !DISubprogram(name: "sse_i", linkageName: "_ZN5sse_iC2Ev", scope: !530, file: !23, line: 35, type: !565, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !564, retainedNodes: !1881)
!5730 = !DILocalVariable(name: "this", arg: 1, scope: !5729, type: !5731, flags: DIFlagArtificial | DIFlagObjectPointer)
!5731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!5732 = !DILocation(line: 0, scope: !5729)
!5733 = !DILocation(line: 35, column: 2, scope: !5729)
!5734 = !DILocation(line: 35, column: 11, scope: !5729)
!5735 = distinct !DISubprogram(linkageName: "_GLOBAL__sub_I_OnDemandBuilder.cxx", scope: !1353, file: !1353, type: !5736, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !1881)
!5736 = !DISubroutineType(types: !1881)
!5737 = !DILocation(line: 0, scope: !5735)
