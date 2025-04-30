; ModuleID = '/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src/LRT/FrameBuffer.cxx'
source_filename = "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src/LRT/FrameBuffer.cxx"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%struct.sse_f = type { [4 x float] }
%"class.RTTL::RTVec_t" = type { i32, i32 }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"struct.LRT::RGBAucharFrameBuffer" = type { ptr, %"class.RTTL::RTVec_t", ptr }
%"struct.LRT::BufferedOpenGLTextureRGBA8FB" = type { %"struct.LRT::OpenGLTextureRGBA8FB.base", i32 }
%"struct.LRT::OpenGLTextureRGBA8FB.base" = type <{ %"struct.LRT::RGBAucharFrameBuffer", i32, %"class.RTTL::RTVec_t", %"class.RTTL::RTVec_t.0" }>
%"class.RTTL::RTVec_t.0" = type { float, float }
%"struct.LRT::OpenGLTextureRGBA8FB" = type <{ %"struct.LRT::RGBAucharFrameBuffer", i32, %"class.RTTL::RTVec_t", %"class.RTTL::RTVec_t.0", [4 x i8] }>

$_ZN4RTTL7RTVec_tILi2EiLi0EEC2ERKiS3_ = comdat any

$_ZN3LRT17MemoryFrameBufferC2Ev = comdat any

$_ZN3LRT28BufferedOpenGLTextureRGBA8FBC2Ev = comdat any

$_ZN5sse_fC2Ev = comdat any

$_ZN3LRT20RGBAucharFrameBufferC2Ev = comdat any

$_ZN3LRT17MemoryFrameBuffer6resizeEii = comdat any

$_ZN3LRT17MemoryFrameBuffer13startNewFrameEv = comdat any

$_ZN3LRT17MemoryFrameBuffer13doneWithFrameEv = comdat any

$_ZN3LRT17MemoryFrameBuffer7displayEv = comdat any

$_ZN3LRT20RGBAucharFrameBuffer6resizeEii = comdat any

$_ZSt3maxIiERKT_S2_S2_ = comdat any

$_Z14nextMultipleOfILi4EiET0_S0_ = comdat any

$_ZNK4RTTL7RTVec_tILi2EiLi0EE5arrayEv = comdat any

$_ZN4RTTL7RTVec_tILi2EiLi0EEcvRNS_8RTData_tILi2EiLi0EEEEv = comdat any

$_ZNK4RTTL7RTVec_tILi2EiLi0EEcvRKNS_8RTData_tILi2EiLi0EEEEv = comdat any

$_ZN4RTTL8RTData_tILi2EiLi0EE9nElementsEv = comdat any

$_Z12aligned_freeIhEvPT_ = comdat any

$_Z14aligned_mallocIhEPT_i = comdat any

$_ZN3LRT20OpenGLTextureRGBA8FBC2Ev = comdat any

$_ZN4RTTL7RTVec_tILi2EiLi0EEC2Ev = comdat any

$_ZN4RTTL7RTVec_tILi2EfLi0EEC2Ev = comdat any

$_ZTVN3LRT17MemoryFrameBufferE = comdat any

$_ZTSN3LRT17MemoryFrameBufferE = comdat any

$_ZTSN3LRT20RGBAucharFrameBufferE = comdat any

$_ZTIN3LRT20RGBAucharFrameBufferE = comdat any

$_ZTIN3LRT17MemoryFrameBufferE = comdat any

$_ZTVN3LRT20RGBAucharFrameBufferE = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1, !dbg !0
@__dso_handle = external hidden global i8
@_ZL8maxFloat = internal global %struct.sse_f zeroinitializer, align 4, !dbg !7
@_ZN3LRT20RGBAucharFrameBuffer7Options7usePBOsE = dso_local global i8 1, align 1, !dbg !390
@_ZN3LRT20RGBAucharFrameBuffer7Options11useMemoryFBE = dso_local global i8 0, align 1, !dbg !398
@_ZN3LRT20RGBAucharFrameBuffer7Options10defaultResE = dso_local global %"class.RTTL::RTVec_t" zeroinitializer, align 4, !dbg !400
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [28 x i8] c"Using memory framebuffer...\00", align 1, !dbg !402
@.str.3 = private unnamed_addr constant [42 x i8] c"PBO: could not allocate PBO frame buffer.\00", align 1, !dbg !409
@.str.4 = private unnamed_addr constant [41 x i8] c"PBO: falling back to non-PBO framebuffer\00", align 1, !dbg !414
@.str.5 = private unnamed_addr constant [26 x i8] c"using non-PBO framebuffer\00", align 1, !dbg !419
@.str.6 = private unnamed_addr constant [56 x i8] c"panic: could not allocate _any_ kind of framebuffer ...\00", align 1, !dbg !424
@_ZTIPKc = external constant ptr
@_ZTVN3LRT17MemoryFrameBufferE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN3LRT17MemoryFrameBufferE, ptr @_ZN3LRT17MemoryFrameBuffer6resizeEii, ptr @_ZN3LRT17MemoryFrameBuffer13startNewFrameEv, ptr @_ZN3LRT17MemoryFrameBuffer13doneWithFrameEv, ptr @_ZN3LRT17MemoryFrameBuffer7displayEv] }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global ptr
@_ZTSN3LRT17MemoryFrameBufferE = linkonce_odr dso_local constant [26 x i8] c"N3LRT17MemoryFrameBufferE\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global ptr
@_ZTSN3LRT20RGBAucharFrameBufferE = linkonce_odr dso_local constant [29 x i8] c"N3LRT20RGBAucharFrameBufferE\00", comdat, align 1
@_ZTIN3LRT20RGBAucharFrameBufferE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN3LRT20RGBAucharFrameBufferE }, comdat, align 8
@_ZTIN3LRT17MemoryFrameBufferE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3LRT17MemoryFrameBufferE, ptr @_ZTIN3LRT20RGBAucharFrameBufferE }, comdat, align 8
@_ZTVN3LRT20RGBAucharFrameBufferE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN3LRT20RGBAucharFrameBufferE, ptr @_ZN3LRT20RGBAucharFrameBuffer6resizeEii, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@.str.7 = private unnamed_addr constant [29 x i8] c"nElements() <= v.nElements()\00", align 1, !dbg !429
@.str.8 = private unnamed_addr constant [88 x i8] c"/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src/RTTL/common/RTData.hxx\00", align 1, !dbg !434
@__PRETTY_FUNCTION__._ZN4RTTL8RTData_tILi2EiLi0EE6assignILi2EiLi0EEEvRKNS0_IXT_ET0_XT1_EEE = private unnamed_addr constant [185 x i8] c"void RTTL::RTData_t<2, int>::assign(const RTData_t<AnotherN, AnotherDataType, AnotherAlign> &) [N = 2, DataType = int, align = 0, AnotherN = 2, AnotherDataType = int, AnotherAlign = 0]\00", align 1, !dbg !439
@_ZTVN3LRT28BufferedOpenGLTextureRGBA8FBE = external unnamed_addr constant { [6 x ptr] }, align 8
@_ZTVN3LRT20OpenGLTextureRGBA8FBE = external unnamed_addr constant { [6 x ptr] }, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_FrameBuffer.cxx, ptr null }]

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" !dbg !1776 {
  call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit), !dbg !1778
  %1 = call i32 @__cxa_atexit(ptr @_ZNSt8ios_base4InitD1Ev, ptr @_ZStL8__ioinit, ptr @__dso_handle) #3, !dbg !1780
  ret void, !dbg !1778
}

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) #3

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.1() #4 section ".text.startup" !dbg !1781 {
  %1 = alloca %struct.sse_f, align 4
  %2 = alloca float, align 4
  %3 = alloca i32, align 4
  store float 0x47EFFFFFE0000000, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1782, metadata !DIExpression()), !dbg !1786
  call void @llvm.dbg.declare(metadata ptr %1, metadata !1789, metadata !DIExpression()), !dbg !1790
  call void @_ZN5sse_fC2Ev(ptr noundef nonnull align 4 dereferenceable(16) %1), !dbg !1790
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1791, metadata !DIExpression()), !dbg !1793
  store i32 0, ptr %3, align 4, !dbg !1793
  br label %4, !dbg !1794

4:                                                ; preds = %7, %0
  %5 = load i32, ptr %3, align 4, !dbg !1795
  %6 = icmp slt i32 %5, 4, !dbg !1797
  br i1 %6, label %7, label %14, !dbg !1798

7:                                                ; preds = %4
  %8 = load float, ptr %2, align 4, !dbg !1799
  %9 = load i32, ptr %3, align 4, !dbg !1800
  %10 = sext i32 %9 to i64, !dbg !1801
  %11 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 %10, !dbg !1801
  store float %8, ptr %11, align 4, !dbg !1802
  %12 = load i32, ptr %3, align 4, !dbg !1803
  %13 = add nsw i32 %12, 1, !dbg !1803
  store i32 %13, ptr %3, align 4, !dbg !1803
  br label %4, !dbg !1804, !llvm.loop !1805

14:                                               ; preds = %4
  %15 = load { <2 x float>, <2 x float> }, ptr %1, align 4, !dbg !1808
  %16 = extractvalue { <2 x float>, <2 x float> } %15, 0, !dbg !1809
  store <2 x float> %16, ptr @_ZL8maxFloat, align 4, !dbg !1809
  %17 = extractvalue { <2 x float>, <2 x float> } %15, 1, !dbg !1809
  store <2 x float> %17, ptr getelementptr inbounds ({ <2 x float>, <2 x float> }, ptr @_ZL8maxFloat, i32 0, i32 1), align 4, !dbg !1809
  ret void, !dbg !1810
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.2() #0 section ".text.startup" !dbg !1811 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 512, ptr %1, align 4, !dbg !1812
  store i32 512, ptr %2, align 4, !dbg !1814
  call void @_ZN4RTTL7RTVec_tILi2EiLi0EEC2ERKiS3_(ptr noundef nonnull align 4 dereferenceable(8) @_ZN3LRT20RGBAucharFrameBuffer7Options10defaultResE, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2), !dbg !1815
  ret void, !dbg !1814
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4RTTL7RTVec_tILi2EiLi0EEC2ERKiS3_(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #5 comdat align 2 !dbg !1816 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1817, metadata !DIExpression()), !dbg !1819
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1820, metadata !DIExpression()), !dbg !1821
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1822, metadata !DIExpression()), !dbg !1823
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds %"class.RTTL::RTVec_t", ptr %7, i32 0, i32 0, !dbg !1824
  %9 = load ptr, ptr %5, align 8, !dbg !1825
  %10 = load i32, ptr %9, align 4, !dbg !1825
  store i32 %10, ptr %8, align 4, !dbg !1824
  %11 = getelementptr inbounds %"class.RTTL::RTVec_t", ptr %7, i32 0, i32 1, !dbg !1826
  %12 = load ptr, ptr %6, align 8, !dbg !1827
  %13 = load i32, ptr %12, align 4, !dbg !1827
  store i32 %13, ptr %11, align 4, !dbg !1826
  ret void, !dbg !1828
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef ptr @_ZN3LRT20RGBAucharFrameBuffer6createEv() #6 align 2 personality ptr @__gxx_personality_v0 !dbg !1829 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1830, metadata !DIExpression()), !dbg !1831
  store ptr null, ptr %2, align 8, !dbg !1831
  %5 = load i8, ptr @_ZN3LRT20RGBAucharFrameBuffer7Options11useMemoryFBE, align 1, !dbg !1832
  %6 = trunc i8 %5 to i1, !dbg !1832
  br i1 %6, label %7, label %16, !dbg !1834

7:                                                ; preds = %0
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str), !dbg !1835
  %9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !1837
  %10 = call noalias noundef nonnull ptr @_Znwm(i64 noundef 24) #14, !dbg !1838, !heapallocsite !1839
  invoke void @_ZN3LRT17MemoryFrameBufferC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %11 unwind label %12, !dbg !1858

11:                                               ; preds = %7
  store ptr %10, ptr %1, align 8, !dbg !1859
  br label %46, !dbg !1859

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup, !dbg !1860
  %14 = extractvalue { ptr, i32 } %13, 0, !dbg !1860
  store ptr %14, ptr %3, align 8, !dbg !1860
  %15 = extractvalue { ptr, i32 } %13, 1, !dbg !1860
  store i32 %15, ptr %4, align 4, !dbg !1860
  call void @_ZdlPv(ptr noundef %10) #15, !dbg !1838
  br label %48, !dbg !1838

16:                                               ; preds = %0
  %17 = load i8, ptr @_ZN3LRT20RGBAucharFrameBuffer7Options7usePBOsE, align 1, !dbg !1861
  %18 = trunc i8 %17 to i1, !dbg !1861
  br i1 %18, label %19, label %30, !dbg !1863

19:                                               ; preds = %16
  %20 = call noundef ptr @_ZN3LRT14PBOFrameBuffer6createEv(), !dbg !1864
  store ptr %20, ptr %2, align 8, !dbg !1866
  %21 = load ptr, ptr %2, align 8, !dbg !1867
  %22 = icmp ne ptr %21, null, !dbg !1867
  br i1 %22, label %23, label %25, !dbg !1869

23:                                               ; preds = %19
  %24 = load ptr, ptr %2, align 8, !dbg !1870
  store ptr %24, ptr %1, align 8, !dbg !1871
  br label %46, !dbg !1871

25:                                               ; preds = %19
  %26 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.3), !dbg !1872
  %27 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !1873
  %28 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.4), !dbg !1874
  %29 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !1875
  br label %33, !dbg !1876

30:                                               ; preds = %16
  %31 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.5), !dbg !1877
  %32 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !1878
  br label %33

33:                                               ; preds = %30, %25
  %34 = call noalias noundef nonnull ptr @_Znwm(i64 noundef 48) #14, !dbg !1879, !heapallocsite !1880
  invoke void @_ZN3LRT28BufferedOpenGLTextureRGBA8FBC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %34)
          to label %35 unwind label %40, !dbg !1882

35:                                               ; preds = %33
  store ptr %34, ptr %2, align 8, !dbg !1883
  %36 = load ptr, ptr %2, align 8, !dbg !1884
  %37 = icmp eq ptr %36, null, !dbg !1886
  br i1 %37, label %38, label %44, !dbg !1887

38:                                               ; preds = %35
  %39 = call ptr @__cxa_allocate_exception(i64 8) #3, !dbg !1888
  store ptr @.str.6, ptr %39, align 16, !dbg !1888
  call void @__cxa_throw(ptr %39, ptr @_ZTIPKc, ptr null) #16, !dbg !1888
  unreachable, !dbg !1888

40:                                               ; preds = %33
  %41 = landingpad { ptr, i32 }
          cleanup, !dbg !1889
  %42 = extractvalue { ptr, i32 } %41, 0, !dbg !1889
  store ptr %42, ptr %3, align 8, !dbg !1889
  %43 = extractvalue { ptr, i32 } %41, 1, !dbg !1889
  store i32 %43, ptr %4, align 4, !dbg !1889
  call void @_ZdlPv(ptr noundef %34) #15, !dbg !1879
  br label %48, !dbg !1879

44:                                               ; preds = %35
  %45 = load ptr, ptr %2, align 8, !dbg !1890
  store ptr %45, ptr %1, align 8, !dbg !1891
  br label %46, !dbg !1891

46:                                               ; preds = %44, %23, %11
  %47 = load ptr, ptr %1, align 8, !dbg !1889
  ret ptr %47, !dbg !1889

48:                                               ; preds = %40, %12
  %49 = load ptr, ptr %3, align 8, !dbg !1838
  %50 = load i32, ptr %4, align 4, !dbg !1838
  %51 = insertvalue { ptr, i32 } poison, ptr %49, 0, !dbg !1838
  %52 = insertvalue { ptr, i32 } %51, i32 %50, 1, !dbg !1838
  resume { ptr, i32 } %52, !dbg !1838
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #7

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) #8

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN3LRT17MemoryFrameBufferC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #9 comdat align 2 !dbg !1892 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1893, metadata !DIExpression()), !dbg !1894
  %3 = load ptr, ptr %2, align 8
  call void @_ZN3LRT20RGBAucharFrameBufferC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3), !dbg !1895
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN3LRT17MemoryFrameBufferE, i32 0, inrange i32 0, i32 2), ptr %3, align 8, !dbg !1896
  %4 = getelementptr inbounds %"struct.LRT::RGBAucharFrameBuffer", ptr %3, i32 0, i32 2, !dbg !1897
  store ptr null, ptr %4, align 8, !dbg !1899
  ret void, !dbg !1900
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) #10

declare noundef ptr @_ZN3LRT14PBOFrameBuffer6createEv() #1

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN3LRT28BufferedOpenGLTextureRGBA8FBC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #9 comdat align 2 !dbg !1901 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1906, metadata !DIExpression()), !dbg !1908
  %3 = load ptr, ptr %2, align 8
  call void @_ZN3LRT20OpenGLTextureRGBA8FBC2Ev(ptr noundef nonnull align 8 dereferenceable(44) %3), !dbg !1909
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN3LRT28BufferedOpenGLTextureRGBA8FBE, i32 0, inrange i32 0, i32 2), ptr %3, align 8, !dbg !1910
  %4 = getelementptr inbounds %"struct.LRT::BufferedOpenGLTextureRGBA8FB", ptr %3, i32 0, i32 1, !dbg !1911
  store i32 0, ptr %4, align 4, !dbg !1911
  ret void, !dbg !1912
}

declare ptr @__cxa_allocate_exception(i64)

declare void @__cxa_throw(ptr, ptr, ptr)

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local ptr @lrtCreateTextureFB(i32 noundef %0, i32 noundef %1) #6 !dbg !1913 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1919, metadata !DIExpression()), !dbg !1920
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1921, metadata !DIExpression()), !dbg !1922
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1923, metadata !DIExpression()), !dbg !1925
  %6 = call noundef ptr @_ZN3LRT20RGBAucharFrameBuffer6createEv(), !dbg !1926
  store ptr %6, ptr %5, align 8, !dbg !1925
  %7 = load ptr, ptr %5, align 8, !dbg !1927
  %8 = load i32, ptr %3, align 4, !dbg !1928
  %9 = load i32, ptr %4, align 4, !dbg !1929
  %10 = load ptr, ptr %7, align 8, !dbg !1930
  %11 = getelementptr inbounds ptr, ptr %10, i64 0, !dbg !1930
  %12 = load ptr, ptr %11, align 8, !dbg !1930
  call void %12(ptr noundef nonnull align 8 dereferenceable(24) %7, i32 noundef %8, i32 noundef %9), !dbg !1930
  %13 = load ptr, ptr %5, align 8, !dbg !1931
  ret ptr %13, !dbg !1932
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @lrtDestroyFB(ptr noundef %0) #11 !dbg !1933 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1937, metadata !DIExpression()), !dbg !1938
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1939, metadata !DIExpression()), !dbg !1940
  %4 = load ptr, ptr %2, align 8, !dbg !1941
  store ptr %4, ptr %3, align 8, !dbg !1940
  %5 = load ptr, ptr %3, align 8, !dbg !1942
  %6 = icmp ne ptr %5, null, !dbg !1942
  br i1 %6, label %7, label %12, !dbg !1944

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8, !dbg !1945
  %9 = icmp eq ptr %8, null, !dbg !1946
  br i1 %9, label %11, label %10, !dbg !1946

10:                                               ; preds = %7
  call void @_ZdlPv(ptr noundef %8) #15, !dbg !1946
  br label %11, !dbg !1946

11:                                               ; preds = %10, %7
  br label %12, !dbg !1946

12:                                               ; preds = %11, %1
  ret void, !dbg !1947
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @lrtDisplayFB(ptr noundef %0) #6 !dbg !1948 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1949, metadata !DIExpression()), !dbg !1950
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1951, metadata !DIExpression()), !dbg !1952
  %4 = load ptr, ptr %2, align 8, !dbg !1953
  store ptr %4, ptr %3, align 8, !dbg !1952
  %5 = load ptr, ptr %3, align 8, !dbg !1954
  %6 = icmp ne ptr %5, null, !dbg !1954
  br i1 %6, label %7, label %12, !dbg !1956

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8, !dbg !1957
  %9 = load ptr, ptr %8, align 8, !dbg !1958
  %10 = getelementptr inbounds ptr, ptr %9, i64 3, !dbg !1958
  %11 = load ptr, ptr %10, align 8, !dbg !1958
  call void %11(ptr noundef nonnull align 8 dereferenceable(24) %8), !dbg !1958
  br label %12, !dbg !1957

12:                                               ; preds = %7, %1
  ret void, !dbg !1959
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN5sse_fC2Ev(ptr noundef nonnull align 4 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 !dbg !1960 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1961, metadata !DIExpression()), !dbg !1963
  %3 = load ptr, ptr %2, align 8
  ret void, !dbg !1964
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN3LRT20RGBAucharFrameBufferC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #9 comdat align 2 !dbg !1965 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1966, metadata !DIExpression()), !dbg !1967
  %5 = load ptr, ptr %2, align 8
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN3LRT20RGBAucharFrameBufferE, i32 0, inrange i32 0, i32 2), ptr %5, align 8, !dbg !1968
  %6 = getelementptr inbounds %"struct.LRT::RGBAucharFrameBuffer", ptr %5, i32 0, i32 1, !dbg !1969
  store i32 0, ptr %3, align 4, !dbg !1970
  store i32 0, ptr %4, align 4, !dbg !1971
  call void @_ZN4RTTL7RTVec_tILi2EiLi0EEC2ERKiS3_(ptr noundef nonnull align 4 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4), !dbg !1969
  %7 = getelementptr inbounds %"struct.LRT::RGBAucharFrameBuffer", ptr %5, i32 0, i32 2, !dbg !1972
  store ptr null, ptr %7, align 8, !dbg !1972
  ret void, !dbg !1973
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN3LRT17MemoryFrameBuffer6resizeEii(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #6 comdat align 2 !dbg !1974 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1975, metadata !DIExpression()), !dbg !1976
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1977, metadata !DIExpression()), !dbg !1978
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1979, metadata !DIExpression()), !dbg !1980
  %7 = load ptr, ptr %4, align 8
  %8 = load i32, ptr %5, align 4, !dbg !1981
  %9 = load i32, ptr %6, align 4, !dbg !1982
  call void @_ZN3LRT20RGBAucharFrameBuffer6resizeEii(ptr noundef nonnull align 8 dereferenceable(24) %7, i32 noundef %8, i32 noundef %9), !dbg !1983
  %10 = getelementptr inbounds %"struct.LRT::RGBAucharFrameBuffer", ptr %7, i32 0, i32 2, !dbg !1984
  %11 = load ptr, ptr %10, align 8, !dbg !1984
  %12 = icmp ne ptr %11, null, !dbg !1984
  br i1 %12, label %13, label %16, !dbg !1986

13:                                               ; preds = %3
  %14 = getelementptr inbounds %"struct.LRT::RGBAucharFrameBuffer", ptr %7, i32 0, i32 2, !dbg !1987
  %15 = load ptr, ptr %14, align 8, !dbg !1987
  call void @_Z12aligned_freeIhEvPT_(ptr noundef %15), !dbg !1988
  br label %16, !dbg !1988

16:                                               ; preds = %13, %3
  %17 = getelementptr inbounds %"struct.LRT::RGBAucharFrameBuffer", ptr %7, i32 0, i32 1, !dbg !1989
  %18 = getelementptr inbounds %"class.RTTL::RTVec_t", ptr %17, i32 0, i32 0, !dbg !1990
  %19 = load i32, ptr %18, align 8, !dbg !1990
  %20 = mul nsw i32 4, %19, !dbg !1991
  %21 = getelementptr inbounds %"struct.LRT::RGBAucharFrameBuffer", ptr %7, i32 0, i32 1, !dbg !1992
  %22 = getelementptr inbounds %"class.RTTL::RTVec_t", ptr %21, i32 0, i32 1, !dbg !1993
  %23 = load i32, ptr %22, align 4, !dbg !1993
  %24 = mul nsw i32 %20, %23, !dbg !1994
  %25 = call noundef ptr @_Z14aligned_mallocIhEPT_i(i32 noundef %24), !dbg !1995
  %26 = getelementptr inbounds %"struct.LRT::RGBAucharFrameBuffer", ptr %7, i32 0, i32 2, !dbg !1996
  store ptr %25, ptr %26, align 8, !dbg !1997
  ret void, !dbg !1998
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN3LRT17MemoryFrameBuffer13startNewFrameEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #11 comdat align 2 !dbg !1999 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2000, metadata !DIExpression()), !dbg !2001
  %3 = load ptr, ptr %2, align 8
  ret void, !dbg !2002
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN3LRT17MemoryFrameBuffer13doneWithFrameEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #11 comdat align 2 !dbg !2003 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2004, metadata !DIExpression()), !dbg !2005
  %3 = load ptr, ptr %2, align 8
  ret void, !dbg !2006
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN3LRT17MemoryFrameBuffer7displayEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #11 comdat align 2 !dbg !2007 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2008, metadata !DIExpression()), !dbg !2009
  %3 = load ptr, ptr %2, align 8
  ret void, !dbg !2010
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN3LRT20RGBAucharFrameBuffer6resizeEii(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #6 comdat align 2 !dbg !2011 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i1, align 1
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca i32, align 4
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  %21 = alloca ptr, align 8
  %22 = alloca ptr, align 8
  %23 = alloca ptr, align 8
  %24 = alloca ptr, align 8
  %25 = alloca ptr, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca %"class.RTTL::RTVec_t", align 4
  store ptr %0, ptr %25, align 8
  call void @llvm.dbg.declare(metadata ptr %25, metadata !2012, metadata !DIExpression()), !dbg !2013
  store i32 %1, ptr %26, align 4
  call void @llvm.dbg.declare(metadata ptr %26, metadata !2014, metadata !DIExpression()), !dbg !2015
  store i32 %2, ptr %27, align 4
  call void @llvm.dbg.declare(metadata ptr %27, metadata !2016, metadata !DIExpression()), !dbg !2017
  %33 = load ptr, ptr %25, align 8
  store i32 32, ptr %28, align 4, !dbg !2018
  %34 = load i32, ptr %26, align 4, !dbg !2019
  %35 = call noundef i32 @_Z14nextMultipleOfILi4EiET0_S0_(i32 noundef %34), !dbg !2020
  store i32 %35, ptr %29, align 4, !dbg !2020
  %36 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3maxIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %28, ptr noundef nonnull align 4 dereferenceable(4) %29), !dbg !2021
  %37 = load i32, ptr %36, align 4, !dbg !2021
  store i32 %37, ptr %26, align 4, !dbg !2022
  store i32 32, ptr %30, align 4, !dbg !2023
  %38 = load i32, ptr %27, align 4, !dbg !2024
  %39 = call noundef i32 @_Z14nextMultipleOfILi4EiET0_S0_(i32 noundef %38), !dbg !2025
  store i32 %39, ptr %31, align 4, !dbg !2025
  %40 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3maxIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %30, ptr noundef nonnull align 4 dereferenceable(4) %31), !dbg !2026
  %41 = load i32, ptr %40, align 4, !dbg !2026
  store i32 %41, ptr %27, align 4, !dbg !2027
  call void @llvm.dbg.declare(metadata ptr %32, metadata !2028, metadata !DIExpression()), !dbg !2029
  call void @_ZN4RTTL7RTVec_tILi2EiLi0EEC2ERKiS3_(ptr noundef nonnull align 4 dereferenceable(8) %32, ptr noundef nonnull align 4 dereferenceable(4) %26, ptr noundef nonnull align 4 dereferenceable(4) %27), !dbg !2029
  %42 = getelementptr inbounds %"struct.LRT::RGBAucharFrameBuffer", ptr %33, i32 0, i32 1, !dbg !2030
  store ptr %42, ptr %23, align 8
  call void @llvm.dbg.declare(metadata ptr %23, metadata !2032, metadata !DIExpression()), !dbg !2038
  store ptr %32, ptr %24, align 8
  call void @llvm.dbg.declare(metadata ptr %24, metadata !2040, metadata !DIExpression()), !dbg !2041
  %43 = load ptr, ptr %23, align 8, !dbg !2042
  %44 = load ptr, ptr %24, align 8, !dbg !2043
  store ptr %43, ptr %17, align 8
  call void @llvm.dbg.declare(metadata ptr %17, metadata !2044, metadata !DIExpression()), !dbg !2046
  store ptr %44, ptr %18, align 8
  call void @llvm.dbg.declare(metadata ptr %18, metadata !2048, metadata !DIExpression()), !dbg !2049
  %45 = load ptr, ptr %17, align 8, !dbg !2050
  %46 = call noundef nonnull align 4 dereferenceable(8) ptr @_ZNK4RTTL7RTVec_tILi2EiLi0EE5arrayEv(ptr noundef nonnull align 4 dereferenceable(8) %45), !dbg !2051
  %47 = load ptr, ptr %18, align 8, !dbg !2052
  %48 = call noundef nonnull align 4 dereferenceable(8) ptr @_ZNK4RTTL7RTVec_tILi2EiLi0EE5arrayEv(ptr noundef nonnull align 4 dereferenceable(8) %47), !dbg !2053
  store ptr %46, ptr %14, align 8
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2054, metadata !DIExpression()), !dbg !2059
  store ptr %48, ptr %15, align 8
  call void @llvm.dbg.declare(metadata ptr %15, metadata !2061, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.declare(metadata ptr %16, metadata !2063, metadata !DIExpression()), !dbg !2065
  store i32 0, ptr %16, align 4, !dbg !2065
  br label %49, !dbg !2066

49:                                               ; preds = %69, %3
  %50 = load i32, ptr %16, align 4, !dbg !2067
  %51 = icmp slt i32 %50, 2, !dbg !2069
  br i1 %51, label %52, label %72, !dbg !2070

52:                                               ; preds = %49
  %53 = load ptr, ptr %14, align 8, !dbg !2071
  %54 = load i32, ptr %16, align 4, !dbg !2073
  store ptr %53, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2074, metadata !DIExpression()), !dbg !2077
  store i32 %54, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2079, metadata !DIExpression()), !dbg !2080
  %55 = load ptr, ptr %9, align 8
  %56 = load i32, ptr %10, align 4, !dbg !2081
  %57 = sext i32 %56 to i64, !dbg !2082
  %58 = getelementptr inbounds [2 x i32], ptr %55, i64 0, i64 %57, !dbg !2082
  %59 = load i32, ptr %58, align 4, !dbg !2082
  %60 = load ptr, ptr %15, align 8, !dbg !2083
  %61 = load i32, ptr %16, align 4, !dbg !2084
  store ptr %60, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2074, metadata !DIExpression()), !dbg !2085
  store i32 %61, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2079, metadata !DIExpression()), !dbg !2087
  %62 = load ptr, ptr %11, align 8
  %63 = load i32, ptr %12, align 4, !dbg !2088
  %64 = sext i32 %63 to i64, !dbg !2089
  %65 = getelementptr inbounds [2 x i32], ptr %62, i64 0, i64 %64, !dbg !2089
  %66 = load i32, ptr %65, align 4, !dbg !2089
  %67 = icmp ne i32 %59, %66, !dbg !2090
  br i1 %67, label %68, label %69, !dbg !2091

68:                                               ; preds = %52
  store i1 false, ptr %13, align 1, !dbg !2092
  br label %73, !dbg !2092

69:                                               ; preds = %52
  %70 = load i32, ptr %16, align 4, !dbg !2093
  %71 = add nsw i32 %70, 1, !dbg !2093
  store i32 %71, ptr %16, align 4, !dbg !2093
  br label %49, !dbg !2094, !llvm.loop !2095

72:                                               ; preds = %49
  store i1 true, ptr %13, align 1, !dbg !2097
  br label %73, !dbg !2097

73:                                               ; preds = %68, %72
  %74 = load i1, ptr %13, align 1, !dbg !2098
  %75 = xor i1 %74, true, !dbg !2099
  br i1 %75, label %76, label %108, !dbg !2100

76:                                               ; preds = %73
  %77 = getelementptr inbounds %"struct.LRT::RGBAucharFrameBuffer", ptr %33, i32 0, i32 1, !dbg !2101
  store ptr %77, ptr %19, align 8
  call void @llvm.dbg.declare(metadata ptr %19, metadata !2103, metadata !DIExpression()), !dbg !2105
  store ptr %32, ptr %20, align 8
  call void @llvm.dbg.declare(metadata ptr %20, metadata !2107, metadata !DIExpression()), !dbg !2108
  %78 = load ptr, ptr %19, align 8
  call void @llvm.dbg.declare(metadata ptr %21, metadata !2109, metadata !DIExpression()), !dbg !2110
  %79 = call noundef nonnull align 4 dereferenceable(8) ptr @_ZN4RTTL7RTVec_tILi2EiLi0EEcvRNS_8RTData_tILi2EiLi0EEEEv(ptr noundef nonnull align 4 dereferenceable(8) %78), !dbg !2111
  store ptr %79, ptr %21, align 8, !dbg !2110
  call void @llvm.dbg.declare(metadata ptr %22, metadata !2112, metadata !DIExpression()), !dbg !2113
  %80 = load ptr, ptr %20, align 8, !dbg !2114
  %81 = call noundef nonnull align 4 dereferenceable(8) ptr @_ZNK4RTTL7RTVec_tILi2EiLi0EEcvRKNS_8RTData_tILi2EiLi0EEEEv(ptr noundef nonnull align 4 dereferenceable(8) %80), !dbg !2114
  store ptr %81, ptr %22, align 8, !dbg !2113
  %82 = load ptr, ptr %21, align 8, !dbg !2115
  %83 = load ptr, ptr %22, align 8, !dbg !2116
  store ptr %82, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2117, metadata !DIExpression()), !dbg !2125
  store ptr %83, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2127, metadata !DIExpression()), !dbg !2128
  %84 = load ptr, ptr %6, align 8
  %85 = call noundef i32 @_ZN4RTTL8RTData_tILi2EiLi0EE9nElementsEv(), !dbg !2129
  %86 = load ptr, ptr %7, align 8, !dbg !2129
  %87 = call noundef i32 @_ZN4RTTL8RTData_tILi2EiLi0EE9nElementsEv(), !dbg !2129
  %88 = icmp sle i32 %85, %87, !dbg !2129
  br i1 %88, label %89, label %90, !dbg !2129

89:                                               ; preds = %76
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2130, metadata !DIExpression()), !dbg !2132
  store i32 0, ptr %8, align 4, !dbg !2132
  br label %91, !dbg !2133

90:                                               ; preds = %76
  call void @__assert_fail(ptr noundef @.str.7, ptr noundef @.str.8, i32 noundef 44, ptr noundef @__PRETTY_FUNCTION__._ZN4RTTL8RTData_tILi2EiLi0EE6assignILi2EiLi0EEEvRKNS0_IXT_ET0_XT1_EEE) #17, !dbg !2129
  unreachable, !dbg !2129

91:                                               ; preds = %94, %89
  %92 = load i32, ptr %8, align 4, !dbg !2134
  %93 = icmp slt i32 %92, 2, !dbg !2136
  br i1 %93, label %94, label %107, !dbg !2137

94:                                               ; preds = %91
  %95 = load ptr, ptr %7, align 8, !dbg !2138
  %96 = load i32, ptr %8, align 4, !dbg !2139
  store ptr %95, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2074, metadata !DIExpression()), !dbg !2140
  store i32 %96, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2079, metadata !DIExpression()), !dbg !2142
  %97 = load ptr, ptr %4, align 8
  %98 = load i32, ptr %5, align 4, !dbg !2143
  %99 = sext i32 %98 to i64, !dbg !2144
  %100 = getelementptr inbounds [2 x i32], ptr %97, i64 0, i64 %99, !dbg !2144
  %101 = load i32, ptr %100, align 4, !dbg !2144
  %102 = load i32, ptr %8, align 4, !dbg !2145
  %103 = sext i32 %102 to i64, !dbg !2146
  %104 = getelementptr inbounds [2 x i32], ptr %84, i64 0, i64 %103, !dbg !2146
  store i32 %101, ptr %104, align 4, !dbg !2147
  %105 = load i32, ptr %8, align 4, !dbg !2148
  %106 = add nsw i32 %105, 1, !dbg !2148
  store i32 %106, ptr %8, align 4, !dbg !2148
  br label %91, !dbg !2149, !llvm.loop !2150

107:                                              ; preds = %91
  br label %108, !dbg !2152

108:                                              ; preds = %107, %73
  ret void, !dbg !2153
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3maxIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #11 comdat !dbg !2154 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2160, metadata !DIExpression()), !dbg !2162
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2163, metadata !DIExpression()), !dbg !2164
  %6 = load ptr, ptr %4, align 8, !dbg !2165
  %7 = load i32, ptr %6, align 4, !dbg !2165
  %8 = load ptr, ptr %5, align 8, !dbg !2167
  %9 = load i32, ptr %8, align 4, !dbg !2167
  %10 = icmp slt i32 %7, %9, !dbg !2168
  br i1 %10, label %11, label %13, !dbg !2169

11:                                               ; preds = %2
  %12 = load ptr, ptr %5, align 8, !dbg !2170
  store ptr %12, ptr %3, align 8, !dbg !2171
  br label %15, !dbg !2171

13:                                               ; preds = %2
  %14 = load ptr, ptr %4, align 8, !dbg !2172
  store ptr %14, ptr %3, align 8, !dbg !2173
  br label %15, !dbg !2173

15:                                               ; preds = %13, %11
  %16 = load ptr, ptr %3, align 8, !dbg !2174
  ret ptr %16, !dbg !2174
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @_Z14nextMultipleOfILi4EiET0_S0_(i32 noundef %0) #11 comdat !dbg !2175 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2179, metadata !DIExpression()), !dbg !2180
  %3 = load i32, ptr %2, align 4, !dbg !2181
  %4 = add nsw i32 %3, 4, !dbg !2182
  %5 = sub nsw i32 %4, 1, !dbg !2183
  %6 = sdiv i32 %5, 4, !dbg !2184
  %7 = mul nsw i32 %6, 4, !dbg !2185
  ret i32 %7, !dbg !2186
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(8) ptr @_ZNK4RTTL7RTVec_tILi2EiLi0EE5arrayEv(ptr noundef nonnull align 4 dereferenceable(8) %0) #11 comdat align 2 !dbg !2187 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2188, metadata !DIExpression()), !dbg !2190
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.RTTL::RTVec_t", ptr %3, i32 0, i32 0, !dbg !2191
  ret ptr %4, !dbg !2192
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(8) ptr @_ZN4RTTL7RTVec_tILi2EiLi0EEcvRNS_8RTData_tILi2EiLi0EEEEv(ptr noundef nonnull align 4 dereferenceable(8) %0) #11 comdat align 2 !dbg !2193 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2194, metadata !DIExpression()), !dbg !2195
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.RTTL::RTVec_t", ptr %3, i32 0, i32 0, !dbg !2196
  ret ptr %4, !dbg !2197
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(8) ptr @_ZNK4RTTL7RTVec_tILi2EiLi0EEcvRKNS_8RTData_tILi2EiLi0EEEEv(ptr noundef nonnull align 4 dereferenceable(8) %0) #11 comdat align 2 !dbg !2198 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2199, metadata !DIExpression()), !dbg !2200
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.RTTL::RTVec_t", ptr %3, i32 0, i32 0, !dbg !2201
  ret ptr %4, !dbg !2202
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZN4RTTL8RTData_tILi2EiLi0EE9nElementsEv() #11 comdat align 2 !dbg !2203 {
  ret i32 2, !dbg !2204
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #12

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_Z12aligned_freeIhEvPT_(ptr noundef %0) #6 comdat !dbg !2205 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2210, metadata !DIExpression()), !dbg !2211
  %4 = load ptr, ptr %3, align 8, !dbg !2212
  store ptr %4, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2213, metadata !DIExpression()), !dbg !2215
  %5 = load ptr, ptr %2, align 8, !dbg !2217
  call void @free(ptr noundef %5) #3, !dbg !2218
  ret void, !dbg !2219
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @_Z14aligned_mallocIhEPT_i(i32 noundef %0) #6 comdat !dbg !2220 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2223, metadata !DIExpression()), !dbg !2224
  %5 = load i32, ptr %4, align 4, !dbg !2225
  %6 = sext i32 %5 to i64, !dbg !2225
  %7 = mul i64 %6, 1, !dbg !2226
  %8 = trunc i64 %7 to i32, !dbg !2225
  store i32 %8, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2227, metadata !DIExpression()), !dbg !2231
  store i32 64, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2233, metadata !DIExpression()), !dbg !2234
  %9 = load i32, ptr %3, align 4, !dbg !2235
  %10 = sext i32 %9 to i64, !dbg !2235
  %11 = load i32, ptr %2, align 4, !dbg !2236
  %12 = sext i32 %11 to i64, !dbg !2236
  %13 = call noalias ptr @memalign(i64 noundef %10, i64 noundef %12) #3, !dbg !2237
  call void @llvm.assume(i1 true) [ "align"(ptr %13, i64 %10) ], !dbg !2237
  ret ptr %13, !dbg !2238
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #2

; Function Attrs: nounwind
declare noalias ptr @memalign(i64 noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN3LRT20OpenGLTextureRGBA8FBC2Ev(ptr noundef nonnull align 8 dereferenceable(44) %0) unnamed_addr #9 comdat align 2 !dbg !2239 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca %"class.RTTL::RTVec_t", align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store ptr %0, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2245, metadata !DIExpression()), !dbg !2247
  %15 = load ptr, ptr %11, align 8
  call void @_ZN3LRT20RGBAucharFrameBufferC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %15), !dbg !2248
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN3LRT20OpenGLTextureRGBA8FBE, i32 0, inrange i32 0, i32 2), ptr %15, align 8, !dbg !2249
  %16 = getelementptr inbounds %"struct.LRT::OpenGLTextureRGBA8FB", ptr %15, i32 0, i32 2, !dbg !2248
  call void @_ZN4RTTL7RTVec_tILi2EiLi0EEC2Ev(ptr noundef nonnull align 4 dereferenceable(8) %16), !dbg !2248
  %17 = getelementptr inbounds %"struct.LRT::OpenGLTextureRGBA8FB", ptr %15, i32 0, i32 3, !dbg !2248
  call void @_ZN4RTTL7RTVec_tILi2EfLi0EEC2Ev(ptr noundef nonnull align 4 dereferenceable(8) %17), !dbg !2248
  %18 = getelementptr inbounds %"struct.LRT::OpenGLTextureRGBA8FB", ptr %15, i32 0, i32 1, !dbg !2250
  call void @glGenTextures(i32 noundef 1, ptr noundef %18), !dbg !2252
  %19 = getelementptr inbounds %"struct.LRT::OpenGLTextureRGBA8FB", ptr %15, i32 0, i32 1, !dbg !2253
  %20 = load i32, ptr %19, align 8, !dbg !2253
  call void @glBindTexture(i32 noundef 3553, i32 noundef %20), !dbg !2254
  store i32 0, ptr %13, align 4, !dbg !2255
  store i32 0, ptr %14, align 4, !dbg !2256
  call void @_ZN4RTTL7RTVec_tILi2EiLi0EEC2ERKiS3_(ptr noundef nonnull align 4 dereferenceable(8) %12, ptr noundef nonnull align 4 dereferenceable(4) %13, ptr noundef nonnull align 4 dereferenceable(4) %14), !dbg !2257
  %21 = getelementptr inbounds %"struct.LRT::OpenGLTextureRGBA8FB", ptr %15, i32 0, i32 2, !dbg !2258
  store ptr %21, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2103, metadata !DIExpression()), !dbg !2259
  store ptr %12, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2107, metadata !DIExpression()), !dbg !2261
  %22 = load ptr, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2109, metadata !DIExpression()), !dbg !2262
  %23 = call noundef nonnull align 4 dereferenceable(8) ptr @_ZN4RTTL7RTVec_tILi2EiLi0EEcvRNS_8RTData_tILi2EiLi0EEEEv(ptr noundef nonnull align 4 dereferenceable(8) %22), !dbg !2263
  store ptr %23, ptr %9, align 8, !dbg !2262
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2112, metadata !DIExpression()), !dbg !2264
  %24 = load ptr, ptr %8, align 8, !dbg !2265
  %25 = call noundef nonnull align 4 dereferenceable(8) ptr @_ZNK4RTTL7RTVec_tILi2EiLi0EEcvRKNS_8RTData_tILi2EiLi0EEEEv(ptr noundef nonnull align 4 dereferenceable(8) %24), !dbg !2265
  store ptr %25, ptr %10, align 8, !dbg !2264
  %26 = load ptr, ptr %9, align 8, !dbg !2266
  %27 = load ptr, ptr %10, align 8, !dbg !2267
  store ptr %26, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2117, metadata !DIExpression()), !dbg !2268
  store ptr %27, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2127, metadata !DIExpression()), !dbg !2270
  %28 = load ptr, ptr %4, align 8
  %29 = call noundef i32 @_ZN4RTTL8RTData_tILi2EiLi0EE9nElementsEv(), !dbg !2271
  %30 = load ptr, ptr %5, align 8, !dbg !2271
  %31 = call noundef i32 @_ZN4RTTL8RTData_tILi2EiLi0EE9nElementsEv(), !dbg !2271
  %32 = icmp sle i32 %29, %31, !dbg !2271
  br i1 %32, label %33, label %34, !dbg !2271

33:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2130, metadata !DIExpression()), !dbg !2272
  store i32 0, ptr %6, align 4, !dbg !2272
  br label %35, !dbg !2273

34:                                               ; preds = %1
  call void @__assert_fail(ptr noundef @.str.7, ptr noundef @.str.8, i32 noundef 44, ptr noundef @__PRETTY_FUNCTION__._ZN4RTTL8RTData_tILi2EiLi0EE6assignILi2EiLi0EEEvRKNS0_IXT_ET0_XT1_EEE) #17, !dbg !2271
  unreachable, !dbg !2271

35:                                               ; preds = %38, %33
  %36 = load i32, ptr %6, align 4, !dbg !2274
  %37 = icmp slt i32 %36, 2, !dbg !2275
  br i1 %37, label %38, label %51, !dbg !2276

38:                                               ; preds = %35
  %39 = load ptr, ptr %5, align 8, !dbg !2277
  %40 = load i32, ptr %6, align 4, !dbg !2278
  store ptr %39, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2074, metadata !DIExpression()), !dbg !2279
  store i32 %40, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2079, metadata !DIExpression()), !dbg !2281
  %41 = load ptr, ptr %2, align 8
  %42 = load i32, ptr %3, align 4, !dbg !2282
  %43 = sext i32 %42 to i64, !dbg !2283
  %44 = getelementptr inbounds [2 x i32], ptr %41, i64 0, i64 %43, !dbg !2283
  %45 = load i32, ptr %44, align 4, !dbg !2283
  %46 = load i32, ptr %6, align 4, !dbg !2284
  %47 = sext i32 %46 to i64, !dbg !2285
  %48 = getelementptr inbounds [2 x i32], ptr %28, i64 0, i64 %47, !dbg !2285
  store i32 %45, ptr %48, align 4, !dbg !2286
  %49 = load i32, ptr %6, align 4, !dbg !2287
  %50 = add nsw i32 %49, 1, !dbg !2287
  store i32 %50, ptr %6, align 4, !dbg !2287
  br label %35, !dbg !2288, !llvm.loop !2289

51:                                               ; preds = %35
  ret void, !dbg !2291
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4RTTL7RTVec_tILi2EiLi0EEC2Ev(ptr noundef nonnull align 4 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 !dbg !2292 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2293, metadata !DIExpression()), !dbg !2294
  %3 = load ptr, ptr %2, align 8
  ret void, !dbg !2295
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4RTTL7RTVec_tILi2EfLi0EEC2Ev(ptr noundef nonnull align 4 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 !dbg !2296 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2297, metadata !DIExpression()), !dbg !2299
  %3 = load ptr, ptr %2, align 8
  ret void, !dbg !2300
}

declare void @glGenTextures(i32 noundef, ptr noundef) #1

declare void @glBindTexture(i32 noundef, i32 noundef) #1

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_FrameBuffer.cxx() #0 section ".text.startup" !dbg !2301 {
  call void @__cxx_global_var_init(), !dbg !2303
  call void @__cxx_global_var_init.1(), !dbg !2303
  call void @__cxx_global_var_init.2(), !dbg !2303
  ret void
}

attributes #0 = { noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #14 = { builtin allocsize(0) }
attributes #15 = { builtin nounwind }
attributes #16 = { noreturn }
attributes #17 = { noreturn nounwind }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!1768, !1769, !1770, !1771, !1772, !1773, !1774}
!llvm.ident = !{!1775}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__ioinit", linkageName: "_ZStL8__ioinit", scope: !2, file: !3, line: 74, type: !4, isLocal: true, isDefinition: true)
!2 = !DINamespace(name: "std", scope: null)
!3 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/iostream", directory: "")
!4 = !DICompositeType(tag: DW_TAG_class_type, name: "Init", scope: !6, file: !5, line: 626, size: 8, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt8ios_base4InitE")
!5 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/ios_base.h", directory: "")
!6 = !DICompositeType(tag: DW_TAG_class_type, name: "ios_base", scope: !2, file: !5, line: 228, size: 1728, flags: DIFlagFwdDecl | DIFlagNonTrivial)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "maxFloat", linkageName: "_ZL8maxFloat", scope: !9, file: !1765, line: 38, type: !1766, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !10, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !11, globals: !389, imports: !444, splitDebugInlining: false, nameTableKind: None)
!10 = !DIFile(filename: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src/LRT/FrameBuffer.cxx", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src/build/LRT", checksumkind: CSK_MD5, checksum: "6c458b08e0223ee4cb19d91b6fd84e1b")
!11 = !{!12, !167, !218, !190, !219, !28, !230}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RGBAucharFrameBuffer", scope: !15, file: !14, line: 46, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !16, vtableHolder: !13, identifier: "_ZTSN3LRT20RGBAucharFrameBufferE")
!14 = !DIFile(filename: "LRT/FrameBuffer.hxx", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src", checksumkind: CSK_MD5, checksum: "e23f846ba5a3087ce7299fe1a882dfe9")
!15 = !DINamespace(name: "LRT", scope: null)
!16 = !{!17, !23, !189, !192, !196, !206, !209, !212, !215, !216, !217}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$RGBAucharFrameBuffer", scope: !14, file: !14, baseType: !18, size: 64, flags: DIFlagArtificial)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "__vtbl_ptr_type", baseType: !20, size: 64)
!20 = !DISubroutineType(types: !21)
!21 = !{!22}
!22 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "res", scope: !13, file: !14, line: 67, baseType: !24, size: 64, offset: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "vec2i", scope: !15, file: !14, line: 33, baseType: !25)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "RTVec2i", scope: !27, file: !26, line: 271, baseType: !28)
!26 = !DIFile(filename: "RTTL/common/RTVec.hxx", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src", checksumkind: CSK_MD5, checksum: "adfbd7ae4dab54b31af1e64824b8abcb")
!27 = !DINamespace(name: "RTTL", scope: null)
!28 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "RTVec_t<2, int, 0>", scope: !27, file: !26, line: 42, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !29, templateParams: !92, identifier: "_ZTSN4RTTL7RTVec_tILi2EiLi0EEE")
!29 = !{!30, !96, !97, !101, !104, !107, !108, !109, !110, !115, !118, !119, !120, !121, !122, !123, !124, !125, !126, !130, !133, !134, !135, !138, !139, !140, !141, !142, !143, !144, !145, !148, !152, !155, !158, !161, !162, !163, !168, !173, !174, !175, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !28, file: !31, line: 337, baseType: !32, size: 32, flags: DIFlagPublic)
!31 = !DIFile(filename: "RTTL/common/RTVecBody.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src", checksumkind: CSK_MD5, checksum: "b80a89a3623c8e3d3f09e41d609e754a")
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "AlignedDataType", scope: !34, file: !33, line: 24, baseType: !22)
!33 = !DIFile(filename: "RTTL/common/RTData.hxx", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src", checksumkind: CSK_MD5, checksum: "f4e0c70e47861859820b913e006060bd")
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RTData_t<2, int, 0>", scope: !27, file: !33, line: 22, size: 64, flags: DIFlagTypePassByValue, elements: !35, templateParams: !92, identifier: "_ZTSN4RTTL8RTData_tILi2EiLi0EEE")
!35 = !{!36, !40, !45, !51, !55, !59, !62, !66, !67, !68, !69, !70, !71, !72, !73, !76, !77, !78, !79, !82, !83, !84, !85, !88, !89, !90, !91}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "t", scope: !34, file: !33, line: 178, baseType: !37, size: 64, flags: DIFlagProtected)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 64, elements: !38)
!38 = !{!39}
!39 = !DISubrange(count: 2)
!40 = !DISubprogram(name: "alignment", linkageName: "_ZNK4RTTL8RTData_tILi2EiLi0EE9alignmentEv", scope: !34, file: !33, line: 25, type: !41, scopeLine: 25, flags: DIFlagPrototyped, spFlags: 0)
!41 = !DISubroutineType(types: !42)
!42 = !{!22, !43}
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!45 = !DISubprogram(name: "assignDataTypeValue", linkageName: "_ZN4RTTL8RTData_tILi2EiLi0EE19assignDataTypeValueERKi", scope: !34, file: !33, line: 28, type: !46, scopeLine: 28, flags: DIFlagPrototyped, spFlags: 0)
!46 = !DISubroutineType(types: !47)
!47 = !{null, !48, !49}
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!49 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!51 = !DISubprogram(name: "assignDataTypeArray", linkageName: "_ZN4RTTL8RTData_tILi2EiLi0EE19assignDataTypeArrayEPKi", scope: !34, file: !33, line: 32, type: !52, scopeLine: 32, flags: DIFlagPrototyped, spFlags: 0)
!52 = !DISubroutineType(types: !53)
!53 = !{null, !48, !54}
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!55 = !DISubprogram(name: "operator[]", linkageName: "_ZN4RTTL8RTData_tILi2EiLi0EEixEi", scope: !34, file: !33, line: 49, type: !56, scopeLine: 49, flags: DIFlagPrototyped, spFlags: 0)
!56 = !DISubroutineType(types: !57)
!57 = !{!58, !48, !22}
!58 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !22, size: 64)
!59 = !DISubprogram(name: "operator[]", linkageName: "_ZNK4RTTL8RTData_tILi2EiLi0EEixEi", scope: !34, file: !33, line: 52, type: !60, scopeLine: 52, flags: DIFlagPrototyped, spFlags: 0)
!60 = !DISubroutineType(types: !61)
!61 = !{!22, !43, !22}
!62 = !DISubprogram(name: "operator+=", linkageName: "_ZN4RTTL8RTData_tILi2EiLi0EEpLERKS1_", scope: !34, file: !33, line: 56, type: !63, scopeLine: 56, flags: DIFlagPrototyped, spFlags: 0)
!63 = !DISubroutineType(types: !64)
!64 = !{null, !48, !65}
!65 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !44, size: 64)
!66 = !DISubprogram(name: "operator-=", linkageName: "_ZN4RTTL8RTData_tILi2EiLi0EEmIERKS1_", scope: !34, file: !33, line: 61, type: !63, scopeLine: 61, flags: DIFlagPrototyped, spFlags: 0)
!67 = !DISubprogram(name: "operator*=", linkageName: "_ZN4RTTL8RTData_tILi2EiLi0EEmLERKS1_", scope: !34, file: !33, line: 66, type: !63, scopeLine: 66, flags: DIFlagPrototyped, spFlags: 0)
!68 = !DISubprogram(name: "operator/=", linkageName: "_ZN4RTTL8RTData_tILi2EiLi0EEdVERKS1_", scope: !34, file: !33, line: 71, type: !63, scopeLine: 71, flags: DIFlagPrototyped, spFlags: 0)
!69 = !DISubprogram(name: "operator+=", linkageName: "_ZN4RTTL8RTData_tILi2EiLi0EEpLERKi", scope: !34, file: !33, line: 76, type: !46, scopeLine: 76, flags: DIFlagPrototyped, spFlags: 0)
!70 = !DISubprogram(name: "operator-=", linkageName: "_ZN4RTTL8RTData_tILi2EiLi0EEmIERKi", scope: !34, file: !33, line: 81, type: !46, scopeLine: 81, flags: DIFlagPrototyped, spFlags: 0)
!71 = !DISubprogram(name: "operator*=", linkageName: "_ZN4RTTL8RTData_tILi2EiLi0EEmLERKi", scope: !34, file: !33, line: 86, type: !46, scopeLine: 86, flags: DIFlagPrototyped, spFlags: 0)
!72 = !DISubprogram(name: "operator/=", linkageName: "_ZN4RTTL8RTData_tILi2EiLi0EEdVERKi", scope: !34, file: !33, line: 91, type: !46, scopeLine: 91, flags: DIFlagPrototyped, spFlags: 0)
!73 = !DISubprogram(name: "add", linkageName: "_ZN4RTTL8RTData_tILi2EiLi0EE3addERKS1_S3_", scope: !34, file: !33, line: 96, type: !74, scopeLine: 96, flags: DIFlagPrototyped, spFlags: 0)
!74 = !DISubroutineType(types: !75)
!75 = !{null, !48, !65, !65}
!76 = !DISubprogram(name: "subtract", linkageName: "_ZN4RTTL8RTData_tILi2EiLi0EE8subtractERKS1_S3_", scope: !34, file: !33, line: 100, type: !74, scopeLine: 100, flags: DIFlagPrototyped, spFlags: 0)
!77 = !DISubprogram(name: "multiply", linkageName: "_ZN4RTTL8RTData_tILi2EiLi0EE8multiplyERKS1_S3_", scope: !34, file: !33, line: 104, type: !74, scopeLine: 104, flags: DIFlagPrototyped, spFlags: 0)
!78 = !DISubprogram(name: "divide", linkageName: "_ZN4RTTL8RTData_tILi2EiLi0EE6divideERKS1_S3_", scope: !34, file: !33, line: 108, type: !74, scopeLine: 108, flags: DIFlagPrototyped, spFlags: 0)
!79 = !DISubprogram(name: "add", linkageName: "_ZN4RTTL8RTData_tILi2EiLi0EE3addERKS1_PKi", scope: !34, file: !33, line: 113, type: !80, scopeLine: 113, flags: DIFlagPrototyped, spFlags: 0)
!80 = !DISubroutineType(types: !81)
!81 = !{null, !48, !65, !54}
!82 = !DISubprogram(name: "subtract", linkageName: "_ZN4RTTL8RTData_tILi2EiLi0EE8subtractERKS1_PKi", scope: !34, file: !33, line: 117, type: !80, scopeLine: 117, flags: DIFlagPrototyped, spFlags: 0)
!83 = !DISubprogram(name: "multiply", linkageName: "_ZN4RTTL8RTData_tILi2EiLi0EE8multiplyERKS1_PKi", scope: !34, file: !33, line: 121, type: !80, scopeLine: 121, flags: DIFlagPrototyped, spFlags: 0)
!84 = !DISubprogram(name: "divide", linkageName: "_ZN4RTTL8RTData_tILi2EiLi0EE6divideERKS1_PKi", scope: !34, file: !33, line: 125, type: !80, scopeLine: 125, flags: DIFlagPrototyped, spFlags: 0)
!85 = !DISubprogram(name: "add", linkageName: "_ZN4RTTL8RTData_tILi2EiLi0EE3addEPKiRKS1_", scope: !34, file: !33, line: 130, type: !86, scopeLine: 130, flags: DIFlagPrototyped, spFlags: 0)
!86 = !DISubroutineType(types: !87)
!87 = !{null, !48, !54, !65}
!88 = !DISubprogram(name: "subtract", linkageName: "_ZN4RTTL8RTData_tILi2EiLi0EE8subtractEPKiRKS1_", scope: !34, file: !33, line: 133, type: !86, scopeLine: 133, flags: DIFlagPrototyped, spFlags: 0)
!89 = !DISubprogram(name: "multiply", linkageName: "_ZN4RTTL8RTData_tILi2EiLi0EE8multiplyEPKiRKS1_", scope: !34, file: !33, line: 136, type: !86, scopeLine: 136, flags: DIFlagPrototyped, spFlags: 0)
!90 = !DISubprogram(name: "divide", linkageName: "_ZN4RTTL8RTData_tILi2EiLi0EE6divideEPKiRKS1_", scope: !34, file: !33, line: 139, type: !86, scopeLine: 139, flags: DIFlagPrototyped, spFlags: 0)
!91 = !DISubprogram(name: "nElements", linkageName: "_ZN4RTTL8RTData_tILi2EiLi0EE9nElementsEv", scope: !34, file: !33, line: 175, type: !20, scopeLine: 175, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!92 = !{!93, !94, !95}
!93 = !DITemplateValueParameter(name: "N", type: !22, value: i32 2)
!94 = !DITemplateTypeParameter(name: "DataType", type: !22)
!95 = !DITemplateValueParameter(name: "align", type: !22, defaulted: true, value: i32 0)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !28, file: !31, line: 338, baseType: !22, size: 32, offset: 32, flags: DIFlagPublic)
!97 = !DISubprogram(name: "RTVec_t", scope: !28, file: !31, line: 29, type: !98, scopeLine: 29, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!98 = !DISubroutineType(types: !99)
!99 = !{null, !100}
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!101 = !DISubprogram(name: "RTVec_t", scope: !28, file: !31, line: 34, type: !102, scopeLine: 34, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!102 = !DISubroutineType(types: !103)
!103 = !{null, !100, !49}
!104 = !DISubprogram(name: "RTVec_t", scope: !28, file: !31, line: 50, type: !105, scopeLine: 50, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!105 = !DISubroutineType(types: !106)
!106 = !{null, !100, !54}
!107 = !DISubprogram(name: "nElements", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EE9nElementsEv", scope: !28, file: !31, line: 56, type: !20, scopeLine: 56, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!108 = !DISubprogram(name: "entrySize", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EE9entrySizeEv", scope: !28, file: !31, line: 57, type: !20, scopeLine: 57, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!109 = !DISubprogram(name: "totalSize", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EE9totalSizeEv", scope: !28, file: !31, line: 58, type: !20, scopeLine: 58, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!110 = !DISubprogram(name: "operator=", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EEaSERKS1_", scope: !28, file: !31, line: 74, type: !111, scopeLine: 74, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!111 = !DISubroutineType(types: !112)
!112 = !{!113, !100, !113}
!113 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!115 = !DISubprogram(name: "operator=", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EEaSERKi", scope: !28, file: !31, line: 81, type: !116, scopeLine: 81, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!116 = !DISubroutineType(types: !117)
!117 = !{!113, !100, !49}
!118 = !DISubprogram(name: "operator+=", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EEpLERKS1_", scope: !28, file: !31, line: 87, type: !111, scopeLine: 87, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!119 = !DISubprogram(name: "operator-=", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EEmIERKS1_", scope: !28, file: !31, line: 93, type: !111, scopeLine: 93, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!120 = !DISubprogram(name: "operator*=", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EEmLERKS1_", scope: !28, file: !31, line: 99, type: !111, scopeLine: 99, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!121 = !DISubprogram(name: "operator/=", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EEdVERKS1_", scope: !28, file: !31, line: 105, type: !111, scopeLine: 105, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!122 = !DISubprogram(name: "operator+=", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EEpLERKi", scope: !28, file: !31, line: 111, type: !116, scopeLine: 111, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!123 = !DISubprogram(name: "operator-=", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EEmIERKi", scope: !28, file: !31, line: 117, type: !116, scopeLine: 117, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!124 = !DISubprogram(name: "operator*=", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EEmLERKi", scope: !28, file: !31, line: 123, type: !116, scopeLine: 123, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!125 = !DISubprogram(name: "operator/=", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EEdVERKi", scope: !28, file: !31, line: 129, type: !116, scopeLine: 129, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!126 = !DISubprogram(name: "dot", linkageName: "_ZNK4RTTL7RTVec_tILi2EiLi0EE3dotERKS1_", scope: !28, file: !31, line: 135, type: !127, scopeLine: 135, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!127 = !DISubroutineType(types: !128)
!128 = !{!22, !129, !113}
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!130 = !DISubprogram(name: "lengthSquared", linkageName: "_ZNK4RTTL7RTVec_tILi2EiLi0EE13lengthSquaredEv", scope: !28, file: !31, line: 145, type: !131, scopeLine: 145, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!131 = !DISubroutineType(types: !132)
!132 = !{!22, !129}
!133 = !DISubprogram(name: "length", linkageName: "_ZNK4RTTL7RTVec_tILi2EiLi0EE6lengthEv", scope: !28, file: !31, line: 153, type: !131, scopeLine: 153, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!134 = !DISubprogram(name: "normalize", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EE9normalizeEv", scope: !28, file: !31, line: 157, type: !98, scopeLine: 157, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!135 = !DISubprogram(name: "setMin", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EE6setMinERKS1_", scope: !28, file: !31, line: 164, type: !136, scopeLine: 164, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!136 = !DISubroutineType(types: !137)
!137 = !{null, !100, !113}
!138 = !DISubprogram(name: "setMin", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EE6setMinERKi", scope: !28, file: !31, line: 169, type: !102, scopeLine: 169, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!139 = !DISubprogram(name: "setMax", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EE6setMaxERKS1_", scope: !28, file: !31, line: 174, type: !136, scopeLine: 174, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!140 = !DISubprogram(name: "setMax", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EE6setMaxERKi", scope: !28, file: !31, line: 179, type: !102, scopeLine: 179, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!141 = !DISubprogram(name: "epsilon", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EE7epsilonEv", scope: !28, file: !31, line: 186, type: !20, scopeLine: 186, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!142 = !DISubprogram(name: "minValue", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EE8minValueEv", scope: !28, file: !31, line: 187, type: !20, scopeLine: 187, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!143 = !DISubprogram(name: "maxValue", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EE8maxValueEv", scope: !28, file: !31, line: 188, type: !20, scopeLine: 188, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!144 = !DISubprogram(name: "infinity", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EE8infinityEv", scope: !28, file: !31, line: 189, type: !20, scopeLine: 189, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!145 = !DISubprogram(name: "RTVec_t", scope: !28, file: !31, line: 198, type: !146, scopeLine: 198, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!146 = !DISubroutineType(types: !147)
!147 = !{null, !100, !49, !49}
!148 = !DISubprogram(name: "data", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EE4dataEv", scope: !28, file: !31, line: 201, type: !149, scopeLine: 201, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!149 = !DISubroutineType(types: !150)
!150 = !{!151, !100}
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!152 = !DISubprogram(name: "data", linkageName: "_ZNK4RTTL7RTVec_tILi2EiLi0EE4dataEv", scope: !28, file: !31, line: 202, type: !153, scopeLine: 202, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!153 = !DISubroutineType(types: !154)
!154 = !{!54, !129}
!155 = !DISubprogram(name: "operator[]", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EEixEi", scope: !28, file: !31, line: 205, type: !156, scopeLine: 205, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!156 = !DISubroutineType(types: !157)
!157 = !{!58, !100, !22}
!158 = !DISubprogram(name: "operator[]", linkageName: "_ZNK4RTTL7RTVec_tILi2EiLi0EEixEi", scope: !28, file: !31, line: 206, type: !159, scopeLine: 206, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!159 = !DISubroutineType(types: !160)
!160 = !{!22, !129, !22}
!161 = !DISubprogram(name: "operator int *", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EEcvPiEv", scope: !28, file: !31, line: 209, type: !149, scopeLine: 209, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!162 = !DISubprogram(name: "operator const int *", linkageName: "_ZNK4RTTL7RTVec_tILi2EiLi0EEcvPKiEv", scope: !28, file: !31, line: 210, type: !153, scopeLine: 210, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!163 = !DISubprogram(name: "operator RTTL::RTData_t<2, int> &", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EEcvRNS_8RTData_tILi2EiLi0EEEEv", scope: !28, file: !31, line: 213, type: !164, scopeLine: 213, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!164 = !DISubroutineType(types: !165)
!165 = !{!166, !100}
!166 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "DataArray", scope: !28, file: !31, line: 26, baseType: !34, flags: DIFlagPublic)
!168 = !DISubprogram(name: "operator const RTTL::RTData_t<2, int> &", linkageName: "_ZNK4RTTL7RTVec_tILi2EiLi0EEcvRKNS_8RTData_tILi2EiLi0EEEEv", scope: !28, file: !31, line: 214, type: !169, scopeLine: 214, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!169 = !DISubroutineType(types: !170)
!170 = !{!171, !129}
!171 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !172, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !167)
!173 = !DISubprogram(name: "array", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EE5arrayEv", scope: !28, file: !31, line: 215, type: !164, scopeLine: 215, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!174 = !DISubprogram(name: "array", linkageName: "_ZNK4RTTL7RTVec_tILi2EiLi0EE5arrayEv", scope: !28, file: !31, line: 216, type: !169, scopeLine: 216, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!175 = !DISubprogram(name: "entry", linkageName: "_ZNK4RTTL7RTVec_tILi2EiLi0EE5entryEi", scope: !28, file: !31, line: 242, type: !176, scopeLine: 242, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!176 = !DISubroutineType(types: !177)
!177 = !{!49, !129, !22}
!178 = !DISubprogram(name: "entry", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EE5entryEi", scope: !28, file: !31, line: 246, type: !156, scopeLine: 246, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!179 = !DISubprogram(name: "pointer", linkageName: "_ZNK4RTTL7RTVec_tILi2EiLi0EE7pointerEv", scope: !28, file: !31, line: 250, type: !153, scopeLine: 250, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!180 = !DISubprogram(name: "pointer", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EE7pointerEv", scope: !28, file: !31, line: 254, type: !149, scopeLine: 254, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!181 = !DISubprogram(name: "minimum", linkageName: "_ZNK4RTTL7RTVec_tILi2EiLi0EE7minimumEv", scope: !28, file: !31, line: 325, type: !131, scopeLine: 325, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!182 = !DISubprogram(name: "maximum", linkageName: "_ZNK4RTTL7RTVec_tILi2EiLi0EE7maximumEv", scope: !28, file: !31, line: 326, type: !131, scopeLine: 326, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!183 = !DISubprogram(name: "absMinimum", linkageName: "_ZNK4RTTL7RTVec_tILi2EiLi0EE10absMinimumEv", scope: !28, file: !31, line: 327, type: !131, scopeLine: 327, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!184 = !DISubprogram(name: "absMaximum", linkageName: "_ZNK4RTTL7RTVec_tILi2EiLi0EE10absMaximumEv", scope: !28, file: !31, line: 328, type: !131, scopeLine: 328, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!185 = !DISubprogram(name: "minIndex", linkageName: "_ZNK4RTTL7RTVec_tILi2EiLi0EE8minIndexEv", scope: !28, file: !31, line: 329, type: !131, scopeLine: 329, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!186 = !DISubprogram(name: "maxIndex", linkageName: "_ZNK4RTTL7RTVec_tILi2EiLi0EE8maxIndexEv", scope: !28, file: !31, line: 330, type: !131, scopeLine: 330, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!187 = !DISubprogram(name: "minAbsIndex", linkageName: "_ZNK4RTTL7RTVec_tILi2EiLi0EE11minAbsIndexEv", scope: !28, file: !31, line: 331, type: !131, scopeLine: 331, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!188 = !DISubprogram(name: "maxAbsIndex", linkageName: "_ZNK4RTTL7RTVec_tILi2EiLi0EE11maxAbsIndexEv", scope: !28, file: !31, line: 332, type: !131, scopeLine: 332, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "fb", scope: !13, file: !14, line: 68, baseType: !190, size: 64, offset: 128)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!192 = !DISubprogram(name: "RGBAucharFrameBuffer", scope: !13, file: !14, line: 70, type: !193, scopeLine: 70, flags: DIFlagPrototyped, spFlags: 0)
!193 = !DISubroutineType(types: !194)
!194 = !{null, !195}
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!196 = !DISubprogram(name: "writeBlock", linkageName: "_ZNK3LRT20RGBAucharFrameBuffer10writeBlockEiiiiPK5sse_i", scope: !13, file: !14, line: 74, type: !197, scopeLine: 74, flags: DIFlagPrototyped, spFlags: 0)
!197 = !DISubroutineType(types: !198)
!198 = !{null, !199, !50, !50, !50, !50, !201}
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !203)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "sse_i", file: !204, line: 42, baseType: !205)
!204 = !DIFile(filename: "RTTL/common/RTEmulatedSSE.hxx", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src", checksumkind: CSK_MD5, checksum: "899b754f585bbc37282aa5883c939129")
!205 = !DICompositeType(tag: DW_TAG_structure_type, name: "sse_i", file: !204, line: 34, size: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS5sse_i")
!206 = !DISubprogram(name: "prefetchBlock", linkageName: "_ZNK3LRT20RGBAucharFrameBuffer13prefetchBlockEiiii", scope: !13, file: !14, line: 78, type: !207, scopeLine: 78, flags: DIFlagPrototyped, spFlags: 0)
!207 = !DISubroutineType(types: !208)
!208 = !{null, !199, !50, !50, !50, !50}
!209 = !DISubprogram(name: "create", linkageName: "_ZN3LRT20RGBAucharFrameBuffer6createEv", scope: !13, file: !14, line: 82, type: !210, scopeLine: 82, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!210 = !DISubroutineType(types: !211)
!211 = !{!12}
!212 = !DISubprogram(name: "resize", linkageName: "_ZN3LRT20RGBAucharFrameBuffer6resizeEii", scope: !13, file: !14, line: 90, type: !213, scopeLine: 90, containingType: !13, virtualIndex: 0, flags: DIFlagPrototyped, spFlags: DISPFlagVirtual)
!213 = !DISubroutineType(types: !214)
!214 = !{null, !195, !22, !22}
!215 = !DISubprogram(name: "startNewFrame", linkageName: "_ZN3LRT20RGBAucharFrameBuffer13startNewFrameEv", scope: !13, file: !14, line: 104, type: !193, scopeLine: 104, containingType: !13, virtualIndex: 1, flags: DIFlagPrototyped, spFlags: DISPFlagPureVirtual)
!216 = !DISubprogram(name: "doneWithFrame", linkageName: "_ZN3LRT20RGBAucharFrameBuffer13doneWithFrameEv", scope: !13, file: !14, line: 105, type: !193, scopeLine: 105, containingType: !13, virtualIndex: 2, flags: DIFlagPrototyped, spFlags: DISPFlagPureVirtual)
!217 = !DISubprogram(name: "display", linkageName: "_ZN3LRT20RGBAucharFrameBuffer7displayEv", scope: !13, file: !14, line: 106, type: !193, scopeLine: 106, containingType: !13, virtualIndex: 3, flags: DIFlagPrototyped, spFlags: DISPFlagPureVirtual)
!218 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sse_f", file: !204, line: 20, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !220, identifier: "_ZTS5sse_f")
!220 = !{!221, !226}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !219, file: !204, line: 23, baseType: !222, size: 128)
!222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 128, elements: !224)
!223 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!224 = !{!225}
!225 = !DISubrange(count: 4)
!226 = !DISubprogram(name: "sse_f", scope: !219, file: !204, line: 21, type: !227, scopeLine: 21, flags: DIFlagPrototyped, spFlags: 0)
!227 = !DISubroutineType(types: !228)
!228 = !{null, !229}
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!230 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "RTVec_t<2, float, 0>", scope: !27, file: !26, line: 42, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !231, templateParams: !290, identifier: "_ZTSN4RTTL7RTVec_tILi2EfLi0EEE")
!231 = !{!232, !292, !293, !297, !300, !303, !304, !305, !306, !311, !314, !315, !316, !317, !318, !319, !320, !321, !322, !326, !329, !330, !331, !334, !335, !336, !337, !340, !341, !342, !343, !346, !350, !353, !356, !359, !360, !361, !366, !371, !372, !373, !376, !377, !378, !379, !380, !381, !382, !383, !386, !387, !388}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !230, file: !31, line: 337, baseType: !233, size: 32, flags: DIFlagPublic)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "AlignedDataType", scope: !234, file: !33, line: 24, baseType: !223)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RTData_t<2, float, 0>", scope: !27, file: !33, line: 22, size: 64, flags: DIFlagTypePassByValue, elements: !235, templateParams: !290, identifier: "_ZTSN4RTTL8RTData_tILi2EfLi0EEE")
!235 = !{!236, !238, !243, !249, !253, !257, !260, !264, !265, !266, !267, !268, !269, !270, !271, !274, !275, !276, !277, !280, !281, !282, !283, !286, !287, !288, !289}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "t", scope: !234, file: !33, line: 178, baseType: !237, size: 64, flags: DIFlagProtected)
!237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 64, elements: !38)
!238 = !DISubprogram(name: "alignment", linkageName: "_ZNK4RTTL8RTData_tILi2EfLi0EE9alignmentEv", scope: !234, file: !33, line: 25, type: !239, scopeLine: 25, flags: DIFlagPrototyped, spFlags: 0)
!239 = !DISubroutineType(types: !240)
!240 = !{!22, !241}
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!242 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !234)
!243 = !DISubprogram(name: "assignDataTypeValue", linkageName: "_ZN4RTTL8RTData_tILi2EfLi0EE19assignDataTypeValueERKf", scope: !234, file: !33, line: 28, type: !244, scopeLine: 28, flags: DIFlagPrototyped, spFlags: 0)
!244 = !DISubroutineType(types: !245)
!245 = !{null, !246, !247}
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!247 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !223)
!249 = !DISubprogram(name: "assignDataTypeArray", linkageName: "_ZN4RTTL8RTData_tILi2EfLi0EE19assignDataTypeArrayEPKf", scope: !234, file: !33, line: 32, type: !250, scopeLine: 32, flags: DIFlagPrototyped, spFlags: 0)
!250 = !DISubroutineType(types: !251)
!251 = !{null, !246, !252}
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!253 = !DISubprogram(name: "operator[]", linkageName: "_ZN4RTTL8RTData_tILi2EfLi0EEixEi", scope: !234, file: !33, line: 49, type: !254, scopeLine: 49, flags: DIFlagPrototyped, spFlags: 0)
!254 = !DISubroutineType(types: !255)
!255 = !{!256, !246, !22}
!256 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !223, size: 64)
!257 = !DISubprogram(name: "operator[]", linkageName: "_ZNK4RTTL8RTData_tILi2EfLi0EEixEi", scope: !234, file: !33, line: 52, type: !258, scopeLine: 52, flags: DIFlagPrototyped, spFlags: 0)
!258 = !DISubroutineType(types: !259)
!259 = !{!223, !241, !22}
!260 = !DISubprogram(name: "operator+=", linkageName: "_ZN4RTTL8RTData_tILi2EfLi0EEpLERKS1_", scope: !234, file: !33, line: 56, type: !261, scopeLine: 56, flags: DIFlagPrototyped, spFlags: 0)
!261 = !DISubroutineType(types: !262)
!262 = !{null, !246, !263}
!263 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !242, size: 64)
!264 = !DISubprogram(name: "operator-=", linkageName: "_ZN4RTTL8RTData_tILi2EfLi0EEmIERKS1_", scope: !234, file: !33, line: 61, type: !261, scopeLine: 61, flags: DIFlagPrototyped, spFlags: 0)
!265 = !DISubprogram(name: "operator*=", linkageName: "_ZN4RTTL8RTData_tILi2EfLi0EEmLERKS1_", scope: !234, file: !33, line: 66, type: !261, scopeLine: 66, flags: DIFlagPrototyped, spFlags: 0)
!266 = !DISubprogram(name: "operator/=", linkageName: "_ZN4RTTL8RTData_tILi2EfLi0EEdVERKS1_", scope: !234, file: !33, line: 71, type: !261, scopeLine: 71, flags: DIFlagPrototyped, spFlags: 0)
!267 = !DISubprogram(name: "operator+=", linkageName: "_ZN4RTTL8RTData_tILi2EfLi0EEpLERKf", scope: !234, file: !33, line: 76, type: !244, scopeLine: 76, flags: DIFlagPrototyped, spFlags: 0)
!268 = !DISubprogram(name: "operator-=", linkageName: "_ZN4RTTL8RTData_tILi2EfLi0EEmIERKf", scope: !234, file: !33, line: 81, type: !244, scopeLine: 81, flags: DIFlagPrototyped, spFlags: 0)
!269 = !DISubprogram(name: "operator*=", linkageName: "_ZN4RTTL8RTData_tILi2EfLi0EEmLERKf", scope: !234, file: !33, line: 86, type: !244, scopeLine: 86, flags: DIFlagPrototyped, spFlags: 0)
!270 = !DISubprogram(name: "operator/=", linkageName: "_ZN4RTTL8RTData_tILi2EfLi0EEdVERKf", scope: !234, file: !33, line: 91, type: !244, scopeLine: 91, flags: DIFlagPrototyped, spFlags: 0)
!271 = !DISubprogram(name: "add", linkageName: "_ZN4RTTL8RTData_tILi2EfLi0EE3addERKS1_S3_", scope: !234, file: !33, line: 96, type: !272, scopeLine: 96, flags: DIFlagPrototyped, spFlags: 0)
!272 = !DISubroutineType(types: !273)
!273 = !{null, !246, !263, !263}
!274 = !DISubprogram(name: "subtract", linkageName: "_ZN4RTTL8RTData_tILi2EfLi0EE8subtractERKS1_S3_", scope: !234, file: !33, line: 100, type: !272, scopeLine: 100, flags: DIFlagPrototyped, spFlags: 0)
!275 = !DISubprogram(name: "multiply", linkageName: "_ZN4RTTL8RTData_tILi2EfLi0EE8multiplyERKS1_S3_", scope: !234, file: !33, line: 104, type: !272, scopeLine: 104, flags: DIFlagPrototyped, spFlags: 0)
!276 = !DISubprogram(name: "divide", linkageName: "_ZN4RTTL8RTData_tILi2EfLi0EE6divideERKS1_S3_", scope: !234, file: !33, line: 108, type: !272, scopeLine: 108, flags: DIFlagPrototyped, spFlags: 0)
!277 = !DISubprogram(name: "add", linkageName: "_ZN4RTTL8RTData_tILi2EfLi0EE3addERKS1_PKf", scope: !234, file: !33, line: 113, type: !278, scopeLine: 113, flags: DIFlagPrototyped, spFlags: 0)
!278 = !DISubroutineType(types: !279)
!279 = !{null, !246, !263, !252}
!280 = !DISubprogram(name: "subtract", linkageName: "_ZN4RTTL8RTData_tILi2EfLi0EE8subtractERKS1_PKf", scope: !234, file: !33, line: 117, type: !278, scopeLine: 117, flags: DIFlagPrototyped, spFlags: 0)
!281 = !DISubprogram(name: "multiply", linkageName: "_ZN4RTTL8RTData_tILi2EfLi0EE8multiplyERKS1_PKf", scope: !234, file: !33, line: 121, type: !278, scopeLine: 121, flags: DIFlagPrototyped, spFlags: 0)
!282 = !DISubprogram(name: "divide", linkageName: "_ZN4RTTL8RTData_tILi2EfLi0EE6divideERKS1_PKf", scope: !234, file: !33, line: 125, type: !278, scopeLine: 125, flags: DIFlagPrototyped, spFlags: 0)
!283 = !DISubprogram(name: "add", linkageName: "_ZN4RTTL8RTData_tILi2EfLi0EE3addEPKfRKS1_", scope: !234, file: !33, line: 130, type: !284, scopeLine: 130, flags: DIFlagPrototyped, spFlags: 0)
!284 = !DISubroutineType(types: !285)
!285 = !{null, !246, !252, !263}
!286 = !DISubprogram(name: "subtract", linkageName: "_ZN4RTTL8RTData_tILi2EfLi0EE8subtractEPKfRKS1_", scope: !234, file: !33, line: 133, type: !284, scopeLine: 133, flags: DIFlagPrototyped, spFlags: 0)
!287 = !DISubprogram(name: "multiply", linkageName: "_ZN4RTTL8RTData_tILi2EfLi0EE8multiplyEPKfRKS1_", scope: !234, file: !33, line: 136, type: !284, scopeLine: 136, flags: DIFlagPrototyped, spFlags: 0)
!288 = !DISubprogram(name: "divide", linkageName: "_ZN4RTTL8RTData_tILi2EfLi0EE6divideEPKfRKS1_", scope: !234, file: !33, line: 139, type: !284, scopeLine: 139, flags: DIFlagPrototyped, spFlags: 0)
!289 = !DISubprogram(name: "nElements", linkageName: "_ZN4RTTL8RTData_tILi2EfLi0EE9nElementsEv", scope: !234, file: !33, line: 175, type: !20, scopeLine: 175, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!290 = !{!93, !291, !95}
!291 = !DITemplateTypeParameter(name: "DataType", type: !223)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !230, file: !31, line: 338, baseType: !223, size: 32, offset: 32, flags: DIFlagPublic)
!293 = !DISubprogram(name: "RTVec_t", scope: !230, file: !31, line: 29, type: !294, scopeLine: 29, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!294 = !DISubroutineType(types: !295)
!295 = !{null, !296}
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!297 = !DISubprogram(name: "RTVec_t", scope: !230, file: !31, line: 34, type: !298, scopeLine: 34, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!298 = !DISubroutineType(types: !299)
!299 = !{null, !296, !247}
!300 = !DISubprogram(name: "RTVec_t", scope: !230, file: !31, line: 50, type: !301, scopeLine: 50, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!301 = !DISubroutineType(types: !302)
!302 = !{null, !296, !252}
!303 = !DISubprogram(name: "nElements", linkageName: "_ZN4RTTL7RTVec_tILi2EfLi0EE9nElementsEv", scope: !230, file: !31, line: 56, type: !20, scopeLine: 56, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!304 = !DISubprogram(name: "entrySize", linkageName: "_ZN4RTTL7RTVec_tILi2EfLi0EE9entrySizeEv", scope: !230, file: !31, line: 57, type: !20, scopeLine: 57, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!305 = !DISubprogram(name: "totalSize", linkageName: "_ZN4RTTL7RTVec_tILi2EfLi0EE9totalSizeEv", scope: !230, file: !31, line: 58, type: !20, scopeLine: 58, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!306 = !DISubprogram(name: "operator=", linkageName: "_ZN4RTTL7RTVec_tILi2EfLi0EEaSERKS1_", scope: !230, file: !31, line: 74, type: !307, scopeLine: 74, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!307 = !DISubroutineType(types: !308)
!308 = !{!309, !296, !309}
!309 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !310, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !230)
!311 = !DISubprogram(name: "operator=", linkageName: "_ZN4RTTL7RTVec_tILi2EfLi0EEaSERKf", scope: !230, file: !31, line: 81, type: !312, scopeLine: 81, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!312 = !DISubroutineType(types: !313)
!313 = !{!309, !296, !247}
!314 = !DISubprogram(name: "operator+=", linkageName: "_ZN4RTTL7RTVec_tILi2EfLi0EEpLERKS1_", scope: !230, file: !31, line: 87, type: !307, scopeLine: 87, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!315 = !DISubprogram(name: "operator-=", linkageName: "_ZN4RTTL7RTVec_tILi2EfLi0EEmIERKS1_", scope: !230, file: !31, line: 93, type: !307, scopeLine: 93, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!316 = !DISubprogram(name: "operator*=", linkageName: "_ZN4RTTL7RTVec_tILi2EfLi0EEmLERKS1_", scope: !230, file: !31, line: 99, type: !307, scopeLine: 99, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!317 = !DISubprogram(name: "operator/=", linkageName: "_ZN4RTTL7RTVec_tILi2EfLi0EEdVERKS1_", scope: !230, file: !31, line: 105, type: !307, scopeLine: 105, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!318 = !DISubprogram(name: "operator+=", linkageName: "_ZN4RTTL7RTVec_tILi2EfLi0EEpLERKf", scope: !230, file: !31, line: 111, type: !312, scopeLine: 111, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!319 = !DISubprogram(name: "operator-=", linkageName: "_ZN4RTTL7RTVec_tILi2EfLi0EEmIERKf", scope: !230, file: !31, line: 117, type: !312, scopeLine: 117, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!320 = !DISubprogram(name: "operator*=", linkageName: "_ZN4RTTL7RTVec_tILi2EfLi0EEmLERKf", scope: !230, file: !31, line: 123, type: !312, scopeLine: 123, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!321 = !DISubprogram(name: "operator/=", linkageName: "_ZN4RTTL7RTVec_tILi2EfLi0EEdVERKf", scope: !230, file: !31, line: 129, type: !312, scopeLine: 129, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!322 = !DISubprogram(name: "dot", linkageName: "_ZNK4RTTL7RTVec_tILi2EfLi0EE3dotERKS1_", scope: !230, file: !31, line: 135, type: !323, scopeLine: 135, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!323 = !DISubroutineType(types: !324)
!324 = !{!223, !325, !309}
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!326 = !DISubprogram(name: "lengthSquared", linkageName: "_ZNK4RTTL7RTVec_tILi2EfLi0EE13lengthSquaredEv", scope: !230, file: !31, line: 145, type: !327, scopeLine: 145, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!327 = !DISubroutineType(types: !328)
!328 = !{!223, !325}
!329 = !DISubprogram(name: "length", linkageName: "_ZNK4RTTL7RTVec_tILi2EfLi0EE6lengthEv", scope: !230, file: !31, line: 153, type: !327, scopeLine: 153, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!330 = !DISubprogram(name: "normalize", linkageName: "_ZN4RTTL7RTVec_tILi2EfLi0EE9normalizeEv", scope: !230, file: !31, line: 157, type: !294, scopeLine: 157, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!331 = !DISubprogram(name: "setMin", linkageName: "_ZN4RTTL7RTVec_tILi2EfLi0EE6setMinERKS1_", scope: !230, file: !31, line: 164, type: !332, scopeLine: 164, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!332 = !DISubroutineType(types: !333)
!333 = !{null, !296, !309}
!334 = !DISubprogram(name: "setMin", linkageName: "_ZN4RTTL7RTVec_tILi2EfLi0EE6setMinERKf", scope: !230, file: !31, line: 169, type: !298, scopeLine: 169, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!335 = !DISubprogram(name: "setMax", linkageName: "_ZN4RTTL7RTVec_tILi2EfLi0EE6setMaxERKS1_", scope: !230, file: !31, line: 174, type: !332, scopeLine: 174, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!336 = !DISubprogram(name: "setMax", linkageName: "_ZN4RTTL7RTVec_tILi2EfLi0EE6setMaxERKf", scope: !230, file: !31, line: 179, type: !298, scopeLine: 179, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!337 = !DISubprogram(name: "epsilon", linkageName: "_ZN4RTTL7RTVec_tILi2EfLi0EE7epsilonEv", scope: !230, file: !31, line: 186, type: !338, scopeLine: 186, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!338 = !DISubroutineType(types: !339)
!339 = !{!223}
!340 = !DISubprogram(name: "minValue", linkageName: "_ZN4RTTL7RTVec_tILi2EfLi0EE8minValueEv", scope: !230, file: !31, line: 187, type: !338, scopeLine: 187, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!341 = !DISubprogram(name: "maxValue", linkageName: "_ZN4RTTL7RTVec_tILi2EfLi0EE8maxValueEv", scope: !230, file: !31, line: 188, type: !338, scopeLine: 188, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!342 = !DISubprogram(name: "infinity", linkageName: "_ZN4RTTL7RTVec_tILi2EfLi0EE8infinityEv", scope: !230, file: !31, line: 189, type: !338, scopeLine: 189, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!343 = !DISubprogram(name: "RTVec_t", scope: !230, file: !31, line: 198, type: !344, scopeLine: 198, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!344 = !DISubroutineType(types: !345)
!345 = !{null, !296, !247, !247}
!346 = !DISubprogram(name: "data", linkageName: "_ZN4RTTL7RTVec_tILi2EfLi0EE4dataEv", scope: !230, file: !31, line: 201, type: !347, scopeLine: 201, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!347 = !DISubroutineType(types: !348)
!348 = !{!349, !296}
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!350 = !DISubprogram(name: "data", linkageName: "_ZNK4RTTL7RTVec_tILi2EfLi0EE4dataEv", scope: !230, file: !31, line: 202, type: !351, scopeLine: 202, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!351 = !DISubroutineType(types: !352)
!352 = !{!252, !325}
!353 = !DISubprogram(name: "operator[]", linkageName: "_ZN4RTTL7RTVec_tILi2EfLi0EEixEi", scope: !230, file: !31, line: 205, type: !354, scopeLine: 205, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!354 = !DISubroutineType(types: !355)
!355 = !{!256, !296, !22}
!356 = !DISubprogram(name: "operator[]", linkageName: "_ZNK4RTTL7RTVec_tILi2EfLi0EEixEi", scope: !230, file: !31, line: 206, type: !357, scopeLine: 206, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!357 = !DISubroutineType(types: !358)
!358 = !{!223, !325, !22}
!359 = !DISubprogram(name: "operator float *", linkageName: "_ZN4RTTL7RTVec_tILi2EfLi0EEcvPfEv", scope: !230, file: !31, line: 209, type: !347, scopeLine: 209, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!360 = !DISubprogram(name: "operator const float *", linkageName: "_ZNK4RTTL7RTVec_tILi2EfLi0EEcvPKfEv", scope: !230, file: !31, line: 210, type: !351, scopeLine: 210, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!361 = !DISubprogram(name: "operator RTTL::RTData_t<2, float> &", linkageName: "_ZN4RTTL7RTVec_tILi2EfLi0EEcvRNS_8RTData_tILi2EfLi0EEEEv", scope: !230, file: !31, line: 213, type: !362, scopeLine: 213, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!362 = !DISubroutineType(types: !363)
!363 = !{!364, !296}
!364 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !365, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "DataArray", scope: !230, file: !31, line: 26, baseType: !234, flags: DIFlagPublic)
!366 = !DISubprogram(name: "operator const RTTL::RTData_t<2, float> &", linkageName: "_ZNK4RTTL7RTVec_tILi2EfLi0EEcvRKNS_8RTData_tILi2EfLi0EEEEv", scope: !230, file: !31, line: 214, type: !367, scopeLine: 214, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!367 = !DISubroutineType(types: !368)
!368 = !{!369, !325}
!369 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !370, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !365)
!371 = !DISubprogram(name: "array", linkageName: "_ZN4RTTL7RTVec_tILi2EfLi0EE5arrayEv", scope: !230, file: !31, line: 215, type: !362, scopeLine: 215, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!372 = !DISubprogram(name: "array", linkageName: "_ZNK4RTTL7RTVec_tILi2EfLi0EE5arrayEv", scope: !230, file: !31, line: 216, type: !367, scopeLine: 216, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!373 = !DISubprogram(name: "entry", linkageName: "_ZNK4RTTL7RTVec_tILi2EfLi0EE5entryEi", scope: !230, file: !31, line: 242, type: !374, scopeLine: 242, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!374 = !DISubroutineType(types: !375)
!375 = !{!247, !325, !22}
!376 = !DISubprogram(name: "entry", linkageName: "_ZN4RTTL7RTVec_tILi2EfLi0EE5entryEi", scope: !230, file: !31, line: 246, type: !354, scopeLine: 246, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!377 = !DISubprogram(name: "pointer", linkageName: "_ZNK4RTTL7RTVec_tILi2EfLi0EE7pointerEv", scope: !230, file: !31, line: 250, type: !351, scopeLine: 250, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!378 = !DISubprogram(name: "pointer", linkageName: "_ZN4RTTL7RTVec_tILi2EfLi0EE7pointerEv", scope: !230, file: !31, line: 254, type: !347, scopeLine: 254, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!379 = !DISubprogram(name: "minimum", linkageName: "_ZNK4RTTL7RTVec_tILi2EfLi0EE7minimumEv", scope: !230, file: !31, line: 325, type: !327, scopeLine: 325, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!380 = !DISubprogram(name: "maximum", linkageName: "_ZNK4RTTL7RTVec_tILi2EfLi0EE7maximumEv", scope: !230, file: !31, line: 326, type: !327, scopeLine: 326, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!381 = !DISubprogram(name: "absMinimum", linkageName: "_ZNK4RTTL7RTVec_tILi2EfLi0EE10absMinimumEv", scope: !230, file: !31, line: 327, type: !327, scopeLine: 327, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!382 = !DISubprogram(name: "absMaximum", linkageName: "_ZNK4RTTL7RTVec_tILi2EfLi0EE10absMaximumEv", scope: !230, file: !31, line: 328, type: !327, scopeLine: 328, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!383 = !DISubprogram(name: "minIndex", linkageName: "_ZNK4RTTL7RTVec_tILi2EfLi0EE8minIndexEv", scope: !230, file: !31, line: 329, type: !384, scopeLine: 329, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!384 = !DISubroutineType(types: !385)
!385 = !{!22, !325}
!386 = !DISubprogram(name: "maxIndex", linkageName: "_ZNK4RTTL7RTVec_tILi2EfLi0EE8maxIndexEv", scope: !230, file: !31, line: 330, type: !384, scopeLine: 330, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!387 = !DISubprogram(name: "minAbsIndex", linkageName: "_ZNK4RTTL7RTVec_tILi2EfLi0EE11minAbsIndexEv", scope: !230, file: !31, line: 331, type: !384, scopeLine: 331, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!388 = !DISubprogram(name: "maxAbsIndex", linkageName: "_ZNK4RTTL7RTVec_tILi2EfLi0EE11maxAbsIndexEv", scope: !230, file: !31, line: 332, type: !384, scopeLine: 332, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!389 = !{!0, !7, !390, !398, !400, !402, !409, !414, !419, !424, !429, !434, !439}
!390 = !DIGlobalVariableExpression(var: !391, expr: !DIExpression())
!391 = distinct !DIGlobalVariable(name: "usePBOs", linkageName: "_ZN3LRT20RGBAucharFrameBuffer7Options7usePBOsE", scope: !15, file: !392, line: 11, type: !218, isLocal: false, isDefinition: true, declaration: !393)
!392 = !DIFile(filename: "LRT/FrameBuffer.cxx", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src", checksumkind: CSK_MD5, checksum: "6c458b08e0223ee4cb19d91b6fd84e1b")
!393 = !DIDerivedType(tag: DW_TAG_member, name: "usePBOs", scope: !394, file: !14, line: 55, baseType: !218, flags: DIFlagStaticMember)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Options", scope: !13, file: !14, line: 49, size: 8, flags: DIFlagTypePassByValue, elements: !395, identifier: "_ZTSN3LRT20RGBAucharFrameBuffer7OptionsE")
!395 = !{!393, !396, !397}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "useMemoryFB", scope: !394, file: !14, line: 60, baseType: !218, flags: DIFlagStaticMember)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "defaultRes", scope: !394, file: !14, line: 64, baseType: !24, flags: DIFlagStaticMember)
!398 = !DIGlobalVariableExpression(var: !399, expr: !DIExpression())
!399 = distinct !DIGlobalVariable(name: "useMemoryFB", linkageName: "_ZN3LRT20RGBAucharFrameBuffer7Options11useMemoryFBE", scope: !15, file: !392, line: 12, type: !218, isLocal: false, isDefinition: true, declaration: !396)
!400 = !DIGlobalVariableExpression(var: !401, expr: !DIExpression())
!401 = distinct !DIGlobalVariable(name: "defaultRes", linkageName: "_ZN3LRT20RGBAucharFrameBuffer7Options10defaultResE", scope: !15, file: !392, line: 13, type: !24, isLocal: false, isDefinition: true, declaration: !397)
!402 = !DIGlobalVariableExpression(var: !403, expr: !DIExpression())
!403 = distinct !DIGlobalVariable(scope: null, file: !392, line: 22, type: !404, isLocal: true, isDefinition: true)
!404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !405, size: 224, elements: !407)
!405 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !406)
!406 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!407 = !{!408}
!408 = !DISubrange(count: 28)
!409 = !DIGlobalVariableExpression(var: !410, expr: !DIExpression())
!410 = distinct !DIGlobalVariable(scope: null, file: !392, line: 34, type: !411, isLocal: true, isDefinition: true)
!411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !405, size: 336, elements: !412)
!412 = !{!413}
!413 = !DISubrange(count: 42)
!414 = !DIGlobalVariableExpression(var: !415, expr: !DIExpression())
!415 = distinct !DIGlobalVariable(scope: null, file: !392, line: 35, type: !416, isLocal: true, isDefinition: true)
!416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !405, size: 328, elements: !417)
!417 = !{!418}
!418 = !DISubrange(count: 41)
!419 = !DIGlobalVariableExpression(var: !420, expr: !DIExpression())
!420 = distinct !DIGlobalVariable(scope: null, file: !392, line: 38, type: !421, isLocal: true, isDefinition: true)
!421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !405, size: 208, elements: !422)
!422 = !{!423}
!423 = !DISubrange(count: 26)
!424 = !DIGlobalVariableExpression(var: !425, expr: !DIExpression())
!425 = distinct !DIGlobalVariable(scope: null, file: !392, line: 43, type: !426, isLocal: true, isDefinition: true)
!426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !405, size: 448, elements: !427)
!427 = !{!428}
!428 = !DISubrange(count: 56)
!429 = !DIGlobalVariableExpression(var: !430, expr: !DIExpression())
!430 = distinct !DIGlobalVariable(scope: null, file: !33, line: 44, type: !431, isLocal: true, isDefinition: true)
!431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !405, size: 232, elements: !432)
!432 = !{!433}
!433 = !DISubrange(count: 29)
!434 = !DIGlobalVariableExpression(var: !435, expr: !DIExpression())
!435 = distinct !DIGlobalVariable(scope: null, file: !33, line: 44, type: !436, isLocal: true, isDefinition: true)
!436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !405, size: 704, elements: !437)
!437 = !{!438}
!438 = !DISubrange(count: 88)
!439 = !DIGlobalVariableExpression(var: !440, expr: !DIExpression())
!440 = distinct !DIGlobalVariable(scope: null, file: !33, line: 44, type: !441, isLocal: true, isDefinition: true)
!441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !405, size: 1480, elements: !442)
!442 = !{!443}
!443 = !DISubrange(count: 185)
!444 = !{!445, !451, !455, !462, !466, !471, !473, !479, !483, !487, !501, !505, !509, !513, !517, !522, !526, !530, !534, !538, !546, !550, !554, !556, !558, !562, !567, !573, !577, !581, !583, !591, !595, !603, !605, !609, !613, !617, !621, !626, !630, !635, !636, !637, !638, !640, !641, !642, !643, !644, !645, !646, !648, !649, !650, !651, !652, !653, !654, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !688, !690, !692, !696, !698, !700, !702, !704, !706, !708, !710, !714, !718, !720, !722, !727, !729, !731, !733, !735, !737, !739, !742, !744, !746, !750, !752, !754, !756, !758, !760, !762, !764, !766, !768, !770, !772, !776, !780, !782, !784, !786, !788, !790, !792, !794, !796, !798, !800, !802, !804, !806, !808, !810, !814, !818, !822, !824, !826, !828, !830, !832, !834, !836, !838, !840, !844, !848, !852, !854, !856, !858, !862, !866, !870, !872, !874, !876, !878, !880, !882, !884, !886, !888, !890, !892, !894, !898, !902, !906, !908, !910, !912, !914, !918, !922, !924, !926, !928, !930, !932, !934, !938, !942, !944, !946, !948, !950, !954, !958, !962, !964, !966, !968, !970, !972, !974, !978, !982, !986, !988, !992, !996, !998, !1000, !1002, !1004, !1006, !1008, !1010, !1015, !1030, !1033, !1038, !1047, !1052, !1056, !1060, !1064, !1068, !1070, !1072, !1076, !1082, !1086, !1092, !1098, !1100, !1104, !1108, !1112, !1116, !1128, !1130, !1134, !1138, !1142, !1144, !1148, !1152, !1156, !1158, !1160, !1164, !1172, !1176, !1180, !1184, !1186, !1192, !1194, !1200, !1204, !1208, !1212, !1216, !1220, !1224, !1226, !1228, !1232, !1236, !1240, !1242, !1246, !1250, !1252, !1254, !1258, !1262, !1266, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1284, !1288, !1292, !1299, !1303, !1306, !1309, !1312, !1314, !1316, !1318, !1321, !1324, !1327, !1330, !1333, !1335, !1339, !1343, !1346, !1349, !1351, !1353, !1355, !1357, !1360, !1363, !1366, !1369, !1372, !1374, !1378, !1382, !1387, !1391, !1393, !1395, !1397, !1399, !1401, !1403, !1405, !1407, !1409, !1411, !1413, !1415, !1417, !1421, !1427, !1432, !1436, !1438, !1440, !1442, !1444, !1451, !1455, !1459, !1463, !1467, !1471, !1476, !1480, !1482, !1486, !1492, !1496, !1501, !1503, !1505, !1509, !1513, !1517, !1519, !1521, !1523, !1525, !1529, !1531, !1533, !1537, !1541, !1545, !1549, !1553, !1555, !1557, !1561, !1565, !1569, !1573, !1575, !1577, !1581, !1585, !1586, !1587, !1588, !1589, !1590, !1596, !1599, !1600, !1602, !1604, !1606, !1608, !1612, !1614, !1616, !1618, !1620, !1622, !1624, !1626, !1628, !1632, !1636, !1638, !1642, !1646, !1648, !1649, !1655, !1659, !1663, !1667, !1671, !1675, !1677, !1679, !1681, !1685, !1689, !1693, !1697, !1701, !1703, !1705, !1707, !1711, !1715, !1719, !1721, !1723, !1760, !1762, !1763, !1764}
!445 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !446, file: !450, line: 52)
!446 = !DISubprogram(name: "abs", scope: !447, file: !447, line: 848, type: !448, flags: DIFlagPrototyped, spFlags: 0)
!447 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!448 = !DISubroutineType(types: !449)
!449 = !{!22, !22}
!450 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/std_abs.h", directory: "")
!451 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !452, file: !454, line: 127)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !447, line: 63, baseType: !453)
!453 = !DICompositeType(tag: DW_TAG_structure_type, file: !447, line: 59, size: 64, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!454 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cstdlib", directory: "")
!455 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !456, file: !454, line: 128)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !447, line: 71, baseType: !457)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !447, line: 67, size: 128, flags: DIFlagTypePassByValue, elements: !458, identifier: "_ZTS6ldiv_t")
!458 = !{!459, !461}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !457, file: !447, line: 69, baseType: !460, size: 64)
!460 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !457, file: !447, line: 70, baseType: !460, size: 64, offset: 64)
!462 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !463, file: !454, line: 130)
!463 = !DISubprogram(name: "abort", scope: !447, file: !447, line: 598, type: !464, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!464 = !DISubroutineType(types: !465)
!465 = !{null}
!466 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !467, file: !454, line: 134)
!467 = !DISubprogram(name: "atexit", scope: !447, file: !447, line: 602, type: !468, flags: DIFlagPrototyped, spFlags: 0)
!468 = !DISubroutineType(types: !469)
!469 = !{!22, !470}
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!471 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !472, file: !454, line: 137)
!472 = !DISubprogram(name: "at_quick_exit", scope: !447, file: !447, line: 607, type: !468, flags: DIFlagPrototyped, spFlags: 0)
!473 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !474, file: !454, line: 140)
!474 = !DISubprogram(name: "atof", scope: !447, file: !447, line: 102, type: !475, flags: DIFlagPrototyped, spFlags: 0)
!475 = !DISubroutineType(types: !476)
!476 = !{!477, !478}
!477 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!479 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !480, file: !454, line: 141)
!480 = !DISubprogram(name: "atoi", scope: !447, file: !447, line: 105, type: !481, flags: DIFlagPrototyped, spFlags: 0)
!481 = !DISubroutineType(types: !482)
!482 = !{!22, !478}
!483 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !484, file: !454, line: 142)
!484 = !DISubprogram(name: "atol", scope: !447, file: !447, line: 108, type: !485, flags: DIFlagPrototyped, spFlags: 0)
!485 = !DISubroutineType(types: !486)
!486 = !{!460, !478}
!487 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !488, file: !454, line: 143)
!488 = !DISubprogram(name: "bsearch", scope: !447, file: !447, line: 828, type: !489, flags: DIFlagPrototyped, spFlags: 0)
!489 = !DISubroutineType(types: !490)
!490 = !{!491, !492, !492, !494, !494, !497}
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !495, line: 46, baseType: !496)
!495 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!496 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !447, line: 816, baseType: !498)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DISubroutineType(types: !500)
!500 = !{!22, !492, !492}
!501 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !502, file: !454, line: 144)
!502 = !DISubprogram(name: "calloc", scope: !447, file: !447, line: 543, type: !503, flags: DIFlagPrototyped, spFlags: 0)
!503 = !DISubroutineType(types: !504)
!504 = !{!491, !494, !494}
!505 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !506, file: !454, line: 145)
!506 = !DISubprogram(name: "div", scope: !447, file: !447, line: 860, type: !507, flags: DIFlagPrototyped, spFlags: 0)
!507 = !DISubroutineType(types: !508)
!508 = !{!452, !22, !22}
!509 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !510, file: !454, line: 146)
!510 = !DISubprogram(name: "exit", scope: !447, file: !447, line: 624, type: !511, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!511 = !DISubroutineType(types: !512)
!512 = !{null, !22}
!513 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !514, file: !454, line: 147)
!514 = !DISubprogram(name: "free", scope: !447, file: !447, line: 555, type: !515, flags: DIFlagPrototyped, spFlags: 0)
!515 = !DISubroutineType(types: !516)
!516 = !{null, !491}
!517 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !518, file: !454, line: 148)
!518 = !DISubprogram(name: "getenv", scope: !447, file: !447, line: 641, type: !519, flags: DIFlagPrototyped, spFlags: 0)
!519 = !DISubroutineType(types: !520)
!520 = !{!521, !478}
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!522 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !523, file: !454, line: 149)
!523 = !DISubprogram(name: "labs", scope: !447, file: !447, line: 849, type: !524, flags: DIFlagPrototyped, spFlags: 0)
!524 = !DISubroutineType(types: !525)
!525 = !{!460, !460}
!526 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !527, file: !454, line: 150)
!527 = !DISubprogram(name: "ldiv", scope: !447, file: !447, line: 862, type: !528, flags: DIFlagPrototyped, spFlags: 0)
!528 = !DISubroutineType(types: !529)
!529 = !{!456, !460, !460}
!530 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !531, file: !454, line: 151)
!531 = !DISubprogram(name: "malloc", scope: !447, file: !447, line: 540, type: !532, flags: DIFlagPrototyped, spFlags: 0)
!532 = !DISubroutineType(types: !533)
!533 = !{!491, !494}
!534 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !535, file: !454, line: 153)
!535 = !DISubprogram(name: "mblen", scope: !447, file: !447, line: 930, type: !536, flags: DIFlagPrototyped, spFlags: 0)
!536 = !DISubroutineType(types: !537)
!537 = !{!22, !478, !494}
!538 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !539, file: !454, line: 154)
!539 = !DISubprogram(name: "mbstowcs", scope: !447, file: !447, line: 941, type: !540, flags: DIFlagPrototyped, spFlags: 0)
!540 = !DISubroutineType(types: !541)
!541 = !{!494, !542, !545, !494}
!542 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !543)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!545 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !478)
!546 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !547, file: !454, line: 155)
!547 = !DISubprogram(name: "mbtowc", scope: !447, file: !447, line: 933, type: !548, flags: DIFlagPrototyped, spFlags: 0)
!548 = !DISubroutineType(types: !549)
!549 = !{!22, !542, !545, !494}
!550 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !551, file: !454, line: 157)
!551 = !DISubprogram(name: "qsort", scope: !447, file: !447, line: 838, type: !552, flags: DIFlagPrototyped, spFlags: 0)
!552 = !DISubroutineType(types: !553)
!553 = !{null, !491, !494, !494, !497}
!554 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !555, file: !454, line: 160)
!555 = !DISubprogram(name: "quick_exit", scope: !447, file: !447, line: 630, type: !511, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!556 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !557, file: !454, line: 163)
!557 = !DISubprogram(name: "rand", scope: !447, file: !447, line: 454, type: !20, flags: DIFlagPrototyped, spFlags: 0)
!558 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !559, file: !454, line: 164)
!559 = !DISubprogram(name: "realloc", scope: !447, file: !447, line: 551, type: !560, flags: DIFlagPrototyped, spFlags: 0)
!560 = !DISubroutineType(types: !561)
!561 = !{!491, !491, !494}
!562 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !563, file: !454, line: 165)
!563 = !DISubprogram(name: "srand", scope: !447, file: !447, line: 456, type: !564, flags: DIFlagPrototyped, spFlags: 0)
!564 = !DISubroutineType(types: !565)
!565 = !{null, !566}
!566 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!567 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !568, file: !454, line: 166)
!568 = !DISubprogram(name: "strtod", scope: !447, file: !447, line: 118, type: !569, flags: DIFlagPrototyped, spFlags: 0)
!569 = !DISubroutineType(types: !570)
!570 = !{!477, !545, !571}
!571 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !572)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!573 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !574, file: !454, line: 167)
!574 = !DISubprogram(name: "strtol", scope: !447, file: !447, line: 177, type: !575, flags: DIFlagPrototyped, spFlags: 0)
!575 = !DISubroutineType(types: !576)
!576 = !{!460, !545, !571, !22}
!577 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !578, file: !454, line: 168)
!578 = !DISubprogram(name: "strtoul", scope: !447, file: !447, line: 181, type: !579, flags: DIFlagPrototyped, spFlags: 0)
!579 = !DISubroutineType(types: !580)
!580 = !{!496, !545, !571, !22}
!581 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !582, file: !454, line: 169)
!582 = !DISubprogram(name: "system", scope: !447, file: !447, line: 791, type: !481, flags: DIFlagPrototyped, spFlags: 0)
!583 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !584, file: !454, line: 171)
!584 = !DISubprogram(name: "wcstombs", scope: !447, file: !447, line: 945, type: !585, flags: DIFlagPrototyped, spFlags: 0)
!585 = !DISubroutineType(types: !586)
!586 = !{!494, !587, !588, !494}
!587 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !521)
!588 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !589)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !544)
!591 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !592, file: !454, line: 172)
!592 = !DISubprogram(name: "wctomb", scope: !447, file: !447, line: 937, type: !593, flags: DIFlagPrototyped, spFlags: 0)
!593 = !DISubroutineType(types: !594)
!594 = !{!22, !521, !544}
!595 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !596, entity: !597, file: !454, line: 200)
!596 = !DINamespace(name: "__gnu_cxx", scope: null)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !447, line: 81, baseType: !598)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !447, line: 77, size: 128, flags: DIFlagTypePassByValue, elements: !599, identifier: "_ZTS7lldiv_t")
!599 = !{!600, !602}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !598, file: !447, line: 79, baseType: !601, size: 64)
!601 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !598, file: !447, line: 80, baseType: !601, size: 64, offset: 64)
!603 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !596, entity: !604, file: !454, line: 206)
!604 = !DISubprogram(name: "_Exit", scope: !447, file: !447, line: 636, type: !511, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!605 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !596, entity: !606, file: !454, line: 210)
!606 = !DISubprogram(name: "llabs", scope: !447, file: !447, line: 852, type: !607, flags: DIFlagPrototyped, spFlags: 0)
!607 = !DISubroutineType(types: !608)
!608 = !{!601, !601}
!609 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !596, entity: !610, file: !454, line: 216)
!610 = !DISubprogram(name: "lldiv", scope: !447, file: !447, line: 866, type: !611, flags: DIFlagPrototyped, spFlags: 0)
!611 = !DISubroutineType(types: !612)
!612 = !{!597, !601, !601}
!613 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !596, entity: !614, file: !454, line: 227)
!614 = !DISubprogram(name: "atoll", scope: !447, file: !447, line: 113, type: !615, flags: DIFlagPrototyped, spFlags: 0)
!615 = !DISubroutineType(types: !616)
!616 = !{!601, !478}
!617 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !596, entity: !618, file: !454, line: 228)
!618 = !DISubprogram(name: "strtoll", scope: !447, file: !447, line: 201, type: !619, flags: DIFlagPrototyped, spFlags: 0)
!619 = !DISubroutineType(types: !620)
!620 = !{!601, !545, !571, !22}
!621 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !596, entity: !622, file: !454, line: 229)
!622 = !DISubprogram(name: "strtoull", scope: !447, file: !447, line: 206, type: !623, flags: DIFlagPrototyped, spFlags: 0)
!623 = !DISubroutineType(types: !624)
!624 = !{!625, !545, !571, !22}
!625 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!626 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !596, entity: !627, file: !454, line: 231)
!627 = !DISubprogram(name: "strtof", scope: !447, file: !447, line: 124, type: !628, flags: DIFlagPrototyped, spFlags: 0)
!628 = !DISubroutineType(types: !629)
!629 = !{!223, !545, !571}
!630 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !596, entity: !631, file: !454, line: 232)
!631 = !DISubprogram(name: "strtold", scope: !447, file: !447, line: 127, type: !632, flags: DIFlagPrototyped, spFlags: 0)
!632 = !DISubroutineType(types: !633)
!633 = !{!634, !545, !571}
!634 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!635 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !597, file: !454, line: 240)
!636 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !604, file: !454, line: 242)
!637 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !606, file: !454, line: 244)
!638 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !639, file: !454, line: 245)
!639 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !596, file: !454, line: 213, type: !611, flags: DIFlagPrototyped, spFlags: 0)
!640 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !610, file: !454, line: 246)
!641 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !614, file: !454, line: 248)
!642 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !627, file: !454, line: 249)
!643 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !618, file: !454, line: 250)
!644 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !622, file: !454, line: 251)
!645 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !631, file: !454, line: 252)
!646 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !463, file: !647, line: 38)
!647 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "0f5b773a303c24013fb112082e6d18a5")
!648 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !467, file: !647, line: 39)
!649 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !510, file: !647, line: 40)
!650 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !472, file: !647, line: 43)
!651 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !555, file: !647, line: 46)
!652 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !452, file: !647, line: 51)
!653 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !456, file: !647, line: 52)
!654 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !655, file: !647, line: 54)
!655 = !DISubprogram(name: "abs", linkageName: "_ZSt3abse", scope: !2, file: !450, line: 79, type: !656, flags: DIFlagPrototyped, spFlags: 0)
!656 = !DISubroutineType(types: !657)
!657 = !{!634, !634}
!658 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !474, file: !647, line: 55)
!659 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !480, file: !647, line: 56)
!660 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !484, file: !647, line: 57)
!661 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !488, file: !647, line: 58)
!662 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !502, file: !647, line: 59)
!663 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !639, file: !647, line: 60)
!664 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !514, file: !647, line: 61)
!665 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !518, file: !647, line: 62)
!666 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !523, file: !647, line: 63)
!667 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !527, file: !647, line: 64)
!668 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !531, file: !647, line: 65)
!669 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !535, file: !647, line: 67)
!670 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !539, file: !647, line: 68)
!671 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !547, file: !647, line: 69)
!672 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !551, file: !647, line: 71)
!673 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !557, file: !647, line: 72)
!674 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !559, file: !647, line: 73)
!675 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !563, file: !647, line: 74)
!676 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !568, file: !647, line: 75)
!677 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !574, file: !647, line: 76)
!678 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !578, file: !647, line: 77)
!679 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !582, file: !647, line: 78)
!680 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !584, file: !647, line: 80)
!681 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !592, file: !647, line: 81)
!682 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !683, file: !687, line: 83)
!683 = !DISubprogram(name: "acos", scope: !684, file: !684, line: 53, type: !685, flags: DIFlagPrototyped, spFlags: 0)
!684 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "8c6e2d0d2bda65bc5ba1ca02b65383b7")
!685 = !DISubroutineType(types: !686)
!686 = !{!477, !477}
!687 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cmath", directory: "")
!688 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !689, file: !687, line: 102)
!689 = !DISubprogram(name: "asin", scope: !684, file: !684, line: 55, type: !685, flags: DIFlagPrototyped, spFlags: 0)
!690 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !691, file: !687, line: 121)
!691 = !DISubprogram(name: "atan", scope: !684, file: !684, line: 57, type: !685, flags: DIFlagPrototyped, spFlags: 0)
!692 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !693, file: !687, line: 140)
!693 = !DISubprogram(name: "atan2", scope: !684, file: !684, line: 59, type: !694, flags: DIFlagPrototyped, spFlags: 0)
!694 = !DISubroutineType(types: !695)
!695 = !{!477, !477, !477}
!696 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !697, file: !687, line: 161)
!697 = !DISubprogram(name: "ceil", scope: !684, file: !684, line: 159, type: !685, flags: DIFlagPrototyped, spFlags: 0)
!698 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !699, file: !687, line: 180)
!699 = !DISubprogram(name: "cos", scope: !684, file: !684, line: 62, type: !685, flags: DIFlagPrototyped, spFlags: 0)
!700 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !701, file: !687, line: 199)
!701 = !DISubprogram(name: "cosh", scope: !684, file: !684, line: 71, type: !685, flags: DIFlagPrototyped, spFlags: 0)
!702 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !703, file: !687, line: 218)
!703 = !DISubprogram(name: "exp", scope: !684, file: !684, line: 95, type: !685, flags: DIFlagPrototyped, spFlags: 0)
!704 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !705, file: !687, line: 237)
!705 = !DISubprogram(name: "fabs", scope: !684, file: !684, line: 162, type: !685, flags: DIFlagPrototyped, spFlags: 0)
!706 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !707, file: !687, line: 256)
!707 = !DISubprogram(name: "floor", scope: !684, file: !684, line: 165, type: !685, flags: DIFlagPrototyped, spFlags: 0)
!708 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !709, file: !687, line: 275)
!709 = !DISubprogram(name: "fmod", scope: !684, file: !684, line: 168, type: !694, flags: DIFlagPrototyped, spFlags: 0)
!710 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !711, file: !687, line: 296)
!711 = !DISubprogram(name: "frexp", scope: !684, file: !684, line: 98, type: !712, flags: DIFlagPrototyped, spFlags: 0)
!712 = !DISubroutineType(types: !713)
!713 = !{!477, !477, !151}
!714 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !715, file: !687, line: 315)
!715 = !DISubprogram(name: "ldexp", scope: !684, file: !684, line: 101, type: !716, flags: DIFlagPrototyped, spFlags: 0)
!716 = !DISubroutineType(types: !717)
!717 = !{!477, !477, !22}
!718 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !719, file: !687, line: 334)
!719 = !DISubprogram(name: "log", scope: !684, file: !684, line: 104, type: !685, flags: DIFlagPrototyped, spFlags: 0)
!720 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !721, file: !687, line: 353)
!721 = !DISubprogram(name: "log10", scope: !684, file: !684, line: 107, type: !685, flags: DIFlagPrototyped, spFlags: 0)
!722 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !723, file: !687, line: 372)
!723 = !DISubprogram(name: "modf", scope: !684, file: !684, line: 110, type: !724, flags: DIFlagPrototyped, spFlags: 0)
!724 = !DISubroutineType(types: !725)
!725 = !{!477, !477, !726}
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!727 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !728, file: !687, line: 384)
!728 = !DISubprogram(name: "pow", scope: !684, file: !684, line: 140, type: !694, flags: DIFlagPrototyped, spFlags: 0)
!729 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !730, file: !687, line: 421)
!730 = !DISubprogram(name: "sin", scope: !684, file: !684, line: 64, type: !685, flags: DIFlagPrototyped, spFlags: 0)
!731 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !732, file: !687, line: 440)
!732 = !DISubprogram(name: "sinh", scope: !684, file: !684, line: 73, type: !685, flags: DIFlagPrototyped, spFlags: 0)
!733 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !734, file: !687, line: 459)
!734 = !DISubprogram(name: "sqrt", scope: !684, file: !684, line: 143, type: !685, flags: DIFlagPrototyped, spFlags: 0)
!735 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !736, file: !687, line: 478)
!736 = !DISubprogram(name: "tan", scope: !684, file: !684, line: 66, type: !685, flags: DIFlagPrototyped, spFlags: 0)
!737 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !738, file: !687, line: 497)
!738 = !DISubprogram(name: "tanh", scope: !684, file: !684, line: 75, type: !685, flags: DIFlagPrototyped, spFlags: 0)
!739 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !740, file: !687, line: 1065)
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_t", file: !741, line: 164, baseType: !477)
!741 = !DIFile(filename: "/usr/include/math.h", directory: "", checksumkind: CSK_MD5, checksum: "f3450d1d586f704597de1a1b2bed18f3")
!742 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !743, file: !687, line: 1066)
!743 = !DIDerivedType(tag: DW_TAG_typedef, name: "float_t", file: !741, line: 163, baseType: !223)
!744 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !745, file: !687, line: 1069)
!745 = !DISubprogram(name: "acosh", scope: !684, file: !684, line: 85, type: !685, flags: DIFlagPrototyped, spFlags: 0)
!746 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !747, file: !687, line: 1070)
!747 = !DISubprogram(name: "acoshf", scope: !684, file: !684, line: 85, type: !748, flags: DIFlagPrototyped, spFlags: 0)
!748 = !DISubroutineType(types: !749)
!749 = !{!223, !223}
!750 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !751, file: !687, line: 1071)
!751 = !DISubprogram(name: "acoshl", scope: !684, file: !684, line: 85, type: !656, flags: DIFlagPrototyped, spFlags: 0)
!752 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !753, file: !687, line: 1073)
!753 = !DISubprogram(name: "asinh", scope: !684, file: !684, line: 87, type: !685, flags: DIFlagPrototyped, spFlags: 0)
!754 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !755, file: !687, line: 1074)
!755 = !DISubprogram(name: "asinhf", scope: !684, file: !684, line: 87, type: !748, flags: DIFlagPrototyped, spFlags: 0)
!756 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !757, file: !687, line: 1075)
!757 = !DISubprogram(name: "asinhl", scope: !684, file: !684, line: 87, type: !656, flags: DIFlagPrototyped, spFlags: 0)
!758 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !759, file: !687, line: 1077)
!759 = !DISubprogram(name: "atanh", scope: !684, file: !684, line: 89, type: !685, flags: DIFlagPrototyped, spFlags: 0)
!760 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !761, file: !687, line: 1078)
!761 = !DISubprogram(name: "atanhf", scope: !684, file: !684, line: 89, type: !748, flags: DIFlagPrototyped, spFlags: 0)
!762 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !763, file: !687, line: 1079)
!763 = !DISubprogram(name: "atanhl", scope: !684, file: !684, line: 89, type: !656, flags: DIFlagPrototyped, spFlags: 0)
!764 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !765, file: !687, line: 1081)
!765 = !DISubprogram(name: "cbrt", scope: !684, file: !684, line: 152, type: !685, flags: DIFlagPrototyped, spFlags: 0)
!766 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !767, file: !687, line: 1082)
!767 = !DISubprogram(name: "cbrtf", scope: !684, file: !684, line: 152, type: !748, flags: DIFlagPrototyped, spFlags: 0)
!768 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !769, file: !687, line: 1083)
!769 = !DISubprogram(name: "cbrtl", scope: !684, file: !684, line: 152, type: !656, flags: DIFlagPrototyped, spFlags: 0)
!770 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !771, file: !687, line: 1085)
!771 = !DISubprogram(name: "copysign", scope: !684, file: !684, line: 198, type: !694, flags: DIFlagPrototyped, spFlags: 0)
!772 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !773, file: !687, line: 1086)
!773 = !DISubprogram(name: "copysignf", scope: !684, file: !684, line: 198, type: !774, flags: DIFlagPrototyped, spFlags: 0)
!774 = !DISubroutineType(types: !775)
!775 = !{!223, !223, !223}
!776 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !777, file: !687, line: 1087)
!777 = !DISubprogram(name: "copysignl", scope: !684, file: !684, line: 198, type: !778, flags: DIFlagPrototyped, spFlags: 0)
!778 = !DISubroutineType(types: !779)
!779 = !{!634, !634, !634}
!780 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !781, file: !687, line: 1089)
!781 = !DISubprogram(name: "erf", scope: !684, file: !684, line: 231, type: !685, flags: DIFlagPrototyped, spFlags: 0)
!782 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !783, file: !687, line: 1090)
!783 = !DISubprogram(name: "erff", scope: !684, file: !684, line: 231, type: !748, flags: DIFlagPrototyped, spFlags: 0)
!784 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !785, file: !687, line: 1091)
!785 = !DISubprogram(name: "erfl", scope: !684, file: !684, line: 231, type: !656, flags: DIFlagPrototyped, spFlags: 0)
!786 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !787, file: !687, line: 1093)
!787 = !DISubprogram(name: "erfc", scope: !684, file: !684, line: 232, type: !685, flags: DIFlagPrototyped, spFlags: 0)
!788 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !789, file: !687, line: 1094)
!789 = !DISubprogram(name: "erfcf", scope: !684, file: !684, line: 232, type: !748, flags: DIFlagPrototyped, spFlags: 0)
!790 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !791, file: !687, line: 1095)
!791 = !DISubprogram(name: "erfcl", scope: !684, file: !684, line: 232, type: !656, flags: DIFlagPrototyped, spFlags: 0)
!792 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !793, file: !687, line: 1097)
!793 = !DISubprogram(name: "exp2", scope: !684, file: !684, line: 130, type: !685, flags: DIFlagPrototyped, spFlags: 0)
!794 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !795, file: !687, line: 1098)
!795 = !DISubprogram(name: "exp2f", scope: !684, file: !684, line: 130, type: !748, flags: DIFlagPrototyped, spFlags: 0)
!796 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !797, file: !687, line: 1099)
!797 = !DISubprogram(name: "exp2l", scope: !684, file: !684, line: 130, type: !656, flags: DIFlagPrototyped, spFlags: 0)
!798 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !799, file: !687, line: 1101)
!799 = !DISubprogram(name: "expm1", scope: !684, file: !684, line: 119, type: !685, flags: DIFlagPrototyped, spFlags: 0)
!800 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !801, file: !687, line: 1102)
!801 = !DISubprogram(name: "expm1f", scope: !684, file: !684, line: 119, type: !748, flags: DIFlagPrototyped, spFlags: 0)
!802 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !803, file: !687, line: 1103)
!803 = !DISubprogram(name: "expm1l", scope: !684, file: !684, line: 119, type: !656, flags: DIFlagPrototyped, spFlags: 0)
!804 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !805, file: !687, line: 1105)
!805 = !DISubprogram(name: "fdim", scope: !684, file: !684, line: 329, type: !694, flags: DIFlagPrototyped, spFlags: 0)
!806 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !807, file: !687, line: 1106)
!807 = !DISubprogram(name: "fdimf", scope: !684, file: !684, line: 329, type: !774, flags: DIFlagPrototyped, spFlags: 0)
!808 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !809, file: !687, line: 1107)
!809 = !DISubprogram(name: "fdiml", scope: !684, file: !684, line: 329, type: !778, flags: DIFlagPrototyped, spFlags: 0)
!810 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !811, file: !687, line: 1109)
!811 = !DISubprogram(name: "fma", scope: !684, file: !684, line: 340, type: !812, flags: DIFlagPrototyped, spFlags: 0)
!812 = !DISubroutineType(types: !813)
!813 = !{!477, !477, !477, !477}
!814 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !815, file: !687, line: 1110)
!815 = !DISubprogram(name: "fmaf", scope: !684, file: !684, line: 340, type: !816, flags: DIFlagPrototyped, spFlags: 0)
!816 = !DISubroutineType(types: !817)
!817 = !{!223, !223, !223, !223}
!818 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !819, file: !687, line: 1111)
!819 = !DISubprogram(name: "fmal", scope: !684, file: !684, line: 340, type: !820, flags: DIFlagPrototyped, spFlags: 0)
!820 = !DISubroutineType(types: !821)
!821 = !{!634, !634, !634, !634}
!822 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !823, file: !687, line: 1113)
!823 = !DISubprogram(name: "fmax", scope: !684, file: !684, line: 333, type: !694, flags: DIFlagPrototyped, spFlags: 0)
!824 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !825, file: !687, line: 1114)
!825 = !DISubprogram(name: "fmaxf", scope: !684, file: !684, line: 333, type: !774, flags: DIFlagPrototyped, spFlags: 0)
!826 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !827, file: !687, line: 1115)
!827 = !DISubprogram(name: "fmaxl", scope: !684, file: !684, line: 333, type: !778, flags: DIFlagPrototyped, spFlags: 0)
!828 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !829, file: !687, line: 1117)
!829 = !DISubprogram(name: "fmin", scope: !684, file: !684, line: 336, type: !694, flags: DIFlagPrototyped, spFlags: 0)
!830 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !831, file: !687, line: 1118)
!831 = !DISubprogram(name: "fminf", scope: !684, file: !684, line: 336, type: !774, flags: DIFlagPrototyped, spFlags: 0)
!832 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !833, file: !687, line: 1119)
!833 = !DISubprogram(name: "fminl", scope: !684, file: !684, line: 336, type: !778, flags: DIFlagPrototyped, spFlags: 0)
!834 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !835, file: !687, line: 1121)
!835 = !DISubprogram(name: "hypot", scope: !684, file: !684, line: 147, type: !694, flags: DIFlagPrototyped, spFlags: 0)
!836 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !837, file: !687, line: 1122)
!837 = !DISubprogram(name: "hypotf", scope: !684, file: !684, line: 147, type: !774, flags: DIFlagPrototyped, spFlags: 0)
!838 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !839, file: !687, line: 1123)
!839 = !DISubprogram(name: "hypotl", scope: !684, file: !684, line: 147, type: !778, flags: DIFlagPrototyped, spFlags: 0)
!840 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !841, file: !687, line: 1125)
!841 = !DISubprogram(name: "ilogb", scope: !684, file: !684, line: 283, type: !842, flags: DIFlagPrototyped, spFlags: 0)
!842 = !DISubroutineType(types: !843)
!843 = !{!22, !477}
!844 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !845, file: !687, line: 1126)
!845 = !DISubprogram(name: "ilogbf", scope: !684, file: !684, line: 283, type: !846, flags: DIFlagPrototyped, spFlags: 0)
!846 = !DISubroutineType(types: !847)
!847 = !{!22, !223}
!848 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !849, file: !687, line: 1127)
!849 = !DISubprogram(name: "ilogbl", scope: !684, file: !684, line: 283, type: !850, flags: DIFlagPrototyped, spFlags: 0)
!850 = !DISubroutineType(types: !851)
!851 = !{!22, !634}
!852 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !853, file: !687, line: 1129)
!853 = !DISubprogram(name: "lgamma", scope: !684, file: !684, line: 233, type: !685, flags: DIFlagPrototyped, spFlags: 0)
!854 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !855, file: !687, line: 1130)
!855 = !DISubprogram(name: "lgammaf", scope: !684, file: !684, line: 233, type: !748, flags: DIFlagPrototyped, spFlags: 0)
!856 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !857, file: !687, line: 1131)
!857 = !DISubprogram(name: "lgammal", scope: !684, file: !684, line: 233, type: !656, flags: DIFlagPrototyped, spFlags: 0)
!858 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !859, file: !687, line: 1134)
!859 = !DISubprogram(name: "llrint", scope: !684, file: !684, line: 319, type: !860, flags: DIFlagPrototyped, spFlags: 0)
!860 = !DISubroutineType(types: !861)
!861 = !{!601, !477}
!862 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !863, file: !687, line: 1135)
!863 = !DISubprogram(name: "llrintf", scope: !684, file: !684, line: 319, type: !864, flags: DIFlagPrototyped, spFlags: 0)
!864 = !DISubroutineType(types: !865)
!865 = !{!601, !223}
!866 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !867, file: !687, line: 1136)
!867 = !DISubprogram(name: "llrintl", scope: !684, file: !684, line: 319, type: !868, flags: DIFlagPrototyped, spFlags: 0)
!868 = !DISubroutineType(types: !869)
!869 = !{!601, !634}
!870 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !871, file: !687, line: 1138)
!871 = !DISubprogram(name: "llround", scope: !684, file: !684, line: 325, type: !860, flags: DIFlagPrototyped, spFlags: 0)
!872 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !873, file: !687, line: 1139)
!873 = !DISubprogram(name: "llroundf", scope: !684, file: !684, line: 325, type: !864, flags: DIFlagPrototyped, spFlags: 0)
!874 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !875, file: !687, line: 1140)
!875 = !DISubprogram(name: "llroundl", scope: !684, file: !684, line: 325, type: !868, flags: DIFlagPrototyped, spFlags: 0)
!876 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !877, file: !687, line: 1143)
!877 = !DISubprogram(name: "log1p", scope: !684, file: !684, line: 122, type: !685, flags: DIFlagPrototyped, spFlags: 0)
!878 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !879, file: !687, line: 1144)
!879 = !DISubprogram(name: "log1pf", scope: !684, file: !684, line: 122, type: !748, flags: DIFlagPrototyped, spFlags: 0)
!880 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !881, file: !687, line: 1145)
!881 = !DISubprogram(name: "log1pl", scope: !684, file: !684, line: 122, type: !656, flags: DIFlagPrototyped, spFlags: 0)
!882 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !883, file: !687, line: 1147)
!883 = !DISubprogram(name: "log2", scope: !684, file: !684, line: 133, type: !685, flags: DIFlagPrototyped, spFlags: 0)
!884 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !885, file: !687, line: 1148)
!885 = !DISubprogram(name: "log2f", scope: !684, file: !684, line: 133, type: !748, flags: DIFlagPrototyped, spFlags: 0)
!886 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !887, file: !687, line: 1149)
!887 = !DISubprogram(name: "log2l", scope: !684, file: !684, line: 133, type: !656, flags: DIFlagPrototyped, spFlags: 0)
!888 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !889, file: !687, line: 1151)
!889 = !DISubprogram(name: "logb", scope: !684, file: !684, line: 125, type: !685, flags: DIFlagPrototyped, spFlags: 0)
!890 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !891, file: !687, line: 1152)
!891 = !DISubprogram(name: "logbf", scope: !684, file: !684, line: 125, type: !748, flags: DIFlagPrototyped, spFlags: 0)
!892 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !893, file: !687, line: 1153)
!893 = !DISubprogram(name: "logbl", scope: !684, file: !684, line: 125, type: !656, flags: DIFlagPrototyped, spFlags: 0)
!894 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !895, file: !687, line: 1155)
!895 = !DISubprogram(name: "lrint", scope: !684, file: !684, line: 317, type: !896, flags: DIFlagPrototyped, spFlags: 0)
!896 = !DISubroutineType(types: !897)
!897 = !{!460, !477}
!898 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !899, file: !687, line: 1156)
!899 = !DISubprogram(name: "lrintf", scope: !684, file: !684, line: 317, type: !900, flags: DIFlagPrototyped, spFlags: 0)
!900 = !DISubroutineType(types: !901)
!901 = !{!460, !223}
!902 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !903, file: !687, line: 1157)
!903 = !DISubprogram(name: "lrintl", scope: !684, file: !684, line: 317, type: !904, flags: DIFlagPrototyped, spFlags: 0)
!904 = !DISubroutineType(types: !905)
!905 = !{!460, !634}
!906 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !907, file: !687, line: 1159)
!907 = !DISubprogram(name: "lround", scope: !684, file: !684, line: 323, type: !896, flags: DIFlagPrototyped, spFlags: 0)
!908 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !909, file: !687, line: 1160)
!909 = !DISubprogram(name: "lroundf", scope: !684, file: !684, line: 323, type: !900, flags: DIFlagPrototyped, spFlags: 0)
!910 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !911, file: !687, line: 1161)
!911 = !DISubprogram(name: "lroundl", scope: !684, file: !684, line: 323, type: !904, flags: DIFlagPrototyped, spFlags: 0)
!912 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !913, file: !687, line: 1163)
!913 = !DISubprogram(name: "nan", scope: !684, file: !684, line: 203, type: !475, flags: DIFlagPrototyped, spFlags: 0)
!914 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !915, file: !687, line: 1164)
!915 = !DISubprogram(name: "nanf", scope: !684, file: !684, line: 203, type: !916, flags: DIFlagPrototyped, spFlags: 0)
!916 = !DISubroutineType(types: !917)
!917 = !{!223, !478}
!918 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !919, file: !687, line: 1165)
!919 = !DISubprogram(name: "nanl", scope: !684, file: !684, line: 203, type: !920, flags: DIFlagPrototyped, spFlags: 0)
!920 = !DISubroutineType(types: !921)
!921 = !{!634, !478}
!922 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !923, file: !687, line: 1167)
!923 = !DISubprogram(name: "nearbyint", scope: !684, file: !684, line: 297, type: !685, flags: DIFlagPrototyped, spFlags: 0)
!924 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !925, file: !687, line: 1168)
!925 = !DISubprogram(name: "nearbyintf", scope: !684, file: !684, line: 297, type: !748, flags: DIFlagPrototyped, spFlags: 0)
!926 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !927, file: !687, line: 1169)
!927 = !DISubprogram(name: "nearbyintl", scope: !684, file: !684, line: 297, type: !656, flags: DIFlagPrototyped, spFlags: 0)
!928 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !929, file: !687, line: 1171)
!929 = !DISubprogram(name: "nextafter", scope: !684, file: !684, line: 262, type: !694, flags: DIFlagPrototyped, spFlags: 0)
!930 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !931, file: !687, line: 1172)
!931 = !DISubprogram(name: "nextafterf", scope: !684, file: !684, line: 262, type: !774, flags: DIFlagPrototyped, spFlags: 0)
!932 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !933, file: !687, line: 1173)
!933 = !DISubprogram(name: "nextafterl", scope: !684, file: !684, line: 262, type: !778, flags: DIFlagPrototyped, spFlags: 0)
!934 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !935, file: !687, line: 1175)
!935 = !DISubprogram(name: "nexttoward", scope: !684, file: !684, line: 264, type: !936, flags: DIFlagPrototyped, spFlags: 0)
!936 = !DISubroutineType(types: !937)
!937 = !{!477, !477, !634}
!938 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !939, file: !687, line: 1176)
!939 = !DISubprogram(name: "nexttowardf", scope: !684, file: !684, line: 264, type: !940, flags: DIFlagPrototyped, spFlags: 0)
!940 = !DISubroutineType(types: !941)
!941 = !{!223, !223, !634}
!942 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !943, file: !687, line: 1177)
!943 = !DISubprogram(name: "nexttowardl", scope: !684, file: !684, line: 264, type: !778, flags: DIFlagPrototyped, spFlags: 0)
!944 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !945, file: !687, line: 1179)
!945 = !DISubprogram(name: "remainder", scope: !684, file: !684, line: 275, type: !694, flags: DIFlagPrototyped, spFlags: 0)
!946 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !947, file: !687, line: 1180)
!947 = !DISubprogram(name: "remainderf", scope: !684, file: !684, line: 275, type: !774, flags: DIFlagPrototyped, spFlags: 0)
!948 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !949, file: !687, line: 1181)
!949 = !DISubprogram(name: "remainderl", scope: !684, file: !684, line: 275, type: !778, flags: DIFlagPrototyped, spFlags: 0)
!950 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !951, file: !687, line: 1183)
!951 = !DISubprogram(name: "remquo", scope: !684, file: !684, line: 310, type: !952, flags: DIFlagPrototyped, spFlags: 0)
!952 = !DISubroutineType(types: !953)
!953 = !{!477, !477, !477, !151}
!954 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !955, file: !687, line: 1184)
!955 = !DISubprogram(name: "remquof", scope: !684, file: !684, line: 310, type: !956, flags: DIFlagPrototyped, spFlags: 0)
!956 = !DISubroutineType(types: !957)
!957 = !{!223, !223, !223, !151}
!958 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !959, file: !687, line: 1185)
!959 = !DISubprogram(name: "remquol", scope: !684, file: !684, line: 310, type: !960, flags: DIFlagPrototyped, spFlags: 0)
!960 = !DISubroutineType(types: !961)
!961 = !{!634, !634, !634, !151}
!962 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !963, file: !687, line: 1187)
!963 = !DISubprogram(name: "rint", scope: !684, file: !684, line: 259, type: !685, flags: DIFlagPrototyped, spFlags: 0)
!964 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !965, file: !687, line: 1188)
!965 = !DISubprogram(name: "rintf", scope: !684, file: !684, line: 259, type: !748, flags: DIFlagPrototyped, spFlags: 0)
!966 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !967, file: !687, line: 1189)
!967 = !DISubprogram(name: "rintl", scope: !684, file: !684, line: 259, type: !656, flags: DIFlagPrototyped, spFlags: 0)
!968 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !969, file: !687, line: 1191)
!969 = !DISubprogram(name: "round", scope: !684, file: !684, line: 301, type: !685, flags: DIFlagPrototyped, spFlags: 0)
!970 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !971, file: !687, line: 1192)
!971 = !DISubprogram(name: "roundf", scope: !684, file: !684, line: 301, type: !748, flags: DIFlagPrototyped, spFlags: 0)
!972 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !973, file: !687, line: 1193)
!973 = !DISubprogram(name: "roundl", scope: !684, file: !684, line: 301, type: !656, flags: DIFlagPrototyped, spFlags: 0)
!974 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !975, file: !687, line: 1195)
!975 = !DISubprogram(name: "scalbln", scope: !684, file: !684, line: 293, type: !976, flags: DIFlagPrototyped, spFlags: 0)
!976 = !DISubroutineType(types: !977)
!977 = !{!477, !477, !460}
!978 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !979, file: !687, line: 1196)
!979 = !DISubprogram(name: "scalblnf", scope: !684, file: !684, line: 293, type: !980, flags: DIFlagPrototyped, spFlags: 0)
!980 = !DISubroutineType(types: !981)
!981 = !{!223, !223, !460}
!982 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !983, file: !687, line: 1197)
!983 = !DISubprogram(name: "scalblnl", scope: !684, file: !684, line: 293, type: !984, flags: DIFlagPrototyped, spFlags: 0)
!984 = !DISubroutineType(types: !985)
!985 = !{!634, !634, !460}
!986 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !987, file: !687, line: 1199)
!987 = !DISubprogram(name: "scalbn", scope: !684, file: !684, line: 279, type: !716, flags: DIFlagPrototyped, spFlags: 0)
!988 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !989, file: !687, line: 1200)
!989 = !DISubprogram(name: "scalbnf", scope: !684, file: !684, line: 279, type: !990, flags: DIFlagPrototyped, spFlags: 0)
!990 = !DISubroutineType(types: !991)
!991 = !{!223, !223, !22}
!992 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !993, file: !687, line: 1201)
!993 = !DISubprogram(name: "scalbnl", scope: !684, file: !684, line: 279, type: !994, flags: DIFlagPrototyped, spFlags: 0)
!994 = !DISubroutineType(types: !995)
!995 = !{!634, !634, !22}
!996 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !997, file: !687, line: 1203)
!997 = !DISubprogram(name: "tgamma", scope: !684, file: !684, line: 238, type: !685, flags: DIFlagPrototyped, spFlags: 0)
!998 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !999, file: !687, line: 1204)
!999 = !DISubprogram(name: "tgammaf", scope: !684, file: !684, line: 238, type: !748, flags: DIFlagPrototyped, spFlags: 0)
!1000 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1001, file: !687, line: 1205)
!1001 = !DISubprogram(name: "tgammal", scope: !684, file: !684, line: 238, type: !656, flags: DIFlagPrototyped, spFlags: 0)
!1002 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1003, file: !687, line: 1207)
!1003 = !DISubprogram(name: "trunc", scope: !684, file: !684, line: 305, type: !685, flags: DIFlagPrototyped, spFlags: 0)
!1004 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1005, file: !687, line: 1208)
!1005 = !DISubprogram(name: "truncf", scope: !684, file: !684, line: 305, type: !748, flags: DIFlagPrototyped, spFlags: 0)
!1006 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1007, file: !687, line: 1209)
!1007 = !DISubprogram(name: "truncl", scope: !684, file: !684, line: 305, type: !656, flags: DIFlagPrototyped, spFlags: 0)
!1008 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !655, file: !1009, line: 38)
!1009 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/math.h", directory: "", checksumkind: CSK_MD5, checksum: "a990cded20a6fb8dad866460b8c40922")
!1010 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !1011, file: !1009, line: 54)
!1011 = !DISubprogram(name: "modf", linkageName: "_ZSt4modfePe", scope: !2, file: !687, line: 380, type: !1012, flags: DIFlagPrototyped, spFlags: 0)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{!634, !634, !1014}
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!1015 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1016, file: !1029, line: 64)
!1016 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1017, line: 6, baseType: !1018)
!1017 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!1018 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1019, line: 21, baseType: !1020)
!1019 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!1020 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1019, line: 13, size: 64, flags: DIFlagTypePassByValue, elements: !1021, identifier: "_ZTS11__mbstate_t")
!1021 = !{!1022, !1023}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1020, file: !1019, line: 15, baseType: !22, size: 32)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1020, file: !1019, line: 20, baseType: !1024, size: 32, offset: 32)
!1024 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1020, file: !1019, line: 16, size: 32, flags: DIFlagTypePassByValue, elements: !1025, identifier: "_ZTSN11__mbstate_tUt_E")
!1025 = !{!1026, !1027}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1024, file: !1019, line: 18, baseType: !566, size: 32)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1024, file: !1019, line: 19, baseType: !1028, size: 32)
!1028 = !DICompositeType(tag: DW_TAG_array_type, baseType: !406, size: 32, elements: !224)
!1029 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cwchar", directory: "")
!1030 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1031, file: !1029, line: 141)
!1031 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1032, line: 20, baseType: !566)
!1032 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1033 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1034, file: !1029, line: 143)
!1034 = !DISubprogram(name: "btowc", scope: !1035, file: !1035, line: 285, type: !1036, flags: DIFlagPrototyped, spFlags: 0)
!1035 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!1036 = !DISubroutineType(types: !1037)
!1037 = !{!1031, !22}
!1038 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1039, file: !1029, line: 144)
!1039 = !DISubprogram(name: "fgetwc", scope: !1035, file: !1035, line: 744, type: !1040, flags: DIFlagPrototyped, spFlags: 0)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{!1031, !1042}
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !1044, line: 5, baseType: !1045)
!1044 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "72a8fe90981f484acae7c6f3dfc5c2b7")
!1045 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1046, line: 49, size: 1728, flags: DIFlagFwdDecl, identifier: "_ZTS8_IO_FILE")
!1046 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!1047 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1048, file: !1029, line: 145)
!1048 = !DISubprogram(name: "fgetws", scope: !1035, file: !1035, line: 773, type: !1049, flags: DIFlagPrototyped, spFlags: 0)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{!543, !542, !22, !1051}
!1051 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1042)
!1052 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1053, file: !1029, line: 146)
!1053 = !DISubprogram(name: "fputwc", scope: !1035, file: !1035, line: 758, type: !1054, flags: DIFlagPrototyped, spFlags: 0)
!1054 = !DISubroutineType(types: !1055)
!1055 = !{!1031, !544, !1042}
!1056 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1057, file: !1029, line: 147)
!1057 = !DISubprogram(name: "fputws", scope: !1035, file: !1035, line: 780, type: !1058, flags: DIFlagPrototyped, spFlags: 0)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{!22, !588, !1051}
!1060 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1061, file: !1029, line: 148)
!1061 = !DISubprogram(name: "fwide", scope: !1035, file: !1035, line: 588, type: !1062, flags: DIFlagPrototyped, spFlags: 0)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{!22, !1042, !22}
!1064 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1065, file: !1029, line: 149)
!1065 = !DISubprogram(name: "fwprintf", scope: !1035, file: !1035, line: 595, type: !1066, flags: DIFlagPrototyped, spFlags: 0)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{!22, !1051, !588, null}
!1068 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1069, file: !1029, line: 150)
!1069 = !DISubprogram(name: "fwscanf", linkageName: "__isoc99_fwscanf", scope: !1035, file: !1035, line: 657, type: !1066, flags: DIFlagPrototyped, spFlags: 0)
!1070 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1071, file: !1029, line: 151)
!1071 = !DISubprogram(name: "getwc", scope: !1035, file: !1035, line: 745, type: !1040, flags: DIFlagPrototyped, spFlags: 0)
!1072 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1073, file: !1029, line: 152)
!1073 = !DISubprogram(name: "getwchar", scope: !1035, file: !1035, line: 751, type: !1074, flags: DIFlagPrototyped, spFlags: 0)
!1074 = !DISubroutineType(types: !1075)
!1075 = !{!1031}
!1076 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1077, file: !1029, line: 153)
!1077 = !DISubprogram(name: "mbrlen", scope: !1035, file: !1035, line: 308, type: !1078, flags: DIFlagPrototyped, spFlags: 0)
!1078 = !DISubroutineType(types: !1079)
!1079 = !{!494, !545, !494, !1080}
!1080 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1081)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1082 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1083, file: !1029, line: 154)
!1083 = !DISubprogram(name: "mbrtowc", scope: !1035, file: !1035, line: 297, type: !1084, flags: DIFlagPrototyped, spFlags: 0)
!1084 = !DISubroutineType(types: !1085)
!1085 = !{!494, !542, !545, !494, !1080}
!1086 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1087, file: !1029, line: 155)
!1087 = !DISubprogram(name: "mbsinit", scope: !1035, file: !1035, line: 293, type: !1088, flags: DIFlagPrototyped, spFlags: 0)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{!22, !1090}
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1016)
!1092 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1093, file: !1029, line: 156)
!1093 = !DISubprogram(name: "mbsrtowcs", scope: !1035, file: !1035, line: 338, type: !1094, flags: DIFlagPrototyped, spFlags: 0)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{!494, !542, !1096, !494, !1080}
!1096 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1097)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!1098 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1099, file: !1029, line: 157)
!1099 = !DISubprogram(name: "putwc", scope: !1035, file: !1035, line: 759, type: !1054, flags: DIFlagPrototyped, spFlags: 0)
!1100 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1101, file: !1029, line: 158)
!1101 = !DISubprogram(name: "putwchar", scope: !1035, file: !1035, line: 765, type: !1102, flags: DIFlagPrototyped, spFlags: 0)
!1102 = !DISubroutineType(types: !1103)
!1103 = !{!1031, !544}
!1104 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1105, file: !1029, line: 160)
!1105 = !DISubprogram(name: "swprintf", scope: !1035, file: !1035, line: 605, type: !1106, flags: DIFlagPrototyped, spFlags: 0)
!1106 = !DISubroutineType(types: !1107)
!1107 = !{!22, !542, !494, !588, null}
!1108 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1109, file: !1029, line: 162)
!1109 = !DISubprogram(name: "swscanf", linkageName: "__isoc99_swscanf", scope: !1035, file: !1035, line: 664, type: !1110, flags: DIFlagPrototyped, spFlags: 0)
!1110 = !DISubroutineType(types: !1111)
!1111 = !{!22, !588, !588, null}
!1112 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1113, file: !1029, line: 163)
!1113 = !DISubprogram(name: "ungetwc", scope: !1035, file: !1035, line: 788, type: !1114, flags: DIFlagPrototyped, spFlags: 0)
!1114 = !DISubroutineType(types: !1115)
!1115 = !{!1031, !1031, !1042}
!1116 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1117, file: !1029, line: 164)
!1117 = !DISubprogram(name: "vfwprintf", scope: !1035, file: !1035, line: 613, type: !1118, flags: DIFlagPrototyped, spFlags: 0)
!1118 = !DISubroutineType(types: !1119)
!1119 = !{!22, !1051, !588, !1120}
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, flags: DIFlagTypePassByValue, elements: !1122, identifier: "_ZTS13__va_list_tag")
!1122 = !{!1123, !1125, !1126, !1127}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1121, file: !1124, baseType: !566, size: 32)
!1124 = !DIFile(filename: "LRT/FrameBuffer.cxx", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src")
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1121, file: !1124, baseType: !566, size: 32, offset: 32)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1121, file: !1124, baseType: !491, size: 64, offset: 64)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1121, file: !1124, baseType: !491, size: 64, offset: 128)
!1128 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1129, file: !1029, line: 166)
!1129 = !DISubprogram(name: "vfwscanf", linkageName: "__isoc99_vfwscanf", scope: !1035, file: !1035, line: 711, type: !1118, flags: DIFlagPrototyped, spFlags: 0)
!1130 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1131, file: !1029, line: 169)
!1131 = !DISubprogram(name: "vswprintf", scope: !1035, file: !1035, line: 626, type: !1132, flags: DIFlagPrototyped, spFlags: 0)
!1132 = !DISubroutineType(types: !1133)
!1133 = !{!22, !542, !494, !588, !1120}
!1134 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1135, file: !1029, line: 172)
!1135 = !DISubprogram(name: "vswscanf", linkageName: "__isoc99_vswscanf", scope: !1035, file: !1035, line: 718, type: !1136, flags: DIFlagPrototyped, spFlags: 0)
!1136 = !DISubroutineType(types: !1137)
!1137 = !{!22, !588, !588, !1120}
!1138 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1139, file: !1029, line: 174)
!1139 = !DISubprogram(name: "vwprintf", scope: !1035, file: !1035, line: 621, type: !1140, flags: DIFlagPrototyped, spFlags: 0)
!1140 = !DISubroutineType(types: !1141)
!1141 = !{!22, !588, !1120}
!1142 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1143, file: !1029, line: 176)
!1143 = !DISubprogram(name: "vwscanf", linkageName: "__isoc99_vwscanf", scope: !1035, file: !1035, line: 715, type: !1140, flags: DIFlagPrototyped, spFlags: 0)
!1144 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1145, file: !1029, line: 178)
!1145 = !DISubprogram(name: "wcrtomb", scope: !1035, file: !1035, line: 302, type: !1146, flags: DIFlagPrototyped, spFlags: 0)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{!494, !587, !544, !1080}
!1148 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1149, file: !1029, line: 179)
!1149 = !DISubprogram(name: "wcscat", scope: !1035, file: !1035, line: 97, type: !1150, flags: DIFlagPrototyped, spFlags: 0)
!1150 = !DISubroutineType(types: !1151)
!1151 = !{!543, !542, !588}
!1152 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1153, file: !1029, line: 180)
!1153 = !DISubprogram(name: "wcscmp", scope: !1035, file: !1035, line: 106, type: !1154, flags: DIFlagPrototyped, spFlags: 0)
!1154 = !DISubroutineType(types: !1155)
!1155 = !{!22, !589, !589}
!1156 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1157, file: !1029, line: 181)
!1157 = !DISubprogram(name: "wcscoll", scope: !1035, file: !1035, line: 131, type: !1154, flags: DIFlagPrototyped, spFlags: 0)
!1158 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1159, file: !1029, line: 182)
!1159 = !DISubprogram(name: "wcscpy", scope: !1035, file: !1035, line: 87, type: !1150, flags: DIFlagPrototyped, spFlags: 0)
!1160 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1161, file: !1029, line: 183)
!1161 = !DISubprogram(name: "wcscspn", scope: !1035, file: !1035, line: 188, type: !1162, flags: DIFlagPrototyped, spFlags: 0)
!1162 = !DISubroutineType(types: !1163)
!1163 = !{!494, !589, !589}
!1164 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1165, file: !1029, line: 184)
!1165 = !DISubprogram(name: "wcsftime", scope: !1035, file: !1035, line: 852, type: !1166, flags: DIFlagPrototyped, spFlags: 0)
!1166 = !DISubroutineType(types: !1167)
!1167 = !{!494, !542, !494, !588, !1168}
!1168 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1169)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1171)
!1171 = !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !1035, line: 83, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS2tm")
!1172 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1173, file: !1029, line: 185)
!1173 = !DISubprogram(name: "wcslen", scope: !1035, file: !1035, line: 223, type: !1174, flags: DIFlagPrototyped, spFlags: 0)
!1174 = !DISubroutineType(types: !1175)
!1175 = !{!494, !589}
!1176 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1177, file: !1029, line: 186)
!1177 = !DISubprogram(name: "wcsncat", scope: !1035, file: !1035, line: 101, type: !1178, flags: DIFlagPrototyped, spFlags: 0)
!1178 = !DISubroutineType(types: !1179)
!1179 = !{!543, !542, !588, !494}
!1180 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1181, file: !1029, line: 187)
!1181 = !DISubprogram(name: "wcsncmp", scope: !1035, file: !1035, line: 109, type: !1182, flags: DIFlagPrototyped, spFlags: 0)
!1182 = !DISubroutineType(types: !1183)
!1183 = !{!22, !589, !589, !494}
!1184 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1185, file: !1029, line: 188)
!1185 = !DISubprogram(name: "wcsncpy", scope: !1035, file: !1035, line: 92, type: !1178, flags: DIFlagPrototyped, spFlags: 0)
!1186 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1187, file: !1029, line: 189)
!1187 = !DISubprogram(name: "wcsrtombs", scope: !1035, file: !1035, line: 344, type: !1188, flags: DIFlagPrototyped, spFlags: 0)
!1188 = !DISubroutineType(types: !1189)
!1189 = !{!494, !587, !1190, !494, !1080}
!1190 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1191)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!1192 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1193, file: !1029, line: 190)
!1193 = !DISubprogram(name: "wcsspn", scope: !1035, file: !1035, line: 192, type: !1162, flags: DIFlagPrototyped, spFlags: 0)
!1194 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1195, file: !1029, line: 191)
!1195 = !DISubprogram(name: "wcstod", scope: !1035, file: !1035, line: 378, type: !1196, flags: DIFlagPrototyped, spFlags: 0)
!1196 = !DISubroutineType(types: !1197)
!1197 = !{!477, !588, !1198}
!1198 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1199)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!1200 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1201, file: !1029, line: 193)
!1201 = !DISubprogram(name: "wcstof", scope: !1035, file: !1035, line: 383, type: !1202, flags: DIFlagPrototyped, spFlags: 0)
!1202 = !DISubroutineType(types: !1203)
!1203 = !{!223, !588, !1198}
!1204 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1205, file: !1029, line: 195)
!1205 = !DISubprogram(name: "wcstok", scope: !1035, file: !1035, line: 218, type: !1206, flags: DIFlagPrototyped, spFlags: 0)
!1206 = !DISubroutineType(types: !1207)
!1207 = !{!543, !542, !588, !1198}
!1208 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1209, file: !1029, line: 196)
!1209 = !DISubprogram(name: "wcstol", scope: !1035, file: !1035, line: 429, type: !1210, flags: DIFlagPrototyped, spFlags: 0)
!1210 = !DISubroutineType(types: !1211)
!1211 = !{!460, !588, !1198, !22}
!1212 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1213, file: !1029, line: 197)
!1213 = !DISubprogram(name: "wcstoul", scope: !1035, file: !1035, line: 434, type: !1214, flags: DIFlagPrototyped, spFlags: 0)
!1214 = !DISubroutineType(types: !1215)
!1215 = !{!496, !588, !1198, !22}
!1216 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1217, file: !1029, line: 198)
!1217 = !DISubprogram(name: "wcsxfrm", scope: !1035, file: !1035, line: 135, type: !1218, flags: DIFlagPrototyped, spFlags: 0)
!1218 = !DISubroutineType(types: !1219)
!1219 = !{!494, !542, !588, !494}
!1220 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1221, file: !1029, line: 199)
!1221 = !DISubprogram(name: "wctob", scope: !1035, file: !1035, line: 289, type: !1222, flags: DIFlagPrototyped, spFlags: 0)
!1222 = !DISubroutineType(types: !1223)
!1223 = !{!22, !1031}
!1224 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1225, file: !1029, line: 200)
!1225 = !DISubprogram(name: "wmemcmp", scope: !1035, file: !1035, line: 259, type: !1182, flags: DIFlagPrototyped, spFlags: 0)
!1226 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1227, file: !1029, line: 201)
!1227 = !DISubprogram(name: "wmemcpy", scope: !1035, file: !1035, line: 263, type: !1178, flags: DIFlagPrototyped, spFlags: 0)
!1228 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1229, file: !1029, line: 202)
!1229 = !DISubprogram(name: "wmemmove", scope: !1035, file: !1035, line: 268, type: !1230, flags: DIFlagPrototyped, spFlags: 0)
!1230 = !DISubroutineType(types: !1231)
!1231 = !{!543, !543, !589, !494}
!1232 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1233, file: !1029, line: 203)
!1233 = !DISubprogram(name: "wmemset", scope: !1035, file: !1035, line: 272, type: !1234, flags: DIFlagPrototyped, spFlags: 0)
!1234 = !DISubroutineType(types: !1235)
!1235 = !{!543, !543, !544, !494}
!1236 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1237, file: !1029, line: 204)
!1237 = !DISubprogram(name: "wprintf", scope: !1035, file: !1035, line: 602, type: !1238, flags: DIFlagPrototyped, spFlags: 0)
!1238 = !DISubroutineType(types: !1239)
!1239 = !{!22, !588, null}
!1240 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1241, file: !1029, line: 205)
!1241 = !DISubprogram(name: "wscanf", linkageName: "__isoc99_wscanf", scope: !1035, file: !1035, line: 661, type: !1238, flags: DIFlagPrototyped, spFlags: 0)
!1242 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1243, file: !1029, line: 206)
!1243 = !DISubprogram(name: "wcschr", scope: !1035, file: !1035, line: 165, type: !1244, flags: DIFlagPrototyped, spFlags: 0)
!1244 = !DISubroutineType(types: !1245)
!1245 = !{!543, !589, !544}
!1246 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1247, file: !1029, line: 207)
!1247 = !DISubprogram(name: "wcspbrk", scope: !1035, file: !1035, line: 202, type: !1248, flags: DIFlagPrototyped, spFlags: 0)
!1248 = !DISubroutineType(types: !1249)
!1249 = !{!543, !589, !589}
!1250 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1251, file: !1029, line: 208)
!1251 = !DISubprogram(name: "wcsrchr", scope: !1035, file: !1035, line: 175, type: !1244, flags: DIFlagPrototyped, spFlags: 0)
!1252 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1253, file: !1029, line: 209)
!1253 = !DISubprogram(name: "wcsstr", scope: !1035, file: !1035, line: 213, type: !1248, flags: DIFlagPrototyped, spFlags: 0)
!1254 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1255, file: !1029, line: 210)
!1255 = !DISubprogram(name: "wmemchr", scope: !1035, file: !1035, line: 254, type: !1256, flags: DIFlagPrototyped, spFlags: 0)
!1256 = !DISubroutineType(types: !1257)
!1257 = !{!543, !589, !544, !494}
!1258 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !596, entity: !1259, file: !1029, line: 251)
!1259 = !DISubprogram(name: "wcstold", scope: !1035, file: !1035, line: 385, type: !1260, flags: DIFlagPrototyped, spFlags: 0)
!1260 = !DISubroutineType(types: !1261)
!1261 = !{!634, !588, !1198}
!1262 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !596, entity: !1263, file: !1029, line: 260)
!1263 = !DISubprogram(name: "wcstoll", scope: !1035, file: !1035, line: 442, type: !1264, flags: DIFlagPrototyped, spFlags: 0)
!1264 = !DISubroutineType(types: !1265)
!1265 = !{!601, !588, !1198, !22}
!1266 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !596, entity: !1267, file: !1029, line: 261)
!1267 = !DISubprogram(name: "wcstoull", scope: !1035, file: !1035, line: 449, type: !1268, flags: DIFlagPrototyped, spFlags: 0)
!1268 = !DISubroutineType(types: !1269)
!1269 = !{!625, !588, !1198, !22}
!1270 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1259, file: !1029, line: 267)
!1271 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1263, file: !1029, line: 268)
!1272 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1267, file: !1029, line: 269)
!1273 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1201, file: !1029, line: 283)
!1274 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1129, file: !1029, line: 286)
!1275 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1135, file: !1029, line: 289)
!1276 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1143, file: !1029, line: 292)
!1277 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1259, file: !1029, line: 296)
!1278 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1263, file: !1029, line: 297)
!1279 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1267, file: !1029, line: 298)
!1280 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1281, file: !1282, line: 68)
!1281 = !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !1283, file: !1282, line: 90, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!1282 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/exception_ptr.h", directory: "", checksumkind: CSK_MD5, checksum: "ed433011c81450fc2dabd9aa8a29a038")
!1283 = !DINamespace(name: "__exception_ptr", scope: !2)
!1284 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !1283, entity: !1285, file: !1282, line: 84)
!1285 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !2, file: !1282, line: 80, type: !1286, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!1286 = !DISubroutineType(types: !1287)
!1287 = !{null, !1281}
!1288 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !1289, entity: !1290, file: !1291, line: 58)
!1289 = !DINamespace(name: "__gnu_debug", scope: null)
!1290 = !DINamespace(name: "__debug", scope: !2)
!1291 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/debug/debug.h", directory: "", checksumkind: CSK_MD5, checksum: "982c0103e1e5f86b0818efdfc5273c3c")
!1292 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1293, file: !1298, line: 47)
!1293 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !1294, line: 24, baseType: !1295)
!1294 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!1295 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !1296, line: 37, baseType: !1297)
!1296 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!1297 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1298 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cstdint", directory: "")
!1299 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1300, file: !1298, line: 48)
!1300 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !1294, line: 25, baseType: !1301)
!1301 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !1296, line: 39, baseType: !1302)
!1302 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1303 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1304, file: !1298, line: 49)
!1304 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !1294, line: 26, baseType: !1305)
!1305 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !1296, line: 41, baseType: !22)
!1306 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1307, file: !1298, line: 50)
!1307 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !1294, line: 27, baseType: !1308)
!1308 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !1296, line: 44, baseType: !460)
!1309 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1310, file: !1298, line: 52)
!1310 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !1311, line: 58, baseType: !1297)
!1311 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!1312 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1313, file: !1298, line: 53)
!1313 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !1311, line: 60, baseType: !460)
!1314 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1315, file: !1298, line: 54)
!1315 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !1311, line: 61, baseType: !460)
!1316 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1317, file: !1298, line: 55)
!1317 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !1311, line: 62, baseType: !460)
!1318 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1319, file: !1298, line: 57)
!1319 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !1311, line: 43, baseType: !1320)
!1320 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least8_t", file: !1296, line: 52, baseType: !1295)
!1321 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1322, file: !1298, line: 58)
!1322 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !1311, line: 44, baseType: !1323)
!1323 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least16_t", file: !1296, line: 54, baseType: !1301)
!1324 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1325, file: !1298, line: 59)
!1325 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !1311, line: 45, baseType: !1326)
!1326 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least32_t", file: !1296, line: 56, baseType: !1305)
!1327 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1328, file: !1298, line: 60)
!1328 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !1311, line: 46, baseType: !1329)
!1329 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least64_t", file: !1296, line: 58, baseType: !1308)
!1330 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1331, file: !1298, line: 62)
!1331 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !1311, line: 101, baseType: !1332)
!1332 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1296, line: 72, baseType: !460)
!1333 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1334, file: !1298, line: 63)
!1334 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !1311, line: 87, baseType: !460)
!1335 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1336, file: !1298, line: 65)
!1336 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !1337, line: 24, baseType: !1338)
!1337 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!1338 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !1296, line: 38, baseType: !191)
!1339 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1340, file: !1298, line: 66)
!1340 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !1337, line: 25, baseType: !1341)
!1341 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !1296, line: 40, baseType: !1342)
!1342 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1343 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1344, file: !1298, line: 67)
!1344 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !1337, line: 26, baseType: !1345)
!1345 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !1296, line: 42, baseType: !566)
!1346 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1347, file: !1298, line: 68)
!1347 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !1337, line: 27, baseType: !1348)
!1348 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !1296, line: 45, baseType: !496)
!1349 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1350, file: !1298, line: 70)
!1350 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !1311, line: 71, baseType: !191)
!1351 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1352, file: !1298, line: 71)
!1352 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !1311, line: 73, baseType: !496)
!1353 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1354, file: !1298, line: 72)
!1354 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !1311, line: 74, baseType: !496)
!1355 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1356, file: !1298, line: 73)
!1356 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !1311, line: 75, baseType: !496)
!1357 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1358, file: !1298, line: 75)
!1358 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !1311, line: 49, baseType: !1359)
!1359 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least8_t", file: !1296, line: 53, baseType: !1338)
!1360 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1361, file: !1298, line: 76)
!1361 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !1311, line: 50, baseType: !1362)
!1362 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least16_t", file: !1296, line: 55, baseType: !1341)
!1363 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1364, file: !1298, line: 77)
!1364 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !1311, line: 51, baseType: !1365)
!1365 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !1296, line: 57, baseType: !1345)
!1366 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1367, file: !1298, line: 78)
!1367 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !1311, line: 52, baseType: !1368)
!1368 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least64_t", file: !1296, line: 59, baseType: !1348)
!1369 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1370, file: !1298, line: 80)
!1370 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1311, line: 102, baseType: !1371)
!1371 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1296, line: 73, baseType: !496)
!1372 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1373, file: !1298, line: 81)
!1373 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !1311, line: 90, baseType: !496)
!1374 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1375, file: !1377, line: 53)
!1375 = !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !1376, line: 51, size: 768, flags: DIFlagFwdDecl, identifier: "_ZTS5lconv")
!1376 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1377 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/clocale", directory: "")
!1378 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1379, file: !1377, line: 54)
!1379 = !DISubprogram(name: "setlocale", scope: !1376, file: !1376, line: 122, type: !1380, flags: DIFlagPrototyped, spFlags: 0)
!1380 = !DISubroutineType(types: !1381)
!1381 = !{!521, !22, !478}
!1382 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1383, file: !1377, line: 55)
!1383 = !DISubprogram(name: "localeconv", scope: !1376, file: !1376, line: 125, type: !1384, flags: DIFlagPrototyped, spFlags: 0)
!1384 = !DISubroutineType(types: !1385)
!1385 = !{!1386}
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1387 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1388, file: !1390, line: 64)
!1388 = !DISubprogram(name: "isalnum", scope: !1389, file: !1389, line: 108, type: !448, flags: DIFlagPrototyped, spFlags: 0)
!1389 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!1390 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cctype", directory: "")
!1391 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1392, file: !1390, line: 65)
!1392 = !DISubprogram(name: "isalpha", scope: !1389, file: !1389, line: 109, type: !448, flags: DIFlagPrototyped, spFlags: 0)
!1393 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1394, file: !1390, line: 66)
!1394 = !DISubprogram(name: "iscntrl", scope: !1389, file: !1389, line: 110, type: !448, flags: DIFlagPrototyped, spFlags: 0)
!1395 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1396, file: !1390, line: 67)
!1396 = !DISubprogram(name: "isdigit", scope: !1389, file: !1389, line: 111, type: !448, flags: DIFlagPrototyped, spFlags: 0)
!1397 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1398, file: !1390, line: 68)
!1398 = !DISubprogram(name: "isgraph", scope: !1389, file: !1389, line: 113, type: !448, flags: DIFlagPrototyped, spFlags: 0)
!1399 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1400, file: !1390, line: 69)
!1400 = !DISubprogram(name: "islower", scope: !1389, file: !1389, line: 112, type: !448, flags: DIFlagPrototyped, spFlags: 0)
!1401 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1402, file: !1390, line: 70)
!1402 = !DISubprogram(name: "isprint", scope: !1389, file: !1389, line: 114, type: !448, flags: DIFlagPrototyped, spFlags: 0)
!1403 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1404, file: !1390, line: 71)
!1404 = !DISubprogram(name: "ispunct", scope: !1389, file: !1389, line: 115, type: !448, flags: DIFlagPrototyped, spFlags: 0)
!1405 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1406, file: !1390, line: 72)
!1406 = !DISubprogram(name: "isspace", scope: !1389, file: !1389, line: 116, type: !448, flags: DIFlagPrototyped, spFlags: 0)
!1407 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1408, file: !1390, line: 73)
!1408 = !DISubprogram(name: "isupper", scope: !1389, file: !1389, line: 117, type: !448, flags: DIFlagPrototyped, spFlags: 0)
!1409 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1410, file: !1390, line: 74)
!1410 = !DISubprogram(name: "isxdigit", scope: !1389, file: !1389, line: 118, type: !448, flags: DIFlagPrototyped, spFlags: 0)
!1411 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1412, file: !1390, line: 75)
!1412 = !DISubprogram(name: "tolower", scope: !1389, file: !1389, line: 122, type: !448, flags: DIFlagPrototyped, spFlags: 0)
!1413 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1414, file: !1390, line: 76)
!1414 = !DISubprogram(name: "toupper", scope: !1389, file: !1389, line: 125, type: !448, flags: DIFlagPrototyped, spFlags: 0)
!1415 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1416, file: !1390, line: 87)
!1416 = !DISubprogram(name: "isblank", scope: !1389, file: !1389, line: 130, type: !448, flags: DIFlagPrototyped, spFlags: 0)
!1417 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1418, file: !1420, line: 98)
!1418 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1419, line: 7, baseType: !1045)
!1419 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!1420 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cstdio", directory: "")
!1421 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1422, file: !1420, line: 99)
!1422 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !1423, line: 84, baseType: !1424)
!1423 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!1424 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fpos_t", file: !1425, line: 14, baseType: !1426)
!1425 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h", directory: "", checksumkind: CSK_MD5, checksum: "32de8bdaf3551a6c0a9394f9af4389ce")
!1426 = !DICompositeType(tag: DW_TAG_structure_type, name: "_G_fpos_t", file: !1425, line: 10, size: 128, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
!1427 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1428, file: !1420, line: 101)
!1428 = !DISubprogram(name: "clearerr", scope: !1423, file: !1423, line: 786, type: !1429, flags: DIFlagPrototyped, spFlags: 0)
!1429 = !DISubroutineType(types: !1430)
!1430 = !{null, !1431}
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!1432 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1433, file: !1420, line: 102)
!1433 = !DISubprogram(name: "fclose", scope: !1423, file: !1423, line: 178, type: !1434, flags: DIFlagPrototyped, spFlags: 0)
!1434 = !DISubroutineType(types: !1435)
!1435 = !{!22, !1431}
!1436 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1437, file: !1420, line: 103)
!1437 = !DISubprogram(name: "feof", scope: !1423, file: !1423, line: 788, type: !1434, flags: DIFlagPrototyped, spFlags: 0)
!1438 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1439, file: !1420, line: 104)
!1439 = !DISubprogram(name: "ferror", scope: !1423, file: !1423, line: 790, type: !1434, flags: DIFlagPrototyped, spFlags: 0)
!1440 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1441, file: !1420, line: 105)
!1441 = !DISubprogram(name: "fflush", scope: !1423, file: !1423, line: 230, type: !1434, flags: DIFlagPrototyped, spFlags: 0)
!1442 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1443, file: !1420, line: 106)
!1443 = !DISubprogram(name: "fgetc", scope: !1423, file: !1423, line: 513, type: !1434, flags: DIFlagPrototyped, spFlags: 0)
!1444 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1445, file: !1420, line: 107)
!1445 = !DISubprogram(name: "fgetpos", scope: !1423, file: !1423, line: 760, type: !1446, flags: DIFlagPrototyped, spFlags: 0)
!1446 = !DISubroutineType(types: !1447)
!1447 = !{!22, !1448, !1449}
!1448 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1431)
!1449 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1450)
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1451 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1452, file: !1420, line: 108)
!1452 = !DISubprogram(name: "fgets", scope: !1423, file: !1423, line: 592, type: !1453, flags: DIFlagPrototyped, spFlags: 0)
!1453 = !DISubroutineType(types: !1454)
!1454 = !{!521, !587, !22, !1448}
!1455 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1456, file: !1420, line: 109)
!1456 = !DISubprogram(name: "fopen", scope: !1423, file: !1423, line: 258, type: !1457, flags: DIFlagPrototyped, spFlags: 0)
!1457 = !DISubroutineType(types: !1458)
!1458 = !{!1431, !545, !545}
!1459 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1460, file: !1420, line: 110)
!1460 = !DISubprogram(name: "fprintf", scope: !1423, file: !1423, line: 350, type: !1461, flags: DIFlagPrototyped, spFlags: 0)
!1461 = !DISubroutineType(types: !1462)
!1462 = !{!22, !1448, !545, null}
!1463 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1464, file: !1420, line: 111)
!1464 = !DISubprogram(name: "fputc", scope: !1423, file: !1423, line: 549, type: !1465, flags: DIFlagPrototyped, spFlags: 0)
!1465 = !DISubroutineType(types: !1466)
!1466 = !{!22, !22, !1431}
!1467 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1468, file: !1420, line: 112)
!1468 = !DISubprogram(name: "fputs", scope: !1423, file: !1423, line: 655, type: !1469, flags: DIFlagPrototyped, spFlags: 0)
!1469 = !DISubroutineType(types: !1470)
!1470 = !{!22, !545, !1448}
!1471 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1472, file: !1420, line: 113)
!1472 = !DISubprogram(name: "fread", scope: !1423, file: !1423, line: 675, type: !1473, flags: DIFlagPrototyped, spFlags: 0)
!1473 = !DISubroutineType(types: !1474)
!1474 = !{!494, !1475, !494, !494, !1448}
!1475 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !491)
!1476 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1477, file: !1420, line: 114)
!1477 = !DISubprogram(name: "freopen", scope: !1423, file: !1423, line: 265, type: !1478, flags: DIFlagPrototyped, spFlags: 0)
!1478 = !DISubroutineType(types: !1479)
!1479 = !{!1431, !545, !545, !1448}
!1480 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1481, file: !1420, line: 115)
!1481 = !DISubprogram(name: "fscanf", linkageName: "__isoc99_fscanf", scope: !1423, file: !1423, line: 434, type: !1461, flags: DIFlagPrototyped, spFlags: 0)
!1482 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1483, file: !1420, line: 116)
!1483 = !DISubprogram(name: "fseek", scope: !1423, file: !1423, line: 713, type: !1484, flags: DIFlagPrototyped, spFlags: 0)
!1484 = !DISubroutineType(types: !1485)
!1485 = !{!22, !1431, !460, !22}
!1486 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1487, file: !1420, line: 117)
!1487 = !DISubprogram(name: "fsetpos", scope: !1423, file: !1423, line: 765, type: !1488, flags: DIFlagPrototyped, spFlags: 0)
!1488 = !DISubroutineType(types: !1489)
!1489 = !{!22, !1431, !1490}
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1422)
!1492 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1493, file: !1420, line: 118)
!1493 = !DISubprogram(name: "ftell", scope: !1423, file: !1423, line: 718, type: !1494, flags: DIFlagPrototyped, spFlags: 0)
!1494 = !DISubroutineType(types: !1495)
!1495 = !{!460, !1431}
!1496 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1497, file: !1420, line: 119)
!1497 = !DISubprogram(name: "fwrite", scope: !1423, file: !1423, line: 681, type: !1498, flags: DIFlagPrototyped, spFlags: 0)
!1498 = !DISubroutineType(types: !1499)
!1499 = !{!494, !1500, !494, !494, !1448}
!1500 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !492)
!1501 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1502, file: !1420, line: 120)
!1502 = !DISubprogram(name: "getc", scope: !1423, file: !1423, line: 514, type: !1434, flags: DIFlagPrototyped, spFlags: 0)
!1503 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1504, file: !1420, line: 121)
!1504 = !DISubprogram(name: "getchar", scope: !1423, file: !1423, line: 520, type: !20, flags: DIFlagPrototyped, spFlags: 0)
!1505 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1506, file: !1420, line: 124)
!1506 = !DISubprogram(name: "gets", scope: !1423, file: !1423, line: 605, type: !1507, flags: DIFlagPrototyped, spFlags: 0)
!1507 = !DISubroutineType(types: !1508)
!1508 = !{!521, !521}
!1509 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1510, file: !1420, line: 126)
!1510 = !DISubprogram(name: "perror", scope: !1423, file: !1423, line: 804, type: !1511, flags: DIFlagPrototyped, spFlags: 0)
!1511 = !DISubroutineType(types: !1512)
!1512 = !{null, !478}
!1513 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1514, file: !1420, line: 127)
!1514 = !DISubprogram(name: "printf", scope: !1423, file: !1423, line: 356, type: !1515, flags: DIFlagPrototyped, spFlags: 0)
!1515 = !DISubroutineType(types: !1516)
!1516 = !{!22, !545, null}
!1517 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1518, file: !1420, line: 128)
!1518 = !DISubprogram(name: "putc", scope: !1423, file: !1423, line: 550, type: !1465, flags: DIFlagPrototyped, spFlags: 0)
!1519 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1520, file: !1420, line: 129)
!1520 = !DISubprogram(name: "putchar", scope: !1423, file: !1423, line: 556, type: !448, flags: DIFlagPrototyped, spFlags: 0)
!1521 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1522, file: !1420, line: 130)
!1522 = !DISubprogram(name: "puts", scope: !1423, file: !1423, line: 661, type: !481, flags: DIFlagPrototyped, spFlags: 0)
!1523 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1524, file: !1420, line: 131)
!1524 = !DISubprogram(name: "remove", scope: !1423, file: !1423, line: 152, type: !481, flags: DIFlagPrototyped, spFlags: 0)
!1525 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1526, file: !1420, line: 132)
!1526 = !DISubprogram(name: "rename", scope: !1423, file: !1423, line: 154, type: !1527, flags: DIFlagPrototyped, spFlags: 0)
!1527 = !DISubroutineType(types: !1528)
!1528 = !{!22, !478, !478}
!1529 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1530, file: !1420, line: 133)
!1530 = !DISubprogram(name: "rewind", scope: !1423, file: !1423, line: 723, type: !1429, flags: DIFlagPrototyped, spFlags: 0)
!1531 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1532, file: !1420, line: 134)
!1532 = !DISubprogram(name: "scanf", linkageName: "__isoc99_scanf", scope: !1423, file: !1423, line: 437, type: !1515, flags: DIFlagPrototyped, spFlags: 0)
!1533 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1534, file: !1420, line: 135)
!1534 = !DISubprogram(name: "setbuf", scope: !1423, file: !1423, line: 328, type: !1535, flags: DIFlagPrototyped, spFlags: 0)
!1535 = !DISubroutineType(types: !1536)
!1536 = !{null, !1448, !587}
!1537 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1538, file: !1420, line: 136)
!1538 = !DISubprogram(name: "setvbuf", scope: !1423, file: !1423, line: 332, type: !1539, flags: DIFlagPrototyped, spFlags: 0)
!1539 = !DISubroutineType(types: !1540)
!1540 = !{!22, !1448, !587, !22, !494}
!1541 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1542, file: !1420, line: 137)
!1542 = !DISubprogram(name: "sprintf", scope: !1423, file: !1423, line: 358, type: !1543, flags: DIFlagPrototyped, spFlags: 0)
!1543 = !DISubroutineType(types: !1544)
!1544 = !{!22, !587, !545, null}
!1545 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1546, file: !1420, line: 138)
!1546 = !DISubprogram(name: "sscanf", linkageName: "__isoc99_sscanf", scope: !1423, file: !1423, line: 439, type: !1547, flags: DIFlagPrototyped, spFlags: 0)
!1547 = !DISubroutineType(types: !1548)
!1548 = !{!22, !545, !545, null}
!1549 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1550, file: !1420, line: 139)
!1550 = !DISubprogram(name: "tmpfile", scope: !1423, file: !1423, line: 188, type: !1551, flags: DIFlagPrototyped, spFlags: 0)
!1551 = !DISubroutineType(types: !1552)
!1552 = !{!1431}
!1553 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1554, file: !1420, line: 141)
!1554 = !DISubprogram(name: "tmpnam", scope: !1423, file: !1423, line: 205, type: !1507, flags: DIFlagPrototyped, spFlags: 0)
!1555 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1556, file: !1420, line: 143)
!1556 = !DISubprogram(name: "ungetc", scope: !1423, file: !1423, line: 668, type: !1465, flags: DIFlagPrototyped, spFlags: 0)
!1557 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1558, file: !1420, line: 144)
!1558 = !DISubprogram(name: "vfprintf", scope: !1423, file: !1423, line: 365, type: !1559, flags: DIFlagPrototyped, spFlags: 0)
!1559 = !DISubroutineType(types: !1560)
!1560 = !{!22, !1448, !545, !1120}
!1561 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1562, file: !1420, line: 145)
!1562 = !DISubprogram(name: "vprintf", scope: !1423, file: !1423, line: 371, type: !1563, flags: DIFlagPrototyped, spFlags: 0)
!1563 = !DISubroutineType(types: !1564)
!1564 = !{!22, !545, !1120}
!1565 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1566, file: !1420, line: 146)
!1566 = !DISubprogram(name: "vsprintf", scope: !1423, file: !1423, line: 373, type: !1567, flags: DIFlagPrototyped, spFlags: 0)
!1567 = !DISubroutineType(types: !1568)
!1568 = !{!22, !587, !545, !1120}
!1569 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !596, entity: !1570, file: !1420, line: 175)
!1570 = !DISubprogram(name: "snprintf", scope: !1423, file: !1423, line: 378, type: !1571, flags: DIFlagPrototyped, spFlags: 0)
!1571 = !DISubroutineType(types: !1572)
!1572 = !{!22, !587, !494, !545, null}
!1573 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !596, entity: !1574, file: !1420, line: 176)
!1574 = !DISubprogram(name: "vfscanf", linkageName: "__isoc99_vfscanf", scope: !1423, file: !1423, line: 479, type: !1559, flags: DIFlagPrototyped, spFlags: 0)
!1575 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !596, entity: !1576, file: !1420, line: 177)
!1576 = !DISubprogram(name: "vscanf", linkageName: "__isoc99_vscanf", scope: !1423, file: !1423, line: 484, type: !1563, flags: DIFlagPrototyped, spFlags: 0)
!1577 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !596, entity: !1578, file: !1420, line: 178)
!1578 = !DISubprogram(name: "vsnprintf", scope: !1423, file: !1423, line: 382, type: !1579, flags: DIFlagPrototyped, spFlags: 0)
!1579 = !DISubroutineType(types: !1580)
!1580 = !{!22, !587, !494, !545, !1120}
!1581 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !596, entity: !1582, file: !1420, line: 179)
!1582 = !DISubprogram(name: "vsscanf", linkageName: "__isoc99_vsscanf", scope: !1423, file: !1423, line: 487, type: !1583, flags: DIFlagPrototyped, spFlags: 0)
!1583 = !DISubroutineType(types: !1584)
!1584 = !{!22, !545, !545, !1120}
!1585 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1570, file: !1420, line: 185)
!1586 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1574, file: !1420, line: 186)
!1587 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1576, file: !1420, line: 187)
!1588 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1578, file: !1420, line: 188)
!1589 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1582, file: !1420, line: 189)
!1590 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1591, file: !1595, line: 82)
!1591 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctrans_t", file: !1592, line: 48, baseType: !1593)
!1592 = !DIFile(filename: "/usr/include/wctype.h", directory: "", checksumkind: CSK_MD5, checksum: "9bcd8e8b8cd2078c8a6c42e262af7d7b")
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1305)
!1595 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cwctype", directory: "")
!1596 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1597, file: !1595, line: 83)
!1597 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctype_t", file: !1598, line: 38, baseType: !496)
!1598 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!1599 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1031, file: !1595, line: 84)
!1600 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1601, file: !1595, line: 86)
!1601 = !DISubprogram(name: "iswalnum", scope: !1598, file: !1598, line: 95, type: !1222, flags: DIFlagPrototyped, spFlags: 0)
!1602 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1603, file: !1595, line: 87)
!1603 = !DISubprogram(name: "iswalpha", scope: !1598, file: !1598, line: 101, type: !1222, flags: DIFlagPrototyped, spFlags: 0)
!1604 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1605, file: !1595, line: 89)
!1605 = !DISubprogram(name: "iswblank", scope: !1598, file: !1598, line: 146, type: !1222, flags: DIFlagPrototyped, spFlags: 0)
!1606 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1607, file: !1595, line: 91)
!1607 = !DISubprogram(name: "iswcntrl", scope: !1598, file: !1598, line: 104, type: !1222, flags: DIFlagPrototyped, spFlags: 0)
!1608 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1609, file: !1595, line: 92)
!1609 = !DISubprogram(name: "iswctype", scope: !1598, file: !1598, line: 159, type: !1610, flags: DIFlagPrototyped, spFlags: 0)
!1610 = !DISubroutineType(types: !1611)
!1611 = !{!22, !1031, !1597}
!1612 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1613, file: !1595, line: 93)
!1613 = !DISubprogram(name: "iswdigit", scope: !1598, file: !1598, line: 108, type: !1222, flags: DIFlagPrototyped, spFlags: 0)
!1614 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1615, file: !1595, line: 94)
!1615 = !DISubprogram(name: "iswgraph", scope: !1598, file: !1598, line: 112, type: !1222, flags: DIFlagPrototyped, spFlags: 0)
!1616 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1617, file: !1595, line: 95)
!1617 = !DISubprogram(name: "iswlower", scope: !1598, file: !1598, line: 117, type: !1222, flags: DIFlagPrototyped, spFlags: 0)
!1618 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1619, file: !1595, line: 96)
!1619 = !DISubprogram(name: "iswprint", scope: !1598, file: !1598, line: 120, type: !1222, flags: DIFlagPrototyped, spFlags: 0)
!1620 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1621, file: !1595, line: 97)
!1621 = !DISubprogram(name: "iswpunct", scope: !1598, file: !1598, line: 125, type: !1222, flags: DIFlagPrototyped, spFlags: 0)
!1622 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1623, file: !1595, line: 98)
!1623 = !DISubprogram(name: "iswspace", scope: !1598, file: !1598, line: 130, type: !1222, flags: DIFlagPrototyped, spFlags: 0)
!1624 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1625, file: !1595, line: 99)
!1625 = !DISubprogram(name: "iswupper", scope: !1598, file: !1598, line: 135, type: !1222, flags: DIFlagPrototyped, spFlags: 0)
!1626 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1627, file: !1595, line: 100)
!1627 = !DISubprogram(name: "iswxdigit", scope: !1598, file: !1598, line: 140, type: !1222, flags: DIFlagPrototyped, spFlags: 0)
!1628 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1629, file: !1595, line: 101)
!1629 = !DISubprogram(name: "towctrans", scope: !1592, file: !1592, line: 55, type: !1630, flags: DIFlagPrototyped, spFlags: 0)
!1630 = !DISubroutineType(types: !1631)
!1631 = !{!1031, !1031, !1591}
!1632 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1633, file: !1595, line: 102)
!1633 = !DISubprogram(name: "towlower", scope: !1598, file: !1598, line: 166, type: !1634, flags: DIFlagPrototyped, spFlags: 0)
!1634 = !DISubroutineType(types: !1635)
!1635 = !{!1031, !1031}
!1636 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1637, file: !1595, line: 103)
!1637 = !DISubprogram(name: "towupper", scope: !1598, file: !1598, line: 169, type: !1634, flags: DIFlagPrototyped, spFlags: 0)
!1638 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1639, file: !1595, line: 104)
!1639 = !DISubprogram(name: "wctrans", scope: !1592, file: !1592, line: 52, type: !1640, flags: DIFlagPrototyped, spFlags: 0)
!1640 = !DISubroutineType(types: !1641)
!1641 = !{!1591, !478}
!1642 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1643, file: !1595, line: 105)
!1643 = !DISubprogram(name: "wctype", scope: !1598, file: !1598, line: 155, type: !1644, flags: DIFlagPrototyped, spFlags: 0)
!1644 = !DISubroutineType(types: !1645)
!1645 = !{!1597, !478}
!1646 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !9, entity: !2, file: !1647, line: 70)
!1647 = !DIFile(filename: "RTTL/common/RTInclude.hxx", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src", checksumkind: CSK_MD5, checksum: "735b2b9337cd60438b3f1c6b71b217f1")
!1648 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !9, entity: !2, file: !26, line: 7)
!1649 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1650, file: !1654, line: 77)
!1650 = !DISubprogram(name: "memchr", scope: !1651, file: !1651, line: 89, type: !1652, flags: DIFlagPrototyped, spFlags: 0)
!1651 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1652 = !DISubroutineType(types: !1653)
!1653 = !{!492, !492, !22, !494}
!1654 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cstring", directory: "")
!1655 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1656, file: !1654, line: 78)
!1656 = !DISubprogram(name: "memcmp", scope: !1651, file: !1651, line: 64, type: !1657, flags: DIFlagPrototyped, spFlags: 0)
!1657 = !DISubroutineType(types: !1658)
!1658 = !{!22, !492, !492, !494}
!1659 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1660, file: !1654, line: 79)
!1660 = !DISubprogram(name: "memcpy", scope: !1651, file: !1651, line: 43, type: !1661, flags: DIFlagPrototyped, spFlags: 0)
!1661 = !DISubroutineType(types: !1662)
!1662 = !{!491, !1475, !1500, !494}
!1663 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1664, file: !1654, line: 80)
!1664 = !DISubprogram(name: "memmove", scope: !1651, file: !1651, line: 47, type: !1665, flags: DIFlagPrototyped, spFlags: 0)
!1665 = !DISubroutineType(types: !1666)
!1666 = !{!491, !491, !492, !494}
!1667 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1668, file: !1654, line: 81)
!1668 = !DISubprogram(name: "memset", scope: !1651, file: !1651, line: 61, type: !1669, flags: DIFlagPrototyped, spFlags: 0)
!1669 = !DISubroutineType(types: !1670)
!1670 = !{!491, !491, !22, !494}
!1671 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1672, file: !1654, line: 82)
!1672 = !DISubprogram(name: "strcat", scope: !1651, file: !1651, line: 149, type: !1673, flags: DIFlagPrototyped, spFlags: 0)
!1673 = !DISubroutineType(types: !1674)
!1674 = !{!521, !587, !545}
!1675 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1676, file: !1654, line: 83)
!1676 = !DISubprogram(name: "strcmp", scope: !1651, file: !1651, line: 156, type: !1527, flags: DIFlagPrototyped, spFlags: 0)
!1677 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1678, file: !1654, line: 84)
!1678 = !DISubprogram(name: "strcoll", scope: !1651, file: !1651, line: 163, type: !1527, flags: DIFlagPrototyped, spFlags: 0)
!1679 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1680, file: !1654, line: 85)
!1680 = !DISubprogram(name: "strcpy", scope: !1651, file: !1651, line: 141, type: !1673, flags: DIFlagPrototyped, spFlags: 0)
!1681 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1682, file: !1654, line: 86)
!1682 = !DISubprogram(name: "strcspn", scope: !1651, file: !1651, line: 293, type: !1683, flags: DIFlagPrototyped, spFlags: 0)
!1683 = !DISubroutineType(types: !1684)
!1684 = !{!494, !478, !478}
!1685 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1686, file: !1654, line: 87)
!1686 = !DISubprogram(name: "strerror", scope: !1651, file: !1651, line: 419, type: !1687, flags: DIFlagPrototyped, spFlags: 0)
!1687 = !DISubroutineType(types: !1688)
!1688 = !{!521, !22}
!1689 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1690, file: !1654, line: 88)
!1690 = !DISubprogram(name: "strlen", scope: !1651, file: !1651, line: 407, type: !1691, flags: DIFlagPrototyped, spFlags: 0)
!1691 = !DISubroutineType(types: !1692)
!1692 = !{!494, !478}
!1693 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1694, file: !1654, line: 89)
!1694 = !DISubprogram(name: "strncat", scope: !1651, file: !1651, line: 152, type: !1695, flags: DIFlagPrototyped, spFlags: 0)
!1695 = !DISubroutineType(types: !1696)
!1696 = !{!521, !587, !545, !494}
!1697 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1698, file: !1654, line: 90)
!1698 = !DISubprogram(name: "strncmp", scope: !1651, file: !1651, line: 159, type: !1699, flags: DIFlagPrototyped, spFlags: 0)
!1699 = !DISubroutineType(types: !1700)
!1700 = !{!22, !478, !478, !494}
!1701 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1702, file: !1654, line: 91)
!1702 = !DISubprogram(name: "strncpy", scope: !1651, file: !1651, line: 144, type: !1695, flags: DIFlagPrototyped, spFlags: 0)
!1703 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1704, file: !1654, line: 92)
!1704 = !DISubprogram(name: "strspn", scope: !1651, file: !1651, line: 297, type: !1683, flags: DIFlagPrototyped, spFlags: 0)
!1705 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1706, file: !1654, line: 93)
!1706 = !DISubprogram(name: "strtok", scope: !1651, file: !1651, line: 356, type: !1673, flags: DIFlagPrototyped, spFlags: 0)
!1707 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1708, file: !1654, line: 94)
!1708 = !DISubprogram(name: "strxfrm", scope: !1651, file: !1651, line: 166, type: !1709, flags: DIFlagPrototyped, spFlags: 0)
!1709 = !DISubroutineType(types: !1710)
!1710 = !{!494, !587, !545, !494}
!1711 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1712, file: !1654, line: 95)
!1712 = !DISubprogram(name: "strchr", scope: !1651, file: !1651, line: 228, type: !1713, flags: DIFlagPrototyped, spFlags: 0)
!1713 = !DISubroutineType(types: !1714)
!1714 = !{!478, !478, !22}
!1715 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1716, file: !1654, line: 96)
!1716 = !DISubprogram(name: "strpbrk", scope: !1651, file: !1651, line: 305, type: !1717, flags: DIFlagPrototyped, spFlags: 0)
!1717 = !DISubroutineType(types: !1718)
!1718 = !{!478, !478, !478}
!1719 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1720, file: !1654, line: 97)
!1720 = !DISubprogram(name: "strrchr", scope: !1651, file: !1651, line: 255, type: !1713, flags: DIFlagPrototyped, spFlags: 0)
!1721 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1722, file: !1654, line: 98)
!1722 = !DISubprogram(name: "strstr", scope: !1651, file: !1651, line: 332, type: !1717, flags: DIFlagPrototyped, spFlags: 0)
!1723 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !1724, entity: !1725, file: !1759, line: 23)
!1724 = !DINamespace(name: "ISG", scope: null)
!1725 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Matrix4x4", scope: !27, file: !1726, line: 9, size: 512, flags: DIFlagTypePassByValue, elements: !1727, identifier: "_ZTSN4RTTL9Matrix4x4E")
!1726 = !DIFile(filename: "RTTL/common/RTMatrix.hxx", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src", checksumkind: CSK_MD5, checksum: "7f520098e4175181190b8a9ccd06dffd")
!1727 = !{!1728, !1731, !1735, !1740, !1745, !1750, !1753, !1756}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "mat", scope: !1725, file: !1726, line: 12, baseType: !1729, size: 512, flags: DIFlagPublic)
!1729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 512, elements: !1730)
!1730 = !{!225, !225}
!1731 = !DISubprogram(name: "operator()", linkageName: "_ZN4RTTL9Matrix4x4clEii", scope: !1725, file: !1726, line: 14, type: !1732, scopeLine: 14, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1732 = !DISubroutineType(types: !1733)
!1733 = !{!256, !1734, !50, !50}
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1735 = !DISubprogram(name: "getRow", linkageName: "_ZN4RTTL9Matrix4x46getRowEi", scope: !1725, file: !1726, line: 17, type: !1736, scopeLine: 17, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1736 = !DISubroutineType(types: !1737)
!1737 = !{!1738, !1734, !22}
!1738 = !DIDerivedType(tag: DW_TAG_typedef, name: "RTVec4f", scope: !27, file: !26, line: 270, baseType: !1739)
!1739 = !DICompositeType(tag: DW_TAG_class_type, name: "RTVec_t<4, float, 0>", scope: !27, file: !26, line: 53, size: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN4RTTL7RTVec_tILi4EfLi0EEE")
!1740 = !DISubprogram(name: "getCol", linkageName: "_ZN4RTTL9Matrix4x46getColEi", scope: !1725, file: !1726, line: 26, type: !1741, scopeLine: 26, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1741 = !DISubroutineType(types: !1742)
!1742 = !{!1743, !1734, !22}
!1743 = !DIDerivedType(tag: DW_TAG_typedef, name: "RTVec3f", scope: !27, file: !26, line: 269, baseType: !1744)
!1744 = !DICompositeType(tag: DW_TAG_class_type, name: "RTVec_t<3, float, 0>", scope: !27, file: !26, line: 48, size: 96, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN4RTTL7RTVec_tILi3EfLi0EEE")
!1745 = !DISubprogram(name: "setCol", linkageName: "_ZN4RTTL9Matrix4x46setColEiRKNS_7RTVec_tILi3EfLi0EEE", scope: !1725, file: !1726, line: 34, type: !1746, scopeLine: 34, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1746 = !DISubroutineType(types: !1747)
!1747 = !{null, !1734, !22, !1748}
!1748 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1749, size: 64)
!1749 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1743)
!1750 = !DISubprogram(name: "setIdentity", linkageName: "_ZN4RTTL9Matrix4x411setIdentityEv", scope: !1725, file: !1726, line: 40, type: !1751, scopeLine: 40, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1751 = !DISubroutineType(types: !1752)
!1752 = !{null, !1734}
!1753 = !DISubprogram(name: "setTranslationPart", linkageName: "_ZN4RTTL9Matrix4x418setTranslationPartERKNS_7RTVec_tILi3EfLi0EEE", scope: !1725, file: !1726, line: 47, type: !1754, scopeLine: 47, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1754 = !DISubroutineType(types: !1755)
!1755 = !{null, !1734, !1748}
!1756 = !DISubprogram(name: "setRotationPart", linkageName: "_ZN4RTTL9Matrix4x415setRotationPartERKNS_7RTVec_tILi3EfLi0EEEf", scope: !1725, file: !1726, line: 54, type: !1757, scopeLine: 54, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1757 = !DISubroutineType(types: !1758)
!1758 = !{null, !1734, !1748, !248}
!1759 = !DIFile(filename: "RTTL/API/ISG.hxx", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src", checksumkind: CSK_MD5, checksum: "bd8d965ee637ae20cb7fa2e028035776")
!1760 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !9, entity: !27, file: !1761, line: 13)
!1761 = !DIFile(filename: "RTTL/API/rt.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src", checksumkind: CSK_MD5, checksum: "bf9a68cd91e3dd436b53dbb783d36fdf")
!1762 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !9, entity: !1724, file: !1761, line: 14)
!1763 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !9, entity: !2, file: !14, line: 29)
!1764 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !13, file: !392, line: 54)
!1765 = !DIFile(filename: "RTTL/common/RTSSE.hxx", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src", checksumkind: CSK_MD5, checksum: "bbd5737e46ece2f5710eab9b8aad1d25")
!1766 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1767)
!1767 = !DIDerivedType(tag: DW_TAG_typedef, name: "sse_f", file: !204, line: 24, baseType: !219)
!1768 = !{i32 7, !"Dwarf Version", i32 5}
!1769 = !{i32 2, !"Debug Info Version", i32 3}
!1770 = !{i32 1, !"wchar_size", i32 4}
!1771 = !{i32 8, !"PIC Level", i32 2}
!1772 = !{i32 7, !"PIE Level", i32 2}
!1773 = !{i32 7, !"uwtable", i32 2}
!1774 = !{i32 7, !"frame-pointer", i32 2}
!1775 = !{!"clang version 16.0.0"}
!1776 = distinct !DISubprogram(name: "__cxx_global_var_init", scope: !1124, file: !1124, type: !464, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !1777)
!1777 = !{}
!1778 = !DILocation(line: 74, column: 25, scope: !1779)
!1779 = !DILexicalBlockFile(scope: !1776, file: !3, discriminator: 0)
!1780 = !DILocation(line: 0, scope: !1776)
!1781 = distinct !DISubprogram(name: "__cxx_global_var_init.1", scope: !1124, file: !1124, type: !464, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !1777)
!1782 = !DILocalVariable(name: "a", arg: 1, scope: !1783, file: !204, line: 622, type: !223)
!1783 = distinct !DISubprogram(name: "_mm_set_ps1", linkageName: "_ZL11_mm_set_ps1f", scope: !204, file: !204, line: 622, type: !1784, scopeLine: 622, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !1777)
!1784 = !DISubroutineType(types: !1785)
!1785 = !{!1767, !223}
!1786 = !DILocation(line: 622, column: 40, scope: !1783, inlinedAt: !1787)
!1787 = distinct !DILocation(line: 38, column: 31, scope: !1788)
!1788 = !DILexicalBlockFile(scope: !1781, file: !1765, discriminator: 0)
!1789 = !DILocalVariable(name: "result", scope: !1783, file: !204, line: 623, type: !1767)
!1790 = !DILocation(line: 623, column: 11, scope: !1783, inlinedAt: !1787)
!1791 = !DILocalVariable(name: "i", scope: !1792, file: !204, line: 626, type: !22)
!1792 = distinct !DILexicalBlock(scope: !1783, file: !204, line: 626, column: 5)
!1793 = !DILocation(line: 626, column: 14, scope: !1792, inlinedAt: !1787)
!1794 = !DILocation(line: 626, column: 10, scope: !1792, inlinedAt: !1787)
!1795 = !DILocation(line: 626, column: 21, scope: !1796, inlinedAt: !1787)
!1796 = distinct !DILexicalBlock(scope: !1792, file: !204, line: 626, column: 5)
!1797 = !DILocation(line: 626, column: 23, scope: !1796, inlinedAt: !1787)
!1798 = !DILocation(line: 626, column: 5, scope: !1792, inlinedAt: !1787)
!1799 = !DILocation(line: 627, column: 23, scope: !1796, inlinedAt: !1787)
!1800 = !DILocation(line: 627, column: 18, scope: !1796, inlinedAt: !1787)
!1801 = !DILocation(line: 627, column: 9, scope: !1796, inlinedAt: !1787)
!1802 = !DILocation(line: 627, column: 21, scope: !1796, inlinedAt: !1787)
!1803 = !DILocation(line: 626, column: 39, scope: !1796, inlinedAt: !1787)
!1804 = !DILocation(line: 626, column: 5, scope: !1796, inlinedAt: !1787)
!1805 = distinct !{!1805, !1798, !1806, !1807}
!1806 = !DILocation(line: 627, column: 23, scope: !1792, inlinedAt: !1787)
!1807 = !{!"llvm.loop.mustprogress"}
!1808 = !DILocation(line: 629, column: 5, scope: !1783, inlinedAt: !1787)
!1809 = !DILocation(line: 38, column: 31, scope: !1788)
!1810 = !DILocation(line: 38, column: 43, scope: !1788)
!1811 = distinct !DISubprogram(name: "__cxx_global_var_init.2", scope: !1124, file: !1124, type: !464, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !1777)
!1812 = !DILocation(line: 13, column: 40, scope: !1813)
!1813 = !DILexicalBlockFile(scope: !1811, file: !392, discriminator: 0)
!1814 = !DILocation(line: 13, column: 44, scope: !1813)
!1815 = !DILocation(line: 13, column: 29, scope: !1813)
!1816 = distinct !DISubprogram(name: "RTVec_t", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EEC2ERKiS3_", scope: !28, file: !31, line: 198, type: !146, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !145, retainedNodes: !1777)
!1817 = !DILocalVariable(name: "this", arg: 1, scope: !1816, type: !1818, flags: DIFlagArtificial | DIFlagObjectPointer)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!1819 = !DILocation(line: 0, scope: !1816)
!1820 = !DILocalVariable(name: "a", arg: 2, scope: !1816, file: !31, line: 198, type: !49)
!1821 = !DILocation(line: 198, column: 29, scope: !1816)
!1822 = !DILocalVariable(name: "b", arg: 3, scope: !1816, file: !31, line: 198, type: !49)
!1823 = !DILocation(line: 198, column: 48, scope: !1816)
!1824 = !DILocation(line: 198, column: 98, scope: !1816)
!1825 = !DILocation(line: 198, column: 100, scope: !1816)
!1826 = !DILocation(line: 198, column: 104, scope: !1816)
!1827 = !DILocation(line: 198, column: 106, scope: !1816)
!1828 = !DILocation(line: 198, column: 130, scope: !1816)
!1829 = distinct !DISubprogram(name: "create", linkageName: "_ZN3LRT20RGBAucharFrameBuffer6createEv", scope: !13, file: !392, line: 17, type: !210, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !209, retainedNodes: !1777)
!1830 = !DILocalVariable(name: "frameBuffer", scope: !1829, file: !392, line: 19, type: !12)
!1831 = !DILocation(line: 19, column: 25, scope: !1829)
!1832 = !DILocation(line: 21, column: 7, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1829, file: !392, line: 21, column: 7)
!1834 = !DILocation(line: 21, column: 7, scope: !1829)
!1835 = !DILocation(line: 22, column: 10, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1833, file: !392, line: 21, column: 29)
!1837 = !DILocation(line: 22, column: 43, scope: !1836)
!1838 = !DILocation(line: 23, column: 12, scope: !1836)
!1839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MemoryFrameBuffer", scope: !15, file: !1840, line: 12, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1841, vtableHolder: !13, identifier: "_ZTSN3LRT17MemoryFrameBufferE")
!1840 = !DIFile(filename: "LRT/FrameBuffer/MemoryFrameBuffer.hxx", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src", checksumkind: CSK_MD5, checksum: "1522ca4744d1edac45bf49ecdc49bafd")
!1841 = !{!1842, !1844, !1848, !1852, !1855, !1856, !1857}
!1842 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1839, baseType: !1843, extraData: i32 0)
!1843 = !DIDerivedType(tag: DW_TAG_typedef, name: "FrameBuffer", scope: !15, file: !14, line: 111, baseType: !13)
!1844 = !DISubprogram(name: "create", linkageName: "_ZN3LRT17MemoryFrameBuffer6createEv", scope: !1839, file: !1840, line: 16, type: !1845, scopeLine: 16, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!1845 = !DISubroutineType(types: !1846)
!1846 = !{!1847}
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1848 = !DISubprogram(name: "MemoryFrameBuffer", scope: !1839, file: !1840, line: 20, type: !1849, scopeLine: 20, flags: DIFlagPrototyped, spFlags: 0)
!1849 = !DISubroutineType(types: !1850)
!1850 = !{null, !1851}
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1852 = !DISubprogram(name: "resize", linkageName: "_ZN3LRT17MemoryFrameBuffer6resizeEii", scope: !1839, file: !1840, line: 23, type: !1853, scopeLine: 23, containingType: !1839, virtualIndex: 0, flags: DIFlagPrototyped, spFlags: DISPFlagVirtual)
!1853 = !DISubroutineType(types: !1854)
!1854 = !{null, !1851, !22, !22}
!1855 = !DISubprogram(name: "startNewFrame", linkageName: "_ZN3LRT17MemoryFrameBuffer13startNewFrameEv", scope: !1839, file: !1840, line: 30, type: !1849, scopeLine: 30, containingType: !1839, virtualIndex: 1, flags: DIFlagPrototyped, spFlags: DISPFlagVirtual)
!1856 = !DISubprogram(name: "doneWithFrame", linkageName: "_ZN3LRT17MemoryFrameBuffer13doneWithFrameEv", scope: !1839, file: !1840, line: 31, type: !1849, scopeLine: 31, containingType: !1839, virtualIndex: 2, flags: DIFlagPrototyped, spFlags: DISPFlagVirtual)
!1857 = !DISubprogram(name: "display", linkageName: "_ZN3LRT17MemoryFrameBuffer7displayEv", scope: !1839, file: !1840, line: 32, type: !1849, scopeLine: 32, containingType: !1839, virtualIndex: 3, flags: DIFlagPrototyped, spFlags: DISPFlagVirtual)
!1858 = !DILocation(line: 23, column: 16, scope: !1836)
!1859 = !DILocation(line: 23, column: 5, scope: !1836)
!1860 = !DILocation(line: 46, column: 1, scope: !1836)
!1861 = !DILocation(line: 26, column: 7, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1829, file: !392, line: 26, column: 7)
!1863 = !DILocation(line: 26, column: 7, scope: !1829)
!1864 = !DILocation(line: 29, column: 21, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1862, file: !392, line: 27, column: 5)
!1866 = !DILocation(line: 29, column: 19, scope: !1865)
!1867 = !DILocation(line: 30, column: 11, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1865, file: !392, line: 30, column: 11)
!1869 = !DILocation(line: 30, column: 11, scope: !1865)
!1870 = !DILocation(line: 31, column: 9, scope: !1868)
!1871 = !DILocation(line: 31, column: 2, scope: !1868)
!1872 = !DILocation(line: 34, column: 12, scope: !1865)
!1873 = !DILocation(line: 34, column: 59, scope: !1865)
!1874 = !DILocation(line: 35, column: 12, scope: !1865)
!1875 = !DILocation(line: 35, column: 58, scope: !1865)
!1876 = !DILocation(line: 36, column: 5, scope: !1865)
!1877 = !DILocation(line: 38, column: 10, scope: !1862)
!1878 = !DILocation(line: 38, column: 41, scope: !1862)
!1879 = !DILocation(line: 40, column: 17, scope: !1829)
!1880 = !DICompositeType(tag: DW_TAG_structure_type, name: "BufferedOpenGLTextureRGBA8FB", scope: !15, file: !1881, line: 55, size: 384, flags: DIFlagFwdDecl | DIFlagNonTrivial)
!1881 = !DIFile(filename: "LRT/FrameBuffer/GLTextureFB.hxx", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src", checksumkind: CSK_MD5, checksum: "534c24324dc76f335027065678e9cdc9")
!1882 = !DILocation(line: 40, column: 21, scope: !1829)
!1883 = !DILocation(line: 40, column: 15, scope: !1829)
!1884 = !DILocation(line: 42, column: 7, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1829, file: !392, line: 42, column: 7)
!1886 = !DILocation(line: 42, column: 19, scope: !1885)
!1887 = !DILocation(line: 42, column: 7, scope: !1829)
!1888 = !DILocation(line: 43, column: 5, scope: !1885)
!1889 = !DILocation(line: 46, column: 1, scope: !1829)
!1890 = !DILocation(line: 45, column: 10, scope: !1829)
!1891 = !DILocation(line: 45, column: 3, scope: !1829)
!1892 = distinct !DISubprogram(name: "MemoryFrameBuffer", linkageName: "_ZN3LRT17MemoryFrameBufferC2Ev", scope: !1839, file: !1840, line: 20, type: !1849, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !1848, retainedNodes: !1777)
!1893 = !DILocalVariable(name: "this", arg: 1, scope: !1892, type: !1847, flags: DIFlagArtificial | DIFlagObjectPointer)
!1894 = !DILocation(line: 0, scope: !1892)
!1895 = !DILocation(line: 20, column: 3, scope: !1892)
!1896 = !DILocation(line: 20, column: 23, scope: !1892)
!1897 = !DILocation(line: 21, column: 5, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1892, file: !1840, line: 20, column: 23)
!1899 = !DILocation(line: 21, column: 8, scope: !1898)
!1900 = !DILocation(line: 22, column: 3, scope: !1892)
!1901 = distinct !DISubprogram(name: "BufferedOpenGLTextureRGBA8FB", linkageName: "_ZN3LRT28BufferedOpenGLTextureRGBA8FBC2Ev", scope: !1880, file: !1881, line: 59, type: !1902, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !1905, retainedNodes: !1777)
!1902 = !DISubroutineType(types: !1903)
!1903 = !{null, !1904}
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1905 = !DISubprogram(name: "BufferedOpenGLTextureRGBA8FB", scope: !1880, file: !1881, line: 59, type: !1902, scopeLine: 59, flags: DIFlagPrototyped, spFlags: 0)
!1906 = !DILocalVariable(name: "this", arg: 1, scope: !1901, type: !1907, flags: DIFlagArtificial | DIFlagObjectPointer)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1908 = !DILocation(line: 0, scope: !1901)
!1909 = !DILocation(line: 59, column: 36, scope: !1901)
!1910 = !DILocation(line: 60, column: 3, scope: !1901)
!1911 = !DILocation(line: 59, column: 60, scope: !1901)
!1912 = !DILocation(line: 60, column: 4, scope: !1901)
!1913 = distinct !DISubprogram(name: "lrtCreateTextureFB", scope: !392, file: !392, line: 56, type: !1914, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !1777)
!1914 = !DISubroutineType(types: !1915)
!1915 = !{!1916, !1918, !1918}
!1916 = !DIDerivedType(tag: DW_TAG_typedef, name: "LRTFrameBufferHandle", file: !1917, line: 23, baseType: !491)
!1917 = !DIFile(filename: "LRT/include/lrt.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src", checksumkind: CSK_MD5, checksum: "97e0c94c5756d29b1aac8380d8daf831")
!1918 = !DIDerivedType(tag: DW_TAG_typedef, name: "LRTuint", file: !1917, line: 21, baseType: !566)
!1919 = !DILocalVariable(name: "width", arg: 1, scope: !1913, file: !392, line: 56, type: !1918)
!1920 = !DILocation(line: 56, column: 49, scope: !1913)
!1921 = !DILocalVariable(name: "height", arg: 2, scope: !1913, file: !392, line: 57, type: !1918)
!1922 = !DILocation(line: 57, column: 49, scope: !1913)
!1923 = !DILocalVariable(name: "fb", scope: !1913, file: !392, line: 59, type: !1924)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1925 = !DILocation(line: 59, column: 21, scope: !1913)
!1926 = !DILocation(line: 59, column: 26, scope: !1913)
!1927 = !DILocation(line: 60, column: 3, scope: !1913)
!1928 = !DILocation(line: 60, column: 14, scope: !1913)
!1929 = !DILocation(line: 60, column: 20, scope: !1913)
!1930 = !DILocation(line: 60, column: 7, scope: !1913)
!1931 = !DILocation(line: 61, column: 10, scope: !1913)
!1932 = !DILocation(line: 61, column: 3, scope: !1913)
!1933 = distinct !DISubprogram(name: "lrtDestroyFB", scope: !392, file: !392, line: 64, type: !1934, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !1777)
!1934 = !DISubroutineType(types: !1935)
!1935 = !{!1936, !1916}
!1936 = !DIDerivedType(tag: DW_TAG_typedef, name: "LRTvoid", file: !1917, line: 17, baseType: null)
!1937 = !DILocalVariable(name: "fbHandle", arg: 1, scope: !1933, file: !392, line: 64, type: !1916)
!1938 = !DILocation(line: 64, column: 43, scope: !1933)
!1939 = !DILocalVariable(name: "fb", scope: !1933, file: !392, line: 66, type: !12)
!1940 = !DILocation(line: 66, column: 25, scope: !1933)
!1941 = !DILocation(line: 66, column: 71, scope: !1933)
!1942 = !DILocation(line: 67, column: 7, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1933, file: !392, line: 67, column: 7)
!1944 = !DILocation(line: 67, column: 7, scope: !1933)
!1945 = !DILocation(line: 67, column: 18, scope: !1943)
!1946 = !DILocation(line: 67, column: 11, scope: !1943)
!1947 = !DILocation(line: 68, column: 1, scope: !1933)
!1948 = distinct !DISubprogram(name: "lrtDisplayFB", scope: !392, file: !392, line: 70, type: !1934, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !1777)
!1949 = !DILocalVariable(name: "fbHandle", arg: 1, scope: !1948, file: !392, line: 70, type: !1916)
!1950 = !DILocation(line: 70, column: 43, scope: !1948)
!1951 = !DILocalVariable(name: "fb", scope: !1948, file: !392, line: 72, type: !12)
!1952 = !DILocation(line: 72, column: 25, scope: !1948)
!1953 = !DILocation(line: 72, column: 71, scope: !1948)
!1954 = !DILocation(line: 73, column: 7, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1948, file: !392, line: 73, column: 7)
!1956 = !DILocation(line: 73, column: 7, scope: !1948)
!1957 = !DILocation(line: 73, column: 11, scope: !1955)
!1958 = !DILocation(line: 73, column: 15, scope: !1955)
!1959 = !DILocation(line: 74, column: 1, scope: !1948)
!1960 = distinct !DISubprogram(name: "sse_f", linkageName: "_ZN5sse_fC2Ev", scope: !219, file: !204, line: 21, type: !227, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !226, retainedNodes: !1777)
!1961 = !DILocalVariable(name: "this", arg: 1, scope: !1960, type: !1962, flags: DIFlagArtificial | DIFlagObjectPointer)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!1963 = !DILocation(line: 0, scope: !1960)
!1964 = !DILocation(line: 21, column: 11, scope: !1960)
!1965 = distinct !DISubprogram(name: "RGBAucharFrameBuffer", linkageName: "_ZN3LRT20RGBAucharFrameBufferC2Ev", scope: !13, file: !14, line: 70, type: !193, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !192, retainedNodes: !1777)
!1966 = !DILocalVariable(name: "this", arg: 1, scope: !1965, type: !12, flags: DIFlagArtificial | DIFlagObjectPointer)
!1967 = !DILocation(line: 0, scope: !1965)
!1968 = !DILocation(line: 72, column: 3, scope: !1965)
!1969 = !DILocation(line: 71, column: 7, scope: !1965)
!1970 = !DILocation(line: 71, column: 11, scope: !1965)
!1971 = !DILocation(line: 71, column: 13, scope: !1965)
!1972 = !DILocation(line: 71, column: 17, scope: !1965)
!1973 = !DILocation(line: 72, column: 4, scope: !1965)
!1974 = distinct !DISubprogram(name: "resize", linkageName: "_ZN3LRT17MemoryFrameBuffer6resizeEii", scope: !1839, file: !1840, line: 23, type: !1853, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !1852, retainedNodes: !1777)
!1975 = !DILocalVariable(name: "this", arg: 1, scope: !1974, type: !1847, flags: DIFlagArtificial | DIFlagObjectPointer)
!1976 = !DILocation(line: 0, scope: !1974)
!1977 = !DILocalVariable(name: "newX", arg: 2, scope: !1974, file: !1840, line: 23, type: !22)
!1978 = !DILocation(line: 23, column: 27, scope: !1974)
!1979 = !DILocalVariable(name: "newY", arg: 3, scope: !1974, file: !1840, line: 23, type: !22)
!1980 = !DILocation(line: 23, column: 37, scope: !1974)
!1981 = !DILocation(line: 25, column: 25, scope: !1974)
!1982 = !DILocation(line: 25, column: 30, scope: !1974)
!1983 = !DILocation(line: 25, column: 18, scope: !1974)
!1984 = !DILocation(line: 26, column: 9, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1974, file: !1840, line: 26, column: 9)
!1986 = !DILocation(line: 26, column: 9, scope: !1974)
!1987 = !DILocation(line: 26, column: 26, scope: !1985)
!1988 = !DILocation(line: 26, column: 13, scope: !1985)
!1989 = !DILocation(line: 27, column: 42, scope: !1974)
!1990 = !DILocation(line: 27, column: 46, scope: !1974)
!1991 = !DILocation(line: 27, column: 41, scope: !1974)
!1992 = !DILocation(line: 27, column: 48, scope: !1974)
!1993 = !DILocation(line: 27, column: 52, scope: !1974)
!1994 = !DILocation(line: 27, column: 47, scope: !1974)
!1995 = !DILocation(line: 27, column: 10, scope: !1974)
!1996 = !DILocation(line: 27, column: 5, scope: !1974)
!1997 = !DILocation(line: 27, column: 8, scope: !1974)
!1998 = !DILocation(line: 28, column: 3, scope: !1974)
!1999 = distinct !DISubprogram(name: "startNewFrame", linkageName: "_ZN3LRT17MemoryFrameBuffer13startNewFrameEv", scope: !1839, file: !1840, line: 30, type: !1849, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !1855, retainedNodes: !1777)
!2000 = !DILocalVariable(name: "this", arg: 1, scope: !1999, type: !1847, flags: DIFlagArtificial | DIFlagObjectPointer)
!2001 = !DILocation(line: 0, scope: !1999)
!2002 = !DILocation(line: 30, column: 33, scope: !1999)
!2003 = distinct !DISubprogram(name: "doneWithFrame", linkageName: "_ZN3LRT17MemoryFrameBuffer13doneWithFrameEv", scope: !1839, file: !1840, line: 31, type: !1849, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !1856, retainedNodes: !1777)
!2004 = !DILocalVariable(name: "this", arg: 1, scope: !2003, type: !1847, flags: DIFlagArtificial | DIFlagObjectPointer)
!2005 = !DILocation(line: 0, scope: !2003)
!2006 = !DILocation(line: 31, column: 33, scope: !2003)
!2007 = distinct !DISubprogram(name: "display", linkageName: "_ZN3LRT17MemoryFrameBuffer7displayEv", scope: !1839, file: !1840, line: 32, type: !1849, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !1857, retainedNodes: !1777)
!2008 = !DILocalVariable(name: "this", arg: 1, scope: !2007, type: !1847, flags: DIFlagArtificial | DIFlagObjectPointer)
!2009 = !DILocation(line: 0, scope: !2007)
!2010 = !DILocation(line: 32, column: 27, scope: !2007)
!2011 = distinct !DISubprogram(name: "resize", linkageName: "_ZN3LRT20RGBAucharFrameBuffer6resizeEii", scope: !13, file: !14, line: 90, type: !213, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !212, retainedNodes: !1777)
!2012 = !DILocalVariable(name: "this", arg: 1, scope: !2011, type: !12, flags: DIFlagArtificial | DIFlagObjectPointer)
!2013 = !DILocation(line: 0, scope: !2011)
!2014 = !DILocalVariable(name: "newX", arg: 2, scope: !2011, file: !14, line: 90, type: !22)
!2015 = !DILocation(line: 90, column: 27, scope: !2011)
!2016 = !DILocalVariable(name: "newY", arg: 3, scope: !2011, file: !14, line: 90, type: !22)
!2017 = !DILocation(line: 90, column: 37, scope: !2011)
!2018 = !DILocation(line: 94, column: 16, scope: !2011)
!2019 = !DILocation(line: 94, column: 37, scope: !2011)
!2020 = !DILocation(line: 94, column: 19, scope: !2011)
!2021 = !DILocation(line: 94, column: 12, scope: !2011)
!2022 = !DILocation(line: 94, column: 10, scope: !2011)
!2023 = !DILocation(line: 95, column: 16, scope: !2011)
!2024 = !DILocation(line: 95, column: 37, scope: !2011)
!2025 = !DILocation(line: 95, column: 19, scope: !2011)
!2026 = !DILocation(line: 95, column: 12, scope: !2011)
!2027 = !DILocation(line: 95, column: 10, scope: !2011)
!2028 = !DILocalVariable(name: "newRes", scope: !2011, file: !14, line: 97, type: !24)
!2029 = !DILocation(line: 97, column: 11, scope: !2011)
!2030 = !DILocation(line: 98, column: 9, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !2011, file: !14, line: 98, column: 9)
!2032 = !DILocalVariable(name: "v1", arg: 1, scope: !2033, file: !26, line: 110, type: !113)
!2033 = distinct !DISubprogram(name: "operator!=<2, int, 0>", linkageName: "_ZN4RTTLneILi2EiLi0EEEbRKNS_7RTVec_tIXT_ET0_XT1_EEES5_", scope: !27, file: !26, line: 110, type: !2034, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !2036, retainedNodes: !1777)
!2034 = !DISubroutineType(types: !2035)
!2035 = !{!218, !113, !113}
!2036 = !{!93, !94, !2037}
!2037 = !DITemplateValueParameter(name: "align", type: !22, value: i32 0)
!2038 = !DILocation(line: 110, column: 64, scope: !2033, inlinedAt: !2039)
!2039 = distinct !DILocation(line: 98, column: 13, scope: !2031)
!2040 = !DILocalVariable(name: "v2", arg: 2, scope: !2033, file: !26, line: 110, type: !113)
!2041 = !DILocation(line: 110, column: 103, scope: !2033, inlinedAt: !2039)
!2042 = !DILocation(line: 111, column: 18, scope: !2033, inlinedAt: !2039)
!2043 = !DILocation(line: 111, column: 24, scope: !2033, inlinedAt: !2039)
!2044 = !DILocalVariable(name: "v1", arg: 1, scope: !2045, file: !26, line: 89, type: !113)
!2045 = distinct !DISubprogram(name: "operator==<2, int, 0>", linkageName: "_ZN4RTTLeqILi2EiLi0EEEbRKNS_7RTVec_tIXT_ET0_XT1_EEES5_", scope: !27, file: !26, line: 89, type: !2034, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !2036, retainedNodes: !1777)
!2046 = !DILocation(line: 89, column: 64, scope: !2045, inlinedAt: !2047)
!2047 = distinct !DILocation(line: 111, column: 21, scope: !2033, inlinedAt: !2039)
!2048 = !DILocalVariable(name: "v2", arg: 2, scope: !2045, file: !26, line: 89, type: !113)
!2049 = !DILocation(line: 89, column: 103, scope: !2045, inlinedAt: !2047)
!2050 = !DILocation(line: 90, column: 16, scope: !2045, inlinedAt: !2047)
!2051 = !DILocation(line: 90, column: 19, scope: !2045, inlinedAt: !2047)
!2052 = !DILocation(line: 90, column: 30, scope: !2045, inlinedAt: !2047)
!2053 = !DILocation(line: 90, column: 33, scope: !2045, inlinedAt: !2047)
!2054 = !DILocalVariable(name: "v1", arg: 1, scope: !2055, file: !33, line: 182, type: !65)
!2055 = distinct !DISubprogram(name: "operator==<2, int>", linkageName: "_ZN4RTTLeqILi2EiEEbRKNS_8RTData_tIXT_ET0_Li0EEES5_", scope: !27, file: !33, line: 182, type: !2056, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !2058, retainedNodes: !1777)
!2056 = !DISubroutineType(types: !2057)
!2057 = !{!218, !65, !65}
!2058 = !{!93, !94}
!2059 = !DILocation(line: 182, column: 61, scope: !2055, inlinedAt: !2060)
!2060 = distinct !DILocation(line: 90, column: 27, scope: !2045, inlinedAt: !2047)
!2061 = !DILocalVariable(name: "v2", arg: 2, scope: !2055, file: !33, line: 182, type: !65)
!2062 = !DILocation(line: 182, column: 97, scope: !2055, inlinedAt: !2060)
!2063 = !DILocalVariable(name: "i", scope: !2064, file: !33, line: 183, type: !22)
!2064 = distinct !DILexicalBlock(scope: !2055, file: !33, line: 183, column: 9)
!2065 = !DILocation(line: 183, column: 18, scope: !2064, inlinedAt: !2060)
!2066 = !DILocation(line: 183, column: 14, scope: !2064, inlinedAt: !2060)
!2067 = !DILocation(line: 183, column: 25, scope: !2068, inlinedAt: !2060)
!2068 = distinct !DILexicalBlock(scope: !2064, file: !33, line: 183, column: 9)
!2069 = !DILocation(line: 183, column: 27, scope: !2068, inlinedAt: !2060)
!2070 = !DILocation(line: 183, column: 9, scope: !2064, inlinedAt: !2060)
!2071 = !DILocation(line: 184, column: 17, scope: !2072, inlinedAt: !2060)
!2072 = distinct !DILexicalBlock(scope: !2068, file: !33, line: 184, column: 17)
!2073 = !DILocation(line: 184, column: 20, scope: !2072, inlinedAt: !2060)
!2074 = !DILocalVariable(name: "this", arg: 1, scope: !2075, type: !2076, flags: DIFlagArtificial | DIFlagObjectPointer)
!2075 = distinct !DISubprogram(name: "operator[]", linkageName: "_ZNK4RTTL8RTData_tILi2EiLi0EEixEi", scope: !34, file: !33, line: 52, type: !60, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !59, retainedNodes: !1777)
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!2077 = !DILocation(line: 0, scope: !2075, inlinedAt: !2078)
!2078 = distinct !DILocation(line: 184, column: 17, scope: !2072, inlinedAt: !2060)
!2079 = !DILocalVariable(name: "index", arg: 2, scope: !2075, file: !33, line: 52, type: !22)
!2080 = !DILocation(line: 52, column: 41, scope: !2075, inlinedAt: !2078)
!2081 = !DILocation(line: 53, column: 22, scope: !2075, inlinedAt: !2078)
!2082 = !DILocation(line: 53, column: 20, scope: !2075, inlinedAt: !2078)
!2083 = !DILocation(line: 184, column: 26, scope: !2072, inlinedAt: !2060)
!2084 = !DILocation(line: 184, column: 29, scope: !2072, inlinedAt: !2060)
!2085 = !DILocation(line: 0, scope: !2075, inlinedAt: !2086)
!2086 = distinct !DILocation(line: 184, column: 26, scope: !2072, inlinedAt: !2060)
!2087 = !DILocation(line: 52, column: 41, scope: !2075, inlinedAt: !2086)
!2088 = !DILocation(line: 53, column: 22, scope: !2075, inlinedAt: !2086)
!2089 = !DILocation(line: 53, column: 20, scope: !2075, inlinedAt: !2086)
!2090 = !DILocation(line: 184, column: 23, scope: !2072, inlinedAt: !2060)
!2091 = !DILocation(line: 184, column: 17, scope: !2068, inlinedAt: !2060)
!2092 = !DILocation(line: 185, column: 17, scope: !2072, inlinedAt: !2060)
!2093 = !DILocation(line: 183, column: 33, scope: !2068, inlinedAt: !2060)
!2094 = !DILocation(line: 183, column: 9, scope: !2068, inlinedAt: !2060)
!2095 = distinct !{!2095, !2070, !2096, !1807}
!2096 = !DILocation(line: 185, column: 24, scope: !2064, inlinedAt: !2060)
!2097 = !DILocation(line: 187, column: 9, scope: !2055, inlinedAt: !2060)
!2098 = !DILocation(line: 188, column: 5, scope: !2055, inlinedAt: !2060)
!2099 = !DILocation(line: 111, column: 16, scope: !2033, inlinedAt: !2039)
!2100 = !DILocation(line: 98, column: 9, scope: !2011)
!2101 = !DILocation(line: 99, column: 7, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2031, file: !14, line: 98, column: 24)
!2103 = !DILocalVariable(name: "this", arg: 1, scope: !2104, type: !1818, flags: DIFlagArtificial | DIFlagObjectPointer)
!2104 = distinct !DISubprogram(name: "operator=", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EEaSERKS1_", scope: !28, file: !31, line: 74, type: !111, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !110, retainedNodes: !1777)
!2105 = !DILocation(line: 0, scope: !2104, inlinedAt: !2106)
!2106 = distinct !DILocation(line: 99, column: 11, scope: !2102)
!2107 = !DILocalVariable(name: "x", arg: 2, scope: !2104, file: !31, line: 74, type: !113)
!2108 = !DILocation(line: 74, column: 53, scope: !2104, inlinedAt: !2106)
!2109 = !DILocalVariable(name: "t", scope: !2104, file: !31, line: 75, type: !166)
!2110 = !DILocation(line: 75, column: 20, scope: !2104, inlinedAt: !2106)
!2111 = !DILocation(line: 75, column: 24, scope: !2104, inlinedAt: !2106)
!2112 = !DILocalVariable(name: "xt", scope: !2104, file: !31, line: 76, type: !171)
!2113 = !DILocation(line: 76, column: 26, scope: !2104, inlinedAt: !2106)
!2114 = !DILocation(line: 76, column: 31, scope: !2104, inlinedAt: !2106)
!2115 = !DILocation(line: 77, column: 9, scope: !2104, inlinedAt: !2106)
!2116 = !DILocation(line: 77, column: 18, scope: !2104, inlinedAt: !2106)
!2117 = !DILocalVariable(name: "this", arg: 1, scope: !2118, type: !2124, flags: DIFlagArtificial | DIFlagObjectPointer)
!2118 = distinct !DISubprogram(name: "assign<2, int, 0>", linkageName: "_ZN4RTTL8RTData_tILi2EiLi0EE6assignILi2EiLi0EEEvRKNS0_IXT_ET0_XT1_EEE", scope: !34, file: !33, line: 43, type: !63, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !2120, declaration: !2119, retainedNodes: !1777)
!2119 = !DISubprogram(name: "assign<2, int, 0>", linkageName: "_ZN4RTTL8RTData_tILi2EiLi0EE6assignILi2EiLi0EEEvRKNS0_IXT_ET0_XT1_EEE", scope: !34, file: !33, line: 43, type: !63, scopeLine: 43, flags: DIFlagPrototyped, spFlags: 0, templateParams: !2120)
!2120 = !{!2121, !2122, !2123}
!2121 = !DITemplateValueParameter(name: "AnotherN", type: !22, value: i32 2)
!2122 = !DITemplateTypeParameter(name: "AnotherDataType", type: !22)
!2123 = !DITemplateValueParameter(name: "AnotherAlign", type: !22, value: i32 0)
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!2125 = !DILocation(line: 0, scope: !2118, inlinedAt: !2126)
!2126 = distinct !DILocation(line: 77, column: 11, scope: !2104, inlinedAt: !2106)
!2127 = !DILocalVariable(name: "v", arg: 2, scope: !2118, file: !33, line: 43, type: !65)
!2128 = !DILocation(line: 43, column: 86, scope: !2118, inlinedAt: !2126)
!2129 = !DILocation(line: 44, column: 13, scope: !2118, inlinedAt: !2126)
!2130 = !DILocalVariable(name: "i", scope: !2131, file: !33, line: 46, type: !22)
!2131 = distinct !DILexicalBlock(scope: !2118, file: !33, line: 46, column: 13)
!2132 = !DILocation(line: 46, column: 22, scope: !2131, inlinedAt: !2126)
!2133 = !DILocation(line: 46, column: 18, scope: !2131, inlinedAt: !2126)
!2134 = !DILocation(line: 46, column: 29, scope: !2135, inlinedAt: !2126)
!2135 = distinct !DILexicalBlock(scope: !2131, file: !33, line: 46, column: 13)
!2136 = !DILocation(line: 46, column: 31, scope: !2135, inlinedAt: !2126)
!2137 = !DILocation(line: 46, column: 13, scope: !2131, inlinedAt: !2126)
!2138 = !DILocation(line: 47, column: 24, scope: !2135, inlinedAt: !2126)
!2139 = !DILocation(line: 47, column: 26, scope: !2135, inlinedAt: !2126)
!2140 = !DILocation(line: 0, scope: !2075, inlinedAt: !2141)
!2141 = distinct !DILocation(line: 47, column: 24, scope: !2135, inlinedAt: !2126)
!2142 = !DILocation(line: 52, column: 41, scope: !2075, inlinedAt: !2141)
!2143 = !DILocation(line: 53, column: 22, scope: !2075, inlinedAt: !2141)
!2144 = !DILocation(line: 53, column: 20, scope: !2075, inlinedAt: !2141)
!2145 = !DILocation(line: 47, column: 19, scope: !2135, inlinedAt: !2126)
!2146 = !DILocation(line: 47, column: 17, scope: !2135, inlinedAt: !2126)
!2147 = !DILocation(line: 47, column: 22, scope: !2135, inlinedAt: !2126)
!2148 = !DILocation(line: 46, column: 37, scope: !2135, inlinedAt: !2126)
!2149 = !DILocation(line: 46, column: 13, scope: !2135, inlinedAt: !2126)
!2150 = distinct !{!2150, !2137, !2151, !1807}
!2151 = !DILocation(line: 47, column: 27, scope: !2131, inlinedAt: !2126)
!2152 = !DILocation(line: 100, column: 5, scope: !2102)
!2153 = !DILocation(line: 101, column: 3, scope: !2011)
!2154 = distinct !DISubprogram(name: "max<int>", linkageName: "_ZSt3maxIiERKT_S2_S2_", scope: !2, file: !2155, line: 254, type: !2156, scopeLine: 255, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !2158, retainedNodes: !1777)
!2155 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/stl_algobase.h", directory: "", checksumkind: CSK_MD5, checksum: "906433670cd4a8daf96f73a1b6f6012b")
!2156 = !DISubroutineType(types: !2157)
!2157 = !{!49, !49, !49}
!2158 = !{!2159}
!2159 = !DITemplateTypeParameter(name: "_Tp", type: !22)
!2160 = !DILocalVariable(name: "__a", arg: 1, scope: !2154, file: !2161, line: 407, type: !49)
!2161 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/algorithmfwd.h", directory: "")
!2162 = !DILocation(line: 407, column: 19, scope: !2154)
!2163 = !DILocalVariable(name: "__b", arg: 2, scope: !2154, file: !2161, line: 407, type: !49)
!2164 = !DILocation(line: 407, column: 31, scope: !2154)
!2165 = !DILocation(line: 259, column: 11, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !2154, file: !2155, line: 259, column: 11)
!2167 = !DILocation(line: 259, column: 17, scope: !2166)
!2168 = !DILocation(line: 259, column: 15, scope: !2166)
!2169 = !DILocation(line: 259, column: 11, scope: !2154)
!2170 = !DILocation(line: 260, column: 9, scope: !2166)
!2171 = !DILocation(line: 260, column: 2, scope: !2166)
!2172 = !DILocation(line: 261, column: 14, scope: !2154)
!2173 = !DILocation(line: 261, column: 7, scope: !2154)
!2174 = !DILocation(line: 262, column: 5, scope: !2154)
!2175 = distinct !DISubprogram(name: "nextMultipleOf<4, int>", linkageName: "_Z14nextMultipleOfILi4EiET0_S0_", scope: !1647, file: !1647, line: 279, type: !448, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !2176, retainedNodes: !1777)
!2176 = !{!2177, !2178}
!2177 = !DITemplateValueParameter(name: "N", type: !22, value: i32 4)
!2178 = !DITemplateTypeParameter(name: "T", type: !22)
!2179 = !DILocalVariable(name: "t", arg: 1, scope: !2175, file: !1647, line: 279, type: !22)
!2180 = !DILocation(line: 279, column: 27, scope: !2175)
!2181 = !DILocation(line: 281, column: 12, scope: !2175)
!2182 = !DILocation(line: 281, column: 13, scope: !2175)
!2183 = !DILocation(line: 281, column: 15, scope: !2175)
!2184 = !DILocation(line: 281, column: 19, scope: !2175)
!2185 = !DILocation(line: 281, column: 24, scope: !2175)
!2186 = !DILocation(line: 281, column: 3, scope: !2175)
!2187 = distinct !DISubprogram(name: "array", linkageName: "_ZNK4RTTL7RTVec_tILi2EiLi0EE5arrayEv", scope: !28, file: !31, line: 216, type: !169, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !174, retainedNodes: !1777)
!2188 = !DILocalVariable(name: "this", arg: 1, scope: !2187, type: !2189, flags: DIFlagArtificial | DIFlagObjectPointer)
!2189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!2190 = !DILocation(line: 0, scope: !2187)
!2191 = !DILocation(line: 216, column: 64, scope: !2187)
!2192 = !DILocation(line: 216, column: 45, scope: !2187)
!2193 = distinct !DISubprogram(name: "operator RTTL::RTData_t<2, int> &", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EEcvRNS_8RTData_tILi2EiLi0EEEEv", scope: !28, file: !31, line: 213, type: !164, scopeLine: 213, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !163, retainedNodes: !1777)
!2194 = !DILocalVariable(name: "this", arg: 1, scope: !2193, type: !1818, flags: DIFlagArtificial | DIFlagObjectPointer)
!2195 = !DILocation(line: 0, scope: !2193)
!2196 = !DILocation(line: 213, column: 64, scope: !2193)
!2197 = !DILocation(line: 213, column: 45, scope: !2193)
!2198 = distinct !DISubprogram(name: "operator const RTTL::RTData_t<2, int> &", linkageName: "_ZNK4RTTL7RTVec_tILi2EiLi0EEcvRKNS_8RTData_tILi2EiLi0EEEEv", scope: !28, file: !31, line: 214, type: !169, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !168, retainedNodes: !1777)
!2199 = !DILocalVariable(name: "this", arg: 1, scope: !2198, type: !2189, flags: DIFlagArtificial | DIFlagObjectPointer)
!2200 = !DILocation(line: 0, scope: !2198)
!2201 = !DILocation(line: 214, column: 64, scope: !2198)
!2202 = !DILocation(line: 214, column: 45, scope: !2198)
!2203 = distinct !DISubprogram(name: "nElements", linkageName: "_ZN4RTTL8RTData_tILi2EiLi0EE9nElementsEv", scope: !34, file: !33, line: 175, type: !20, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !91, retainedNodes: !1777)
!2204 = !DILocation(line: 175, column: 34, scope: !2203)
!2205 = distinct !DISubprogram(name: "aligned_free<unsigned char>", linkageName: "_Z12aligned_freeIhEvPT_", scope: !1647, file: !1647, line: 292, type: !2206, scopeLine: 293, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !2208, retainedNodes: !1777)
!2206 = !DISubroutineType(types: !2207)
!2207 = !{null, !190}
!2208 = !{!2209}
!2209 = !DITemplateTypeParameter(name: "T", type: !191)
!2210 = !DILocalVariable(name: "t", arg: 1, scope: !2205, file: !1647, line: 292, type: !190)
!2211 = !DILocation(line: 292, column: 22, scope: !2205)
!2212 = !DILocation(line: 293, column: 21, scope: !2205)
!2213 = !DILocalVariable(name: "ptr", arg: 1, scope: !2214, file: !1647, line: 211, type: !491)
!2214 = distinct !DISubprogram(name: "free_align", linkageName: "_Z10free_alignPv", scope: !1647, file: !1647, line: 211, type: !515, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !1777)
!2215 = !DILocation(line: 211, column: 31, scope: !2214, inlinedAt: !2216)
!2216 = distinct !DILocation(line: 293, column: 10, scope: !2205)
!2217 = !DILocation(line: 213, column: 10, scope: !2214, inlinedAt: !2216)
!2218 = !DILocation(line: 213, column: 5, scope: !2214, inlinedAt: !2216)
!2219 = !DILocation(line: 293, column: 3, scope: !2205)
!2220 = distinct !DISubprogram(name: "aligned_malloc<unsigned char>", linkageName: "_Z14aligned_mallocIhEPT_i", scope: !1647, file: !1647, line: 287, type: !2221, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !2208, retainedNodes: !1777)
!2221 = !DISubroutineType(types: !2222)
!2222 = !{!190, !22}
!2223 = !DILocalVariable(name: "N", arg: 1, scope: !2220, file: !1647, line: 287, type: !22)
!2224 = !DILocation(line: 287, column: 23, scope: !2220)
!2225 = !DILocation(line: 288, column: 27, scope: !2220)
!2226 = !DILocation(line: 288, column: 29, scope: !2220)
!2227 = !DILocalVariable(name: "size", arg: 1, scope: !2228, file: !1647, line: 203, type: !50)
!2228 = distinct !DISubprogram(name: "malloc_align", linkageName: "_Z12malloc_alignii", scope: !1647, file: !1647, line: 203, type: !2229, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !1777)
!2229 = !DISubroutineType(types: !2230)
!2230 = !{!491, !50, !50}
!2231 = !DILocation(line: 203, column: 38, scope: !2228, inlinedAt: !2232)
!2232 = distinct !DILocation(line: 288, column: 14, scope: !2220)
!2233 = !DILocalVariable(name: "alignment", arg: 2, scope: !2228, file: !1647, line: 203, type: !50)
!2234 = !DILocation(line: 203, column: 53, scope: !2228, inlinedAt: !2232)
!2235 = !DILocation(line: 205, column: 21, scope: !2228, inlinedAt: !2232)
!2236 = !DILocation(line: 205, column: 31, scope: !2228, inlinedAt: !2232)
!2237 = !DILocation(line: 205, column: 12, scope: !2228, inlinedAt: !2232)
!2238 = !DILocation(line: 288, column: 3, scope: !2220)
!2239 = distinct !DISubprogram(name: "OpenGLTextureRGBA8FB", linkageName: "_ZN3LRT20OpenGLTextureRGBA8FBC2Ev", scope: !2240, file: !1881, line: 28, type: !2241, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !2244, retainedNodes: !1777)
!2240 = !DICompositeType(tag: DW_TAG_structure_type, name: "OpenGLTextureRGBA8FB", scope: !15, file: !1881, line: 15, size: 384, flags: DIFlagFwdDecl | DIFlagNonTrivial)
!2241 = !DISubroutineType(types: !2242)
!2242 = !{null, !2243}
!2243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2240, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2244 = !DISubprogram(name: "OpenGLTextureRGBA8FB", scope: !2240, file: !1881, line: 28, type: !2241, scopeLine: 28, flags: DIFlagPrototyped, spFlags: 0)
!2245 = !DILocalVariable(name: "this", arg: 1, scope: !2239, type: !2246, flags: DIFlagArtificial | DIFlagObjectPointer)
!2246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2240, size: 64)
!2247 = !DILocation(line: 0, scope: !2239)
!2248 = !DILocation(line: 28, column: 3, scope: !2239)
!2249 = !DILocation(line: 29, column: 3, scope: !2239)
!2250 = !DILocation(line: 30, column: 23, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2239, file: !1881, line: 29, column: 3)
!2252 = !DILocation(line: 30, column: 5, scope: !2251)
!2253 = !DILocation(line: 31, column: 34, scope: !2251)
!2254 = !DILocation(line: 31, column: 5, scope: !2251)
!2255 = !DILocation(line: 32, column: 26, scope: !2251)
!2256 = !DILocation(line: 32, column: 28, scope: !2251)
!2257 = !DILocation(line: 32, column: 20, scope: !2251)
!2258 = !DILocation(line: 32, column: 5, scope: !2251)
!2259 = !DILocation(line: 0, scope: !2104, inlinedAt: !2260)
!2260 = distinct !DILocation(line: 32, column: 18, scope: !2251)
!2261 = !DILocation(line: 74, column: 53, scope: !2104, inlinedAt: !2260)
!2262 = !DILocation(line: 75, column: 20, scope: !2104, inlinedAt: !2260)
!2263 = !DILocation(line: 75, column: 24, scope: !2104, inlinedAt: !2260)
!2264 = !DILocation(line: 76, column: 26, scope: !2104, inlinedAt: !2260)
!2265 = !DILocation(line: 76, column: 31, scope: !2104, inlinedAt: !2260)
!2266 = !DILocation(line: 77, column: 9, scope: !2104, inlinedAt: !2260)
!2267 = !DILocation(line: 77, column: 18, scope: !2104, inlinedAt: !2260)
!2268 = !DILocation(line: 0, scope: !2118, inlinedAt: !2269)
!2269 = distinct !DILocation(line: 77, column: 11, scope: !2104, inlinedAt: !2260)
!2270 = !DILocation(line: 43, column: 86, scope: !2118, inlinedAt: !2269)
!2271 = !DILocation(line: 44, column: 13, scope: !2118, inlinedAt: !2269)
!2272 = !DILocation(line: 46, column: 22, scope: !2131, inlinedAt: !2269)
!2273 = !DILocation(line: 46, column: 18, scope: !2131, inlinedAt: !2269)
!2274 = !DILocation(line: 46, column: 29, scope: !2135, inlinedAt: !2269)
!2275 = !DILocation(line: 46, column: 31, scope: !2135, inlinedAt: !2269)
!2276 = !DILocation(line: 46, column: 13, scope: !2131, inlinedAt: !2269)
!2277 = !DILocation(line: 47, column: 24, scope: !2135, inlinedAt: !2269)
!2278 = !DILocation(line: 47, column: 26, scope: !2135, inlinedAt: !2269)
!2279 = !DILocation(line: 0, scope: !2075, inlinedAt: !2280)
!2280 = distinct !DILocation(line: 47, column: 24, scope: !2135, inlinedAt: !2269)
!2281 = !DILocation(line: 52, column: 41, scope: !2075, inlinedAt: !2280)
!2282 = !DILocation(line: 53, column: 22, scope: !2075, inlinedAt: !2280)
!2283 = !DILocation(line: 53, column: 20, scope: !2075, inlinedAt: !2280)
!2284 = !DILocation(line: 47, column: 19, scope: !2135, inlinedAt: !2269)
!2285 = !DILocation(line: 47, column: 17, scope: !2135, inlinedAt: !2269)
!2286 = !DILocation(line: 47, column: 22, scope: !2135, inlinedAt: !2269)
!2287 = !DILocation(line: 46, column: 37, scope: !2135, inlinedAt: !2269)
!2288 = !DILocation(line: 46, column: 13, scope: !2135, inlinedAt: !2269)
!2289 = distinct !{!2289, !2276, !2290, !1807}
!2290 = !DILocation(line: 47, column: 27, scope: !2131, inlinedAt: !2269)
!2291 = !DILocation(line: 33, column: 3, scope: !2239)
!2292 = distinct !DISubprogram(name: "RTVec_t", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EEC2Ev", scope: !28, file: !31, line: 29, type: !98, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !97, retainedNodes: !1777)
!2293 = !DILocalVariable(name: "this", arg: 1, scope: !2292, type: !1818, flags: DIFlagArtificial | DIFlagObjectPointer)
!2294 = !DILocation(line: 0, scope: !2292)
!2295 = !DILocation(line: 31, column: 5, scope: !2292)
!2296 = distinct !DISubprogram(name: "RTVec_t", linkageName: "_ZN4RTTL7RTVec_tILi2EfLi0EEC2Ev", scope: !230, file: !31, line: 29, type: !294, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !293, retainedNodes: !1777)
!2297 = !DILocalVariable(name: "this", arg: 1, scope: !2296, type: !2298, flags: DIFlagArtificial | DIFlagObjectPointer)
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!2299 = !DILocation(line: 0, scope: !2296)
!2300 = !DILocation(line: 31, column: 5, scope: !2296)
!2301 = distinct !DISubprogram(linkageName: "_GLOBAL__sub_I_FrameBuffer.cxx", scope: !1124, file: !1124, type: !2302, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !1777)
!2302 = !DISubroutineType(types: !1777)
!2303 = !DILocation(line: 0, scope: !2301)
