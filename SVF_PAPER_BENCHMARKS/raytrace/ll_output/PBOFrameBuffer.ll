; ModuleID = '/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src/LRT/FrameBuffer/PBOFrameBuffer.cxx'
source_filename = "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src/LRT/FrameBuffer/PBOFrameBuffer.cxx"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%struct.sse_f = type { [4 x float] }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"struct.LRT::RGBAucharFrameBuffer" = type { ptr, %"class.RTTL::RTVec_t", ptr }
%"class.RTTL::RTVec_t" = type { i32, i32 }
%"struct.LRT::PBOFrameBuffer" = type { %"struct.LRT::OpenGLTextureRGBA8FB.base", i32 }
%"struct.LRT::OpenGLTextureRGBA8FB.base" = type <{ %"struct.LRT::RGBAucharFrameBuffer", i32, %"class.RTTL::RTVec_t", %"class.RTTL::RTVec_t.0" }>
%"class.RTTL::RTVec_t.0" = type { float, float }
%"struct.LRT::OpenGLTextureRGBA8FB" = type <{ %"struct.LRT::RGBAucharFrameBuffer", i32, %"class.RTTL::RTVec_t", %"class.RTTL::RTVec_t.0", [4 x i8] }>

$_ZN3LRT20OpenGLTextureRGBA8FBC2Ev = comdat any

$_ZN5sse_fC2Ev = comdat any

$_ZN3LRT20RGBAucharFrameBufferC2Ev = comdat any

$_ZN4RTTL7RTVec_tILi2EiLi0EEC2Ev = comdat any

$_ZN4RTTL7RTVec_tILi2EfLi0EEC2Ev = comdat any

$_ZN4RTTL7RTVec_tILi2EiLi0EEC2ERKiS3_ = comdat any

$_ZN3LRT20RGBAucharFrameBuffer6resizeEii = comdat any

$_ZSt3maxIiERKT_S2_S2_ = comdat any

$_Z14nextMultipleOfILi4EiET0_S0_ = comdat any

$_ZNK4RTTL7RTVec_tILi2EiLi0EE5arrayEv = comdat any

$_ZN4RTTL7RTVec_tILi2EiLi0EEcvRNS_8RTData_tILi2EiLi0EEEEv = comdat any

$_ZNK4RTTL7RTVec_tILi2EiLi0EEcvRKNS_8RTData_tILi2EiLi0EEEEv = comdat any

$_ZN4RTTL8RTData_tILi2EiLi0EE9nElementsEv = comdat any

$_ZNK4RTTL7RTVec_tILi2EiLi0EEixEi = comdat any

$_ZNK4RTTL7RTVec_tILi2EiLi0EE4dataEv = comdat any

$_ZTVN3LRT20RGBAucharFrameBufferE = comdat any

$_ZTSN3LRT20RGBAucharFrameBufferE = comdat any

$_ZTIN3LRT20RGBAucharFrameBufferE = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1, !dbg !0
@__dso_handle = external hidden global i8
@_ZL8maxFloat = internal global %struct.sse_f zeroinitializer, align 4, !dbg !7
@_ZTIPKc = external constant ptr
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [39 x i8] c"successfully allocated PBO framebuffer\00", align 1, !dbg !358
@.str.2 = private unnamed_addr constant [37 x i8] c"error in creating PBO framebuffer : \00", align 1, !dbg !365
@.str.3 = private unnamed_addr constant [22 x i8] c"(re-)allocating PBO (\00", align 1, !dbg !370
@.str.4 = private unnamed_addr constant [2 x i8] c")\00", align 1, !dbg !375
@.str.5 = private unnamed_addr constant [10 x i8] c"GL Error \00", align 1, !dbg !378
@.str.6 = private unnamed_addr constant [100 x i8] c"/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src/LRT/FrameBuffer/PBOFrameBuffer.cxx\00", align 1, !dbg !383
@.str.7 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !388
@_ZTVN3LRT14PBOFrameBufferE = dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN3LRT14PBOFrameBufferE, ptr @_ZN3LRT14PBOFrameBuffer6resizeEii, ptr @_ZN3LRT14PBOFrameBuffer13startNewFrameEv, ptr @_ZN3LRT14PBOFrameBuffer13doneWithFrameEv, ptr @_ZN3LRT20OpenGLTextureRGBA8FB7displayEv] }, align 8
@.str.8 = private unnamed_addr constant [30 x i8] c"checking for PBO support ... \00", align 1, !dbg !390
@.str.9 = private unnamed_addr constant [21 x i8] c"_pixel_buffer_object\00", align 1, !dbg !395
@.str.10 = private unnamed_addr constant [8 x i8] c"FAILED!\00", align 1, !dbg !400
@.str.11 = private unnamed_addr constant [65 x i8] c"could not find '_pixel_buffer_object' in gl capabilities string:\00", align 1, !dbg !405
@.str.12 = private unnamed_addr constant [51 x i8] c"pixel buffer objects not in GL extension string...\00", align 1, !dbg !410
@.str.13 = private unnamed_addr constant [4 x i8] c"OK.\00", align 1, !dbg !415
@.str.14 = private unnamed_addr constant [22 x i8] c"error in glGenBuffers\00", align 1, !dbg !418
@.str.15 = private unnamed_addr constant [3 x i8] c"fb\00", align 1, !dbg !420
@__PRETTY_FUNCTION__._ZN3LRT14PBOFrameBuffer13doneWithFrameEv = private unnamed_addr constant [50 x i8] c"virtual void LRT::PBOFrameBuffer::doneWithFrame()\00", align 1, !dbg !425
@__PRETTY_FUNCTION__._ZN3LRT14PBOFrameBuffer13startNewFrameEv = private unnamed_addr constant [50 x i8] c"virtual void LRT::PBOFrameBuffer::startNewFrame()\00", align 1, !dbg !430
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global ptr
@_ZTSN3LRT14PBOFrameBufferE = dso_local constant [23 x i8] c"N3LRT14PBOFrameBufferE\00", align 1
@_ZTIN3LRT20OpenGLTextureRGBA8FBE = external constant ptr
@_ZTIN3LRT14PBOFrameBufferE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3LRT14PBOFrameBufferE, ptr @_ZTIN3LRT20OpenGLTextureRGBA8FBE }, align 8
@_ZTVN3LRT20OpenGLTextureRGBA8FBE = external unnamed_addr constant { [6 x ptr] }, align 8
@_ZTVN3LRT20RGBAucharFrameBufferE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN3LRT20RGBAucharFrameBufferE, ptr @_ZN3LRT20RGBAucharFrameBuffer6resizeEii, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global ptr
@_ZTSN3LRT20RGBAucharFrameBufferE = linkonce_odr dso_local constant [29 x i8] c"N3LRT20RGBAucharFrameBufferE\00", comdat, align 1
@_ZTIN3LRT20RGBAucharFrameBufferE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN3LRT20RGBAucharFrameBufferE }, comdat, align 8
@.str.16 = private unnamed_addr constant [29 x i8] c"nElements() <= v.nElements()\00", align 1, !dbg !432
@.str.17 = private unnamed_addr constant [88 x i8] c"/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src/RTTL/common/RTData.hxx\00", align 1, !dbg !437
@__PRETTY_FUNCTION__._ZN4RTTL8RTData_tILi2EiLi0EE6assignILi2EiLi0EEEvRKNS0_IXT_ET0_XT1_EEE = private unnamed_addr constant [185 x i8] c"void RTTL::RTData_t<2, int>::assign(const RTData_t<AnotherN, AnotherDataType, AnotherAlign> &) [N = 2, DataType = int, align = 0, AnotherN = 2, AnotherDataType = int, AnotherAlign = 0]\00", align 1, !dbg !442
@.str.18 = private unnamed_addr constant [2 x i8] c"[\00", align 1, !dbg !447
@.str.19 = private unnamed_addr constant [2 x i8] c",\00", align 1, !dbg !449
@.str.20 = private unnamed_addr constant [2 x i8] c"]\00", align 1, !dbg !451
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_PBOFrameBuffer.cxx, ptr null }]

@_ZN3LRT14PBOFrameBufferC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN3LRT14PBOFrameBufferC2Ev

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" !dbg !1744 {
  call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit), !dbg !1746
  %1 = call i32 @__cxa_atexit(ptr @_ZNSt8ios_base4InitD1Ev, ptr @_ZStL8__ioinit, ptr @__dso_handle) #3, !dbg !1748
  ret void, !dbg !1746
}

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) #3

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.1() #4 section ".text.startup" !dbg !1749 {
  %1 = alloca %struct.sse_f, align 4
  %2 = alloca float, align 4
  %3 = alloca i32, align 4
  store float 0x47EFFFFFE0000000, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1750, metadata !DIExpression()), !dbg !1754
  call void @llvm.dbg.declare(metadata ptr %1, metadata !1757, metadata !DIExpression()), !dbg !1758
  call void @_ZN5sse_fC2Ev(ptr noundef nonnull align 4 dereferenceable(16) %1), !dbg !1758
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1759, metadata !DIExpression()), !dbg !1761
  store i32 0, ptr %3, align 4, !dbg !1761
  br label %4, !dbg !1762

4:                                                ; preds = %7, %0
  %5 = load i32, ptr %3, align 4, !dbg !1763
  %6 = icmp slt i32 %5, 4, !dbg !1765
  br i1 %6, label %7, label %14, !dbg !1766

7:                                                ; preds = %4
  %8 = load float, ptr %2, align 4, !dbg !1767
  %9 = load i32, ptr %3, align 4, !dbg !1768
  %10 = sext i32 %9 to i64, !dbg !1769
  %11 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 %10, !dbg !1769
  store float %8, ptr %11, align 4, !dbg !1770
  %12 = load i32, ptr %3, align 4, !dbg !1771
  %13 = add nsw i32 %12, 1, !dbg !1771
  store i32 %13, ptr %3, align 4, !dbg !1771
  br label %4, !dbg !1772, !llvm.loop !1773

14:                                               ; preds = %4
  %15 = load { <2 x float>, <2 x float> }, ptr %1, align 4, !dbg !1776
  %16 = extractvalue { <2 x float>, <2 x float> } %15, 0, !dbg !1777
  store <2 x float> %16, ptr @_ZL8maxFloat, align 4, !dbg !1777
  %17 = extractvalue { <2 x float>, <2 x float> } %15, 1, !dbg !1777
  store <2 x float> %17, ptr getelementptr inbounds ({ <2 x float>, <2 x float> }, ptr @_ZL8maxFloat, i32 0, i32 1), align 4, !dbg !1777
  ret void, !dbg !1778
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef ptr @_ZN3LRT14PBOFrameBuffer6createEv() #5 align 2 personality ptr @__gxx_personality_v0 !dbg !1779 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1835, metadata !DIExpression()), !dbg !1837
  %6 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef 48) #16
          to label %7 unwind label %14, !dbg !1838, !heapallocsite !1780

7:                                                ; preds = %0
  invoke void @_ZN3LRT14PBOFrameBufferC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %6)
          to label %8 unwind label %18, !dbg !1839

8:                                                ; preds = %7
  store ptr %6, ptr %2, align 8, !dbg !1837
  %9 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str)
          to label %10 unwind label %14, !dbg !1840

10:                                               ; preds = %8
  %11 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
          to label %12 unwind label %14, !dbg !1841

12:                                               ; preds = %10
  %13 = load ptr, ptr %2, align 8, !dbg !1842
  store ptr %13, ptr %1, align 8, !dbg !1843
  br label %41, !dbg !1843

14:                                               ; preds = %10, %8, %0
  %15 = landingpad { ptr, i32 }
          catch ptr @_ZTIPKc, !dbg !1844
  %16 = extractvalue { ptr, i32 } %15, 0, !dbg !1844
  store ptr %16, ptr %3, align 8, !dbg !1844
  %17 = extractvalue { ptr, i32 } %15, 1, !dbg !1844
  store i32 %17, ptr %4, align 4, !dbg !1844
  br label %22, !dbg !1844

18:                                               ; preds = %7
  %19 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIPKc, !dbg !1844
  %20 = extractvalue { ptr, i32 } %19, 0, !dbg !1844
  store ptr %20, ptr %3, align 8, !dbg !1844
  %21 = extractvalue { ptr, i32 } %19, 1, !dbg !1844
  store i32 %21, ptr %4, align 4, !dbg !1844
  call void @_ZdlPv(ptr noundef %6) #17, !dbg !1838
  br label %22, !dbg !1838

22:                                               ; preds = %18, %14
  %23 = load i32, ptr %4, align 4, !dbg !1845
  %24 = call i32 @llvm.eh.typeid.for(ptr @_ZTIPKc) #3, !dbg !1845
  %25 = icmp eq i32 %23, %24, !dbg !1845
  br i1 %25, label %26, label %43, !dbg !1845

26:                                               ; preds = %22
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1846, metadata !DIExpression()), !dbg !1847
  %27 = load ptr, ptr %3, align 8, !dbg !1845
  %28 = call ptr @__cxa_begin_catch(ptr %27) #3, !dbg !1845
  store ptr %28, ptr %5, align 8, !dbg !1845
  %29 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.2)
          to label %30 unwind label %36, !dbg !1848

30:                                               ; preds = %26
  %31 = load ptr, ptr %5, align 8, !dbg !1850
  %32 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef %31)
          to label %33 unwind label %36, !dbg !1851

33:                                               ; preds = %30
  %34 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
          to label %35 unwind label %36, !dbg !1852

35:                                               ; preds = %33
  store ptr null, ptr %1, align 8, !dbg !1853
  call void @__cxa_end_catch() #3, !dbg !1854
  br label %41

36:                                               ; preds = %33, %30, %26
  %37 = landingpad { ptr, i32 }
          cleanup, !dbg !1855
  %38 = extractvalue { ptr, i32 } %37, 0, !dbg !1855
  store ptr %38, ptr %3, align 8, !dbg !1855
  %39 = extractvalue { ptr, i32 } %37, 1, !dbg !1855
  store i32 %39, ptr %4, align 4, !dbg !1855
  call void @__cxa_end_catch() #3, !dbg !1854
  br label %43, !dbg !1854

40:                                               ; No predecessors!
  call void @llvm.trap(), !dbg !1854
  unreachable, !dbg !1854

41:                                               ; preds = %35, %12
  %42 = load ptr, ptr %1, align 8, !dbg !1856
  ret ptr %42, !dbg !1856

43:                                               ; preds = %36, %22
  %44 = load ptr, ptr %3, align 8, !dbg !1845
  %45 = load i32, ptr %4, align 4, !dbg !1845
  %46 = insertvalue { ptr, i32 } poison, ptr %44, 0, !dbg !1845
  %47 = insertvalue { ptr, i32 } %46, i32 %45, 1, !dbg !1845
  resume { ptr, i32 } %47, !dbg !1845
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) #7

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) #8

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #1

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #9

declare ptr @__cxa_begin_catch(ptr)

declare void @__cxa_end_catch()

; Function Attrs: cold noreturn nounwind
declare void @llvm.trap() #10

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN3LRT14PBOFrameBuffer6resizeEii(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #5 align 2 !dbg !1857 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store ptr %0, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1858, metadata !DIExpression()), !dbg !1859
  store i32 %1, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1860, metadata !DIExpression()), !dbg !1861
  store i32 %2, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1862, metadata !DIExpression()), !dbg !1863
  %14 = load ptr, ptr %7, align 8
  %15 = load i32, ptr %8, align 4, !dbg !1864
  %16 = load i32, ptr %9, align 4, !dbg !1865
  call void @_ZN3LRT20OpenGLTextureRGBA8FB6resizeEii(ptr noundef nonnull align 8 dereferenceable(44) %14, i32 noundef %15, i32 noundef %16), !dbg !1866
  %17 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.3), !dbg !1867
  %18 = getelementptr inbounds %"struct.LRT::RGBAucharFrameBuffer", ptr %14, i32 0, i32 1, !dbg !1868
  store ptr %17, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1869, metadata !DIExpression()), !dbg !1880
  store ptr %18, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1882, metadata !DIExpression()), !dbg !1883
  %19 = load ptr, ptr %4, align 8, !dbg !1884
  %20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef @.str.18), !dbg !1885
  %21 = load ptr, ptr %5, align 8, !dbg !1886
  %22 = call noundef i32 @_ZNK4RTTL7RTVec_tILi2EiLi0EEixEi(ptr noundef nonnull align 4 dereferenceable(8) %21, i32 noundef 0), !dbg !1886
  %23 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %20, i32 noundef %22), !dbg !1887
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1888, metadata !DIExpression()), !dbg !1890
  store i32 1, ptr %6, align 4, !dbg !1890
  br label %24, !dbg !1891

24:                                               ; preds = %27, %3
  %25 = load i32, ptr %6, align 4, !dbg !1892
  %26 = icmp slt i32 %25, 2, !dbg !1894
  br i1 %26, label %27, label %36, !dbg !1895

27:                                               ; preds = %24
  %28 = load ptr, ptr %4, align 8, !dbg !1896
  %29 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef @.str.19), !dbg !1897
  %30 = load ptr, ptr %5, align 8, !dbg !1898
  %31 = load i32, ptr %6, align 4, !dbg !1899
  %32 = call noundef i32 @_ZNK4RTTL7RTVec_tILi2EiLi0EEixEi(ptr noundef nonnull align 4 dereferenceable(8) %30, i32 noundef %31), !dbg !1898
  %33 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %29, i32 noundef %32), !dbg !1900
  %34 = load i32, ptr %6, align 4, !dbg !1901
  %35 = add nsw i32 %34, 1, !dbg !1901
  store i32 %35, ptr %6, align 4, !dbg !1901
  br label %24, !dbg !1902, !llvm.loop !1903

36:                                               ; preds = %24
  %37 = load ptr, ptr %4, align 8, !dbg !1905
  %38 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %37, ptr noundef @.str.20), !dbg !1906
  %39 = load ptr, ptr %4, align 8, !dbg !1907
  %40 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %39, ptr noundef @.str.4), !dbg !1908
  %41 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !1909
  %42 = getelementptr inbounds %"struct.LRT::PBOFrameBuffer", ptr %14, i32 0, i32 1, !dbg !1910
  %43 = load i32, ptr %42, align 4, !dbg !1910
  call void @glBindBuffer(i32 noundef 35052, i32 noundef %43), !dbg !1911
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1912, metadata !DIExpression()), !dbg !1915
  %44 = call i32 @glGetError(), !dbg !1915
  store i32 %44, ptr %10, align 4, !dbg !1915
  %45 = load i32, ptr %10, align 4, !dbg !1916
  %46 = icmp ne i32 %45, 0, !dbg !1916
  br i1 %46, label %47, label %54, !dbg !1915

47:                                               ; preds = %36
  %48 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.5), !dbg !1916
  %49 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %48, ptr noundef @.str.6), !dbg !1916
  %50 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef @.str.7), !dbg !1916
  %51 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %50, i32 noundef 87), !dbg !1916
  %52 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %51, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !1916
  %53 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !1916
  br label %54, !dbg !1916

54:                                               ; preds = %47, %36
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1918, metadata !DIExpression()), !dbg !1919
  %55 = getelementptr inbounds %"struct.LRT::RGBAucharFrameBuffer", ptr %14, i32 0, i32 1, !dbg !1920
  %56 = getelementptr inbounds %"class.RTTL::RTVec_t", ptr %55, i32 0, i32 0, !dbg !1921
  %57 = load i32, ptr %56, align 8, !dbg !1921
  %58 = sext i32 %57 to i64, !dbg !1920
  %59 = mul i64 16, %58, !dbg !1922
  %60 = getelementptr inbounds %"struct.LRT::RGBAucharFrameBuffer", ptr %14, i32 0, i32 1, !dbg !1923
  %61 = getelementptr inbounds %"class.RTTL::RTVec_t", ptr %60, i32 0, i32 1, !dbg !1924
  %62 = load i32, ptr %61, align 4, !dbg !1924
  %63 = sext i32 %62 to i64, !dbg !1923
  %64 = mul i64 %59, %63, !dbg !1925
  %65 = trunc i64 %64 to i32, !dbg !1926
  store i32 %65, ptr %11, align 4, !dbg !1919
  %66 = load i32, ptr %11, align 4, !dbg !1927
  %67 = sext i32 %66 to i64, !dbg !1927
  call void @glBufferData(i32 noundef 35052, i64 noundef %67, ptr noundef null, i32 noundef 35040), !dbg !1928
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1929, metadata !DIExpression()), !dbg !1931
  %68 = call i32 @glGetError(), !dbg !1931
  store i32 %68, ptr %12, align 4, !dbg !1931
  %69 = load i32, ptr %12, align 4, !dbg !1932
  %70 = icmp ne i32 %69, 0, !dbg !1932
  br i1 %70, label %71, label %78, !dbg !1931

71:                                               ; preds = %54
  %72 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.5), !dbg !1932
  %73 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %72, ptr noundef @.str.6), !dbg !1932
  %74 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %73, ptr noundef @.str.7), !dbg !1932
  %75 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %74, i32 noundef 91), !dbg !1932
  %76 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %75, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !1932
  %77 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %76, ptr noundef @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !1932
  br label %78, !dbg !1932

78:                                               ; preds = %71, %54
  call void @glBindBuffer(i32 noundef 35052, i32 noundef 0), !dbg !1934
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1935, metadata !DIExpression()), !dbg !1937
  %79 = call i32 @glGetError(), !dbg !1937
  store i32 %79, ptr %13, align 4, !dbg !1937
  %80 = load i32, ptr %13, align 4, !dbg !1938
  %81 = icmp ne i32 %80, 0, !dbg !1938
  br i1 %81, label %82, label %89, !dbg !1937

82:                                               ; preds = %78
  %83 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.5), !dbg !1938
  %84 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %83, ptr noundef @.str.6), !dbg !1938
  %85 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %84, ptr noundef @.str.7), !dbg !1938
  %86 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %85, i32 noundef 94), !dbg !1938
  %87 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %86, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !1938
  %88 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %87, ptr noundef @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !1938
  br label %89, !dbg !1938

89:                                               ; preds = %82, %78
  ret void, !dbg !1940
}

declare void @_ZN3LRT20OpenGLTextureRGBA8FB6resizeEii(ptr noundef nonnull align 8 dereferenceable(44), i32 noundef, i32 noundef) unnamed_addr #1

declare void @glBindBuffer(i32 noundef, i32 noundef) #1

declare i32 @glGetError() #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #1

declare void @glBufferData(i32 noundef, i64 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: noinline optnone uwtable
define dso_local void @_ZN3LRT14PBOFrameBufferC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #11 align 2 !dbg !1941 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1942, metadata !DIExpression()), !dbg !1943
  %4 = load ptr, ptr %2, align 8
  call void @_ZN3LRT20OpenGLTextureRGBA8FBC2Ev(ptr noundef nonnull align 8 dereferenceable(44) %4), !dbg !1944
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN3LRT14PBOFrameBufferE, i32 0, inrange i32 0, i32 2), ptr %4, align 8, !dbg !1945
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.8), !dbg !1946
  %6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !1948
  %7 = call ptr @glGetString(i32 noundef 7939), !dbg !1949
  %8 = call noundef ptr @strstr(ptr noundef %7, ptr noundef @.str.9) #18, !dbg !1951
  %9 = icmp eq ptr %8, null, !dbg !1952
  br i1 %9, label %10, label %19, !dbg !1953

10:                                               ; preds = %1
  %11 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.10), !dbg !1954
  %12 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !1956
  %13 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.11), !dbg !1957
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !1958
  %15 = call ptr @glGetString(i32 noundef 7939), !dbg !1959
  %16 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKh(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %15), !dbg !1960
  %17 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !1961
  %18 = call ptr @__cxa_allocate_exception(i64 8) #3, !dbg !1962
  store ptr @.str.12, ptr %18, align 16, !dbg !1962
  call void @__cxa_throw(ptr %18, ptr @_ZTIPKc, ptr null) #19, !dbg !1962
  unreachable, !dbg !1962

19:                                               ; preds = %1
  %20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.13), !dbg !1963
  %21 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !1964
  br label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %"struct.LRT::PBOFrameBuffer", ptr %4, i32 0, i32 1, !dbg !1965
  call void @glGenBuffers(i32 noundef 1, ptr noundef %23), !dbg !1966
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1967, metadata !DIExpression()), !dbg !1969
  %24 = call i32 @glGetError(), !dbg !1969
  store i32 %24, ptr %3, align 4, !dbg !1969
  %25 = load i32, ptr %3, align 4, !dbg !1970
  %26 = icmp ne i32 %25, 0, !dbg !1970
  br i1 %26, label %27, label %34, !dbg !1969

27:                                               ; preds = %22
  %28 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.5), !dbg !1970
  %29 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef @.str.6), !dbg !1970
  %30 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef @.str.7), !dbg !1970
  %31 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %30, i32 noundef 130), !dbg !1970
  %32 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !1970
  %33 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !1970
  br label %34, !dbg !1970

34:                                               ; preds = %27, %22
  %35 = call i32 @glGetError(), !dbg !1972
  %36 = icmp ne i32 %35, 0, !dbg !1974
  br i1 %36, label %37, label %39, !dbg !1975

37:                                               ; preds = %34
  %38 = call ptr @__cxa_allocate_exception(i64 8) #3, !dbg !1976
  store ptr @.str.14, ptr %38, align 16, !dbg !1976
  call void @__cxa_throw(ptr %38, ptr @_ZTIPKc, ptr null) #19, !dbg !1976
  unreachable, !dbg !1976

39:                                               ; preds = %34
  ret void, !dbg !1977
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN3LRT20OpenGLTextureRGBA8FBC2Ev(ptr noundef nonnull align 8 dereferenceable(44) %0) unnamed_addr #11 comdat align 2 !dbg !1978 {
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
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1983, metadata !DIExpression()), !dbg !1985
  %15 = load ptr, ptr %11, align 8
  call void @_ZN3LRT20RGBAucharFrameBufferC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %15), !dbg !1986
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN3LRT20OpenGLTextureRGBA8FBE, i32 0, inrange i32 0, i32 2), ptr %15, align 8, !dbg !1987
  %16 = getelementptr inbounds %"struct.LRT::OpenGLTextureRGBA8FB", ptr %15, i32 0, i32 2, !dbg !1986
  call void @_ZN4RTTL7RTVec_tILi2EiLi0EEC2Ev(ptr noundef nonnull align 4 dereferenceable(8) %16), !dbg !1986
  %17 = getelementptr inbounds %"struct.LRT::OpenGLTextureRGBA8FB", ptr %15, i32 0, i32 3, !dbg !1986
  call void @_ZN4RTTL7RTVec_tILi2EfLi0EEC2Ev(ptr noundef nonnull align 4 dereferenceable(8) %17), !dbg !1986
  %18 = getelementptr inbounds %"struct.LRT::OpenGLTextureRGBA8FB", ptr %15, i32 0, i32 1, !dbg !1988
  call void @glGenTextures(i32 noundef 1, ptr noundef %18), !dbg !1990
  %19 = getelementptr inbounds %"struct.LRT::OpenGLTextureRGBA8FB", ptr %15, i32 0, i32 1, !dbg !1991
  %20 = load i32, ptr %19, align 8, !dbg !1991
  call void @glBindTexture(i32 noundef 3553, i32 noundef %20), !dbg !1992
  store i32 0, ptr %13, align 4, !dbg !1993
  store i32 0, ptr %14, align 4, !dbg !1994
  call void @_ZN4RTTL7RTVec_tILi2EiLi0EEC2ERKiS3_(ptr noundef nonnull align 4 dereferenceable(8) %12, ptr noundef nonnull align 4 dereferenceable(4) %13, ptr noundef nonnull align 4 dereferenceable(4) %14), !dbg !1995
  %21 = getelementptr inbounds %"struct.LRT::OpenGLTextureRGBA8FB", ptr %15, i32 0, i32 2, !dbg !1996
  store ptr %21, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1997, metadata !DIExpression()), !dbg !2000
  store ptr %12, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2002, metadata !DIExpression()), !dbg !2003
  %22 = load ptr, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2004, metadata !DIExpression()), !dbg !2005
  %23 = call noundef nonnull align 4 dereferenceable(8) ptr @_ZN4RTTL7RTVec_tILi2EiLi0EEcvRNS_8RTData_tILi2EiLi0EEEEv(ptr noundef nonnull align 4 dereferenceable(8) %22), !dbg !2006
  store ptr %23, ptr %9, align 8, !dbg !2005
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2007, metadata !DIExpression()), !dbg !2008
  %24 = load ptr, ptr %8, align 8, !dbg !2009
  %25 = call noundef nonnull align 4 dereferenceable(8) ptr @_ZNK4RTTL7RTVec_tILi2EiLi0EEcvRKNS_8RTData_tILi2EiLi0EEEEv(ptr noundef nonnull align 4 dereferenceable(8) %24), !dbg !2009
  store ptr %25, ptr %10, align 8, !dbg !2008
  %26 = load ptr, ptr %9, align 8, !dbg !2010
  %27 = load ptr, ptr %10, align 8, !dbg !2011
  store ptr %26, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2012, metadata !DIExpression()), !dbg !2020
  store ptr %27, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2022, metadata !DIExpression()), !dbg !2023
  %28 = load ptr, ptr %4, align 8
  %29 = call noundef i32 @_ZN4RTTL8RTData_tILi2EiLi0EE9nElementsEv(), !dbg !2024
  %30 = load ptr, ptr %5, align 8, !dbg !2024
  %31 = call noundef i32 @_ZN4RTTL8RTData_tILi2EiLi0EE9nElementsEv(), !dbg !2024
  %32 = icmp sle i32 %29, %31, !dbg !2024
  br i1 %32, label %33, label %34, !dbg !2024

33:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2025, metadata !DIExpression()), !dbg !2027
  store i32 0, ptr %6, align 4, !dbg !2027
  br label %35, !dbg !2028

34:                                               ; preds = %1
  call void @__assert_fail(ptr noundef @.str.16, ptr noundef @.str.17, i32 noundef 44, ptr noundef @__PRETTY_FUNCTION__._ZN4RTTL8RTData_tILi2EiLi0EE6assignILi2EiLi0EEEvRKNS0_IXT_ET0_XT1_EEE) #20, !dbg !2024
  unreachable, !dbg !2024

35:                                               ; preds = %38, %33
  %36 = load i32, ptr %6, align 4, !dbg !2029
  %37 = icmp slt i32 %36, 2, !dbg !2031
  br i1 %37, label %38, label %51, !dbg !2032

38:                                               ; preds = %35
  %39 = load ptr, ptr %5, align 8, !dbg !2033
  %40 = load i32, ptr %6, align 4, !dbg !2034
  store ptr %39, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2035, metadata !DIExpression()), !dbg !2038
  store i32 %40, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2040, metadata !DIExpression()), !dbg !2041
  %41 = load ptr, ptr %2, align 8
  %42 = load i32, ptr %3, align 4, !dbg !2042
  %43 = sext i32 %42 to i64, !dbg !2043
  %44 = getelementptr inbounds [2 x i32], ptr %41, i64 0, i64 %43, !dbg !2043
  %45 = load i32, ptr %44, align 4, !dbg !2043
  %46 = load i32, ptr %6, align 4, !dbg !2044
  %47 = sext i32 %46 to i64, !dbg !2045
  %48 = getelementptr inbounds [2 x i32], ptr %28, i64 0, i64 %47, !dbg !2045
  store i32 %45, ptr %48, align 4, !dbg !2046
  %49 = load i32, ptr %6, align 4, !dbg !2047
  %50 = add nsw i32 %49, 1, !dbg !2047
  store i32 %50, ptr %6, align 4, !dbg !2047
  br label %35, !dbg !2048, !llvm.loop !2049

51:                                               ; preds = %35
  ret void, !dbg !2051
}

; Function Attrs: nounwind willreturn memory(read)
declare noundef ptr @strstr(ptr noundef, ptr noundef) #12

declare ptr @glGetString(i32 noundef) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKh(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #1

declare ptr @__cxa_allocate_exception(i64)

declare void @__cxa_throw(ptr, ptr, ptr)

declare void @glGenBuffers(i32 noundef, ptr noundef) #1

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN3LRT14PBOFrameBuffer13doneWithFrameEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 align 2 !dbg !2052 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2053, metadata !DIExpression()), !dbg !2054
  %8 = load ptr, ptr %2, align 8
  %9 = getelementptr inbounds %"struct.LRT::RGBAucharFrameBuffer", ptr %8, i32 0, i32 2, !dbg !2055
  %10 = load ptr, ptr %9, align 8, !dbg !2055
  %11 = icmp ne ptr %10, null, !dbg !2055
  br i1 %11, label %12, label %13, !dbg !2055

12:                                               ; preds = %1
  br label %15, !dbg !2055

13:                                               ; preds = %1
  call void @__assert_fail(ptr noundef @.str.15, ptr noundef @.str.6, i32 noundef 143, ptr noundef @__PRETTY_FUNCTION__._ZN3LRT14PBOFrameBuffer13doneWithFrameEv) #20, !dbg !2055
  unreachable, !dbg !2055

14:                                               ; No predecessors!
  br label %15, !dbg !2055

15:                                               ; preds = %14, %12
  %16 = call zeroext i8 @glUnmapBuffer(i32 noundef 35052), !dbg !2056
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2057, metadata !DIExpression()), !dbg !2059
  %17 = call i32 @glGetError(), !dbg !2059
  store i32 %17, ptr %3, align 4, !dbg !2059
  %18 = load i32, ptr %3, align 4, !dbg !2060
  %19 = icmp ne i32 %18, 0, !dbg !2060
  br i1 %19, label %20, label %27, !dbg !2059

20:                                               ; preds = %15
  %21 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.5), !dbg !2060
  %22 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef @.str.6), !dbg !2060
  %23 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef @.str.7), !dbg !2060
  %24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %23, i32 noundef 150), !dbg !2060
  %25 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !2060
  %26 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !2060
  br label %27, !dbg !2060

27:                                               ; preds = %20, %15
  %28 = getelementptr inbounds %"struct.LRT::PBOFrameBuffer", ptr %8, i32 0, i32 1, !dbg !2062
  %29 = load i32, ptr %28, align 4, !dbg !2062
  call void @glBindBuffer(i32 noundef 35052, i32 noundef %29), !dbg !2063
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2064, metadata !DIExpression()), !dbg !2066
  %30 = call i32 @glGetError(), !dbg !2066
  store i32 %30, ptr %4, align 4, !dbg !2066
  %31 = load i32, ptr %4, align 4, !dbg !2067
  %32 = icmp ne i32 %31, 0, !dbg !2067
  br i1 %32, label %33, label %40, !dbg !2066

33:                                               ; preds = %27
  %34 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.5), !dbg !2067
  %35 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %34, ptr noundef @.str.6), !dbg !2067
  %36 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %35, ptr noundef @.str.7), !dbg !2067
  %37 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %36, i32 noundef 165), !dbg !2067
  %38 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %37, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !2067
  %39 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !2067
  br label %40, !dbg !2067

40:                                               ; preds = %33, %27
  %41 = getelementptr inbounds %"struct.LRT::OpenGLTextureRGBA8FB", ptr %8, i32 0, i32 1, !dbg !2069
  %42 = load i32, ptr %41, align 8, !dbg !2069
  call void @glBindTexture(i32 noundef 3553, i32 noundef %42), !dbg !2070
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2071, metadata !DIExpression()), !dbg !2073
  %43 = call i32 @glGetError(), !dbg !2073
  store i32 %43, ptr %5, align 4, !dbg !2073
  %44 = load i32, ptr %5, align 4, !dbg !2074
  %45 = icmp ne i32 %44, 0, !dbg !2074
  br i1 %45, label %46, label %53, !dbg !2073

46:                                               ; preds = %40
  %47 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.5), !dbg !2074
  %48 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %47, ptr noundef @.str.6), !dbg !2074
  %49 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %48, ptr noundef @.str.7), !dbg !2074
  %50 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %49, i32 noundef 169), !dbg !2074
  %51 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !2074
  %52 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %51, ptr noundef @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !2074
  br label %53, !dbg !2074

53:                                               ; preds = %46, %40
  %54 = getelementptr inbounds %"struct.LRT::RGBAucharFrameBuffer", ptr %8, i32 0, i32 1, !dbg !2076
  %55 = getelementptr inbounds %"class.RTTL::RTVec_t", ptr %54, i32 0, i32 0, !dbg !2077
  %56 = load i32, ptr %55, align 8, !dbg !2077
  %57 = getelementptr inbounds %"struct.LRT::RGBAucharFrameBuffer", ptr %8, i32 0, i32 1, !dbg !2078
  %58 = getelementptr inbounds %"class.RTTL::RTVec_t", ptr %57, i32 0, i32 1, !dbg !2079
  %59 = load i32, ptr %58, align 4, !dbg !2079
  call void @glTexSubImage2D(i32 noundef 3553, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %56, i32 noundef %59, i32 noundef 32993, i32 noundef 5121, ptr noundef null), !dbg !2080
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2081, metadata !DIExpression()), !dbg !2083
  %60 = call i32 @glGetError(), !dbg !2083
  store i32 %60, ptr %6, align 4, !dbg !2083
  %61 = load i32, ptr %6, align 4, !dbg !2084
  %62 = icmp ne i32 %61, 0, !dbg !2084
  br i1 %62, label %63, label %70, !dbg !2083

63:                                               ; preds = %53
  %64 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.5), !dbg !2084
  %65 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %64, ptr noundef @.str.6), !dbg !2084
  %66 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %65, ptr noundef @.str.7), !dbg !2084
  %67 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %66, i32 noundef 174), !dbg !2084
  %68 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %67, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !2084
  %69 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %68, ptr noundef @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !2084
  br label %70, !dbg !2084

70:                                               ; preds = %63, %53
  call void @glBindBuffer(i32 noundef 35052, i32 noundef 0), !dbg !2086
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2087, metadata !DIExpression()), !dbg !2089
  %71 = call i32 @glGetError(), !dbg !2089
  store i32 %71, ptr %7, align 4, !dbg !2089
  %72 = load i32, ptr %7, align 4, !dbg !2090
  %73 = icmp ne i32 %72, 0, !dbg !2090
  br i1 %73, label %74, label %81, !dbg !2089

74:                                               ; preds = %70
  %75 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.5), !dbg !2090
  %76 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %75, ptr noundef @.str.6), !dbg !2090
  %77 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %76, ptr noundef @.str.7), !dbg !2090
  %78 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %77, i32 noundef 176), !dbg !2090
  %79 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %78, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !2090
  %80 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %79, ptr noundef @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !2090
  br label %81, !dbg !2090

81:                                               ; preds = %74, %70
  ret void, !dbg !2092
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #13

declare zeroext i8 @glUnmapBuffer(i32 noundef) #1

declare void @glBindTexture(i32 noundef, i32 noundef) #1

declare void @glTexSubImage2D(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN3LRT14PBOFrameBuffer13startNewFrameEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 align 2 !dbg !2093 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2094, metadata !DIExpression()), !dbg !2095
  %5 = load ptr, ptr %2, align 8
  %6 = getelementptr inbounds %"struct.LRT::PBOFrameBuffer", ptr %5, i32 0, i32 1, !dbg !2096
  %7 = load i32, ptr %6, align 4, !dbg !2096
  call void @glBindBuffer(i32 noundef 35052, i32 noundef %7), !dbg !2097
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2098, metadata !DIExpression()), !dbg !2100
  %8 = call i32 @glGetError(), !dbg !2100
  store i32 %8, ptr %3, align 4, !dbg !2100
  %9 = load i32, ptr %3, align 4, !dbg !2101
  %10 = icmp ne i32 %9, 0, !dbg !2101
  br i1 %10, label %11, label %18, !dbg !2100

11:                                               ; preds = %1
  %12 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.5), !dbg !2101
  %13 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef @.str.6), !dbg !2101
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef @.str.7), !dbg !2101
  %15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %14, i32 noundef 185), !dbg !2101
  %16 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !2101
  %17 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !2101
  br label %18, !dbg !2101

18:                                               ; preds = %11, %1
  %19 = call ptr @glMapBuffer(i32 noundef 35052, i32 noundef 35001), !dbg !2103
  %20 = getelementptr inbounds %"struct.LRT::RGBAucharFrameBuffer", ptr %5, i32 0, i32 2, !dbg !2104
  store ptr %19, ptr %20, align 8, !dbg !2105
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2106, metadata !DIExpression()), !dbg !2108
  %21 = call i32 @glGetError(), !dbg !2108
  store i32 %21, ptr %4, align 4, !dbg !2108
  %22 = load i32, ptr %4, align 4, !dbg !2109
  %23 = icmp ne i32 %22, 0, !dbg !2109
  br i1 %23, label %24, label %31, !dbg !2108

24:                                               ; preds = %18
  %25 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.5), !dbg !2109
  %26 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef @.str.6), !dbg !2109
  %27 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef @.str.7), !dbg !2109
  %28 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %27, i32 noundef 187), !dbg !2109
  %29 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !2109
  %30 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !2109
  br label %31, !dbg !2109

31:                                               ; preds = %24, %18
  %32 = getelementptr inbounds %"struct.LRT::RGBAucharFrameBuffer", ptr %5, i32 0, i32 2, !dbg !2111
  %33 = load ptr, ptr %32, align 8, !dbg !2111
  %34 = icmp ne ptr %33, null, !dbg !2111
  br i1 %34, label %35, label %36, !dbg !2111

35:                                               ; preds = %31
  br label %38, !dbg !2111

36:                                               ; preds = %31
  call void @__assert_fail(ptr noundef @.str.15, ptr noundef @.str.6, i32 noundef 188, ptr noundef @__PRETTY_FUNCTION__._ZN3LRT14PBOFrameBuffer13startNewFrameEv) #20, !dbg !2111
  unreachable, !dbg !2111

37:                                               ; No predecessors!
  br label %38, !dbg !2111

38:                                               ; preds = %37, %35
  ret void, !dbg !2112
}

declare ptr @glMapBuffer(i32 noundef, i32 noundef) #1

declare void @_ZN3LRT20OpenGLTextureRGBA8FB7displayEv(ptr noundef nonnull align 8 dereferenceable(44)) unnamed_addr #1

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN5sse_fC2Ev(ptr noundef nonnull align 4 dereferenceable(16) %0) unnamed_addr #14 comdat align 2 !dbg !2113 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2114, metadata !DIExpression()), !dbg !2116
  %3 = load ptr, ptr %2, align 8
  ret void, !dbg !2117
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN3LRT20RGBAucharFrameBufferC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #11 comdat align 2 !dbg !2118 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2119, metadata !DIExpression()), !dbg !2120
  %5 = load ptr, ptr %2, align 8
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN3LRT20RGBAucharFrameBufferE, i32 0, inrange i32 0, i32 2), ptr %5, align 8, !dbg !2121
  %6 = getelementptr inbounds %"struct.LRT::RGBAucharFrameBuffer", ptr %5, i32 0, i32 1, !dbg !2122
  store i32 0, ptr %3, align 4, !dbg !2123
  store i32 0, ptr %4, align 4, !dbg !2124
  call void @_ZN4RTTL7RTVec_tILi2EiLi0EEC2ERKiS3_(ptr noundef nonnull align 4 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4), !dbg !2122
  %7 = getelementptr inbounds %"struct.LRT::RGBAucharFrameBuffer", ptr %5, i32 0, i32 2, !dbg !2125
  store ptr null, ptr %7, align 8, !dbg !2125
  ret void, !dbg !2126
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4RTTL7RTVec_tILi2EiLi0EEC2Ev(ptr noundef nonnull align 4 dereferenceable(8) %0) unnamed_addr #14 comdat align 2 !dbg !2127 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2128, metadata !DIExpression()), !dbg !2129
  %3 = load ptr, ptr %2, align 8
  ret void, !dbg !2130
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4RTTL7RTVec_tILi2EfLi0EEC2Ev(ptr noundef nonnull align 4 dereferenceable(8) %0) unnamed_addr #14 comdat align 2 !dbg !2131 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2132, metadata !DIExpression()), !dbg !2134
  %3 = load ptr, ptr %2, align 8
  ret void, !dbg !2135
}

declare void @glGenTextures(i32 noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4RTTL7RTVec_tILi2EiLi0EEC2ERKiS3_(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #14 comdat align 2 !dbg !2136 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2137, metadata !DIExpression()), !dbg !2138
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2139, metadata !DIExpression()), !dbg !2140
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2141, metadata !DIExpression()), !dbg !2142
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds %"class.RTTL::RTVec_t", ptr %7, i32 0, i32 0, !dbg !2143
  %9 = load ptr, ptr %5, align 8, !dbg !2144
  %10 = load i32, ptr %9, align 4, !dbg !2144
  store i32 %10, ptr %8, align 4, !dbg !2143
  %11 = getelementptr inbounds %"class.RTTL::RTVec_t", ptr %7, i32 0, i32 1, !dbg !2145
  %12 = load ptr, ptr %6, align 8, !dbg !2146
  %13 = load i32, ptr %12, align 4, !dbg !2146
  store i32 %13, ptr %11, align 4, !dbg !2145
  ret void, !dbg !2147
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN3LRT20RGBAucharFrameBuffer6resizeEii(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #5 comdat align 2 !dbg !2148 {
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
  call void @llvm.dbg.declare(metadata ptr %25, metadata !2149, metadata !DIExpression()), !dbg !2150
  store i32 %1, ptr %26, align 4
  call void @llvm.dbg.declare(metadata ptr %26, metadata !2151, metadata !DIExpression()), !dbg !2152
  store i32 %2, ptr %27, align 4
  call void @llvm.dbg.declare(metadata ptr %27, metadata !2153, metadata !DIExpression()), !dbg !2154
  %33 = load ptr, ptr %25, align 8
  store i32 32, ptr %28, align 4, !dbg !2155
  %34 = load i32, ptr %26, align 4, !dbg !2156
  %35 = call noundef i32 @_Z14nextMultipleOfILi4EiET0_S0_(i32 noundef %34), !dbg !2157
  store i32 %35, ptr %29, align 4, !dbg !2157
  %36 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3maxIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %28, ptr noundef nonnull align 4 dereferenceable(4) %29), !dbg !2158
  %37 = load i32, ptr %36, align 4, !dbg !2158
  store i32 %37, ptr %26, align 4, !dbg !2159
  store i32 32, ptr %30, align 4, !dbg !2160
  %38 = load i32, ptr %27, align 4, !dbg !2161
  %39 = call noundef i32 @_Z14nextMultipleOfILi4EiET0_S0_(i32 noundef %38), !dbg !2162
  store i32 %39, ptr %31, align 4, !dbg !2162
  %40 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3maxIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %30, ptr noundef nonnull align 4 dereferenceable(4) %31), !dbg !2163
  %41 = load i32, ptr %40, align 4, !dbg !2163
  store i32 %41, ptr %27, align 4, !dbg !2164
  call void @llvm.dbg.declare(metadata ptr %32, metadata !2165, metadata !DIExpression()), !dbg !2166
  call void @_ZN4RTTL7RTVec_tILi2EiLi0EEC2ERKiS3_(ptr noundef nonnull align 4 dereferenceable(8) %32, ptr noundef nonnull align 4 dereferenceable(4) %26, ptr noundef nonnull align 4 dereferenceable(4) %27), !dbg !2166
  %42 = getelementptr inbounds %"struct.LRT::RGBAucharFrameBuffer", ptr %33, i32 0, i32 1, !dbg !2167
  store ptr %42, ptr %19, align 8
  call void @llvm.dbg.declare(metadata ptr %19, metadata !2169, metadata !DIExpression()), !dbg !2173
  store ptr %32, ptr %20, align 8
  call void @llvm.dbg.declare(metadata ptr %20, metadata !2175, metadata !DIExpression()), !dbg !2176
  %43 = load ptr, ptr %19, align 8, !dbg !2177
  %44 = load ptr, ptr %20, align 8, !dbg !2178
  store ptr %43, ptr %17, align 8
  call void @llvm.dbg.declare(metadata ptr %17, metadata !2179, metadata !DIExpression()), !dbg !2181
  store ptr %44, ptr %18, align 8
  call void @llvm.dbg.declare(metadata ptr %18, metadata !2183, metadata !DIExpression()), !dbg !2184
  %45 = load ptr, ptr %17, align 8, !dbg !2185
  %46 = call noundef nonnull align 4 dereferenceable(8) ptr @_ZNK4RTTL7RTVec_tILi2EiLi0EE5arrayEv(ptr noundef nonnull align 4 dereferenceable(8) %45), !dbg !2186
  %47 = load ptr, ptr %18, align 8, !dbg !2187
  %48 = call noundef nonnull align 4 dereferenceable(8) ptr @_ZNK4RTTL7RTVec_tILi2EiLi0EE5arrayEv(ptr noundef nonnull align 4 dereferenceable(8) %47), !dbg !2188
  store ptr %46, ptr %14, align 8
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2189, metadata !DIExpression()), !dbg !2194
  store ptr %48, ptr %15, align 8
  call void @llvm.dbg.declare(metadata ptr %15, metadata !2196, metadata !DIExpression()), !dbg !2197
  call void @llvm.dbg.declare(metadata ptr %16, metadata !2198, metadata !DIExpression()), !dbg !2200
  store i32 0, ptr %16, align 4, !dbg !2200
  br label %49, !dbg !2201

49:                                               ; preds = %69, %3
  %50 = load i32, ptr %16, align 4, !dbg !2202
  %51 = icmp slt i32 %50, 2, !dbg !2204
  br i1 %51, label %52, label %72, !dbg !2205

52:                                               ; preds = %49
  %53 = load ptr, ptr %14, align 8, !dbg !2206
  %54 = load i32, ptr %16, align 4, !dbg !2208
  store ptr %53, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2035, metadata !DIExpression()), !dbg !2209
  store i32 %54, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2040, metadata !DIExpression()), !dbg !2211
  %55 = load ptr, ptr %9, align 8
  %56 = load i32, ptr %10, align 4, !dbg !2212
  %57 = sext i32 %56 to i64, !dbg !2213
  %58 = getelementptr inbounds [2 x i32], ptr %55, i64 0, i64 %57, !dbg !2213
  %59 = load i32, ptr %58, align 4, !dbg !2213
  %60 = load ptr, ptr %15, align 8, !dbg !2214
  %61 = load i32, ptr %16, align 4, !dbg !2215
  store ptr %60, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2035, metadata !DIExpression()), !dbg !2216
  store i32 %61, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2040, metadata !DIExpression()), !dbg !2218
  %62 = load ptr, ptr %11, align 8
  %63 = load i32, ptr %12, align 4, !dbg !2219
  %64 = sext i32 %63 to i64, !dbg !2220
  %65 = getelementptr inbounds [2 x i32], ptr %62, i64 0, i64 %64, !dbg !2220
  %66 = load i32, ptr %65, align 4, !dbg !2220
  %67 = icmp ne i32 %59, %66, !dbg !2221
  br i1 %67, label %68, label %69, !dbg !2222

68:                                               ; preds = %52
  store i1 false, ptr %13, align 1, !dbg !2223
  br label %73, !dbg !2223

69:                                               ; preds = %52
  %70 = load i32, ptr %16, align 4, !dbg !2224
  %71 = add nsw i32 %70, 1, !dbg !2224
  store i32 %71, ptr %16, align 4, !dbg !2224
  br label %49, !dbg !2225, !llvm.loop !2226

72:                                               ; preds = %49
  store i1 true, ptr %13, align 1, !dbg !2228
  br label %73, !dbg !2228

73:                                               ; preds = %68, %72
  %74 = load i1, ptr %13, align 1, !dbg !2229
  %75 = xor i1 %74, true, !dbg !2230
  br i1 %75, label %76, label %108, !dbg !2231

76:                                               ; preds = %73
  %77 = getelementptr inbounds %"struct.LRT::RGBAucharFrameBuffer", ptr %33, i32 0, i32 1, !dbg !2232
  store ptr %77, ptr %21, align 8
  call void @llvm.dbg.declare(metadata ptr %21, metadata !1997, metadata !DIExpression()), !dbg !2234
  store ptr %32, ptr %22, align 8
  call void @llvm.dbg.declare(metadata ptr %22, metadata !2002, metadata !DIExpression()), !dbg !2236
  %78 = load ptr, ptr %21, align 8
  call void @llvm.dbg.declare(metadata ptr %23, metadata !2004, metadata !DIExpression()), !dbg !2237
  %79 = call noundef nonnull align 4 dereferenceable(8) ptr @_ZN4RTTL7RTVec_tILi2EiLi0EEcvRNS_8RTData_tILi2EiLi0EEEEv(ptr noundef nonnull align 4 dereferenceable(8) %78), !dbg !2238
  store ptr %79, ptr %23, align 8, !dbg !2237
  call void @llvm.dbg.declare(metadata ptr %24, metadata !2007, metadata !DIExpression()), !dbg !2239
  %80 = load ptr, ptr %22, align 8, !dbg !2240
  %81 = call noundef nonnull align 4 dereferenceable(8) ptr @_ZNK4RTTL7RTVec_tILi2EiLi0EEcvRKNS_8RTData_tILi2EiLi0EEEEv(ptr noundef nonnull align 4 dereferenceable(8) %80), !dbg !2240
  store ptr %81, ptr %24, align 8, !dbg !2239
  %82 = load ptr, ptr %23, align 8, !dbg !2241
  %83 = load ptr, ptr %24, align 8, !dbg !2242
  store ptr %82, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2012, metadata !DIExpression()), !dbg !2243
  store ptr %83, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2022, metadata !DIExpression()), !dbg !2245
  %84 = load ptr, ptr %6, align 8
  %85 = call noundef i32 @_ZN4RTTL8RTData_tILi2EiLi0EE9nElementsEv(), !dbg !2246
  %86 = load ptr, ptr %7, align 8, !dbg !2246
  %87 = call noundef i32 @_ZN4RTTL8RTData_tILi2EiLi0EE9nElementsEv(), !dbg !2246
  %88 = icmp sle i32 %85, %87, !dbg !2246
  br i1 %88, label %89, label %90, !dbg !2246

89:                                               ; preds = %76
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2025, metadata !DIExpression()), !dbg !2247
  store i32 0, ptr %8, align 4, !dbg !2247
  br label %91, !dbg !2248

90:                                               ; preds = %76
  call void @__assert_fail(ptr noundef @.str.16, ptr noundef @.str.17, i32 noundef 44, ptr noundef @__PRETTY_FUNCTION__._ZN4RTTL8RTData_tILi2EiLi0EE6assignILi2EiLi0EEEvRKNS0_IXT_ET0_XT1_EEE) #20, !dbg !2246
  unreachable, !dbg !2246

91:                                               ; preds = %94, %89
  %92 = load i32, ptr %8, align 4, !dbg !2249
  %93 = icmp slt i32 %92, 2, !dbg !2250
  br i1 %93, label %94, label %107, !dbg !2251

94:                                               ; preds = %91
  %95 = load ptr, ptr %7, align 8, !dbg !2252
  %96 = load i32, ptr %8, align 4, !dbg !2253
  store ptr %95, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2035, metadata !DIExpression()), !dbg !2254
  store i32 %96, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2040, metadata !DIExpression()), !dbg !2256
  %97 = load ptr, ptr %4, align 8
  %98 = load i32, ptr %5, align 4, !dbg !2257
  %99 = sext i32 %98 to i64, !dbg !2258
  %100 = getelementptr inbounds [2 x i32], ptr %97, i64 0, i64 %99, !dbg !2258
  %101 = load i32, ptr %100, align 4, !dbg !2258
  %102 = load i32, ptr %8, align 4, !dbg !2259
  %103 = sext i32 %102 to i64, !dbg !2260
  %104 = getelementptr inbounds [2 x i32], ptr %84, i64 0, i64 %103, !dbg !2260
  store i32 %101, ptr %104, align 4, !dbg !2261
  %105 = load i32, ptr %8, align 4, !dbg !2262
  %106 = add nsw i32 %105, 1, !dbg !2262
  store i32 %106, ptr %8, align 4, !dbg !2262
  br label %91, !dbg !2263, !llvm.loop !2264

107:                                              ; preds = %91
  br label %108, !dbg !2266

108:                                              ; preds = %107, %73
  ret void, !dbg !2267
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3maxIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #15 comdat !dbg !2268 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2274, metadata !DIExpression()), !dbg !2276
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2277, metadata !DIExpression()), !dbg !2278
  %6 = load ptr, ptr %4, align 8, !dbg !2279
  %7 = load i32, ptr %6, align 4, !dbg !2279
  %8 = load ptr, ptr %5, align 8, !dbg !2281
  %9 = load i32, ptr %8, align 4, !dbg !2281
  %10 = icmp slt i32 %7, %9, !dbg !2282
  br i1 %10, label %11, label %13, !dbg !2283

11:                                               ; preds = %2
  %12 = load ptr, ptr %5, align 8, !dbg !2284
  store ptr %12, ptr %3, align 8, !dbg !2285
  br label %15, !dbg !2285

13:                                               ; preds = %2
  %14 = load ptr, ptr %4, align 8, !dbg !2286
  store ptr %14, ptr %3, align 8, !dbg !2287
  br label %15, !dbg !2287

15:                                               ; preds = %13, %11
  %16 = load ptr, ptr %3, align 8, !dbg !2288
  ret ptr %16, !dbg !2288
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @_Z14nextMultipleOfILi4EiET0_S0_(i32 noundef %0) #15 comdat !dbg !2289 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2293, metadata !DIExpression()), !dbg !2294
  %3 = load i32, ptr %2, align 4, !dbg !2295
  %4 = add nsw i32 %3, 4, !dbg !2296
  %5 = sub nsw i32 %4, 1, !dbg !2297
  %6 = sdiv i32 %5, 4, !dbg !2298
  %7 = mul nsw i32 %6, 4, !dbg !2299
  ret i32 %7, !dbg !2300
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(8) ptr @_ZNK4RTTL7RTVec_tILi2EiLi0EE5arrayEv(ptr noundef nonnull align 4 dereferenceable(8) %0) #15 comdat align 2 !dbg !2301 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2302, metadata !DIExpression()), !dbg !2304
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.RTTL::RTVec_t", ptr %3, i32 0, i32 0, !dbg !2305
  ret ptr %4, !dbg !2306
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(8) ptr @_ZN4RTTL7RTVec_tILi2EiLi0EEcvRNS_8RTData_tILi2EiLi0EEEEv(ptr noundef nonnull align 4 dereferenceable(8) %0) #15 comdat align 2 !dbg !2307 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2308, metadata !DIExpression()), !dbg !2309
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.RTTL::RTVec_t", ptr %3, i32 0, i32 0, !dbg !2310
  ret ptr %4, !dbg !2311
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(8) ptr @_ZNK4RTTL7RTVec_tILi2EiLi0EEcvRKNS_8RTData_tILi2EiLi0EEEEv(ptr noundef nonnull align 4 dereferenceable(8) %0) #15 comdat align 2 !dbg !2312 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2313, metadata !DIExpression()), !dbg !2314
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.RTTL::RTVec_t", ptr %3, i32 0, i32 0, !dbg !2315
  ret ptr %4, !dbg !2316
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZN4RTTL8RTData_tILi2EiLi0EE9nElementsEv() #15 comdat align 2 !dbg !2317 {
  ret i32 2, !dbg !2318
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZNK4RTTL7RTVec_tILi2EiLi0EEixEi(ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef %1) #5 comdat align 2 !dbg !2319 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2320, metadata !DIExpression()), !dbg !2321
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2322, metadata !DIExpression()), !dbg !2323
  %5 = load ptr, ptr %3, align 8
  %6 = call noundef ptr @_ZNK4RTTL7RTVec_tILi2EiLi0EE4dataEv(ptr noundef nonnull align 4 dereferenceable(8) %5), !dbg !2324
  %7 = load i32, ptr %4, align 4, !dbg !2325
  %8 = sext i32 %7 to i64, !dbg !2324
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !2324
  %10 = load i32, ptr %9, align 4, !dbg !2324
  ret i32 %10, !dbg !2326
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZNK4RTTL7RTVec_tILi2EiLi0EE4dataEv(ptr noundef nonnull align 4 dereferenceable(8) %0) #15 comdat align 2 !dbg !2327 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2328, metadata !DIExpression()), !dbg !2329
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.RTTL::RTVec_t", ptr %3, i32 0, i32 0, !dbg !2330
  ret ptr %4, !dbg !2331
}

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_PBOFrameBuffer.cxx() #0 section ".text.startup" !dbg !2332 {
  call void @__cxx_global_var_init(), !dbg !2334
  call void @__cxx_global_var_init.1(), !dbg !2334
  ret void
}

attributes #0 = { noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind memory(none) }
attributes #10 = { cold noreturn nounwind }
attributes #11 = { noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { builtin allocsize(0) }
attributes #17 = { builtin nounwind }
attributes #18 = { nounwind willreturn memory(read) }
attributes #19 = { noreturn }
attributes #20 = { noreturn nounwind }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!1736, !1737, !1738, !1739, !1740, !1741, !1742}
!llvm.ident = !{!1743}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__ioinit", linkageName: "_ZStL8__ioinit", scope: !2, file: !3, line: 74, type: !4, isLocal: true, isDefinition: true)
!2 = !DINamespace(name: "std", scope: null)
!3 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/iostream", directory: "")
!4 = !DICompositeType(tag: DW_TAG_class_type, name: "Init", scope: !6, file: !5, line: 626, size: 8, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt8ios_base4InitE")
!5 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/ios_base.h", directory: "")
!6 = !DICompositeType(tag: DW_TAG_class_type, name: "ios_base", scope: !2, file: !5, line: 228, size: 1728, flags: DIFlagFwdDecl | DIFlagNonTrivial)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "maxFloat", linkageName: "_ZL8maxFloat", scope: !9, file: !1733, line: 38, type: !1734, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !10, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !11, globals: !357, imports: !453, splitDebugInlining: false, nameTableKind: None)
!10 = !DIFile(filename: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src/LRT/FrameBuffer/PBOFrameBuffer.cxx", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src/build/LRT", checksumkind: CSK_MD5, checksum: "b567df531095a8ac632d3dc1a714b38a")
!11 = !{!12, !14, !15, !17, !183, !186, !19, !198}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "DataArray", scope: !19, file: !18, line: 26, baseType: !26, flags: DIFlagPublic)
!18 = !DIFile(filename: "RTTL/common/RTVecBody.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src", checksumkind: CSK_MD5, checksum: "b80a89a3623c8e3d3f09e41d609e754a")
!19 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "RTVec_t<2, int, 0>", scope: !21, file: !20, line: 42, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !22, templateParams: !87, identifier: "_ZTSN4RTTL7RTVec_tILi2EiLi0EEE")
!20 = !DIFile(filename: "RTTL/common/RTVec.hxx", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src", checksumkind: CSK_MD5, checksum: "adfbd7ae4dab54b31af1e64824b8abcb")
!21 = !DINamespace(name: "RTTL", scope: null)
!22 = !{!23, !91, !92, !96, !99, !102, !103, !104, !105, !110, !113, !114, !115, !116, !117, !118, !119, !120, !121, !125, !128, !129, !130, !133, !134, !135, !136, !137, !138, !139, !140, !143, !147, !150, !153, !156, !157, !158, !162, !167, !168, !169, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !19, file: !18, line: 337, baseType: !24, size: 32, flags: DIFlagPublic)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "AlignedDataType", scope: !26, file: !25, line: 24, baseType: !30)
!25 = !DIFile(filename: "RTTL/common/RTData.hxx", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src", checksumkind: CSK_MD5, checksum: "f4e0c70e47861859820b913e006060bd")
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RTData_t<2, int, 0>", scope: !21, file: !25, line: 22, size: 64, flags: DIFlagTypePassByValue, elements: !27, templateParams: !87, identifier: "_ZTSN4RTTL8RTData_tILi2EiLi0EEE")
!27 = !{!28, !33, !38, !44, !48, !52, !55, !59, !60, !61, !62, !63, !64, !65, !66, !69, !70, !71, !72, !75, !76, !77, !78, !81, !82, !83, !84}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "t", scope: !26, file: !25, line: 178, baseType: !29, size: 64, flags: DIFlagProtected)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 64, elements: !31)
!30 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!31 = !{!32}
!32 = !DISubrange(count: 2)
!33 = !DISubprogram(name: "alignment", linkageName: "_ZNK4RTTL8RTData_tILi2EiLi0EE9alignmentEv", scope: !26, file: !25, line: 25, type: !34, scopeLine: 25, flags: DIFlagPrototyped, spFlags: 0)
!34 = !DISubroutineType(types: !35)
!35 = !{!30, !36}
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!38 = !DISubprogram(name: "assignDataTypeValue", linkageName: "_ZN4RTTL8RTData_tILi2EiLi0EE19assignDataTypeValueERKi", scope: !26, file: !25, line: 28, type: !39, scopeLine: 28, flags: DIFlagPrototyped, spFlags: 0)
!39 = !DISubroutineType(types: !40)
!40 = !{null, !41, !42}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!42 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!44 = !DISubprogram(name: "assignDataTypeArray", linkageName: "_ZN4RTTL8RTData_tILi2EiLi0EE19assignDataTypeArrayEPKi", scope: !26, file: !25, line: 32, type: !45, scopeLine: 32, flags: DIFlagPrototyped, spFlags: 0)
!45 = !DISubroutineType(types: !46)
!46 = !{null, !41, !47}
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!48 = !DISubprogram(name: "operator[]", linkageName: "_ZN4RTTL8RTData_tILi2EiLi0EEixEi", scope: !26, file: !25, line: 49, type: !49, scopeLine: 49, flags: DIFlagPrototyped, spFlags: 0)
!49 = !DISubroutineType(types: !50)
!50 = !{!51, !41, !30}
!51 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !30, size: 64)
!52 = !DISubprogram(name: "operator[]", linkageName: "_ZNK4RTTL8RTData_tILi2EiLi0EEixEi", scope: !26, file: !25, line: 52, type: !53, scopeLine: 52, flags: DIFlagPrototyped, spFlags: 0)
!53 = !DISubroutineType(types: !54)
!54 = !{!30, !36, !30}
!55 = !DISubprogram(name: "operator+=", linkageName: "_ZN4RTTL8RTData_tILi2EiLi0EEpLERKS1_", scope: !26, file: !25, line: 56, type: !56, scopeLine: 56, flags: DIFlagPrototyped, spFlags: 0)
!56 = !DISubroutineType(types: !57)
!57 = !{null, !41, !58}
!58 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !37, size: 64)
!59 = !DISubprogram(name: "operator-=", linkageName: "_ZN4RTTL8RTData_tILi2EiLi0EEmIERKS1_", scope: !26, file: !25, line: 61, type: !56, scopeLine: 61, flags: DIFlagPrototyped, spFlags: 0)
!60 = !DISubprogram(name: "operator*=", linkageName: "_ZN4RTTL8RTData_tILi2EiLi0EEmLERKS1_", scope: !26, file: !25, line: 66, type: !56, scopeLine: 66, flags: DIFlagPrototyped, spFlags: 0)
!61 = !DISubprogram(name: "operator/=", linkageName: "_ZN4RTTL8RTData_tILi2EiLi0EEdVERKS1_", scope: !26, file: !25, line: 71, type: !56, scopeLine: 71, flags: DIFlagPrototyped, spFlags: 0)
!62 = !DISubprogram(name: "operator+=", linkageName: "_ZN4RTTL8RTData_tILi2EiLi0EEpLERKi", scope: !26, file: !25, line: 76, type: !39, scopeLine: 76, flags: DIFlagPrototyped, spFlags: 0)
!63 = !DISubprogram(name: "operator-=", linkageName: "_ZN4RTTL8RTData_tILi2EiLi0EEmIERKi", scope: !26, file: !25, line: 81, type: !39, scopeLine: 81, flags: DIFlagPrototyped, spFlags: 0)
!64 = !DISubprogram(name: "operator*=", linkageName: "_ZN4RTTL8RTData_tILi2EiLi0EEmLERKi", scope: !26, file: !25, line: 86, type: !39, scopeLine: 86, flags: DIFlagPrototyped, spFlags: 0)
!65 = !DISubprogram(name: "operator/=", linkageName: "_ZN4RTTL8RTData_tILi2EiLi0EEdVERKi", scope: !26, file: !25, line: 91, type: !39, scopeLine: 91, flags: DIFlagPrototyped, spFlags: 0)
!66 = !DISubprogram(name: "add", linkageName: "_ZN4RTTL8RTData_tILi2EiLi0EE3addERKS1_S3_", scope: !26, file: !25, line: 96, type: !67, scopeLine: 96, flags: DIFlagPrototyped, spFlags: 0)
!67 = !DISubroutineType(types: !68)
!68 = !{null, !41, !58, !58}
!69 = !DISubprogram(name: "subtract", linkageName: "_ZN4RTTL8RTData_tILi2EiLi0EE8subtractERKS1_S3_", scope: !26, file: !25, line: 100, type: !67, scopeLine: 100, flags: DIFlagPrototyped, spFlags: 0)
!70 = !DISubprogram(name: "multiply", linkageName: "_ZN4RTTL8RTData_tILi2EiLi0EE8multiplyERKS1_S3_", scope: !26, file: !25, line: 104, type: !67, scopeLine: 104, flags: DIFlagPrototyped, spFlags: 0)
!71 = !DISubprogram(name: "divide", linkageName: "_ZN4RTTL8RTData_tILi2EiLi0EE6divideERKS1_S3_", scope: !26, file: !25, line: 108, type: !67, scopeLine: 108, flags: DIFlagPrototyped, spFlags: 0)
!72 = !DISubprogram(name: "add", linkageName: "_ZN4RTTL8RTData_tILi2EiLi0EE3addERKS1_PKi", scope: !26, file: !25, line: 113, type: !73, scopeLine: 113, flags: DIFlagPrototyped, spFlags: 0)
!73 = !DISubroutineType(types: !74)
!74 = !{null, !41, !58, !47}
!75 = !DISubprogram(name: "subtract", linkageName: "_ZN4RTTL8RTData_tILi2EiLi0EE8subtractERKS1_PKi", scope: !26, file: !25, line: 117, type: !73, scopeLine: 117, flags: DIFlagPrototyped, spFlags: 0)
!76 = !DISubprogram(name: "multiply", linkageName: "_ZN4RTTL8RTData_tILi2EiLi0EE8multiplyERKS1_PKi", scope: !26, file: !25, line: 121, type: !73, scopeLine: 121, flags: DIFlagPrototyped, spFlags: 0)
!77 = !DISubprogram(name: "divide", linkageName: "_ZN4RTTL8RTData_tILi2EiLi0EE6divideERKS1_PKi", scope: !26, file: !25, line: 125, type: !73, scopeLine: 125, flags: DIFlagPrototyped, spFlags: 0)
!78 = !DISubprogram(name: "add", linkageName: "_ZN4RTTL8RTData_tILi2EiLi0EE3addEPKiRKS1_", scope: !26, file: !25, line: 130, type: !79, scopeLine: 130, flags: DIFlagPrototyped, spFlags: 0)
!79 = !DISubroutineType(types: !80)
!80 = !{null, !41, !47, !58}
!81 = !DISubprogram(name: "subtract", linkageName: "_ZN4RTTL8RTData_tILi2EiLi0EE8subtractEPKiRKS1_", scope: !26, file: !25, line: 133, type: !79, scopeLine: 133, flags: DIFlagPrototyped, spFlags: 0)
!82 = !DISubprogram(name: "multiply", linkageName: "_ZN4RTTL8RTData_tILi2EiLi0EE8multiplyEPKiRKS1_", scope: !26, file: !25, line: 136, type: !79, scopeLine: 136, flags: DIFlagPrototyped, spFlags: 0)
!83 = !DISubprogram(name: "divide", linkageName: "_ZN4RTTL8RTData_tILi2EiLi0EE6divideEPKiRKS1_", scope: !26, file: !25, line: 139, type: !79, scopeLine: 139, flags: DIFlagPrototyped, spFlags: 0)
!84 = !DISubprogram(name: "nElements", linkageName: "_ZN4RTTL8RTData_tILi2EiLi0EE9nElementsEv", scope: !26, file: !25, line: 175, type: !85, scopeLine: 175, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!85 = !DISubroutineType(types: !86)
!86 = !{!30}
!87 = !{!88, !89, !90}
!88 = !DITemplateValueParameter(name: "N", type: !30, value: i32 2)
!89 = !DITemplateTypeParameter(name: "DataType", type: !30)
!90 = !DITemplateValueParameter(name: "align", type: !30, defaulted: true, value: i32 0)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !19, file: !18, line: 338, baseType: !30, size: 32, offset: 32, flags: DIFlagPublic)
!92 = !DISubprogram(name: "RTVec_t", scope: !19, file: !18, line: 29, type: !93, scopeLine: 29, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!93 = !DISubroutineType(types: !94)
!94 = !{null, !95}
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!96 = !DISubprogram(name: "RTVec_t", scope: !19, file: !18, line: 34, type: !97, scopeLine: 34, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!97 = !DISubroutineType(types: !98)
!98 = !{null, !95, !42}
!99 = !DISubprogram(name: "RTVec_t", scope: !19, file: !18, line: 50, type: !100, scopeLine: 50, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!100 = !DISubroutineType(types: !101)
!101 = !{null, !95, !47}
!102 = !DISubprogram(name: "nElements", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EE9nElementsEv", scope: !19, file: !18, line: 56, type: !85, scopeLine: 56, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!103 = !DISubprogram(name: "entrySize", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EE9entrySizeEv", scope: !19, file: !18, line: 57, type: !85, scopeLine: 57, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!104 = !DISubprogram(name: "totalSize", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EE9totalSizeEv", scope: !19, file: !18, line: 58, type: !85, scopeLine: 58, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!105 = !DISubprogram(name: "operator=", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EEaSERKS1_", scope: !19, file: !18, line: 74, type: !106, scopeLine: 74, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!106 = !DISubroutineType(types: !107)
!107 = !{!108, !95, !108}
!108 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !109, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!110 = !DISubprogram(name: "operator=", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EEaSERKi", scope: !19, file: !18, line: 81, type: !111, scopeLine: 81, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!111 = !DISubroutineType(types: !112)
!112 = !{!108, !95, !42}
!113 = !DISubprogram(name: "operator+=", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EEpLERKS1_", scope: !19, file: !18, line: 87, type: !106, scopeLine: 87, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!114 = !DISubprogram(name: "operator-=", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EEmIERKS1_", scope: !19, file: !18, line: 93, type: !106, scopeLine: 93, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!115 = !DISubprogram(name: "operator*=", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EEmLERKS1_", scope: !19, file: !18, line: 99, type: !106, scopeLine: 99, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!116 = !DISubprogram(name: "operator/=", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EEdVERKS1_", scope: !19, file: !18, line: 105, type: !106, scopeLine: 105, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!117 = !DISubprogram(name: "operator+=", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EEpLERKi", scope: !19, file: !18, line: 111, type: !111, scopeLine: 111, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!118 = !DISubprogram(name: "operator-=", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EEmIERKi", scope: !19, file: !18, line: 117, type: !111, scopeLine: 117, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!119 = !DISubprogram(name: "operator*=", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EEmLERKi", scope: !19, file: !18, line: 123, type: !111, scopeLine: 123, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!120 = !DISubprogram(name: "operator/=", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EEdVERKi", scope: !19, file: !18, line: 129, type: !111, scopeLine: 129, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!121 = !DISubprogram(name: "dot", linkageName: "_ZNK4RTTL7RTVec_tILi2EiLi0EE3dotERKS1_", scope: !19, file: !18, line: 135, type: !122, scopeLine: 135, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!122 = !DISubroutineType(types: !123)
!123 = !{!30, !124, !108}
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!125 = !DISubprogram(name: "lengthSquared", linkageName: "_ZNK4RTTL7RTVec_tILi2EiLi0EE13lengthSquaredEv", scope: !19, file: !18, line: 145, type: !126, scopeLine: 145, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!126 = !DISubroutineType(types: !127)
!127 = !{!30, !124}
!128 = !DISubprogram(name: "length", linkageName: "_ZNK4RTTL7RTVec_tILi2EiLi0EE6lengthEv", scope: !19, file: !18, line: 153, type: !126, scopeLine: 153, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!129 = !DISubprogram(name: "normalize", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EE9normalizeEv", scope: !19, file: !18, line: 157, type: !93, scopeLine: 157, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!130 = !DISubprogram(name: "setMin", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EE6setMinERKS1_", scope: !19, file: !18, line: 164, type: !131, scopeLine: 164, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!131 = !DISubroutineType(types: !132)
!132 = !{null, !95, !108}
!133 = !DISubprogram(name: "setMin", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EE6setMinERKi", scope: !19, file: !18, line: 169, type: !97, scopeLine: 169, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!134 = !DISubprogram(name: "setMax", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EE6setMaxERKS1_", scope: !19, file: !18, line: 174, type: !131, scopeLine: 174, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!135 = !DISubprogram(name: "setMax", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EE6setMaxERKi", scope: !19, file: !18, line: 179, type: !97, scopeLine: 179, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!136 = !DISubprogram(name: "epsilon", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EE7epsilonEv", scope: !19, file: !18, line: 186, type: !85, scopeLine: 186, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!137 = !DISubprogram(name: "minValue", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EE8minValueEv", scope: !19, file: !18, line: 187, type: !85, scopeLine: 187, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!138 = !DISubprogram(name: "maxValue", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EE8maxValueEv", scope: !19, file: !18, line: 188, type: !85, scopeLine: 188, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!139 = !DISubprogram(name: "infinity", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EE8infinityEv", scope: !19, file: !18, line: 189, type: !85, scopeLine: 189, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!140 = !DISubprogram(name: "RTVec_t", scope: !19, file: !18, line: 198, type: !141, scopeLine: 198, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!141 = !DISubroutineType(types: !142)
!142 = !{null, !95, !42, !42}
!143 = !DISubprogram(name: "data", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EE4dataEv", scope: !19, file: !18, line: 201, type: !144, scopeLine: 201, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!144 = !DISubroutineType(types: !145)
!145 = !{!146, !95}
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!147 = !DISubprogram(name: "data", linkageName: "_ZNK4RTTL7RTVec_tILi2EiLi0EE4dataEv", scope: !19, file: !18, line: 202, type: !148, scopeLine: 202, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!148 = !DISubroutineType(types: !149)
!149 = !{!47, !124}
!150 = !DISubprogram(name: "operator[]", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EEixEi", scope: !19, file: !18, line: 205, type: !151, scopeLine: 205, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!151 = !DISubroutineType(types: !152)
!152 = !{!51, !95, !30}
!153 = !DISubprogram(name: "operator[]", linkageName: "_ZNK4RTTL7RTVec_tILi2EiLi0EEixEi", scope: !19, file: !18, line: 206, type: !154, scopeLine: 206, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!154 = !DISubroutineType(types: !155)
!155 = !{!30, !124, !30}
!156 = !DISubprogram(name: "operator int *", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EEcvPiEv", scope: !19, file: !18, line: 209, type: !144, scopeLine: 209, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!157 = !DISubprogram(name: "operator const int *", linkageName: "_ZNK4RTTL7RTVec_tILi2EiLi0EEcvPKiEv", scope: !19, file: !18, line: 210, type: !148, scopeLine: 210, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!158 = !DISubprogram(name: "operator RTTL::RTData_t<2, int> &", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EEcvRNS_8RTData_tILi2EiLi0EEEEv", scope: !19, file: !18, line: 213, type: !159, scopeLine: 213, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!159 = !DISubroutineType(types: !160)
!160 = !{!161, !95}
!161 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !17, size: 64)
!162 = !DISubprogram(name: "operator const RTTL::RTData_t<2, int> &", linkageName: "_ZNK4RTTL7RTVec_tILi2EiLi0EEcvRKNS_8RTData_tILi2EiLi0EEEEv", scope: !19, file: !18, line: 214, type: !163, scopeLine: 214, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!163 = !DISubroutineType(types: !164)
!164 = !{!165, !124}
!165 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !166, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!167 = !DISubprogram(name: "array", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EE5arrayEv", scope: !19, file: !18, line: 215, type: !159, scopeLine: 215, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!168 = !DISubprogram(name: "array", linkageName: "_ZNK4RTTL7RTVec_tILi2EiLi0EE5arrayEv", scope: !19, file: !18, line: 216, type: !163, scopeLine: 216, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!169 = !DISubprogram(name: "entry", linkageName: "_ZNK4RTTL7RTVec_tILi2EiLi0EE5entryEi", scope: !19, file: !18, line: 242, type: !170, scopeLine: 242, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!170 = !DISubroutineType(types: !171)
!171 = !{!42, !124, !30}
!172 = !DISubprogram(name: "entry", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EE5entryEi", scope: !19, file: !18, line: 246, type: !151, scopeLine: 246, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!173 = !DISubprogram(name: "pointer", linkageName: "_ZNK4RTTL7RTVec_tILi2EiLi0EE7pointerEv", scope: !19, file: !18, line: 250, type: !148, scopeLine: 250, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!174 = !DISubprogram(name: "pointer", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EE7pointerEv", scope: !19, file: !18, line: 254, type: !144, scopeLine: 254, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!175 = !DISubprogram(name: "minimum", linkageName: "_ZNK4RTTL7RTVec_tILi2EiLi0EE7minimumEv", scope: !19, file: !18, line: 325, type: !126, scopeLine: 325, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!176 = !DISubprogram(name: "maximum", linkageName: "_ZNK4RTTL7RTVec_tILi2EiLi0EE7maximumEv", scope: !19, file: !18, line: 326, type: !126, scopeLine: 326, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!177 = !DISubprogram(name: "absMinimum", linkageName: "_ZNK4RTTL7RTVec_tILi2EiLi0EE10absMinimumEv", scope: !19, file: !18, line: 327, type: !126, scopeLine: 327, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!178 = !DISubprogram(name: "absMaximum", linkageName: "_ZNK4RTTL7RTVec_tILi2EiLi0EE10absMaximumEv", scope: !19, file: !18, line: 328, type: !126, scopeLine: 328, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!179 = !DISubprogram(name: "minIndex", linkageName: "_ZNK4RTTL7RTVec_tILi2EiLi0EE8minIndexEv", scope: !19, file: !18, line: 329, type: !126, scopeLine: 329, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!180 = !DISubprogram(name: "maxIndex", linkageName: "_ZNK4RTTL7RTVec_tILi2EiLi0EE8maxIndexEv", scope: !19, file: !18, line: 330, type: !126, scopeLine: 330, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!181 = !DISubprogram(name: "minAbsIndex", linkageName: "_ZNK4RTTL7RTVec_tILi2EiLi0EE11minAbsIndexEv", scope: !19, file: !18, line: 331, type: !126, scopeLine: 331, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!182 = !DISubprogram(name: "maxAbsIndex", linkageName: "_ZNK4RTTL7RTVec_tILi2EiLi0EE11maxAbsIndexEv", scope: !19, file: !18, line: 332, type: !126, scopeLine: 332, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!183 = !DICompositeType(tag: DW_TAG_structure_type, name: "OpenGLTextureRGBA8FB", scope: !185, file: !184, line: 15, size: 384, flags: DIFlagFwdDecl | DIFlagNonTrivial)
!184 = !DIFile(filename: "LRT/FrameBuffer/GLTextureFB.hxx", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src", checksumkind: CSK_MD5, checksum: "534c24324dc76f335027065678e9cdc9")
!185 = !DINamespace(name: "LRT", scope: null)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sse_f", file: !187, line: 20, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !188, identifier: "_ZTS5sse_f")
!187 = !DIFile(filename: "RTTL/common/RTEmulatedSSE.hxx", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src", checksumkind: CSK_MD5, checksum: "899b754f585bbc37282aa5883c939129")
!188 = !{!189, !194}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !186, file: !187, line: 23, baseType: !190, size: 128)
!190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, size: 128, elements: !192)
!191 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!192 = !{!193}
!193 = !DISubrange(count: 4)
!194 = !DISubprogram(name: "sse_f", scope: !186, file: !187, line: 21, type: !195, scopeLine: 21, flags: DIFlagPrototyped, spFlags: 0)
!195 = !DISubroutineType(types: !196)
!196 = !{null, !197}
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!198 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "RTVec_t<2, float, 0>", scope: !21, file: !20, line: 42, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !199, templateParams: !258, identifier: "_ZTSN4RTTL7RTVec_tILi2EfLi0EEE")
!199 = !{!200, !260, !261, !265, !268, !271, !272, !273, !274, !279, !282, !283, !284, !285, !286, !287, !288, !289, !290, !294, !297, !298, !299, !302, !303, !304, !305, !308, !309, !310, !311, !314, !318, !321, !324, !327, !328, !329, !334, !339, !340, !341, !344, !345, !346, !347, !348, !349, !350, !351, !354, !355, !356}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !198, file: !18, line: 337, baseType: !201, size: 32, flags: DIFlagPublic)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "AlignedDataType", scope: !202, file: !25, line: 24, baseType: !191)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RTData_t<2, float, 0>", scope: !21, file: !25, line: 22, size: 64, flags: DIFlagTypePassByValue, elements: !203, templateParams: !258, identifier: "_ZTSN4RTTL8RTData_tILi2EfLi0EEE")
!203 = !{!204, !206, !211, !217, !221, !225, !228, !232, !233, !234, !235, !236, !237, !238, !239, !242, !243, !244, !245, !248, !249, !250, !251, !254, !255, !256, !257}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "t", scope: !202, file: !25, line: 178, baseType: !205, size: 64, flags: DIFlagProtected)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, size: 64, elements: !31)
!206 = !DISubprogram(name: "alignment", linkageName: "_ZNK4RTTL8RTData_tILi2EfLi0EE9alignmentEv", scope: !202, file: !25, line: 25, type: !207, scopeLine: 25, flags: DIFlagPrototyped, spFlags: 0)
!207 = !DISubroutineType(types: !208)
!208 = !{!30, !209}
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !202)
!211 = !DISubprogram(name: "assignDataTypeValue", linkageName: "_ZN4RTTL8RTData_tILi2EfLi0EE19assignDataTypeValueERKf", scope: !202, file: !25, line: 28, type: !212, scopeLine: 28, flags: DIFlagPrototyped, spFlags: 0)
!212 = !DISubroutineType(types: !213)
!213 = !{null, !214, !215}
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!215 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !216, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !191)
!217 = !DISubprogram(name: "assignDataTypeArray", linkageName: "_ZN4RTTL8RTData_tILi2EfLi0EE19assignDataTypeArrayEPKf", scope: !202, file: !25, line: 32, type: !218, scopeLine: 32, flags: DIFlagPrototyped, spFlags: 0)
!218 = !DISubroutineType(types: !219)
!219 = !{null, !214, !220}
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!221 = !DISubprogram(name: "operator[]", linkageName: "_ZN4RTTL8RTData_tILi2EfLi0EEixEi", scope: !202, file: !25, line: 49, type: !222, scopeLine: 49, flags: DIFlagPrototyped, spFlags: 0)
!222 = !DISubroutineType(types: !223)
!223 = !{!224, !214, !30}
!224 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !191, size: 64)
!225 = !DISubprogram(name: "operator[]", linkageName: "_ZNK4RTTL8RTData_tILi2EfLi0EEixEi", scope: !202, file: !25, line: 52, type: !226, scopeLine: 52, flags: DIFlagPrototyped, spFlags: 0)
!226 = !DISubroutineType(types: !227)
!227 = !{!191, !209, !30}
!228 = !DISubprogram(name: "operator+=", linkageName: "_ZN4RTTL8RTData_tILi2EfLi0EEpLERKS1_", scope: !202, file: !25, line: 56, type: !229, scopeLine: 56, flags: DIFlagPrototyped, spFlags: 0)
!229 = !DISubroutineType(types: !230)
!230 = !{null, !214, !231}
!231 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !210, size: 64)
!232 = !DISubprogram(name: "operator-=", linkageName: "_ZN4RTTL8RTData_tILi2EfLi0EEmIERKS1_", scope: !202, file: !25, line: 61, type: !229, scopeLine: 61, flags: DIFlagPrototyped, spFlags: 0)
!233 = !DISubprogram(name: "operator*=", linkageName: "_ZN4RTTL8RTData_tILi2EfLi0EEmLERKS1_", scope: !202, file: !25, line: 66, type: !229, scopeLine: 66, flags: DIFlagPrototyped, spFlags: 0)
!234 = !DISubprogram(name: "operator/=", linkageName: "_ZN4RTTL8RTData_tILi2EfLi0EEdVERKS1_", scope: !202, file: !25, line: 71, type: !229, scopeLine: 71, flags: DIFlagPrototyped, spFlags: 0)
!235 = !DISubprogram(name: "operator+=", linkageName: "_ZN4RTTL8RTData_tILi2EfLi0EEpLERKf", scope: !202, file: !25, line: 76, type: !212, scopeLine: 76, flags: DIFlagPrototyped, spFlags: 0)
!236 = !DISubprogram(name: "operator-=", linkageName: "_ZN4RTTL8RTData_tILi2EfLi0EEmIERKf", scope: !202, file: !25, line: 81, type: !212, scopeLine: 81, flags: DIFlagPrototyped, spFlags: 0)
!237 = !DISubprogram(name: "operator*=", linkageName: "_ZN4RTTL8RTData_tILi2EfLi0EEmLERKf", scope: !202, file: !25, line: 86, type: !212, scopeLine: 86, flags: DIFlagPrototyped, spFlags: 0)
!238 = !DISubprogram(name: "operator/=", linkageName: "_ZN4RTTL8RTData_tILi2EfLi0EEdVERKf", scope: !202, file: !25, line: 91, type: !212, scopeLine: 91, flags: DIFlagPrototyped, spFlags: 0)
!239 = !DISubprogram(name: "add", linkageName: "_ZN4RTTL8RTData_tILi2EfLi0EE3addERKS1_S3_", scope: !202, file: !25, line: 96, type: !240, scopeLine: 96, flags: DIFlagPrototyped, spFlags: 0)
!240 = !DISubroutineType(types: !241)
!241 = !{null, !214, !231, !231}
!242 = !DISubprogram(name: "subtract", linkageName: "_ZN4RTTL8RTData_tILi2EfLi0EE8subtractERKS1_S3_", scope: !202, file: !25, line: 100, type: !240, scopeLine: 100, flags: DIFlagPrototyped, spFlags: 0)
!243 = !DISubprogram(name: "multiply", linkageName: "_ZN4RTTL8RTData_tILi2EfLi0EE8multiplyERKS1_S3_", scope: !202, file: !25, line: 104, type: !240, scopeLine: 104, flags: DIFlagPrototyped, spFlags: 0)
!244 = !DISubprogram(name: "divide", linkageName: "_ZN4RTTL8RTData_tILi2EfLi0EE6divideERKS1_S3_", scope: !202, file: !25, line: 108, type: !240, scopeLine: 108, flags: DIFlagPrototyped, spFlags: 0)
!245 = !DISubprogram(name: "add", linkageName: "_ZN4RTTL8RTData_tILi2EfLi0EE3addERKS1_PKf", scope: !202, file: !25, line: 113, type: !246, scopeLine: 113, flags: DIFlagPrototyped, spFlags: 0)
!246 = !DISubroutineType(types: !247)
!247 = !{null, !214, !231, !220}
!248 = !DISubprogram(name: "subtract", linkageName: "_ZN4RTTL8RTData_tILi2EfLi0EE8subtractERKS1_PKf", scope: !202, file: !25, line: 117, type: !246, scopeLine: 117, flags: DIFlagPrototyped, spFlags: 0)
!249 = !DISubprogram(name: "multiply", linkageName: "_ZN4RTTL8RTData_tILi2EfLi0EE8multiplyERKS1_PKf", scope: !202, file: !25, line: 121, type: !246, scopeLine: 121, flags: DIFlagPrototyped, spFlags: 0)
!250 = !DISubprogram(name: "divide", linkageName: "_ZN4RTTL8RTData_tILi2EfLi0EE6divideERKS1_PKf", scope: !202, file: !25, line: 125, type: !246, scopeLine: 125, flags: DIFlagPrototyped, spFlags: 0)
!251 = !DISubprogram(name: "add", linkageName: "_ZN4RTTL8RTData_tILi2EfLi0EE3addEPKfRKS1_", scope: !202, file: !25, line: 130, type: !252, scopeLine: 130, flags: DIFlagPrototyped, spFlags: 0)
!252 = !DISubroutineType(types: !253)
!253 = !{null, !214, !220, !231}
!254 = !DISubprogram(name: "subtract", linkageName: "_ZN4RTTL8RTData_tILi2EfLi0EE8subtractEPKfRKS1_", scope: !202, file: !25, line: 133, type: !252, scopeLine: 133, flags: DIFlagPrototyped, spFlags: 0)
!255 = !DISubprogram(name: "multiply", linkageName: "_ZN4RTTL8RTData_tILi2EfLi0EE8multiplyEPKfRKS1_", scope: !202, file: !25, line: 136, type: !252, scopeLine: 136, flags: DIFlagPrototyped, spFlags: 0)
!256 = !DISubprogram(name: "divide", linkageName: "_ZN4RTTL8RTData_tILi2EfLi0EE6divideEPKfRKS1_", scope: !202, file: !25, line: 139, type: !252, scopeLine: 139, flags: DIFlagPrototyped, spFlags: 0)
!257 = !DISubprogram(name: "nElements", linkageName: "_ZN4RTTL8RTData_tILi2EfLi0EE9nElementsEv", scope: !202, file: !25, line: 175, type: !85, scopeLine: 175, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!258 = !{!88, !259, !90}
!259 = !DITemplateTypeParameter(name: "DataType", type: !191)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !198, file: !18, line: 338, baseType: !191, size: 32, offset: 32, flags: DIFlagPublic)
!261 = !DISubprogram(name: "RTVec_t", scope: !198, file: !18, line: 29, type: !262, scopeLine: 29, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!262 = !DISubroutineType(types: !263)
!263 = !{null, !264}
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!265 = !DISubprogram(name: "RTVec_t", scope: !198, file: !18, line: 34, type: !266, scopeLine: 34, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!266 = !DISubroutineType(types: !267)
!267 = !{null, !264, !215}
!268 = !DISubprogram(name: "RTVec_t", scope: !198, file: !18, line: 50, type: !269, scopeLine: 50, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!269 = !DISubroutineType(types: !270)
!270 = !{null, !264, !220}
!271 = !DISubprogram(name: "nElements", linkageName: "_ZN4RTTL7RTVec_tILi2EfLi0EE9nElementsEv", scope: !198, file: !18, line: 56, type: !85, scopeLine: 56, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!272 = !DISubprogram(name: "entrySize", linkageName: "_ZN4RTTL7RTVec_tILi2EfLi0EE9entrySizeEv", scope: !198, file: !18, line: 57, type: !85, scopeLine: 57, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!273 = !DISubprogram(name: "totalSize", linkageName: "_ZN4RTTL7RTVec_tILi2EfLi0EE9totalSizeEv", scope: !198, file: !18, line: 58, type: !85, scopeLine: 58, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!274 = !DISubprogram(name: "operator=", linkageName: "_ZN4RTTL7RTVec_tILi2EfLi0EEaSERKS1_", scope: !198, file: !18, line: 74, type: !275, scopeLine: 74, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!275 = !DISubroutineType(types: !276)
!276 = !{!277, !264, !277}
!277 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !278, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !198)
!279 = !DISubprogram(name: "operator=", linkageName: "_ZN4RTTL7RTVec_tILi2EfLi0EEaSERKf", scope: !198, file: !18, line: 81, type: !280, scopeLine: 81, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!280 = !DISubroutineType(types: !281)
!281 = !{!277, !264, !215}
!282 = !DISubprogram(name: "operator+=", linkageName: "_ZN4RTTL7RTVec_tILi2EfLi0EEpLERKS1_", scope: !198, file: !18, line: 87, type: !275, scopeLine: 87, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!283 = !DISubprogram(name: "operator-=", linkageName: "_ZN4RTTL7RTVec_tILi2EfLi0EEmIERKS1_", scope: !198, file: !18, line: 93, type: !275, scopeLine: 93, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!284 = !DISubprogram(name: "operator*=", linkageName: "_ZN4RTTL7RTVec_tILi2EfLi0EEmLERKS1_", scope: !198, file: !18, line: 99, type: !275, scopeLine: 99, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!285 = !DISubprogram(name: "operator/=", linkageName: "_ZN4RTTL7RTVec_tILi2EfLi0EEdVERKS1_", scope: !198, file: !18, line: 105, type: !275, scopeLine: 105, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!286 = !DISubprogram(name: "operator+=", linkageName: "_ZN4RTTL7RTVec_tILi2EfLi0EEpLERKf", scope: !198, file: !18, line: 111, type: !280, scopeLine: 111, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!287 = !DISubprogram(name: "operator-=", linkageName: "_ZN4RTTL7RTVec_tILi2EfLi0EEmIERKf", scope: !198, file: !18, line: 117, type: !280, scopeLine: 117, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!288 = !DISubprogram(name: "operator*=", linkageName: "_ZN4RTTL7RTVec_tILi2EfLi0EEmLERKf", scope: !198, file: !18, line: 123, type: !280, scopeLine: 123, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!289 = !DISubprogram(name: "operator/=", linkageName: "_ZN4RTTL7RTVec_tILi2EfLi0EEdVERKf", scope: !198, file: !18, line: 129, type: !280, scopeLine: 129, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!290 = !DISubprogram(name: "dot", linkageName: "_ZNK4RTTL7RTVec_tILi2EfLi0EE3dotERKS1_", scope: !198, file: !18, line: 135, type: !291, scopeLine: 135, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!291 = !DISubroutineType(types: !292)
!292 = !{!191, !293, !277}
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!294 = !DISubprogram(name: "lengthSquared", linkageName: "_ZNK4RTTL7RTVec_tILi2EfLi0EE13lengthSquaredEv", scope: !198, file: !18, line: 145, type: !295, scopeLine: 145, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!295 = !DISubroutineType(types: !296)
!296 = !{!191, !293}
!297 = !DISubprogram(name: "length", linkageName: "_ZNK4RTTL7RTVec_tILi2EfLi0EE6lengthEv", scope: !198, file: !18, line: 153, type: !295, scopeLine: 153, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!298 = !DISubprogram(name: "normalize", linkageName: "_ZN4RTTL7RTVec_tILi2EfLi0EE9normalizeEv", scope: !198, file: !18, line: 157, type: !262, scopeLine: 157, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!299 = !DISubprogram(name: "setMin", linkageName: "_ZN4RTTL7RTVec_tILi2EfLi0EE6setMinERKS1_", scope: !198, file: !18, line: 164, type: !300, scopeLine: 164, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!300 = !DISubroutineType(types: !301)
!301 = !{null, !264, !277}
!302 = !DISubprogram(name: "setMin", linkageName: "_ZN4RTTL7RTVec_tILi2EfLi0EE6setMinERKf", scope: !198, file: !18, line: 169, type: !266, scopeLine: 169, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!303 = !DISubprogram(name: "setMax", linkageName: "_ZN4RTTL7RTVec_tILi2EfLi0EE6setMaxERKS1_", scope: !198, file: !18, line: 174, type: !300, scopeLine: 174, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!304 = !DISubprogram(name: "setMax", linkageName: "_ZN4RTTL7RTVec_tILi2EfLi0EE6setMaxERKf", scope: !198, file: !18, line: 179, type: !266, scopeLine: 179, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!305 = !DISubprogram(name: "epsilon", linkageName: "_ZN4RTTL7RTVec_tILi2EfLi0EE7epsilonEv", scope: !198, file: !18, line: 186, type: !306, scopeLine: 186, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!306 = !DISubroutineType(types: !307)
!307 = !{!191}
!308 = !DISubprogram(name: "minValue", linkageName: "_ZN4RTTL7RTVec_tILi2EfLi0EE8minValueEv", scope: !198, file: !18, line: 187, type: !306, scopeLine: 187, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!309 = !DISubprogram(name: "maxValue", linkageName: "_ZN4RTTL7RTVec_tILi2EfLi0EE8maxValueEv", scope: !198, file: !18, line: 188, type: !306, scopeLine: 188, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!310 = !DISubprogram(name: "infinity", linkageName: "_ZN4RTTL7RTVec_tILi2EfLi0EE8infinityEv", scope: !198, file: !18, line: 189, type: !306, scopeLine: 189, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!311 = !DISubprogram(name: "RTVec_t", scope: !198, file: !18, line: 198, type: !312, scopeLine: 198, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!312 = !DISubroutineType(types: !313)
!313 = !{null, !264, !215, !215}
!314 = !DISubprogram(name: "data", linkageName: "_ZN4RTTL7RTVec_tILi2EfLi0EE4dataEv", scope: !198, file: !18, line: 201, type: !315, scopeLine: 201, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!315 = !DISubroutineType(types: !316)
!316 = !{!317, !264}
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!318 = !DISubprogram(name: "data", linkageName: "_ZNK4RTTL7RTVec_tILi2EfLi0EE4dataEv", scope: !198, file: !18, line: 202, type: !319, scopeLine: 202, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!319 = !DISubroutineType(types: !320)
!320 = !{!220, !293}
!321 = !DISubprogram(name: "operator[]", linkageName: "_ZN4RTTL7RTVec_tILi2EfLi0EEixEi", scope: !198, file: !18, line: 205, type: !322, scopeLine: 205, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!322 = !DISubroutineType(types: !323)
!323 = !{!224, !264, !30}
!324 = !DISubprogram(name: "operator[]", linkageName: "_ZNK4RTTL7RTVec_tILi2EfLi0EEixEi", scope: !198, file: !18, line: 206, type: !325, scopeLine: 206, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!325 = !DISubroutineType(types: !326)
!326 = !{!191, !293, !30}
!327 = !DISubprogram(name: "operator float *", linkageName: "_ZN4RTTL7RTVec_tILi2EfLi0EEcvPfEv", scope: !198, file: !18, line: 209, type: !315, scopeLine: 209, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!328 = !DISubprogram(name: "operator const float *", linkageName: "_ZNK4RTTL7RTVec_tILi2EfLi0EEcvPKfEv", scope: !198, file: !18, line: 210, type: !319, scopeLine: 210, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!329 = !DISubprogram(name: "operator RTTL::RTData_t<2, float> &", linkageName: "_ZN4RTTL7RTVec_tILi2EfLi0EEcvRNS_8RTData_tILi2EfLi0EEEEv", scope: !198, file: !18, line: 213, type: !330, scopeLine: 213, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!330 = !DISubroutineType(types: !331)
!331 = !{!332, !264}
!332 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !333, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "DataArray", scope: !198, file: !18, line: 26, baseType: !202, flags: DIFlagPublic)
!334 = !DISubprogram(name: "operator const RTTL::RTData_t<2, float> &", linkageName: "_ZNK4RTTL7RTVec_tILi2EfLi0EEcvRKNS_8RTData_tILi2EfLi0EEEEv", scope: !198, file: !18, line: 214, type: !335, scopeLine: 214, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!335 = !DISubroutineType(types: !336)
!336 = !{!337, !293}
!337 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !338, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !333)
!339 = !DISubprogram(name: "array", linkageName: "_ZN4RTTL7RTVec_tILi2EfLi0EE5arrayEv", scope: !198, file: !18, line: 215, type: !330, scopeLine: 215, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!340 = !DISubprogram(name: "array", linkageName: "_ZNK4RTTL7RTVec_tILi2EfLi0EE5arrayEv", scope: !198, file: !18, line: 216, type: !335, scopeLine: 216, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!341 = !DISubprogram(name: "entry", linkageName: "_ZNK4RTTL7RTVec_tILi2EfLi0EE5entryEi", scope: !198, file: !18, line: 242, type: !342, scopeLine: 242, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!342 = !DISubroutineType(types: !343)
!343 = !{!215, !293, !30}
!344 = !DISubprogram(name: "entry", linkageName: "_ZN4RTTL7RTVec_tILi2EfLi0EE5entryEi", scope: !198, file: !18, line: 246, type: !322, scopeLine: 246, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!345 = !DISubprogram(name: "pointer", linkageName: "_ZNK4RTTL7RTVec_tILi2EfLi0EE7pointerEv", scope: !198, file: !18, line: 250, type: !319, scopeLine: 250, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!346 = !DISubprogram(name: "pointer", linkageName: "_ZN4RTTL7RTVec_tILi2EfLi0EE7pointerEv", scope: !198, file: !18, line: 254, type: !315, scopeLine: 254, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!347 = !DISubprogram(name: "minimum", linkageName: "_ZNK4RTTL7RTVec_tILi2EfLi0EE7minimumEv", scope: !198, file: !18, line: 325, type: !295, scopeLine: 325, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!348 = !DISubprogram(name: "maximum", linkageName: "_ZNK4RTTL7RTVec_tILi2EfLi0EE7maximumEv", scope: !198, file: !18, line: 326, type: !295, scopeLine: 326, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!349 = !DISubprogram(name: "absMinimum", linkageName: "_ZNK4RTTL7RTVec_tILi2EfLi0EE10absMinimumEv", scope: !198, file: !18, line: 327, type: !295, scopeLine: 327, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!350 = !DISubprogram(name: "absMaximum", linkageName: "_ZNK4RTTL7RTVec_tILi2EfLi0EE10absMaximumEv", scope: !198, file: !18, line: 328, type: !295, scopeLine: 328, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!351 = !DISubprogram(name: "minIndex", linkageName: "_ZNK4RTTL7RTVec_tILi2EfLi0EE8minIndexEv", scope: !198, file: !18, line: 329, type: !352, scopeLine: 329, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!352 = !DISubroutineType(types: !353)
!353 = !{!30, !293}
!354 = !DISubprogram(name: "maxIndex", linkageName: "_ZNK4RTTL7RTVec_tILi2EfLi0EE8maxIndexEv", scope: !198, file: !18, line: 330, type: !352, scopeLine: 330, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!355 = !DISubprogram(name: "minAbsIndex", linkageName: "_ZNK4RTTL7RTVec_tILi2EfLi0EE11minAbsIndexEv", scope: !198, file: !18, line: 331, type: !352, scopeLine: 331, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!356 = !DISubprogram(name: "maxAbsIndex", linkageName: "_ZNK4RTTL7RTVec_tILi2EfLi0EE11maxAbsIndexEv", scope: !198, file: !18, line: 332, type: !352, scopeLine: 332, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!357 = !{!0, !7, !358, !365, !370, !375, !378, !383, !388, !390, !395, !400, !405, !410, !415, !418, !420, !425, !430, !432, !437, !442, !447, !449, !451}
!358 = !DIGlobalVariableExpression(var: !359, expr: !DIExpression())
!359 = distinct !DIGlobalVariable(scope: null, file: !360, line: 65, type: !361, isLocal: true, isDefinition: true)
!360 = !DIFile(filename: "LRT/FrameBuffer/PBOFrameBuffer.cxx", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src", checksumkind: CSK_MD5, checksum: "b567df531095a8ac632d3dc1a714b38a")
!361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !362, size: 312, elements: !363)
!362 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!363 = !{!364}
!364 = !DISubrange(count: 39)
!365 = !DIGlobalVariableExpression(var: !366, expr: !DIExpression())
!366 = distinct !DIGlobalVariable(scope: null, file: !360, line: 70, type: !367, isLocal: true, isDefinition: true)
!367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !362, size: 296, elements: !368)
!368 = !{!369}
!369 = !DISubrange(count: 37)
!370 = !DIGlobalVariableExpression(var: !371, expr: !DIExpression())
!371 = distinct !DIGlobalVariable(scope: null, file: !360, line: 85, type: !372, isLocal: true, isDefinition: true)
!372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !362, size: 176, elements: !373)
!373 = !{!374}
!374 = !DISubrange(count: 22)
!375 = !DIGlobalVariableExpression(var: !376, expr: !DIExpression())
!376 = distinct !DIGlobalVariable(scope: null, file: !360, line: 85, type: !377, isLocal: true, isDefinition: true)
!377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !362, size: 16, elements: !31)
!378 = !DIGlobalVariableExpression(var: !379, expr: !DIExpression())
!379 = distinct !DIGlobalVariable(scope: null, file: !360, line: 87, type: !380, isLocal: true, isDefinition: true)
!380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !362, size: 80, elements: !381)
!381 = !{!382}
!382 = !DISubrange(count: 10)
!383 = !DIGlobalVariableExpression(var: !384, expr: !DIExpression())
!384 = distinct !DIGlobalVariable(scope: null, file: !360, line: 87, type: !385, isLocal: true, isDefinition: true)
!385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !362, size: 800, elements: !386)
!386 = !{!387}
!387 = !DISubrange(count: 100)
!388 = !DIGlobalVariableExpression(var: !389, expr: !DIExpression())
!389 = distinct !DIGlobalVariable(scope: null, file: !360, line: 87, type: !377, isLocal: true, isDefinition: true)
!390 = !DIGlobalVariableExpression(var: !391, expr: !DIExpression())
!391 = distinct !DIGlobalVariable(scope: null, file: !360, line: 114, type: !392, isLocal: true, isDefinition: true)
!392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !362, size: 240, elements: !393)
!393 = !{!394}
!394 = !DISubrange(count: 30)
!395 = !DIGlobalVariableExpression(var: !396, expr: !DIExpression())
!396 = distinct !DIGlobalVariable(scope: null, file: !360, line: 115, type: !397, isLocal: true, isDefinition: true)
!397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !362, size: 168, elements: !398)
!398 = !{!399}
!399 = !DISubrange(count: 21)
!400 = !DIGlobalVariableExpression(var: !401, expr: !DIExpression())
!401 = distinct !DIGlobalVariable(scope: null, file: !360, line: 117, type: !402, isLocal: true, isDefinition: true)
!402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !362, size: 64, elements: !403)
!403 = !{!404}
!404 = !DISubrange(count: 8)
!405 = !DIGlobalVariableExpression(var: !406, expr: !DIExpression())
!406 = distinct !DIGlobalVariable(scope: null, file: !360, line: 118, type: !407, isLocal: true, isDefinition: true)
!407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !362, size: 520, elements: !408)
!408 = !{!409}
!409 = !DISubrange(count: 65)
!410 = !DIGlobalVariableExpression(var: !411, expr: !DIExpression())
!411 = distinct !DIGlobalVariable(scope: null, file: !360, line: 123, type: !412, isLocal: true, isDefinition: true)
!412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !362, size: 408, elements: !413)
!413 = !{!414}
!414 = !DISubrange(count: 51)
!415 = !DIGlobalVariableExpression(var: !416, expr: !DIExpression())
!416 = distinct !DIGlobalVariable(scope: null, file: !360, line: 126, type: !417, isLocal: true, isDefinition: true)
!417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !362, size: 32, elements: !192)
!418 = !DIGlobalVariableExpression(var: !419, expr: !DIExpression())
!419 = distinct !DIGlobalVariable(scope: null, file: !360, line: 133, type: !372, isLocal: true, isDefinition: true)
!420 = !DIGlobalVariableExpression(var: !421, expr: !DIExpression())
!421 = distinct !DIGlobalVariable(scope: null, file: !360, line: 143, type: !422, isLocal: true, isDefinition: true)
!422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !362, size: 24, elements: !423)
!423 = !{!424}
!424 = !DISubrange(count: 3)
!425 = !DIGlobalVariableExpression(var: !426, expr: !DIExpression())
!426 = distinct !DIGlobalVariable(scope: null, file: !360, line: 143, type: !427, isLocal: true, isDefinition: true)
!427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !362, size: 400, elements: !428)
!428 = !{!429}
!429 = !DISubrange(count: 50)
!430 = !DIGlobalVariableExpression(var: !431, expr: !DIExpression())
!431 = distinct !DIGlobalVariable(scope: null, file: !360, line: 188, type: !427, isLocal: true, isDefinition: true)
!432 = !DIGlobalVariableExpression(var: !433, expr: !DIExpression())
!433 = distinct !DIGlobalVariable(scope: null, file: !25, line: 44, type: !434, isLocal: true, isDefinition: true)
!434 = !DICompositeType(tag: DW_TAG_array_type, baseType: !362, size: 232, elements: !435)
!435 = !{!436}
!436 = !DISubrange(count: 29)
!437 = !DIGlobalVariableExpression(var: !438, expr: !DIExpression())
!438 = distinct !DIGlobalVariable(scope: null, file: !25, line: 44, type: !439, isLocal: true, isDefinition: true)
!439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !362, size: 704, elements: !440)
!440 = !{!441}
!441 = !DISubrange(count: 88)
!442 = !DIGlobalVariableExpression(var: !443, expr: !DIExpression())
!443 = distinct !DIGlobalVariable(scope: null, file: !25, line: 44, type: !444, isLocal: true, isDefinition: true)
!444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !362, size: 1480, elements: !445)
!445 = !{!446}
!446 = !DISubrange(count: 185)
!447 = !DIGlobalVariableExpression(var: !448, expr: !DIExpression())
!448 = distinct !DIGlobalVariable(scope: null, file: !20, line: 257, type: !377, isLocal: true, isDefinition: true)
!449 = !DIGlobalVariableExpression(var: !450, expr: !DIExpression())
!450 = distinct !DIGlobalVariable(scope: null, file: !20, line: 259, type: !377, isLocal: true, isDefinition: true)
!451 = !DIGlobalVariableExpression(var: !452, expr: !DIExpression())
!452 = distinct !DIGlobalVariable(scope: null, file: !20, line: 260, type: !377, isLocal: true, isDefinition: true)
!453 = !{!454, !465, !469, !476, !480, !484, !491, !495, !497, !499, !503, !507, !511, !515, !519, !521, !523, !525, !529, !533, !537, !539, !541, !547, !551, !558, !562, !567, !569, !574, !578, !582, !590, !594, !598, !602, !606, !610, !614, !618, !622, !626, !633, !637, !641, !643, !645, !649, !654, !660, !664, !668, !670, !677, !681, !689, !691, !695, !699, !703, !707, !712, !716, !721, !722, !723, !724, !726, !727, !728, !729, !730, !731, !732, !734, !735, !736, !737, !738, !739, !740, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !774, !776, !778, !782, !784, !786, !788, !790, !792, !794, !796, !800, !804, !806, !808, !813, !815, !817, !819, !821, !823, !825, !828, !830, !832, !836, !838, !840, !842, !844, !846, !848, !850, !852, !854, !856, !858, !862, !866, !868, !870, !872, !874, !876, !878, !880, !882, !884, !886, !888, !890, !892, !894, !896, !900, !904, !908, !910, !912, !914, !916, !918, !920, !922, !924, !926, !930, !934, !938, !940, !942, !944, !948, !952, !956, !958, !960, !962, !964, !966, !968, !970, !972, !974, !976, !978, !980, !984, !988, !992, !994, !996, !998, !1000, !1004, !1008, !1010, !1012, !1014, !1016, !1018, !1020, !1024, !1028, !1030, !1032, !1034, !1036, !1040, !1044, !1048, !1050, !1052, !1054, !1056, !1058, !1060, !1064, !1068, !1072, !1074, !1078, !1082, !1084, !1086, !1088, !1090, !1092, !1094, !1096, !1101, !1116, !1119, !1124, !1133, !1138, !1142, !1146, !1150, !1154, !1156, !1158, !1162, !1168, !1172, !1178, !1184, !1186, !1190, !1194, !1198, !1202, !1214, !1216, !1220, !1224, !1228, !1230, !1234, !1238, !1242, !1244, !1246, !1250, !1258, !1262, !1266, !1270, !1272, !1278, !1280, !1286, !1290, !1294, !1298, !1302, !1306, !1310, !1312, !1314, !1318, !1322, !1326, !1328, !1332, !1336, !1338, !1340, !1344, !1348, !1352, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1370, !1374, !1378, !1385, !1389, !1392, !1395, !1398, !1400, !1402, !1404, !1407, !1410, !1413, !1416, !1419, !1421, !1425, !1429, !1432, !1435, !1437, !1439, !1441, !1443, !1446, !1449, !1452, !1455, !1458, !1460, !1464, !1468, !1473, !1477, !1479, !1481, !1483, !1485, !1487, !1489, !1491, !1493, !1495, !1497, !1499, !1501, !1503, !1507, !1513, !1518, !1522, !1524, !1526, !1528, !1530, !1537, !1541, !1545, !1549, !1553, !1557, !1561, !1565, !1567, !1571, !1577, !1581, !1585, !1587, !1589, !1593, !1597, !1601, !1603, !1605, !1607, !1609, !1611, !1613, !1615, !1619, !1623, !1627, !1631, !1635, !1637, !1639, !1643, !1647, !1651, !1655, !1657, !1659, !1663, !1667, !1668, !1669, !1670, !1671, !1672, !1678, !1681, !1682, !1684, !1686, !1688, !1690, !1694, !1696, !1698, !1700, !1702, !1704, !1706, !1708, !1710, !1714, !1718, !1720, !1724, !1728, !1730, !1731}
!454 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !455, file: !464, line: 77)
!455 = !DISubprogram(name: "memchr", scope: !456, file: !456, line: 89, type: !457, flags: DIFlagPrototyped, spFlags: 0)
!456 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!457 = !DISubroutineType(types: !458)
!458 = !{!459, !459, !30, !461}
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !462, line: 46, baseType: !463)
!462 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!463 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!464 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cstring", directory: "")
!465 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !466, file: !464, line: 78)
!466 = !DISubprogram(name: "memcmp", scope: !456, file: !456, line: 64, type: !467, flags: DIFlagPrototyped, spFlags: 0)
!467 = !DISubroutineType(types: !468)
!468 = !{!30, !459, !459, !461}
!469 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !470, file: !464, line: 79)
!470 = !DISubprogram(name: "memcpy", scope: !456, file: !456, line: 43, type: !471, flags: DIFlagPrototyped, spFlags: 0)
!471 = !DISubroutineType(types: !472)
!472 = !{!473, !474, !475, !461}
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !473)
!475 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !459)
!476 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !477, file: !464, line: 80)
!477 = !DISubprogram(name: "memmove", scope: !456, file: !456, line: 47, type: !478, flags: DIFlagPrototyped, spFlags: 0)
!478 = !DISubroutineType(types: !479)
!479 = !{!473, !473, !459, !461}
!480 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !481, file: !464, line: 81)
!481 = !DISubprogram(name: "memset", scope: !456, file: !456, line: 61, type: !482, flags: DIFlagPrototyped, spFlags: 0)
!482 = !DISubroutineType(types: !483)
!483 = !{!473, !473, !30, !461}
!484 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !485, file: !464, line: 82)
!485 = !DISubprogram(name: "strcat", scope: !456, file: !456, line: 149, type: !486, flags: DIFlagPrototyped, spFlags: 0)
!486 = !DISubroutineType(types: !487)
!487 = !{!12, !488, !489}
!488 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !12)
!489 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !490)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!491 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !492, file: !464, line: 83)
!492 = !DISubprogram(name: "strcmp", scope: !456, file: !456, line: 156, type: !493, flags: DIFlagPrototyped, spFlags: 0)
!493 = !DISubroutineType(types: !494)
!494 = !{!30, !490, !490}
!495 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !496, file: !464, line: 84)
!496 = !DISubprogram(name: "strcoll", scope: !456, file: !456, line: 163, type: !493, flags: DIFlagPrototyped, spFlags: 0)
!497 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !498, file: !464, line: 85)
!498 = !DISubprogram(name: "strcpy", scope: !456, file: !456, line: 141, type: !486, flags: DIFlagPrototyped, spFlags: 0)
!499 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !500, file: !464, line: 86)
!500 = !DISubprogram(name: "strcspn", scope: !456, file: !456, line: 293, type: !501, flags: DIFlagPrototyped, spFlags: 0)
!501 = !DISubroutineType(types: !502)
!502 = !{!461, !490, !490}
!503 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !504, file: !464, line: 87)
!504 = !DISubprogram(name: "strerror", scope: !456, file: !456, line: 419, type: !505, flags: DIFlagPrototyped, spFlags: 0)
!505 = !DISubroutineType(types: !506)
!506 = !{!12, !30}
!507 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !508, file: !464, line: 88)
!508 = !DISubprogram(name: "strlen", scope: !456, file: !456, line: 407, type: !509, flags: DIFlagPrototyped, spFlags: 0)
!509 = !DISubroutineType(types: !510)
!510 = !{!461, !490}
!511 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !512, file: !464, line: 89)
!512 = !DISubprogram(name: "strncat", scope: !456, file: !456, line: 152, type: !513, flags: DIFlagPrototyped, spFlags: 0)
!513 = !DISubroutineType(types: !514)
!514 = !{!12, !488, !489, !461}
!515 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !516, file: !464, line: 90)
!516 = !DISubprogram(name: "strncmp", scope: !456, file: !456, line: 159, type: !517, flags: DIFlagPrototyped, spFlags: 0)
!517 = !DISubroutineType(types: !518)
!518 = !{!30, !490, !490, !461}
!519 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !520, file: !464, line: 91)
!520 = !DISubprogram(name: "strncpy", scope: !456, file: !456, line: 144, type: !513, flags: DIFlagPrototyped, spFlags: 0)
!521 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !522, file: !464, line: 92)
!522 = !DISubprogram(name: "strspn", scope: !456, file: !456, line: 297, type: !501, flags: DIFlagPrototyped, spFlags: 0)
!523 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !524, file: !464, line: 93)
!524 = !DISubprogram(name: "strtok", scope: !456, file: !456, line: 356, type: !486, flags: DIFlagPrototyped, spFlags: 0)
!525 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !526, file: !464, line: 94)
!526 = !DISubprogram(name: "strxfrm", scope: !456, file: !456, line: 166, type: !527, flags: DIFlagPrototyped, spFlags: 0)
!527 = !DISubroutineType(types: !528)
!528 = !{!461, !488, !489, !461}
!529 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !530, file: !464, line: 95)
!530 = !DISubprogram(name: "strchr", scope: !456, file: !456, line: 228, type: !531, flags: DIFlagPrototyped, spFlags: 0)
!531 = !DISubroutineType(types: !532)
!532 = !{!490, !490, !30}
!533 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !534, file: !464, line: 96)
!534 = !DISubprogram(name: "strpbrk", scope: !456, file: !456, line: 305, type: !535, flags: DIFlagPrototyped, spFlags: 0)
!535 = !DISubroutineType(types: !536)
!536 = !{!490, !490, !490}
!537 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !538, file: !464, line: 97)
!538 = !DISubprogram(name: "strrchr", scope: !456, file: !456, line: 255, type: !531, flags: DIFlagPrototyped, spFlags: 0)
!539 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !540, file: !464, line: 98)
!540 = !DISubprogram(name: "strstr", scope: !456, file: !456, line: 332, type: !535, flags: DIFlagPrototyped, spFlags: 0)
!541 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !542, file: !546, line: 52)
!542 = !DISubprogram(name: "abs", scope: !543, file: !543, line: 848, type: !544, flags: DIFlagPrototyped, spFlags: 0)
!543 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!544 = !DISubroutineType(types: !545)
!545 = !{!30, !30}
!546 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/std_abs.h", directory: "")
!547 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !548, file: !550, line: 127)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !543, line: 63, baseType: !549)
!549 = !DICompositeType(tag: DW_TAG_structure_type, file: !543, line: 59, size: 64, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!550 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cstdlib", directory: "")
!551 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !552, file: !550, line: 128)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !543, line: 71, baseType: !553)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !543, line: 67, size: 128, flags: DIFlagTypePassByValue, elements: !554, identifier: "_ZTS6ldiv_t")
!554 = !{!555, !557}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !553, file: !543, line: 69, baseType: !556, size: 64)
!556 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !553, file: !543, line: 70, baseType: !556, size: 64, offset: 64)
!558 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !559, file: !550, line: 130)
!559 = !DISubprogram(name: "abort", scope: !543, file: !543, line: 598, type: !560, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!560 = !DISubroutineType(types: !561)
!561 = !{null}
!562 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !563, file: !550, line: 134)
!563 = !DISubprogram(name: "atexit", scope: !543, file: !543, line: 602, type: !564, flags: DIFlagPrototyped, spFlags: 0)
!564 = !DISubroutineType(types: !565)
!565 = !{!30, !566}
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!567 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !568, file: !550, line: 137)
!568 = !DISubprogram(name: "at_quick_exit", scope: !543, file: !543, line: 607, type: !564, flags: DIFlagPrototyped, spFlags: 0)
!569 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !570, file: !550, line: 140)
!570 = !DISubprogram(name: "atof", scope: !543, file: !543, line: 102, type: !571, flags: DIFlagPrototyped, spFlags: 0)
!571 = !DISubroutineType(types: !572)
!572 = !{!573, !490}
!573 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!574 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !575, file: !550, line: 141)
!575 = !DISubprogram(name: "atoi", scope: !543, file: !543, line: 105, type: !576, flags: DIFlagPrototyped, spFlags: 0)
!576 = !DISubroutineType(types: !577)
!577 = !{!30, !490}
!578 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !579, file: !550, line: 142)
!579 = !DISubprogram(name: "atol", scope: !543, file: !543, line: 108, type: !580, flags: DIFlagPrototyped, spFlags: 0)
!580 = !DISubroutineType(types: !581)
!581 = !{!556, !490}
!582 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !583, file: !550, line: 143)
!583 = !DISubprogram(name: "bsearch", scope: !543, file: !543, line: 828, type: !584, flags: DIFlagPrototyped, spFlags: 0)
!584 = !DISubroutineType(types: !585)
!585 = !{!473, !459, !459, !461, !461, !586}
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !543, line: 816, baseType: !587)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DISubroutineType(types: !589)
!589 = !{!30, !459, !459}
!590 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !591, file: !550, line: 144)
!591 = !DISubprogram(name: "calloc", scope: !543, file: !543, line: 543, type: !592, flags: DIFlagPrototyped, spFlags: 0)
!592 = !DISubroutineType(types: !593)
!593 = !{!473, !461, !461}
!594 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !595, file: !550, line: 145)
!595 = !DISubprogram(name: "div", scope: !543, file: !543, line: 860, type: !596, flags: DIFlagPrototyped, spFlags: 0)
!596 = !DISubroutineType(types: !597)
!597 = !{!548, !30, !30}
!598 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !599, file: !550, line: 146)
!599 = !DISubprogram(name: "exit", scope: !543, file: !543, line: 624, type: !600, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!600 = !DISubroutineType(types: !601)
!601 = !{null, !30}
!602 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !603, file: !550, line: 147)
!603 = !DISubprogram(name: "free", scope: !543, file: !543, line: 555, type: !604, flags: DIFlagPrototyped, spFlags: 0)
!604 = !DISubroutineType(types: !605)
!605 = !{null, !473}
!606 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !607, file: !550, line: 148)
!607 = !DISubprogram(name: "getenv", scope: !543, file: !543, line: 641, type: !608, flags: DIFlagPrototyped, spFlags: 0)
!608 = !DISubroutineType(types: !609)
!609 = !{!12, !490}
!610 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !611, file: !550, line: 149)
!611 = !DISubprogram(name: "labs", scope: !543, file: !543, line: 849, type: !612, flags: DIFlagPrototyped, spFlags: 0)
!612 = !DISubroutineType(types: !613)
!613 = !{!556, !556}
!614 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !615, file: !550, line: 150)
!615 = !DISubprogram(name: "ldiv", scope: !543, file: !543, line: 862, type: !616, flags: DIFlagPrototyped, spFlags: 0)
!616 = !DISubroutineType(types: !617)
!617 = !{!552, !556, !556}
!618 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !619, file: !550, line: 151)
!619 = !DISubprogram(name: "malloc", scope: !543, file: !543, line: 540, type: !620, flags: DIFlagPrototyped, spFlags: 0)
!620 = !DISubroutineType(types: !621)
!621 = !{!473, !461}
!622 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !623, file: !550, line: 153)
!623 = !DISubprogram(name: "mblen", scope: !543, file: !543, line: 930, type: !624, flags: DIFlagPrototyped, spFlags: 0)
!624 = !DISubroutineType(types: !625)
!625 = !{!30, !490, !461}
!626 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !627, file: !550, line: 154)
!627 = !DISubprogram(name: "mbstowcs", scope: !543, file: !543, line: 941, type: !628, flags: DIFlagPrototyped, spFlags: 0)
!628 = !DISubroutineType(types: !629)
!629 = !{!461, !630, !489, !461}
!630 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !631)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!633 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !634, file: !550, line: 155)
!634 = !DISubprogram(name: "mbtowc", scope: !543, file: !543, line: 933, type: !635, flags: DIFlagPrototyped, spFlags: 0)
!635 = !DISubroutineType(types: !636)
!636 = !{!30, !630, !489, !461}
!637 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !638, file: !550, line: 157)
!638 = !DISubprogram(name: "qsort", scope: !543, file: !543, line: 838, type: !639, flags: DIFlagPrototyped, spFlags: 0)
!639 = !DISubroutineType(types: !640)
!640 = !{null, !473, !461, !461, !586}
!641 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !642, file: !550, line: 160)
!642 = !DISubprogram(name: "quick_exit", scope: !543, file: !543, line: 630, type: !600, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!643 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !644, file: !550, line: 163)
!644 = !DISubprogram(name: "rand", scope: !543, file: !543, line: 454, type: !85, flags: DIFlagPrototyped, spFlags: 0)
!645 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !646, file: !550, line: 164)
!646 = !DISubprogram(name: "realloc", scope: !543, file: !543, line: 551, type: !647, flags: DIFlagPrototyped, spFlags: 0)
!647 = !DISubroutineType(types: !648)
!648 = !{!473, !473, !461}
!649 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !650, file: !550, line: 165)
!650 = !DISubprogram(name: "srand", scope: !543, file: !543, line: 456, type: !651, flags: DIFlagPrototyped, spFlags: 0)
!651 = !DISubroutineType(types: !652)
!652 = !{null, !653}
!653 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!654 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !655, file: !550, line: 166)
!655 = !DISubprogram(name: "strtod", scope: !543, file: !543, line: 118, type: !656, flags: DIFlagPrototyped, spFlags: 0)
!656 = !DISubroutineType(types: !657)
!657 = !{!573, !489, !658}
!658 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !659)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!660 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !661, file: !550, line: 167)
!661 = !DISubprogram(name: "strtol", scope: !543, file: !543, line: 177, type: !662, flags: DIFlagPrototyped, spFlags: 0)
!662 = !DISubroutineType(types: !663)
!663 = !{!556, !489, !658, !30}
!664 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !665, file: !550, line: 168)
!665 = !DISubprogram(name: "strtoul", scope: !543, file: !543, line: 181, type: !666, flags: DIFlagPrototyped, spFlags: 0)
!666 = !DISubroutineType(types: !667)
!667 = !{!463, !489, !658, !30}
!668 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !669, file: !550, line: 169)
!669 = !DISubprogram(name: "system", scope: !543, file: !543, line: 791, type: !576, flags: DIFlagPrototyped, spFlags: 0)
!670 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !671, file: !550, line: 171)
!671 = !DISubprogram(name: "wcstombs", scope: !543, file: !543, line: 945, type: !672, flags: DIFlagPrototyped, spFlags: 0)
!672 = !DISubroutineType(types: !673)
!673 = !{!461, !488, !674, !461}
!674 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !675)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !632)
!677 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !678, file: !550, line: 172)
!678 = !DISubprogram(name: "wctomb", scope: !543, file: !543, line: 937, type: !679, flags: DIFlagPrototyped, spFlags: 0)
!679 = !DISubroutineType(types: !680)
!680 = !{!30, !12, !632}
!681 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !682, entity: !683, file: !550, line: 200)
!682 = !DINamespace(name: "__gnu_cxx", scope: null)
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !543, line: 81, baseType: !684)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !543, line: 77, size: 128, flags: DIFlagTypePassByValue, elements: !685, identifier: "_ZTS7lldiv_t")
!685 = !{!686, !688}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !684, file: !543, line: 79, baseType: !687, size: 64)
!687 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !684, file: !543, line: 80, baseType: !687, size: 64, offset: 64)
!689 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !682, entity: !690, file: !550, line: 206)
!690 = !DISubprogram(name: "_Exit", scope: !543, file: !543, line: 636, type: !600, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!691 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !682, entity: !692, file: !550, line: 210)
!692 = !DISubprogram(name: "llabs", scope: !543, file: !543, line: 852, type: !693, flags: DIFlagPrototyped, spFlags: 0)
!693 = !DISubroutineType(types: !694)
!694 = !{!687, !687}
!695 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !682, entity: !696, file: !550, line: 216)
!696 = !DISubprogram(name: "lldiv", scope: !543, file: !543, line: 866, type: !697, flags: DIFlagPrototyped, spFlags: 0)
!697 = !DISubroutineType(types: !698)
!698 = !{!683, !687, !687}
!699 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !682, entity: !700, file: !550, line: 227)
!700 = !DISubprogram(name: "atoll", scope: !543, file: !543, line: 113, type: !701, flags: DIFlagPrototyped, spFlags: 0)
!701 = !DISubroutineType(types: !702)
!702 = !{!687, !490}
!703 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !682, entity: !704, file: !550, line: 228)
!704 = !DISubprogram(name: "strtoll", scope: !543, file: !543, line: 201, type: !705, flags: DIFlagPrototyped, spFlags: 0)
!705 = !DISubroutineType(types: !706)
!706 = !{!687, !489, !658, !30}
!707 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !682, entity: !708, file: !550, line: 229)
!708 = !DISubprogram(name: "strtoull", scope: !543, file: !543, line: 206, type: !709, flags: DIFlagPrototyped, spFlags: 0)
!709 = !DISubroutineType(types: !710)
!710 = !{!711, !489, !658, !30}
!711 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!712 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !682, entity: !713, file: !550, line: 231)
!713 = !DISubprogram(name: "strtof", scope: !543, file: !543, line: 124, type: !714, flags: DIFlagPrototyped, spFlags: 0)
!714 = !DISubroutineType(types: !715)
!715 = !{!191, !489, !658}
!716 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !682, entity: !717, file: !550, line: 232)
!717 = !DISubprogram(name: "strtold", scope: !543, file: !543, line: 127, type: !718, flags: DIFlagPrototyped, spFlags: 0)
!718 = !DISubroutineType(types: !719)
!719 = !{!720, !489, !658}
!720 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!721 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !683, file: !550, line: 240)
!722 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !690, file: !550, line: 242)
!723 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !692, file: !550, line: 244)
!724 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !725, file: !550, line: 245)
!725 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !682, file: !550, line: 213, type: !697, flags: DIFlagPrototyped, spFlags: 0)
!726 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !696, file: !550, line: 246)
!727 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !700, file: !550, line: 248)
!728 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !713, file: !550, line: 249)
!729 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !704, file: !550, line: 250)
!730 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !708, file: !550, line: 251)
!731 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !717, file: !550, line: 252)
!732 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !559, file: !733, line: 38)
!733 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "0f5b773a303c24013fb112082e6d18a5")
!734 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !563, file: !733, line: 39)
!735 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !599, file: !733, line: 40)
!736 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !568, file: !733, line: 43)
!737 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !642, file: !733, line: 46)
!738 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !548, file: !733, line: 51)
!739 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !552, file: !733, line: 52)
!740 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !741, file: !733, line: 54)
!741 = !DISubprogram(name: "abs", linkageName: "_ZSt3abse", scope: !2, file: !546, line: 79, type: !742, flags: DIFlagPrototyped, spFlags: 0)
!742 = !DISubroutineType(types: !743)
!743 = !{!720, !720}
!744 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !570, file: !733, line: 55)
!745 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !575, file: !733, line: 56)
!746 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !579, file: !733, line: 57)
!747 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !583, file: !733, line: 58)
!748 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !591, file: !733, line: 59)
!749 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !725, file: !733, line: 60)
!750 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !603, file: !733, line: 61)
!751 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !607, file: !733, line: 62)
!752 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !611, file: !733, line: 63)
!753 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !615, file: !733, line: 64)
!754 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !619, file: !733, line: 65)
!755 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !623, file: !733, line: 67)
!756 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !627, file: !733, line: 68)
!757 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !634, file: !733, line: 69)
!758 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !638, file: !733, line: 71)
!759 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !644, file: !733, line: 72)
!760 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !646, file: !733, line: 73)
!761 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !650, file: !733, line: 74)
!762 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !655, file: !733, line: 75)
!763 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !661, file: !733, line: 76)
!764 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !665, file: !733, line: 77)
!765 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !669, file: !733, line: 78)
!766 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !671, file: !733, line: 80)
!767 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !678, file: !733, line: 81)
!768 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !769, file: !773, line: 83)
!769 = !DISubprogram(name: "acos", scope: !770, file: !770, line: 53, type: !771, flags: DIFlagPrototyped, spFlags: 0)
!770 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "8c6e2d0d2bda65bc5ba1ca02b65383b7")
!771 = !DISubroutineType(types: !772)
!772 = !{!573, !573}
!773 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cmath", directory: "")
!774 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !775, file: !773, line: 102)
!775 = !DISubprogram(name: "asin", scope: !770, file: !770, line: 55, type: !771, flags: DIFlagPrototyped, spFlags: 0)
!776 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !777, file: !773, line: 121)
!777 = !DISubprogram(name: "atan", scope: !770, file: !770, line: 57, type: !771, flags: DIFlagPrototyped, spFlags: 0)
!778 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !779, file: !773, line: 140)
!779 = !DISubprogram(name: "atan2", scope: !770, file: !770, line: 59, type: !780, flags: DIFlagPrototyped, spFlags: 0)
!780 = !DISubroutineType(types: !781)
!781 = !{!573, !573, !573}
!782 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !783, file: !773, line: 161)
!783 = !DISubprogram(name: "ceil", scope: !770, file: !770, line: 159, type: !771, flags: DIFlagPrototyped, spFlags: 0)
!784 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !785, file: !773, line: 180)
!785 = !DISubprogram(name: "cos", scope: !770, file: !770, line: 62, type: !771, flags: DIFlagPrototyped, spFlags: 0)
!786 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !787, file: !773, line: 199)
!787 = !DISubprogram(name: "cosh", scope: !770, file: !770, line: 71, type: !771, flags: DIFlagPrototyped, spFlags: 0)
!788 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !789, file: !773, line: 218)
!789 = !DISubprogram(name: "exp", scope: !770, file: !770, line: 95, type: !771, flags: DIFlagPrototyped, spFlags: 0)
!790 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !791, file: !773, line: 237)
!791 = !DISubprogram(name: "fabs", scope: !770, file: !770, line: 162, type: !771, flags: DIFlagPrototyped, spFlags: 0)
!792 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !793, file: !773, line: 256)
!793 = !DISubprogram(name: "floor", scope: !770, file: !770, line: 165, type: !771, flags: DIFlagPrototyped, spFlags: 0)
!794 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !795, file: !773, line: 275)
!795 = !DISubprogram(name: "fmod", scope: !770, file: !770, line: 168, type: !780, flags: DIFlagPrototyped, spFlags: 0)
!796 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !797, file: !773, line: 296)
!797 = !DISubprogram(name: "frexp", scope: !770, file: !770, line: 98, type: !798, flags: DIFlagPrototyped, spFlags: 0)
!798 = !DISubroutineType(types: !799)
!799 = !{!573, !573, !146}
!800 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !801, file: !773, line: 315)
!801 = !DISubprogram(name: "ldexp", scope: !770, file: !770, line: 101, type: !802, flags: DIFlagPrototyped, spFlags: 0)
!802 = !DISubroutineType(types: !803)
!803 = !{!573, !573, !30}
!804 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !805, file: !773, line: 334)
!805 = !DISubprogram(name: "log", scope: !770, file: !770, line: 104, type: !771, flags: DIFlagPrototyped, spFlags: 0)
!806 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !807, file: !773, line: 353)
!807 = !DISubprogram(name: "log10", scope: !770, file: !770, line: 107, type: !771, flags: DIFlagPrototyped, spFlags: 0)
!808 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !809, file: !773, line: 372)
!809 = !DISubprogram(name: "modf", scope: !770, file: !770, line: 110, type: !810, flags: DIFlagPrototyped, spFlags: 0)
!810 = !DISubroutineType(types: !811)
!811 = !{!573, !573, !812}
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!813 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !814, file: !773, line: 384)
!814 = !DISubprogram(name: "pow", scope: !770, file: !770, line: 140, type: !780, flags: DIFlagPrototyped, spFlags: 0)
!815 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !816, file: !773, line: 421)
!816 = !DISubprogram(name: "sin", scope: !770, file: !770, line: 64, type: !771, flags: DIFlagPrototyped, spFlags: 0)
!817 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !818, file: !773, line: 440)
!818 = !DISubprogram(name: "sinh", scope: !770, file: !770, line: 73, type: !771, flags: DIFlagPrototyped, spFlags: 0)
!819 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !820, file: !773, line: 459)
!820 = !DISubprogram(name: "sqrt", scope: !770, file: !770, line: 143, type: !771, flags: DIFlagPrototyped, spFlags: 0)
!821 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !822, file: !773, line: 478)
!822 = !DISubprogram(name: "tan", scope: !770, file: !770, line: 66, type: !771, flags: DIFlagPrototyped, spFlags: 0)
!823 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !824, file: !773, line: 497)
!824 = !DISubprogram(name: "tanh", scope: !770, file: !770, line: 75, type: !771, flags: DIFlagPrototyped, spFlags: 0)
!825 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !826, file: !773, line: 1065)
!826 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_t", file: !827, line: 164, baseType: !573)
!827 = !DIFile(filename: "/usr/include/math.h", directory: "", checksumkind: CSK_MD5, checksum: "f3450d1d586f704597de1a1b2bed18f3")
!828 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !829, file: !773, line: 1066)
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "float_t", file: !827, line: 163, baseType: !191)
!830 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !831, file: !773, line: 1069)
!831 = !DISubprogram(name: "acosh", scope: !770, file: !770, line: 85, type: !771, flags: DIFlagPrototyped, spFlags: 0)
!832 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !833, file: !773, line: 1070)
!833 = !DISubprogram(name: "acoshf", scope: !770, file: !770, line: 85, type: !834, flags: DIFlagPrototyped, spFlags: 0)
!834 = !DISubroutineType(types: !835)
!835 = !{!191, !191}
!836 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !837, file: !773, line: 1071)
!837 = !DISubprogram(name: "acoshl", scope: !770, file: !770, line: 85, type: !742, flags: DIFlagPrototyped, spFlags: 0)
!838 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !839, file: !773, line: 1073)
!839 = !DISubprogram(name: "asinh", scope: !770, file: !770, line: 87, type: !771, flags: DIFlagPrototyped, spFlags: 0)
!840 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !841, file: !773, line: 1074)
!841 = !DISubprogram(name: "asinhf", scope: !770, file: !770, line: 87, type: !834, flags: DIFlagPrototyped, spFlags: 0)
!842 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !843, file: !773, line: 1075)
!843 = !DISubprogram(name: "asinhl", scope: !770, file: !770, line: 87, type: !742, flags: DIFlagPrototyped, spFlags: 0)
!844 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !845, file: !773, line: 1077)
!845 = !DISubprogram(name: "atanh", scope: !770, file: !770, line: 89, type: !771, flags: DIFlagPrototyped, spFlags: 0)
!846 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !847, file: !773, line: 1078)
!847 = !DISubprogram(name: "atanhf", scope: !770, file: !770, line: 89, type: !834, flags: DIFlagPrototyped, spFlags: 0)
!848 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !849, file: !773, line: 1079)
!849 = !DISubprogram(name: "atanhl", scope: !770, file: !770, line: 89, type: !742, flags: DIFlagPrototyped, spFlags: 0)
!850 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !851, file: !773, line: 1081)
!851 = !DISubprogram(name: "cbrt", scope: !770, file: !770, line: 152, type: !771, flags: DIFlagPrototyped, spFlags: 0)
!852 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !853, file: !773, line: 1082)
!853 = !DISubprogram(name: "cbrtf", scope: !770, file: !770, line: 152, type: !834, flags: DIFlagPrototyped, spFlags: 0)
!854 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !855, file: !773, line: 1083)
!855 = !DISubprogram(name: "cbrtl", scope: !770, file: !770, line: 152, type: !742, flags: DIFlagPrototyped, spFlags: 0)
!856 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !857, file: !773, line: 1085)
!857 = !DISubprogram(name: "copysign", scope: !770, file: !770, line: 198, type: !780, flags: DIFlagPrototyped, spFlags: 0)
!858 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !859, file: !773, line: 1086)
!859 = !DISubprogram(name: "copysignf", scope: !770, file: !770, line: 198, type: !860, flags: DIFlagPrototyped, spFlags: 0)
!860 = !DISubroutineType(types: !861)
!861 = !{!191, !191, !191}
!862 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !863, file: !773, line: 1087)
!863 = !DISubprogram(name: "copysignl", scope: !770, file: !770, line: 198, type: !864, flags: DIFlagPrototyped, spFlags: 0)
!864 = !DISubroutineType(types: !865)
!865 = !{!720, !720, !720}
!866 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !867, file: !773, line: 1089)
!867 = !DISubprogram(name: "erf", scope: !770, file: !770, line: 231, type: !771, flags: DIFlagPrototyped, spFlags: 0)
!868 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !869, file: !773, line: 1090)
!869 = !DISubprogram(name: "erff", scope: !770, file: !770, line: 231, type: !834, flags: DIFlagPrototyped, spFlags: 0)
!870 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !871, file: !773, line: 1091)
!871 = !DISubprogram(name: "erfl", scope: !770, file: !770, line: 231, type: !742, flags: DIFlagPrototyped, spFlags: 0)
!872 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !873, file: !773, line: 1093)
!873 = !DISubprogram(name: "erfc", scope: !770, file: !770, line: 232, type: !771, flags: DIFlagPrototyped, spFlags: 0)
!874 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !875, file: !773, line: 1094)
!875 = !DISubprogram(name: "erfcf", scope: !770, file: !770, line: 232, type: !834, flags: DIFlagPrototyped, spFlags: 0)
!876 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !877, file: !773, line: 1095)
!877 = !DISubprogram(name: "erfcl", scope: !770, file: !770, line: 232, type: !742, flags: DIFlagPrototyped, spFlags: 0)
!878 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !879, file: !773, line: 1097)
!879 = !DISubprogram(name: "exp2", scope: !770, file: !770, line: 130, type: !771, flags: DIFlagPrototyped, spFlags: 0)
!880 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !881, file: !773, line: 1098)
!881 = !DISubprogram(name: "exp2f", scope: !770, file: !770, line: 130, type: !834, flags: DIFlagPrototyped, spFlags: 0)
!882 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !883, file: !773, line: 1099)
!883 = !DISubprogram(name: "exp2l", scope: !770, file: !770, line: 130, type: !742, flags: DIFlagPrototyped, spFlags: 0)
!884 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !885, file: !773, line: 1101)
!885 = !DISubprogram(name: "expm1", scope: !770, file: !770, line: 119, type: !771, flags: DIFlagPrototyped, spFlags: 0)
!886 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !887, file: !773, line: 1102)
!887 = !DISubprogram(name: "expm1f", scope: !770, file: !770, line: 119, type: !834, flags: DIFlagPrototyped, spFlags: 0)
!888 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !889, file: !773, line: 1103)
!889 = !DISubprogram(name: "expm1l", scope: !770, file: !770, line: 119, type: !742, flags: DIFlagPrototyped, spFlags: 0)
!890 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !891, file: !773, line: 1105)
!891 = !DISubprogram(name: "fdim", scope: !770, file: !770, line: 329, type: !780, flags: DIFlagPrototyped, spFlags: 0)
!892 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !893, file: !773, line: 1106)
!893 = !DISubprogram(name: "fdimf", scope: !770, file: !770, line: 329, type: !860, flags: DIFlagPrototyped, spFlags: 0)
!894 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !895, file: !773, line: 1107)
!895 = !DISubprogram(name: "fdiml", scope: !770, file: !770, line: 329, type: !864, flags: DIFlagPrototyped, spFlags: 0)
!896 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !897, file: !773, line: 1109)
!897 = !DISubprogram(name: "fma", scope: !770, file: !770, line: 340, type: !898, flags: DIFlagPrototyped, spFlags: 0)
!898 = !DISubroutineType(types: !899)
!899 = !{!573, !573, !573, !573}
!900 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !901, file: !773, line: 1110)
!901 = !DISubprogram(name: "fmaf", scope: !770, file: !770, line: 340, type: !902, flags: DIFlagPrototyped, spFlags: 0)
!902 = !DISubroutineType(types: !903)
!903 = !{!191, !191, !191, !191}
!904 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !905, file: !773, line: 1111)
!905 = !DISubprogram(name: "fmal", scope: !770, file: !770, line: 340, type: !906, flags: DIFlagPrototyped, spFlags: 0)
!906 = !DISubroutineType(types: !907)
!907 = !{!720, !720, !720, !720}
!908 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !909, file: !773, line: 1113)
!909 = !DISubprogram(name: "fmax", scope: !770, file: !770, line: 333, type: !780, flags: DIFlagPrototyped, spFlags: 0)
!910 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !911, file: !773, line: 1114)
!911 = !DISubprogram(name: "fmaxf", scope: !770, file: !770, line: 333, type: !860, flags: DIFlagPrototyped, spFlags: 0)
!912 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !913, file: !773, line: 1115)
!913 = !DISubprogram(name: "fmaxl", scope: !770, file: !770, line: 333, type: !864, flags: DIFlagPrototyped, spFlags: 0)
!914 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !915, file: !773, line: 1117)
!915 = !DISubprogram(name: "fmin", scope: !770, file: !770, line: 336, type: !780, flags: DIFlagPrototyped, spFlags: 0)
!916 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !917, file: !773, line: 1118)
!917 = !DISubprogram(name: "fminf", scope: !770, file: !770, line: 336, type: !860, flags: DIFlagPrototyped, spFlags: 0)
!918 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !919, file: !773, line: 1119)
!919 = !DISubprogram(name: "fminl", scope: !770, file: !770, line: 336, type: !864, flags: DIFlagPrototyped, spFlags: 0)
!920 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !921, file: !773, line: 1121)
!921 = !DISubprogram(name: "hypot", scope: !770, file: !770, line: 147, type: !780, flags: DIFlagPrototyped, spFlags: 0)
!922 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !923, file: !773, line: 1122)
!923 = !DISubprogram(name: "hypotf", scope: !770, file: !770, line: 147, type: !860, flags: DIFlagPrototyped, spFlags: 0)
!924 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !925, file: !773, line: 1123)
!925 = !DISubprogram(name: "hypotl", scope: !770, file: !770, line: 147, type: !864, flags: DIFlagPrototyped, spFlags: 0)
!926 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !927, file: !773, line: 1125)
!927 = !DISubprogram(name: "ilogb", scope: !770, file: !770, line: 283, type: !928, flags: DIFlagPrototyped, spFlags: 0)
!928 = !DISubroutineType(types: !929)
!929 = !{!30, !573}
!930 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !931, file: !773, line: 1126)
!931 = !DISubprogram(name: "ilogbf", scope: !770, file: !770, line: 283, type: !932, flags: DIFlagPrototyped, spFlags: 0)
!932 = !DISubroutineType(types: !933)
!933 = !{!30, !191}
!934 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !935, file: !773, line: 1127)
!935 = !DISubprogram(name: "ilogbl", scope: !770, file: !770, line: 283, type: !936, flags: DIFlagPrototyped, spFlags: 0)
!936 = !DISubroutineType(types: !937)
!937 = !{!30, !720}
!938 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !939, file: !773, line: 1129)
!939 = !DISubprogram(name: "lgamma", scope: !770, file: !770, line: 233, type: !771, flags: DIFlagPrototyped, spFlags: 0)
!940 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !941, file: !773, line: 1130)
!941 = !DISubprogram(name: "lgammaf", scope: !770, file: !770, line: 233, type: !834, flags: DIFlagPrototyped, spFlags: 0)
!942 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !943, file: !773, line: 1131)
!943 = !DISubprogram(name: "lgammal", scope: !770, file: !770, line: 233, type: !742, flags: DIFlagPrototyped, spFlags: 0)
!944 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !945, file: !773, line: 1134)
!945 = !DISubprogram(name: "llrint", scope: !770, file: !770, line: 319, type: !946, flags: DIFlagPrototyped, spFlags: 0)
!946 = !DISubroutineType(types: !947)
!947 = !{!687, !573}
!948 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !949, file: !773, line: 1135)
!949 = !DISubprogram(name: "llrintf", scope: !770, file: !770, line: 319, type: !950, flags: DIFlagPrototyped, spFlags: 0)
!950 = !DISubroutineType(types: !951)
!951 = !{!687, !191}
!952 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !953, file: !773, line: 1136)
!953 = !DISubprogram(name: "llrintl", scope: !770, file: !770, line: 319, type: !954, flags: DIFlagPrototyped, spFlags: 0)
!954 = !DISubroutineType(types: !955)
!955 = !{!687, !720}
!956 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !957, file: !773, line: 1138)
!957 = !DISubprogram(name: "llround", scope: !770, file: !770, line: 325, type: !946, flags: DIFlagPrototyped, spFlags: 0)
!958 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !959, file: !773, line: 1139)
!959 = !DISubprogram(name: "llroundf", scope: !770, file: !770, line: 325, type: !950, flags: DIFlagPrototyped, spFlags: 0)
!960 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !961, file: !773, line: 1140)
!961 = !DISubprogram(name: "llroundl", scope: !770, file: !770, line: 325, type: !954, flags: DIFlagPrototyped, spFlags: 0)
!962 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !963, file: !773, line: 1143)
!963 = !DISubprogram(name: "log1p", scope: !770, file: !770, line: 122, type: !771, flags: DIFlagPrototyped, spFlags: 0)
!964 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !965, file: !773, line: 1144)
!965 = !DISubprogram(name: "log1pf", scope: !770, file: !770, line: 122, type: !834, flags: DIFlagPrototyped, spFlags: 0)
!966 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !967, file: !773, line: 1145)
!967 = !DISubprogram(name: "log1pl", scope: !770, file: !770, line: 122, type: !742, flags: DIFlagPrototyped, spFlags: 0)
!968 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !969, file: !773, line: 1147)
!969 = !DISubprogram(name: "log2", scope: !770, file: !770, line: 133, type: !771, flags: DIFlagPrototyped, spFlags: 0)
!970 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !971, file: !773, line: 1148)
!971 = !DISubprogram(name: "log2f", scope: !770, file: !770, line: 133, type: !834, flags: DIFlagPrototyped, spFlags: 0)
!972 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !973, file: !773, line: 1149)
!973 = !DISubprogram(name: "log2l", scope: !770, file: !770, line: 133, type: !742, flags: DIFlagPrototyped, spFlags: 0)
!974 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !975, file: !773, line: 1151)
!975 = !DISubprogram(name: "logb", scope: !770, file: !770, line: 125, type: !771, flags: DIFlagPrototyped, spFlags: 0)
!976 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !977, file: !773, line: 1152)
!977 = !DISubprogram(name: "logbf", scope: !770, file: !770, line: 125, type: !834, flags: DIFlagPrototyped, spFlags: 0)
!978 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !979, file: !773, line: 1153)
!979 = !DISubprogram(name: "logbl", scope: !770, file: !770, line: 125, type: !742, flags: DIFlagPrototyped, spFlags: 0)
!980 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !981, file: !773, line: 1155)
!981 = !DISubprogram(name: "lrint", scope: !770, file: !770, line: 317, type: !982, flags: DIFlagPrototyped, spFlags: 0)
!982 = !DISubroutineType(types: !983)
!983 = !{!556, !573}
!984 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !985, file: !773, line: 1156)
!985 = !DISubprogram(name: "lrintf", scope: !770, file: !770, line: 317, type: !986, flags: DIFlagPrototyped, spFlags: 0)
!986 = !DISubroutineType(types: !987)
!987 = !{!556, !191}
!988 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !989, file: !773, line: 1157)
!989 = !DISubprogram(name: "lrintl", scope: !770, file: !770, line: 317, type: !990, flags: DIFlagPrototyped, spFlags: 0)
!990 = !DISubroutineType(types: !991)
!991 = !{!556, !720}
!992 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !993, file: !773, line: 1159)
!993 = !DISubprogram(name: "lround", scope: !770, file: !770, line: 323, type: !982, flags: DIFlagPrototyped, spFlags: 0)
!994 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !995, file: !773, line: 1160)
!995 = !DISubprogram(name: "lroundf", scope: !770, file: !770, line: 323, type: !986, flags: DIFlagPrototyped, spFlags: 0)
!996 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !997, file: !773, line: 1161)
!997 = !DISubprogram(name: "lroundl", scope: !770, file: !770, line: 323, type: !990, flags: DIFlagPrototyped, spFlags: 0)
!998 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !999, file: !773, line: 1163)
!999 = !DISubprogram(name: "nan", scope: !770, file: !770, line: 203, type: !571, flags: DIFlagPrototyped, spFlags: 0)
!1000 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1001, file: !773, line: 1164)
!1001 = !DISubprogram(name: "nanf", scope: !770, file: !770, line: 203, type: !1002, flags: DIFlagPrototyped, spFlags: 0)
!1002 = !DISubroutineType(types: !1003)
!1003 = !{!191, !490}
!1004 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1005, file: !773, line: 1165)
!1005 = !DISubprogram(name: "nanl", scope: !770, file: !770, line: 203, type: !1006, flags: DIFlagPrototyped, spFlags: 0)
!1006 = !DISubroutineType(types: !1007)
!1007 = !{!720, !490}
!1008 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1009, file: !773, line: 1167)
!1009 = !DISubprogram(name: "nearbyint", scope: !770, file: !770, line: 297, type: !771, flags: DIFlagPrototyped, spFlags: 0)
!1010 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1011, file: !773, line: 1168)
!1011 = !DISubprogram(name: "nearbyintf", scope: !770, file: !770, line: 297, type: !834, flags: DIFlagPrototyped, spFlags: 0)
!1012 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1013, file: !773, line: 1169)
!1013 = !DISubprogram(name: "nearbyintl", scope: !770, file: !770, line: 297, type: !742, flags: DIFlagPrototyped, spFlags: 0)
!1014 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1015, file: !773, line: 1171)
!1015 = !DISubprogram(name: "nextafter", scope: !770, file: !770, line: 262, type: !780, flags: DIFlagPrototyped, spFlags: 0)
!1016 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1017, file: !773, line: 1172)
!1017 = !DISubprogram(name: "nextafterf", scope: !770, file: !770, line: 262, type: !860, flags: DIFlagPrototyped, spFlags: 0)
!1018 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1019, file: !773, line: 1173)
!1019 = !DISubprogram(name: "nextafterl", scope: !770, file: !770, line: 262, type: !864, flags: DIFlagPrototyped, spFlags: 0)
!1020 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1021, file: !773, line: 1175)
!1021 = !DISubprogram(name: "nexttoward", scope: !770, file: !770, line: 264, type: !1022, flags: DIFlagPrototyped, spFlags: 0)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{!573, !573, !720}
!1024 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1025, file: !773, line: 1176)
!1025 = !DISubprogram(name: "nexttowardf", scope: !770, file: !770, line: 264, type: !1026, flags: DIFlagPrototyped, spFlags: 0)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{!191, !191, !720}
!1028 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1029, file: !773, line: 1177)
!1029 = !DISubprogram(name: "nexttowardl", scope: !770, file: !770, line: 264, type: !864, flags: DIFlagPrototyped, spFlags: 0)
!1030 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1031, file: !773, line: 1179)
!1031 = !DISubprogram(name: "remainder", scope: !770, file: !770, line: 275, type: !780, flags: DIFlagPrototyped, spFlags: 0)
!1032 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1033, file: !773, line: 1180)
!1033 = !DISubprogram(name: "remainderf", scope: !770, file: !770, line: 275, type: !860, flags: DIFlagPrototyped, spFlags: 0)
!1034 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1035, file: !773, line: 1181)
!1035 = !DISubprogram(name: "remainderl", scope: !770, file: !770, line: 275, type: !864, flags: DIFlagPrototyped, spFlags: 0)
!1036 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1037, file: !773, line: 1183)
!1037 = !DISubprogram(name: "remquo", scope: !770, file: !770, line: 310, type: !1038, flags: DIFlagPrototyped, spFlags: 0)
!1038 = !DISubroutineType(types: !1039)
!1039 = !{!573, !573, !573, !146}
!1040 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1041, file: !773, line: 1184)
!1041 = !DISubprogram(name: "remquof", scope: !770, file: !770, line: 310, type: !1042, flags: DIFlagPrototyped, spFlags: 0)
!1042 = !DISubroutineType(types: !1043)
!1043 = !{!191, !191, !191, !146}
!1044 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1045, file: !773, line: 1185)
!1045 = !DISubprogram(name: "remquol", scope: !770, file: !770, line: 310, type: !1046, flags: DIFlagPrototyped, spFlags: 0)
!1046 = !DISubroutineType(types: !1047)
!1047 = !{!720, !720, !720, !146}
!1048 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1049, file: !773, line: 1187)
!1049 = !DISubprogram(name: "rint", scope: !770, file: !770, line: 259, type: !771, flags: DIFlagPrototyped, spFlags: 0)
!1050 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1051, file: !773, line: 1188)
!1051 = !DISubprogram(name: "rintf", scope: !770, file: !770, line: 259, type: !834, flags: DIFlagPrototyped, spFlags: 0)
!1052 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1053, file: !773, line: 1189)
!1053 = !DISubprogram(name: "rintl", scope: !770, file: !770, line: 259, type: !742, flags: DIFlagPrototyped, spFlags: 0)
!1054 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1055, file: !773, line: 1191)
!1055 = !DISubprogram(name: "round", scope: !770, file: !770, line: 301, type: !771, flags: DIFlagPrototyped, spFlags: 0)
!1056 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1057, file: !773, line: 1192)
!1057 = !DISubprogram(name: "roundf", scope: !770, file: !770, line: 301, type: !834, flags: DIFlagPrototyped, spFlags: 0)
!1058 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1059, file: !773, line: 1193)
!1059 = !DISubprogram(name: "roundl", scope: !770, file: !770, line: 301, type: !742, flags: DIFlagPrototyped, spFlags: 0)
!1060 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1061, file: !773, line: 1195)
!1061 = !DISubprogram(name: "scalbln", scope: !770, file: !770, line: 293, type: !1062, flags: DIFlagPrototyped, spFlags: 0)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{!573, !573, !556}
!1064 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1065, file: !773, line: 1196)
!1065 = !DISubprogram(name: "scalblnf", scope: !770, file: !770, line: 293, type: !1066, flags: DIFlagPrototyped, spFlags: 0)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{!191, !191, !556}
!1068 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1069, file: !773, line: 1197)
!1069 = !DISubprogram(name: "scalblnl", scope: !770, file: !770, line: 293, type: !1070, flags: DIFlagPrototyped, spFlags: 0)
!1070 = !DISubroutineType(types: !1071)
!1071 = !{!720, !720, !556}
!1072 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1073, file: !773, line: 1199)
!1073 = !DISubprogram(name: "scalbn", scope: !770, file: !770, line: 279, type: !802, flags: DIFlagPrototyped, spFlags: 0)
!1074 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1075, file: !773, line: 1200)
!1075 = !DISubprogram(name: "scalbnf", scope: !770, file: !770, line: 279, type: !1076, flags: DIFlagPrototyped, spFlags: 0)
!1076 = !DISubroutineType(types: !1077)
!1077 = !{!191, !191, !30}
!1078 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1079, file: !773, line: 1201)
!1079 = !DISubprogram(name: "scalbnl", scope: !770, file: !770, line: 279, type: !1080, flags: DIFlagPrototyped, spFlags: 0)
!1080 = !DISubroutineType(types: !1081)
!1081 = !{!720, !720, !30}
!1082 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1083, file: !773, line: 1203)
!1083 = !DISubprogram(name: "tgamma", scope: !770, file: !770, line: 238, type: !771, flags: DIFlagPrototyped, spFlags: 0)
!1084 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1085, file: !773, line: 1204)
!1085 = !DISubprogram(name: "tgammaf", scope: !770, file: !770, line: 238, type: !834, flags: DIFlagPrototyped, spFlags: 0)
!1086 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1087, file: !773, line: 1205)
!1087 = !DISubprogram(name: "tgammal", scope: !770, file: !770, line: 238, type: !742, flags: DIFlagPrototyped, spFlags: 0)
!1088 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1089, file: !773, line: 1207)
!1089 = !DISubprogram(name: "trunc", scope: !770, file: !770, line: 305, type: !771, flags: DIFlagPrototyped, spFlags: 0)
!1090 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1091, file: !773, line: 1208)
!1091 = !DISubprogram(name: "truncf", scope: !770, file: !770, line: 305, type: !834, flags: DIFlagPrototyped, spFlags: 0)
!1092 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1093, file: !773, line: 1209)
!1093 = !DISubprogram(name: "truncl", scope: !770, file: !770, line: 305, type: !742, flags: DIFlagPrototyped, spFlags: 0)
!1094 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !741, file: !1095, line: 38)
!1095 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/math.h", directory: "", checksumkind: CSK_MD5, checksum: "a990cded20a6fb8dad866460b8c40922")
!1096 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !1097, file: !1095, line: 54)
!1097 = !DISubprogram(name: "modf", linkageName: "_ZSt4modfePe", scope: !2, file: !773, line: 380, type: !1098, flags: DIFlagPrototyped, spFlags: 0)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{!720, !720, !1100}
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!1101 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1102, file: !1115, line: 64)
!1102 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1103, line: 6, baseType: !1104)
!1103 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!1104 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1105, line: 21, baseType: !1106)
!1105 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!1106 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1105, line: 13, size: 64, flags: DIFlagTypePassByValue, elements: !1107, identifier: "_ZTS11__mbstate_t")
!1107 = !{!1108, !1109}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1106, file: !1105, line: 15, baseType: !30, size: 32)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1106, file: !1105, line: 20, baseType: !1110, size: 32, offset: 32)
!1110 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1106, file: !1105, line: 16, size: 32, flags: DIFlagTypePassByValue, elements: !1111, identifier: "_ZTSN11__mbstate_tUt_E")
!1111 = !{!1112, !1113}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1110, file: !1105, line: 18, baseType: !653, size: 32)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1110, file: !1105, line: 19, baseType: !1114, size: 32)
!1114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 32, elements: !192)
!1115 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cwchar", directory: "")
!1116 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1117, file: !1115, line: 141)
!1117 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1118, line: 20, baseType: !653)
!1118 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1119 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1120, file: !1115, line: 143)
!1120 = !DISubprogram(name: "btowc", scope: !1121, file: !1121, line: 285, type: !1122, flags: DIFlagPrototyped, spFlags: 0)
!1121 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!1122 = !DISubroutineType(types: !1123)
!1123 = !{!1117, !30}
!1124 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1125, file: !1115, line: 144)
!1125 = !DISubprogram(name: "fgetwc", scope: !1121, file: !1121, line: 744, type: !1126, flags: DIFlagPrototyped, spFlags: 0)
!1126 = !DISubroutineType(types: !1127)
!1127 = !{!1117, !1128}
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !1130, line: 5, baseType: !1131)
!1130 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "72a8fe90981f484acae7c6f3dfc5c2b7")
!1131 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1132, line: 49, size: 1728, flags: DIFlagFwdDecl, identifier: "_ZTS8_IO_FILE")
!1132 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!1133 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1134, file: !1115, line: 145)
!1134 = !DISubprogram(name: "fgetws", scope: !1121, file: !1121, line: 773, type: !1135, flags: DIFlagPrototyped, spFlags: 0)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!631, !630, !30, !1137}
!1137 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1128)
!1138 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1139, file: !1115, line: 146)
!1139 = !DISubprogram(name: "fputwc", scope: !1121, file: !1121, line: 758, type: !1140, flags: DIFlagPrototyped, spFlags: 0)
!1140 = !DISubroutineType(types: !1141)
!1141 = !{!1117, !632, !1128}
!1142 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1143, file: !1115, line: 147)
!1143 = !DISubprogram(name: "fputws", scope: !1121, file: !1121, line: 780, type: !1144, flags: DIFlagPrototyped, spFlags: 0)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{!30, !674, !1137}
!1146 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1147, file: !1115, line: 148)
!1147 = !DISubprogram(name: "fwide", scope: !1121, file: !1121, line: 588, type: !1148, flags: DIFlagPrototyped, spFlags: 0)
!1148 = !DISubroutineType(types: !1149)
!1149 = !{!30, !1128, !30}
!1150 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1151, file: !1115, line: 149)
!1151 = !DISubprogram(name: "fwprintf", scope: !1121, file: !1121, line: 595, type: !1152, flags: DIFlagPrototyped, spFlags: 0)
!1152 = !DISubroutineType(types: !1153)
!1153 = !{!30, !1137, !674, null}
!1154 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1155, file: !1115, line: 150)
!1155 = !DISubprogram(name: "fwscanf", linkageName: "__isoc99_fwscanf", scope: !1121, file: !1121, line: 657, type: !1152, flags: DIFlagPrototyped, spFlags: 0)
!1156 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1157, file: !1115, line: 151)
!1157 = !DISubprogram(name: "getwc", scope: !1121, file: !1121, line: 745, type: !1126, flags: DIFlagPrototyped, spFlags: 0)
!1158 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1159, file: !1115, line: 152)
!1159 = !DISubprogram(name: "getwchar", scope: !1121, file: !1121, line: 751, type: !1160, flags: DIFlagPrototyped, spFlags: 0)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{!1117}
!1162 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1163, file: !1115, line: 153)
!1163 = !DISubprogram(name: "mbrlen", scope: !1121, file: !1121, line: 308, type: !1164, flags: DIFlagPrototyped, spFlags: 0)
!1164 = !DISubroutineType(types: !1165)
!1165 = !{!461, !489, !461, !1166}
!1166 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1167)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1168 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1169, file: !1115, line: 154)
!1169 = !DISubprogram(name: "mbrtowc", scope: !1121, file: !1121, line: 297, type: !1170, flags: DIFlagPrototyped, spFlags: 0)
!1170 = !DISubroutineType(types: !1171)
!1171 = !{!461, !630, !489, !461, !1166}
!1172 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1173, file: !1115, line: 155)
!1173 = !DISubprogram(name: "mbsinit", scope: !1121, file: !1121, line: 293, type: !1174, flags: DIFlagPrototyped, spFlags: 0)
!1174 = !DISubroutineType(types: !1175)
!1175 = !{!30, !1176}
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1102)
!1178 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1179, file: !1115, line: 156)
!1179 = !DISubprogram(name: "mbsrtowcs", scope: !1121, file: !1121, line: 338, type: !1180, flags: DIFlagPrototyped, spFlags: 0)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{!461, !630, !1182, !461, !1166}
!1182 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1183)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!1184 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1185, file: !1115, line: 157)
!1185 = !DISubprogram(name: "putwc", scope: !1121, file: !1121, line: 759, type: !1140, flags: DIFlagPrototyped, spFlags: 0)
!1186 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1187, file: !1115, line: 158)
!1187 = !DISubprogram(name: "putwchar", scope: !1121, file: !1121, line: 765, type: !1188, flags: DIFlagPrototyped, spFlags: 0)
!1188 = !DISubroutineType(types: !1189)
!1189 = !{!1117, !632}
!1190 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1191, file: !1115, line: 160)
!1191 = !DISubprogram(name: "swprintf", scope: !1121, file: !1121, line: 605, type: !1192, flags: DIFlagPrototyped, spFlags: 0)
!1192 = !DISubroutineType(types: !1193)
!1193 = !{!30, !630, !461, !674, null}
!1194 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1195, file: !1115, line: 162)
!1195 = !DISubprogram(name: "swscanf", linkageName: "__isoc99_swscanf", scope: !1121, file: !1121, line: 664, type: !1196, flags: DIFlagPrototyped, spFlags: 0)
!1196 = !DISubroutineType(types: !1197)
!1197 = !{!30, !674, !674, null}
!1198 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1199, file: !1115, line: 163)
!1199 = !DISubprogram(name: "ungetwc", scope: !1121, file: !1121, line: 788, type: !1200, flags: DIFlagPrototyped, spFlags: 0)
!1200 = !DISubroutineType(types: !1201)
!1201 = !{!1117, !1117, !1128}
!1202 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1203, file: !1115, line: 164)
!1203 = !DISubprogram(name: "vfwprintf", scope: !1121, file: !1121, line: 613, type: !1204, flags: DIFlagPrototyped, spFlags: 0)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{!30, !1137, !674, !1206}
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, flags: DIFlagTypePassByValue, elements: !1208, identifier: "_ZTS13__va_list_tag")
!1208 = !{!1209, !1211, !1212, !1213}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1207, file: !1210, baseType: !653, size: 32)
!1210 = !DIFile(filename: "LRT/FrameBuffer/PBOFrameBuffer.cxx", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src")
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1207, file: !1210, baseType: !653, size: 32, offset: 32)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1207, file: !1210, baseType: !473, size: 64, offset: 64)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1207, file: !1210, baseType: !473, size: 64, offset: 128)
!1214 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1215, file: !1115, line: 166)
!1215 = !DISubprogram(name: "vfwscanf", linkageName: "__isoc99_vfwscanf", scope: !1121, file: !1121, line: 711, type: !1204, flags: DIFlagPrototyped, spFlags: 0)
!1216 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1217, file: !1115, line: 169)
!1217 = !DISubprogram(name: "vswprintf", scope: !1121, file: !1121, line: 626, type: !1218, flags: DIFlagPrototyped, spFlags: 0)
!1218 = !DISubroutineType(types: !1219)
!1219 = !{!30, !630, !461, !674, !1206}
!1220 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1221, file: !1115, line: 172)
!1221 = !DISubprogram(name: "vswscanf", linkageName: "__isoc99_vswscanf", scope: !1121, file: !1121, line: 718, type: !1222, flags: DIFlagPrototyped, spFlags: 0)
!1222 = !DISubroutineType(types: !1223)
!1223 = !{!30, !674, !674, !1206}
!1224 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1225, file: !1115, line: 174)
!1225 = !DISubprogram(name: "vwprintf", scope: !1121, file: !1121, line: 621, type: !1226, flags: DIFlagPrototyped, spFlags: 0)
!1226 = !DISubroutineType(types: !1227)
!1227 = !{!30, !674, !1206}
!1228 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1229, file: !1115, line: 176)
!1229 = !DISubprogram(name: "vwscanf", linkageName: "__isoc99_vwscanf", scope: !1121, file: !1121, line: 715, type: !1226, flags: DIFlagPrototyped, spFlags: 0)
!1230 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1231, file: !1115, line: 178)
!1231 = !DISubprogram(name: "wcrtomb", scope: !1121, file: !1121, line: 302, type: !1232, flags: DIFlagPrototyped, spFlags: 0)
!1232 = !DISubroutineType(types: !1233)
!1233 = !{!461, !488, !632, !1166}
!1234 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1235, file: !1115, line: 179)
!1235 = !DISubprogram(name: "wcscat", scope: !1121, file: !1121, line: 97, type: !1236, flags: DIFlagPrototyped, spFlags: 0)
!1236 = !DISubroutineType(types: !1237)
!1237 = !{!631, !630, !674}
!1238 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1239, file: !1115, line: 180)
!1239 = !DISubprogram(name: "wcscmp", scope: !1121, file: !1121, line: 106, type: !1240, flags: DIFlagPrototyped, spFlags: 0)
!1240 = !DISubroutineType(types: !1241)
!1241 = !{!30, !675, !675}
!1242 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1243, file: !1115, line: 181)
!1243 = !DISubprogram(name: "wcscoll", scope: !1121, file: !1121, line: 131, type: !1240, flags: DIFlagPrototyped, spFlags: 0)
!1244 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1245, file: !1115, line: 182)
!1245 = !DISubprogram(name: "wcscpy", scope: !1121, file: !1121, line: 87, type: !1236, flags: DIFlagPrototyped, spFlags: 0)
!1246 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1247, file: !1115, line: 183)
!1247 = !DISubprogram(name: "wcscspn", scope: !1121, file: !1121, line: 188, type: !1248, flags: DIFlagPrototyped, spFlags: 0)
!1248 = !DISubroutineType(types: !1249)
!1249 = !{!461, !675, !675}
!1250 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1251, file: !1115, line: 184)
!1251 = !DISubprogram(name: "wcsftime", scope: !1121, file: !1121, line: 852, type: !1252, flags: DIFlagPrototyped, spFlags: 0)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{!461, !630, !461, !674, !1254}
!1254 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1255)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1257)
!1257 = !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !1121, line: 83, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS2tm")
!1258 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1259, file: !1115, line: 185)
!1259 = !DISubprogram(name: "wcslen", scope: !1121, file: !1121, line: 223, type: !1260, flags: DIFlagPrototyped, spFlags: 0)
!1260 = !DISubroutineType(types: !1261)
!1261 = !{!461, !675}
!1262 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1263, file: !1115, line: 186)
!1263 = !DISubprogram(name: "wcsncat", scope: !1121, file: !1121, line: 101, type: !1264, flags: DIFlagPrototyped, spFlags: 0)
!1264 = !DISubroutineType(types: !1265)
!1265 = !{!631, !630, !674, !461}
!1266 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1267, file: !1115, line: 187)
!1267 = !DISubprogram(name: "wcsncmp", scope: !1121, file: !1121, line: 109, type: !1268, flags: DIFlagPrototyped, spFlags: 0)
!1268 = !DISubroutineType(types: !1269)
!1269 = !{!30, !675, !675, !461}
!1270 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1271, file: !1115, line: 188)
!1271 = !DISubprogram(name: "wcsncpy", scope: !1121, file: !1121, line: 92, type: !1264, flags: DIFlagPrototyped, spFlags: 0)
!1272 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1273, file: !1115, line: 189)
!1273 = !DISubprogram(name: "wcsrtombs", scope: !1121, file: !1121, line: 344, type: !1274, flags: DIFlagPrototyped, spFlags: 0)
!1274 = !DISubroutineType(types: !1275)
!1275 = !{!461, !488, !1276, !461, !1166}
!1276 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1277)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!1278 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1279, file: !1115, line: 190)
!1279 = !DISubprogram(name: "wcsspn", scope: !1121, file: !1121, line: 192, type: !1248, flags: DIFlagPrototyped, spFlags: 0)
!1280 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1281, file: !1115, line: 191)
!1281 = !DISubprogram(name: "wcstod", scope: !1121, file: !1121, line: 378, type: !1282, flags: DIFlagPrototyped, spFlags: 0)
!1282 = !DISubroutineType(types: !1283)
!1283 = !{!573, !674, !1284}
!1284 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1285)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!1286 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1287, file: !1115, line: 193)
!1287 = !DISubprogram(name: "wcstof", scope: !1121, file: !1121, line: 383, type: !1288, flags: DIFlagPrototyped, spFlags: 0)
!1288 = !DISubroutineType(types: !1289)
!1289 = !{!191, !674, !1284}
!1290 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1291, file: !1115, line: 195)
!1291 = !DISubprogram(name: "wcstok", scope: !1121, file: !1121, line: 218, type: !1292, flags: DIFlagPrototyped, spFlags: 0)
!1292 = !DISubroutineType(types: !1293)
!1293 = !{!631, !630, !674, !1284}
!1294 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1295, file: !1115, line: 196)
!1295 = !DISubprogram(name: "wcstol", scope: !1121, file: !1121, line: 429, type: !1296, flags: DIFlagPrototyped, spFlags: 0)
!1296 = !DISubroutineType(types: !1297)
!1297 = !{!556, !674, !1284, !30}
!1298 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1299, file: !1115, line: 197)
!1299 = !DISubprogram(name: "wcstoul", scope: !1121, file: !1121, line: 434, type: !1300, flags: DIFlagPrototyped, spFlags: 0)
!1300 = !DISubroutineType(types: !1301)
!1301 = !{!463, !674, !1284, !30}
!1302 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1303, file: !1115, line: 198)
!1303 = !DISubprogram(name: "wcsxfrm", scope: !1121, file: !1121, line: 135, type: !1304, flags: DIFlagPrototyped, spFlags: 0)
!1304 = !DISubroutineType(types: !1305)
!1305 = !{!461, !630, !674, !461}
!1306 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1307, file: !1115, line: 199)
!1307 = !DISubprogram(name: "wctob", scope: !1121, file: !1121, line: 289, type: !1308, flags: DIFlagPrototyped, spFlags: 0)
!1308 = !DISubroutineType(types: !1309)
!1309 = !{!30, !1117}
!1310 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1311, file: !1115, line: 200)
!1311 = !DISubprogram(name: "wmemcmp", scope: !1121, file: !1121, line: 259, type: !1268, flags: DIFlagPrototyped, spFlags: 0)
!1312 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1313, file: !1115, line: 201)
!1313 = !DISubprogram(name: "wmemcpy", scope: !1121, file: !1121, line: 263, type: !1264, flags: DIFlagPrototyped, spFlags: 0)
!1314 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1315, file: !1115, line: 202)
!1315 = !DISubprogram(name: "wmemmove", scope: !1121, file: !1121, line: 268, type: !1316, flags: DIFlagPrototyped, spFlags: 0)
!1316 = !DISubroutineType(types: !1317)
!1317 = !{!631, !631, !675, !461}
!1318 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1319, file: !1115, line: 203)
!1319 = !DISubprogram(name: "wmemset", scope: !1121, file: !1121, line: 272, type: !1320, flags: DIFlagPrototyped, spFlags: 0)
!1320 = !DISubroutineType(types: !1321)
!1321 = !{!631, !631, !632, !461}
!1322 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1323, file: !1115, line: 204)
!1323 = !DISubprogram(name: "wprintf", scope: !1121, file: !1121, line: 602, type: !1324, flags: DIFlagPrototyped, spFlags: 0)
!1324 = !DISubroutineType(types: !1325)
!1325 = !{!30, !674, null}
!1326 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1327, file: !1115, line: 205)
!1327 = !DISubprogram(name: "wscanf", linkageName: "__isoc99_wscanf", scope: !1121, file: !1121, line: 661, type: !1324, flags: DIFlagPrototyped, spFlags: 0)
!1328 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1329, file: !1115, line: 206)
!1329 = !DISubprogram(name: "wcschr", scope: !1121, file: !1121, line: 165, type: !1330, flags: DIFlagPrototyped, spFlags: 0)
!1330 = !DISubroutineType(types: !1331)
!1331 = !{!631, !675, !632}
!1332 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1333, file: !1115, line: 207)
!1333 = !DISubprogram(name: "wcspbrk", scope: !1121, file: !1121, line: 202, type: !1334, flags: DIFlagPrototyped, spFlags: 0)
!1334 = !DISubroutineType(types: !1335)
!1335 = !{!631, !675, !675}
!1336 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1337, file: !1115, line: 208)
!1337 = !DISubprogram(name: "wcsrchr", scope: !1121, file: !1121, line: 175, type: !1330, flags: DIFlagPrototyped, spFlags: 0)
!1338 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1339, file: !1115, line: 209)
!1339 = !DISubprogram(name: "wcsstr", scope: !1121, file: !1121, line: 213, type: !1334, flags: DIFlagPrototyped, spFlags: 0)
!1340 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1341, file: !1115, line: 210)
!1341 = !DISubprogram(name: "wmemchr", scope: !1121, file: !1121, line: 254, type: !1342, flags: DIFlagPrototyped, spFlags: 0)
!1342 = !DISubroutineType(types: !1343)
!1343 = !{!631, !675, !632, !461}
!1344 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !682, entity: !1345, file: !1115, line: 251)
!1345 = !DISubprogram(name: "wcstold", scope: !1121, file: !1121, line: 385, type: !1346, flags: DIFlagPrototyped, spFlags: 0)
!1346 = !DISubroutineType(types: !1347)
!1347 = !{!720, !674, !1284}
!1348 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !682, entity: !1349, file: !1115, line: 260)
!1349 = !DISubprogram(name: "wcstoll", scope: !1121, file: !1121, line: 442, type: !1350, flags: DIFlagPrototyped, spFlags: 0)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{!687, !674, !1284, !30}
!1352 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !682, entity: !1353, file: !1115, line: 261)
!1353 = !DISubprogram(name: "wcstoull", scope: !1121, file: !1121, line: 449, type: !1354, flags: DIFlagPrototyped, spFlags: 0)
!1354 = !DISubroutineType(types: !1355)
!1355 = !{!711, !674, !1284, !30}
!1356 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1345, file: !1115, line: 267)
!1357 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1349, file: !1115, line: 268)
!1358 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1353, file: !1115, line: 269)
!1359 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1287, file: !1115, line: 283)
!1360 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1215, file: !1115, line: 286)
!1361 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1221, file: !1115, line: 289)
!1362 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1229, file: !1115, line: 292)
!1363 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1345, file: !1115, line: 296)
!1364 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1349, file: !1115, line: 297)
!1365 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1353, file: !1115, line: 298)
!1366 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1367, file: !1368, line: 68)
!1367 = !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !1369, file: !1368, line: 90, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!1368 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/exception_ptr.h", directory: "", checksumkind: CSK_MD5, checksum: "ed433011c81450fc2dabd9aa8a29a038")
!1369 = !DINamespace(name: "__exception_ptr", scope: !2)
!1370 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !1369, entity: !1371, file: !1368, line: 84)
!1371 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !2, file: !1368, line: 80, type: !1372, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!1372 = !DISubroutineType(types: !1373)
!1373 = !{null, !1367}
!1374 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !1375, entity: !1376, file: !1377, line: 58)
!1375 = !DINamespace(name: "__gnu_debug", scope: null)
!1376 = !DINamespace(name: "__debug", scope: !2)
!1377 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/debug/debug.h", directory: "", checksumkind: CSK_MD5, checksum: "982c0103e1e5f86b0818efdfc5273c3c")
!1378 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1379, file: !1384, line: 47)
!1379 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !1380, line: 24, baseType: !1381)
!1380 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!1381 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !1382, line: 37, baseType: !1383)
!1382 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!1383 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1384 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cstdint", directory: "")
!1385 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1386, file: !1384, line: 48)
!1386 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !1380, line: 25, baseType: !1387)
!1387 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !1382, line: 39, baseType: !1388)
!1388 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1389 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1390, file: !1384, line: 49)
!1390 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !1380, line: 26, baseType: !1391)
!1391 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !1382, line: 41, baseType: !30)
!1392 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1393, file: !1384, line: 50)
!1393 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !1380, line: 27, baseType: !1394)
!1394 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !1382, line: 44, baseType: !556)
!1395 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1396, file: !1384, line: 52)
!1396 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !1397, line: 58, baseType: !1383)
!1397 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!1398 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1399, file: !1384, line: 53)
!1399 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !1397, line: 60, baseType: !556)
!1400 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1401, file: !1384, line: 54)
!1401 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !1397, line: 61, baseType: !556)
!1402 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1403, file: !1384, line: 55)
!1403 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !1397, line: 62, baseType: !556)
!1404 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1405, file: !1384, line: 57)
!1405 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !1397, line: 43, baseType: !1406)
!1406 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least8_t", file: !1382, line: 52, baseType: !1381)
!1407 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1408, file: !1384, line: 58)
!1408 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !1397, line: 44, baseType: !1409)
!1409 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least16_t", file: !1382, line: 54, baseType: !1387)
!1410 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1411, file: !1384, line: 59)
!1411 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !1397, line: 45, baseType: !1412)
!1412 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least32_t", file: !1382, line: 56, baseType: !1391)
!1413 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1414, file: !1384, line: 60)
!1414 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !1397, line: 46, baseType: !1415)
!1415 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least64_t", file: !1382, line: 58, baseType: !1394)
!1416 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1417, file: !1384, line: 62)
!1417 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !1397, line: 101, baseType: !1418)
!1418 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1382, line: 72, baseType: !556)
!1419 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1420, file: !1384, line: 63)
!1420 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !1397, line: 87, baseType: !556)
!1421 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1422, file: !1384, line: 65)
!1422 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !1423, line: 24, baseType: !1424)
!1423 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!1424 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !1382, line: 38, baseType: !16)
!1425 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1426, file: !1384, line: 66)
!1426 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !1423, line: 25, baseType: !1427)
!1427 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !1382, line: 40, baseType: !1428)
!1428 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1429 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1430, file: !1384, line: 67)
!1430 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !1423, line: 26, baseType: !1431)
!1431 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !1382, line: 42, baseType: !653)
!1432 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1433, file: !1384, line: 68)
!1433 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !1423, line: 27, baseType: !1434)
!1434 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !1382, line: 45, baseType: !463)
!1435 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1436, file: !1384, line: 70)
!1436 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !1397, line: 71, baseType: !16)
!1437 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1438, file: !1384, line: 71)
!1438 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !1397, line: 73, baseType: !463)
!1439 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1440, file: !1384, line: 72)
!1440 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !1397, line: 74, baseType: !463)
!1441 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1442, file: !1384, line: 73)
!1442 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !1397, line: 75, baseType: !463)
!1443 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1444, file: !1384, line: 75)
!1444 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !1397, line: 49, baseType: !1445)
!1445 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least8_t", file: !1382, line: 53, baseType: !1424)
!1446 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1447, file: !1384, line: 76)
!1447 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !1397, line: 50, baseType: !1448)
!1448 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least16_t", file: !1382, line: 55, baseType: !1427)
!1449 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1450, file: !1384, line: 77)
!1450 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !1397, line: 51, baseType: !1451)
!1451 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !1382, line: 57, baseType: !1431)
!1452 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1453, file: !1384, line: 78)
!1453 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !1397, line: 52, baseType: !1454)
!1454 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least64_t", file: !1382, line: 59, baseType: !1434)
!1455 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1456, file: !1384, line: 80)
!1456 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1397, line: 102, baseType: !1457)
!1457 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1382, line: 73, baseType: !463)
!1458 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1459, file: !1384, line: 81)
!1459 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !1397, line: 90, baseType: !463)
!1460 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1461, file: !1463, line: 53)
!1461 = !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !1462, line: 51, size: 768, flags: DIFlagFwdDecl, identifier: "_ZTS5lconv")
!1462 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1463 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/clocale", directory: "")
!1464 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1465, file: !1463, line: 54)
!1465 = !DISubprogram(name: "setlocale", scope: !1462, file: !1462, line: 122, type: !1466, flags: DIFlagPrototyped, spFlags: 0)
!1466 = !DISubroutineType(types: !1467)
!1467 = !{!12, !30, !490}
!1468 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1469, file: !1463, line: 55)
!1469 = !DISubprogram(name: "localeconv", scope: !1462, file: !1462, line: 125, type: !1470, flags: DIFlagPrototyped, spFlags: 0)
!1470 = !DISubroutineType(types: !1471)
!1471 = !{!1472}
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1461, size: 64)
!1473 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1474, file: !1476, line: 64)
!1474 = !DISubprogram(name: "isalnum", scope: !1475, file: !1475, line: 108, type: !544, flags: DIFlagPrototyped, spFlags: 0)
!1475 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!1476 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cctype", directory: "")
!1477 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1478, file: !1476, line: 65)
!1478 = !DISubprogram(name: "isalpha", scope: !1475, file: !1475, line: 109, type: !544, flags: DIFlagPrototyped, spFlags: 0)
!1479 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1480, file: !1476, line: 66)
!1480 = !DISubprogram(name: "iscntrl", scope: !1475, file: !1475, line: 110, type: !544, flags: DIFlagPrototyped, spFlags: 0)
!1481 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1482, file: !1476, line: 67)
!1482 = !DISubprogram(name: "isdigit", scope: !1475, file: !1475, line: 111, type: !544, flags: DIFlagPrototyped, spFlags: 0)
!1483 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1484, file: !1476, line: 68)
!1484 = !DISubprogram(name: "isgraph", scope: !1475, file: !1475, line: 113, type: !544, flags: DIFlagPrototyped, spFlags: 0)
!1485 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1486, file: !1476, line: 69)
!1486 = !DISubprogram(name: "islower", scope: !1475, file: !1475, line: 112, type: !544, flags: DIFlagPrototyped, spFlags: 0)
!1487 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1488, file: !1476, line: 70)
!1488 = !DISubprogram(name: "isprint", scope: !1475, file: !1475, line: 114, type: !544, flags: DIFlagPrototyped, spFlags: 0)
!1489 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1490, file: !1476, line: 71)
!1490 = !DISubprogram(name: "ispunct", scope: !1475, file: !1475, line: 115, type: !544, flags: DIFlagPrototyped, spFlags: 0)
!1491 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1492, file: !1476, line: 72)
!1492 = !DISubprogram(name: "isspace", scope: !1475, file: !1475, line: 116, type: !544, flags: DIFlagPrototyped, spFlags: 0)
!1493 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1494, file: !1476, line: 73)
!1494 = !DISubprogram(name: "isupper", scope: !1475, file: !1475, line: 117, type: !544, flags: DIFlagPrototyped, spFlags: 0)
!1495 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1496, file: !1476, line: 74)
!1496 = !DISubprogram(name: "isxdigit", scope: !1475, file: !1475, line: 118, type: !544, flags: DIFlagPrototyped, spFlags: 0)
!1497 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1498, file: !1476, line: 75)
!1498 = !DISubprogram(name: "tolower", scope: !1475, file: !1475, line: 122, type: !544, flags: DIFlagPrototyped, spFlags: 0)
!1499 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1500, file: !1476, line: 76)
!1500 = !DISubprogram(name: "toupper", scope: !1475, file: !1475, line: 125, type: !544, flags: DIFlagPrototyped, spFlags: 0)
!1501 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1502, file: !1476, line: 87)
!1502 = !DISubprogram(name: "isblank", scope: !1475, file: !1475, line: 130, type: !544, flags: DIFlagPrototyped, spFlags: 0)
!1503 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1504, file: !1506, line: 98)
!1504 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1505, line: 7, baseType: !1131)
!1505 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!1506 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cstdio", directory: "")
!1507 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1508, file: !1506, line: 99)
!1508 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !1509, line: 84, baseType: !1510)
!1509 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!1510 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fpos_t", file: !1511, line: 14, baseType: !1512)
!1511 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h", directory: "", checksumkind: CSK_MD5, checksum: "32de8bdaf3551a6c0a9394f9af4389ce")
!1512 = !DICompositeType(tag: DW_TAG_structure_type, name: "_G_fpos_t", file: !1511, line: 10, size: 128, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
!1513 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1514, file: !1506, line: 101)
!1514 = !DISubprogram(name: "clearerr", scope: !1509, file: !1509, line: 786, type: !1515, flags: DIFlagPrototyped, spFlags: 0)
!1515 = !DISubroutineType(types: !1516)
!1516 = !{null, !1517}
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1518 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1519, file: !1506, line: 102)
!1519 = !DISubprogram(name: "fclose", scope: !1509, file: !1509, line: 178, type: !1520, flags: DIFlagPrototyped, spFlags: 0)
!1520 = !DISubroutineType(types: !1521)
!1521 = !{!30, !1517}
!1522 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1523, file: !1506, line: 103)
!1523 = !DISubprogram(name: "feof", scope: !1509, file: !1509, line: 788, type: !1520, flags: DIFlagPrototyped, spFlags: 0)
!1524 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1525, file: !1506, line: 104)
!1525 = !DISubprogram(name: "ferror", scope: !1509, file: !1509, line: 790, type: !1520, flags: DIFlagPrototyped, spFlags: 0)
!1526 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1527, file: !1506, line: 105)
!1527 = !DISubprogram(name: "fflush", scope: !1509, file: !1509, line: 230, type: !1520, flags: DIFlagPrototyped, spFlags: 0)
!1528 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1529, file: !1506, line: 106)
!1529 = !DISubprogram(name: "fgetc", scope: !1509, file: !1509, line: 513, type: !1520, flags: DIFlagPrototyped, spFlags: 0)
!1530 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1531, file: !1506, line: 107)
!1531 = !DISubprogram(name: "fgetpos", scope: !1509, file: !1509, line: 760, type: !1532, flags: DIFlagPrototyped, spFlags: 0)
!1532 = !DISubroutineType(types: !1533)
!1533 = !{!30, !1534, !1535}
!1534 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1517)
!1535 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1536)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1537 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1538, file: !1506, line: 108)
!1538 = !DISubprogram(name: "fgets", scope: !1509, file: !1509, line: 592, type: !1539, flags: DIFlagPrototyped, spFlags: 0)
!1539 = !DISubroutineType(types: !1540)
!1540 = !{!12, !488, !30, !1534}
!1541 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1542, file: !1506, line: 109)
!1542 = !DISubprogram(name: "fopen", scope: !1509, file: !1509, line: 258, type: !1543, flags: DIFlagPrototyped, spFlags: 0)
!1543 = !DISubroutineType(types: !1544)
!1544 = !{!1517, !489, !489}
!1545 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1546, file: !1506, line: 110)
!1546 = !DISubprogram(name: "fprintf", scope: !1509, file: !1509, line: 350, type: !1547, flags: DIFlagPrototyped, spFlags: 0)
!1547 = !DISubroutineType(types: !1548)
!1548 = !{!30, !1534, !489, null}
!1549 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1550, file: !1506, line: 111)
!1550 = !DISubprogram(name: "fputc", scope: !1509, file: !1509, line: 549, type: !1551, flags: DIFlagPrototyped, spFlags: 0)
!1551 = !DISubroutineType(types: !1552)
!1552 = !{!30, !30, !1517}
!1553 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1554, file: !1506, line: 112)
!1554 = !DISubprogram(name: "fputs", scope: !1509, file: !1509, line: 655, type: !1555, flags: DIFlagPrototyped, spFlags: 0)
!1555 = !DISubroutineType(types: !1556)
!1556 = !{!30, !489, !1534}
!1557 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1558, file: !1506, line: 113)
!1558 = !DISubprogram(name: "fread", scope: !1509, file: !1509, line: 675, type: !1559, flags: DIFlagPrototyped, spFlags: 0)
!1559 = !DISubroutineType(types: !1560)
!1560 = !{!461, !474, !461, !461, !1534}
!1561 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1562, file: !1506, line: 114)
!1562 = !DISubprogram(name: "freopen", scope: !1509, file: !1509, line: 265, type: !1563, flags: DIFlagPrototyped, spFlags: 0)
!1563 = !DISubroutineType(types: !1564)
!1564 = !{!1517, !489, !489, !1534}
!1565 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1566, file: !1506, line: 115)
!1566 = !DISubprogram(name: "fscanf", linkageName: "__isoc99_fscanf", scope: !1509, file: !1509, line: 434, type: !1547, flags: DIFlagPrototyped, spFlags: 0)
!1567 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1568, file: !1506, line: 116)
!1568 = !DISubprogram(name: "fseek", scope: !1509, file: !1509, line: 713, type: !1569, flags: DIFlagPrototyped, spFlags: 0)
!1569 = !DISubroutineType(types: !1570)
!1570 = !{!30, !1517, !556, !30}
!1571 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1572, file: !1506, line: 117)
!1572 = !DISubprogram(name: "fsetpos", scope: !1509, file: !1509, line: 765, type: !1573, flags: DIFlagPrototyped, spFlags: 0)
!1573 = !DISubroutineType(types: !1574)
!1574 = !{!30, !1517, !1575}
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64)
!1576 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1508)
!1577 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1578, file: !1506, line: 118)
!1578 = !DISubprogram(name: "ftell", scope: !1509, file: !1509, line: 718, type: !1579, flags: DIFlagPrototyped, spFlags: 0)
!1579 = !DISubroutineType(types: !1580)
!1580 = !{!556, !1517}
!1581 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1582, file: !1506, line: 119)
!1582 = !DISubprogram(name: "fwrite", scope: !1509, file: !1509, line: 681, type: !1583, flags: DIFlagPrototyped, spFlags: 0)
!1583 = !DISubroutineType(types: !1584)
!1584 = !{!461, !475, !461, !461, !1534}
!1585 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1586, file: !1506, line: 120)
!1586 = !DISubprogram(name: "getc", scope: !1509, file: !1509, line: 514, type: !1520, flags: DIFlagPrototyped, spFlags: 0)
!1587 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1588, file: !1506, line: 121)
!1588 = !DISubprogram(name: "getchar", scope: !1509, file: !1509, line: 520, type: !85, flags: DIFlagPrototyped, spFlags: 0)
!1589 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1590, file: !1506, line: 124)
!1590 = !DISubprogram(name: "gets", scope: !1509, file: !1509, line: 605, type: !1591, flags: DIFlagPrototyped, spFlags: 0)
!1591 = !DISubroutineType(types: !1592)
!1592 = !{!12, !12}
!1593 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1594, file: !1506, line: 126)
!1594 = !DISubprogram(name: "perror", scope: !1509, file: !1509, line: 804, type: !1595, flags: DIFlagPrototyped, spFlags: 0)
!1595 = !DISubroutineType(types: !1596)
!1596 = !{null, !490}
!1597 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1598, file: !1506, line: 127)
!1598 = !DISubprogram(name: "printf", scope: !1509, file: !1509, line: 356, type: !1599, flags: DIFlagPrototyped, spFlags: 0)
!1599 = !DISubroutineType(types: !1600)
!1600 = !{!30, !489, null}
!1601 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1602, file: !1506, line: 128)
!1602 = !DISubprogram(name: "putc", scope: !1509, file: !1509, line: 550, type: !1551, flags: DIFlagPrototyped, spFlags: 0)
!1603 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1604, file: !1506, line: 129)
!1604 = !DISubprogram(name: "putchar", scope: !1509, file: !1509, line: 556, type: !544, flags: DIFlagPrototyped, spFlags: 0)
!1605 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1606, file: !1506, line: 130)
!1606 = !DISubprogram(name: "puts", scope: !1509, file: !1509, line: 661, type: !576, flags: DIFlagPrototyped, spFlags: 0)
!1607 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1608, file: !1506, line: 131)
!1608 = !DISubprogram(name: "remove", scope: !1509, file: !1509, line: 152, type: !576, flags: DIFlagPrototyped, spFlags: 0)
!1609 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1610, file: !1506, line: 132)
!1610 = !DISubprogram(name: "rename", scope: !1509, file: !1509, line: 154, type: !493, flags: DIFlagPrototyped, spFlags: 0)
!1611 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1612, file: !1506, line: 133)
!1612 = !DISubprogram(name: "rewind", scope: !1509, file: !1509, line: 723, type: !1515, flags: DIFlagPrototyped, spFlags: 0)
!1613 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1614, file: !1506, line: 134)
!1614 = !DISubprogram(name: "scanf", linkageName: "__isoc99_scanf", scope: !1509, file: !1509, line: 437, type: !1599, flags: DIFlagPrototyped, spFlags: 0)
!1615 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1616, file: !1506, line: 135)
!1616 = !DISubprogram(name: "setbuf", scope: !1509, file: !1509, line: 328, type: !1617, flags: DIFlagPrototyped, spFlags: 0)
!1617 = !DISubroutineType(types: !1618)
!1618 = !{null, !1534, !488}
!1619 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1620, file: !1506, line: 136)
!1620 = !DISubprogram(name: "setvbuf", scope: !1509, file: !1509, line: 332, type: !1621, flags: DIFlagPrototyped, spFlags: 0)
!1621 = !DISubroutineType(types: !1622)
!1622 = !{!30, !1534, !488, !30, !461}
!1623 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1624, file: !1506, line: 137)
!1624 = !DISubprogram(name: "sprintf", scope: !1509, file: !1509, line: 358, type: !1625, flags: DIFlagPrototyped, spFlags: 0)
!1625 = !DISubroutineType(types: !1626)
!1626 = !{!30, !488, !489, null}
!1627 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1628, file: !1506, line: 138)
!1628 = !DISubprogram(name: "sscanf", linkageName: "__isoc99_sscanf", scope: !1509, file: !1509, line: 439, type: !1629, flags: DIFlagPrototyped, spFlags: 0)
!1629 = !DISubroutineType(types: !1630)
!1630 = !{!30, !489, !489, null}
!1631 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1632, file: !1506, line: 139)
!1632 = !DISubprogram(name: "tmpfile", scope: !1509, file: !1509, line: 188, type: !1633, flags: DIFlagPrototyped, spFlags: 0)
!1633 = !DISubroutineType(types: !1634)
!1634 = !{!1517}
!1635 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1636, file: !1506, line: 141)
!1636 = !DISubprogram(name: "tmpnam", scope: !1509, file: !1509, line: 205, type: !1591, flags: DIFlagPrototyped, spFlags: 0)
!1637 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1638, file: !1506, line: 143)
!1638 = !DISubprogram(name: "ungetc", scope: !1509, file: !1509, line: 668, type: !1551, flags: DIFlagPrototyped, spFlags: 0)
!1639 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1640, file: !1506, line: 144)
!1640 = !DISubprogram(name: "vfprintf", scope: !1509, file: !1509, line: 365, type: !1641, flags: DIFlagPrototyped, spFlags: 0)
!1641 = !DISubroutineType(types: !1642)
!1642 = !{!30, !1534, !489, !1206}
!1643 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1644, file: !1506, line: 145)
!1644 = !DISubprogram(name: "vprintf", scope: !1509, file: !1509, line: 371, type: !1645, flags: DIFlagPrototyped, spFlags: 0)
!1645 = !DISubroutineType(types: !1646)
!1646 = !{!30, !489, !1206}
!1647 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1648, file: !1506, line: 146)
!1648 = !DISubprogram(name: "vsprintf", scope: !1509, file: !1509, line: 373, type: !1649, flags: DIFlagPrototyped, spFlags: 0)
!1649 = !DISubroutineType(types: !1650)
!1650 = !{!30, !488, !489, !1206}
!1651 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !682, entity: !1652, file: !1506, line: 175)
!1652 = !DISubprogram(name: "snprintf", scope: !1509, file: !1509, line: 378, type: !1653, flags: DIFlagPrototyped, spFlags: 0)
!1653 = !DISubroutineType(types: !1654)
!1654 = !{!30, !488, !461, !489, null}
!1655 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !682, entity: !1656, file: !1506, line: 176)
!1656 = !DISubprogram(name: "vfscanf", linkageName: "__isoc99_vfscanf", scope: !1509, file: !1509, line: 479, type: !1641, flags: DIFlagPrototyped, spFlags: 0)
!1657 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !682, entity: !1658, file: !1506, line: 177)
!1658 = !DISubprogram(name: "vscanf", linkageName: "__isoc99_vscanf", scope: !1509, file: !1509, line: 484, type: !1645, flags: DIFlagPrototyped, spFlags: 0)
!1659 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !682, entity: !1660, file: !1506, line: 178)
!1660 = !DISubprogram(name: "vsnprintf", scope: !1509, file: !1509, line: 382, type: !1661, flags: DIFlagPrototyped, spFlags: 0)
!1661 = !DISubroutineType(types: !1662)
!1662 = !{!30, !488, !461, !489, !1206}
!1663 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !682, entity: !1664, file: !1506, line: 179)
!1664 = !DISubprogram(name: "vsscanf", linkageName: "__isoc99_vsscanf", scope: !1509, file: !1509, line: 487, type: !1665, flags: DIFlagPrototyped, spFlags: 0)
!1665 = !DISubroutineType(types: !1666)
!1666 = !{!30, !489, !489, !1206}
!1667 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1652, file: !1506, line: 185)
!1668 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1656, file: !1506, line: 186)
!1669 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1658, file: !1506, line: 187)
!1670 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1660, file: !1506, line: 188)
!1671 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1664, file: !1506, line: 189)
!1672 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1673, file: !1677, line: 82)
!1673 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctrans_t", file: !1674, line: 48, baseType: !1675)
!1674 = !DIFile(filename: "/usr/include/wctype.h", directory: "", checksumkind: CSK_MD5, checksum: "9bcd8e8b8cd2078c8a6c42e262af7d7b")
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1391)
!1677 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cwctype", directory: "")
!1678 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1679, file: !1677, line: 83)
!1679 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctype_t", file: !1680, line: 38, baseType: !463)
!1680 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!1681 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1117, file: !1677, line: 84)
!1682 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1683, file: !1677, line: 86)
!1683 = !DISubprogram(name: "iswalnum", scope: !1680, file: !1680, line: 95, type: !1308, flags: DIFlagPrototyped, spFlags: 0)
!1684 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1685, file: !1677, line: 87)
!1685 = !DISubprogram(name: "iswalpha", scope: !1680, file: !1680, line: 101, type: !1308, flags: DIFlagPrototyped, spFlags: 0)
!1686 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1687, file: !1677, line: 89)
!1687 = !DISubprogram(name: "iswblank", scope: !1680, file: !1680, line: 146, type: !1308, flags: DIFlagPrototyped, spFlags: 0)
!1688 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1689, file: !1677, line: 91)
!1689 = !DISubprogram(name: "iswcntrl", scope: !1680, file: !1680, line: 104, type: !1308, flags: DIFlagPrototyped, spFlags: 0)
!1690 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1691, file: !1677, line: 92)
!1691 = !DISubprogram(name: "iswctype", scope: !1680, file: !1680, line: 159, type: !1692, flags: DIFlagPrototyped, spFlags: 0)
!1692 = !DISubroutineType(types: !1693)
!1693 = !{!30, !1117, !1679}
!1694 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1695, file: !1677, line: 93)
!1695 = !DISubprogram(name: "iswdigit", scope: !1680, file: !1680, line: 108, type: !1308, flags: DIFlagPrototyped, spFlags: 0)
!1696 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1697, file: !1677, line: 94)
!1697 = !DISubprogram(name: "iswgraph", scope: !1680, file: !1680, line: 112, type: !1308, flags: DIFlagPrototyped, spFlags: 0)
!1698 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1699, file: !1677, line: 95)
!1699 = !DISubprogram(name: "iswlower", scope: !1680, file: !1680, line: 117, type: !1308, flags: DIFlagPrototyped, spFlags: 0)
!1700 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1701, file: !1677, line: 96)
!1701 = !DISubprogram(name: "iswprint", scope: !1680, file: !1680, line: 120, type: !1308, flags: DIFlagPrototyped, spFlags: 0)
!1702 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1703, file: !1677, line: 97)
!1703 = !DISubprogram(name: "iswpunct", scope: !1680, file: !1680, line: 125, type: !1308, flags: DIFlagPrototyped, spFlags: 0)
!1704 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1705, file: !1677, line: 98)
!1705 = !DISubprogram(name: "iswspace", scope: !1680, file: !1680, line: 130, type: !1308, flags: DIFlagPrototyped, spFlags: 0)
!1706 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1707, file: !1677, line: 99)
!1707 = !DISubprogram(name: "iswupper", scope: !1680, file: !1680, line: 135, type: !1308, flags: DIFlagPrototyped, spFlags: 0)
!1708 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1709, file: !1677, line: 100)
!1709 = !DISubprogram(name: "iswxdigit", scope: !1680, file: !1680, line: 140, type: !1308, flags: DIFlagPrototyped, spFlags: 0)
!1710 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1711, file: !1677, line: 101)
!1711 = !DISubprogram(name: "towctrans", scope: !1674, file: !1674, line: 55, type: !1712, flags: DIFlagPrototyped, spFlags: 0)
!1712 = !DISubroutineType(types: !1713)
!1713 = !{!1117, !1117, !1673}
!1714 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1715, file: !1677, line: 102)
!1715 = !DISubprogram(name: "towlower", scope: !1680, file: !1680, line: 166, type: !1716, flags: DIFlagPrototyped, spFlags: 0)
!1716 = !DISubroutineType(types: !1717)
!1717 = !{!1117, !1117}
!1718 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1719, file: !1677, line: 103)
!1719 = !DISubprogram(name: "towupper", scope: !1680, file: !1680, line: 169, type: !1716, flags: DIFlagPrototyped, spFlags: 0)
!1720 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1721, file: !1677, line: 104)
!1721 = !DISubprogram(name: "wctrans", scope: !1674, file: !1674, line: 52, type: !1722, flags: DIFlagPrototyped, spFlags: 0)
!1722 = !DISubroutineType(types: !1723)
!1723 = !{!1673, !490}
!1724 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1725, file: !1677, line: 105)
!1725 = !DISubprogram(name: "wctype", scope: !1680, file: !1680, line: 155, type: !1726, flags: DIFlagPrototyped, spFlags: 0)
!1726 = !DISubroutineType(types: !1727)
!1727 = !{!1679, !490}
!1728 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !9, entity: !2, file: !1729, line: 70)
!1729 = !DIFile(filename: "RTTL/common/RTInclude.hxx", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src", checksumkind: CSK_MD5, checksum: "735b2b9337cd60438b3f1c6b71b217f1")
!1730 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !9, entity: !2, file: !20, line: 7)
!1731 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !9, entity: !2, file: !1732, line: 29)
!1732 = !DIFile(filename: "LRT/FrameBuffer/../FrameBuffer.hxx", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src", checksumkind: CSK_MD5, checksum: "e23f846ba5a3087ce7299fe1a882dfe9")
!1733 = !DIFile(filename: "RTTL/common/RTSSE.hxx", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src", checksumkind: CSK_MD5, checksum: "bbd5737e46ece2f5710eab9b8aad1d25")
!1734 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1735)
!1735 = !DIDerivedType(tag: DW_TAG_typedef, name: "sse_f", file: !187, line: 24, baseType: !186)
!1736 = !{i32 7, !"Dwarf Version", i32 5}
!1737 = !{i32 2, !"Debug Info Version", i32 3}
!1738 = !{i32 1, !"wchar_size", i32 4}
!1739 = !{i32 8, !"PIC Level", i32 2}
!1740 = !{i32 7, !"PIE Level", i32 2}
!1741 = !{i32 7, !"uwtable", i32 2}
!1742 = !{i32 7, !"frame-pointer", i32 2}
!1743 = !{!"clang version 16.0.0"}
!1744 = distinct !DISubprogram(name: "__cxx_global_var_init", scope: !1210, file: !1210, type: !560, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !1745)
!1745 = !{}
!1746 = !DILocation(line: 74, column: 25, scope: !1747)
!1747 = !DILexicalBlockFile(scope: !1744, file: !3, discriminator: 0)
!1748 = !DILocation(line: 0, scope: !1744)
!1749 = distinct !DISubprogram(name: "__cxx_global_var_init.1", scope: !1210, file: !1210, type: !560, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !1745)
!1750 = !DILocalVariable(name: "a", arg: 1, scope: !1751, file: !187, line: 622, type: !191)
!1751 = distinct !DISubprogram(name: "_mm_set_ps1", linkageName: "_ZL11_mm_set_ps1f", scope: !187, file: !187, line: 622, type: !1752, scopeLine: 622, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !1745)
!1752 = !DISubroutineType(types: !1753)
!1753 = !{!1735, !191}
!1754 = !DILocation(line: 622, column: 40, scope: !1751, inlinedAt: !1755)
!1755 = distinct !DILocation(line: 38, column: 31, scope: !1756)
!1756 = !DILexicalBlockFile(scope: !1749, file: !1733, discriminator: 0)
!1757 = !DILocalVariable(name: "result", scope: !1751, file: !187, line: 623, type: !1735)
!1758 = !DILocation(line: 623, column: 11, scope: !1751, inlinedAt: !1755)
!1759 = !DILocalVariable(name: "i", scope: !1760, file: !187, line: 626, type: !30)
!1760 = distinct !DILexicalBlock(scope: !1751, file: !187, line: 626, column: 5)
!1761 = !DILocation(line: 626, column: 14, scope: !1760, inlinedAt: !1755)
!1762 = !DILocation(line: 626, column: 10, scope: !1760, inlinedAt: !1755)
!1763 = !DILocation(line: 626, column: 21, scope: !1764, inlinedAt: !1755)
!1764 = distinct !DILexicalBlock(scope: !1760, file: !187, line: 626, column: 5)
!1765 = !DILocation(line: 626, column: 23, scope: !1764, inlinedAt: !1755)
!1766 = !DILocation(line: 626, column: 5, scope: !1760, inlinedAt: !1755)
!1767 = !DILocation(line: 627, column: 23, scope: !1764, inlinedAt: !1755)
!1768 = !DILocation(line: 627, column: 18, scope: !1764, inlinedAt: !1755)
!1769 = !DILocation(line: 627, column: 9, scope: !1764, inlinedAt: !1755)
!1770 = !DILocation(line: 627, column: 21, scope: !1764, inlinedAt: !1755)
!1771 = !DILocation(line: 626, column: 39, scope: !1764, inlinedAt: !1755)
!1772 = !DILocation(line: 626, column: 5, scope: !1764, inlinedAt: !1755)
!1773 = distinct !{!1773, !1766, !1774, !1775}
!1774 = !DILocation(line: 627, column: 23, scope: !1760, inlinedAt: !1755)
!1775 = !{!"llvm.loop.mustprogress"}
!1776 = !DILocation(line: 629, column: 5, scope: !1751, inlinedAt: !1755)
!1777 = !DILocation(line: 38, column: 31, scope: !1756)
!1778 = !DILocation(line: 38, column: 43, scope: !1756)
!1779 = distinct !DISubprogram(name: "create", linkageName: "_ZN3LRT14PBOFrameBuffer6createEv", scope: !1780, file: !360, line: 48, type: !1788, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !1787, retainedNodes: !1745)
!1780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PBOFrameBuffer", scope: !185, file: !1781, line: 12, size: 384, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1782, vtableHolder: !1800)
!1781 = !DIFile(filename: "LRT/FrameBuffer/PBOFrameBuffer.hxx", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src", checksumkind: CSK_MD5, checksum: "15d01c69e16c40d3d99eabb4fc3c02e2")
!1782 = !{!1783, !1784, !1787, !1791, !1795, !1798, !1799}
!1783 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1780, baseType: !183, extraData: i32 0)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "fbPBO", scope: !1780, file: !1781, line: 17, baseType: !1785, size: 32, offset: 352)
!1785 = !DIDerivedType(tag: DW_TAG_typedef, name: "GLuint", file: !1786, line: 125, baseType: !653)
!1786 = !DIFile(filename: "/usr/include/GL/gl.h", directory: "", checksumkind: CSK_MD5, checksum: "4fc52ea6002b22ad952bb66df2bdf3e5")
!1787 = !DISubprogram(name: "create", linkageName: "_ZN3LRT14PBOFrameBuffer6createEv", scope: !1780, file: !1781, line: 15, type: !1788, scopeLine: 15, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!1788 = !DISubroutineType(types: !1789)
!1789 = !{!1790}
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1791 = !DISubprogram(name: "PBOFrameBuffer", scope: !1780, file: !1781, line: 19, type: !1792, scopeLine: 19, flags: DIFlagPrototyped, spFlags: 0)
!1792 = !DISubroutineType(types: !1793)
!1793 = !{null, !1794}
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1795 = !DISubprogram(name: "resize", linkageName: "_ZN3LRT14PBOFrameBuffer6resizeEii", scope: !1780, file: !1781, line: 20, type: !1796, scopeLine: 20, containingType: !1780, virtualIndex: 0, flags: DIFlagPrototyped, spFlags: DISPFlagVirtual)
!1796 = !DISubroutineType(types: !1797)
!1797 = !{null, !1794, !30, !30}
!1798 = !DISubprogram(name: "startNewFrame", linkageName: "_ZN3LRT14PBOFrameBuffer13startNewFrameEv", scope: !1780, file: !1781, line: 22, type: !1792, scopeLine: 22, containingType: !1780, virtualIndex: 1, flags: DIFlagPrototyped, spFlags: DISPFlagVirtual)
!1799 = !DISubprogram(name: "doneWithFrame", linkageName: "_ZN3LRT14PBOFrameBuffer13doneWithFrameEv", scope: !1780, file: !1781, line: 23, type: !1792, scopeLine: 23, containingType: !1780, virtualIndex: 2, flags: DIFlagPrototyped, spFlags: DISPFlagVirtual)
!1800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RGBAucharFrameBuffer", scope: !185, file: !1732, line: 46, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1801, vtableHolder: !1800, identifier: "_ZTSN3LRT20RGBAucharFrameBufferE")
!1801 = !{!1802, !1805, !1808, !1809, !1813, !1822, !1825, !1829, !1832, !1833, !1834}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$RGBAucharFrameBuffer", scope: !1732, file: !1732, baseType: !1803, size: 64, flags: DIFlagArtificial)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "__vtbl_ptr_type", baseType: !85, size: 64)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "res", scope: !1800, file: !1732, line: 67, baseType: !1806, size: 64, offset: 64)
!1806 = !DIDerivedType(tag: DW_TAG_typedef, name: "vec2i", scope: !185, file: !1732, line: 33, baseType: !1807)
!1807 = !DIDerivedType(tag: DW_TAG_typedef, name: "RTVec2i", scope: !21, file: !20, line: 271, baseType: !19)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "fb", scope: !1800, file: !1732, line: 68, baseType: !15, size: 64, offset: 128)
!1809 = !DISubprogram(name: "RGBAucharFrameBuffer", scope: !1800, file: !1732, line: 70, type: !1810, scopeLine: 70, flags: DIFlagPrototyped, spFlags: 0)
!1810 = !DISubroutineType(types: !1811)
!1811 = !{null, !1812}
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1813 = !DISubprogram(name: "writeBlock", linkageName: "_ZNK3LRT20RGBAucharFrameBuffer10writeBlockEiiiiPK5sse_i", scope: !1800, file: !1732, line: 74, type: !1814, scopeLine: 74, flags: DIFlagPrototyped, spFlags: 0)
!1814 = !DISubroutineType(types: !1815)
!1815 = !{null, !1816, !43, !43, !43, !43, !1818}
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1817 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1800)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1820)
!1820 = !DIDerivedType(tag: DW_TAG_typedef, name: "sse_i", file: !187, line: 42, baseType: !1821)
!1821 = !DICompositeType(tag: DW_TAG_structure_type, name: "sse_i", file: !187, line: 34, size: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS5sse_i")
!1822 = !DISubprogram(name: "prefetchBlock", linkageName: "_ZNK3LRT20RGBAucharFrameBuffer13prefetchBlockEiiii", scope: !1800, file: !1732, line: 78, type: !1823, scopeLine: 78, flags: DIFlagPrototyped, spFlags: 0)
!1823 = !DISubroutineType(types: !1824)
!1824 = !{null, !1816, !43, !43, !43, !43}
!1825 = !DISubprogram(name: "create", linkageName: "_ZN3LRT20RGBAucharFrameBuffer6createEv", scope: !1800, file: !1732, line: 82, type: !1826, scopeLine: 82, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!1826 = !DISubroutineType(types: !1827)
!1827 = !{!1828}
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1829 = !DISubprogram(name: "resize", linkageName: "_ZN3LRT20RGBAucharFrameBuffer6resizeEii", scope: !1800, file: !1732, line: 90, type: !1830, scopeLine: 90, containingType: !1800, virtualIndex: 0, flags: DIFlagPrototyped, spFlags: DISPFlagVirtual)
!1830 = !DISubroutineType(types: !1831)
!1831 = !{null, !1812, !30, !30}
!1832 = !DISubprogram(name: "startNewFrame", linkageName: "_ZN3LRT20RGBAucharFrameBuffer13startNewFrameEv", scope: !1800, file: !1732, line: 104, type: !1810, scopeLine: 104, containingType: !1800, virtualIndex: 1, flags: DIFlagPrototyped, spFlags: DISPFlagPureVirtual)
!1833 = !DISubprogram(name: "doneWithFrame", linkageName: "_ZN3LRT20RGBAucharFrameBuffer13doneWithFrameEv", scope: !1800, file: !1732, line: 105, type: !1810, scopeLine: 105, containingType: !1800, virtualIndex: 2, flags: DIFlagPrototyped, spFlags: DISPFlagPureVirtual)
!1834 = !DISubprogram(name: "display", linkageName: "_ZN3LRT20RGBAucharFrameBuffer7displayEv", scope: !1800, file: !1732, line: 106, type: !1810, scopeLine: 106, containingType: !1800, virtualIndex: 3, flags: DIFlagPrototyped, spFlags: DISPFlagPureVirtual)
!1835 = !DILocalVariable(name: "fb", scope: !1836, file: !360, line: 64, type: !1790)
!1836 = distinct !DILexicalBlock(scope: !1779, file: !360, line: 63, column: 5)
!1837 = !DILocation(line: 64, column: 23, scope: !1836)
!1838 = !DILocation(line: 64, column: 28, scope: !1836)
!1839 = !DILocation(line: 64, column: 32, scope: !1836)
!1840 = !DILocation(line: 65, column: 12, scope: !1836)
!1841 = !DILocation(line: 65, column: 56, scope: !1836)
!1842 = !DILocation(line: 66, column: 14, scope: !1836)
!1843 = !DILocation(line: 66, column: 7, scope: !1836)
!1844 = !DILocation(line: 73, column: 1, scope: !1836)
!1845 = !DILocation(line: 67, column: 5, scope: !1836)
!1846 = !DILocalVariable(name: "error", scope: !1779, file: !360, line: 68, type: !490)
!1847 = !DILocation(line: 68, column: 22, scope: !1779)
!1848 = !DILocation(line: 70, column: 12, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1779, file: !360, line: 69, column: 5)
!1850 = !DILocation(line: 70, column: 57, scope: !1849)
!1851 = !DILocation(line: 70, column: 54, scope: !1849)
!1852 = !DILocation(line: 70, column: 63, scope: !1849)
!1853 = !DILocation(line: 71, column: 7, scope: !1849)
!1854 = !DILocation(line: 72, column: 5, scope: !1849)
!1855 = !DILocation(line: 73, column: 1, scope: !1849)
!1856 = !DILocation(line: 73, column: 1, scope: !1779)
!1857 = distinct !DISubprogram(name: "resize", linkageName: "_ZN3LRT14PBOFrameBuffer6resizeEii", scope: !1780, file: !360, line: 79, type: !1796, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !1795, retainedNodes: !1745)
!1858 = !DILocalVariable(name: "this", arg: 1, scope: !1857, type: !1790, flags: DIFlagArtificial | DIFlagObjectPointer)
!1859 = !DILocation(line: 0, scope: !1857)
!1860 = !DILocalVariable(name: "newX", arg: 2, scope: !1857, file: !360, line: 79, type: !30)
!1861 = !DILocation(line: 79, column: 33, scope: !1857)
!1862 = !DILocalVariable(name: "newY", arg: 3, scope: !1857, file: !360, line: 79, type: !30)
!1863 = !DILocation(line: 79, column: 43, scope: !1857)
!1864 = !DILocation(line: 81, column: 32, scope: !1857)
!1865 = !DILocation(line: 81, column: 37, scope: !1857)
!1866 = !DILocation(line: 81, column: 25, scope: !1857)
!1867 = !DILocation(line: 85, column: 8, scope: !1857)
!1868 = !DILocation(line: 85, column: 38, scope: !1857)
!1869 = !DILocalVariable(name: "out", arg: 1, scope: !1870, file: !20, line: 256, type: !1873)
!1870 = distinct !DISubprogram(name: "operator<<<2, int, 0>", linkageName: "_ZN4RTTLlsILi2EiLi0EEERSoS1_RKNS_7RTVec_tIXT_ET0_XT1_EEE", scope: !21, file: !20, line: 256, type: !1871, scopeLine: 256, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !1878, retainedNodes: !1745)
!1871 = !DISubroutineType(types: !1872)
!1872 = !{!1873, !1873, !108}
!1873 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1874, size: 64)
!1874 = !DIDerivedType(tag: DW_TAG_typedef, name: "ostream", scope: !2, file: !1875, line: 141, baseType: !1876)
!1875 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/iosfwd", directory: "")
!1876 = !DICompositeType(tag: DW_TAG_class_type, name: "basic_ostream<char, std::char_traits<char> >", scope: !2, file: !1877, line: 359, size: 2176, flags: DIFlagFwdDecl | DIFlagNonTrivial)
!1877 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/ostream.tcc", directory: "")
!1878 = !{!88, !89, !1879}
!1879 = !DITemplateValueParameter(name: "align", type: !30, value: i32 0)
!1880 = !DILocation(line: 256, column: 42, scope: !1870, inlinedAt: !1881)
!1881 = distinct !DILocation(line: 85, column: 35, scope: !1857)
!1882 = !DILocalVariable(name: "t", arg: 2, scope: !1870, file: !20, line: 256, type: !108)
!1883 = !DILocation(line: 256, column: 82, scope: !1870, inlinedAt: !1881)
!1884 = !DILocation(line: 257, column: 9, scope: !1870, inlinedAt: !1881)
!1885 = !DILocation(line: 257, column: 13, scope: !1870, inlinedAt: !1881)
!1886 = !DILocation(line: 257, column: 23, scope: !1870, inlinedAt: !1881)
!1887 = !DILocation(line: 257, column: 20, scope: !1870, inlinedAt: !1881)
!1888 = !DILocalVariable(name: "i", scope: !1889, file: !20, line: 258, type: !30)
!1889 = distinct !DILexicalBlock(scope: !1870, file: !20, line: 258, column: 9)
!1890 = !DILocation(line: 258, column: 18, scope: !1889, inlinedAt: !1881)
!1891 = !DILocation(line: 258, column: 14, scope: !1889, inlinedAt: !1881)
!1892 = !DILocation(line: 258, column: 25, scope: !1893, inlinedAt: !1881)
!1893 = distinct !DILexicalBlock(scope: !1889, file: !20, line: 258, column: 9)
!1894 = !DILocation(line: 258, column: 27, scope: !1893, inlinedAt: !1881)
!1895 = !DILocation(line: 258, column: 9, scope: !1889, inlinedAt: !1881)
!1896 = !DILocation(line: 259, column: 13, scope: !1893, inlinedAt: !1881)
!1897 = !DILocation(line: 259, column: 17, scope: !1893, inlinedAt: !1881)
!1898 = !DILocation(line: 259, column: 27, scope: !1893, inlinedAt: !1881)
!1899 = !DILocation(line: 259, column: 29, scope: !1893, inlinedAt: !1881)
!1900 = !DILocation(line: 259, column: 24, scope: !1893, inlinedAt: !1881)
!1901 = !DILocation(line: 258, column: 33, scope: !1893, inlinedAt: !1881)
!1902 = !DILocation(line: 258, column: 9, scope: !1893, inlinedAt: !1881)
!1903 = distinct !{!1903, !1895, !1904, !1775}
!1904 = !DILocation(line: 259, column: 30, scope: !1889, inlinedAt: !1881)
!1905 = !DILocation(line: 260, column: 9, scope: !1870, inlinedAt: !1881)
!1906 = !DILocation(line: 260, column: 13, scope: !1870, inlinedAt: !1881)
!1907 = !DILocation(line: 262, column: 16, scope: !1870, inlinedAt: !1881)
!1908 = !DILocation(line: 85, column: 42, scope: !1857)
!1909 = !DILocation(line: 85, column: 49, scope: !1857)
!1910 = !DILocation(line: 86, column: 44, scope: !1857)
!1911 = !DILocation(line: 86, column: 3, scope: !1857)
!1912 = !DILocalVariable(name: "err", scope: !1913, file: !360, line: 87, type: !1914)
!1913 = distinct !DILexicalBlock(scope: !1857, file: !360, line: 87, column: 3)
!1914 = !DIDerivedType(tag: DW_TAG_typedef, name: "GLenum", file: !1786, line: 116, baseType: !653)
!1915 = !DILocation(line: 87, column: 3, scope: !1913)
!1916 = !DILocation(line: 87, column: 3, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1913, file: !360, line: 87, column: 3)
!1918 = !DILocalVariable(name: "size", scope: !1857, file: !360, line: 89, type: !43)
!1919 = !DILocation(line: 89, column: 13, scope: !1857)
!1920 = !DILocation(line: 89, column: 50, scope: !1857)
!1921 = !DILocation(line: 89, column: 54, scope: !1857)
!1922 = !DILocation(line: 89, column: 48, scope: !1857)
!1923 = !DILocation(line: 89, column: 58, scope: !1857)
!1924 = !DILocation(line: 89, column: 62, scope: !1857)
!1925 = !DILocation(line: 89, column: 56, scope: !1857)
!1926 = !DILocation(line: 89, column: 20, scope: !1857)
!1927 = !DILocation(line: 90, column: 44, scope: !1857)
!1928 = !DILocation(line: 90, column: 3, scope: !1857)
!1929 = !DILocalVariable(name: "err", scope: !1930, file: !360, line: 91, type: !1914)
!1930 = distinct !DILexicalBlock(scope: !1857, file: !360, line: 91, column: 3)
!1931 = !DILocation(line: 91, column: 3, scope: !1930)
!1932 = !DILocation(line: 91, column: 3, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1930, file: !360, line: 91, column: 3)
!1934 = !DILocation(line: 93, column: 3, scope: !1857)
!1935 = !DILocalVariable(name: "err", scope: !1936, file: !360, line: 94, type: !1914)
!1936 = distinct !DILexicalBlock(scope: !1857, file: !360, line: 94, column: 3)
!1937 = !DILocation(line: 94, column: 3, scope: !1936)
!1938 = !DILocation(line: 94, column: 3, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1936, file: !360, line: 94, column: 3)
!1940 = !DILocation(line: 106, column: 1, scope: !1857)
!1941 = distinct !DISubprogram(name: "PBOFrameBuffer", linkageName: "_ZN3LRT14PBOFrameBufferC2Ev", scope: !1780, file: !360, line: 111, type: !1792, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !1791, retainedNodes: !1745)
!1942 = !DILocalVariable(name: "this", arg: 1, scope: !1941, type: !1790, flags: DIFlagArtificial | DIFlagObjectPointer)
!1943 = !DILocation(line: 0, scope: !1941)
!1944 = !DILocation(line: 112, column: 5, scope: !1941)
!1945 = !DILocation(line: 113, column: 1, scope: !1941)
!1946 = !DILocation(line: 114, column: 8, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1941, file: !360, line: 113, column: 1)
!1948 = !DILocation(line: 114, column: 43, scope: !1947)
!1949 = !DILocation(line: 115, column: 22, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1947, file: !360, line: 115, column: 7)
!1951 = !DILocation(line: 115, column: 7, scope: !1950)
!1952 = !DILocation(line: 115, column: 72, scope: !1950)
!1953 = !DILocation(line: 115, column: 7, scope: !1947)
!1954 = !DILocation(line: 117, column: 12, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1950, file: !360, line: 116, column: 5)
!1956 = !DILocation(line: 117, column: 25, scope: !1955)
!1957 = !DILocation(line: 118, column: 12, scope: !1955)
!1958 = !DILocation(line: 118, column: 82, scope: !1955)
!1959 = !DILocation(line: 119, column: 15, scope: !1955)
!1960 = !DILocation(line: 119, column: 12, scope: !1955)
!1961 = !DILocation(line: 119, column: 42, scope: !1955)
!1962 = !DILocation(line: 123, column: 7, scope: !1955)
!1963 = !DILocation(line: 126, column: 10, scope: !1950)
!1964 = !DILocation(line: 126, column: 19, scope: !1950)
!1965 = !DILocation(line: 129, column: 20, scope: !1947)
!1966 = !DILocation(line: 129, column: 3, scope: !1947)
!1967 = !DILocalVariable(name: "err", scope: !1968, file: !360, line: 130, type: !1914)
!1968 = distinct !DILexicalBlock(scope: !1947, file: !360, line: 130, column: 3)
!1969 = !DILocation(line: 130, column: 3, scope: !1968)
!1970 = !DILocation(line: 130, column: 3, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1968, file: !360, line: 130, column: 3)
!1972 = !DILocation(line: 132, column: 7, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1947, file: !360, line: 132, column: 7)
!1974 = !DILocation(line: 132, column: 20, scope: !1973)
!1975 = !DILocation(line: 132, column: 7, scope: !1947)
!1976 = !DILocation(line: 133, column: 5, scope: !1973)
!1977 = !DILocation(line: 135, column: 1, scope: !1941)
!1978 = distinct !DISubprogram(name: "OpenGLTextureRGBA8FB", linkageName: "_ZN3LRT20OpenGLTextureRGBA8FBC2Ev", scope: !183, file: !184, line: 28, type: !1979, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !1982, retainedNodes: !1745)
!1979 = !DISubroutineType(types: !1980)
!1980 = !{null, !1981}
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1982 = !DISubprogram(name: "OpenGLTextureRGBA8FB", scope: !183, file: !184, line: 28, type: !1979, scopeLine: 28, flags: DIFlagPrototyped, spFlags: 0)
!1983 = !DILocalVariable(name: "this", arg: 1, scope: !1978, type: !1984, flags: DIFlagArtificial | DIFlagObjectPointer)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!1985 = !DILocation(line: 0, scope: !1978)
!1986 = !DILocation(line: 28, column: 3, scope: !1978)
!1987 = !DILocation(line: 29, column: 3, scope: !1978)
!1988 = !DILocation(line: 30, column: 23, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1978, file: !184, line: 29, column: 3)
!1990 = !DILocation(line: 30, column: 5, scope: !1989)
!1991 = !DILocation(line: 31, column: 34, scope: !1989)
!1992 = !DILocation(line: 31, column: 5, scope: !1989)
!1993 = !DILocation(line: 32, column: 26, scope: !1989)
!1994 = !DILocation(line: 32, column: 28, scope: !1989)
!1995 = !DILocation(line: 32, column: 20, scope: !1989)
!1996 = !DILocation(line: 32, column: 5, scope: !1989)
!1997 = !DILocalVariable(name: "this", arg: 1, scope: !1998, type: !1999, flags: DIFlagArtificial | DIFlagObjectPointer)
!1998 = distinct !DISubprogram(name: "operator=", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EEaSERKS1_", scope: !19, file: !18, line: 74, type: !106, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !105, retainedNodes: !1745)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!2000 = !DILocation(line: 0, scope: !1998, inlinedAt: !2001)
!2001 = distinct !DILocation(line: 32, column: 18, scope: !1989)
!2002 = !DILocalVariable(name: "x", arg: 2, scope: !1998, file: !18, line: 74, type: !108)
!2003 = !DILocation(line: 74, column: 53, scope: !1998, inlinedAt: !2001)
!2004 = !DILocalVariable(name: "t", scope: !1998, file: !18, line: 75, type: !161)
!2005 = !DILocation(line: 75, column: 20, scope: !1998, inlinedAt: !2001)
!2006 = !DILocation(line: 75, column: 24, scope: !1998, inlinedAt: !2001)
!2007 = !DILocalVariable(name: "xt", scope: !1998, file: !18, line: 76, type: !165)
!2008 = !DILocation(line: 76, column: 26, scope: !1998, inlinedAt: !2001)
!2009 = !DILocation(line: 76, column: 31, scope: !1998, inlinedAt: !2001)
!2010 = !DILocation(line: 77, column: 9, scope: !1998, inlinedAt: !2001)
!2011 = !DILocation(line: 77, column: 18, scope: !1998, inlinedAt: !2001)
!2012 = !DILocalVariable(name: "this", arg: 1, scope: !2013, type: !2019, flags: DIFlagArtificial | DIFlagObjectPointer)
!2013 = distinct !DISubprogram(name: "assign<2, int, 0>", linkageName: "_ZN4RTTL8RTData_tILi2EiLi0EE6assignILi2EiLi0EEEvRKNS0_IXT_ET0_XT1_EEE", scope: !26, file: !25, line: 43, type: !56, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !2015, declaration: !2014, retainedNodes: !1745)
!2014 = !DISubprogram(name: "assign<2, int, 0>", linkageName: "_ZN4RTTL8RTData_tILi2EiLi0EE6assignILi2EiLi0EEEvRKNS0_IXT_ET0_XT1_EEE", scope: !26, file: !25, line: 43, type: !56, scopeLine: 43, flags: DIFlagPrototyped, spFlags: 0, templateParams: !2015)
!2015 = !{!2016, !2017, !2018}
!2016 = !DITemplateValueParameter(name: "AnotherN", type: !30, value: i32 2)
!2017 = !DITemplateTypeParameter(name: "AnotherDataType", type: !30)
!2018 = !DITemplateValueParameter(name: "AnotherAlign", type: !30, value: i32 0)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!2020 = !DILocation(line: 0, scope: !2013, inlinedAt: !2021)
!2021 = distinct !DILocation(line: 77, column: 11, scope: !1998, inlinedAt: !2001)
!2022 = !DILocalVariable(name: "v", arg: 2, scope: !2013, file: !25, line: 43, type: !58)
!2023 = !DILocation(line: 43, column: 86, scope: !2013, inlinedAt: !2021)
!2024 = !DILocation(line: 44, column: 13, scope: !2013, inlinedAt: !2021)
!2025 = !DILocalVariable(name: "i", scope: !2026, file: !25, line: 46, type: !30)
!2026 = distinct !DILexicalBlock(scope: !2013, file: !25, line: 46, column: 13)
!2027 = !DILocation(line: 46, column: 22, scope: !2026, inlinedAt: !2021)
!2028 = !DILocation(line: 46, column: 18, scope: !2026, inlinedAt: !2021)
!2029 = !DILocation(line: 46, column: 29, scope: !2030, inlinedAt: !2021)
!2030 = distinct !DILexicalBlock(scope: !2026, file: !25, line: 46, column: 13)
!2031 = !DILocation(line: 46, column: 31, scope: !2030, inlinedAt: !2021)
!2032 = !DILocation(line: 46, column: 13, scope: !2026, inlinedAt: !2021)
!2033 = !DILocation(line: 47, column: 24, scope: !2030, inlinedAt: !2021)
!2034 = !DILocation(line: 47, column: 26, scope: !2030, inlinedAt: !2021)
!2035 = !DILocalVariable(name: "this", arg: 1, scope: !2036, type: !2037, flags: DIFlagArtificial | DIFlagObjectPointer)
!2036 = distinct !DISubprogram(name: "operator[]", linkageName: "_ZNK4RTTL8RTData_tILi2EiLi0EEixEi", scope: !26, file: !25, line: 52, type: !53, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !52, retainedNodes: !1745)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!2038 = !DILocation(line: 0, scope: !2036, inlinedAt: !2039)
!2039 = distinct !DILocation(line: 47, column: 24, scope: !2030, inlinedAt: !2021)
!2040 = !DILocalVariable(name: "index", arg: 2, scope: !2036, file: !25, line: 52, type: !30)
!2041 = !DILocation(line: 52, column: 41, scope: !2036, inlinedAt: !2039)
!2042 = !DILocation(line: 53, column: 22, scope: !2036, inlinedAt: !2039)
!2043 = !DILocation(line: 53, column: 20, scope: !2036, inlinedAt: !2039)
!2044 = !DILocation(line: 47, column: 19, scope: !2030, inlinedAt: !2021)
!2045 = !DILocation(line: 47, column: 17, scope: !2030, inlinedAt: !2021)
!2046 = !DILocation(line: 47, column: 22, scope: !2030, inlinedAt: !2021)
!2047 = !DILocation(line: 46, column: 37, scope: !2030, inlinedAt: !2021)
!2048 = !DILocation(line: 46, column: 13, scope: !2030, inlinedAt: !2021)
!2049 = distinct !{!2049, !2032, !2050, !1775}
!2050 = !DILocation(line: 47, column: 27, scope: !2026, inlinedAt: !2021)
!2051 = !DILocation(line: 33, column: 3, scope: !1978)
!2052 = distinct !DISubprogram(name: "doneWithFrame", linkageName: "_ZN3LRT14PBOFrameBuffer13doneWithFrameEv", scope: !1780, file: !360, line: 140, type: !1792, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !1799, retainedNodes: !1745)
!2053 = !DILocalVariable(name: "this", arg: 1, scope: !2052, type: !1790, flags: DIFlagArtificial | DIFlagObjectPointer)
!2054 = !DILocation(line: 0, scope: !2052)
!2055 = !DILocation(line: 143, column: 3, scope: !2052)
!2056 = !DILocation(line: 149, column: 3, scope: !2052)
!2057 = !DILocalVariable(name: "err", scope: !2058, file: !360, line: 150, type: !1914)
!2058 = distinct !DILexicalBlock(scope: !2052, file: !360, line: 150, column: 3)
!2059 = !DILocation(line: 150, column: 3, scope: !2058)
!2060 = !DILocation(line: 150, column: 3, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !2058, file: !360, line: 150, column: 3)
!2062 = !DILocation(line: 164, column: 44, scope: !2052)
!2063 = !DILocation(line: 164, column: 3, scope: !2052)
!2064 = !DILocalVariable(name: "err", scope: !2065, file: !360, line: 165, type: !1914)
!2065 = distinct !DILexicalBlock(scope: !2052, file: !360, line: 165, column: 3)
!2066 = !DILocation(line: 165, column: 3, scope: !2065)
!2067 = !DILocation(line: 165, column: 3, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !2065, file: !360, line: 165, column: 3)
!2069 = !DILocation(line: 168, column: 32, scope: !2052)
!2070 = !DILocation(line: 168, column: 3, scope: !2052)
!2071 = !DILocalVariable(name: "err", scope: !2072, file: !360, line: 169, type: !1914)
!2072 = distinct !DILexicalBlock(scope: !2052, file: !360, line: 169, column: 3)
!2073 = !DILocation(line: 169, column: 3, scope: !2072)
!2074 = !DILocation(line: 169, column: 3, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2072, file: !360, line: 169, column: 3)
!2076 = !DILocation(line: 172, column: 43, scope: !2052)
!2077 = !DILocation(line: 172, column: 47, scope: !2052)
!2078 = !DILocation(line: 172, column: 50, scope: !2052)
!2079 = !DILocation(line: 172, column: 54, scope: !2052)
!2080 = !DILocation(line: 172, column: 3, scope: !2052)
!2081 = !DILocalVariable(name: "err", scope: !2082, file: !360, line: 174, type: !1914)
!2082 = distinct !DILexicalBlock(scope: !2052, file: !360, line: 174, column: 3)
!2083 = !DILocation(line: 174, column: 3, scope: !2082)
!2084 = !DILocation(line: 174, column: 3, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !2082, file: !360, line: 174, column: 3)
!2086 = !DILocation(line: 175, column: 3, scope: !2052)
!2087 = !DILocalVariable(name: "err", scope: !2088, file: !360, line: 176, type: !1914)
!2088 = distinct !DILexicalBlock(scope: !2052, file: !360, line: 176, column: 3)
!2089 = !DILocation(line: 176, column: 3, scope: !2088)
!2090 = !DILocation(line: 176, column: 3, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !2088, file: !360, line: 176, column: 3)
!2092 = !DILocation(line: 178, column: 1, scope: !2052)
!2093 = distinct !DISubprogram(name: "startNewFrame", linkageName: "_ZN3LRT14PBOFrameBuffer13startNewFrameEv", scope: !1780, file: !360, line: 181, type: !1792, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !1798, retainedNodes: !1745)
!2094 = !DILocalVariable(name: "this", arg: 1, scope: !2093, type: !1790, flags: DIFlagArtificial | DIFlagObjectPointer)
!2095 = !DILocation(line: 0, scope: !2093)
!2096 = !DILocation(line: 184, column: 44, scope: !2093)
!2097 = !DILocation(line: 184, column: 3, scope: !2093)
!2098 = !DILocalVariable(name: "err", scope: !2099, file: !360, line: 185, type: !1914)
!2099 = distinct !DILexicalBlock(scope: !2093, file: !360, line: 185, column: 3)
!2100 = !DILocation(line: 185, column: 3, scope: !2099)
!2101 = !DILocation(line: 185, column: 3, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2099, file: !360, line: 185, column: 3)
!2103 = !DILocation(line: 186, column: 26, scope: !2093)
!2104 = !DILocation(line: 186, column: 3, scope: !2093)
!2105 = !DILocation(line: 186, column: 6, scope: !2093)
!2106 = !DILocalVariable(name: "err", scope: !2107, file: !360, line: 187, type: !1914)
!2107 = distinct !DILexicalBlock(scope: !2093, file: !360, line: 187, column: 3)
!2108 = !DILocation(line: 187, column: 3, scope: !2107)
!2109 = !DILocation(line: 187, column: 3, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2107, file: !360, line: 187, column: 3)
!2111 = !DILocation(line: 188, column: 3, scope: !2093)
!2112 = !DILocation(line: 190, column: 1, scope: !2093)
!2113 = distinct !DISubprogram(name: "sse_f", linkageName: "_ZN5sse_fC2Ev", scope: !186, file: !187, line: 21, type: !195, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !194, retainedNodes: !1745)
!2114 = !DILocalVariable(name: "this", arg: 1, scope: !2113, type: !2115, flags: DIFlagArtificial | DIFlagObjectPointer)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!2116 = !DILocation(line: 0, scope: !2113)
!2117 = !DILocation(line: 21, column: 11, scope: !2113)
!2118 = distinct !DISubprogram(name: "RGBAucharFrameBuffer", linkageName: "_ZN3LRT20RGBAucharFrameBufferC2Ev", scope: !1800, file: !1732, line: 70, type: !1810, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !1809, retainedNodes: !1745)
!2119 = !DILocalVariable(name: "this", arg: 1, scope: !2118, type: !1828, flags: DIFlagArtificial | DIFlagObjectPointer)
!2120 = !DILocation(line: 0, scope: !2118)
!2121 = !DILocation(line: 72, column: 3, scope: !2118)
!2122 = !DILocation(line: 71, column: 7, scope: !2118)
!2123 = !DILocation(line: 71, column: 11, scope: !2118)
!2124 = !DILocation(line: 71, column: 13, scope: !2118)
!2125 = !DILocation(line: 71, column: 17, scope: !2118)
!2126 = !DILocation(line: 72, column: 4, scope: !2118)
!2127 = distinct !DISubprogram(name: "RTVec_t", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EEC2Ev", scope: !19, file: !18, line: 29, type: !93, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !92, retainedNodes: !1745)
!2128 = !DILocalVariable(name: "this", arg: 1, scope: !2127, type: !1999, flags: DIFlagArtificial | DIFlagObjectPointer)
!2129 = !DILocation(line: 0, scope: !2127)
!2130 = !DILocation(line: 31, column: 5, scope: !2127)
!2131 = distinct !DISubprogram(name: "RTVec_t", linkageName: "_ZN4RTTL7RTVec_tILi2EfLi0EEC2Ev", scope: !198, file: !18, line: 29, type: !262, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !261, retainedNodes: !1745)
!2132 = !DILocalVariable(name: "this", arg: 1, scope: !2131, type: !2133, flags: DIFlagArtificial | DIFlagObjectPointer)
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!2134 = !DILocation(line: 0, scope: !2131)
!2135 = !DILocation(line: 31, column: 5, scope: !2131)
!2136 = distinct !DISubprogram(name: "RTVec_t", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EEC2ERKiS3_", scope: !19, file: !18, line: 198, type: !141, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !140, retainedNodes: !1745)
!2137 = !DILocalVariable(name: "this", arg: 1, scope: !2136, type: !1999, flags: DIFlagArtificial | DIFlagObjectPointer)
!2138 = !DILocation(line: 0, scope: !2136)
!2139 = !DILocalVariable(name: "a", arg: 2, scope: !2136, file: !18, line: 198, type: !42)
!2140 = !DILocation(line: 198, column: 29, scope: !2136)
!2141 = !DILocalVariable(name: "b", arg: 3, scope: !2136, file: !18, line: 198, type: !42)
!2142 = !DILocation(line: 198, column: 48, scope: !2136)
!2143 = !DILocation(line: 198, column: 98, scope: !2136)
!2144 = !DILocation(line: 198, column: 100, scope: !2136)
!2145 = !DILocation(line: 198, column: 104, scope: !2136)
!2146 = !DILocation(line: 198, column: 106, scope: !2136)
!2147 = !DILocation(line: 198, column: 130, scope: !2136)
!2148 = distinct !DISubprogram(name: "resize", linkageName: "_ZN3LRT20RGBAucharFrameBuffer6resizeEii", scope: !1800, file: !1732, line: 90, type: !1830, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !1829, retainedNodes: !1745)
!2149 = !DILocalVariable(name: "this", arg: 1, scope: !2148, type: !1828, flags: DIFlagArtificial | DIFlagObjectPointer)
!2150 = !DILocation(line: 0, scope: !2148)
!2151 = !DILocalVariable(name: "newX", arg: 2, scope: !2148, file: !1732, line: 90, type: !30)
!2152 = !DILocation(line: 90, column: 27, scope: !2148)
!2153 = !DILocalVariable(name: "newY", arg: 3, scope: !2148, file: !1732, line: 90, type: !30)
!2154 = !DILocation(line: 90, column: 37, scope: !2148)
!2155 = !DILocation(line: 94, column: 16, scope: !2148)
!2156 = !DILocation(line: 94, column: 37, scope: !2148)
!2157 = !DILocation(line: 94, column: 19, scope: !2148)
!2158 = !DILocation(line: 94, column: 12, scope: !2148)
!2159 = !DILocation(line: 94, column: 10, scope: !2148)
!2160 = !DILocation(line: 95, column: 16, scope: !2148)
!2161 = !DILocation(line: 95, column: 37, scope: !2148)
!2162 = !DILocation(line: 95, column: 19, scope: !2148)
!2163 = !DILocation(line: 95, column: 12, scope: !2148)
!2164 = !DILocation(line: 95, column: 10, scope: !2148)
!2165 = !DILocalVariable(name: "newRes", scope: !2148, file: !1732, line: 97, type: !1806)
!2166 = !DILocation(line: 97, column: 11, scope: !2148)
!2167 = !DILocation(line: 98, column: 9, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2148, file: !1732, line: 98, column: 9)
!2169 = !DILocalVariable(name: "v1", arg: 1, scope: !2170, file: !20, line: 110, type: !108)
!2170 = distinct !DISubprogram(name: "operator!=<2, int, 0>", linkageName: "_ZN4RTTLneILi2EiLi0EEEbRKNS_7RTVec_tIXT_ET0_XT1_EEES5_", scope: !21, file: !20, line: 110, type: !2171, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !1878, retainedNodes: !1745)
!2171 = !DISubroutineType(types: !2172)
!2172 = !{!14, !108, !108}
!2173 = !DILocation(line: 110, column: 64, scope: !2170, inlinedAt: !2174)
!2174 = distinct !DILocation(line: 98, column: 13, scope: !2168)
!2175 = !DILocalVariable(name: "v2", arg: 2, scope: !2170, file: !20, line: 110, type: !108)
!2176 = !DILocation(line: 110, column: 103, scope: !2170, inlinedAt: !2174)
!2177 = !DILocation(line: 111, column: 18, scope: !2170, inlinedAt: !2174)
!2178 = !DILocation(line: 111, column: 24, scope: !2170, inlinedAt: !2174)
!2179 = !DILocalVariable(name: "v1", arg: 1, scope: !2180, file: !20, line: 89, type: !108)
!2180 = distinct !DISubprogram(name: "operator==<2, int, 0>", linkageName: "_ZN4RTTLeqILi2EiLi0EEEbRKNS_7RTVec_tIXT_ET0_XT1_EEES5_", scope: !21, file: !20, line: 89, type: !2171, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !1878, retainedNodes: !1745)
!2181 = !DILocation(line: 89, column: 64, scope: !2180, inlinedAt: !2182)
!2182 = distinct !DILocation(line: 111, column: 21, scope: !2170, inlinedAt: !2174)
!2183 = !DILocalVariable(name: "v2", arg: 2, scope: !2180, file: !20, line: 89, type: !108)
!2184 = !DILocation(line: 89, column: 103, scope: !2180, inlinedAt: !2182)
!2185 = !DILocation(line: 90, column: 16, scope: !2180, inlinedAt: !2182)
!2186 = !DILocation(line: 90, column: 19, scope: !2180, inlinedAt: !2182)
!2187 = !DILocation(line: 90, column: 30, scope: !2180, inlinedAt: !2182)
!2188 = !DILocation(line: 90, column: 33, scope: !2180, inlinedAt: !2182)
!2189 = !DILocalVariable(name: "v1", arg: 1, scope: !2190, file: !25, line: 182, type: !58)
!2190 = distinct !DISubprogram(name: "operator==<2, int>", linkageName: "_ZN4RTTLeqILi2EiEEbRKNS_8RTData_tIXT_ET0_Li0EEES5_", scope: !21, file: !25, line: 182, type: !2191, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !2193, retainedNodes: !1745)
!2191 = !DISubroutineType(types: !2192)
!2192 = !{!14, !58, !58}
!2193 = !{!88, !89}
!2194 = !DILocation(line: 182, column: 61, scope: !2190, inlinedAt: !2195)
!2195 = distinct !DILocation(line: 90, column: 27, scope: !2180, inlinedAt: !2182)
!2196 = !DILocalVariable(name: "v2", arg: 2, scope: !2190, file: !25, line: 182, type: !58)
!2197 = !DILocation(line: 182, column: 97, scope: !2190, inlinedAt: !2195)
!2198 = !DILocalVariable(name: "i", scope: !2199, file: !25, line: 183, type: !30)
!2199 = distinct !DILexicalBlock(scope: !2190, file: !25, line: 183, column: 9)
!2200 = !DILocation(line: 183, column: 18, scope: !2199, inlinedAt: !2195)
!2201 = !DILocation(line: 183, column: 14, scope: !2199, inlinedAt: !2195)
!2202 = !DILocation(line: 183, column: 25, scope: !2203, inlinedAt: !2195)
!2203 = distinct !DILexicalBlock(scope: !2199, file: !25, line: 183, column: 9)
!2204 = !DILocation(line: 183, column: 27, scope: !2203, inlinedAt: !2195)
!2205 = !DILocation(line: 183, column: 9, scope: !2199, inlinedAt: !2195)
!2206 = !DILocation(line: 184, column: 17, scope: !2207, inlinedAt: !2195)
!2207 = distinct !DILexicalBlock(scope: !2203, file: !25, line: 184, column: 17)
!2208 = !DILocation(line: 184, column: 20, scope: !2207, inlinedAt: !2195)
!2209 = !DILocation(line: 0, scope: !2036, inlinedAt: !2210)
!2210 = distinct !DILocation(line: 184, column: 17, scope: !2207, inlinedAt: !2195)
!2211 = !DILocation(line: 52, column: 41, scope: !2036, inlinedAt: !2210)
!2212 = !DILocation(line: 53, column: 22, scope: !2036, inlinedAt: !2210)
!2213 = !DILocation(line: 53, column: 20, scope: !2036, inlinedAt: !2210)
!2214 = !DILocation(line: 184, column: 26, scope: !2207, inlinedAt: !2195)
!2215 = !DILocation(line: 184, column: 29, scope: !2207, inlinedAt: !2195)
!2216 = !DILocation(line: 0, scope: !2036, inlinedAt: !2217)
!2217 = distinct !DILocation(line: 184, column: 26, scope: !2207, inlinedAt: !2195)
!2218 = !DILocation(line: 52, column: 41, scope: !2036, inlinedAt: !2217)
!2219 = !DILocation(line: 53, column: 22, scope: !2036, inlinedAt: !2217)
!2220 = !DILocation(line: 53, column: 20, scope: !2036, inlinedAt: !2217)
!2221 = !DILocation(line: 184, column: 23, scope: !2207, inlinedAt: !2195)
!2222 = !DILocation(line: 184, column: 17, scope: !2203, inlinedAt: !2195)
!2223 = !DILocation(line: 185, column: 17, scope: !2207, inlinedAt: !2195)
!2224 = !DILocation(line: 183, column: 33, scope: !2203, inlinedAt: !2195)
!2225 = !DILocation(line: 183, column: 9, scope: !2203, inlinedAt: !2195)
!2226 = distinct !{!2226, !2205, !2227, !1775}
!2227 = !DILocation(line: 185, column: 24, scope: !2199, inlinedAt: !2195)
!2228 = !DILocation(line: 187, column: 9, scope: !2190, inlinedAt: !2195)
!2229 = !DILocation(line: 188, column: 5, scope: !2190, inlinedAt: !2195)
!2230 = !DILocation(line: 111, column: 16, scope: !2170, inlinedAt: !2174)
!2231 = !DILocation(line: 98, column: 9, scope: !2148)
!2232 = !DILocation(line: 99, column: 7, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2168, file: !1732, line: 98, column: 24)
!2234 = !DILocation(line: 0, scope: !1998, inlinedAt: !2235)
!2235 = distinct !DILocation(line: 99, column: 11, scope: !2233)
!2236 = !DILocation(line: 74, column: 53, scope: !1998, inlinedAt: !2235)
!2237 = !DILocation(line: 75, column: 20, scope: !1998, inlinedAt: !2235)
!2238 = !DILocation(line: 75, column: 24, scope: !1998, inlinedAt: !2235)
!2239 = !DILocation(line: 76, column: 26, scope: !1998, inlinedAt: !2235)
!2240 = !DILocation(line: 76, column: 31, scope: !1998, inlinedAt: !2235)
!2241 = !DILocation(line: 77, column: 9, scope: !1998, inlinedAt: !2235)
!2242 = !DILocation(line: 77, column: 18, scope: !1998, inlinedAt: !2235)
!2243 = !DILocation(line: 0, scope: !2013, inlinedAt: !2244)
!2244 = distinct !DILocation(line: 77, column: 11, scope: !1998, inlinedAt: !2235)
!2245 = !DILocation(line: 43, column: 86, scope: !2013, inlinedAt: !2244)
!2246 = !DILocation(line: 44, column: 13, scope: !2013, inlinedAt: !2244)
!2247 = !DILocation(line: 46, column: 22, scope: !2026, inlinedAt: !2244)
!2248 = !DILocation(line: 46, column: 18, scope: !2026, inlinedAt: !2244)
!2249 = !DILocation(line: 46, column: 29, scope: !2030, inlinedAt: !2244)
!2250 = !DILocation(line: 46, column: 31, scope: !2030, inlinedAt: !2244)
!2251 = !DILocation(line: 46, column: 13, scope: !2026, inlinedAt: !2244)
!2252 = !DILocation(line: 47, column: 24, scope: !2030, inlinedAt: !2244)
!2253 = !DILocation(line: 47, column: 26, scope: !2030, inlinedAt: !2244)
!2254 = !DILocation(line: 0, scope: !2036, inlinedAt: !2255)
!2255 = distinct !DILocation(line: 47, column: 24, scope: !2030, inlinedAt: !2244)
!2256 = !DILocation(line: 52, column: 41, scope: !2036, inlinedAt: !2255)
!2257 = !DILocation(line: 53, column: 22, scope: !2036, inlinedAt: !2255)
!2258 = !DILocation(line: 53, column: 20, scope: !2036, inlinedAt: !2255)
!2259 = !DILocation(line: 47, column: 19, scope: !2030, inlinedAt: !2244)
!2260 = !DILocation(line: 47, column: 17, scope: !2030, inlinedAt: !2244)
!2261 = !DILocation(line: 47, column: 22, scope: !2030, inlinedAt: !2244)
!2262 = !DILocation(line: 46, column: 37, scope: !2030, inlinedAt: !2244)
!2263 = !DILocation(line: 46, column: 13, scope: !2030, inlinedAt: !2244)
!2264 = distinct !{!2264, !2251, !2265, !1775}
!2265 = !DILocation(line: 47, column: 27, scope: !2026, inlinedAt: !2244)
!2266 = !DILocation(line: 100, column: 5, scope: !2233)
!2267 = !DILocation(line: 101, column: 3, scope: !2148)
!2268 = distinct !DISubprogram(name: "max<int>", linkageName: "_ZSt3maxIiERKT_S2_S2_", scope: !2, file: !2269, line: 254, type: !2270, scopeLine: 255, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !2272, retainedNodes: !1745)
!2269 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/stl_algobase.h", directory: "", checksumkind: CSK_MD5, checksum: "906433670cd4a8daf96f73a1b6f6012b")
!2270 = !DISubroutineType(types: !2271)
!2271 = !{!42, !42, !42}
!2272 = !{!2273}
!2273 = !DITemplateTypeParameter(name: "_Tp", type: !30)
!2274 = !DILocalVariable(name: "__a", arg: 1, scope: !2268, file: !2275, line: 407, type: !42)
!2275 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/algorithmfwd.h", directory: "")
!2276 = !DILocation(line: 407, column: 19, scope: !2268)
!2277 = !DILocalVariable(name: "__b", arg: 2, scope: !2268, file: !2275, line: 407, type: !42)
!2278 = !DILocation(line: 407, column: 31, scope: !2268)
!2279 = !DILocation(line: 259, column: 11, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !2268, file: !2269, line: 259, column: 11)
!2281 = !DILocation(line: 259, column: 17, scope: !2280)
!2282 = !DILocation(line: 259, column: 15, scope: !2280)
!2283 = !DILocation(line: 259, column: 11, scope: !2268)
!2284 = !DILocation(line: 260, column: 9, scope: !2280)
!2285 = !DILocation(line: 260, column: 2, scope: !2280)
!2286 = !DILocation(line: 261, column: 14, scope: !2268)
!2287 = !DILocation(line: 261, column: 7, scope: !2268)
!2288 = !DILocation(line: 262, column: 5, scope: !2268)
!2289 = distinct !DISubprogram(name: "nextMultipleOf<4, int>", linkageName: "_Z14nextMultipleOfILi4EiET0_S0_", scope: !1729, file: !1729, line: 279, type: !544, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !2290, retainedNodes: !1745)
!2290 = !{!2291, !2292}
!2291 = !DITemplateValueParameter(name: "N", type: !30, value: i32 4)
!2292 = !DITemplateTypeParameter(name: "T", type: !30)
!2293 = !DILocalVariable(name: "t", arg: 1, scope: !2289, file: !1729, line: 279, type: !30)
!2294 = !DILocation(line: 279, column: 27, scope: !2289)
!2295 = !DILocation(line: 281, column: 12, scope: !2289)
!2296 = !DILocation(line: 281, column: 13, scope: !2289)
!2297 = !DILocation(line: 281, column: 15, scope: !2289)
!2298 = !DILocation(line: 281, column: 19, scope: !2289)
!2299 = !DILocation(line: 281, column: 24, scope: !2289)
!2300 = !DILocation(line: 281, column: 3, scope: !2289)
!2301 = distinct !DISubprogram(name: "array", linkageName: "_ZNK4RTTL7RTVec_tILi2EiLi0EE5arrayEv", scope: !19, file: !18, line: 216, type: !163, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !168, retainedNodes: !1745)
!2302 = !DILocalVariable(name: "this", arg: 1, scope: !2301, type: !2303, flags: DIFlagArtificial | DIFlagObjectPointer)
!2303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!2304 = !DILocation(line: 0, scope: !2301)
!2305 = !DILocation(line: 216, column: 64, scope: !2301)
!2306 = !DILocation(line: 216, column: 45, scope: !2301)
!2307 = distinct !DISubprogram(name: "operator RTTL::RTData_t<2, int> &", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EEcvRNS_8RTData_tILi2EiLi0EEEEv", scope: !19, file: !18, line: 213, type: !159, scopeLine: 213, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !158, retainedNodes: !1745)
!2308 = !DILocalVariable(name: "this", arg: 1, scope: !2307, type: !1999, flags: DIFlagArtificial | DIFlagObjectPointer)
!2309 = !DILocation(line: 0, scope: !2307)
!2310 = !DILocation(line: 213, column: 64, scope: !2307)
!2311 = !DILocation(line: 213, column: 45, scope: !2307)
!2312 = distinct !DISubprogram(name: "operator const RTTL::RTData_t<2, int> &", linkageName: "_ZNK4RTTL7RTVec_tILi2EiLi0EEcvRKNS_8RTData_tILi2EiLi0EEEEv", scope: !19, file: !18, line: 214, type: !163, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !162, retainedNodes: !1745)
!2313 = !DILocalVariable(name: "this", arg: 1, scope: !2312, type: !2303, flags: DIFlagArtificial | DIFlagObjectPointer)
!2314 = !DILocation(line: 0, scope: !2312)
!2315 = !DILocation(line: 214, column: 64, scope: !2312)
!2316 = !DILocation(line: 214, column: 45, scope: !2312)
!2317 = distinct !DISubprogram(name: "nElements", linkageName: "_ZN4RTTL8RTData_tILi2EiLi0EE9nElementsEv", scope: !26, file: !25, line: 175, type: !85, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !84, retainedNodes: !1745)
!2318 = !DILocation(line: 175, column: 34, scope: !2317)
!2319 = distinct !DISubprogram(name: "operator[]", linkageName: "_ZNK4RTTL7RTVec_tILi2EiLi0EEixEi", scope: !19, file: !18, line: 206, type: !154, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !153, retainedNodes: !1745)
!2320 = !DILocalVariable(name: "this", arg: 1, scope: !2319, type: !2303, flags: DIFlagArtificial | DIFlagObjectPointer)
!2321 = !DILocation(line: 0, scope: !2319)
!2322 = !DILocalVariable(name: "index", arg: 2, scope: !2319, file: !18, line: 206, type: !30)
!2323 = !DILocation(line: 206, column: 30, scope: !2319)
!2324 = !DILocation(line: 206, column: 52, scope: !2319)
!2325 = !DILocation(line: 206, column: 59, scope: !2319)
!2326 = !DILocation(line: 206, column: 45, scope: !2319)
!2327 = distinct !DISubprogram(name: "data", linkageName: "_ZNK4RTTL7RTVec_tILi2EiLi0EE4dataEv", scope: !19, file: !18, line: 202, type: !148, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !147, retainedNodes: !1745)
!2328 = !DILocalVariable(name: "this", arg: 1, scope: !2327, type: !2303, flags: DIFlagArtificial | DIFlagObjectPointer)
!2329 = !DILocation(line: 0, scope: !2327)
!2330 = !DILocation(line: 202, column: 44, scope: !2327)
!2331 = !DILocation(line: 202, column: 36, scope: !2327)
!2332 = distinct !DISubprogram(linkageName: "_GLOBAL__sub_I_PBOFrameBuffer.cxx", scope: !1210, file: !1210, type: !2333, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !1745)
!2333 = !DISubroutineType(types: !1745)
!2334 = !DILocation(line: 0, scope: !2332)
