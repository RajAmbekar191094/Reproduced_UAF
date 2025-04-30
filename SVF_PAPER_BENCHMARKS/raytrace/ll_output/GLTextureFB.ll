; ModuleID = '/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src/LRT/FrameBuffer/GLTextureFB.cxx'
source_filename = "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src/LRT/FrameBuffer/GLTextureFB.cxx"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%struct.sse_f = type { [4 x float] }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.RTTL::RTVec_t" = type { i32, i32 }
%"struct.LRT::OpenGLTextureRGBA8FB" = type <{ %"struct.LRT::RGBAucharFrameBuffer", i32, %"class.RTTL::RTVec_t", %"class.RTTL::RTVec_t.0", [4 x i8] }>
%"struct.LRT::RGBAucharFrameBuffer" = type { ptr, %"class.RTTL::RTVec_t", ptr }
%"class.RTTL::RTVec_t.0" = type { float, float }
%"struct.LRT::BufferedOpenGLTextureRGBA8FB" = type { %"struct.LRT::OpenGLTextureRGBA8FB.base", i32 }
%"struct.LRT::OpenGLTextureRGBA8FB.base" = type <{ %"struct.LRT::RGBAucharFrameBuffer", i32, %"class.RTTL::RTVec_t", %"class.RTTL::RTVec_t.0" }>

$_ZN3LRT20RGBAucharFrameBuffer6resizeEii = comdat any

$_ZN4RTTL7RTVec_tILi2EiLi0EEC2ERKiS3_ = comdat any

$_Z14nextMultipleOfILi1024EiET0_S0_ = comdat any

$_Z12aligned_freeIhEvPT_ = comdat any

$_Z14aligned_mallocIhEPT_i = comdat any

$_Z10is_alignedILm16EhEbPT0_ = comdat any

$_ZN3LRT20OpenGLTextureRGBA8FB13startNewFrameEv = comdat any

$_ZN5sse_fC2Ev = comdat any

$_ZSt3maxIiERKT_S2_S2_ = comdat any

$_Z14nextMultipleOfILi4EiET0_S0_ = comdat any

$_ZNK4RTTL7RTVec_tILi2EiLi0EE5arrayEv = comdat any

$_ZN4RTTL7RTVec_tILi2EiLi0EEcvRNS_8RTData_tILi2EiLi0EEEEv = comdat any

$_ZNK4RTTL7RTVec_tILi2EiLi0EEcvRKNS_8RTData_tILi2EiLi0EEEEv = comdat any

$_ZN4RTTL8RTData_tILi2EiLi0EE9nElementsEv = comdat any

$_ZNK4RTTL7RTVec_tILi2EiLi0EEixEi = comdat any

$_ZNK4RTTL7RTVec_tILi2EiLi0EE4dataEv = comdat any

$_ZTSN3LRT20RGBAucharFrameBufferE = comdat any

$_ZTIN3LRT20RGBAucharFrameBufferE = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1, !dbg !0
@__dso_handle = external hidden global i8
@_ZL8maxFloat = internal global %struct.sse_f zeroinitializer, align 4, !dbg !7
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [13 x i8] c"resizing to \00", align 1, !dbg !225
@.str.2 = private unnamed_addr constant [8 x i8] c"freeing\00", align 1, !dbg !233
@.str.3 = private unnamed_addr constant [23 x i8] c"resizing fb buffer to \00", align 1, !dbg !238
@.str.4 = private unnamed_addr constant [11 x i8] c"alloc'ing \00", align 1, !dbg !243
@.str.5 = private unnamed_addr constant [3 x i8] c" (\00", align 1, !dbg !248
@.str.6 = private unnamed_addr constant [2 x i8] c")\00", align 1, !dbg !253
@.str.7 = private unnamed_addr constant [19 x i8] c"is_aligned<16>(fb)\00", align 1, !dbg !256
@.str.8 = private unnamed_addr constant [97 x i8] c"/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src/LRT/FrameBuffer/GLTextureFB.cxx\00", align 1, !dbg !261
@__PRETTY_FUNCTION__._ZN3LRT28BufferedOpenGLTextureRGBA8FB6resizeEii = private unnamed_addr constant [65 x i8] c"virtual void LRT::BufferedOpenGLTextureRGBA8FB::resize(int, int)\00", align 1, !dbg !266
@_ZTVN3LRT20OpenGLTextureRGBA8FBE = dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN3LRT20OpenGLTextureRGBA8FBE, ptr @_ZN3LRT20OpenGLTextureRGBA8FB6resizeEii, ptr @_ZN3LRT20OpenGLTextureRGBA8FB13startNewFrameEv, ptr @__cxa_pure_virtual, ptr @_ZN3LRT20OpenGLTextureRGBA8FB7displayEv] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global ptr
@_ZTSN3LRT20OpenGLTextureRGBA8FBE = dso_local constant [29 x i8] c"N3LRT20OpenGLTextureRGBA8FBE\00", align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global ptr
@_ZTSN3LRT20RGBAucharFrameBufferE = linkonce_odr dso_local constant [29 x i8] c"N3LRT20RGBAucharFrameBufferE\00", comdat, align 1
@_ZTIN3LRT20RGBAucharFrameBufferE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN3LRT20RGBAucharFrameBufferE }, comdat, align 8
@_ZTIN3LRT20OpenGLTextureRGBA8FBE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3LRT20OpenGLTextureRGBA8FBE, ptr @_ZTIN3LRT20RGBAucharFrameBufferE }, align 8
@_ZTVN3LRT28BufferedOpenGLTextureRGBA8FBE = dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN3LRT28BufferedOpenGLTextureRGBA8FBE, ptr @_ZN3LRT28BufferedOpenGLTextureRGBA8FB6resizeEii, ptr @_ZN3LRT20OpenGLTextureRGBA8FB13startNewFrameEv, ptr @_ZN3LRT28BufferedOpenGLTextureRGBA8FB13doneWithFrameEv, ptr @_ZN3LRT20OpenGLTextureRGBA8FB7displayEv] }, align 8
@_ZTSN3LRT28BufferedOpenGLTextureRGBA8FBE = dso_local constant [37 x i8] c"N3LRT28BufferedOpenGLTextureRGBA8FBE\00", align 1
@_ZTIN3LRT28BufferedOpenGLTextureRGBA8FBE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3LRT28BufferedOpenGLTextureRGBA8FBE, ptr @_ZTIN3LRT20OpenGLTextureRGBA8FBE }, align 8
@.str.9 = private unnamed_addr constant [29 x i8] c"nElements() <= v.nElements()\00", align 1, !dbg !271
@.str.10 = private unnamed_addr constant [88 x i8] c"/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src/RTTL/common/RTData.hxx\00", align 1, !dbg !276
@__PRETTY_FUNCTION__._ZN4RTTL8RTData_tILi2EiLi0EE6assignILi2EiLi0EEEvRKNS0_IXT_ET0_XT1_EEE = private unnamed_addr constant [185 x i8] c"void RTTL::RTData_t<2, int>::assign(const RTData_t<AnotherN, AnotherDataType, AnotherAlign> &) [N = 2, DataType = int, align = 0, AnotherN = 2, AnotherDataType = int, AnotherAlign = 0]\00", align 1, !dbg !281
@.str.11 = private unnamed_addr constant [2 x i8] c"[\00", align 1, !dbg !286
@.str.12 = private unnamed_addr constant [2 x i8] c",\00", align 1, !dbg !288
@.str.13 = private unnamed_addr constant [2 x i8] c"]\00", align 1, !dbg !290
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_GLTextureFB.cxx, ptr null }]

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" !dbg !1623 {
  call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit), !dbg !1625
  %1 = call i32 @__cxa_atexit(ptr @_ZNSt8ios_base4InitD1Ev, ptr @_ZStL8__ioinit, ptr @__dso_handle) #3, !dbg !1627
  ret void, !dbg !1625
}

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) #3

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.1() #4 section ".text.startup" !dbg !1628 {
  %1 = alloca %struct.sse_f, align 4
  %2 = alloca float, align 4
  %3 = alloca i32, align 4
  store float 0x47EFFFFFE0000000, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1629, metadata !DIExpression()), !dbg !1633
  call void @llvm.dbg.declare(metadata ptr %1, metadata !1636, metadata !DIExpression()), !dbg !1637
  call void @_ZN5sse_fC2Ev(ptr noundef nonnull align 4 dereferenceable(16) %1), !dbg !1637
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1638, metadata !DIExpression()), !dbg !1640
  store i32 0, ptr %3, align 4, !dbg !1640
  br label %4, !dbg !1641

4:                                                ; preds = %7, %0
  %5 = load i32, ptr %3, align 4, !dbg !1642
  %6 = icmp slt i32 %5, 4, !dbg !1644
  br i1 %6, label %7, label %14, !dbg !1645

7:                                                ; preds = %4
  %8 = load float, ptr %2, align 4, !dbg !1646
  %9 = load i32, ptr %3, align 4, !dbg !1647
  %10 = sext i32 %9 to i64, !dbg !1648
  %11 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 %10, !dbg !1648
  store float %8, ptr %11, align 4, !dbg !1649
  %12 = load i32, ptr %3, align 4, !dbg !1650
  %13 = add nsw i32 %12, 1, !dbg !1650
  store i32 %13, ptr %3, align 4, !dbg !1650
  br label %4, !dbg !1651, !llvm.loop !1652

14:                                               ; preds = %4
  %15 = load { <2 x float>, <2 x float> }, ptr %1, align 4, !dbg !1655
  %16 = extractvalue { <2 x float>, <2 x float> } %15, 0, !dbg !1656
  store <2 x float> %16, ptr @_ZL8maxFloat, align 4, !dbg !1656
  %17 = extractvalue { <2 x float>, <2 x float> } %15, 1, !dbg !1656
  store <2 x float> %17, ptr getelementptr inbounds ({ <2 x float>, <2 x float> }, ptr @_ZL8maxFloat, i32 0, i32 1), align 4, !dbg !1656
  ret void, !dbg !1657
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN3LRT20OpenGLTextureRGBA8FB6resizeEii(ptr noundef nonnull align 8 dereferenceable(44) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #5 align 2 !dbg !1658 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %"class.RTTL::RTVec_t", align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store ptr %0, ptr %16, align 8
  call void @llvm.dbg.declare(metadata ptr %16, metadata !1659, metadata !DIExpression()), !dbg !1661
  store i32 %1, ptr %17, align 4
  call void @llvm.dbg.declare(metadata ptr %17, metadata !1662, metadata !DIExpression()), !dbg !1663
  store i32 %2, ptr %18, align 4
  call void @llvm.dbg.declare(metadata ptr %18, metadata !1664, metadata !DIExpression()), !dbg !1665
  %22 = load ptr, ptr %16, align 8
  %23 = load i32, ptr %17, align 4, !dbg !1666
  %24 = load i32, ptr %18, align 4, !dbg !1667
  call void @_ZN3LRT20RGBAucharFrameBuffer6resizeEii(ptr noundef nonnull align 8 dereferenceable(24) %22, i32 noundef %23, i32 noundef %24), !dbg !1668
  %25 = getelementptr inbounds %"struct.LRT::OpenGLTextureRGBA8FB", ptr %22, i32 0, i32 2, !dbg !1669
  %26 = getelementptr inbounds %"class.RTTL::RTVec_t", ptr %25, i32 0, i32 0, !dbg !1671
  %27 = load i32, ptr %26, align 4, !dbg !1671
  %28 = getelementptr inbounds %"struct.LRT::RGBAucharFrameBuffer", ptr %22, i32 0, i32 1, !dbg !1672
  %29 = getelementptr inbounds %"class.RTTL::RTVec_t", ptr %28, i32 0, i32 0, !dbg !1673
  %30 = load i32, ptr %29, align 8, !dbg !1673
  %31 = icmp slt i32 %27, %30, !dbg !1674
  br i1 %31, label %40, label %32, !dbg !1675

32:                                               ; preds = %3
  %33 = getelementptr inbounds %"struct.LRT::OpenGLTextureRGBA8FB", ptr %22, i32 0, i32 2, !dbg !1676
  %34 = getelementptr inbounds %"class.RTTL::RTVec_t", ptr %33, i32 0, i32 1, !dbg !1677
  %35 = load i32, ptr %34, align 4, !dbg !1677
  %36 = getelementptr inbounds %"struct.LRT::RGBAucharFrameBuffer", ptr %22, i32 0, i32 1, !dbg !1678
  %37 = getelementptr inbounds %"class.RTTL::RTVec_t", ptr %36, i32 0, i32 1, !dbg !1679
  %38 = load i32, ptr %37, align 4, !dbg !1679
  %39 = icmp slt i32 %35, %38, !dbg !1680
  br i1 %39, label %40, label %130, !dbg !1681

40:                                               ; preds = %32, %3
  store i32 16, ptr %20, align 4, !dbg !1682
  store i32 16, ptr %21, align 4, !dbg !1684
  call void @_ZN4RTTL7RTVec_tILi2EiLi0EEC2ERKiS3_(ptr noundef nonnull align 4 dereferenceable(8) %19, ptr noundef nonnull align 4 dereferenceable(4) %20, ptr noundef nonnull align 4 dereferenceable(4) %21), !dbg !1685
  %41 = getelementptr inbounds %"struct.LRT::OpenGLTextureRGBA8FB", ptr %22, i32 0, i32 2, !dbg !1686
  store ptr %41, ptr %12, align 8
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1687, metadata !DIExpression()), !dbg !1690
  store ptr %19, ptr %13, align 8
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1692, metadata !DIExpression()), !dbg !1693
  %42 = load ptr, ptr %12, align 8
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1694, metadata !DIExpression()), !dbg !1695
  %43 = call noundef nonnull align 4 dereferenceable(8) ptr @_ZN4RTTL7RTVec_tILi2EiLi0EEcvRNS_8RTData_tILi2EiLi0EEEEv(ptr noundef nonnull align 4 dereferenceable(8) %42), !dbg !1696
  store ptr %43, ptr %14, align 8, !dbg !1695
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1697, metadata !DIExpression()), !dbg !1698
  %44 = load ptr, ptr %13, align 8, !dbg !1699
  %45 = call noundef nonnull align 4 dereferenceable(8) ptr @_ZNK4RTTL7RTVec_tILi2EiLi0EEcvRKNS_8RTData_tILi2EiLi0EEEEv(ptr noundef nonnull align 4 dereferenceable(8) %44), !dbg !1699
  store ptr %45, ptr %15, align 8, !dbg !1698
  %46 = load ptr, ptr %14, align 8, !dbg !1700
  %47 = load ptr, ptr %15, align 8, !dbg !1701
  store ptr %46, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1702, metadata !DIExpression()), !dbg !1710
  store ptr %47, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1712, metadata !DIExpression()), !dbg !1713
  %48 = load ptr, ptr %6, align 8
  %49 = call noundef i32 @_ZN4RTTL8RTData_tILi2EiLi0EE9nElementsEv(), !dbg !1714
  %50 = load ptr, ptr %7, align 8, !dbg !1714
  %51 = call noundef i32 @_ZN4RTTL8RTData_tILi2EiLi0EE9nElementsEv(), !dbg !1714
  %52 = icmp sle i32 %49, %51, !dbg !1714
  br i1 %52, label %53, label %54, !dbg !1714

53:                                               ; preds = %40
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1715, metadata !DIExpression()), !dbg !1717
  store i32 0, ptr %8, align 4, !dbg !1717
  br label %55, !dbg !1718

54:                                               ; preds = %40
  call void @__assert_fail(ptr noundef @.str.9, ptr noundef @.str.10, i32 noundef 44, ptr noundef @__PRETTY_FUNCTION__._ZN4RTTL8RTData_tILi2EiLi0EE6assignILi2EiLi0EEEvRKNS0_IXT_ET0_XT1_EEE) #11, !dbg !1714
  unreachable, !dbg !1714

55:                                               ; preds = %58, %53
  %56 = load i32, ptr %8, align 4, !dbg !1719
  %57 = icmp slt i32 %56, 2, !dbg !1721
  br i1 %57, label %58, label %71, !dbg !1722

58:                                               ; preds = %55
  %59 = load ptr, ptr %7, align 8, !dbg !1723
  %60 = load i32, ptr %8, align 4, !dbg !1724
  store ptr %59, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1725, metadata !DIExpression()), !dbg !1728
  store i32 %60, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1730, metadata !DIExpression()), !dbg !1731
  %61 = load ptr, ptr %4, align 8
  %62 = load i32, ptr %5, align 4, !dbg !1732
  %63 = sext i32 %62 to i64, !dbg !1733
  %64 = getelementptr inbounds [2 x i32], ptr %61, i64 0, i64 %63, !dbg !1733
  %65 = load i32, ptr %64, align 4, !dbg !1733
  %66 = load i32, ptr %8, align 4, !dbg !1734
  %67 = sext i32 %66 to i64, !dbg !1735
  %68 = getelementptr inbounds [2 x i32], ptr %48, i64 0, i64 %67, !dbg !1735
  store i32 %65, ptr %68, align 4, !dbg !1736
  %69 = load i32, ptr %8, align 4, !dbg !1737
  %70 = add nsw i32 %69, 1, !dbg !1737
  store i32 %70, ptr %8, align 4, !dbg !1737
  br label %55, !dbg !1738, !llvm.loop !1739

71:                                               ; preds = %55
  br label %72, !dbg !1741

72:                                               ; preds = %80, %71
  %73 = getelementptr inbounds %"struct.LRT::OpenGLTextureRGBA8FB", ptr %22, i32 0, i32 2, !dbg !1742
  %74 = getelementptr inbounds %"class.RTTL::RTVec_t", ptr %73, i32 0, i32 0, !dbg !1743
  %75 = load i32, ptr %74, align 4, !dbg !1743
  %76 = getelementptr inbounds %"struct.LRT::RGBAucharFrameBuffer", ptr %22, i32 0, i32 1, !dbg !1744
  %77 = getelementptr inbounds %"class.RTTL::RTVec_t", ptr %76, i32 0, i32 0, !dbg !1745
  %78 = load i32, ptr %77, align 8, !dbg !1745
  %79 = icmp slt i32 %75, %78, !dbg !1746
  br i1 %79, label %80, label %85, !dbg !1741

80:                                               ; preds = %72
  %81 = getelementptr inbounds %"struct.LRT::OpenGLTextureRGBA8FB", ptr %22, i32 0, i32 2, !dbg !1747
  %82 = getelementptr inbounds %"class.RTTL::RTVec_t", ptr %81, i32 0, i32 0, !dbg !1748
  %83 = load i32, ptr %82, align 4, !dbg !1749
  %84 = mul nsw i32 %83, 2, !dbg !1749
  store i32 %84, ptr %82, align 4, !dbg !1749
  br label %72, !dbg !1741, !llvm.loop !1750

85:                                               ; preds = %72
  br label %86, !dbg !1752

86:                                               ; preds = %94, %85
  %87 = getelementptr inbounds %"struct.LRT::OpenGLTextureRGBA8FB", ptr %22, i32 0, i32 2, !dbg !1753
  %88 = getelementptr inbounds %"class.RTTL::RTVec_t", ptr %87, i32 0, i32 1, !dbg !1754
  %89 = load i32, ptr %88, align 4, !dbg !1754
  %90 = getelementptr inbounds %"struct.LRT::RGBAucharFrameBuffer", ptr %22, i32 0, i32 1, !dbg !1755
  %91 = getelementptr inbounds %"class.RTTL::RTVec_t", ptr %90, i32 0, i32 1, !dbg !1756
  %92 = load i32, ptr %91, align 4, !dbg !1756
  %93 = icmp slt i32 %89, %92, !dbg !1757
  br i1 %93, label %94, label %99, !dbg !1752

94:                                               ; preds = %86
  %95 = getelementptr inbounds %"struct.LRT::OpenGLTextureRGBA8FB", ptr %22, i32 0, i32 2, !dbg !1758
  %96 = getelementptr inbounds %"class.RTTL::RTVec_t", ptr %95, i32 0, i32 1, !dbg !1759
  %97 = load i32, ptr %96, align 4, !dbg !1760
  %98 = mul nsw i32 %97, 2, !dbg !1760
  store i32 %98, ptr %96, align 4, !dbg !1760
  br label %86, !dbg !1752, !llvm.loop !1761

99:                                               ; preds = %86
  %100 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str), !dbg !1763
  %101 = getelementptr inbounds %"struct.LRT::OpenGLTextureRGBA8FB", ptr %22, i32 0, i32 2, !dbg !1764
  store ptr %100, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1765, metadata !DIExpression()), !dbg !1776
  store ptr %101, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1778, metadata !DIExpression()), !dbg !1779
  %102 = load ptr, ptr %9, align 8, !dbg !1780
  %103 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %102, ptr noundef @.str.11), !dbg !1781
  %104 = load ptr, ptr %10, align 8, !dbg !1782
  %105 = call noundef i32 @_ZNK4RTTL7RTVec_tILi2EiLi0EEixEi(ptr noundef nonnull align 4 dereferenceable(8) %104, i32 noundef 0), !dbg !1782
  %106 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %103, i32 noundef %105), !dbg !1783
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1784, metadata !DIExpression()), !dbg !1786
  store i32 1, ptr %11, align 4, !dbg !1786
  br label %107, !dbg !1787

107:                                              ; preds = %110, %99
  %108 = load i32, ptr %11, align 4, !dbg !1788
  %109 = icmp slt i32 %108, 2, !dbg !1790
  br i1 %109, label %110, label %119, !dbg !1791

110:                                              ; preds = %107
  %111 = load ptr, ptr %9, align 8, !dbg !1792
  %112 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %111, ptr noundef @.str.12), !dbg !1793
  %113 = load ptr, ptr %10, align 8, !dbg !1794
  %114 = load i32, ptr %11, align 4, !dbg !1795
  %115 = call noundef i32 @_ZNK4RTTL7RTVec_tILi2EiLi0EEixEi(ptr noundef nonnull align 4 dereferenceable(8) %113, i32 noundef %114), !dbg !1794
  %116 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %112, i32 noundef %115), !dbg !1796
  %117 = load i32, ptr %11, align 4, !dbg !1797
  %118 = add nsw i32 %117, 1, !dbg !1797
  store i32 %118, ptr %11, align 4, !dbg !1797
  br label %107, !dbg !1798, !llvm.loop !1799

119:                                              ; preds = %107
  %120 = load ptr, ptr %9, align 8, !dbg !1801
  %121 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %120, ptr noundef @.str.13), !dbg !1802
  %122 = load ptr, ptr %9, align 8, !dbg !1803
  %123 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %122, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !1804
  call void @glEnable(i32 noundef 3553), !dbg !1805
  %124 = getelementptr inbounds %"struct.LRT::OpenGLTextureRGBA8FB", ptr %22, i32 0, i32 2, !dbg !1806
  %125 = getelementptr inbounds %"class.RTTL::RTVec_t", ptr %124, i32 0, i32 0, !dbg !1807
  %126 = load i32, ptr %125, align 4, !dbg !1807
  %127 = getelementptr inbounds %"struct.LRT::OpenGLTextureRGBA8FB", ptr %22, i32 0, i32 2, !dbg !1808
  %128 = getelementptr inbounds %"class.RTTL::RTVec_t", ptr %127, i32 0, i32 1, !dbg !1809
  %129 = load i32, ptr %128, align 4, !dbg !1809
  call void @glTexImage2D(i32 noundef 3553, i32 noundef 0, i32 noundef 6408, i32 noundef %126, i32 noundef %129, i32 noundef 0, i32 noundef 32993, i32 noundef 5121, ptr noundef null), !dbg !1810
  call void @glTexParameteri(i32 noundef 3553, i32 noundef 10241, i32 noundef 9729), !dbg !1811
  call void @glTexParameteri(i32 noundef 3553, i32 noundef 10240, i32 noundef 9729), !dbg !1812
  call void @glTexParameteri(i32 noundef 3553, i32 noundef 10242, i32 noundef 10496), !dbg !1813
  call void @glTexParameteri(i32 noundef 3553, i32 noundef 10243, i32 noundef 10496), !dbg !1814
  br label %130, !dbg !1815

130:                                              ; preds = %119, %32
  %131 = getelementptr inbounds %"struct.LRT::RGBAucharFrameBuffer", ptr %22, i32 0, i32 1, !dbg !1816
  %132 = getelementptr inbounds %"class.RTTL::RTVec_t", ptr %131, i32 0, i32 0, !dbg !1817
  %133 = load i32, ptr %132, align 8, !dbg !1817
  %134 = sitofp i32 %133 to float, !dbg !1816
  %135 = getelementptr inbounds %"struct.LRT::OpenGLTextureRGBA8FB", ptr %22, i32 0, i32 2, !dbg !1818
  %136 = getelementptr inbounds %"class.RTTL::RTVec_t", ptr %135, i32 0, i32 0, !dbg !1819
  %137 = load i32, ptr %136, align 4, !dbg !1819
  %138 = sitofp i32 %137 to float, !dbg !1818
  %139 = fdiv float %134, %138, !dbg !1820
  %140 = getelementptr inbounds %"struct.LRT::OpenGLTextureRGBA8FB", ptr %22, i32 0, i32 3, !dbg !1821
  %141 = getelementptr inbounds %"class.RTTL::RTVec_t.0", ptr %140, i32 0, i32 0, !dbg !1822
  store float %139, ptr %141, align 4, !dbg !1823
  %142 = getelementptr inbounds %"struct.LRT::RGBAucharFrameBuffer", ptr %22, i32 0, i32 1, !dbg !1824
  %143 = getelementptr inbounds %"class.RTTL::RTVec_t", ptr %142, i32 0, i32 1, !dbg !1825
  %144 = load i32, ptr %143, align 4, !dbg !1825
  %145 = sitofp i32 %144 to float, !dbg !1824
  %146 = getelementptr inbounds %"struct.LRT::OpenGLTextureRGBA8FB", ptr %22, i32 0, i32 2, !dbg !1826
  %147 = getelementptr inbounds %"class.RTTL::RTVec_t", ptr %146, i32 0, i32 1, !dbg !1827
  %148 = load i32, ptr %147, align 4, !dbg !1827
  %149 = sitofp i32 %148 to float, !dbg !1826
  %150 = fdiv float %145, %149, !dbg !1828
  %151 = getelementptr inbounds %"struct.LRT::OpenGLTextureRGBA8FB", ptr %22, i32 0, i32 3, !dbg !1829
  %152 = getelementptr inbounds %"class.RTTL::RTVec_t.0", ptr %151, i32 0, i32 1, !dbg !1830
  store float %150, ptr %152, align 4, !dbg !1831
  ret void, !dbg !1832
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #6

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN3LRT20RGBAucharFrameBuffer6resizeEii(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #5 comdat align 2 !dbg !1833 {
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
  call void @llvm.dbg.declare(metadata ptr %25, metadata !1838, metadata !DIExpression()), !dbg !1840
  store i32 %1, ptr %26, align 4
  call void @llvm.dbg.declare(metadata ptr %26, metadata !1841, metadata !DIExpression()), !dbg !1842
  store i32 %2, ptr %27, align 4
  call void @llvm.dbg.declare(metadata ptr %27, metadata !1843, metadata !DIExpression()), !dbg !1844
  %33 = load ptr, ptr %25, align 8
  store i32 32, ptr %28, align 4, !dbg !1845
  %34 = load i32, ptr %26, align 4, !dbg !1846
  %35 = call noundef i32 @_Z14nextMultipleOfILi4EiET0_S0_(i32 noundef %34), !dbg !1847
  store i32 %35, ptr %29, align 4, !dbg !1847
  %36 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3maxIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %28, ptr noundef nonnull align 4 dereferenceable(4) %29), !dbg !1848
  %37 = load i32, ptr %36, align 4, !dbg !1848
  store i32 %37, ptr %26, align 4, !dbg !1849
  store i32 32, ptr %30, align 4, !dbg !1850
  %38 = load i32, ptr %27, align 4, !dbg !1851
  %39 = call noundef i32 @_Z14nextMultipleOfILi4EiET0_S0_(i32 noundef %38), !dbg !1852
  store i32 %39, ptr %31, align 4, !dbg !1852
  %40 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3maxIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %30, ptr noundef nonnull align 4 dereferenceable(4) %31), !dbg !1853
  %41 = load i32, ptr %40, align 4, !dbg !1853
  store i32 %41, ptr %27, align 4, !dbg !1854
  call void @llvm.dbg.declare(metadata ptr %32, metadata !1855, metadata !DIExpression()), !dbg !1856
  call void @_ZN4RTTL7RTVec_tILi2EiLi0EEC2ERKiS3_(ptr noundef nonnull align 4 dereferenceable(8) %32, ptr noundef nonnull align 4 dereferenceable(4) %26, ptr noundef nonnull align 4 dereferenceable(4) %27), !dbg !1856
  %42 = getelementptr inbounds %"struct.LRT::RGBAucharFrameBuffer", ptr %33, i32 0, i32 1, !dbg !1857
  store ptr %42, ptr %19, align 8
  call void @llvm.dbg.declare(metadata ptr %19, metadata !1859, metadata !DIExpression()), !dbg !1863
  store ptr %32, ptr %20, align 8
  call void @llvm.dbg.declare(metadata ptr %20, metadata !1865, metadata !DIExpression()), !dbg !1866
  %43 = load ptr, ptr %19, align 8, !dbg !1867
  %44 = load ptr, ptr %20, align 8, !dbg !1868
  store ptr %43, ptr %17, align 8
  call void @llvm.dbg.declare(metadata ptr %17, metadata !1869, metadata !DIExpression()), !dbg !1871
  store ptr %44, ptr %18, align 8
  call void @llvm.dbg.declare(metadata ptr %18, metadata !1873, metadata !DIExpression()), !dbg !1874
  %45 = load ptr, ptr %17, align 8, !dbg !1875
  %46 = call noundef nonnull align 4 dereferenceable(8) ptr @_ZNK4RTTL7RTVec_tILi2EiLi0EE5arrayEv(ptr noundef nonnull align 4 dereferenceable(8) %45), !dbg !1876
  %47 = load ptr, ptr %18, align 8, !dbg !1877
  %48 = call noundef nonnull align 4 dereferenceable(8) ptr @_ZNK4RTTL7RTVec_tILi2EiLi0EE5arrayEv(ptr noundef nonnull align 4 dereferenceable(8) %47), !dbg !1878
  store ptr %46, ptr %14, align 8
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1879, metadata !DIExpression()), !dbg !1884
  store ptr %48, ptr %15, align 8
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1886, metadata !DIExpression()), !dbg !1887
  call void @llvm.dbg.declare(metadata ptr %16, metadata !1888, metadata !DIExpression()), !dbg !1890
  store i32 0, ptr %16, align 4, !dbg !1890
  br label %49, !dbg !1891

49:                                               ; preds = %69, %3
  %50 = load i32, ptr %16, align 4, !dbg !1892
  %51 = icmp slt i32 %50, 2, !dbg !1894
  br i1 %51, label %52, label %72, !dbg !1895

52:                                               ; preds = %49
  %53 = load ptr, ptr %14, align 8, !dbg !1896
  %54 = load i32, ptr %16, align 4, !dbg !1898
  store ptr %53, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1725, metadata !DIExpression()), !dbg !1899
  store i32 %54, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1730, metadata !DIExpression()), !dbg !1901
  %55 = load ptr, ptr %9, align 8
  %56 = load i32, ptr %10, align 4, !dbg !1902
  %57 = sext i32 %56 to i64, !dbg !1903
  %58 = getelementptr inbounds [2 x i32], ptr %55, i64 0, i64 %57, !dbg !1903
  %59 = load i32, ptr %58, align 4, !dbg !1903
  %60 = load ptr, ptr %15, align 8, !dbg !1904
  %61 = load i32, ptr %16, align 4, !dbg !1905
  store ptr %60, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1725, metadata !DIExpression()), !dbg !1906
  store i32 %61, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1730, metadata !DIExpression()), !dbg !1908
  %62 = load ptr, ptr %11, align 8
  %63 = load i32, ptr %12, align 4, !dbg !1909
  %64 = sext i32 %63 to i64, !dbg !1910
  %65 = getelementptr inbounds [2 x i32], ptr %62, i64 0, i64 %64, !dbg !1910
  %66 = load i32, ptr %65, align 4, !dbg !1910
  %67 = icmp ne i32 %59, %66, !dbg !1911
  br i1 %67, label %68, label %69, !dbg !1912

68:                                               ; preds = %52
  store i1 false, ptr %13, align 1, !dbg !1913
  br label %73, !dbg !1913

69:                                               ; preds = %52
  %70 = load i32, ptr %16, align 4, !dbg !1914
  %71 = add nsw i32 %70, 1, !dbg !1914
  store i32 %71, ptr %16, align 4, !dbg !1914
  br label %49, !dbg !1915, !llvm.loop !1916

72:                                               ; preds = %49
  store i1 true, ptr %13, align 1, !dbg !1918
  br label %73, !dbg !1918

73:                                               ; preds = %68, %72
  %74 = load i1, ptr %13, align 1, !dbg !1919
  %75 = xor i1 %74, true, !dbg !1920
  br i1 %75, label %76, label %108, !dbg !1921

76:                                               ; preds = %73
  %77 = getelementptr inbounds %"struct.LRT::RGBAucharFrameBuffer", ptr %33, i32 0, i32 1, !dbg !1922
  store ptr %77, ptr %21, align 8
  call void @llvm.dbg.declare(metadata ptr %21, metadata !1687, metadata !DIExpression()), !dbg !1924
  store ptr %32, ptr %22, align 8
  call void @llvm.dbg.declare(metadata ptr %22, metadata !1692, metadata !DIExpression()), !dbg !1926
  %78 = load ptr, ptr %21, align 8
  call void @llvm.dbg.declare(metadata ptr %23, metadata !1694, metadata !DIExpression()), !dbg !1927
  %79 = call noundef nonnull align 4 dereferenceable(8) ptr @_ZN4RTTL7RTVec_tILi2EiLi0EEcvRNS_8RTData_tILi2EiLi0EEEEv(ptr noundef nonnull align 4 dereferenceable(8) %78), !dbg !1928
  store ptr %79, ptr %23, align 8, !dbg !1927
  call void @llvm.dbg.declare(metadata ptr %24, metadata !1697, metadata !DIExpression()), !dbg !1929
  %80 = load ptr, ptr %22, align 8, !dbg !1930
  %81 = call noundef nonnull align 4 dereferenceable(8) ptr @_ZNK4RTTL7RTVec_tILi2EiLi0EEcvRKNS_8RTData_tILi2EiLi0EEEEv(ptr noundef nonnull align 4 dereferenceable(8) %80), !dbg !1930
  store ptr %81, ptr %24, align 8, !dbg !1929
  %82 = load ptr, ptr %23, align 8, !dbg !1931
  %83 = load ptr, ptr %24, align 8, !dbg !1932
  store ptr %82, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1702, metadata !DIExpression()), !dbg !1933
  store ptr %83, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1712, metadata !DIExpression()), !dbg !1935
  %84 = load ptr, ptr %6, align 8
  %85 = call noundef i32 @_ZN4RTTL8RTData_tILi2EiLi0EE9nElementsEv(), !dbg !1936
  %86 = load ptr, ptr %7, align 8, !dbg !1936
  %87 = call noundef i32 @_ZN4RTTL8RTData_tILi2EiLi0EE9nElementsEv(), !dbg !1936
  %88 = icmp sle i32 %85, %87, !dbg !1936
  br i1 %88, label %89, label %90, !dbg !1936

89:                                               ; preds = %76
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1715, metadata !DIExpression()), !dbg !1937
  store i32 0, ptr %8, align 4, !dbg !1937
  br label %91, !dbg !1938

90:                                               ; preds = %76
  call void @__assert_fail(ptr noundef @.str.9, ptr noundef @.str.10, i32 noundef 44, ptr noundef @__PRETTY_FUNCTION__._ZN4RTTL8RTData_tILi2EiLi0EE6assignILi2EiLi0EEEvRKNS0_IXT_ET0_XT1_EEE) #11, !dbg !1936
  unreachable, !dbg !1936

91:                                               ; preds = %94, %89
  %92 = load i32, ptr %8, align 4, !dbg !1939
  %93 = icmp slt i32 %92, 2, !dbg !1940
  br i1 %93, label %94, label %107, !dbg !1941

94:                                               ; preds = %91
  %95 = load ptr, ptr %7, align 8, !dbg !1942
  %96 = load i32, ptr %8, align 4, !dbg !1943
  store ptr %95, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1725, metadata !DIExpression()), !dbg !1944
  store i32 %96, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1730, metadata !DIExpression()), !dbg !1946
  %97 = load ptr, ptr %4, align 8
  %98 = load i32, ptr %5, align 4, !dbg !1947
  %99 = sext i32 %98 to i64, !dbg !1948
  %100 = getelementptr inbounds [2 x i32], ptr %97, i64 0, i64 %99, !dbg !1948
  %101 = load i32, ptr %100, align 4, !dbg !1948
  %102 = load i32, ptr %8, align 4, !dbg !1949
  %103 = sext i32 %102 to i64, !dbg !1950
  %104 = getelementptr inbounds [2 x i32], ptr %84, i64 0, i64 %103, !dbg !1950
  store i32 %101, ptr %104, align 4, !dbg !1951
  %105 = load i32, ptr %8, align 4, !dbg !1952
  %106 = add nsw i32 %105, 1, !dbg !1952
  store i32 %106, ptr %8, align 4, !dbg !1952
  br label %91, !dbg !1953, !llvm.loop !1954

107:                                              ; preds = %91
  br label %108, !dbg !1956

108:                                              ; preds = %107, %73
  ret void, !dbg !1957
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4RTTL7RTVec_tILi2EiLi0EEC2ERKiS3_(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #7 comdat align 2 !dbg !1958 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1959, metadata !DIExpression()), !dbg !1960
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1961, metadata !DIExpression()), !dbg !1962
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1963, metadata !DIExpression()), !dbg !1964
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds %"class.RTTL::RTVec_t", ptr %7, i32 0, i32 0, !dbg !1965
  %9 = load ptr, ptr %5, align 8, !dbg !1966
  %10 = load i32, ptr %9, align 4, !dbg !1966
  store i32 %10, ptr %8, align 4, !dbg !1965
  %11 = getelementptr inbounds %"class.RTTL::RTVec_t", ptr %7, i32 0, i32 1, !dbg !1967
  %12 = load ptr, ptr %6, align 8, !dbg !1968
  %13 = load i32, ptr %12, align 4, !dbg !1968
  store i32 %13, ptr %11, align 4, !dbg !1967
  ret void, !dbg !1969
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #1

declare void @glEnable(i32 noundef) #1

declare void @glTexImage2D(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #1

declare void @glTexParameteri(i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN3LRT20OpenGLTextureRGBA8FB7displayEv(ptr noundef nonnull align 8 dereferenceable(44) %0) unnamed_addr #5 align 2 !dbg !1970 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1971, metadata !DIExpression()), !dbg !1972
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.LRT::OpenGLTextureRGBA8FB", ptr %3, i32 0, i32 1, !dbg !1973
  %5 = load i32, ptr %4, align 8, !dbg !1973
  call void @glBindTexture(i32 noundef 3553, i32 noundef %5), !dbg !1974
  call void @glEnable(i32 noundef 3553), !dbg !1975
  call void @glShadeModel(i32 noundef 7424), !dbg !1976
  call void @glDisable(i32 noundef 2929), !dbg !1977
  call void @glDisable(i32 noundef 2896), !dbg !1978
  call void @glPolygonMode(i32 noundef 1028, i32 noundef 6914), !dbg !1979
  call void @glColor4f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00), !dbg !1980
  call void @glMatrixMode(i32 noundef 5889), !dbg !1981
  %6 = getelementptr inbounds %"struct.LRT::RGBAucharFrameBuffer", ptr %3, i32 0, i32 1, !dbg !1982
  %7 = getelementptr inbounds %"class.RTTL::RTVec_t", ptr %6, i32 0, i32 0, !dbg !1983
  %8 = load i32, ptr %7, align 8, !dbg !1983
  %9 = getelementptr inbounds %"struct.LRT::RGBAucharFrameBuffer", ptr %3, i32 0, i32 1, !dbg !1984
  %10 = getelementptr inbounds %"class.RTTL::RTVec_t", ptr %9, i32 0, i32 1, !dbg !1985
  %11 = load i32, ptr %10, align 4, !dbg !1985
  call void @glViewport(i32 noundef 0, i32 noundef 0, i32 noundef %8, i32 noundef %11), !dbg !1986
  call void @glLoadIdentity(), !dbg !1987
  call void @glOrtho(double noundef 0.000000e+00, double noundef 1.000000e+00, double noundef 0.000000e+00, double noundef 1.000000e+00, double noundef -1.000000e+00, double noundef 1.000000e+00), !dbg !1988
  call void @glMatrixMode(i32 noundef 5888), !dbg !1989
  call void @glLoadIdentity(), !dbg !1990
  call void @glBegin(i32 noundef 7), !dbg !1991
  call void @glTexCoord2f(float noundef 0.000000e+00, float noundef 0.000000e+00), !dbg !1992
  call void @glVertex2f(float noundef 0.000000e+00, float noundef 1.000000e+00), !dbg !1994
  %12 = getelementptr inbounds %"struct.LRT::OpenGLTextureRGBA8FB", ptr %3, i32 0, i32 3, !dbg !1995
  %13 = getelementptr inbounds %"class.RTTL::RTVec_t.0", ptr %12, i32 0, i32 0, !dbg !1996
  %14 = load float, ptr %13, align 4, !dbg !1996
  call void @glTexCoord2f(float noundef %14, float noundef 0.000000e+00), !dbg !1997
  call void @glVertex2f(float noundef 1.000000e+00, float noundef 1.000000e+00), !dbg !1998
  %15 = getelementptr inbounds %"struct.LRT::OpenGLTextureRGBA8FB", ptr %3, i32 0, i32 3, !dbg !1999
  %16 = getelementptr inbounds %"class.RTTL::RTVec_t.0", ptr %15, i32 0, i32 0, !dbg !2000
  %17 = load float, ptr %16, align 4, !dbg !2000
  %18 = getelementptr inbounds %"struct.LRT::OpenGLTextureRGBA8FB", ptr %3, i32 0, i32 3, !dbg !2001
  %19 = getelementptr inbounds %"class.RTTL::RTVec_t.0", ptr %18, i32 0, i32 1, !dbg !2002
  %20 = load float, ptr %19, align 4, !dbg !2002
  call void @glTexCoord2f(float noundef %17, float noundef %20), !dbg !2003
  call void @glVertex2f(float noundef 1.000000e+00, float noundef 0.000000e+00), !dbg !2004
  %21 = getelementptr inbounds %"struct.LRT::OpenGLTextureRGBA8FB", ptr %3, i32 0, i32 3, !dbg !2005
  %22 = getelementptr inbounds %"class.RTTL::RTVec_t.0", ptr %21, i32 0, i32 1, !dbg !2006
  %23 = load float, ptr %22, align 4, !dbg !2006
  call void @glTexCoord2f(float noundef 0.000000e+00, float noundef %23), !dbg !2007
  call void @glVertex2f(float noundef 0.000000e+00, float noundef 0.000000e+00), !dbg !2008
  call void @glEnd(), !dbg !2009
  ret void, !dbg !2010
}

declare void @glBindTexture(i32 noundef, i32 noundef) #1

declare void @glShadeModel(i32 noundef) #1

declare void @glDisable(i32 noundef) #1

declare void @glPolygonMode(i32 noundef, i32 noundef) #1

declare void @glColor4f(float noundef, float noundef, float noundef, float noundef) #1

declare void @glMatrixMode(i32 noundef) #1

declare void @glViewport(i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

declare void @glLoadIdentity() #1

declare void @glOrtho(double noundef, double noundef, double noundef, double noundef, double noundef, double noundef) #1

declare void @glBegin(i32 noundef) #1

declare void @glTexCoord2f(float noundef, float noundef) #1

declare void @glVertex2f(float noundef, float noundef) #1

declare void @glEnd() #1

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN3LRT28BufferedOpenGLTextureRGBA8FB6resizeEii(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #5 align 2 !dbg !2011 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store ptr %0, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2024, metadata !DIExpression()), !dbg !2026
  store i32 %1, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2027, metadata !DIExpression()), !dbg !2028
  store i32 %2, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2029, metadata !DIExpression()), !dbg !2030
  %11 = load ptr, ptr %7, align 8
  %12 = load i32, ptr %8, align 4, !dbg !2031
  %13 = load i32, ptr %9, align 4, !dbg !2032
  call void @_ZN3LRT20OpenGLTextureRGBA8FB6resizeEii(ptr noundef nonnull align 8 dereferenceable(44) %11, i32 noundef %12, i32 noundef %13), !dbg !2033
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2034, metadata !DIExpression()), !dbg !2035
  %14 = getelementptr inbounds %"struct.LRT::RGBAucharFrameBuffer", ptr %11, i32 0, i32 1, !dbg !2036
  %15 = getelementptr inbounds %"class.RTTL::RTVec_t", ptr %14, i32 0, i32 0, !dbg !2037
  %16 = load i32, ptr %15, align 8, !dbg !2037
  %17 = getelementptr inbounds %"struct.LRT::RGBAucharFrameBuffer", ptr %11, i32 0, i32 1, !dbg !2038
  %18 = getelementptr inbounds %"class.RTTL::RTVec_t", ptr %17, i32 0, i32 1, !dbg !2039
  %19 = load i32, ptr %18, align 4, !dbg !2039
  %20 = mul nsw i32 %16, %19, !dbg !2040
  %21 = mul nsw i32 %20, 4, !dbg !2041
  %22 = call noundef i32 @_Z14nextMultipleOfILi1024EiET0_S0_(i32 noundef %21), !dbg !2042
  %23 = sext i32 %22 to i64, !dbg !2042
  store i64 %23, ptr %10, align 8, !dbg !2035
  %24 = load i64, ptr %10, align 8, !dbg !2043
  %25 = getelementptr inbounds %"struct.LRT::BufferedOpenGLTextureRGBA8FB", ptr %11, i32 0, i32 1, !dbg !2045
  %26 = load i32, ptr %25, align 4, !dbg !2045
  %27 = sext i32 %26 to i64, !dbg !2045
  %28 = icmp sge i64 %24, %27, !dbg !2046
  br i1 %28, label %29, label %92, !dbg !2047

29:                                               ; preds = %3
  %30 = getelementptr inbounds %"struct.LRT::RGBAucharFrameBuffer", ptr %11, i32 0, i32 2, !dbg !2048
  %31 = load ptr, ptr %30, align 8, !dbg !2048
  %32 = icmp ne ptr %31, null, !dbg !2048
  br i1 %32, label %33, label %38, !dbg !2051

33:                                               ; preds = %29
  %34 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.2), !dbg !2052
  %35 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %34, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !2054
  %36 = getelementptr inbounds %"struct.LRT::RGBAucharFrameBuffer", ptr %11, i32 0, i32 2, !dbg !2055
  %37 = load ptr, ptr %36, align 8, !dbg !2055
  call void @_Z12aligned_freeIhEvPT_(ptr noundef %37), !dbg !2056
  br label %38, !dbg !2057

38:                                               ; preds = %33, %29
  %39 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.3), !dbg !2058
  %40 = getelementptr inbounds %"struct.LRT::RGBAucharFrameBuffer", ptr %11, i32 0, i32 1, !dbg !2059
  store ptr %39, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1765, metadata !DIExpression()), !dbg !2060
  store ptr %40, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1778, metadata !DIExpression()), !dbg !2062
  %41 = load ptr, ptr %4, align 8, !dbg !2063
  %42 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %41, ptr noundef @.str.11), !dbg !2064
  %43 = load ptr, ptr %5, align 8, !dbg !2065
  %44 = call noundef i32 @_ZNK4RTTL7RTVec_tILi2EiLi0EEixEi(ptr noundef nonnull align 4 dereferenceable(8) %43, i32 noundef 0), !dbg !2065
  %45 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %42, i32 noundef %44), !dbg !2066
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1784, metadata !DIExpression()), !dbg !2067
  store i32 1, ptr %6, align 4, !dbg !2067
  br label %46, !dbg !2068

46:                                               ; preds = %49, %38
  %47 = load i32, ptr %6, align 4, !dbg !2069
  %48 = icmp slt i32 %47, 2, !dbg !2070
  br i1 %48, label %49, label %58, !dbg !2071

49:                                               ; preds = %46
  %50 = load ptr, ptr %4, align 8, !dbg !2072
  %51 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef @.str.12), !dbg !2073
  %52 = load ptr, ptr %5, align 8, !dbg !2074
  %53 = load i32, ptr %6, align 4, !dbg !2075
  %54 = call noundef i32 @_ZNK4RTTL7RTVec_tILi2EiLi0EEixEi(ptr noundef nonnull align 4 dereferenceable(8) %52, i32 noundef %53), !dbg !2074
  %55 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %51, i32 noundef %54), !dbg !2076
  %56 = load i32, ptr %6, align 4, !dbg !2077
  %57 = add nsw i32 %56, 1, !dbg !2077
  store i32 %57, ptr %6, align 4, !dbg !2077
  br label %46, !dbg !2078, !llvm.loop !2079

58:                                               ; preds = %46
  %59 = load ptr, ptr %4, align 8, !dbg !2081
  %60 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %59, ptr noundef @.str.13), !dbg !2082
  %61 = load ptr, ptr %4, align 8, !dbg !2083
  %62 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %61, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !2084
  %63 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.4), !dbg !2085
  %64 = load i64, ptr %10, align 8, !dbg !2086
  %65 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEl(ptr noundef nonnull align 8 dereferenceable(8) %63, i64 noundef %64), !dbg !2087
  %66 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %65, ptr noundef @.str.5), !dbg !2088
  %67 = getelementptr inbounds %"struct.LRT::RGBAucharFrameBuffer", ptr %11, i32 0, i32 1, !dbg !2089
  %68 = getelementptr inbounds %"class.RTTL::RTVec_t", ptr %67, i32 0, i32 0, !dbg !2090
  %69 = load i32, ptr %68, align 8, !dbg !2090
  %70 = getelementptr inbounds %"struct.LRT::RGBAucharFrameBuffer", ptr %11, i32 0, i32 1, !dbg !2091
  %71 = getelementptr inbounds %"class.RTTL::RTVec_t", ptr %70, i32 0, i32 1, !dbg !2092
  %72 = load i32, ptr %71, align 4, !dbg !2092
  %73 = mul nsw i32 %69, %72, !dbg !2093
  %74 = mul nsw i32 %73, 4, !dbg !2094
  %75 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %66, i32 noundef %74), !dbg !2095
  %76 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %75, ptr noundef @.str.6), !dbg !2096
  %77 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %76, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !2097
  %78 = load i64, ptr %10, align 8, !dbg !2098
  %79 = trunc i64 %78 to i32, !dbg !2098
  %80 = call noundef ptr @_Z14aligned_mallocIhEPT_i(i32 noundef %79), !dbg !2099
  %81 = getelementptr inbounds %"struct.LRT::RGBAucharFrameBuffer", ptr %11, i32 0, i32 2, !dbg !2100
  store ptr %80, ptr %81, align 8, !dbg !2101
  %82 = load i64, ptr %10, align 8, !dbg !2102
  %83 = trunc i64 %82 to i32, !dbg !2102
  %84 = getelementptr inbounds %"struct.LRT::BufferedOpenGLTextureRGBA8FB", ptr %11, i32 0, i32 1, !dbg !2103
  store i32 %83, ptr %84, align 4, !dbg !2104
  %85 = getelementptr inbounds %"struct.LRT::RGBAucharFrameBuffer", ptr %11, i32 0, i32 2, !dbg !2105
  %86 = load ptr, ptr %85, align 8, !dbg !2105
  %87 = call noundef zeroext i1 @_Z10is_alignedILm16EhEbPT0_(ptr noundef %86), !dbg !2105
  br i1 %87, label %88, label %89, !dbg !2105

88:                                               ; preds = %58
  br label %91, !dbg !2105

89:                                               ; preds = %58
  call void @__assert_fail(ptr noundef @.str.7, ptr noundef @.str.8, i32 noundef 144, ptr noundef @__PRETTY_FUNCTION__._ZN3LRT28BufferedOpenGLTextureRGBA8FB6resizeEii) #11, !dbg !2105
  unreachable, !dbg !2105

90:                                               ; No predecessors!
  br label %91, !dbg !2105

91:                                               ; preds = %90, %88
  br label %92, !dbg !2106

92:                                               ; preds = %91, %3
  ret void, !dbg !2107
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @_Z14nextMultipleOfILi1024EiET0_S0_(i32 noundef %0) #8 comdat !dbg !2108 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2112, metadata !DIExpression()), !dbg !2113
  %3 = load i32, ptr %2, align 4, !dbg !2114
  %4 = add nsw i32 %3, 1024, !dbg !2115
  %5 = sub nsw i32 %4, 1, !dbg !2116
  %6 = sdiv i32 %5, 1024, !dbg !2117
  %7 = mul nsw i32 %6, 1024, !dbg !2118
  ret i32 %7, !dbg !2119
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_Z12aligned_freeIhEvPT_(ptr noundef %0) #5 comdat !dbg !2120 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2125, metadata !DIExpression()), !dbg !2126
  %4 = load ptr, ptr %3, align 8, !dbg !2127
  store ptr %4, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2128, metadata !DIExpression()), !dbg !2130
  %5 = load ptr, ptr %2, align 8, !dbg !2132
  call void @free(ptr noundef %5) #3, !dbg !2133
  ret void, !dbg !2134
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEl(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #1

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @_Z14aligned_mallocIhEPT_i(i32 noundef %0) #5 comdat !dbg !2135 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2138, metadata !DIExpression()), !dbg !2139
  %5 = load i32, ptr %4, align 4, !dbg !2140
  %6 = sext i32 %5 to i64, !dbg !2140
  %7 = mul i64 %6, 1, !dbg !2141
  %8 = trunc i64 %7 to i32, !dbg !2140
  store i32 %8, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2142, metadata !DIExpression()), !dbg !2146
  store i32 64, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2148, metadata !DIExpression()), !dbg !2149
  %9 = load i32, ptr %3, align 4, !dbg !2150
  %10 = sext i32 %9 to i64, !dbg !2150
  %11 = load i32, ptr %2, align 4, !dbg !2151
  %12 = sext i32 %11 to i64, !dbg !2151
  %13 = call noalias ptr @memalign(i64 noundef %10, i64 noundef %12) #3, !dbg !2152
  call void @llvm.assume(i1 true) [ "align"(ptr %13, i64 %10) ], !dbg !2152
  ret ptr %13, !dbg !2153
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_Z10is_alignedILm16EhEbPT0_(ptr noundef %0) #8 comdat !dbg !2154 {
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2159, metadata !DIExpression()), !dbg !2160
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2161, metadata !DIExpression()), !dbg !2162
  %4 = load ptr, ptr %2, align 8, !dbg !2163
  %5 = ptrtoint ptr %4 to i64, !dbg !2164
  %6 = sub i64 %5, 0, !dbg !2164
  store i64 %6, ptr %3, align 8, !dbg !2162
  %7 = load i64, ptr %3, align 8, !dbg !2165
  %8 = urem i64 %7, 16, !dbg !2166
  %9 = icmp eq i64 %8, 0, !dbg !2167
  ret i1 %9, !dbg !2168
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #9

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN3LRT28BufferedOpenGLTextureRGBA8FB13doneWithFrameEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 align 2 !dbg !2169 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2170, metadata !DIExpression()), !dbg !2171
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.LRT::OpenGLTextureRGBA8FB", ptr %3, i32 0, i32 1, !dbg !2172
  %5 = load i32, ptr %4, align 8, !dbg !2172
  call void @glBindTexture(i32 noundef 3553, i32 noundef %5), !dbg !2173
  call void @glEnable(i32 noundef 3553), !dbg !2174
  %6 = getelementptr inbounds %"struct.LRT::RGBAucharFrameBuffer", ptr %3, i32 0, i32 1, !dbg !2175
  %7 = getelementptr inbounds %"class.RTTL::RTVec_t", ptr %6, i32 0, i32 0, !dbg !2176
  %8 = load i32, ptr %7, align 8, !dbg !2176
  %9 = getelementptr inbounds %"struct.LRT::RGBAucharFrameBuffer", ptr %3, i32 0, i32 1, !dbg !2177
  %10 = getelementptr inbounds %"class.RTTL::RTVec_t", ptr %9, i32 0, i32 1, !dbg !2178
  %11 = load i32, ptr %10, align 4, !dbg !2178
  %12 = getelementptr inbounds %"struct.LRT::RGBAucharFrameBuffer", ptr %3, i32 0, i32 2, !dbg !2179
  %13 = load ptr, ptr %12, align 8, !dbg !2179
  call void @glTexSubImage2D(i32 noundef 3553, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %8, i32 noundef %11, i32 noundef 32993, i32 noundef 5121, ptr noundef %13), !dbg !2180
  ret void, !dbg !2181
}

declare void @glTexSubImage2D(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN3LRT20OpenGLTextureRGBA8FB13startNewFrameEv(ptr noundef nonnull align 8 dereferenceable(44) %0) unnamed_addr #8 comdat align 2 !dbg !2182 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2183, metadata !DIExpression()), !dbg !2184
  %3 = load ptr, ptr %2, align 8
  ret void, !dbg !2185
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN5sse_fC2Ev(ptr noundef nonnull align 4 dereferenceable(16) %0) unnamed_addr #7 comdat align 2 !dbg !2186 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2187, metadata !DIExpression()), !dbg !2189
  %3 = load ptr, ptr %2, align 8
  ret void, !dbg !2190
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3maxIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #8 comdat !dbg !2191 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2197, metadata !DIExpression()), !dbg !2199
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2200, metadata !DIExpression()), !dbg !2201
  %6 = load ptr, ptr %4, align 8, !dbg !2202
  %7 = load i32, ptr %6, align 4, !dbg !2202
  %8 = load ptr, ptr %5, align 8, !dbg !2204
  %9 = load i32, ptr %8, align 4, !dbg !2204
  %10 = icmp slt i32 %7, %9, !dbg !2205
  br i1 %10, label %11, label %13, !dbg !2206

11:                                               ; preds = %2
  %12 = load ptr, ptr %5, align 8, !dbg !2207
  store ptr %12, ptr %3, align 8, !dbg !2208
  br label %15, !dbg !2208

13:                                               ; preds = %2
  %14 = load ptr, ptr %4, align 8, !dbg !2209
  store ptr %14, ptr %3, align 8, !dbg !2210
  br label %15, !dbg !2210

15:                                               ; preds = %13, %11
  %16 = load ptr, ptr %3, align 8, !dbg !2211
  ret ptr %16, !dbg !2211
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @_Z14nextMultipleOfILi4EiET0_S0_(i32 noundef %0) #8 comdat !dbg !2212 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2215, metadata !DIExpression()), !dbg !2216
  %3 = load i32, ptr %2, align 4, !dbg !2217
  %4 = add nsw i32 %3, 4, !dbg !2218
  %5 = sub nsw i32 %4, 1, !dbg !2219
  %6 = sdiv i32 %5, 4, !dbg !2220
  %7 = mul nsw i32 %6, 4, !dbg !2221
  ret i32 %7, !dbg !2222
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(8) ptr @_ZNK4RTTL7RTVec_tILi2EiLi0EE5arrayEv(ptr noundef nonnull align 4 dereferenceable(8) %0) #8 comdat align 2 !dbg !2223 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2224, metadata !DIExpression()), !dbg !2226
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.RTTL::RTVec_t", ptr %3, i32 0, i32 0, !dbg !2227
  ret ptr %4, !dbg !2228
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(8) ptr @_ZN4RTTL7RTVec_tILi2EiLi0EEcvRNS_8RTData_tILi2EiLi0EEEEv(ptr noundef nonnull align 4 dereferenceable(8) %0) #8 comdat align 2 !dbg !2229 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2230, metadata !DIExpression()), !dbg !2231
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.RTTL::RTVec_t", ptr %3, i32 0, i32 0, !dbg !2232
  ret ptr %4, !dbg !2233
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(8) ptr @_ZNK4RTTL7RTVec_tILi2EiLi0EEcvRKNS_8RTData_tILi2EiLi0EEEEv(ptr noundef nonnull align 4 dereferenceable(8) %0) #8 comdat align 2 !dbg !2234 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2235, metadata !DIExpression()), !dbg !2236
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.RTTL::RTVec_t", ptr %3, i32 0, i32 0, !dbg !2237
  ret ptr %4, !dbg !2238
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZN4RTTL8RTData_tILi2EiLi0EE9nElementsEv() #8 comdat align 2 !dbg !2239 {
  ret i32 2, !dbg !2240
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZNK4RTTL7RTVec_tILi2EiLi0EEixEi(ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef %1) #5 comdat align 2 !dbg !2241 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2242, metadata !DIExpression()), !dbg !2243
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2244, metadata !DIExpression()), !dbg !2245
  %5 = load ptr, ptr %3, align 8
  %6 = call noundef ptr @_ZNK4RTTL7RTVec_tILi2EiLi0EE4dataEv(ptr noundef nonnull align 4 dereferenceable(8) %5), !dbg !2246
  %7 = load i32, ptr %4, align 4, !dbg !2247
  %8 = sext i32 %7 to i64, !dbg !2246
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !2246
  %10 = load i32, ptr %9, align 4, !dbg !2246
  ret i32 %10, !dbg !2248
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZNK4RTTL7RTVec_tILi2EiLi0EE4dataEv(ptr noundef nonnull align 4 dereferenceable(8) %0) #8 comdat align 2 !dbg !2249 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2250, metadata !DIExpression()), !dbg !2251
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.RTTL::RTVec_t", ptr %3, i32 0, i32 0, !dbg !2252
  ret ptr %4, !dbg !2253
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #2

; Function Attrs: nounwind
declare noalias ptr @memalign(i64 noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_GLTextureFB.cxx() #0 section ".text.startup" !dbg !2254 {
  call void @__cxx_global_var_init(), !dbg !2256
  call void @__cxx_global_var_init.1(), !dbg !2256
  ret void
}

attributes #0 = { noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #11 = { noreturn nounwind }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!1615, !1616, !1617, !1618, !1619, !1620, !1621}
!llvm.ident = !{!1622}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__ioinit", linkageName: "_ZStL8__ioinit", scope: !2, file: !3, line: 74, type: !4, isLocal: true, isDefinition: true)
!2 = !DINamespace(name: "std", scope: null)
!3 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/iostream", directory: "")
!4 = !DICompositeType(tag: DW_TAG_class_type, name: "Init", scope: !6, file: !5, line: 626, size: 8, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt8ios_base4InitE")
!5 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/ios_base.h", directory: "")
!6 = !DICompositeType(tag: DW_TAG_class_type, name: "ios_base", scope: !2, file: !5, line: 228, size: 1728, flags: DIFlagFwdDecl | DIFlagNonTrivial)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "maxFloat", linkageName: "_ZL8maxFloat", scope: !9, file: !1612, line: 38, type: !1613, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !10, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !11, globals: !224, imports: !292, splitDebugInlining: false, nameTableKind: None)
!10 = !DIFile(filename: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src/LRT/FrameBuffer/GLTextureFB.cxx", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src/build/LRT", checksumkind: CSK_MD5, checksum: "e9a66cf27d6f9cdea172203e740bd0e6")
!11 = !{!12, !13, !16, !17, !19, !184, !185, !213, !21}
!12 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "GLsizei", file: !14, line: 126, baseType: !15)
!14 = !DIFile(filename: "/usr/include/GL/gl.h", directory: "", checksumkind: CSK_MD5, checksum: "4fc52ea6002b22ad952bb66df2bdf3e5")
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "DataArray", scope: !21, file: !20, line: 26, baseType: !28, flags: DIFlagPublic)
!20 = !DIFile(filename: "RTTL/common/RTVecBody.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src", checksumkind: CSK_MD5, checksum: "b80a89a3623c8e3d3f09e41d609e754a")
!21 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "RTVec_t<2, int, 0>", scope: !23, file: !22, line: 42, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !24, templateParams: !88, identifier: "_ZTSN4RTTL7RTVec_tILi2EiLi0EEE")
!22 = !DIFile(filename: "RTTL/common/RTVec.hxx", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src", checksumkind: CSK_MD5, checksum: "adfbd7ae4dab54b31af1e64824b8abcb")
!23 = !DINamespace(name: "RTTL", scope: null)
!24 = !{!25, !92, !93, !97, !100, !103, !104, !105, !106, !111, !114, !115, !116, !117, !118, !119, !120, !121, !122, !126, !129, !130, !131, !134, !135, !136, !137, !138, !139, !140, !141, !144, !148, !151, !154, !157, !158, !159, !163, !168, !169, !170, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !21, file: !20, line: 337, baseType: !26, size: 32, flags: DIFlagPublic)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "AlignedDataType", scope: !28, file: !27, line: 24, baseType: !15)
!27 = !DIFile(filename: "RTTL/common/RTData.hxx", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src", checksumkind: CSK_MD5, checksum: "f4e0c70e47861859820b913e006060bd")
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RTData_t<2, int, 0>", scope: !23, file: !27, line: 22, size: 64, flags: DIFlagTypePassByValue, elements: !29, templateParams: !88, identifier: "_ZTSN4RTTL8RTData_tILi2EiLi0EEE")
!29 = !{!30, !34, !39, !45, !49, !53, !56, !60, !61, !62, !63, !64, !65, !66, !67, !70, !71, !72, !73, !76, !77, !78, !79, !82, !83, !84, !85}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "t", scope: !28, file: !27, line: 178, baseType: !31, size: 64, flags: DIFlagProtected)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 64, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 2)
!34 = !DISubprogram(name: "alignment", linkageName: "_ZNK4RTTL8RTData_tILi2EiLi0EE9alignmentEv", scope: !28, file: !27, line: 25, type: !35, scopeLine: 25, flags: DIFlagPrototyped, spFlags: 0)
!35 = !DISubroutineType(types: !36)
!36 = !{!15, !37}
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!39 = !DISubprogram(name: "assignDataTypeValue", linkageName: "_ZN4RTTL8RTData_tILi2EiLi0EE19assignDataTypeValueERKi", scope: !28, file: !27, line: 28, type: !40, scopeLine: 28, flags: DIFlagPrototyped, spFlags: 0)
!40 = !DISubroutineType(types: !41)
!41 = !{null, !42, !43}
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!43 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!45 = !DISubprogram(name: "assignDataTypeArray", linkageName: "_ZN4RTTL8RTData_tILi2EiLi0EE19assignDataTypeArrayEPKi", scope: !28, file: !27, line: 32, type: !46, scopeLine: 32, flags: DIFlagPrototyped, spFlags: 0)
!46 = !DISubroutineType(types: !47)
!47 = !{null, !42, !48}
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!49 = !DISubprogram(name: "operator[]", linkageName: "_ZN4RTTL8RTData_tILi2EiLi0EEixEi", scope: !28, file: !27, line: 49, type: !50, scopeLine: 49, flags: DIFlagPrototyped, spFlags: 0)
!50 = !DISubroutineType(types: !51)
!51 = !{!52, !42, !15}
!52 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !15, size: 64)
!53 = !DISubprogram(name: "operator[]", linkageName: "_ZNK4RTTL8RTData_tILi2EiLi0EEixEi", scope: !28, file: !27, line: 52, type: !54, scopeLine: 52, flags: DIFlagPrototyped, spFlags: 0)
!54 = !DISubroutineType(types: !55)
!55 = !{!15, !37, !15}
!56 = !DISubprogram(name: "operator+=", linkageName: "_ZN4RTTL8RTData_tILi2EiLi0EEpLERKS1_", scope: !28, file: !27, line: 56, type: !57, scopeLine: 56, flags: DIFlagPrototyped, spFlags: 0)
!57 = !DISubroutineType(types: !58)
!58 = !{null, !42, !59}
!59 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !38, size: 64)
!60 = !DISubprogram(name: "operator-=", linkageName: "_ZN4RTTL8RTData_tILi2EiLi0EEmIERKS1_", scope: !28, file: !27, line: 61, type: !57, scopeLine: 61, flags: DIFlagPrototyped, spFlags: 0)
!61 = !DISubprogram(name: "operator*=", linkageName: "_ZN4RTTL8RTData_tILi2EiLi0EEmLERKS1_", scope: !28, file: !27, line: 66, type: !57, scopeLine: 66, flags: DIFlagPrototyped, spFlags: 0)
!62 = !DISubprogram(name: "operator/=", linkageName: "_ZN4RTTL8RTData_tILi2EiLi0EEdVERKS1_", scope: !28, file: !27, line: 71, type: !57, scopeLine: 71, flags: DIFlagPrototyped, spFlags: 0)
!63 = !DISubprogram(name: "operator+=", linkageName: "_ZN4RTTL8RTData_tILi2EiLi0EEpLERKi", scope: !28, file: !27, line: 76, type: !40, scopeLine: 76, flags: DIFlagPrototyped, spFlags: 0)
!64 = !DISubprogram(name: "operator-=", linkageName: "_ZN4RTTL8RTData_tILi2EiLi0EEmIERKi", scope: !28, file: !27, line: 81, type: !40, scopeLine: 81, flags: DIFlagPrototyped, spFlags: 0)
!65 = !DISubprogram(name: "operator*=", linkageName: "_ZN4RTTL8RTData_tILi2EiLi0EEmLERKi", scope: !28, file: !27, line: 86, type: !40, scopeLine: 86, flags: DIFlagPrototyped, spFlags: 0)
!66 = !DISubprogram(name: "operator/=", linkageName: "_ZN4RTTL8RTData_tILi2EiLi0EEdVERKi", scope: !28, file: !27, line: 91, type: !40, scopeLine: 91, flags: DIFlagPrototyped, spFlags: 0)
!67 = !DISubprogram(name: "add", linkageName: "_ZN4RTTL8RTData_tILi2EiLi0EE3addERKS1_S3_", scope: !28, file: !27, line: 96, type: !68, scopeLine: 96, flags: DIFlagPrototyped, spFlags: 0)
!68 = !DISubroutineType(types: !69)
!69 = !{null, !42, !59, !59}
!70 = !DISubprogram(name: "subtract", linkageName: "_ZN4RTTL8RTData_tILi2EiLi0EE8subtractERKS1_S3_", scope: !28, file: !27, line: 100, type: !68, scopeLine: 100, flags: DIFlagPrototyped, spFlags: 0)
!71 = !DISubprogram(name: "multiply", linkageName: "_ZN4RTTL8RTData_tILi2EiLi0EE8multiplyERKS1_S3_", scope: !28, file: !27, line: 104, type: !68, scopeLine: 104, flags: DIFlagPrototyped, spFlags: 0)
!72 = !DISubprogram(name: "divide", linkageName: "_ZN4RTTL8RTData_tILi2EiLi0EE6divideERKS1_S3_", scope: !28, file: !27, line: 108, type: !68, scopeLine: 108, flags: DIFlagPrototyped, spFlags: 0)
!73 = !DISubprogram(name: "add", linkageName: "_ZN4RTTL8RTData_tILi2EiLi0EE3addERKS1_PKi", scope: !28, file: !27, line: 113, type: !74, scopeLine: 113, flags: DIFlagPrototyped, spFlags: 0)
!74 = !DISubroutineType(types: !75)
!75 = !{null, !42, !59, !48}
!76 = !DISubprogram(name: "subtract", linkageName: "_ZN4RTTL8RTData_tILi2EiLi0EE8subtractERKS1_PKi", scope: !28, file: !27, line: 117, type: !74, scopeLine: 117, flags: DIFlagPrototyped, spFlags: 0)
!77 = !DISubprogram(name: "multiply", linkageName: "_ZN4RTTL8RTData_tILi2EiLi0EE8multiplyERKS1_PKi", scope: !28, file: !27, line: 121, type: !74, scopeLine: 121, flags: DIFlagPrototyped, spFlags: 0)
!78 = !DISubprogram(name: "divide", linkageName: "_ZN4RTTL8RTData_tILi2EiLi0EE6divideERKS1_PKi", scope: !28, file: !27, line: 125, type: !74, scopeLine: 125, flags: DIFlagPrototyped, spFlags: 0)
!79 = !DISubprogram(name: "add", linkageName: "_ZN4RTTL8RTData_tILi2EiLi0EE3addEPKiRKS1_", scope: !28, file: !27, line: 130, type: !80, scopeLine: 130, flags: DIFlagPrototyped, spFlags: 0)
!80 = !DISubroutineType(types: !81)
!81 = !{null, !42, !48, !59}
!82 = !DISubprogram(name: "subtract", linkageName: "_ZN4RTTL8RTData_tILi2EiLi0EE8subtractEPKiRKS1_", scope: !28, file: !27, line: 133, type: !80, scopeLine: 133, flags: DIFlagPrototyped, spFlags: 0)
!83 = !DISubprogram(name: "multiply", linkageName: "_ZN4RTTL8RTData_tILi2EiLi0EE8multiplyEPKiRKS1_", scope: !28, file: !27, line: 136, type: !80, scopeLine: 136, flags: DIFlagPrototyped, spFlags: 0)
!84 = !DISubprogram(name: "divide", linkageName: "_ZN4RTTL8RTData_tILi2EiLi0EE6divideEPKiRKS1_", scope: !28, file: !27, line: 139, type: !80, scopeLine: 139, flags: DIFlagPrototyped, spFlags: 0)
!85 = !DISubprogram(name: "nElements", linkageName: "_ZN4RTTL8RTData_tILi2EiLi0EE9nElementsEv", scope: !28, file: !27, line: 175, type: !86, scopeLine: 175, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!86 = !DISubroutineType(types: !87)
!87 = !{!15}
!88 = !{!89, !90, !91}
!89 = !DITemplateValueParameter(name: "N", type: !15, value: i32 2)
!90 = !DITemplateTypeParameter(name: "DataType", type: !15)
!91 = !DITemplateValueParameter(name: "align", type: !15, defaulted: true, value: i32 0)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !21, file: !20, line: 338, baseType: !15, size: 32, offset: 32, flags: DIFlagPublic)
!93 = !DISubprogram(name: "RTVec_t", scope: !21, file: !20, line: 29, type: !94, scopeLine: 29, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!94 = !DISubroutineType(types: !95)
!95 = !{null, !96}
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!97 = !DISubprogram(name: "RTVec_t", scope: !21, file: !20, line: 34, type: !98, scopeLine: 34, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!98 = !DISubroutineType(types: !99)
!99 = !{null, !96, !43}
!100 = !DISubprogram(name: "RTVec_t", scope: !21, file: !20, line: 50, type: !101, scopeLine: 50, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!101 = !DISubroutineType(types: !102)
!102 = !{null, !96, !48}
!103 = !DISubprogram(name: "nElements", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EE9nElementsEv", scope: !21, file: !20, line: 56, type: !86, scopeLine: 56, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!104 = !DISubprogram(name: "entrySize", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EE9entrySizeEv", scope: !21, file: !20, line: 57, type: !86, scopeLine: 57, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!105 = !DISubprogram(name: "totalSize", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EE9totalSizeEv", scope: !21, file: !20, line: 58, type: !86, scopeLine: 58, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!106 = !DISubprogram(name: "operator=", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EEaSERKS1_", scope: !21, file: !20, line: 74, type: !107, scopeLine: 74, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!107 = !DISubroutineType(types: !108)
!108 = !{!109, !96, !109}
!109 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!111 = !DISubprogram(name: "operator=", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EEaSERKi", scope: !21, file: !20, line: 81, type: !112, scopeLine: 81, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!112 = !DISubroutineType(types: !113)
!113 = !{!109, !96, !43}
!114 = !DISubprogram(name: "operator+=", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EEpLERKS1_", scope: !21, file: !20, line: 87, type: !107, scopeLine: 87, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!115 = !DISubprogram(name: "operator-=", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EEmIERKS1_", scope: !21, file: !20, line: 93, type: !107, scopeLine: 93, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!116 = !DISubprogram(name: "operator*=", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EEmLERKS1_", scope: !21, file: !20, line: 99, type: !107, scopeLine: 99, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!117 = !DISubprogram(name: "operator/=", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EEdVERKS1_", scope: !21, file: !20, line: 105, type: !107, scopeLine: 105, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!118 = !DISubprogram(name: "operator+=", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EEpLERKi", scope: !21, file: !20, line: 111, type: !112, scopeLine: 111, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!119 = !DISubprogram(name: "operator-=", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EEmIERKi", scope: !21, file: !20, line: 117, type: !112, scopeLine: 117, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!120 = !DISubprogram(name: "operator*=", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EEmLERKi", scope: !21, file: !20, line: 123, type: !112, scopeLine: 123, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!121 = !DISubprogram(name: "operator/=", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EEdVERKi", scope: !21, file: !20, line: 129, type: !112, scopeLine: 129, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!122 = !DISubprogram(name: "dot", linkageName: "_ZNK4RTTL7RTVec_tILi2EiLi0EE3dotERKS1_", scope: !21, file: !20, line: 135, type: !123, scopeLine: 135, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!123 = !DISubroutineType(types: !124)
!124 = !{!15, !125, !109}
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!126 = !DISubprogram(name: "lengthSquared", linkageName: "_ZNK4RTTL7RTVec_tILi2EiLi0EE13lengthSquaredEv", scope: !21, file: !20, line: 145, type: !127, scopeLine: 145, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!127 = !DISubroutineType(types: !128)
!128 = !{!15, !125}
!129 = !DISubprogram(name: "length", linkageName: "_ZNK4RTTL7RTVec_tILi2EiLi0EE6lengthEv", scope: !21, file: !20, line: 153, type: !127, scopeLine: 153, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!130 = !DISubprogram(name: "normalize", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EE9normalizeEv", scope: !21, file: !20, line: 157, type: !94, scopeLine: 157, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!131 = !DISubprogram(name: "setMin", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EE6setMinERKS1_", scope: !21, file: !20, line: 164, type: !132, scopeLine: 164, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!132 = !DISubroutineType(types: !133)
!133 = !{null, !96, !109}
!134 = !DISubprogram(name: "setMin", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EE6setMinERKi", scope: !21, file: !20, line: 169, type: !98, scopeLine: 169, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!135 = !DISubprogram(name: "setMax", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EE6setMaxERKS1_", scope: !21, file: !20, line: 174, type: !132, scopeLine: 174, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!136 = !DISubprogram(name: "setMax", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EE6setMaxERKi", scope: !21, file: !20, line: 179, type: !98, scopeLine: 179, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!137 = !DISubprogram(name: "epsilon", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EE7epsilonEv", scope: !21, file: !20, line: 186, type: !86, scopeLine: 186, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!138 = !DISubprogram(name: "minValue", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EE8minValueEv", scope: !21, file: !20, line: 187, type: !86, scopeLine: 187, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!139 = !DISubprogram(name: "maxValue", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EE8maxValueEv", scope: !21, file: !20, line: 188, type: !86, scopeLine: 188, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!140 = !DISubprogram(name: "infinity", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EE8infinityEv", scope: !21, file: !20, line: 189, type: !86, scopeLine: 189, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!141 = !DISubprogram(name: "RTVec_t", scope: !21, file: !20, line: 198, type: !142, scopeLine: 198, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!142 = !DISubroutineType(types: !143)
!143 = !{null, !96, !43, !43}
!144 = !DISubprogram(name: "data", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EE4dataEv", scope: !21, file: !20, line: 201, type: !145, scopeLine: 201, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!145 = !DISubroutineType(types: !146)
!146 = !{!147, !96}
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!148 = !DISubprogram(name: "data", linkageName: "_ZNK4RTTL7RTVec_tILi2EiLi0EE4dataEv", scope: !21, file: !20, line: 202, type: !149, scopeLine: 202, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!149 = !DISubroutineType(types: !150)
!150 = !{!48, !125}
!151 = !DISubprogram(name: "operator[]", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EEixEi", scope: !21, file: !20, line: 205, type: !152, scopeLine: 205, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!152 = !DISubroutineType(types: !153)
!153 = !{!52, !96, !15}
!154 = !DISubprogram(name: "operator[]", linkageName: "_ZNK4RTTL7RTVec_tILi2EiLi0EEixEi", scope: !21, file: !20, line: 206, type: !155, scopeLine: 206, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!155 = !DISubroutineType(types: !156)
!156 = !{!15, !125, !15}
!157 = !DISubprogram(name: "operator int *", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EEcvPiEv", scope: !21, file: !20, line: 209, type: !145, scopeLine: 209, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!158 = !DISubprogram(name: "operator const int *", linkageName: "_ZNK4RTTL7RTVec_tILi2EiLi0EEcvPKiEv", scope: !21, file: !20, line: 210, type: !149, scopeLine: 210, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!159 = !DISubprogram(name: "operator RTTL::RTData_t<2, int> &", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EEcvRNS_8RTData_tILi2EiLi0EEEEv", scope: !21, file: !20, line: 213, type: !160, scopeLine: 213, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!160 = !DISubroutineType(types: !161)
!161 = !{!162, !96}
!162 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !19, size: 64)
!163 = !DISubprogram(name: "operator const RTTL::RTData_t<2, int> &", linkageName: "_ZNK4RTTL7RTVec_tILi2EiLi0EEcvRKNS_8RTData_tILi2EiLi0EEEEv", scope: !21, file: !20, line: 214, type: !164, scopeLine: 214, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!164 = !DISubroutineType(types: !165)
!165 = !{!166, !125}
!166 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!168 = !DISubprogram(name: "array", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EE5arrayEv", scope: !21, file: !20, line: 215, type: !160, scopeLine: 215, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!169 = !DISubprogram(name: "array", linkageName: "_ZNK4RTTL7RTVec_tILi2EiLi0EE5arrayEv", scope: !21, file: !20, line: 216, type: !164, scopeLine: 216, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!170 = !DISubprogram(name: "entry", linkageName: "_ZNK4RTTL7RTVec_tILi2EiLi0EE5entryEi", scope: !21, file: !20, line: 242, type: !171, scopeLine: 242, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!171 = !DISubroutineType(types: !172)
!172 = !{!43, !125, !15}
!173 = !DISubprogram(name: "entry", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EE5entryEi", scope: !21, file: !20, line: 246, type: !152, scopeLine: 246, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!174 = !DISubprogram(name: "pointer", linkageName: "_ZNK4RTTL7RTVec_tILi2EiLi0EE7pointerEv", scope: !21, file: !20, line: 250, type: !149, scopeLine: 250, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!175 = !DISubprogram(name: "pointer", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EE7pointerEv", scope: !21, file: !20, line: 254, type: !145, scopeLine: 254, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!176 = !DISubprogram(name: "minimum", linkageName: "_ZNK4RTTL7RTVec_tILi2EiLi0EE7minimumEv", scope: !21, file: !20, line: 325, type: !127, scopeLine: 325, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!177 = !DISubprogram(name: "maximum", linkageName: "_ZNK4RTTL7RTVec_tILi2EiLi0EE7maximumEv", scope: !21, file: !20, line: 326, type: !127, scopeLine: 326, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!178 = !DISubprogram(name: "absMinimum", linkageName: "_ZNK4RTTL7RTVec_tILi2EiLi0EE10absMinimumEv", scope: !21, file: !20, line: 327, type: !127, scopeLine: 327, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!179 = !DISubprogram(name: "absMaximum", linkageName: "_ZNK4RTTL7RTVec_tILi2EiLi0EE10absMaximumEv", scope: !21, file: !20, line: 328, type: !127, scopeLine: 328, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!180 = !DISubprogram(name: "minIndex", linkageName: "_ZNK4RTTL7RTVec_tILi2EiLi0EE8minIndexEv", scope: !21, file: !20, line: 329, type: !127, scopeLine: 329, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!181 = !DISubprogram(name: "maxIndex", linkageName: "_ZNK4RTTL7RTVec_tILi2EiLi0EE8maxIndexEv", scope: !21, file: !20, line: 330, type: !127, scopeLine: 330, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!182 = !DISubprogram(name: "minAbsIndex", linkageName: "_ZNK4RTTL7RTVec_tILi2EiLi0EE11minAbsIndexEv", scope: !21, file: !20, line: 331, type: !127, scopeLine: 331, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!183 = !DISubprogram(name: "maxAbsIndex", linkageName: "_ZNK4RTTL7RTVec_tILi2EiLi0EE11maxAbsIndexEv", scope: !21, file: !20, line: 332, type: !127, scopeLine: 332, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!184 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "OpenGLTextureRGBA8FB", scope: !187, file: !186, line: 15, size: 384, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !188, vtableHolder: !190)
!186 = !DIFile(filename: "LRT/FrameBuffer/GLTextureFB.hxx", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src", checksumkind: CSK_MD5, checksum: "534c24324dc76f335027065678e9cdc9")
!187 = !DINamespace(name: "LRT", scope: null)
!188 = !{!189, !192, !193, !196, !199, !203, !207, !210, !211, !212}
!189 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !185, baseType: !190, extraData: i32 0)
!190 = !DICompositeType(tag: DW_TAG_structure_type, name: "RGBAucharFrameBuffer", scope: !187, file: !191, line: 46, size: 192, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN3LRT20RGBAucharFrameBufferE")
!191 = !DIFile(filename: "LRT/FrameBuffer/../FrameBuffer.hxx", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src", checksumkind: CSK_MD5, checksum: "e23f846ba5a3087ce7299fe1a882dfe9")
!192 = !DIDerivedType(tag: DW_TAG_member, name: "FRAME_BUFFER_MODE", scope: !185, file: !186, line: 18, baseType: !44, flags: DIFlagStaticMember, extraData: i32 32993)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "fbTextureID", scope: !185, file: !186, line: 20, baseType: !194, size: 32, offset: 192)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "GLuint", file: !14, line: 125, baseType: !195)
!195 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "fbTextureRes", scope: !185, file: !186, line: 21, baseType: !197, size: 64, offset: 224)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "vec2i", scope: !187, file: !191, line: 33, baseType: !198)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "RTVec2i", scope: !23, file: !22, line: 271, baseType: !21)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "fbTexCoords", scope: !185, file: !186, line: 22, baseType: !200, size: 64, offset: 288)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "vec2f", scope: !187, file: !191, line: 34, baseType: !201)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "RTVec2f", scope: !23, file: !22, line: 268, baseType: !202)
!202 = !DICompositeType(tag: DW_TAG_class_type, name: "RTVec_t<2, float, 0>", scope: !23, file: !22, line: 42, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN4RTTL7RTVec_tILi2EfLi0EEE")
!203 = !DISubprogram(name: "OpenGLTextureRGBA8FB", scope: !185, file: !186, line: 28, type: !204, scopeLine: 28, flags: DIFlagPrototyped, spFlags: 0)
!204 = !DISubroutineType(types: !205)
!205 = !{null, !206}
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!207 = !DISubprogram(name: "resize", linkageName: "_ZN3LRT20OpenGLTextureRGBA8FB6resizeEii", scope: !185, file: !186, line: 35, type: !208, scopeLine: 35, containingType: !185, virtualIndex: 0, flags: DIFlagPrototyped, spFlags: DISPFlagVirtual)
!208 = !DISubroutineType(types: !209)
!209 = !{null, !206, !15, !15}
!210 = !DISubprogram(name: "startNewFrame", linkageName: "_ZN3LRT20OpenGLTextureRGBA8FB13startNewFrameEv", scope: !185, file: !186, line: 36, type: !204, scopeLine: 36, containingType: !185, virtualIndex: 1, flags: DIFlagPrototyped, spFlags: DISPFlagVirtual)
!211 = !DISubprogram(name: "doneWithFrame", linkageName: "_ZN3LRT20OpenGLTextureRGBA8FB13doneWithFrameEv", scope: !185, file: !186, line: 37, type: !204, scopeLine: 37, containingType: !185, virtualIndex: 2, flags: DIFlagPrototyped, spFlags: DISPFlagPureVirtual)
!212 = !DISubprogram(name: "display", linkageName: "_ZN3LRT20OpenGLTextureRGBA8FB7displayEv", scope: !185, file: !186, line: 49, type: !204, scopeLine: 49, containingType: !185, virtualIndex: 3, flags: DIFlagPrototyped, spFlags: DISPFlagVirtual)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sse_f", file: !214, line: 20, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !215, identifier: "_ZTS5sse_f")
!214 = !DIFile(filename: "RTTL/common/RTEmulatedSSE.hxx", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src", checksumkind: CSK_MD5, checksum: "899b754f585bbc37282aa5883c939129")
!215 = !{!216, !220}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !213, file: !214, line: 23, baseType: !217, size: 128)
!217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 128, elements: !218)
!218 = !{!219}
!219 = !DISubrange(count: 4)
!220 = !DISubprogram(name: "sse_f", scope: !213, file: !214, line: 21, type: !221, scopeLine: 21, flags: DIFlagPrototyped, spFlags: 0)
!221 = !DISubroutineType(types: !222)
!222 = !{null, !223}
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!224 = !{!0, !7, !225, !233, !238, !243, !248, !253, !256, !261, !266, !271, !276, !281, !286, !288, !290}
!225 = !DIGlobalVariableExpression(var: !226, expr: !DIExpression())
!226 = distinct !DIGlobalVariable(scope: null, file: !227, line: 26, type: !228, isLocal: true, isDefinition: true)
!227 = !DIFile(filename: "LRT/FrameBuffer/GLTextureFB.cxx", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src", checksumkind: CSK_MD5, checksum: "e9a66cf27d6f9cdea172203e740bd0e6")
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 104, elements: !231)
!229 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !230)
!230 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!231 = !{!232}
!232 = !DISubrange(count: 13)
!233 = !DIGlobalVariableExpression(var: !234, expr: !DIExpression())
!234 = distinct !DIGlobalVariable(scope: null, file: !227, line: 136, type: !235, isLocal: true, isDefinition: true)
!235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 64, elements: !236)
!236 = !{!237}
!237 = !DISubrange(count: 8)
!238 = !DIGlobalVariableExpression(var: !239, expr: !DIExpression())
!239 = distinct !DIGlobalVariable(scope: null, file: !227, line: 139, type: !240, isLocal: true, isDefinition: true)
!240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 184, elements: !241)
!241 = !{!242}
!242 = !DISubrange(count: 23)
!243 = !DIGlobalVariableExpression(var: !244, expr: !DIExpression())
!244 = distinct !DIGlobalVariable(scope: null, file: !227, line: 140, type: !245, isLocal: true, isDefinition: true)
!245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 88, elements: !246)
!246 = !{!247}
!247 = !DISubrange(count: 11)
!248 = !DIGlobalVariableExpression(var: !249, expr: !DIExpression())
!249 = distinct !DIGlobalVariable(scope: null, file: !227, line: 140, type: !250, isLocal: true, isDefinition: true)
!250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 24, elements: !251)
!251 = !{!252}
!252 = !DISubrange(count: 3)
!253 = !DIGlobalVariableExpression(var: !254, expr: !DIExpression())
!254 = distinct !DIGlobalVariable(scope: null, file: !227, line: 140, type: !255, isLocal: true, isDefinition: true)
!255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 16, elements: !32)
!256 = !DIGlobalVariableExpression(var: !257, expr: !DIExpression())
!257 = distinct !DIGlobalVariable(scope: null, file: !227, line: 144, type: !258, isLocal: true, isDefinition: true)
!258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 152, elements: !259)
!259 = !{!260}
!260 = !DISubrange(count: 19)
!261 = !DIGlobalVariableExpression(var: !262, expr: !DIExpression())
!262 = distinct !DIGlobalVariable(scope: null, file: !227, line: 144, type: !263, isLocal: true, isDefinition: true)
!263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 776, elements: !264)
!264 = !{!265}
!265 = !DISubrange(count: 97)
!266 = !DIGlobalVariableExpression(var: !267, expr: !DIExpression())
!267 = distinct !DIGlobalVariable(scope: null, file: !227, line: 144, type: !268, isLocal: true, isDefinition: true)
!268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 520, elements: !269)
!269 = !{!270}
!270 = !DISubrange(count: 65)
!271 = !DIGlobalVariableExpression(var: !272, expr: !DIExpression())
!272 = distinct !DIGlobalVariable(scope: null, file: !27, line: 44, type: !273, isLocal: true, isDefinition: true)
!273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 232, elements: !274)
!274 = !{!275}
!275 = !DISubrange(count: 29)
!276 = !DIGlobalVariableExpression(var: !277, expr: !DIExpression())
!277 = distinct !DIGlobalVariable(scope: null, file: !27, line: 44, type: !278, isLocal: true, isDefinition: true)
!278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 704, elements: !279)
!279 = !{!280}
!280 = !DISubrange(count: 88)
!281 = !DIGlobalVariableExpression(var: !282, expr: !DIExpression())
!282 = distinct !DIGlobalVariable(scope: null, file: !27, line: 44, type: !283, isLocal: true, isDefinition: true)
!283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 1480, elements: !284)
!284 = !{!285}
!285 = !DISubrange(count: 185)
!286 = !DIGlobalVariableExpression(var: !287, expr: !DIExpression())
!287 = distinct !DIGlobalVariable(scope: null, file: !22, line: 257, type: !255, isLocal: true, isDefinition: true)
!288 = !DIGlobalVariableExpression(var: !289, expr: !DIExpression())
!289 = distinct !DIGlobalVariable(scope: null, file: !22, line: 259, type: !255, isLocal: true, isDefinition: true)
!290 = !DIGlobalVariableExpression(var: !291, expr: !DIExpression())
!291 = distinct !DIGlobalVariable(scope: null, file: !22, line: 260, type: !255, isLocal: true, isDefinition: true)
!292 = !{!293, !299, !303, !309, !313, !318, !320, !326, !330, !334, !348, !352, !356, !360, !364, !369, !373, !377, !381, !385, !393, !397, !401, !403, !405, !409, !413, !419, !423, !427, !429, !437, !441, !449, !451, !455, !459, !463, !467, !472, !476, !481, !482, !483, !484, !486, !487, !488, !489, !490, !491, !492, !494, !495, !496, !497, !498, !499, !500, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !534, !536, !538, !542, !544, !546, !548, !550, !552, !554, !556, !560, !564, !566, !568, !573, !575, !577, !579, !581, !583, !585, !588, !590, !592, !596, !598, !600, !602, !604, !606, !608, !610, !612, !614, !616, !618, !622, !626, !628, !630, !632, !634, !636, !638, !640, !642, !644, !646, !648, !650, !652, !654, !656, !660, !664, !668, !670, !672, !674, !676, !678, !680, !682, !684, !686, !690, !694, !698, !700, !702, !704, !708, !712, !716, !718, !720, !722, !724, !726, !728, !730, !732, !734, !736, !738, !740, !744, !748, !752, !754, !756, !758, !760, !764, !768, !770, !772, !774, !776, !778, !780, !784, !788, !790, !792, !794, !796, !800, !804, !808, !810, !812, !814, !816, !818, !820, !824, !828, !832, !834, !838, !842, !844, !846, !848, !850, !852, !854, !856, !861, !876, !879, !884, !893, !898, !902, !906, !910, !914, !916, !918, !922, !928, !932, !938, !944, !946, !950, !954, !958, !962, !974, !976, !980, !984, !988, !990, !994, !998, !1002, !1004, !1006, !1010, !1018, !1022, !1026, !1030, !1032, !1038, !1040, !1046, !1050, !1054, !1058, !1062, !1066, !1070, !1072, !1074, !1078, !1082, !1086, !1088, !1092, !1096, !1098, !1100, !1104, !1108, !1112, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1130, !1134, !1138, !1145, !1149, !1152, !1155, !1158, !1160, !1162, !1164, !1167, !1170, !1173, !1176, !1179, !1181, !1185, !1189, !1192, !1195, !1197, !1199, !1201, !1203, !1206, !1209, !1212, !1215, !1218, !1220, !1224, !1228, !1233, !1237, !1239, !1241, !1243, !1245, !1247, !1249, !1251, !1253, !1255, !1257, !1259, !1261, !1263, !1267, !1273, !1278, !1282, !1284, !1286, !1288, !1290, !1297, !1301, !1305, !1309, !1313, !1317, !1322, !1326, !1328, !1332, !1338, !1342, !1347, !1349, !1351, !1355, !1359, !1363, !1365, !1367, !1369, !1371, !1375, !1377, !1379, !1383, !1387, !1391, !1395, !1399, !1401, !1403, !1407, !1411, !1415, !1419, !1421, !1423, !1427, !1431, !1432, !1433, !1434, !1435, !1436, !1442, !1445, !1446, !1448, !1450, !1452, !1454, !1458, !1460, !1462, !1464, !1466, !1468, !1470, !1472, !1474, !1478, !1482, !1484, !1488, !1492, !1494, !1495, !1496, !1502, !1506, !1510, !1514, !1518, !1522, !1524, !1526, !1528, !1532, !1536, !1540, !1544, !1548, !1550, !1552, !1554, !1558, !1562, !1566, !1568, !1570, !1609, !1611}
!293 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !294, file: !298, line: 52)
!294 = !DISubprogram(name: "abs", scope: !295, file: !295, line: 848, type: !296, flags: DIFlagPrototyped, spFlags: 0)
!295 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!296 = !DISubroutineType(types: !297)
!297 = !{!15, !15}
!298 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/std_abs.h", directory: "")
!299 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !300, file: !302, line: 127)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !295, line: 63, baseType: !301)
!301 = !DICompositeType(tag: DW_TAG_structure_type, file: !295, line: 59, size: 64, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!302 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cstdlib", directory: "")
!303 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !304, file: !302, line: 128)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !295, line: 71, baseType: !305)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !295, line: 67, size: 128, flags: DIFlagTypePassByValue, elements: !306, identifier: "_ZTS6ldiv_t")
!306 = !{!307, !308}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !305, file: !295, line: 69, baseType: !184, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !305, file: !295, line: 70, baseType: !184, size: 64, offset: 64)
!309 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !310, file: !302, line: 130)
!310 = !DISubprogram(name: "abort", scope: !295, file: !295, line: 598, type: !311, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!311 = !DISubroutineType(types: !312)
!312 = !{null}
!313 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !314, file: !302, line: 134)
!314 = !DISubprogram(name: "atexit", scope: !295, file: !295, line: 602, type: !315, flags: DIFlagPrototyped, spFlags: 0)
!315 = !DISubroutineType(types: !316)
!316 = !{!15, !317}
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!318 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !319, file: !302, line: 137)
!319 = !DISubprogram(name: "at_quick_exit", scope: !295, file: !295, line: 607, type: !315, flags: DIFlagPrototyped, spFlags: 0)
!320 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !321, file: !302, line: 140)
!321 = !DISubprogram(name: "atof", scope: !295, file: !295, line: 102, type: !322, flags: DIFlagPrototyped, spFlags: 0)
!322 = !DISubroutineType(types: !323)
!323 = !{!324, !325}
!324 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!326 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !327, file: !302, line: 141)
!327 = !DISubprogram(name: "atoi", scope: !295, file: !295, line: 105, type: !328, flags: DIFlagPrototyped, spFlags: 0)
!328 = !DISubroutineType(types: !329)
!329 = !{!15, !325}
!330 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !331, file: !302, line: 142)
!331 = !DISubprogram(name: "atol", scope: !295, file: !295, line: 108, type: !332, flags: DIFlagPrototyped, spFlags: 0)
!332 = !DISubroutineType(types: !333)
!333 = !{!184, !325}
!334 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !335, file: !302, line: 143)
!335 = !DISubprogram(name: "bsearch", scope: !295, file: !295, line: 828, type: !336, flags: DIFlagPrototyped, spFlags: 0)
!336 = !DISubroutineType(types: !337)
!337 = !{!338, !339, !339, !341, !341, !344}
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !342, line: 46, baseType: !343)
!342 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!343 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !295, line: 816, baseType: !345)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DISubroutineType(types: !347)
!347 = !{!15, !339, !339}
!348 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !349, file: !302, line: 144)
!349 = !DISubprogram(name: "calloc", scope: !295, file: !295, line: 543, type: !350, flags: DIFlagPrototyped, spFlags: 0)
!350 = !DISubroutineType(types: !351)
!351 = !{!338, !341, !341}
!352 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !353, file: !302, line: 145)
!353 = !DISubprogram(name: "div", scope: !295, file: !295, line: 860, type: !354, flags: DIFlagPrototyped, spFlags: 0)
!354 = !DISubroutineType(types: !355)
!355 = !{!300, !15, !15}
!356 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !357, file: !302, line: 146)
!357 = !DISubprogram(name: "exit", scope: !295, file: !295, line: 624, type: !358, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!358 = !DISubroutineType(types: !359)
!359 = !{null, !15}
!360 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !361, file: !302, line: 147)
!361 = !DISubprogram(name: "free", scope: !295, file: !295, line: 555, type: !362, flags: DIFlagPrototyped, spFlags: 0)
!362 = !DISubroutineType(types: !363)
!363 = !{null, !338}
!364 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !365, file: !302, line: 148)
!365 = !DISubprogram(name: "getenv", scope: !295, file: !295, line: 641, type: !366, flags: DIFlagPrototyped, spFlags: 0)
!366 = !DISubroutineType(types: !367)
!367 = !{!368, !325}
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!369 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !370, file: !302, line: 149)
!370 = !DISubprogram(name: "labs", scope: !295, file: !295, line: 849, type: !371, flags: DIFlagPrototyped, spFlags: 0)
!371 = !DISubroutineType(types: !372)
!372 = !{!184, !184}
!373 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !374, file: !302, line: 150)
!374 = !DISubprogram(name: "ldiv", scope: !295, file: !295, line: 862, type: !375, flags: DIFlagPrototyped, spFlags: 0)
!375 = !DISubroutineType(types: !376)
!376 = !{!304, !184, !184}
!377 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !378, file: !302, line: 151)
!378 = !DISubprogram(name: "malloc", scope: !295, file: !295, line: 540, type: !379, flags: DIFlagPrototyped, spFlags: 0)
!379 = !DISubroutineType(types: !380)
!380 = !{!338, !341}
!381 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !382, file: !302, line: 153)
!382 = !DISubprogram(name: "mblen", scope: !295, file: !295, line: 930, type: !383, flags: DIFlagPrototyped, spFlags: 0)
!383 = !DISubroutineType(types: !384)
!384 = !{!15, !325, !341}
!385 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !386, file: !302, line: 154)
!386 = !DISubprogram(name: "mbstowcs", scope: !295, file: !295, line: 941, type: !387, flags: DIFlagPrototyped, spFlags: 0)
!387 = !DISubroutineType(types: !388)
!388 = !{!341, !389, !392, !341}
!389 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !390)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!392 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !325)
!393 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !394, file: !302, line: 155)
!394 = !DISubprogram(name: "mbtowc", scope: !295, file: !295, line: 933, type: !395, flags: DIFlagPrototyped, spFlags: 0)
!395 = !DISubroutineType(types: !396)
!396 = !{!15, !389, !392, !341}
!397 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !398, file: !302, line: 157)
!398 = !DISubprogram(name: "qsort", scope: !295, file: !295, line: 838, type: !399, flags: DIFlagPrototyped, spFlags: 0)
!399 = !DISubroutineType(types: !400)
!400 = !{null, !338, !341, !341, !344}
!401 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !402, file: !302, line: 160)
!402 = !DISubprogram(name: "quick_exit", scope: !295, file: !295, line: 630, type: !358, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!403 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !404, file: !302, line: 163)
!404 = !DISubprogram(name: "rand", scope: !295, file: !295, line: 454, type: !86, flags: DIFlagPrototyped, spFlags: 0)
!405 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !406, file: !302, line: 164)
!406 = !DISubprogram(name: "realloc", scope: !295, file: !295, line: 551, type: !407, flags: DIFlagPrototyped, spFlags: 0)
!407 = !DISubroutineType(types: !408)
!408 = !{!338, !338, !341}
!409 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !410, file: !302, line: 165)
!410 = !DISubprogram(name: "srand", scope: !295, file: !295, line: 456, type: !411, flags: DIFlagPrototyped, spFlags: 0)
!411 = !DISubroutineType(types: !412)
!412 = !{null, !195}
!413 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !414, file: !302, line: 166)
!414 = !DISubprogram(name: "strtod", scope: !295, file: !295, line: 118, type: !415, flags: DIFlagPrototyped, spFlags: 0)
!415 = !DISubroutineType(types: !416)
!416 = !{!324, !392, !417}
!417 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !418)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!419 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !420, file: !302, line: 167)
!420 = !DISubprogram(name: "strtol", scope: !295, file: !295, line: 177, type: !421, flags: DIFlagPrototyped, spFlags: 0)
!421 = !DISubroutineType(types: !422)
!422 = !{!184, !392, !417, !15}
!423 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !424, file: !302, line: 168)
!424 = !DISubprogram(name: "strtoul", scope: !295, file: !295, line: 181, type: !425, flags: DIFlagPrototyped, spFlags: 0)
!425 = !DISubroutineType(types: !426)
!426 = !{!343, !392, !417, !15}
!427 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !428, file: !302, line: 169)
!428 = !DISubprogram(name: "system", scope: !295, file: !295, line: 791, type: !328, flags: DIFlagPrototyped, spFlags: 0)
!429 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !430, file: !302, line: 171)
!430 = !DISubprogram(name: "wcstombs", scope: !295, file: !295, line: 945, type: !431, flags: DIFlagPrototyped, spFlags: 0)
!431 = !DISubroutineType(types: !432)
!432 = !{!341, !433, !434, !341}
!433 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !368)
!434 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !435)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !391)
!437 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !438, file: !302, line: 172)
!438 = !DISubprogram(name: "wctomb", scope: !295, file: !295, line: 937, type: !439, flags: DIFlagPrototyped, spFlags: 0)
!439 = !DISubroutineType(types: !440)
!440 = !{!15, !368, !391}
!441 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !442, entity: !443, file: !302, line: 200)
!442 = !DINamespace(name: "__gnu_cxx", scope: null)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !295, line: 81, baseType: !444)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !295, line: 77, size: 128, flags: DIFlagTypePassByValue, elements: !445, identifier: "_ZTS7lldiv_t")
!445 = !{!446, !448}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !444, file: !295, line: 79, baseType: !447, size: 64)
!447 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !444, file: !295, line: 80, baseType: !447, size: 64, offset: 64)
!449 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !442, entity: !450, file: !302, line: 206)
!450 = !DISubprogram(name: "_Exit", scope: !295, file: !295, line: 636, type: !358, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!451 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !442, entity: !452, file: !302, line: 210)
!452 = !DISubprogram(name: "llabs", scope: !295, file: !295, line: 852, type: !453, flags: DIFlagPrototyped, spFlags: 0)
!453 = !DISubroutineType(types: !454)
!454 = !{!447, !447}
!455 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !442, entity: !456, file: !302, line: 216)
!456 = !DISubprogram(name: "lldiv", scope: !295, file: !295, line: 866, type: !457, flags: DIFlagPrototyped, spFlags: 0)
!457 = !DISubroutineType(types: !458)
!458 = !{!443, !447, !447}
!459 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !442, entity: !460, file: !302, line: 227)
!460 = !DISubprogram(name: "atoll", scope: !295, file: !295, line: 113, type: !461, flags: DIFlagPrototyped, spFlags: 0)
!461 = !DISubroutineType(types: !462)
!462 = !{!447, !325}
!463 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !442, entity: !464, file: !302, line: 228)
!464 = !DISubprogram(name: "strtoll", scope: !295, file: !295, line: 201, type: !465, flags: DIFlagPrototyped, spFlags: 0)
!465 = !DISubroutineType(types: !466)
!466 = !{!447, !392, !417, !15}
!467 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !442, entity: !468, file: !302, line: 229)
!468 = !DISubprogram(name: "strtoull", scope: !295, file: !295, line: 206, type: !469, flags: DIFlagPrototyped, spFlags: 0)
!469 = !DISubroutineType(types: !470)
!470 = !{!471, !392, !417, !15}
!471 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!472 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !442, entity: !473, file: !302, line: 231)
!473 = !DISubprogram(name: "strtof", scope: !295, file: !295, line: 124, type: !474, flags: DIFlagPrototyped, spFlags: 0)
!474 = !DISubroutineType(types: !475)
!475 = !{!12, !392, !417}
!476 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !442, entity: !477, file: !302, line: 232)
!477 = !DISubprogram(name: "strtold", scope: !295, file: !295, line: 127, type: !478, flags: DIFlagPrototyped, spFlags: 0)
!478 = !DISubroutineType(types: !479)
!479 = !{!480, !392, !417}
!480 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!481 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !443, file: !302, line: 240)
!482 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !450, file: !302, line: 242)
!483 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !452, file: !302, line: 244)
!484 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !485, file: !302, line: 245)
!485 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !442, file: !302, line: 213, type: !457, flags: DIFlagPrototyped, spFlags: 0)
!486 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !456, file: !302, line: 246)
!487 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !460, file: !302, line: 248)
!488 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !473, file: !302, line: 249)
!489 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !464, file: !302, line: 250)
!490 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !468, file: !302, line: 251)
!491 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !477, file: !302, line: 252)
!492 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !310, file: !493, line: 38)
!493 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "0f5b773a303c24013fb112082e6d18a5")
!494 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !314, file: !493, line: 39)
!495 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !357, file: !493, line: 40)
!496 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !319, file: !493, line: 43)
!497 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !402, file: !493, line: 46)
!498 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !300, file: !493, line: 51)
!499 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !304, file: !493, line: 52)
!500 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !501, file: !493, line: 54)
!501 = !DISubprogram(name: "abs", linkageName: "_ZSt3abse", scope: !2, file: !298, line: 79, type: !502, flags: DIFlagPrototyped, spFlags: 0)
!502 = !DISubroutineType(types: !503)
!503 = !{!480, !480}
!504 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !321, file: !493, line: 55)
!505 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !327, file: !493, line: 56)
!506 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !331, file: !493, line: 57)
!507 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !335, file: !493, line: 58)
!508 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !349, file: !493, line: 59)
!509 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !485, file: !493, line: 60)
!510 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !361, file: !493, line: 61)
!511 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !365, file: !493, line: 62)
!512 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !370, file: !493, line: 63)
!513 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !374, file: !493, line: 64)
!514 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !378, file: !493, line: 65)
!515 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !382, file: !493, line: 67)
!516 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !386, file: !493, line: 68)
!517 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !394, file: !493, line: 69)
!518 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !398, file: !493, line: 71)
!519 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !404, file: !493, line: 72)
!520 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !406, file: !493, line: 73)
!521 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !410, file: !493, line: 74)
!522 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !414, file: !493, line: 75)
!523 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !420, file: !493, line: 76)
!524 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !424, file: !493, line: 77)
!525 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !428, file: !493, line: 78)
!526 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !430, file: !493, line: 80)
!527 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !438, file: !493, line: 81)
!528 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !529, file: !533, line: 83)
!529 = !DISubprogram(name: "acos", scope: !530, file: !530, line: 53, type: !531, flags: DIFlagPrototyped, spFlags: 0)
!530 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "8c6e2d0d2bda65bc5ba1ca02b65383b7")
!531 = !DISubroutineType(types: !532)
!532 = !{!324, !324}
!533 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cmath", directory: "")
!534 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !535, file: !533, line: 102)
!535 = !DISubprogram(name: "asin", scope: !530, file: !530, line: 55, type: !531, flags: DIFlagPrototyped, spFlags: 0)
!536 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !537, file: !533, line: 121)
!537 = !DISubprogram(name: "atan", scope: !530, file: !530, line: 57, type: !531, flags: DIFlagPrototyped, spFlags: 0)
!538 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !539, file: !533, line: 140)
!539 = !DISubprogram(name: "atan2", scope: !530, file: !530, line: 59, type: !540, flags: DIFlagPrototyped, spFlags: 0)
!540 = !DISubroutineType(types: !541)
!541 = !{!324, !324, !324}
!542 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !543, file: !533, line: 161)
!543 = !DISubprogram(name: "ceil", scope: !530, file: !530, line: 159, type: !531, flags: DIFlagPrototyped, spFlags: 0)
!544 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !545, file: !533, line: 180)
!545 = !DISubprogram(name: "cos", scope: !530, file: !530, line: 62, type: !531, flags: DIFlagPrototyped, spFlags: 0)
!546 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !547, file: !533, line: 199)
!547 = !DISubprogram(name: "cosh", scope: !530, file: !530, line: 71, type: !531, flags: DIFlagPrototyped, spFlags: 0)
!548 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !549, file: !533, line: 218)
!549 = !DISubprogram(name: "exp", scope: !530, file: !530, line: 95, type: !531, flags: DIFlagPrototyped, spFlags: 0)
!550 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !551, file: !533, line: 237)
!551 = !DISubprogram(name: "fabs", scope: !530, file: !530, line: 162, type: !531, flags: DIFlagPrototyped, spFlags: 0)
!552 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !553, file: !533, line: 256)
!553 = !DISubprogram(name: "floor", scope: !530, file: !530, line: 165, type: !531, flags: DIFlagPrototyped, spFlags: 0)
!554 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !555, file: !533, line: 275)
!555 = !DISubprogram(name: "fmod", scope: !530, file: !530, line: 168, type: !540, flags: DIFlagPrototyped, spFlags: 0)
!556 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !557, file: !533, line: 296)
!557 = !DISubprogram(name: "frexp", scope: !530, file: !530, line: 98, type: !558, flags: DIFlagPrototyped, spFlags: 0)
!558 = !DISubroutineType(types: !559)
!559 = !{!324, !324, !147}
!560 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !561, file: !533, line: 315)
!561 = !DISubprogram(name: "ldexp", scope: !530, file: !530, line: 101, type: !562, flags: DIFlagPrototyped, spFlags: 0)
!562 = !DISubroutineType(types: !563)
!563 = !{!324, !324, !15}
!564 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !565, file: !533, line: 334)
!565 = !DISubprogram(name: "log", scope: !530, file: !530, line: 104, type: !531, flags: DIFlagPrototyped, spFlags: 0)
!566 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !567, file: !533, line: 353)
!567 = !DISubprogram(name: "log10", scope: !530, file: !530, line: 107, type: !531, flags: DIFlagPrototyped, spFlags: 0)
!568 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !569, file: !533, line: 372)
!569 = !DISubprogram(name: "modf", scope: !530, file: !530, line: 110, type: !570, flags: DIFlagPrototyped, spFlags: 0)
!570 = !DISubroutineType(types: !571)
!571 = !{!324, !324, !572}
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!573 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !574, file: !533, line: 384)
!574 = !DISubprogram(name: "pow", scope: !530, file: !530, line: 140, type: !540, flags: DIFlagPrototyped, spFlags: 0)
!575 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !576, file: !533, line: 421)
!576 = !DISubprogram(name: "sin", scope: !530, file: !530, line: 64, type: !531, flags: DIFlagPrototyped, spFlags: 0)
!577 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !578, file: !533, line: 440)
!578 = !DISubprogram(name: "sinh", scope: !530, file: !530, line: 73, type: !531, flags: DIFlagPrototyped, spFlags: 0)
!579 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !580, file: !533, line: 459)
!580 = !DISubprogram(name: "sqrt", scope: !530, file: !530, line: 143, type: !531, flags: DIFlagPrototyped, spFlags: 0)
!581 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !582, file: !533, line: 478)
!582 = !DISubprogram(name: "tan", scope: !530, file: !530, line: 66, type: !531, flags: DIFlagPrototyped, spFlags: 0)
!583 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !584, file: !533, line: 497)
!584 = !DISubprogram(name: "tanh", scope: !530, file: !530, line: 75, type: !531, flags: DIFlagPrototyped, spFlags: 0)
!585 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !586, file: !533, line: 1065)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_t", file: !587, line: 164, baseType: !324)
!587 = !DIFile(filename: "/usr/include/math.h", directory: "", checksumkind: CSK_MD5, checksum: "f3450d1d586f704597de1a1b2bed18f3")
!588 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !589, file: !533, line: 1066)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "float_t", file: !587, line: 163, baseType: !12)
!590 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !591, file: !533, line: 1069)
!591 = !DISubprogram(name: "acosh", scope: !530, file: !530, line: 85, type: !531, flags: DIFlagPrototyped, spFlags: 0)
!592 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !593, file: !533, line: 1070)
!593 = !DISubprogram(name: "acoshf", scope: !530, file: !530, line: 85, type: !594, flags: DIFlagPrototyped, spFlags: 0)
!594 = !DISubroutineType(types: !595)
!595 = !{!12, !12}
!596 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !597, file: !533, line: 1071)
!597 = !DISubprogram(name: "acoshl", scope: !530, file: !530, line: 85, type: !502, flags: DIFlagPrototyped, spFlags: 0)
!598 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !599, file: !533, line: 1073)
!599 = !DISubprogram(name: "asinh", scope: !530, file: !530, line: 87, type: !531, flags: DIFlagPrototyped, spFlags: 0)
!600 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !601, file: !533, line: 1074)
!601 = !DISubprogram(name: "asinhf", scope: !530, file: !530, line: 87, type: !594, flags: DIFlagPrototyped, spFlags: 0)
!602 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !603, file: !533, line: 1075)
!603 = !DISubprogram(name: "asinhl", scope: !530, file: !530, line: 87, type: !502, flags: DIFlagPrototyped, spFlags: 0)
!604 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !605, file: !533, line: 1077)
!605 = !DISubprogram(name: "atanh", scope: !530, file: !530, line: 89, type: !531, flags: DIFlagPrototyped, spFlags: 0)
!606 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !607, file: !533, line: 1078)
!607 = !DISubprogram(name: "atanhf", scope: !530, file: !530, line: 89, type: !594, flags: DIFlagPrototyped, spFlags: 0)
!608 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !609, file: !533, line: 1079)
!609 = !DISubprogram(name: "atanhl", scope: !530, file: !530, line: 89, type: !502, flags: DIFlagPrototyped, spFlags: 0)
!610 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !611, file: !533, line: 1081)
!611 = !DISubprogram(name: "cbrt", scope: !530, file: !530, line: 152, type: !531, flags: DIFlagPrototyped, spFlags: 0)
!612 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !613, file: !533, line: 1082)
!613 = !DISubprogram(name: "cbrtf", scope: !530, file: !530, line: 152, type: !594, flags: DIFlagPrototyped, spFlags: 0)
!614 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !615, file: !533, line: 1083)
!615 = !DISubprogram(name: "cbrtl", scope: !530, file: !530, line: 152, type: !502, flags: DIFlagPrototyped, spFlags: 0)
!616 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !617, file: !533, line: 1085)
!617 = !DISubprogram(name: "copysign", scope: !530, file: !530, line: 198, type: !540, flags: DIFlagPrototyped, spFlags: 0)
!618 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !619, file: !533, line: 1086)
!619 = !DISubprogram(name: "copysignf", scope: !530, file: !530, line: 198, type: !620, flags: DIFlagPrototyped, spFlags: 0)
!620 = !DISubroutineType(types: !621)
!621 = !{!12, !12, !12}
!622 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !623, file: !533, line: 1087)
!623 = !DISubprogram(name: "copysignl", scope: !530, file: !530, line: 198, type: !624, flags: DIFlagPrototyped, spFlags: 0)
!624 = !DISubroutineType(types: !625)
!625 = !{!480, !480, !480}
!626 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !627, file: !533, line: 1089)
!627 = !DISubprogram(name: "erf", scope: !530, file: !530, line: 231, type: !531, flags: DIFlagPrototyped, spFlags: 0)
!628 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !629, file: !533, line: 1090)
!629 = !DISubprogram(name: "erff", scope: !530, file: !530, line: 231, type: !594, flags: DIFlagPrototyped, spFlags: 0)
!630 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !631, file: !533, line: 1091)
!631 = !DISubprogram(name: "erfl", scope: !530, file: !530, line: 231, type: !502, flags: DIFlagPrototyped, spFlags: 0)
!632 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !633, file: !533, line: 1093)
!633 = !DISubprogram(name: "erfc", scope: !530, file: !530, line: 232, type: !531, flags: DIFlagPrototyped, spFlags: 0)
!634 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !635, file: !533, line: 1094)
!635 = !DISubprogram(name: "erfcf", scope: !530, file: !530, line: 232, type: !594, flags: DIFlagPrototyped, spFlags: 0)
!636 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !637, file: !533, line: 1095)
!637 = !DISubprogram(name: "erfcl", scope: !530, file: !530, line: 232, type: !502, flags: DIFlagPrototyped, spFlags: 0)
!638 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !639, file: !533, line: 1097)
!639 = !DISubprogram(name: "exp2", scope: !530, file: !530, line: 130, type: !531, flags: DIFlagPrototyped, spFlags: 0)
!640 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !641, file: !533, line: 1098)
!641 = !DISubprogram(name: "exp2f", scope: !530, file: !530, line: 130, type: !594, flags: DIFlagPrototyped, spFlags: 0)
!642 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !643, file: !533, line: 1099)
!643 = !DISubprogram(name: "exp2l", scope: !530, file: !530, line: 130, type: !502, flags: DIFlagPrototyped, spFlags: 0)
!644 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !645, file: !533, line: 1101)
!645 = !DISubprogram(name: "expm1", scope: !530, file: !530, line: 119, type: !531, flags: DIFlagPrototyped, spFlags: 0)
!646 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !647, file: !533, line: 1102)
!647 = !DISubprogram(name: "expm1f", scope: !530, file: !530, line: 119, type: !594, flags: DIFlagPrototyped, spFlags: 0)
!648 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !649, file: !533, line: 1103)
!649 = !DISubprogram(name: "expm1l", scope: !530, file: !530, line: 119, type: !502, flags: DIFlagPrototyped, spFlags: 0)
!650 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !651, file: !533, line: 1105)
!651 = !DISubprogram(name: "fdim", scope: !530, file: !530, line: 329, type: !540, flags: DIFlagPrototyped, spFlags: 0)
!652 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !653, file: !533, line: 1106)
!653 = !DISubprogram(name: "fdimf", scope: !530, file: !530, line: 329, type: !620, flags: DIFlagPrototyped, spFlags: 0)
!654 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !655, file: !533, line: 1107)
!655 = !DISubprogram(name: "fdiml", scope: !530, file: !530, line: 329, type: !624, flags: DIFlagPrototyped, spFlags: 0)
!656 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !657, file: !533, line: 1109)
!657 = !DISubprogram(name: "fma", scope: !530, file: !530, line: 340, type: !658, flags: DIFlagPrototyped, spFlags: 0)
!658 = !DISubroutineType(types: !659)
!659 = !{!324, !324, !324, !324}
!660 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !661, file: !533, line: 1110)
!661 = !DISubprogram(name: "fmaf", scope: !530, file: !530, line: 340, type: !662, flags: DIFlagPrototyped, spFlags: 0)
!662 = !DISubroutineType(types: !663)
!663 = !{!12, !12, !12, !12}
!664 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !665, file: !533, line: 1111)
!665 = !DISubprogram(name: "fmal", scope: !530, file: !530, line: 340, type: !666, flags: DIFlagPrototyped, spFlags: 0)
!666 = !DISubroutineType(types: !667)
!667 = !{!480, !480, !480, !480}
!668 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !669, file: !533, line: 1113)
!669 = !DISubprogram(name: "fmax", scope: !530, file: !530, line: 333, type: !540, flags: DIFlagPrototyped, spFlags: 0)
!670 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !671, file: !533, line: 1114)
!671 = !DISubprogram(name: "fmaxf", scope: !530, file: !530, line: 333, type: !620, flags: DIFlagPrototyped, spFlags: 0)
!672 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !673, file: !533, line: 1115)
!673 = !DISubprogram(name: "fmaxl", scope: !530, file: !530, line: 333, type: !624, flags: DIFlagPrototyped, spFlags: 0)
!674 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !675, file: !533, line: 1117)
!675 = !DISubprogram(name: "fmin", scope: !530, file: !530, line: 336, type: !540, flags: DIFlagPrototyped, spFlags: 0)
!676 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !677, file: !533, line: 1118)
!677 = !DISubprogram(name: "fminf", scope: !530, file: !530, line: 336, type: !620, flags: DIFlagPrototyped, spFlags: 0)
!678 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !679, file: !533, line: 1119)
!679 = !DISubprogram(name: "fminl", scope: !530, file: !530, line: 336, type: !624, flags: DIFlagPrototyped, spFlags: 0)
!680 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !681, file: !533, line: 1121)
!681 = !DISubprogram(name: "hypot", scope: !530, file: !530, line: 147, type: !540, flags: DIFlagPrototyped, spFlags: 0)
!682 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !683, file: !533, line: 1122)
!683 = !DISubprogram(name: "hypotf", scope: !530, file: !530, line: 147, type: !620, flags: DIFlagPrototyped, spFlags: 0)
!684 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !685, file: !533, line: 1123)
!685 = !DISubprogram(name: "hypotl", scope: !530, file: !530, line: 147, type: !624, flags: DIFlagPrototyped, spFlags: 0)
!686 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !687, file: !533, line: 1125)
!687 = !DISubprogram(name: "ilogb", scope: !530, file: !530, line: 283, type: !688, flags: DIFlagPrototyped, spFlags: 0)
!688 = !DISubroutineType(types: !689)
!689 = !{!15, !324}
!690 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !691, file: !533, line: 1126)
!691 = !DISubprogram(name: "ilogbf", scope: !530, file: !530, line: 283, type: !692, flags: DIFlagPrototyped, spFlags: 0)
!692 = !DISubroutineType(types: !693)
!693 = !{!15, !12}
!694 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !695, file: !533, line: 1127)
!695 = !DISubprogram(name: "ilogbl", scope: !530, file: !530, line: 283, type: !696, flags: DIFlagPrototyped, spFlags: 0)
!696 = !DISubroutineType(types: !697)
!697 = !{!15, !480}
!698 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !699, file: !533, line: 1129)
!699 = !DISubprogram(name: "lgamma", scope: !530, file: !530, line: 233, type: !531, flags: DIFlagPrototyped, spFlags: 0)
!700 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !701, file: !533, line: 1130)
!701 = !DISubprogram(name: "lgammaf", scope: !530, file: !530, line: 233, type: !594, flags: DIFlagPrototyped, spFlags: 0)
!702 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !703, file: !533, line: 1131)
!703 = !DISubprogram(name: "lgammal", scope: !530, file: !530, line: 233, type: !502, flags: DIFlagPrototyped, spFlags: 0)
!704 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !705, file: !533, line: 1134)
!705 = !DISubprogram(name: "llrint", scope: !530, file: !530, line: 319, type: !706, flags: DIFlagPrototyped, spFlags: 0)
!706 = !DISubroutineType(types: !707)
!707 = !{!447, !324}
!708 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !709, file: !533, line: 1135)
!709 = !DISubprogram(name: "llrintf", scope: !530, file: !530, line: 319, type: !710, flags: DIFlagPrototyped, spFlags: 0)
!710 = !DISubroutineType(types: !711)
!711 = !{!447, !12}
!712 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !713, file: !533, line: 1136)
!713 = !DISubprogram(name: "llrintl", scope: !530, file: !530, line: 319, type: !714, flags: DIFlagPrototyped, spFlags: 0)
!714 = !DISubroutineType(types: !715)
!715 = !{!447, !480}
!716 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !717, file: !533, line: 1138)
!717 = !DISubprogram(name: "llround", scope: !530, file: !530, line: 325, type: !706, flags: DIFlagPrototyped, spFlags: 0)
!718 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !719, file: !533, line: 1139)
!719 = !DISubprogram(name: "llroundf", scope: !530, file: !530, line: 325, type: !710, flags: DIFlagPrototyped, spFlags: 0)
!720 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !721, file: !533, line: 1140)
!721 = !DISubprogram(name: "llroundl", scope: !530, file: !530, line: 325, type: !714, flags: DIFlagPrototyped, spFlags: 0)
!722 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !723, file: !533, line: 1143)
!723 = !DISubprogram(name: "log1p", scope: !530, file: !530, line: 122, type: !531, flags: DIFlagPrototyped, spFlags: 0)
!724 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !725, file: !533, line: 1144)
!725 = !DISubprogram(name: "log1pf", scope: !530, file: !530, line: 122, type: !594, flags: DIFlagPrototyped, spFlags: 0)
!726 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !727, file: !533, line: 1145)
!727 = !DISubprogram(name: "log1pl", scope: !530, file: !530, line: 122, type: !502, flags: DIFlagPrototyped, spFlags: 0)
!728 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !729, file: !533, line: 1147)
!729 = !DISubprogram(name: "log2", scope: !530, file: !530, line: 133, type: !531, flags: DIFlagPrototyped, spFlags: 0)
!730 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !731, file: !533, line: 1148)
!731 = !DISubprogram(name: "log2f", scope: !530, file: !530, line: 133, type: !594, flags: DIFlagPrototyped, spFlags: 0)
!732 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !733, file: !533, line: 1149)
!733 = !DISubprogram(name: "log2l", scope: !530, file: !530, line: 133, type: !502, flags: DIFlagPrototyped, spFlags: 0)
!734 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !735, file: !533, line: 1151)
!735 = !DISubprogram(name: "logb", scope: !530, file: !530, line: 125, type: !531, flags: DIFlagPrototyped, spFlags: 0)
!736 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !737, file: !533, line: 1152)
!737 = !DISubprogram(name: "logbf", scope: !530, file: !530, line: 125, type: !594, flags: DIFlagPrototyped, spFlags: 0)
!738 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !739, file: !533, line: 1153)
!739 = !DISubprogram(name: "logbl", scope: !530, file: !530, line: 125, type: !502, flags: DIFlagPrototyped, spFlags: 0)
!740 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !741, file: !533, line: 1155)
!741 = !DISubprogram(name: "lrint", scope: !530, file: !530, line: 317, type: !742, flags: DIFlagPrototyped, spFlags: 0)
!742 = !DISubroutineType(types: !743)
!743 = !{!184, !324}
!744 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !745, file: !533, line: 1156)
!745 = !DISubprogram(name: "lrintf", scope: !530, file: !530, line: 317, type: !746, flags: DIFlagPrototyped, spFlags: 0)
!746 = !DISubroutineType(types: !747)
!747 = !{!184, !12}
!748 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !749, file: !533, line: 1157)
!749 = !DISubprogram(name: "lrintl", scope: !530, file: !530, line: 317, type: !750, flags: DIFlagPrototyped, spFlags: 0)
!750 = !DISubroutineType(types: !751)
!751 = !{!184, !480}
!752 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !753, file: !533, line: 1159)
!753 = !DISubprogram(name: "lround", scope: !530, file: !530, line: 323, type: !742, flags: DIFlagPrototyped, spFlags: 0)
!754 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !755, file: !533, line: 1160)
!755 = !DISubprogram(name: "lroundf", scope: !530, file: !530, line: 323, type: !746, flags: DIFlagPrototyped, spFlags: 0)
!756 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !757, file: !533, line: 1161)
!757 = !DISubprogram(name: "lroundl", scope: !530, file: !530, line: 323, type: !750, flags: DIFlagPrototyped, spFlags: 0)
!758 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !759, file: !533, line: 1163)
!759 = !DISubprogram(name: "nan", scope: !530, file: !530, line: 203, type: !322, flags: DIFlagPrototyped, spFlags: 0)
!760 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !761, file: !533, line: 1164)
!761 = !DISubprogram(name: "nanf", scope: !530, file: !530, line: 203, type: !762, flags: DIFlagPrototyped, spFlags: 0)
!762 = !DISubroutineType(types: !763)
!763 = !{!12, !325}
!764 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !765, file: !533, line: 1165)
!765 = !DISubprogram(name: "nanl", scope: !530, file: !530, line: 203, type: !766, flags: DIFlagPrototyped, spFlags: 0)
!766 = !DISubroutineType(types: !767)
!767 = !{!480, !325}
!768 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !769, file: !533, line: 1167)
!769 = !DISubprogram(name: "nearbyint", scope: !530, file: !530, line: 297, type: !531, flags: DIFlagPrototyped, spFlags: 0)
!770 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !771, file: !533, line: 1168)
!771 = !DISubprogram(name: "nearbyintf", scope: !530, file: !530, line: 297, type: !594, flags: DIFlagPrototyped, spFlags: 0)
!772 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !773, file: !533, line: 1169)
!773 = !DISubprogram(name: "nearbyintl", scope: !530, file: !530, line: 297, type: !502, flags: DIFlagPrototyped, spFlags: 0)
!774 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !775, file: !533, line: 1171)
!775 = !DISubprogram(name: "nextafter", scope: !530, file: !530, line: 262, type: !540, flags: DIFlagPrototyped, spFlags: 0)
!776 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !777, file: !533, line: 1172)
!777 = !DISubprogram(name: "nextafterf", scope: !530, file: !530, line: 262, type: !620, flags: DIFlagPrototyped, spFlags: 0)
!778 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !779, file: !533, line: 1173)
!779 = !DISubprogram(name: "nextafterl", scope: !530, file: !530, line: 262, type: !624, flags: DIFlagPrototyped, spFlags: 0)
!780 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !781, file: !533, line: 1175)
!781 = !DISubprogram(name: "nexttoward", scope: !530, file: !530, line: 264, type: !782, flags: DIFlagPrototyped, spFlags: 0)
!782 = !DISubroutineType(types: !783)
!783 = !{!324, !324, !480}
!784 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !785, file: !533, line: 1176)
!785 = !DISubprogram(name: "nexttowardf", scope: !530, file: !530, line: 264, type: !786, flags: DIFlagPrototyped, spFlags: 0)
!786 = !DISubroutineType(types: !787)
!787 = !{!12, !12, !480}
!788 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !789, file: !533, line: 1177)
!789 = !DISubprogram(name: "nexttowardl", scope: !530, file: !530, line: 264, type: !624, flags: DIFlagPrototyped, spFlags: 0)
!790 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !791, file: !533, line: 1179)
!791 = !DISubprogram(name: "remainder", scope: !530, file: !530, line: 275, type: !540, flags: DIFlagPrototyped, spFlags: 0)
!792 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !793, file: !533, line: 1180)
!793 = !DISubprogram(name: "remainderf", scope: !530, file: !530, line: 275, type: !620, flags: DIFlagPrototyped, spFlags: 0)
!794 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !795, file: !533, line: 1181)
!795 = !DISubprogram(name: "remainderl", scope: !530, file: !530, line: 275, type: !624, flags: DIFlagPrototyped, spFlags: 0)
!796 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !797, file: !533, line: 1183)
!797 = !DISubprogram(name: "remquo", scope: !530, file: !530, line: 310, type: !798, flags: DIFlagPrototyped, spFlags: 0)
!798 = !DISubroutineType(types: !799)
!799 = !{!324, !324, !324, !147}
!800 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !801, file: !533, line: 1184)
!801 = !DISubprogram(name: "remquof", scope: !530, file: !530, line: 310, type: !802, flags: DIFlagPrototyped, spFlags: 0)
!802 = !DISubroutineType(types: !803)
!803 = !{!12, !12, !12, !147}
!804 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !805, file: !533, line: 1185)
!805 = !DISubprogram(name: "remquol", scope: !530, file: !530, line: 310, type: !806, flags: DIFlagPrototyped, spFlags: 0)
!806 = !DISubroutineType(types: !807)
!807 = !{!480, !480, !480, !147}
!808 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !809, file: !533, line: 1187)
!809 = !DISubprogram(name: "rint", scope: !530, file: !530, line: 259, type: !531, flags: DIFlagPrototyped, spFlags: 0)
!810 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !811, file: !533, line: 1188)
!811 = !DISubprogram(name: "rintf", scope: !530, file: !530, line: 259, type: !594, flags: DIFlagPrototyped, spFlags: 0)
!812 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !813, file: !533, line: 1189)
!813 = !DISubprogram(name: "rintl", scope: !530, file: !530, line: 259, type: !502, flags: DIFlagPrototyped, spFlags: 0)
!814 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !815, file: !533, line: 1191)
!815 = !DISubprogram(name: "round", scope: !530, file: !530, line: 301, type: !531, flags: DIFlagPrototyped, spFlags: 0)
!816 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !817, file: !533, line: 1192)
!817 = !DISubprogram(name: "roundf", scope: !530, file: !530, line: 301, type: !594, flags: DIFlagPrototyped, spFlags: 0)
!818 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !819, file: !533, line: 1193)
!819 = !DISubprogram(name: "roundl", scope: !530, file: !530, line: 301, type: !502, flags: DIFlagPrototyped, spFlags: 0)
!820 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !821, file: !533, line: 1195)
!821 = !DISubprogram(name: "scalbln", scope: !530, file: !530, line: 293, type: !822, flags: DIFlagPrototyped, spFlags: 0)
!822 = !DISubroutineType(types: !823)
!823 = !{!324, !324, !184}
!824 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !825, file: !533, line: 1196)
!825 = !DISubprogram(name: "scalblnf", scope: !530, file: !530, line: 293, type: !826, flags: DIFlagPrototyped, spFlags: 0)
!826 = !DISubroutineType(types: !827)
!827 = !{!12, !12, !184}
!828 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !829, file: !533, line: 1197)
!829 = !DISubprogram(name: "scalblnl", scope: !530, file: !530, line: 293, type: !830, flags: DIFlagPrototyped, spFlags: 0)
!830 = !DISubroutineType(types: !831)
!831 = !{!480, !480, !184}
!832 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !833, file: !533, line: 1199)
!833 = !DISubprogram(name: "scalbn", scope: !530, file: !530, line: 279, type: !562, flags: DIFlagPrototyped, spFlags: 0)
!834 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !835, file: !533, line: 1200)
!835 = !DISubprogram(name: "scalbnf", scope: !530, file: !530, line: 279, type: !836, flags: DIFlagPrototyped, spFlags: 0)
!836 = !DISubroutineType(types: !837)
!837 = !{!12, !12, !15}
!838 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !839, file: !533, line: 1201)
!839 = !DISubprogram(name: "scalbnl", scope: !530, file: !530, line: 279, type: !840, flags: DIFlagPrototyped, spFlags: 0)
!840 = !DISubroutineType(types: !841)
!841 = !{!480, !480, !15}
!842 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !843, file: !533, line: 1203)
!843 = !DISubprogram(name: "tgamma", scope: !530, file: !530, line: 238, type: !531, flags: DIFlagPrototyped, spFlags: 0)
!844 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !845, file: !533, line: 1204)
!845 = !DISubprogram(name: "tgammaf", scope: !530, file: !530, line: 238, type: !594, flags: DIFlagPrototyped, spFlags: 0)
!846 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !847, file: !533, line: 1205)
!847 = !DISubprogram(name: "tgammal", scope: !530, file: !530, line: 238, type: !502, flags: DIFlagPrototyped, spFlags: 0)
!848 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !849, file: !533, line: 1207)
!849 = !DISubprogram(name: "trunc", scope: !530, file: !530, line: 305, type: !531, flags: DIFlagPrototyped, spFlags: 0)
!850 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !851, file: !533, line: 1208)
!851 = !DISubprogram(name: "truncf", scope: !530, file: !530, line: 305, type: !594, flags: DIFlagPrototyped, spFlags: 0)
!852 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !853, file: !533, line: 1209)
!853 = !DISubprogram(name: "truncl", scope: !530, file: !530, line: 305, type: !502, flags: DIFlagPrototyped, spFlags: 0)
!854 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !501, file: !855, line: 38)
!855 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/math.h", directory: "", checksumkind: CSK_MD5, checksum: "a990cded20a6fb8dad866460b8c40922")
!856 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !9, entity: !857, file: !855, line: 54)
!857 = !DISubprogram(name: "modf", linkageName: "_ZSt4modfePe", scope: !2, file: !533, line: 380, type: !858, flags: DIFlagPrototyped, spFlags: 0)
!858 = !DISubroutineType(types: !859)
!859 = !{!480, !480, !860}
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!861 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !862, file: !875, line: 64)
!862 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !863, line: 6, baseType: !864)
!863 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!864 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !865, line: 21, baseType: !866)
!865 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !865, line: 13, size: 64, flags: DIFlagTypePassByValue, elements: !867, identifier: "_ZTS11__mbstate_t")
!867 = !{!868, !869}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !866, file: !865, line: 15, baseType: !15, size: 32)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !866, file: !865, line: 20, baseType: !870, size: 32, offset: 32)
!870 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !866, file: !865, line: 16, size: 32, flags: DIFlagTypePassByValue, elements: !871, identifier: "_ZTSN11__mbstate_tUt_E")
!871 = !{!872, !873}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !870, file: !865, line: 18, baseType: !195, size: 32)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !870, file: !865, line: 19, baseType: !874, size: 32)
!874 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 32, elements: !218)
!875 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cwchar", directory: "")
!876 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !877, file: !875, line: 141)
!877 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !878, line: 20, baseType: !195)
!878 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!879 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !880, file: !875, line: 143)
!880 = !DISubprogram(name: "btowc", scope: !881, file: !881, line: 285, type: !882, flags: DIFlagPrototyped, spFlags: 0)
!881 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!882 = !DISubroutineType(types: !883)
!883 = !{!877, !15}
!884 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !885, file: !875, line: 144)
!885 = !DISubprogram(name: "fgetwc", scope: !881, file: !881, line: 744, type: !886, flags: DIFlagPrototyped, spFlags: 0)
!886 = !DISubroutineType(types: !887)
!887 = !{!877, !888}
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !890, line: 5, baseType: !891)
!890 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "72a8fe90981f484acae7c6f3dfc5c2b7")
!891 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !892, line: 49, size: 1728, flags: DIFlagFwdDecl, identifier: "_ZTS8_IO_FILE")
!892 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!893 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !894, file: !875, line: 145)
!894 = !DISubprogram(name: "fgetws", scope: !881, file: !881, line: 773, type: !895, flags: DIFlagPrototyped, spFlags: 0)
!895 = !DISubroutineType(types: !896)
!896 = !{!390, !389, !15, !897}
!897 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !888)
!898 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !899, file: !875, line: 146)
!899 = !DISubprogram(name: "fputwc", scope: !881, file: !881, line: 758, type: !900, flags: DIFlagPrototyped, spFlags: 0)
!900 = !DISubroutineType(types: !901)
!901 = !{!877, !391, !888}
!902 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !903, file: !875, line: 147)
!903 = !DISubprogram(name: "fputws", scope: !881, file: !881, line: 780, type: !904, flags: DIFlagPrototyped, spFlags: 0)
!904 = !DISubroutineType(types: !905)
!905 = !{!15, !434, !897}
!906 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !907, file: !875, line: 148)
!907 = !DISubprogram(name: "fwide", scope: !881, file: !881, line: 588, type: !908, flags: DIFlagPrototyped, spFlags: 0)
!908 = !DISubroutineType(types: !909)
!909 = !{!15, !888, !15}
!910 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !911, file: !875, line: 149)
!911 = !DISubprogram(name: "fwprintf", scope: !881, file: !881, line: 595, type: !912, flags: DIFlagPrototyped, spFlags: 0)
!912 = !DISubroutineType(types: !913)
!913 = !{!15, !897, !434, null}
!914 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !915, file: !875, line: 150)
!915 = !DISubprogram(name: "fwscanf", linkageName: "__isoc99_fwscanf", scope: !881, file: !881, line: 657, type: !912, flags: DIFlagPrototyped, spFlags: 0)
!916 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !917, file: !875, line: 151)
!917 = !DISubprogram(name: "getwc", scope: !881, file: !881, line: 745, type: !886, flags: DIFlagPrototyped, spFlags: 0)
!918 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !919, file: !875, line: 152)
!919 = !DISubprogram(name: "getwchar", scope: !881, file: !881, line: 751, type: !920, flags: DIFlagPrototyped, spFlags: 0)
!920 = !DISubroutineType(types: !921)
!921 = !{!877}
!922 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !923, file: !875, line: 153)
!923 = !DISubprogram(name: "mbrlen", scope: !881, file: !881, line: 308, type: !924, flags: DIFlagPrototyped, spFlags: 0)
!924 = !DISubroutineType(types: !925)
!925 = !{!341, !392, !341, !926}
!926 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !927)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!928 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !929, file: !875, line: 154)
!929 = !DISubprogram(name: "mbrtowc", scope: !881, file: !881, line: 297, type: !930, flags: DIFlagPrototyped, spFlags: 0)
!930 = !DISubroutineType(types: !931)
!931 = !{!341, !389, !392, !341, !926}
!932 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !933, file: !875, line: 155)
!933 = !DISubprogram(name: "mbsinit", scope: !881, file: !881, line: 293, type: !934, flags: DIFlagPrototyped, spFlags: 0)
!934 = !DISubroutineType(types: !935)
!935 = !{!15, !936}
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !862)
!938 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !939, file: !875, line: 156)
!939 = !DISubprogram(name: "mbsrtowcs", scope: !881, file: !881, line: 338, type: !940, flags: DIFlagPrototyped, spFlags: 0)
!940 = !DISubroutineType(types: !941)
!941 = !{!341, !389, !942, !341, !926}
!942 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !943)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!944 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !945, file: !875, line: 157)
!945 = !DISubprogram(name: "putwc", scope: !881, file: !881, line: 759, type: !900, flags: DIFlagPrototyped, spFlags: 0)
!946 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !947, file: !875, line: 158)
!947 = !DISubprogram(name: "putwchar", scope: !881, file: !881, line: 765, type: !948, flags: DIFlagPrototyped, spFlags: 0)
!948 = !DISubroutineType(types: !949)
!949 = !{!877, !391}
!950 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !951, file: !875, line: 160)
!951 = !DISubprogram(name: "swprintf", scope: !881, file: !881, line: 605, type: !952, flags: DIFlagPrototyped, spFlags: 0)
!952 = !DISubroutineType(types: !953)
!953 = !{!15, !389, !341, !434, null}
!954 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !955, file: !875, line: 162)
!955 = !DISubprogram(name: "swscanf", linkageName: "__isoc99_swscanf", scope: !881, file: !881, line: 664, type: !956, flags: DIFlagPrototyped, spFlags: 0)
!956 = !DISubroutineType(types: !957)
!957 = !{!15, !434, !434, null}
!958 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !959, file: !875, line: 163)
!959 = !DISubprogram(name: "ungetwc", scope: !881, file: !881, line: 788, type: !960, flags: DIFlagPrototyped, spFlags: 0)
!960 = !DISubroutineType(types: !961)
!961 = !{!877, !877, !888}
!962 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !963, file: !875, line: 164)
!963 = !DISubprogram(name: "vfwprintf", scope: !881, file: !881, line: 613, type: !964, flags: DIFlagPrototyped, spFlags: 0)
!964 = !DISubroutineType(types: !965)
!965 = !{!15, !897, !434, !966}
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, flags: DIFlagTypePassByValue, elements: !968, identifier: "_ZTS13__va_list_tag")
!968 = !{!969, !971, !972, !973}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !967, file: !970, baseType: !195, size: 32)
!970 = !DIFile(filename: "LRT/FrameBuffer/GLTextureFB.cxx", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src")
!971 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !967, file: !970, baseType: !195, size: 32, offset: 32)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !967, file: !970, baseType: !338, size: 64, offset: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !967, file: !970, baseType: !338, size: 64, offset: 128)
!974 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !975, file: !875, line: 166)
!975 = !DISubprogram(name: "vfwscanf", linkageName: "__isoc99_vfwscanf", scope: !881, file: !881, line: 711, type: !964, flags: DIFlagPrototyped, spFlags: 0)
!976 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !977, file: !875, line: 169)
!977 = !DISubprogram(name: "vswprintf", scope: !881, file: !881, line: 626, type: !978, flags: DIFlagPrototyped, spFlags: 0)
!978 = !DISubroutineType(types: !979)
!979 = !{!15, !389, !341, !434, !966}
!980 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !981, file: !875, line: 172)
!981 = !DISubprogram(name: "vswscanf", linkageName: "__isoc99_vswscanf", scope: !881, file: !881, line: 718, type: !982, flags: DIFlagPrototyped, spFlags: 0)
!982 = !DISubroutineType(types: !983)
!983 = !{!15, !434, !434, !966}
!984 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !985, file: !875, line: 174)
!985 = !DISubprogram(name: "vwprintf", scope: !881, file: !881, line: 621, type: !986, flags: DIFlagPrototyped, spFlags: 0)
!986 = !DISubroutineType(types: !987)
!987 = !{!15, !434, !966}
!988 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !989, file: !875, line: 176)
!989 = !DISubprogram(name: "vwscanf", linkageName: "__isoc99_vwscanf", scope: !881, file: !881, line: 715, type: !986, flags: DIFlagPrototyped, spFlags: 0)
!990 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !991, file: !875, line: 178)
!991 = !DISubprogram(name: "wcrtomb", scope: !881, file: !881, line: 302, type: !992, flags: DIFlagPrototyped, spFlags: 0)
!992 = !DISubroutineType(types: !993)
!993 = !{!341, !433, !391, !926}
!994 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !995, file: !875, line: 179)
!995 = !DISubprogram(name: "wcscat", scope: !881, file: !881, line: 97, type: !996, flags: DIFlagPrototyped, spFlags: 0)
!996 = !DISubroutineType(types: !997)
!997 = !{!390, !389, !434}
!998 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !999, file: !875, line: 180)
!999 = !DISubprogram(name: "wcscmp", scope: !881, file: !881, line: 106, type: !1000, flags: DIFlagPrototyped, spFlags: 0)
!1000 = !DISubroutineType(types: !1001)
!1001 = !{!15, !435, !435}
!1002 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1003, file: !875, line: 181)
!1003 = !DISubprogram(name: "wcscoll", scope: !881, file: !881, line: 131, type: !1000, flags: DIFlagPrototyped, spFlags: 0)
!1004 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1005, file: !875, line: 182)
!1005 = !DISubprogram(name: "wcscpy", scope: !881, file: !881, line: 87, type: !996, flags: DIFlagPrototyped, spFlags: 0)
!1006 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1007, file: !875, line: 183)
!1007 = !DISubprogram(name: "wcscspn", scope: !881, file: !881, line: 188, type: !1008, flags: DIFlagPrototyped, spFlags: 0)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{!341, !435, !435}
!1010 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1011, file: !875, line: 184)
!1011 = !DISubprogram(name: "wcsftime", scope: !881, file: !881, line: 852, type: !1012, flags: DIFlagPrototyped, spFlags: 0)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{!341, !389, !341, !434, !1014}
!1014 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1015)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1017)
!1017 = !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !881, line: 83, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS2tm")
!1018 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1019, file: !875, line: 185)
!1019 = !DISubprogram(name: "wcslen", scope: !881, file: !881, line: 223, type: !1020, flags: DIFlagPrototyped, spFlags: 0)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{!341, !435}
!1022 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1023, file: !875, line: 186)
!1023 = !DISubprogram(name: "wcsncat", scope: !881, file: !881, line: 101, type: !1024, flags: DIFlagPrototyped, spFlags: 0)
!1024 = !DISubroutineType(types: !1025)
!1025 = !{!390, !389, !434, !341}
!1026 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1027, file: !875, line: 187)
!1027 = !DISubprogram(name: "wcsncmp", scope: !881, file: !881, line: 109, type: !1028, flags: DIFlagPrototyped, spFlags: 0)
!1028 = !DISubroutineType(types: !1029)
!1029 = !{!15, !435, !435, !341}
!1030 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1031, file: !875, line: 188)
!1031 = !DISubprogram(name: "wcsncpy", scope: !881, file: !881, line: 92, type: !1024, flags: DIFlagPrototyped, spFlags: 0)
!1032 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1033, file: !875, line: 189)
!1033 = !DISubprogram(name: "wcsrtombs", scope: !881, file: !881, line: 344, type: !1034, flags: DIFlagPrototyped, spFlags: 0)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!341, !433, !1036, !341, !926}
!1036 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1037)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!1038 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1039, file: !875, line: 190)
!1039 = !DISubprogram(name: "wcsspn", scope: !881, file: !881, line: 192, type: !1008, flags: DIFlagPrototyped, spFlags: 0)
!1040 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1041, file: !875, line: 191)
!1041 = !DISubprogram(name: "wcstod", scope: !881, file: !881, line: 378, type: !1042, flags: DIFlagPrototyped, spFlags: 0)
!1042 = !DISubroutineType(types: !1043)
!1043 = !{!324, !434, !1044}
!1044 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1045)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!1046 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1047, file: !875, line: 193)
!1047 = !DISubprogram(name: "wcstof", scope: !881, file: !881, line: 383, type: !1048, flags: DIFlagPrototyped, spFlags: 0)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{!12, !434, !1044}
!1050 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1051, file: !875, line: 195)
!1051 = !DISubprogram(name: "wcstok", scope: !881, file: !881, line: 218, type: !1052, flags: DIFlagPrototyped, spFlags: 0)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!390, !389, !434, !1044}
!1054 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1055, file: !875, line: 196)
!1055 = !DISubprogram(name: "wcstol", scope: !881, file: !881, line: 429, type: !1056, flags: DIFlagPrototyped, spFlags: 0)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{!184, !434, !1044, !15}
!1058 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1059, file: !875, line: 197)
!1059 = !DISubprogram(name: "wcstoul", scope: !881, file: !881, line: 434, type: !1060, flags: DIFlagPrototyped, spFlags: 0)
!1060 = !DISubroutineType(types: !1061)
!1061 = !{!343, !434, !1044, !15}
!1062 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1063, file: !875, line: 198)
!1063 = !DISubprogram(name: "wcsxfrm", scope: !881, file: !881, line: 135, type: !1064, flags: DIFlagPrototyped, spFlags: 0)
!1064 = !DISubroutineType(types: !1065)
!1065 = !{!341, !389, !434, !341}
!1066 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1067, file: !875, line: 199)
!1067 = !DISubprogram(name: "wctob", scope: !881, file: !881, line: 289, type: !1068, flags: DIFlagPrototyped, spFlags: 0)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{!15, !877}
!1070 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1071, file: !875, line: 200)
!1071 = !DISubprogram(name: "wmemcmp", scope: !881, file: !881, line: 259, type: !1028, flags: DIFlagPrototyped, spFlags: 0)
!1072 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1073, file: !875, line: 201)
!1073 = !DISubprogram(name: "wmemcpy", scope: !881, file: !881, line: 263, type: !1024, flags: DIFlagPrototyped, spFlags: 0)
!1074 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1075, file: !875, line: 202)
!1075 = !DISubprogram(name: "wmemmove", scope: !881, file: !881, line: 268, type: !1076, flags: DIFlagPrototyped, spFlags: 0)
!1076 = !DISubroutineType(types: !1077)
!1077 = !{!390, !390, !435, !341}
!1078 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1079, file: !875, line: 203)
!1079 = !DISubprogram(name: "wmemset", scope: !881, file: !881, line: 272, type: !1080, flags: DIFlagPrototyped, spFlags: 0)
!1080 = !DISubroutineType(types: !1081)
!1081 = !{!390, !390, !391, !341}
!1082 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1083, file: !875, line: 204)
!1083 = !DISubprogram(name: "wprintf", scope: !881, file: !881, line: 602, type: !1084, flags: DIFlagPrototyped, spFlags: 0)
!1084 = !DISubroutineType(types: !1085)
!1085 = !{!15, !434, null}
!1086 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1087, file: !875, line: 205)
!1087 = !DISubprogram(name: "wscanf", linkageName: "__isoc99_wscanf", scope: !881, file: !881, line: 661, type: !1084, flags: DIFlagPrototyped, spFlags: 0)
!1088 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1089, file: !875, line: 206)
!1089 = !DISubprogram(name: "wcschr", scope: !881, file: !881, line: 165, type: !1090, flags: DIFlagPrototyped, spFlags: 0)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{!390, !435, !391}
!1092 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1093, file: !875, line: 207)
!1093 = !DISubprogram(name: "wcspbrk", scope: !881, file: !881, line: 202, type: !1094, flags: DIFlagPrototyped, spFlags: 0)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{!390, !435, !435}
!1096 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1097, file: !875, line: 208)
!1097 = !DISubprogram(name: "wcsrchr", scope: !881, file: !881, line: 175, type: !1090, flags: DIFlagPrototyped, spFlags: 0)
!1098 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1099, file: !875, line: 209)
!1099 = !DISubprogram(name: "wcsstr", scope: !881, file: !881, line: 213, type: !1094, flags: DIFlagPrototyped, spFlags: 0)
!1100 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1101, file: !875, line: 210)
!1101 = !DISubprogram(name: "wmemchr", scope: !881, file: !881, line: 254, type: !1102, flags: DIFlagPrototyped, spFlags: 0)
!1102 = !DISubroutineType(types: !1103)
!1103 = !{!390, !435, !391, !341}
!1104 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !442, entity: !1105, file: !875, line: 251)
!1105 = !DISubprogram(name: "wcstold", scope: !881, file: !881, line: 385, type: !1106, flags: DIFlagPrototyped, spFlags: 0)
!1106 = !DISubroutineType(types: !1107)
!1107 = !{!480, !434, !1044}
!1108 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !442, entity: !1109, file: !875, line: 260)
!1109 = !DISubprogram(name: "wcstoll", scope: !881, file: !881, line: 442, type: !1110, flags: DIFlagPrototyped, spFlags: 0)
!1110 = !DISubroutineType(types: !1111)
!1111 = !{!447, !434, !1044, !15}
!1112 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !442, entity: !1113, file: !875, line: 261)
!1113 = !DISubprogram(name: "wcstoull", scope: !881, file: !881, line: 449, type: !1114, flags: DIFlagPrototyped, spFlags: 0)
!1114 = !DISubroutineType(types: !1115)
!1115 = !{!471, !434, !1044, !15}
!1116 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1105, file: !875, line: 267)
!1117 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1109, file: !875, line: 268)
!1118 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1113, file: !875, line: 269)
!1119 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1047, file: !875, line: 283)
!1120 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !975, file: !875, line: 286)
!1121 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !981, file: !875, line: 289)
!1122 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !989, file: !875, line: 292)
!1123 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1105, file: !875, line: 296)
!1124 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1109, file: !875, line: 297)
!1125 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1113, file: !875, line: 298)
!1126 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1127, file: !1128, line: 68)
!1127 = !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !1129, file: !1128, line: 90, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!1128 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/exception_ptr.h", directory: "", checksumkind: CSK_MD5, checksum: "ed433011c81450fc2dabd9aa8a29a038")
!1129 = !DINamespace(name: "__exception_ptr", scope: !2)
!1130 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !1129, entity: !1131, file: !1128, line: 84)
!1131 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !2, file: !1128, line: 80, type: !1132, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!1132 = !DISubroutineType(types: !1133)
!1133 = !{null, !1127}
!1134 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !1135, entity: !1136, file: !1137, line: 58)
!1135 = !DINamespace(name: "__gnu_debug", scope: null)
!1136 = !DINamespace(name: "__debug", scope: !2)
!1137 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/debug/debug.h", directory: "", checksumkind: CSK_MD5, checksum: "982c0103e1e5f86b0818efdfc5273c3c")
!1138 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1139, file: !1144, line: 47)
!1139 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !1140, line: 24, baseType: !1141)
!1140 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!1141 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !1142, line: 37, baseType: !1143)
!1142 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!1143 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1144 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cstdint", directory: "")
!1145 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1146, file: !1144, line: 48)
!1146 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !1140, line: 25, baseType: !1147)
!1147 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !1142, line: 39, baseType: !1148)
!1148 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1149 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1150, file: !1144, line: 49)
!1150 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !1140, line: 26, baseType: !1151)
!1151 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !1142, line: 41, baseType: !15)
!1152 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1153, file: !1144, line: 50)
!1153 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !1140, line: 27, baseType: !1154)
!1154 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !1142, line: 44, baseType: !184)
!1155 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1156, file: !1144, line: 52)
!1156 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !1157, line: 58, baseType: !1143)
!1157 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!1158 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1159, file: !1144, line: 53)
!1159 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !1157, line: 60, baseType: !184)
!1160 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1161, file: !1144, line: 54)
!1161 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !1157, line: 61, baseType: !184)
!1162 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1163, file: !1144, line: 55)
!1163 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !1157, line: 62, baseType: !184)
!1164 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1165, file: !1144, line: 57)
!1165 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !1157, line: 43, baseType: !1166)
!1166 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least8_t", file: !1142, line: 52, baseType: !1141)
!1167 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1168, file: !1144, line: 58)
!1168 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !1157, line: 44, baseType: !1169)
!1169 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least16_t", file: !1142, line: 54, baseType: !1147)
!1170 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1171, file: !1144, line: 59)
!1171 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !1157, line: 45, baseType: !1172)
!1172 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least32_t", file: !1142, line: 56, baseType: !1151)
!1173 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1174, file: !1144, line: 60)
!1174 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !1157, line: 46, baseType: !1175)
!1175 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least64_t", file: !1142, line: 58, baseType: !1154)
!1176 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1177, file: !1144, line: 62)
!1177 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !1157, line: 101, baseType: !1178)
!1178 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1142, line: 72, baseType: !184)
!1179 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1180, file: !1144, line: 63)
!1180 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !1157, line: 87, baseType: !184)
!1181 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1182, file: !1144, line: 65)
!1182 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !1183, line: 24, baseType: !1184)
!1183 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!1184 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !1142, line: 38, baseType: !18)
!1185 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1186, file: !1144, line: 66)
!1186 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !1183, line: 25, baseType: !1187)
!1187 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !1142, line: 40, baseType: !1188)
!1188 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1189 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1190, file: !1144, line: 67)
!1190 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !1183, line: 26, baseType: !1191)
!1191 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !1142, line: 42, baseType: !195)
!1192 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1193, file: !1144, line: 68)
!1193 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !1183, line: 27, baseType: !1194)
!1194 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !1142, line: 45, baseType: !343)
!1195 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1196, file: !1144, line: 70)
!1196 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !1157, line: 71, baseType: !18)
!1197 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1198, file: !1144, line: 71)
!1198 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !1157, line: 73, baseType: !343)
!1199 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1200, file: !1144, line: 72)
!1200 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !1157, line: 74, baseType: !343)
!1201 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1202, file: !1144, line: 73)
!1202 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !1157, line: 75, baseType: !343)
!1203 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1204, file: !1144, line: 75)
!1204 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !1157, line: 49, baseType: !1205)
!1205 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least8_t", file: !1142, line: 53, baseType: !1184)
!1206 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1207, file: !1144, line: 76)
!1207 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !1157, line: 50, baseType: !1208)
!1208 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least16_t", file: !1142, line: 55, baseType: !1187)
!1209 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1210, file: !1144, line: 77)
!1210 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !1157, line: 51, baseType: !1211)
!1211 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !1142, line: 57, baseType: !1191)
!1212 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1213, file: !1144, line: 78)
!1213 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !1157, line: 52, baseType: !1214)
!1214 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least64_t", file: !1142, line: 59, baseType: !1194)
!1215 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1216, file: !1144, line: 80)
!1216 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1157, line: 102, baseType: !1217)
!1217 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1142, line: 73, baseType: !343)
!1218 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1219, file: !1144, line: 81)
!1219 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !1157, line: 90, baseType: !343)
!1220 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1221, file: !1223, line: 53)
!1221 = !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !1222, line: 51, size: 768, flags: DIFlagFwdDecl, identifier: "_ZTS5lconv")
!1222 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1223 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/clocale", directory: "")
!1224 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1225, file: !1223, line: 54)
!1225 = !DISubprogram(name: "setlocale", scope: !1222, file: !1222, line: 122, type: !1226, flags: DIFlagPrototyped, spFlags: 0)
!1226 = !DISubroutineType(types: !1227)
!1227 = !{!368, !15, !325}
!1228 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1229, file: !1223, line: 55)
!1229 = !DISubprogram(name: "localeconv", scope: !1222, file: !1222, line: 125, type: !1230, flags: DIFlagPrototyped, spFlags: 0)
!1230 = !DISubroutineType(types: !1231)
!1231 = !{!1232}
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1233 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1234, file: !1236, line: 64)
!1234 = !DISubprogram(name: "isalnum", scope: !1235, file: !1235, line: 108, type: !296, flags: DIFlagPrototyped, spFlags: 0)
!1235 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!1236 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cctype", directory: "")
!1237 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1238, file: !1236, line: 65)
!1238 = !DISubprogram(name: "isalpha", scope: !1235, file: !1235, line: 109, type: !296, flags: DIFlagPrototyped, spFlags: 0)
!1239 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1240, file: !1236, line: 66)
!1240 = !DISubprogram(name: "iscntrl", scope: !1235, file: !1235, line: 110, type: !296, flags: DIFlagPrototyped, spFlags: 0)
!1241 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1242, file: !1236, line: 67)
!1242 = !DISubprogram(name: "isdigit", scope: !1235, file: !1235, line: 111, type: !296, flags: DIFlagPrototyped, spFlags: 0)
!1243 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1244, file: !1236, line: 68)
!1244 = !DISubprogram(name: "isgraph", scope: !1235, file: !1235, line: 113, type: !296, flags: DIFlagPrototyped, spFlags: 0)
!1245 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1246, file: !1236, line: 69)
!1246 = !DISubprogram(name: "islower", scope: !1235, file: !1235, line: 112, type: !296, flags: DIFlagPrototyped, spFlags: 0)
!1247 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1248, file: !1236, line: 70)
!1248 = !DISubprogram(name: "isprint", scope: !1235, file: !1235, line: 114, type: !296, flags: DIFlagPrototyped, spFlags: 0)
!1249 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1250, file: !1236, line: 71)
!1250 = !DISubprogram(name: "ispunct", scope: !1235, file: !1235, line: 115, type: !296, flags: DIFlagPrototyped, spFlags: 0)
!1251 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1252, file: !1236, line: 72)
!1252 = !DISubprogram(name: "isspace", scope: !1235, file: !1235, line: 116, type: !296, flags: DIFlagPrototyped, spFlags: 0)
!1253 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1254, file: !1236, line: 73)
!1254 = !DISubprogram(name: "isupper", scope: !1235, file: !1235, line: 117, type: !296, flags: DIFlagPrototyped, spFlags: 0)
!1255 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1256, file: !1236, line: 74)
!1256 = !DISubprogram(name: "isxdigit", scope: !1235, file: !1235, line: 118, type: !296, flags: DIFlagPrototyped, spFlags: 0)
!1257 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1258, file: !1236, line: 75)
!1258 = !DISubprogram(name: "tolower", scope: !1235, file: !1235, line: 122, type: !296, flags: DIFlagPrototyped, spFlags: 0)
!1259 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1260, file: !1236, line: 76)
!1260 = !DISubprogram(name: "toupper", scope: !1235, file: !1235, line: 125, type: !296, flags: DIFlagPrototyped, spFlags: 0)
!1261 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1262, file: !1236, line: 87)
!1262 = !DISubprogram(name: "isblank", scope: !1235, file: !1235, line: 130, type: !296, flags: DIFlagPrototyped, spFlags: 0)
!1263 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1264, file: !1266, line: 98)
!1264 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1265, line: 7, baseType: !891)
!1265 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!1266 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cstdio", directory: "")
!1267 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1268, file: !1266, line: 99)
!1268 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !1269, line: 84, baseType: !1270)
!1269 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!1270 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fpos_t", file: !1271, line: 14, baseType: !1272)
!1271 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h", directory: "", checksumkind: CSK_MD5, checksum: "32de8bdaf3551a6c0a9394f9af4389ce")
!1272 = !DICompositeType(tag: DW_TAG_structure_type, name: "_G_fpos_t", file: !1271, line: 10, size: 128, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
!1273 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1274, file: !1266, line: 101)
!1274 = !DISubprogram(name: "clearerr", scope: !1269, file: !1269, line: 786, type: !1275, flags: DIFlagPrototyped, spFlags: 0)
!1275 = !DISubroutineType(types: !1276)
!1276 = !{null, !1277}
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1278 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1279, file: !1266, line: 102)
!1279 = !DISubprogram(name: "fclose", scope: !1269, file: !1269, line: 178, type: !1280, flags: DIFlagPrototyped, spFlags: 0)
!1280 = !DISubroutineType(types: !1281)
!1281 = !{!15, !1277}
!1282 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1283, file: !1266, line: 103)
!1283 = !DISubprogram(name: "feof", scope: !1269, file: !1269, line: 788, type: !1280, flags: DIFlagPrototyped, spFlags: 0)
!1284 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1285, file: !1266, line: 104)
!1285 = !DISubprogram(name: "ferror", scope: !1269, file: !1269, line: 790, type: !1280, flags: DIFlagPrototyped, spFlags: 0)
!1286 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1287, file: !1266, line: 105)
!1287 = !DISubprogram(name: "fflush", scope: !1269, file: !1269, line: 230, type: !1280, flags: DIFlagPrototyped, spFlags: 0)
!1288 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1289, file: !1266, line: 106)
!1289 = !DISubprogram(name: "fgetc", scope: !1269, file: !1269, line: 513, type: !1280, flags: DIFlagPrototyped, spFlags: 0)
!1290 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1291, file: !1266, line: 107)
!1291 = !DISubprogram(name: "fgetpos", scope: !1269, file: !1269, line: 760, type: !1292, flags: DIFlagPrototyped, spFlags: 0)
!1292 = !DISubroutineType(types: !1293)
!1293 = !{!15, !1294, !1295}
!1294 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1277)
!1295 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1296)
!1296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1297 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1298, file: !1266, line: 108)
!1298 = !DISubprogram(name: "fgets", scope: !1269, file: !1269, line: 592, type: !1299, flags: DIFlagPrototyped, spFlags: 0)
!1299 = !DISubroutineType(types: !1300)
!1300 = !{!368, !433, !15, !1294}
!1301 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1302, file: !1266, line: 109)
!1302 = !DISubprogram(name: "fopen", scope: !1269, file: !1269, line: 258, type: !1303, flags: DIFlagPrototyped, spFlags: 0)
!1303 = !DISubroutineType(types: !1304)
!1304 = !{!1277, !392, !392}
!1305 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1306, file: !1266, line: 110)
!1306 = !DISubprogram(name: "fprintf", scope: !1269, file: !1269, line: 350, type: !1307, flags: DIFlagPrototyped, spFlags: 0)
!1307 = !DISubroutineType(types: !1308)
!1308 = !{!15, !1294, !392, null}
!1309 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1310, file: !1266, line: 111)
!1310 = !DISubprogram(name: "fputc", scope: !1269, file: !1269, line: 549, type: !1311, flags: DIFlagPrototyped, spFlags: 0)
!1311 = !DISubroutineType(types: !1312)
!1312 = !{!15, !15, !1277}
!1313 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1314, file: !1266, line: 112)
!1314 = !DISubprogram(name: "fputs", scope: !1269, file: !1269, line: 655, type: !1315, flags: DIFlagPrototyped, spFlags: 0)
!1315 = !DISubroutineType(types: !1316)
!1316 = !{!15, !392, !1294}
!1317 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1318, file: !1266, line: 113)
!1318 = !DISubprogram(name: "fread", scope: !1269, file: !1269, line: 675, type: !1319, flags: DIFlagPrototyped, spFlags: 0)
!1319 = !DISubroutineType(types: !1320)
!1320 = !{!341, !1321, !341, !341, !1294}
!1321 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !338)
!1322 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1323, file: !1266, line: 114)
!1323 = !DISubprogram(name: "freopen", scope: !1269, file: !1269, line: 265, type: !1324, flags: DIFlagPrototyped, spFlags: 0)
!1324 = !DISubroutineType(types: !1325)
!1325 = !{!1277, !392, !392, !1294}
!1326 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1327, file: !1266, line: 115)
!1327 = !DISubprogram(name: "fscanf", linkageName: "__isoc99_fscanf", scope: !1269, file: !1269, line: 434, type: !1307, flags: DIFlagPrototyped, spFlags: 0)
!1328 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1329, file: !1266, line: 116)
!1329 = !DISubprogram(name: "fseek", scope: !1269, file: !1269, line: 713, type: !1330, flags: DIFlagPrototyped, spFlags: 0)
!1330 = !DISubroutineType(types: !1331)
!1331 = !{!15, !1277, !184, !15}
!1332 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1333, file: !1266, line: 117)
!1333 = !DISubprogram(name: "fsetpos", scope: !1269, file: !1269, line: 765, type: !1334, flags: DIFlagPrototyped, spFlags: 0)
!1334 = !DISubroutineType(types: !1335)
!1335 = !{!15, !1277, !1336}
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1268)
!1338 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1339, file: !1266, line: 118)
!1339 = !DISubprogram(name: "ftell", scope: !1269, file: !1269, line: 718, type: !1340, flags: DIFlagPrototyped, spFlags: 0)
!1340 = !DISubroutineType(types: !1341)
!1341 = !{!184, !1277}
!1342 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1343, file: !1266, line: 119)
!1343 = !DISubprogram(name: "fwrite", scope: !1269, file: !1269, line: 681, type: !1344, flags: DIFlagPrototyped, spFlags: 0)
!1344 = !DISubroutineType(types: !1345)
!1345 = !{!341, !1346, !341, !341, !1294}
!1346 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !339)
!1347 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1348, file: !1266, line: 120)
!1348 = !DISubprogram(name: "getc", scope: !1269, file: !1269, line: 514, type: !1280, flags: DIFlagPrototyped, spFlags: 0)
!1349 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1350, file: !1266, line: 121)
!1350 = !DISubprogram(name: "getchar", scope: !1269, file: !1269, line: 520, type: !86, flags: DIFlagPrototyped, spFlags: 0)
!1351 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1352, file: !1266, line: 124)
!1352 = !DISubprogram(name: "gets", scope: !1269, file: !1269, line: 605, type: !1353, flags: DIFlagPrototyped, spFlags: 0)
!1353 = !DISubroutineType(types: !1354)
!1354 = !{!368, !368}
!1355 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1356, file: !1266, line: 126)
!1356 = !DISubprogram(name: "perror", scope: !1269, file: !1269, line: 804, type: !1357, flags: DIFlagPrototyped, spFlags: 0)
!1357 = !DISubroutineType(types: !1358)
!1358 = !{null, !325}
!1359 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1360, file: !1266, line: 127)
!1360 = !DISubprogram(name: "printf", scope: !1269, file: !1269, line: 356, type: !1361, flags: DIFlagPrototyped, spFlags: 0)
!1361 = !DISubroutineType(types: !1362)
!1362 = !{!15, !392, null}
!1363 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1364, file: !1266, line: 128)
!1364 = !DISubprogram(name: "putc", scope: !1269, file: !1269, line: 550, type: !1311, flags: DIFlagPrototyped, spFlags: 0)
!1365 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1366, file: !1266, line: 129)
!1366 = !DISubprogram(name: "putchar", scope: !1269, file: !1269, line: 556, type: !296, flags: DIFlagPrototyped, spFlags: 0)
!1367 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1368, file: !1266, line: 130)
!1368 = !DISubprogram(name: "puts", scope: !1269, file: !1269, line: 661, type: !328, flags: DIFlagPrototyped, spFlags: 0)
!1369 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1370, file: !1266, line: 131)
!1370 = !DISubprogram(name: "remove", scope: !1269, file: !1269, line: 152, type: !328, flags: DIFlagPrototyped, spFlags: 0)
!1371 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1372, file: !1266, line: 132)
!1372 = !DISubprogram(name: "rename", scope: !1269, file: !1269, line: 154, type: !1373, flags: DIFlagPrototyped, spFlags: 0)
!1373 = !DISubroutineType(types: !1374)
!1374 = !{!15, !325, !325}
!1375 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1376, file: !1266, line: 133)
!1376 = !DISubprogram(name: "rewind", scope: !1269, file: !1269, line: 723, type: !1275, flags: DIFlagPrototyped, spFlags: 0)
!1377 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1378, file: !1266, line: 134)
!1378 = !DISubprogram(name: "scanf", linkageName: "__isoc99_scanf", scope: !1269, file: !1269, line: 437, type: !1361, flags: DIFlagPrototyped, spFlags: 0)
!1379 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1380, file: !1266, line: 135)
!1380 = !DISubprogram(name: "setbuf", scope: !1269, file: !1269, line: 328, type: !1381, flags: DIFlagPrototyped, spFlags: 0)
!1381 = !DISubroutineType(types: !1382)
!1382 = !{null, !1294, !433}
!1383 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1384, file: !1266, line: 136)
!1384 = !DISubprogram(name: "setvbuf", scope: !1269, file: !1269, line: 332, type: !1385, flags: DIFlagPrototyped, spFlags: 0)
!1385 = !DISubroutineType(types: !1386)
!1386 = !{!15, !1294, !433, !15, !341}
!1387 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1388, file: !1266, line: 137)
!1388 = !DISubprogram(name: "sprintf", scope: !1269, file: !1269, line: 358, type: !1389, flags: DIFlagPrototyped, spFlags: 0)
!1389 = !DISubroutineType(types: !1390)
!1390 = !{!15, !433, !392, null}
!1391 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1392, file: !1266, line: 138)
!1392 = !DISubprogram(name: "sscanf", linkageName: "__isoc99_sscanf", scope: !1269, file: !1269, line: 439, type: !1393, flags: DIFlagPrototyped, spFlags: 0)
!1393 = !DISubroutineType(types: !1394)
!1394 = !{!15, !392, !392, null}
!1395 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1396, file: !1266, line: 139)
!1396 = !DISubprogram(name: "tmpfile", scope: !1269, file: !1269, line: 188, type: !1397, flags: DIFlagPrototyped, spFlags: 0)
!1397 = !DISubroutineType(types: !1398)
!1398 = !{!1277}
!1399 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1400, file: !1266, line: 141)
!1400 = !DISubprogram(name: "tmpnam", scope: !1269, file: !1269, line: 205, type: !1353, flags: DIFlagPrototyped, spFlags: 0)
!1401 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1402, file: !1266, line: 143)
!1402 = !DISubprogram(name: "ungetc", scope: !1269, file: !1269, line: 668, type: !1311, flags: DIFlagPrototyped, spFlags: 0)
!1403 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1404, file: !1266, line: 144)
!1404 = !DISubprogram(name: "vfprintf", scope: !1269, file: !1269, line: 365, type: !1405, flags: DIFlagPrototyped, spFlags: 0)
!1405 = !DISubroutineType(types: !1406)
!1406 = !{!15, !1294, !392, !966}
!1407 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1408, file: !1266, line: 145)
!1408 = !DISubprogram(name: "vprintf", scope: !1269, file: !1269, line: 371, type: !1409, flags: DIFlagPrototyped, spFlags: 0)
!1409 = !DISubroutineType(types: !1410)
!1410 = !{!15, !392, !966}
!1411 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1412, file: !1266, line: 146)
!1412 = !DISubprogram(name: "vsprintf", scope: !1269, file: !1269, line: 373, type: !1413, flags: DIFlagPrototyped, spFlags: 0)
!1413 = !DISubroutineType(types: !1414)
!1414 = !{!15, !433, !392, !966}
!1415 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !442, entity: !1416, file: !1266, line: 175)
!1416 = !DISubprogram(name: "snprintf", scope: !1269, file: !1269, line: 378, type: !1417, flags: DIFlagPrototyped, spFlags: 0)
!1417 = !DISubroutineType(types: !1418)
!1418 = !{!15, !433, !341, !392, null}
!1419 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !442, entity: !1420, file: !1266, line: 176)
!1420 = !DISubprogram(name: "vfscanf", linkageName: "__isoc99_vfscanf", scope: !1269, file: !1269, line: 479, type: !1405, flags: DIFlagPrototyped, spFlags: 0)
!1421 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !442, entity: !1422, file: !1266, line: 177)
!1422 = !DISubprogram(name: "vscanf", linkageName: "__isoc99_vscanf", scope: !1269, file: !1269, line: 484, type: !1409, flags: DIFlagPrototyped, spFlags: 0)
!1423 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !442, entity: !1424, file: !1266, line: 178)
!1424 = !DISubprogram(name: "vsnprintf", scope: !1269, file: !1269, line: 382, type: !1425, flags: DIFlagPrototyped, spFlags: 0)
!1425 = !DISubroutineType(types: !1426)
!1426 = !{!15, !433, !341, !392, !966}
!1427 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !442, entity: !1428, file: !1266, line: 179)
!1428 = !DISubprogram(name: "vsscanf", linkageName: "__isoc99_vsscanf", scope: !1269, file: !1269, line: 487, type: !1429, flags: DIFlagPrototyped, spFlags: 0)
!1429 = !DISubroutineType(types: !1430)
!1430 = !{!15, !392, !392, !966}
!1431 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1416, file: !1266, line: 185)
!1432 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1420, file: !1266, line: 186)
!1433 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1422, file: !1266, line: 187)
!1434 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1424, file: !1266, line: 188)
!1435 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1428, file: !1266, line: 189)
!1436 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1437, file: !1441, line: 82)
!1437 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctrans_t", file: !1438, line: 48, baseType: !1439)
!1438 = !DIFile(filename: "/usr/include/wctype.h", directory: "", checksumkind: CSK_MD5, checksum: "9bcd8e8b8cd2078c8a6c42e262af7d7b")
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1440 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1151)
!1441 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cwctype", directory: "")
!1442 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1443, file: !1441, line: 83)
!1443 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctype_t", file: !1444, line: 38, baseType: !343)
!1444 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!1445 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !877, file: !1441, line: 84)
!1446 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1447, file: !1441, line: 86)
!1447 = !DISubprogram(name: "iswalnum", scope: !1444, file: !1444, line: 95, type: !1068, flags: DIFlagPrototyped, spFlags: 0)
!1448 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1449, file: !1441, line: 87)
!1449 = !DISubprogram(name: "iswalpha", scope: !1444, file: !1444, line: 101, type: !1068, flags: DIFlagPrototyped, spFlags: 0)
!1450 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1451, file: !1441, line: 89)
!1451 = !DISubprogram(name: "iswblank", scope: !1444, file: !1444, line: 146, type: !1068, flags: DIFlagPrototyped, spFlags: 0)
!1452 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1453, file: !1441, line: 91)
!1453 = !DISubprogram(name: "iswcntrl", scope: !1444, file: !1444, line: 104, type: !1068, flags: DIFlagPrototyped, spFlags: 0)
!1454 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1455, file: !1441, line: 92)
!1455 = !DISubprogram(name: "iswctype", scope: !1444, file: !1444, line: 159, type: !1456, flags: DIFlagPrototyped, spFlags: 0)
!1456 = !DISubroutineType(types: !1457)
!1457 = !{!15, !877, !1443}
!1458 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1459, file: !1441, line: 93)
!1459 = !DISubprogram(name: "iswdigit", scope: !1444, file: !1444, line: 108, type: !1068, flags: DIFlagPrototyped, spFlags: 0)
!1460 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1461, file: !1441, line: 94)
!1461 = !DISubprogram(name: "iswgraph", scope: !1444, file: !1444, line: 112, type: !1068, flags: DIFlagPrototyped, spFlags: 0)
!1462 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1463, file: !1441, line: 95)
!1463 = !DISubprogram(name: "iswlower", scope: !1444, file: !1444, line: 117, type: !1068, flags: DIFlagPrototyped, spFlags: 0)
!1464 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1465, file: !1441, line: 96)
!1465 = !DISubprogram(name: "iswprint", scope: !1444, file: !1444, line: 120, type: !1068, flags: DIFlagPrototyped, spFlags: 0)
!1466 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1467, file: !1441, line: 97)
!1467 = !DISubprogram(name: "iswpunct", scope: !1444, file: !1444, line: 125, type: !1068, flags: DIFlagPrototyped, spFlags: 0)
!1468 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1469, file: !1441, line: 98)
!1469 = !DISubprogram(name: "iswspace", scope: !1444, file: !1444, line: 130, type: !1068, flags: DIFlagPrototyped, spFlags: 0)
!1470 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1471, file: !1441, line: 99)
!1471 = !DISubprogram(name: "iswupper", scope: !1444, file: !1444, line: 135, type: !1068, flags: DIFlagPrototyped, spFlags: 0)
!1472 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1473, file: !1441, line: 100)
!1473 = !DISubprogram(name: "iswxdigit", scope: !1444, file: !1444, line: 140, type: !1068, flags: DIFlagPrototyped, spFlags: 0)
!1474 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1475, file: !1441, line: 101)
!1475 = !DISubprogram(name: "towctrans", scope: !1438, file: !1438, line: 55, type: !1476, flags: DIFlagPrototyped, spFlags: 0)
!1476 = !DISubroutineType(types: !1477)
!1477 = !{!877, !877, !1437}
!1478 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1479, file: !1441, line: 102)
!1479 = !DISubprogram(name: "towlower", scope: !1444, file: !1444, line: 166, type: !1480, flags: DIFlagPrototyped, spFlags: 0)
!1480 = !DISubroutineType(types: !1481)
!1481 = !{!877, !877}
!1482 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1483, file: !1441, line: 103)
!1483 = !DISubprogram(name: "towupper", scope: !1444, file: !1444, line: 169, type: !1480, flags: DIFlagPrototyped, spFlags: 0)
!1484 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1485, file: !1441, line: 104)
!1485 = !DISubprogram(name: "wctrans", scope: !1438, file: !1438, line: 52, type: !1486, flags: DIFlagPrototyped, spFlags: 0)
!1486 = !DISubroutineType(types: !1487)
!1487 = !{!1437, !325}
!1488 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1489, file: !1441, line: 105)
!1489 = !DISubprogram(name: "wctype", scope: !1444, file: !1444, line: 155, type: !1490, flags: DIFlagPrototyped, spFlags: 0)
!1490 = !DISubroutineType(types: !1491)
!1491 = !{!1443, !325}
!1492 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !9, entity: !2, file: !1493, line: 70)
!1493 = !DIFile(filename: "RTTL/common/RTInclude.hxx", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src", checksumkind: CSK_MD5, checksum: "735b2b9337cd60438b3f1c6b71b217f1")
!1494 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !9, entity: !2, file: !22, line: 7)
!1495 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !9, entity: !2, file: !191, line: 29)
!1496 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1497, file: !1501, line: 77)
!1497 = !DISubprogram(name: "memchr", scope: !1498, file: !1498, line: 89, type: !1499, flags: DIFlagPrototyped, spFlags: 0)
!1498 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1499 = !DISubroutineType(types: !1500)
!1500 = !{!339, !339, !15, !341}
!1501 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cstring", directory: "")
!1502 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1503, file: !1501, line: 78)
!1503 = !DISubprogram(name: "memcmp", scope: !1498, file: !1498, line: 64, type: !1504, flags: DIFlagPrototyped, spFlags: 0)
!1504 = !DISubroutineType(types: !1505)
!1505 = !{!15, !339, !339, !341}
!1506 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1507, file: !1501, line: 79)
!1507 = !DISubprogram(name: "memcpy", scope: !1498, file: !1498, line: 43, type: !1508, flags: DIFlagPrototyped, spFlags: 0)
!1508 = !DISubroutineType(types: !1509)
!1509 = !{!338, !1321, !1346, !341}
!1510 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1511, file: !1501, line: 80)
!1511 = !DISubprogram(name: "memmove", scope: !1498, file: !1498, line: 47, type: !1512, flags: DIFlagPrototyped, spFlags: 0)
!1512 = !DISubroutineType(types: !1513)
!1513 = !{!338, !338, !339, !341}
!1514 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1515, file: !1501, line: 81)
!1515 = !DISubprogram(name: "memset", scope: !1498, file: !1498, line: 61, type: !1516, flags: DIFlagPrototyped, spFlags: 0)
!1516 = !DISubroutineType(types: !1517)
!1517 = !{!338, !338, !15, !341}
!1518 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1519, file: !1501, line: 82)
!1519 = !DISubprogram(name: "strcat", scope: !1498, file: !1498, line: 149, type: !1520, flags: DIFlagPrototyped, spFlags: 0)
!1520 = !DISubroutineType(types: !1521)
!1521 = !{!368, !433, !392}
!1522 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1523, file: !1501, line: 83)
!1523 = !DISubprogram(name: "strcmp", scope: !1498, file: !1498, line: 156, type: !1373, flags: DIFlagPrototyped, spFlags: 0)
!1524 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1525, file: !1501, line: 84)
!1525 = !DISubprogram(name: "strcoll", scope: !1498, file: !1498, line: 163, type: !1373, flags: DIFlagPrototyped, spFlags: 0)
!1526 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1527, file: !1501, line: 85)
!1527 = !DISubprogram(name: "strcpy", scope: !1498, file: !1498, line: 141, type: !1520, flags: DIFlagPrototyped, spFlags: 0)
!1528 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1529, file: !1501, line: 86)
!1529 = !DISubprogram(name: "strcspn", scope: !1498, file: !1498, line: 293, type: !1530, flags: DIFlagPrototyped, spFlags: 0)
!1530 = !DISubroutineType(types: !1531)
!1531 = !{!341, !325, !325}
!1532 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1533, file: !1501, line: 87)
!1533 = !DISubprogram(name: "strerror", scope: !1498, file: !1498, line: 419, type: !1534, flags: DIFlagPrototyped, spFlags: 0)
!1534 = !DISubroutineType(types: !1535)
!1535 = !{!368, !15}
!1536 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1537, file: !1501, line: 88)
!1537 = !DISubprogram(name: "strlen", scope: !1498, file: !1498, line: 407, type: !1538, flags: DIFlagPrototyped, spFlags: 0)
!1538 = !DISubroutineType(types: !1539)
!1539 = !{!341, !325}
!1540 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1541, file: !1501, line: 89)
!1541 = !DISubprogram(name: "strncat", scope: !1498, file: !1498, line: 152, type: !1542, flags: DIFlagPrototyped, spFlags: 0)
!1542 = !DISubroutineType(types: !1543)
!1543 = !{!368, !433, !392, !341}
!1544 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1545, file: !1501, line: 90)
!1545 = !DISubprogram(name: "strncmp", scope: !1498, file: !1498, line: 159, type: !1546, flags: DIFlagPrototyped, spFlags: 0)
!1546 = !DISubroutineType(types: !1547)
!1547 = !{!15, !325, !325, !341}
!1548 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1549, file: !1501, line: 91)
!1549 = !DISubprogram(name: "strncpy", scope: !1498, file: !1498, line: 144, type: !1542, flags: DIFlagPrototyped, spFlags: 0)
!1550 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1551, file: !1501, line: 92)
!1551 = !DISubprogram(name: "strspn", scope: !1498, file: !1498, line: 297, type: !1530, flags: DIFlagPrototyped, spFlags: 0)
!1552 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1553, file: !1501, line: 93)
!1553 = !DISubprogram(name: "strtok", scope: !1498, file: !1498, line: 356, type: !1520, flags: DIFlagPrototyped, spFlags: 0)
!1554 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1555, file: !1501, line: 94)
!1555 = !DISubprogram(name: "strxfrm", scope: !1498, file: !1498, line: 166, type: !1556, flags: DIFlagPrototyped, spFlags: 0)
!1556 = !DISubroutineType(types: !1557)
!1557 = !{!341, !433, !392, !341}
!1558 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1559, file: !1501, line: 95)
!1559 = !DISubprogram(name: "strchr", scope: !1498, file: !1498, line: 228, type: !1560, flags: DIFlagPrototyped, spFlags: 0)
!1560 = !DISubroutineType(types: !1561)
!1561 = !{!325, !325, !15}
!1562 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1563, file: !1501, line: 96)
!1563 = !DISubprogram(name: "strpbrk", scope: !1498, file: !1498, line: 305, type: !1564, flags: DIFlagPrototyped, spFlags: 0)
!1564 = !DISubroutineType(types: !1565)
!1565 = !{!325, !325, !325}
!1566 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1567, file: !1501, line: 97)
!1567 = !DISubprogram(name: "strrchr", scope: !1498, file: !1498, line: 255, type: !1560, flags: DIFlagPrototyped, spFlags: 0)
!1568 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !1569, file: !1501, line: 98)
!1569 = !DISubprogram(name: "strstr", scope: !1498, file: !1498, line: 332, type: !1564, flags: DIFlagPrototyped, spFlags: 0)
!1570 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !1571, entity: !1572, file: !1608, line: 23)
!1571 = !DINamespace(name: "ISG", scope: null)
!1572 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Matrix4x4", scope: !23, file: !1573, line: 9, size: 512, flags: DIFlagTypePassByValue, elements: !1574, identifier: "_ZTSN4RTTL9Matrix4x4E")
!1573 = !DIFile(filename: "RTTL/common/RTMatrix.hxx", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src", checksumkind: CSK_MD5, checksum: "7f520098e4175181190b8a9ccd06dffd")
!1574 = !{!1575, !1578, !1583, !1588, !1593, !1598, !1601, !1604}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "mat", scope: !1572, file: !1573, line: 12, baseType: !1576, size: 512, flags: DIFlagPublic)
!1576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 512, elements: !1577)
!1577 = !{!219, !219}
!1578 = !DISubprogram(name: "operator()", linkageName: "_ZN4RTTL9Matrix4x4clEii", scope: !1572, file: !1573, line: 14, type: !1579, scopeLine: 14, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1579 = !DISubroutineType(types: !1580)
!1580 = !{!1581, !1582, !44, !44}
!1581 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !12, size: 64)
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1583 = !DISubprogram(name: "getRow", linkageName: "_ZN4RTTL9Matrix4x46getRowEi", scope: !1572, file: !1573, line: 17, type: !1584, scopeLine: 17, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1584 = !DISubroutineType(types: !1585)
!1585 = !{!1586, !1582, !15}
!1586 = !DIDerivedType(tag: DW_TAG_typedef, name: "RTVec4f", scope: !23, file: !22, line: 270, baseType: !1587)
!1587 = !DICompositeType(tag: DW_TAG_class_type, name: "RTVec_t<4, float, 0>", scope: !23, file: !22, line: 53, size: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN4RTTL7RTVec_tILi4EfLi0EEE")
!1588 = !DISubprogram(name: "getCol", linkageName: "_ZN4RTTL9Matrix4x46getColEi", scope: !1572, file: !1573, line: 26, type: !1589, scopeLine: 26, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1589 = !DISubroutineType(types: !1590)
!1590 = !{!1591, !1582, !15}
!1591 = !DIDerivedType(tag: DW_TAG_typedef, name: "RTVec3f", scope: !23, file: !22, line: 269, baseType: !1592)
!1592 = !DICompositeType(tag: DW_TAG_class_type, name: "RTVec_t<3, float, 0>", scope: !23, file: !22, line: 48, size: 96, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN4RTTL7RTVec_tILi3EfLi0EEE")
!1593 = !DISubprogram(name: "setCol", linkageName: "_ZN4RTTL9Matrix4x46setColEiRKNS_7RTVec_tILi3EfLi0EEE", scope: !1572, file: !1573, line: 34, type: !1594, scopeLine: 34, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1594 = !DISubroutineType(types: !1595)
!1595 = !{null, !1582, !15, !1596}
!1596 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1597, size: 64)
!1597 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1591)
!1598 = !DISubprogram(name: "setIdentity", linkageName: "_ZN4RTTL9Matrix4x411setIdentityEv", scope: !1572, file: !1573, line: 40, type: !1599, scopeLine: 40, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1599 = !DISubroutineType(types: !1600)
!1600 = !{null, !1582}
!1601 = !DISubprogram(name: "setTranslationPart", linkageName: "_ZN4RTTL9Matrix4x418setTranslationPartERKNS_7RTVec_tILi3EfLi0EEE", scope: !1572, file: !1573, line: 47, type: !1602, scopeLine: 47, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1602 = !DISubroutineType(types: !1603)
!1603 = !{null, !1582, !1596}
!1604 = !DISubprogram(name: "setRotationPart", linkageName: "_ZN4RTTL9Matrix4x415setRotationPartERKNS_7RTVec_tILi3EfLi0EEEf", scope: !1572, file: !1573, line: 54, type: !1605, scopeLine: 54, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1605 = !DISubroutineType(types: !1606)
!1606 = !{null, !1582, !1596, !1607}
!1607 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!1608 = !DIFile(filename: "RTTL/API/ISG.hxx", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src", checksumkind: CSK_MD5, checksum: "bd8d965ee637ae20cb7fa2e028035776")
!1609 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !9, entity: !23, file: !1610, line: 13)
!1610 = !DIFile(filename: "RTTL/API/rt.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src", checksumkind: CSK_MD5, checksum: "bf9a68cd91e3dd436b53dbb783d36fdf")
!1611 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !9, entity: !1571, file: !1610, line: 14)
!1612 = !DIFile(filename: "RTTL/common/RTSSE.hxx", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/raytrace/src", checksumkind: CSK_MD5, checksum: "bbd5737e46ece2f5710eab9b8aad1d25")
!1613 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1614)
!1614 = !DIDerivedType(tag: DW_TAG_typedef, name: "sse_f", file: !214, line: 24, baseType: !213)
!1615 = !{i32 7, !"Dwarf Version", i32 5}
!1616 = !{i32 2, !"Debug Info Version", i32 3}
!1617 = !{i32 1, !"wchar_size", i32 4}
!1618 = !{i32 8, !"PIC Level", i32 2}
!1619 = !{i32 7, !"PIE Level", i32 2}
!1620 = !{i32 7, !"uwtable", i32 2}
!1621 = !{i32 7, !"frame-pointer", i32 2}
!1622 = !{!"clang version 16.0.0"}
!1623 = distinct !DISubprogram(name: "__cxx_global_var_init", scope: !970, file: !970, type: !311, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !1624)
!1624 = !{}
!1625 = !DILocation(line: 74, column: 25, scope: !1626)
!1626 = !DILexicalBlockFile(scope: !1623, file: !3, discriminator: 0)
!1627 = !DILocation(line: 0, scope: !1623)
!1628 = distinct !DISubprogram(name: "__cxx_global_var_init.1", scope: !970, file: !970, type: !311, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !1624)
!1629 = !DILocalVariable(name: "a", arg: 1, scope: !1630, file: !214, line: 622, type: !12)
!1630 = distinct !DISubprogram(name: "_mm_set_ps1", linkageName: "_ZL11_mm_set_ps1f", scope: !214, file: !214, line: 622, type: !1631, scopeLine: 622, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !1624)
!1631 = !DISubroutineType(types: !1632)
!1632 = !{!1614, !12}
!1633 = !DILocation(line: 622, column: 40, scope: !1630, inlinedAt: !1634)
!1634 = distinct !DILocation(line: 38, column: 31, scope: !1635)
!1635 = !DILexicalBlockFile(scope: !1628, file: !1612, discriminator: 0)
!1636 = !DILocalVariable(name: "result", scope: !1630, file: !214, line: 623, type: !1614)
!1637 = !DILocation(line: 623, column: 11, scope: !1630, inlinedAt: !1634)
!1638 = !DILocalVariable(name: "i", scope: !1639, file: !214, line: 626, type: !15)
!1639 = distinct !DILexicalBlock(scope: !1630, file: !214, line: 626, column: 5)
!1640 = !DILocation(line: 626, column: 14, scope: !1639, inlinedAt: !1634)
!1641 = !DILocation(line: 626, column: 10, scope: !1639, inlinedAt: !1634)
!1642 = !DILocation(line: 626, column: 21, scope: !1643, inlinedAt: !1634)
!1643 = distinct !DILexicalBlock(scope: !1639, file: !214, line: 626, column: 5)
!1644 = !DILocation(line: 626, column: 23, scope: !1643, inlinedAt: !1634)
!1645 = !DILocation(line: 626, column: 5, scope: !1639, inlinedAt: !1634)
!1646 = !DILocation(line: 627, column: 23, scope: !1643, inlinedAt: !1634)
!1647 = !DILocation(line: 627, column: 18, scope: !1643, inlinedAt: !1634)
!1648 = !DILocation(line: 627, column: 9, scope: !1643, inlinedAt: !1634)
!1649 = !DILocation(line: 627, column: 21, scope: !1643, inlinedAt: !1634)
!1650 = !DILocation(line: 626, column: 39, scope: !1643, inlinedAt: !1634)
!1651 = !DILocation(line: 626, column: 5, scope: !1643, inlinedAt: !1634)
!1652 = distinct !{!1652, !1645, !1653, !1654}
!1653 = !DILocation(line: 627, column: 23, scope: !1639, inlinedAt: !1634)
!1654 = !{!"llvm.loop.mustprogress"}
!1655 = !DILocation(line: 629, column: 5, scope: !1630, inlinedAt: !1634)
!1656 = !DILocation(line: 38, column: 31, scope: !1635)
!1657 = !DILocation(line: 38, column: 43, scope: !1635)
!1658 = distinct !DISubprogram(name: "resize", linkageName: "_ZN3LRT20OpenGLTextureRGBA8FB6resizeEii", scope: !185, file: !227, line: 12, type: !208, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !207, retainedNodes: !1624)
!1659 = !DILocalVariable(name: "this", arg: 1, scope: !1658, type: !1660, flags: DIFlagArtificial | DIFlagObjectPointer)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!1661 = !DILocation(line: 0, scope: !1658)
!1662 = !DILocalVariable(name: "newX", arg: 2, scope: !1658, file: !227, line: 12, type: !15)
!1663 = !DILocation(line: 12, column: 39, scope: !1658)
!1664 = !DILocalVariable(name: "newY", arg: 3, scope: !1658, file: !227, line: 12, type: !15)
!1665 = !DILocation(line: 12, column: 49, scope: !1658)
!1666 = !DILocation(line: 16, column: 32, scope: !1658)
!1667 = !DILocation(line: 16, column: 37, scope: !1658)
!1668 = !DILocation(line: 16, column: 25, scope: !1658)
!1669 = !DILocation(line: 18, column: 7, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1658, file: !227, line: 18, column: 7)
!1671 = !DILocation(line: 18, column: 20, scope: !1670)
!1672 = !DILocation(line: 18, column: 24, scope: !1670)
!1673 = !DILocation(line: 18, column: 28, scope: !1670)
!1674 = !DILocation(line: 18, column: 22, scope: !1670)
!1675 = !DILocation(line: 18, column: 30, scope: !1670)
!1676 = !DILocation(line: 18, column: 33, scope: !1670)
!1677 = !DILocation(line: 18, column: 46, scope: !1670)
!1678 = !DILocation(line: 18, column: 50, scope: !1670)
!1679 = !DILocation(line: 18, column: 54, scope: !1670)
!1680 = !DILocation(line: 18, column: 48, scope: !1670)
!1681 = !DILocation(line: 18, column: 7, scope: !1658)
!1682 = !DILocation(line: 20, column: 28, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1670, file: !227, line: 19, column: 5)
!1684 = !DILocation(line: 20, column: 31, scope: !1683)
!1685 = !DILocation(line: 20, column: 22, scope: !1683)
!1686 = !DILocation(line: 20, column: 7, scope: !1683)
!1687 = !DILocalVariable(name: "this", arg: 1, scope: !1688, type: !1689, flags: DIFlagArtificial | DIFlagObjectPointer)
!1688 = distinct !DISubprogram(name: "operator=", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EEaSERKS1_", scope: !21, file: !20, line: 74, type: !107, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !106, retainedNodes: !1624)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!1690 = !DILocation(line: 0, scope: !1688, inlinedAt: !1691)
!1691 = distinct !DILocation(line: 20, column: 20, scope: !1683)
!1692 = !DILocalVariable(name: "x", arg: 2, scope: !1688, file: !20, line: 74, type: !109)
!1693 = !DILocation(line: 74, column: 53, scope: !1688, inlinedAt: !1691)
!1694 = !DILocalVariable(name: "t", scope: !1688, file: !20, line: 75, type: !162)
!1695 = !DILocation(line: 75, column: 20, scope: !1688, inlinedAt: !1691)
!1696 = !DILocation(line: 75, column: 24, scope: !1688, inlinedAt: !1691)
!1697 = !DILocalVariable(name: "xt", scope: !1688, file: !20, line: 76, type: !166)
!1698 = !DILocation(line: 76, column: 26, scope: !1688, inlinedAt: !1691)
!1699 = !DILocation(line: 76, column: 31, scope: !1688, inlinedAt: !1691)
!1700 = !DILocation(line: 77, column: 9, scope: !1688, inlinedAt: !1691)
!1701 = !DILocation(line: 77, column: 18, scope: !1688, inlinedAt: !1691)
!1702 = !DILocalVariable(name: "this", arg: 1, scope: !1703, type: !1709, flags: DIFlagArtificial | DIFlagObjectPointer)
!1703 = distinct !DISubprogram(name: "assign<2, int, 0>", linkageName: "_ZN4RTTL8RTData_tILi2EiLi0EE6assignILi2EiLi0EEEvRKNS0_IXT_ET0_XT1_EEE", scope: !28, file: !27, line: 43, type: !57, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !1705, declaration: !1704, retainedNodes: !1624)
!1704 = !DISubprogram(name: "assign<2, int, 0>", linkageName: "_ZN4RTTL8RTData_tILi2EiLi0EE6assignILi2EiLi0EEEvRKNS0_IXT_ET0_XT1_EEE", scope: !28, file: !27, line: 43, type: !57, scopeLine: 43, flags: DIFlagPrototyped, spFlags: 0, templateParams: !1705)
!1705 = !{!1706, !1707, !1708}
!1706 = !DITemplateValueParameter(name: "AnotherN", type: !15, value: i32 2)
!1707 = !DITemplateTypeParameter(name: "AnotherDataType", type: !15)
!1708 = !DITemplateValueParameter(name: "AnotherAlign", type: !15, value: i32 0)
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!1710 = !DILocation(line: 0, scope: !1703, inlinedAt: !1711)
!1711 = distinct !DILocation(line: 77, column: 11, scope: !1688, inlinedAt: !1691)
!1712 = !DILocalVariable(name: "v", arg: 2, scope: !1703, file: !27, line: 43, type: !59)
!1713 = !DILocation(line: 43, column: 86, scope: !1703, inlinedAt: !1711)
!1714 = !DILocation(line: 44, column: 13, scope: !1703, inlinedAt: !1711)
!1715 = !DILocalVariable(name: "i", scope: !1716, file: !27, line: 46, type: !15)
!1716 = distinct !DILexicalBlock(scope: !1703, file: !27, line: 46, column: 13)
!1717 = !DILocation(line: 46, column: 22, scope: !1716, inlinedAt: !1711)
!1718 = !DILocation(line: 46, column: 18, scope: !1716, inlinedAt: !1711)
!1719 = !DILocation(line: 46, column: 29, scope: !1720, inlinedAt: !1711)
!1720 = distinct !DILexicalBlock(scope: !1716, file: !27, line: 46, column: 13)
!1721 = !DILocation(line: 46, column: 31, scope: !1720, inlinedAt: !1711)
!1722 = !DILocation(line: 46, column: 13, scope: !1716, inlinedAt: !1711)
!1723 = !DILocation(line: 47, column: 24, scope: !1720, inlinedAt: !1711)
!1724 = !DILocation(line: 47, column: 26, scope: !1720, inlinedAt: !1711)
!1725 = !DILocalVariable(name: "this", arg: 1, scope: !1726, type: !1727, flags: DIFlagArtificial | DIFlagObjectPointer)
!1726 = distinct !DISubprogram(name: "operator[]", linkageName: "_ZNK4RTTL8RTData_tILi2EiLi0EEixEi", scope: !28, file: !27, line: 52, type: !54, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !53, retainedNodes: !1624)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!1728 = !DILocation(line: 0, scope: !1726, inlinedAt: !1729)
!1729 = distinct !DILocation(line: 47, column: 24, scope: !1720, inlinedAt: !1711)
!1730 = !DILocalVariable(name: "index", arg: 2, scope: !1726, file: !27, line: 52, type: !15)
!1731 = !DILocation(line: 52, column: 41, scope: !1726, inlinedAt: !1729)
!1732 = !DILocation(line: 53, column: 22, scope: !1726, inlinedAt: !1729)
!1733 = !DILocation(line: 53, column: 20, scope: !1726, inlinedAt: !1729)
!1734 = !DILocation(line: 47, column: 19, scope: !1720, inlinedAt: !1711)
!1735 = !DILocation(line: 47, column: 17, scope: !1720, inlinedAt: !1711)
!1736 = !DILocation(line: 47, column: 22, scope: !1720, inlinedAt: !1711)
!1737 = !DILocation(line: 46, column: 37, scope: !1720, inlinedAt: !1711)
!1738 = !DILocation(line: 46, column: 13, scope: !1720, inlinedAt: !1711)
!1739 = distinct !{!1739, !1722, !1740, !1654}
!1740 = !DILocation(line: 47, column: 27, scope: !1716, inlinedAt: !1711)
!1741 = !DILocation(line: 21, column: 7, scope: !1683)
!1742 = !DILocation(line: 21, column: 14, scope: !1683)
!1743 = !DILocation(line: 21, column: 27, scope: !1683)
!1744 = !DILocation(line: 21, column: 31, scope: !1683)
!1745 = !DILocation(line: 21, column: 35, scope: !1683)
!1746 = !DILocation(line: 21, column: 29, scope: !1683)
!1747 = !DILocation(line: 22, column: 5, scope: !1683)
!1748 = !DILocation(line: 22, column: 18, scope: !1683)
!1749 = !DILocation(line: 22, column: 20, scope: !1683)
!1750 = distinct !{!1750, !1741, !1751, !1654}
!1751 = !DILocation(line: 22, column: 23, scope: !1683)
!1752 = !DILocation(line: 23, column: 7, scope: !1683)
!1753 = !DILocation(line: 23, column: 14, scope: !1683)
!1754 = !DILocation(line: 23, column: 27, scope: !1683)
!1755 = !DILocation(line: 23, column: 31, scope: !1683)
!1756 = !DILocation(line: 23, column: 35, scope: !1683)
!1757 = !DILocation(line: 23, column: 29, scope: !1683)
!1758 = !DILocation(line: 24, column: 5, scope: !1683)
!1759 = !DILocation(line: 24, column: 18, scope: !1683)
!1760 = !DILocation(line: 24, column: 20, scope: !1683)
!1761 = distinct !{!1761, !1752, !1762, !1654}
!1762 = !DILocation(line: 24, column: 23, scope: !1683)
!1763 = !DILocation(line: 26, column: 12, scope: !1683)
!1764 = !DILocation(line: 26, column: 33, scope: !1683)
!1765 = !DILocalVariable(name: "out", arg: 1, scope: !1766, file: !22, line: 256, type: !1769)
!1766 = distinct !DISubprogram(name: "operator<<<2, int, 0>", linkageName: "_ZN4RTTLlsILi2EiLi0EEERSoS1_RKNS_7RTVec_tIXT_ET0_XT1_EEE", scope: !23, file: !22, line: 256, type: !1767, scopeLine: 256, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !1774, retainedNodes: !1624)
!1767 = !DISubroutineType(types: !1768)
!1768 = !{!1769, !1769, !109}
!1769 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1770, size: 64)
!1770 = !DIDerivedType(tag: DW_TAG_typedef, name: "ostream", scope: !2, file: !1771, line: 141, baseType: !1772)
!1771 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/iosfwd", directory: "")
!1772 = !DICompositeType(tag: DW_TAG_class_type, name: "basic_ostream<char, std::char_traits<char> >", scope: !2, file: !1773, line: 359, size: 2176, flags: DIFlagFwdDecl | DIFlagNonTrivial)
!1773 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/ostream.tcc", directory: "")
!1774 = !{!89, !90, !1775}
!1775 = !DITemplateValueParameter(name: "align", type: !15, value: i32 0)
!1776 = !DILocation(line: 256, column: 42, scope: !1766, inlinedAt: !1777)
!1777 = distinct !DILocation(line: 26, column: 30, scope: !1683)
!1778 = !DILocalVariable(name: "t", arg: 2, scope: !1766, file: !22, line: 256, type: !109)
!1779 = !DILocation(line: 256, column: 82, scope: !1766, inlinedAt: !1777)
!1780 = !DILocation(line: 257, column: 9, scope: !1766, inlinedAt: !1777)
!1781 = !DILocation(line: 257, column: 13, scope: !1766, inlinedAt: !1777)
!1782 = !DILocation(line: 257, column: 23, scope: !1766, inlinedAt: !1777)
!1783 = !DILocation(line: 257, column: 20, scope: !1766, inlinedAt: !1777)
!1784 = !DILocalVariable(name: "i", scope: !1785, file: !22, line: 258, type: !15)
!1785 = distinct !DILexicalBlock(scope: !1766, file: !22, line: 258, column: 9)
!1786 = !DILocation(line: 258, column: 18, scope: !1785, inlinedAt: !1777)
!1787 = !DILocation(line: 258, column: 14, scope: !1785, inlinedAt: !1777)
!1788 = !DILocation(line: 258, column: 25, scope: !1789, inlinedAt: !1777)
!1789 = distinct !DILexicalBlock(scope: !1785, file: !22, line: 258, column: 9)
!1790 = !DILocation(line: 258, column: 27, scope: !1789, inlinedAt: !1777)
!1791 = !DILocation(line: 258, column: 9, scope: !1785, inlinedAt: !1777)
!1792 = !DILocation(line: 259, column: 13, scope: !1789, inlinedAt: !1777)
!1793 = !DILocation(line: 259, column: 17, scope: !1789, inlinedAt: !1777)
!1794 = !DILocation(line: 259, column: 27, scope: !1789, inlinedAt: !1777)
!1795 = !DILocation(line: 259, column: 29, scope: !1789, inlinedAt: !1777)
!1796 = !DILocation(line: 259, column: 24, scope: !1789, inlinedAt: !1777)
!1797 = !DILocation(line: 258, column: 33, scope: !1789, inlinedAt: !1777)
!1798 = !DILocation(line: 258, column: 9, scope: !1789, inlinedAt: !1777)
!1799 = distinct !{!1799, !1791, !1800, !1654}
!1800 = !DILocation(line: 259, column: 30, scope: !1785, inlinedAt: !1777)
!1801 = !DILocation(line: 260, column: 9, scope: !1766, inlinedAt: !1777)
!1802 = !DILocation(line: 260, column: 13, scope: !1766, inlinedAt: !1777)
!1803 = !DILocation(line: 262, column: 16, scope: !1766, inlinedAt: !1777)
!1804 = !DILocation(line: 26, column: 46, scope: !1683)
!1805 = !DILocation(line: 27, column: 7, scope: !1683)
!1806 = !DILocation(line: 31, column: 12, scope: !1683)
!1807 = !DILocation(line: 31, column: 25, scope: !1683)
!1808 = !DILocation(line: 32, column: 12, scope: !1683)
!1809 = !DILocation(line: 32, column: 25, scope: !1683)
!1810 = !DILocation(line: 28, column: 7, scope: !1683)
!1811 = !DILocation(line: 37, column: 7, scope: !1683)
!1812 = !DILocation(line: 38, column: 7, scope: !1683)
!1813 = !DILocation(line: 39, column: 7, scope: !1683)
!1814 = !DILocation(line: 40, column: 7, scope: !1683)
!1815 = !DILocation(line: 41, column: 5, scope: !1683)
!1816 = !DILocation(line: 42, column: 19, scope: !1658)
!1817 = !DILocation(line: 42, column: 23, scope: !1658)
!1818 = !DILocation(line: 42, column: 33, scope: !1658)
!1819 = !DILocation(line: 42, column: 46, scope: !1658)
!1820 = !DILocation(line: 42, column: 25, scope: !1658)
!1821 = !DILocation(line: 42, column: 3, scope: !1658)
!1822 = !DILocation(line: 42, column: 15, scope: !1658)
!1823 = !DILocation(line: 42, column: 17, scope: !1658)
!1824 = !DILocation(line: 43, column: 19, scope: !1658)
!1825 = !DILocation(line: 43, column: 23, scope: !1658)
!1826 = !DILocation(line: 43, column: 33, scope: !1658)
!1827 = !DILocation(line: 43, column: 46, scope: !1658)
!1828 = !DILocation(line: 43, column: 25, scope: !1658)
!1829 = !DILocation(line: 43, column: 3, scope: !1658)
!1830 = !DILocation(line: 43, column: 15, scope: !1658)
!1831 = !DILocation(line: 43, column: 17, scope: !1658)
!1832 = !DILocation(line: 45, column: 1, scope: !1658)
!1833 = distinct !DISubprogram(name: "resize", linkageName: "_ZN3LRT20RGBAucharFrameBuffer6resizeEii", scope: !190, file: !191, line: 90, type: !1834, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !1837, retainedNodes: !1624)
!1834 = !DISubroutineType(types: !1835)
!1835 = !{null, !1836, !15, !15}
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1837 = !DISubprogram(name: "resize", linkageName: "_ZN3LRT20RGBAucharFrameBuffer6resizeEii", scope: !190, file: !191, line: 90, type: !1834, scopeLine: 90, containingType: !190, virtualIndex: 0, flags: DIFlagPrototyped, spFlags: DISPFlagVirtual)
!1838 = !DILocalVariable(name: "this", arg: 1, scope: !1833, type: !1839, flags: DIFlagArtificial | DIFlagObjectPointer)
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!1840 = !DILocation(line: 0, scope: !1833)
!1841 = !DILocalVariable(name: "newX", arg: 2, scope: !1833, file: !191, line: 90, type: !15)
!1842 = !DILocation(line: 90, column: 27, scope: !1833)
!1843 = !DILocalVariable(name: "newY", arg: 3, scope: !1833, file: !191, line: 90, type: !15)
!1844 = !DILocation(line: 90, column: 37, scope: !1833)
!1845 = !DILocation(line: 94, column: 16, scope: !1833)
!1846 = !DILocation(line: 94, column: 37, scope: !1833)
!1847 = !DILocation(line: 94, column: 19, scope: !1833)
!1848 = !DILocation(line: 94, column: 12, scope: !1833)
!1849 = !DILocation(line: 94, column: 10, scope: !1833)
!1850 = !DILocation(line: 95, column: 16, scope: !1833)
!1851 = !DILocation(line: 95, column: 37, scope: !1833)
!1852 = !DILocation(line: 95, column: 19, scope: !1833)
!1853 = !DILocation(line: 95, column: 12, scope: !1833)
!1854 = !DILocation(line: 95, column: 10, scope: !1833)
!1855 = !DILocalVariable(name: "newRes", scope: !1833, file: !191, line: 97, type: !197)
!1856 = !DILocation(line: 97, column: 11, scope: !1833)
!1857 = !DILocation(line: 98, column: 9, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1833, file: !191, line: 98, column: 9)
!1859 = !DILocalVariable(name: "v1", arg: 1, scope: !1860, file: !22, line: 110, type: !109)
!1860 = distinct !DISubprogram(name: "operator!=<2, int, 0>", linkageName: "_ZN4RTTLneILi2EiLi0EEEbRKNS_7RTVec_tIXT_ET0_XT1_EEES5_", scope: !23, file: !22, line: 110, type: !1861, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !1774, retainedNodes: !1624)
!1861 = !DISubroutineType(types: !1862)
!1862 = !{!16, !109, !109}
!1863 = !DILocation(line: 110, column: 64, scope: !1860, inlinedAt: !1864)
!1864 = distinct !DILocation(line: 98, column: 13, scope: !1858)
!1865 = !DILocalVariable(name: "v2", arg: 2, scope: !1860, file: !22, line: 110, type: !109)
!1866 = !DILocation(line: 110, column: 103, scope: !1860, inlinedAt: !1864)
!1867 = !DILocation(line: 111, column: 18, scope: !1860, inlinedAt: !1864)
!1868 = !DILocation(line: 111, column: 24, scope: !1860, inlinedAt: !1864)
!1869 = !DILocalVariable(name: "v1", arg: 1, scope: !1870, file: !22, line: 89, type: !109)
!1870 = distinct !DISubprogram(name: "operator==<2, int, 0>", linkageName: "_ZN4RTTLeqILi2EiLi0EEEbRKNS_7RTVec_tIXT_ET0_XT1_EEES5_", scope: !23, file: !22, line: 89, type: !1861, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !1774, retainedNodes: !1624)
!1871 = !DILocation(line: 89, column: 64, scope: !1870, inlinedAt: !1872)
!1872 = distinct !DILocation(line: 111, column: 21, scope: !1860, inlinedAt: !1864)
!1873 = !DILocalVariable(name: "v2", arg: 2, scope: !1870, file: !22, line: 89, type: !109)
!1874 = !DILocation(line: 89, column: 103, scope: !1870, inlinedAt: !1872)
!1875 = !DILocation(line: 90, column: 16, scope: !1870, inlinedAt: !1872)
!1876 = !DILocation(line: 90, column: 19, scope: !1870, inlinedAt: !1872)
!1877 = !DILocation(line: 90, column: 30, scope: !1870, inlinedAt: !1872)
!1878 = !DILocation(line: 90, column: 33, scope: !1870, inlinedAt: !1872)
!1879 = !DILocalVariable(name: "v1", arg: 1, scope: !1880, file: !27, line: 182, type: !59)
!1880 = distinct !DISubprogram(name: "operator==<2, int>", linkageName: "_ZN4RTTLeqILi2EiEEbRKNS_8RTData_tIXT_ET0_Li0EEES5_", scope: !23, file: !27, line: 182, type: !1881, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !1883, retainedNodes: !1624)
!1881 = !DISubroutineType(types: !1882)
!1882 = !{!16, !59, !59}
!1883 = !{!89, !90}
!1884 = !DILocation(line: 182, column: 61, scope: !1880, inlinedAt: !1885)
!1885 = distinct !DILocation(line: 90, column: 27, scope: !1870, inlinedAt: !1872)
!1886 = !DILocalVariable(name: "v2", arg: 2, scope: !1880, file: !27, line: 182, type: !59)
!1887 = !DILocation(line: 182, column: 97, scope: !1880, inlinedAt: !1885)
!1888 = !DILocalVariable(name: "i", scope: !1889, file: !27, line: 183, type: !15)
!1889 = distinct !DILexicalBlock(scope: !1880, file: !27, line: 183, column: 9)
!1890 = !DILocation(line: 183, column: 18, scope: !1889, inlinedAt: !1885)
!1891 = !DILocation(line: 183, column: 14, scope: !1889, inlinedAt: !1885)
!1892 = !DILocation(line: 183, column: 25, scope: !1893, inlinedAt: !1885)
!1893 = distinct !DILexicalBlock(scope: !1889, file: !27, line: 183, column: 9)
!1894 = !DILocation(line: 183, column: 27, scope: !1893, inlinedAt: !1885)
!1895 = !DILocation(line: 183, column: 9, scope: !1889, inlinedAt: !1885)
!1896 = !DILocation(line: 184, column: 17, scope: !1897, inlinedAt: !1885)
!1897 = distinct !DILexicalBlock(scope: !1893, file: !27, line: 184, column: 17)
!1898 = !DILocation(line: 184, column: 20, scope: !1897, inlinedAt: !1885)
!1899 = !DILocation(line: 0, scope: !1726, inlinedAt: !1900)
!1900 = distinct !DILocation(line: 184, column: 17, scope: !1897, inlinedAt: !1885)
!1901 = !DILocation(line: 52, column: 41, scope: !1726, inlinedAt: !1900)
!1902 = !DILocation(line: 53, column: 22, scope: !1726, inlinedAt: !1900)
!1903 = !DILocation(line: 53, column: 20, scope: !1726, inlinedAt: !1900)
!1904 = !DILocation(line: 184, column: 26, scope: !1897, inlinedAt: !1885)
!1905 = !DILocation(line: 184, column: 29, scope: !1897, inlinedAt: !1885)
!1906 = !DILocation(line: 0, scope: !1726, inlinedAt: !1907)
!1907 = distinct !DILocation(line: 184, column: 26, scope: !1897, inlinedAt: !1885)
!1908 = !DILocation(line: 52, column: 41, scope: !1726, inlinedAt: !1907)
!1909 = !DILocation(line: 53, column: 22, scope: !1726, inlinedAt: !1907)
!1910 = !DILocation(line: 53, column: 20, scope: !1726, inlinedAt: !1907)
!1911 = !DILocation(line: 184, column: 23, scope: !1897, inlinedAt: !1885)
!1912 = !DILocation(line: 184, column: 17, scope: !1893, inlinedAt: !1885)
!1913 = !DILocation(line: 185, column: 17, scope: !1897, inlinedAt: !1885)
!1914 = !DILocation(line: 183, column: 33, scope: !1893, inlinedAt: !1885)
!1915 = !DILocation(line: 183, column: 9, scope: !1893, inlinedAt: !1885)
!1916 = distinct !{!1916, !1895, !1917, !1654}
!1917 = !DILocation(line: 185, column: 24, scope: !1889, inlinedAt: !1885)
!1918 = !DILocation(line: 187, column: 9, scope: !1880, inlinedAt: !1885)
!1919 = !DILocation(line: 188, column: 5, scope: !1880, inlinedAt: !1885)
!1920 = !DILocation(line: 111, column: 16, scope: !1860, inlinedAt: !1864)
!1921 = !DILocation(line: 98, column: 9, scope: !1833)
!1922 = !DILocation(line: 99, column: 7, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1858, file: !191, line: 98, column: 24)
!1924 = !DILocation(line: 0, scope: !1688, inlinedAt: !1925)
!1925 = distinct !DILocation(line: 99, column: 11, scope: !1923)
!1926 = !DILocation(line: 74, column: 53, scope: !1688, inlinedAt: !1925)
!1927 = !DILocation(line: 75, column: 20, scope: !1688, inlinedAt: !1925)
!1928 = !DILocation(line: 75, column: 24, scope: !1688, inlinedAt: !1925)
!1929 = !DILocation(line: 76, column: 26, scope: !1688, inlinedAt: !1925)
!1930 = !DILocation(line: 76, column: 31, scope: !1688, inlinedAt: !1925)
!1931 = !DILocation(line: 77, column: 9, scope: !1688, inlinedAt: !1925)
!1932 = !DILocation(line: 77, column: 18, scope: !1688, inlinedAt: !1925)
!1933 = !DILocation(line: 0, scope: !1703, inlinedAt: !1934)
!1934 = distinct !DILocation(line: 77, column: 11, scope: !1688, inlinedAt: !1925)
!1935 = !DILocation(line: 43, column: 86, scope: !1703, inlinedAt: !1934)
!1936 = !DILocation(line: 44, column: 13, scope: !1703, inlinedAt: !1934)
!1937 = !DILocation(line: 46, column: 22, scope: !1716, inlinedAt: !1934)
!1938 = !DILocation(line: 46, column: 18, scope: !1716, inlinedAt: !1934)
!1939 = !DILocation(line: 46, column: 29, scope: !1720, inlinedAt: !1934)
!1940 = !DILocation(line: 46, column: 31, scope: !1720, inlinedAt: !1934)
!1941 = !DILocation(line: 46, column: 13, scope: !1716, inlinedAt: !1934)
!1942 = !DILocation(line: 47, column: 24, scope: !1720, inlinedAt: !1934)
!1943 = !DILocation(line: 47, column: 26, scope: !1720, inlinedAt: !1934)
!1944 = !DILocation(line: 0, scope: !1726, inlinedAt: !1945)
!1945 = distinct !DILocation(line: 47, column: 24, scope: !1720, inlinedAt: !1934)
!1946 = !DILocation(line: 52, column: 41, scope: !1726, inlinedAt: !1945)
!1947 = !DILocation(line: 53, column: 22, scope: !1726, inlinedAt: !1945)
!1948 = !DILocation(line: 53, column: 20, scope: !1726, inlinedAt: !1945)
!1949 = !DILocation(line: 47, column: 19, scope: !1720, inlinedAt: !1934)
!1950 = !DILocation(line: 47, column: 17, scope: !1720, inlinedAt: !1934)
!1951 = !DILocation(line: 47, column: 22, scope: !1720, inlinedAt: !1934)
!1952 = !DILocation(line: 46, column: 37, scope: !1720, inlinedAt: !1934)
!1953 = !DILocation(line: 46, column: 13, scope: !1720, inlinedAt: !1934)
!1954 = distinct !{!1954, !1941, !1955, !1654}
!1955 = !DILocation(line: 47, column: 27, scope: !1716, inlinedAt: !1934)
!1956 = !DILocation(line: 100, column: 5, scope: !1923)
!1957 = !DILocation(line: 101, column: 3, scope: !1833)
!1958 = distinct !DISubprogram(name: "RTVec_t", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EEC2ERKiS3_", scope: !21, file: !20, line: 198, type: !142, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !141, retainedNodes: !1624)
!1959 = !DILocalVariable(name: "this", arg: 1, scope: !1958, type: !1689, flags: DIFlagArtificial | DIFlagObjectPointer)
!1960 = !DILocation(line: 0, scope: !1958)
!1961 = !DILocalVariable(name: "a", arg: 2, scope: !1958, file: !20, line: 198, type: !43)
!1962 = !DILocation(line: 198, column: 29, scope: !1958)
!1963 = !DILocalVariable(name: "b", arg: 3, scope: !1958, file: !20, line: 198, type: !43)
!1964 = !DILocation(line: 198, column: 48, scope: !1958)
!1965 = !DILocation(line: 198, column: 98, scope: !1958)
!1966 = !DILocation(line: 198, column: 100, scope: !1958)
!1967 = !DILocation(line: 198, column: 104, scope: !1958)
!1968 = !DILocation(line: 198, column: 106, scope: !1958)
!1969 = !DILocation(line: 198, column: 130, scope: !1958)
!1970 = distinct !DISubprogram(name: "display", linkageName: "_ZN3LRT20OpenGLTextureRGBA8FB7displayEv", scope: !185, file: !227, line: 55, type: !204, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !212, retainedNodes: !1624)
!1971 = !DILocalVariable(name: "this", arg: 1, scope: !1970, type: !1660, flags: DIFlagArtificial | DIFlagObjectPointer)
!1972 = !DILocation(line: 0, scope: !1970)
!1973 = !DILocation(line: 58, column: 32, scope: !1970)
!1974 = !DILocation(line: 58, column: 3, scope: !1970)
!1975 = !DILocation(line: 59, column: 3, scope: !1970)
!1976 = !DILocation(line: 62, column: 3, scope: !1970)
!1977 = !DILocation(line: 63, column: 3, scope: !1970)
!1978 = !DILocation(line: 64, column: 3, scope: !1970)
!1979 = !DILocation(line: 65, column: 3, scope: !1970)
!1980 = !DILocation(line: 67, column: 3, scope: !1970)
!1981 = !DILocation(line: 69, column: 3, scope: !1970)
!1982 = !DILocation(line: 70, column: 29, scope: !1970)
!1983 = !DILocation(line: 70, column: 33, scope: !1970)
!1984 = !DILocation(line: 70, column: 45, scope: !1970)
!1985 = !DILocation(line: 70, column: 49, scope: !1970)
!1986 = !DILocation(line: 70, column: 3, scope: !1970)
!1987 = !DILocation(line: 71, column: 3, scope: !1970)
!1988 = !DILocation(line: 74, column: 3, scope: !1970)
!1989 = !DILocation(line: 77, column: 3, scope: !1970)
!1990 = !DILocation(line: 78, column: 3, scope: !1970)
!1991 = !DILocation(line: 86, column: 3, scope: !1970)
!1992 = !DILocation(line: 101, column: 5, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1970, file: !227, line: 87, column: 3)
!1994 = !DILocation(line: 102, column: 5, scope: !1993)
!1995 = !DILocation(line: 104, column: 18, scope: !1993)
!1996 = !DILocation(line: 104, column: 30, scope: !1993)
!1997 = !DILocation(line: 104, column: 5, scope: !1993)
!1998 = !DILocation(line: 105, column: 5, scope: !1993)
!1999 = !DILocation(line: 107, column: 18, scope: !1993)
!2000 = !DILocation(line: 107, column: 30, scope: !1993)
!2001 = !DILocation(line: 107, column: 33, scope: !1993)
!2002 = !DILocation(line: 107, column: 45, scope: !1993)
!2003 = !DILocation(line: 107, column: 5, scope: !1993)
!2004 = !DILocation(line: 108, column: 5, scope: !1993)
!2005 = !DILocation(line: 110, column: 21, scope: !1993)
!2006 = !DILocation(line: 110, column: 33, scope: !1993)
!2007 = !DILocation(line: 110, column: 5, scope: !1993)
!2008 = !DILocation(line: 111, column: 5, scope: !1993)
!2009 = !DILocation(line: 114, column: 3, scope: !1970)
!2010 = !DILocation(line: 115, column: 1, scope: !1970)
!2011 = distinct !DISubprogram(name: "resize", linkageName: "_ZN3LRT28BufferedOpenGLTextureRGBA8FB6resizeEii", scope: !2012, file: !227, line: 129, type: !2021, scopeLine: 130, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !2020, retainedNodes: !1624)
!2012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "BufferedOpenGLTextureRGBA8FB", scope: !187, file: !186, line: 55, size: 384, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !2013, vtableHolder: !190)
!2013 = !{!2014, !2015, !2016, !2020, !2023}
!2014 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2012, baseType: !185, extraData: i32 0)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "allocedSize", scope: !2012, file: !186, line: 57, baseType: !15, size: 32, offset: 352)
!2016 = !DISubprogram(name: "BufferedOpenGLTextureRGBA8FB", scope: !2012, file: !186, line: 59, type: !2017, scopeLine: 59, flags: DIFlagPrototyped, spFlags: 0)
!2017 = !DISubroutineType(types: !2018)
!2018 = !{null, !2019}
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2020 = !DISubprogram(name: "resize", linkageName: "_ZN3LRT28BufferedOpenGLTextureRGBA8FB6resizeEii", scope: !2012, file: !186, line: 61, type: !2021, scopeLine: 61, containingType: !2012, virtualIndex: 0, flags: DIFlagPrototyped, spFlags: DISPFlagVirtual)
!2021 = !DISubroutineType(types: !2022)
!2022 = !{null, !2019, !15, !15}
!2023 = !DISubprogram(name: "doneWithFrame", linkageName: "_ZN3LRT28BufferedOpenGLTextureRGBA8FB13doneWithFrameEv", scope: !2012, file: !186, line: 62, type: !2017, scopeLine: 62, containingType: !2012, virtualIndex: 2, flags: DIFlagPrototyped, spFlags: DISPFlagVirtual)
!2024 = !DILocalVariable(name: "this", arg: 1, scope: !2011, type: !2025, flags: DIFlagArtificial | DIFlagObjectPointer)
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2026 = !DILocation(line: 0, scope: !2011)
!2027 = !DILocalVariable(name: "newX", arg: 2, scope: !2011, file: !227, line: 129, type: !15)
!2028 = !DILocation(line: 129, column: 47, scope: !2011)
!2029 = !DILocalVariable(name: "newY", arg: 3, scope: !2011, file: !227, line: 129, type: !15)
!2030 = !DILocation(line: 129, column: 57, scope: !2011)
!2031 = !DILocation(line: 131, column: 32, scope: !2011)
!2032 = !DILocation(line: 131, column: 37, scope: !2011)
!2033 = !DILocation(line: 131, column: 25, scope: !2011)
!2034 = !DILocalVariable(name: "size", scope: !2011, file: !227, line: 133, type: !184)
!2035 = !DILocation(line: 133, column: 8, scope: !2011)
!2036 = !DILocation(line: 133, column: 39, scope: !2011)
!2037 = !DILocation(line: 133, column: 43, scope: !2011)
!2038 = !DILocation(line: 133, column: 45, scope: !2011)
!2039 = !DILocation(line: 133, column: 49, scope: !2011)
!2040 = !DILocation(line: 133, column: 44, scope: !2011)
!2041 = !DILocation(line: 133, column: 50, scope: !2011)
!2042 = !DILocation(line: 133, column: 15, scope: !2011)
!2043 = !DILocation(line: 134, column: 7, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !2011, file: !227, line: 134, column: 7)
!2045 = !DILocation(line: 134, column: 15, scope: !2044)
!2046 = !DILocation(line: 134, column: 12, scope: !2044)
!2047 = !DILocation(line: 134, column: 7, scope: !2011)
!2048 = !DILocation(line: 135, column: 9, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !2050, file: !227, line: 135, column: 9)
!2050 = distinct !DILexicalBlock(scope: !2044, file: !227, line: 134, column: 28)
!2051 = !DILocation(line: 135, column: 9, scope: !2050)
!2052 = !DILocation(line: 136, column: 12, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !2049, file: !227, line: 135, column: 13)
!2054 = !DILocation(line: 136, column: 25, scope: !2053)
!2055 = !DILocation(line: 137, column: 20, scope: !2053)
!2056 = !DILocation(line: 137, column: 7, scope: !2053)
!2057 = !DILocation(line: 138, column: 5, scope: !2053)
!2058 = !DILocation(line: 139, column: 10, scope: !2050)
!2059 = !DILocation(line: 139, column: 41, scope: !2050)
!2060 = !DILocation(line: 256, column: 42, scope: !1766, inlinedAt: !2061)
!2061 = distinct !DILocation(line: 139, column: 38, scope: !2050)
!2062 = !DILocation(line: 256, column: 82, scope: !1766, inlinedAt: !2061)
!2063 = !DILocation(line: 257, column: 9, scope: !1766, inlinedAt: !2061)
!2064 = !DILocation(line: 257, column: 13, scope: !1766, inlinedAt: !2061)
!2065 = !DILocation(line: 257, column: 23, scope: !1766, inlinedAt: !2061)
!2066 = !DILocation(line: 257, column: 20, scope: !1766, inlinedAt: !2061)
!2067 = !DILocation(line: 258, column: 18, scope: !1785, inlinedAt: !2061)
!2068 = !DILocation(line: 258, column: 14, scope: !1785, inlinedAt: !2061)
!2069 = !DILocation(line: 258, column: 25, scope: !1789, inlinedAt: !2061)
!2070 = !DILocation(line: 258, column: 27, scope: !1789, inlinedAt: !2061)
!2071 = !DILocation(line: 258, column: 9, scope: !1785, inlinedAt: !2061)
!2072 = !DILocation(line: 259, column: 13, scope: !1789, inlinedAt: !2061)
!2073 = !DILocation(line: 259, column: 17, scope: !1789, inlinedAt: !2061)
!2074 = !DILocation(line: 259, column: 27, scope: !1789, inlinedAt: !2061)
!2075 = !DILocation(line: 259, column: 29, scope: !1789, inlinedAt: !2061)
!2076 = !DILocation(line: 259, column: 24, scope: !1789, inlinedAt: !2061)
!2077 = !DILocation(line: 258, column: 33, scope: !1789, inlinedAt: !2061)
!2078 = !DILocation(line: 258, column: 9, scope: !1789, inlinedAt: !2061)
!2079 = distinct !{!2079, !2071, !2080, !1654}
!2080 = !DILocation(line: 259, column: 30, scope: !1785, inlinedAt: !2061)
!2081 = !DILocation(line: 260, column: 9, scope: !1766, inlinedAt: !2061)
!2082 = !DILocation(line: 260, column: 13, scope: !1766, inlinedAt: !2061)
!2083 = !DILocation(line: 262, column: 16, scope: !1766, inlinedAt: !2061)
!2084 = !DILocation(line: 139, column: 45, scope: !2050)
!2085 = !DILocation(line: 140, column: 10, scope: !2050)
!2086 = !DILocation(line: 140, column: 29, scope: !2050)
!2087 = !DILocation(line: 140, column: 26, scope: !2050)
!2088 = !DILocation(line: 140, column: 34, scope: !2050)
!2089 = !DILocation(line: 140, column: 45, scope: !2050)
!2090 = !DILocation(line: 140, column: 49, scope: !2050)
!2091 = !DILocation(line: 140, column: 51, scope: !2050)
!2092 = !DILocation(line: 140, column: 55, scope: !2050)
!2093 = !DILocation(line: 140, column: 50, scope: !2050)
!2094 = !DILocation(line: 140, column: 56, scope: !2050)
!2095 = !DILocation(line: 140, column: 42, scope: !2050)
!2096 = !DILocation(line: 140, column: 59, scope: !2050)
!2097 = !DILocation(line: 140, column: 65, scope: !2050)
!2098 = !DILocation(line: 141, column: 40, scope: !2050)
!2099 = !DILocation(line: 141, column: 10, scope: !2050)
!2100 = !DILocation(line: 141, column: 5, scope: !2050)
!2101 = !DILocation(line: 141, column: 8, scope: !2050)
!2102 = !DILocation(line: 143, column: 19, scope: !2050)
!2103 = !DILocation(line: 143, column: 5, scope: !2050)
!2104 = !DILocation(line: 143, column: 17, scope: !2050)
!2105 = !DILocation(line: 144, column: 5, scope: !2050)
!2106 = !DILocation(line: 145, column: 3, scope: !2050)
!2107 = !DILocation(line: 146, column: 1, scope: !2011)
!2108 = distinct !DISubprogram(name: "nextMultipleOf<1024, int>", linkageName: "_Z14nextMultipleOfILi1024EiET0_S0_", scope: !1493, file: !1493, line: 279, type: !296, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !2109, retainedNodes: !1624)
!2109 = !{!2110, !2111}
!2110 = !DITemplateValueParameter(name: "N", type: !15, value: i32 1024)
!2111 = !DITemplateTypeParameter(name: "T", type: !15)
!2112 = !DILocalVariable(name: "t", arg: 1, scope: !2108, file: !1493, line: 279, type: !15)
!2113 = !DILocation(line: 279, column: 27, scope: !2108)
!2114 = !DILocation(line: 281, column: 12, scope: !2108)
!2115 = !DILocation(line: 281, column: 13, scope: !2108)
!2116 = !DILocation(line: 281, column: 15, scope: !2108)
!2117 = !DILocation(line: 281, column: 19, scope: !2108)
!2118 = !DILocation(line: 281, column: 24, scope: !2108)
!2119 = !DILocation(line: 281, column: 3, scope: !2108)
!2120 = distinct !DISubprogram(name: "aligned_free<unsigned char>", linkageName: "_Z12aligned_freeIhEvPT_", scope: !1493, file: !1493, line: 292, type: !2121, scopeLine: 293, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !2123, retainedNodes: !1624)
!2121 = !DISubroutineType(types: !2122)
!2122 = !{null, !17}
!2123 = !{!2124}
!2124 = !DITemplateTypeParameter(name: "T", type: !18)
!2125 = !DILocalVariable(name: "t", arg: 1, scope: !2120, file: !1493, line: 292, type: !17)
!2126 = !DILocation(line: 292, column: 22, scope: !2120)
!2127 = !DILocation(line: 293, column: 21, scope: !2120)
!2128 = !DILocalVariable(name: "ptr", arg: 1, scope: !2129, file: !1493, line: 211, type: !338)
!2129 = distinct !DISubprogram(name: "free_align", linkageName: "_Z10free_alignPv", scope: !1493, file: !1493, line: 211, type: !362, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !1624)
!2130 = !DILocation(line: 211, column: 31, scope: !2129, inlinedAt: !2131)
!2131 = distinct !DILocation(line: 293, column: 10, scope: !2120)
!2132 = !DILocation(line: 213, column: 10, scope: !2129, inlinedAt: !2131)
!2133 = !DILocation(line: 213, column: 5, scope: !2129, inlinedAt: !2131)
!2134 = !DILocation(line: 293, column: 3, scope: !2120)
!2135 = distinct !DISubprogram(name: "aligned_malloc<unsigned char>", linkageName: "_Z14aligned_mallocIhEPT_i", scope: !1493, file: !1493, line: 287, type: !2136, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !2123, retainedNodes: !1624)
!2136 = !DISubroutineType(types: !2137)
!2137 = !{!17, !15}
!2138 = !DILocalVariable(name: "N", arg: 1, scope: !2135, file: !1493, line: 287, type: !15)
!2139 = !DILocation(line: 287, column: 23, scope: !2135)
!2140 = !DILocation(line: 288, column: 27, scope: !2135)
!2141 = !DILocation(line: 288, column: 29, scope: !2135)
!2142 = !DILocalVariable(name: "size", arg: 1, scope: !2143, file: !1493, line: 203, type: !44)
!2143 = distinct !DISubprogram(name: "malloc_align", linkageName: "_Z12malloc_alignii", scope: !1493, file: !1493, line: 203, type: !2144, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !1624)
!2144 = !DISubroutineType(types: !2145)
!2145 = !{!338, !44, !44}
!2146 = !DILocation(line: 203, column: 38, scope: !2143, inlinedAt: !2147)
!2147 = distinct !DILocation(line: 288, column: 14, scope: !2135)
!2148 = !DILocalVariable(name: "alignment", arg: 2, scope: !2143, file: !1493, line: 203, type: !44)
!2149 = !DILocation(line: 203, column: 53, scope: !2143, inlinedAt: !2147)
!2150 = !DILocation(line: 205, column: 21, scope: !2143, inlinedAt: !2147)
!2151 = !DILocation(line: 205, column: 31, scope: !2143, inlinedAt: !2147)
!2152 = !DILocation(line: 205, column: 12, scope: !2143, inlinedAt: !2147)
!2153 = !DILocation(line: 288, column: 3, scope: !2135)
!2154 = distinct !DISubprogram(name: "is_aligned<16UL, unsigned char>", linkageName: "_Z10is_alignedILm16EhEbPT0_", scope: !1493, file: !1493, line: 264, type: !2155, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !2157, retainedNodes: !1624)
!2155 = !DISubroutineType(types: !2156)
!2156 = !{!16, !17}
!2157 = !{!2158, !2124}
!2158 = !DITemplateValueParameter(name: "N", type: !343, value: i64 16)
!2159 = !DILocalVariable(name: "t", arg: 1, scope: !2154, file: !1493, line: 264, type: !17)
!2160 = !DILocation(line: 264, column: 27, scope: !2154)
!2161 = !DILocalVariable(name: "l", scope: !2154, file: !1493, line: 266, type: !184)
!2162 = !DILocation(line: 266, column: 8, scope: !2154)
!2163 = !DILocation(line: 266, column: 37, scope: !2154)
!2164 = !DILocation(line: 266, column: 40, scope: !2154)
!2165 = !DILocation(line: 267, column: 11, scope: !2154)
!2166 = !DILocation(line: 267, column: 13, scope: !2154)
!2167 = !DILocation(line: 267, column: 18, scope: !2154)
!2168 = !DILocation(line: 267, column: 3, scope: !2154)
!2169 = distinct !DISubprogram(name: "doneWithFrame", linkageName: "_ZN3LRT28BufferedOpenGLTextureRGBA8FB13doneWithFrameEv", scope: !2012, file: !227, line: 150, type: !2017, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !2023, retainedNodes: !1624)
!2170 = !DILocalVariable(name: "this", arg: 1, scope: !2169, type: !2025, flags: DIFlagArtificial | DIFlagObjectPointer)
!2171 = !DILocation(line: 0, scope: !2169)
!2172 = !DILocation(line: 152, column: 32, scope: !2169)
!2173 = !DILocation(line: 152, column: 3, scope: !2169)
!2174 = !DILocation(line: 153, column: 3, scope: !2169)
!2175 = !DILocation(line: 159, column: 15, scope: !2169)
!2176 = !DILocation(line: 159, column: 19, scope: !2169)
!2177 = !DILocation(line: 159, column: 21, scope: !2169)
!2178 = !DILocation(line: 159, column: 25, scope: !2169)
!2179 = !DILocation(line: 162, column: 28, scope: !2169)
!2180 = !DILocation(line: 158, column: 3, scope: !2169)
!2181 = !DILocation(line: 163, column: 1, scope: !2169)
!2182 = distinct !DISubprogram(name: "startNewFrame", linkageName: "_ZN3LRT20OpenGLTextureRGBA8FB13startNewFrameEv", scope: !185, file: !186, line: 36, type: !204, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !210, retainedNodes: !1624)
!2183 = !DILocalVariable(name: "this", arg: 1, scope: !2182, type: !1660, flags: DIFlagArtificial | DIFlagObjectPointer)
!2184 = !DILocation(line: 0, scope: !2182)
!2185 = !DILocation(line: 36, column: 51, scope: !2182)
!2186 = distinct !DISubprogram(name: "sse_f", linkageName: "_ZN5sse_fC2Ev", scope: !213, file: !214, line: 21, type: !221, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !220, retainedNodes: !1624)
!2187 = !DILocalVariable(name: "this", arg: 1, scope: !2186, type: !2188, flags: DIFlagArtificial | DIFlagObjectPointer)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!2189 = !DILocation(line: 0, scope: !2186)
!2190 = !DILocation(line: 21, column: 11, scope: !2186)
!2191 = distinct !DISubprogram(name: "max<int>", linkageName: "_ZSt3maxIiERKT_S2_S2_", scope: !2, file: !2192, line: 254, type: !2193, scopeLine: 255, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !2195, retainedNodes: !1624)
!2192 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/stl_algobase.h", directory: "", checksumkind: CSK_MD5, checksum: "906433670cd4a8daf96f73a1b6f6012b")
!2193 = !DISubroutineType(types: !2194)
!2194 = !{!43, !43, !43}
!2195 = !{!2196}
!2196 = !DITemplateTypeParameter(name: "_Tp", type: !15)
!2197 = !DILocalVariable(name: "__a", arg: 1, scope: !2191, file: !2198, line: 407, type: !43)
!2198 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/algorithmfwd.h", directory: "")
!2199 = !DILocation(line: 407, column: 19, scope: !2191)
!2200 = !DILocalVariable(name: "__b", arg: 2, scope: !2191, file: !2198, line: 407, type: !43)
!2201 = !DILocation(line: 407, column: 31, scope: !2191)
!2202 = !DILocation(line: 259, column: 11, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2191, file: !2192, line: 259, column: 11)
!2204 = !DILocation(line: 259, column: 17, scope: !2203)
!2205 = !DILocation(line: 259, column: 15, scope: !2203)
!2206 = !DILocation(line: 259, column: 11, scope: !2191)
!2207 = !DILocation(line: 260, column: 9, scope: !2203)
!2208 = !DILocation(line: 260, column: 2, scope: !2203)
!2209 = !DILocation(line: 261, column: 14, scope: !2191)
!2210 = !DILocation(line: 261, column: 7, scope: !2191)
!2211 = !DILocation(line: 262, column: 5, scope: !2191)
!2212 = distinct !DISubprogram(name: "nextMultipleOf<4, int>", linkageName: "_Z14nextMultipleOfILi4EiET0_S0_", scope: !1493, file: !1493, line: 279, type: !296, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, templateParams: !2213, retainedNodes: !1624)
!2213 = !{!2214, !2111}
!2214 = !DITemplateValueParameter(name: "N", type: !15, value: i32 4)
!2215 = !DILocalVariable(name: "t", arg: 1, scope: !2212, file: !1493, line: 279, type: !15)
!2216 = !DILocation(line: 279, column: 27, scope: !2212)
!2217 = !DILocation(line: 281, column: 12, scope: !2212)
!2218 = !DILocation(line: 281, column: 13, scope: !2212)
!2219 = !DILocation(line: 281, column: 15, scope: !2212)
!2220 = !DILocation(line: 281, column: 19, scope: !2212)
!2221 = !DILocation(line: 281, column: 24, scope: !2212)
!2222 = !DILocation(line: 281, column: 3, scope: !2212)
!2223 = distinct !DISubprogram(name: "array", linkageName: "_ZNK4RTTL7RTVec_tILi2EiLi0EE5arrayEv", scope: !21, file: !20, line: 216, type: !164, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !169, retainedNodes: !1624)
!2224 = !DILocalVariable(name: "this", arg: 1, scope: !2223, type: !2225, flags: DIFlagArtificial | DIFlagObjectPointer)
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!2226 = !DILocation(line: 0, scope: !2223)
!2227 = !DILocation(line: 216, column: 64, scope: !2223)
!2228 = !DILocation(line: 216, column: 45, scope: !2223)
!2229 = distinct !DISubprogram(name: "operator RTTL::RTData_t<2, int> &", linkageName: "_ZN4RTTL7RTVec_tILi2EiLi0EEcvRNS_8RTData_tILi2EiLi0EEEEv", scope: !21, file: !20, line: 213, type: !160, scopeLine: 213, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !159, retainedNodes: !1624)
!2230 = !DILocalVariable(name: "this", arg: 1, scope: !2229, type: !1689, flags: DIFlagArtificial | DIFlagObjectPointer)
!2231 = !DILocation(line: 0, scope: !2229)
!2232 = !DILocation(line: 213, column: 64, scope: !2229)
!2233 = !DILocation(line: 213, column: 45, scope: !2229)
!2234 = distinct !DISubprogram(name: "operator const RTTL::RTData_t<2, int> &", linkageName: "_ZNK4RTTL7RTVec_tILi2EiLi0EEcvRKNS_8RTData_tILi2EiLi0EEEEv", scope: !21, file: !20, line: 214, type: !164, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !163, retainedNodes: !1624)
!2235 = !DILocalVariable(name: "this", arg: 1, scope: !2234, type: !2225, flags: DIFlagArtificial | DIFlagObjectPointer)
!2236 = !DILocation(line: 0, scope: !2234)
!2237 = !DILocation(line: 214, column: 64, scope: !2234)
!2238 = !DILocation(line: 214, column: 45, scope: !2234)
!2239 = distinct !DISubprogram(name: "nElements", linkageName: "_ZN4RTTL8RTData_tILi2EiLi0EE9nElementsEv", scope: !28, file: !27, line: 175, type: !86, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !85, retainedNodes: !1624)
!2240 = !DILocation(line: 175, column: 34, scope: !2239)
!2241 = distinct !DISubprogram(name: "operator[]", linkageName: "_ZNK4RTTL7RTVec_tILi2EiLi0EEixEi", scope: !21, file: !20, line: 206, type: !155, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !154, retainedNodes: !1624)
!2242 = !DILocalVariable(name: "this", arg: 1, scope: !2241, type: !2225, flags: DIFlagArtificial | DIFlagObjectPointer)
!2243 = !DILocation(line: 0, scope: !2241)
!2244 = !DILocalVariable(name: "index", arg: 2, scope: !2241, file: !20, line: 206, type: !15)
!2245 = !DILocation(line: 206, column: 30, scope: !2241)
!2246 = !DILocation(line: 206, column: 52, scope: !2241)
!2247 = !DILocation(line: 206, column: 59, scope: !2241)
!2248 = !DILocation(line: 206, column: 45, scope: !2241)
!2249 = distinct !DISubprogram(name: "data", linkageName: "_ZNK4RTTL7RTVec_tILi2EiLi0EE4dataEv", scope: !21, file: !20, line: 202, type: !149, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, declaration: !148, retainedNodes: !1624)
!2250 = !DILocalVariable(name: "this", arg: 1, scope: !2249, type: !2225, flags: DIFlagArtificial | DIFlagObjectPointer)
!2251 = !DILocation(line: 0, scope: !2249)
!2252 = !DILocation(line: 202, column: 44, scope: !2249)
!2253 = !DILocation(line: 202, column: 36, scope: !2249)
!2254 = distinct !DISubprogram(linkageName: "_GLOBAL__sub_I_GLTextureFB.cxx", scope: !970, file: !970, type: !2255, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !1624)
!2255 = !DISubroutineType(types: !1624)
!2256 = !DILocation(line: 0, scope: !2254)
