; ModuleID = '/home/cs22mtech12008/Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Inheritance/Inheritance_nested_scope.cpp'
source_filename = "/home/cs22mtech12008/Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Inheritance/Inheritance_nested_scope.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%class.A2 = type { %class.A }
%class.A = type { ptr }
%class.A1 = type { %class.A }

$_ZN1A2m2Ev = comdat any

$_ZN2A2C2Ev = comdat any

$_ZN2A1C2Ev = comdat any

$_ZN1AC2Ev = comdat any

$_ZN1A2m1Ev = comdat any

$_ZN2A12m1Ev = comdat any

$_ZTV2A2 = comdat any

$_ZTS2A2 = comdat any

$_ZTS1A = comdat any

$_ZTI1A = comdat any

$_ZTI2A2 = comdat any

$_ZTV1A = comdat any

$_ZTV2A1 = comdat any

$_ZTS2A1 = comdat any

$_ZTI2A1 = comdat any

@basePtr = dso_local global ptr null, align 8, !dbg !0
@t1 = dso_local global i64 0, align 8, !dbg !21
@t2 = dso_local global i64 0, align 8, !dbg !26
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [17 x i8] c"Inner scope ends\00", align 1, !dbg !28
@.str.1 = private unnamed_addr constant [15 x i8] c"Base class m2\0A\00", align 1, !dbg !35
@_ZTV2A2 = linkonce_odr dso_local unnamed_addr constant { [3 x ptr] } { [3 x ptr] [ptr null, ptr @_ZTI2A2, ptr @_ZN1A2m1Ev] }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global ptr
@_ZTS2A2 = linkonce_odr dso_local constant [4 x i8] c"2A2\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global ptr
@_ZTS1A = linkonce_odr dso_local constant [3 x i8] c"1A\00", comdat, align 1
@_ZTI1A = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS1A }, comdat, align 8
@_ZTI2A2 = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS2A2, ptr @_ZTI1A }, comdat, align 8
@_ZTV1A = linkonce_odr dso_local unnamed_addr constant { [3 x ptr] } { [3 x ptr] [ptr null, ptr @_ZTI1A, ptr @_ZN1A2m1Ev] }, comdat, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"Base class m1\0A\00", align 1, !dbg !40
@_ZTV2A1 = linkonce_odr dso_local unnamed_addr constant { [3 x ptr] } { [3 x ptr] [ptr null, ptr @_ZTI2A1, ptr @_ZN2A12m1Ev] }, comdat, align 8
@_ZTS2A1 = linkonce_odr dso_local constant [4 x i8] c"2A1\00", comdat, align 1
@_ZTI2A1 = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS2A1, ptr @_ZTI1A }, comdat, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"A1 class m1\0A\00", align 1, !dbg !42

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef ptr @_Z10runThread1Pv(ptr noundef %0) #0 !dbg !823 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !827, metadata !DIExpression()), !dbg !828
  %4 = call i32 @sleep(i32 noundef 10), !dbg !829
  call void @llvm.dbg.declare(metadata ptr %3, metadata !830, metadata !DIExpression()), !dbg !831
  %5 = load ptr, ptr %2, align 8, !dbg !832
  store ptr %5, ptr %3, align 8, !dbg !831
  %6 = load ptr, ptr %3, align 8, !dbg !833
  %7 = load ptr, ptr %6, align 8, !dbg !834
  %8 = getelementptr inbounds ptr, ptr %7, i64 0, !dbg !834
  %9 = load ptr, ptr %8, align 8, !dbg !834
  call void %9(ptr noundef nonnull align 8 dereferenceable(8) %6), !dbg !834
  ret ptr null, !dbg !835
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @sleep(i32 noundef) #2

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef ptr @_Z10runThread2Pv(ptr noundef %0) #0 !dbg !836 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !837, metadata !DIExpression()), !dbg !838
  call void @llvm.dbg.declare(metadata ptr %3, metadata !839, metadata !DIExpression()), !dbg !840
  %4 = load ptr, ptr %2, align 8, !dbg !841
  store ptr %4, ptr %3, align 8, !dbg !840
  %5 = load ptr, ptr %3, align 8, !dbg !842
  call void @_ZN1A2m2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5), !dbg !843
  ret ptr null, !dbg !844
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN1A2m2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #0 comdat align 2 !dbg !845 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !846, metadata !DIExpression()), !dbg !847
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.1), !dbg !848
  ret void, !dbg !849
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z12createThreadv() #0 !dbg !850 {
  %1 = alloca i32, align 4
  %2 = alloca %class.A2, align 8
  %3 = alloca %class.A1, align 8
  call void @llvm.dbg.declare(metadata ptr %1, metadata !851, metadata !DIExpression()), !dbg !852
  store i32 9, ptr %1, align 4, !dbg !852
  call void @llvm.dbg.declare(metadata ptr %2, metadata !853, metadata !DIExpression()), !dbg !862
  call void @_ZN2A2C2Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #6, !dbg !862
  store ptr %2, ptr @basePtr, align 8, !dbg !863
  %4 = load ptr, ptr @basePtr, align 8, !dbg !864
  %5 = call i32 @pthread_create(ptr noundef @t2, ptr noundef null, ptr noundef @_Z10runThread2Pv, ptr noundef %4) #6, !dbg !865
  %6 = load i32, ptr %1, align 4, !dbg !866
  %7 = icmp eq i32 %6, 9, !dbg !868
  br i1 %7, label %8, label %11, !dbg !869

8:                                                ; preds = %0
  call void @llvm.dbg.declare(metadata ptr %3, metadata !870, metadata !DIExpression()), !dbg !879
  call void @_ZN2A1C2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #6, !dbg !879
  store ptr %3, ptr @basePtr, align 8, !dbg !880
  %9 = load ptr, ptr @basePtr, align 8, !dbg !881
  %10 = call i32 @pthread_create(ptr noundef @t1, ptr noundef null, ptr noundef @_Z10runThread1Pv, ptr noundef %9) #6, !dbg !882
  br label %11, !dbg !883

11:                                               ; preds = %8, %0
  %12 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str), !dbg !884
  %13 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !885
  %14 = load i64, ptr @t1, align 8, !dbg !886
  %15 = call i32 @pthread_join(i64 noundef %14, ptr noundef null), !dbg !887
  ret void, !dbg !888
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN2A2C2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 !dbg !889 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !891, metadata !DIExpression()), !dbg !893
  %3 = load ptr, ptr %2, align 8
  call void @_ZN1AC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #6, !dbg !894
  store ptr getelementptr inbounds ({ [3 x ptr] }, ptr @_ZTV2A2, i32 0, inrange i32 0, i32 2), ptr %3, align 8, !dbg !894
  ret void, !dbg !894
}

; Function Attrs: nounwind
declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN2A1C2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 !dbg !895 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !897, metadata !DIExpression()), !dbg !899
  %3 = load ptr, ptr %2, align 8
  call void @_ZN1AC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #6, !dbg !900
  store ptr getelementptr inbounds ({ [3 x ptr] }, ptr @_ZTV2A1, i32 0, inrange i32 0, i32 2), ptr %3, align 8, !dbg !900
  ret void, !dbg !900
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #2

declare i32 @pthread_join(i64 noundef, ptr noundef) #2

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main() #5 !dbg !901 {
  %1 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  call void @_Z12createThreadv(), !dbg !902
  %2 = load i64, ptr @t2, align 8, !dbg !903
  %3 = call i32 @pthread_join(i64 noundef %2, ptr noundef null), !dbg !904
  ret i32 0, !dbg !905
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN1AC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 !dbg !906 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !908, metadata !DIExpression()), !dbg !909
  %3 = load ptr, ptr %2, align 8
  store ptr getelementptr inbounds ({ [3 x ptr] }, ptr @_ZTV1A, i32 0, inrange i32 0, i32 2), ptr %3, align 8, !dbg !910
  ret void, !dbg !910
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN1A2m1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !dbg !911 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !912, metadata !DIExpression()), !dbg !913
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.2), !dbg !914
  ret void, !dbg !915
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN2A12m1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !dbg !916 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !917, metadata !DIExpression()), !dbg !918
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.3), !dbg !919
  ret void, !dbg !920
}

attributes #0 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!815, !816, !817, !818, !819, !820, !821}
!llvm.ident = !{!822}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "basePtr", scope: !2, file: !7, line: 30, type: !5, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !3, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !20, imports: !47, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/cs22mtech12008/Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Inheritance/Inheritance_nested_scope.cpp", directory: "/home/cs22mtech12008", checksumkind: CSK_MD5, checksum: "9e5302076dc071d39ab4a16d5bff047f")
!4 = !{!5}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "A", file: !7, line: 5, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !8, vtableHolder: !6, identifier: "_ZTS1A")
!7 = !DIFile(filename: "Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Inheritance/Inheritance_nested_scope.cpp", directory: "/home/cs22mtech12008", checksumkind: CSK_MD5, checksum: "9e5302076dc071d39ab4a16d5bff047f")
!8 = !{!9, !15, !19}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$A", scope: !7, file: !7, baseType: !10, size: 64, flags: DIFlagArtificial)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "__vtbl_ptr_type", baseType: !12, size: 64)
!12 = !DISubroutineType(types: !13)
!13 = !{!14}
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DISubprogram(name: "m1", linkageName: "_ZN1A2m1Ev", scope: !6, file: !7, line: 7, type: !16, scopeLine: 7, containingType: !6, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!16 = !DISubroutineType(types: !17)
!17 = !{null, !18}
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!19 = !DISubprogram(name: "m2", linkageName: "_ZN1A2m2Ev", scope: !6, file: !7, line: 11, type: !16, scopeLine: 11, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!20 = !{!0, !21, !26, !28, !35, !40, !42}
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(name: "t1", scope: !2, file: !7, line: 31, type: !23, isLocal: false, isDefinition: true)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !24, line: 27, baseType: !25)
!24 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "2d764266ce95ab26d4a4767c2ec78176")
!25 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(name: "t2", scope: !2, file: !7, line: 31, type: !23, isLocal: false, isDefinition: true)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(scope: null, file: !7, line: 58, type: !30, isLocal: true, isDefinition: true)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 136, elements: !33)
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!32 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!33 = !{!34}
!34 = !DISubrange(count: 17)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(scope: null, file: !7, line: 12, type: !37, isLocal: true, isDefinition: true)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 120, elements: !38)
!38 = !{!39}
!39 = !DISubrange(count: 15)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(scope: null, file: !7, line: 8, type: !37, isLocal: true, isDefinition: true)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !7, line: 19, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 104, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 13)
!47 = !{!48, !67, !70, !75, !83, !91, !95, !102, !106, !110, !112, !114, !118, !128, !132, !138, !144, !146, !150, !154, !158, !162, !175, !177, !181, !185, !189, !191, !197, !201, !205, !207, !209, !213, !221, !225, !229, !233, !235, !241, !243, !250, !255, !259, !264, !268, !272, !276, !278, !280, !284, !288, !292, !294, !298, !302, !304, !306, !310, !316, !321, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !340, !344, !349, !353, !357, !362, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !398, !402, !406, !412, !416, !420, !425, !427, !431, !435, !439, !449, !451, !455, !459, !463, !467, !471, !475, !479, !483, !487, !491, !495, !497, !499, !503, !507, !513, !517, !521, !523, !527, !531, !537, !539, !543, !547, !551, !555, !559, !563, !567, !568, !569, !570, !572, !573, !574, !575, !576, !577, !578, !582, !588, !593, !597, !599, !601, !603, !605, !612, !616, !620, !624, !628, !632, !637, !641, !643, !647, !653, !657, !662, !664, !666, !670, !674, !676, !678, !680, !682, !686, !688, !690, !694, !698, !702, !706, !710, !714, !716, !720, !724, !728, !732, !734, !736, !740, !744, !745, !746, !747, !748, !749, !757, !765, !768, !769, !771, !773, !775, !777, !781, !783, !785, !787, !789, !791, !793, !795, !797, !801, !805, !807, !811}
!48 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !50, file: !66, line: 64)
!49 = !DINamespace(name: "std", scope: null)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !51, line: 6, baseType: !52)
!51 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !53, line: 21, baseType: !54)
!53 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !53, line: 13, size: 64, flags: DIFlagTypePassByValue, elements: !55, identifier: "_ZTS11__mbstate_t")
!55 = !{!56, !57}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !54, file: !53, line: 15, baseType: !14, size: 32)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !54, file: !53, line: 20, baseType: !58, size: 32, offset: 32)
!58 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !54, file: !53, line: 16, size: 32, flags: DIFlagTypePassByValue, elements: !59, identifier: "_ZTSN11__mbstate_tUt_E")
!59 = !{!60, !62}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !58, file: !53, line: 18, baseType: !61, size: 32)
!61 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !58, file: !53, line: 19, baseType: !63, size: 32)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 32, elements: !64)
!64 = !{!65}
!65 = !DISubrange(count: 4)
!66 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cwchar", directory: "")
!67 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !68, file: !66, line: 141)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !69, line: 20, baseType: !61)
!69 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!70 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !71, file: !66, line: 143)
!71 = !DISubprogram(name: "btowc", scope: !72, file: !72, line: 284, type: !73, flags: DIFlagPrototyped, spFlags: 0)
!72 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "8900d9ecbbe40d052c41becfbc5b5531")
!73 = !DISubroutineType(types: !74)
!74 = !{!68, !14}
!75 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !76, file: !66, line: 144)
!76 = !DISubprogram(name: "fgetwc", scope: !72, file: !72, line: 726, type: !77, flags: DIFlagPrototyped, spFlags: 0)
!77 = !DISubroutineType(types: !78)
!78 = !{!68, !79}
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !81, line: 5, baseType: !82)
!81 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "72a8fe90981f484acae7c6f3dfc5c2b7")
!82 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !81, line: 4, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS8_IO_FILE")
!83 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !84, file: !66, line: 145)
!84 = !DISubprogram(name: "fgetws", scope: !72, file: !72, line: 755, type: !85, flags: DIFlagPrototyped, spFlags: 0)
!85 = !DISubroutineType(types: !86)
!86 = !{!87, !89, !14, !90}
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!89 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !87)
!90 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !79)
!91 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !92, file: !66, line: 146)
!92 = !DISubprogram(name: "fputwc", scope: !72, file: !72, line: 740, type: !93, flags: DIFlagPrototyped, spFlags: 0)
!93 = !DISubroutineType(types: !94)
!94 = !{!68, !88, !79}
!95 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !96, file: !66, line: 147)
!96 = !DISubprogram(name: "fputws", scope: !72, file: !72, line: 762, type: !97, flags: DIFlagPrototyped, spFlags: 0)
!97 = !DISubroutineType(types: !98)
!98 = !{!14, !99, !90}
!99 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !100)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !88)
!102 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !103, file: !66, line: 148)
!103 = !DISubprogram(name: "fwide", scope: !72, file: !72, line: 573, type: !104, flags: DIFlagPrototyped, spFlags: 0)
!104 = !DISubroutineType(types: !105)
!105 = !{!14, !79, !14}
!106 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !107, file: !66, line: 149)
!107 = !DISubprogram(name: "fwprintf", scope: !72, file: !72, line: 580, type: !108, flags: DIFlagPrototyped, spFlags: 0)
!108 = !DISubroutineType(types: !109)
!109 = !{!14, !90, !99, null}
!110 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !111, file: !66, line: 150)
!111 = !DISubprogram(name: "fwscanf", linkageName: "__isoc99_fwscanf", scope: !72, file: !72, line: 640, type: !108, flags: DIFlagPrototyped, spFlags: 0)
!112 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !113, file: !66, line: 151)
!113 = !DISubprogram(name: "getwc", scope: !72, file: !72, line: 727, type: !77, flags: DIFlagPrototyped, spFlags: 0)
!114 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !115, file: !66, line: 152)
!115 = !DISubprogram(name: "getwchar", scope: !72, file: !72, line: 733, type: !116, flags: DIFlagPrototyped, spFlags: 0)
!116 = !DISubroutineType(types: !117)
!117 = !{!68}
!118 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !119, file: !66, line: 153)
!119 = !DISubprogram(name: "mbrlen", scope: !72, file: !72, line: 307, type: !120, flags: DIFlagPrototyped, spFlags: 0)
!120 = !DISubroutineType(types: !121)
!121 = !{!122, !124, !122, !126}
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !123, line: 46, baseType: !25)
!123 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/cs22mtech12008", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!124 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !125)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !127)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!128 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !129, file: !66, line: 154)
!129 = !DISubprogram(name: "mbrtowc", scope: !72, file: !72, line: 296, type: !130, flags: DIFlagPrototyped, spFlags: 0)
!130 = !DISubroutineType(types: !131)
!131 = !{!122, !89, !124, !122, !126}
!132 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !133, file: !66, line: 155)
!133 = !DISubprogram(name: "mbsinit", scope: !72, file: !72, line: 292, type: !134, flags: DIFlagPrototyped, spFlags: 0)
!134 = !DISubroutineType(types: !135)
!135 = !{!14, !136}
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!138 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !139, file: !66, line: 156)
!139 = !DISubprogram(name: "mbsrtowcs", scope: !72, file: !72, line: 337, type: !140, flags: DIFlagPrototyped, spFlags: 0)
!140 = !DISubroutineType(types: !141)
!141 = !{!122, !89, !142, !122, !126}
!142 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !143)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!144 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !145, file: !66, line: 157)
!145 = !DISubprogram(name: "putwc", scope: !72, file: !72, line: 741, type: !93, flags: DIFlagPrototyped, spFlags: 0)
!146 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !147, file: !66, line: 158)
!147 = !DISubprogram(name: "putwchar", scope: !72, file: !72, line: 747, type: !148, flags: DIFlagPrototyped, spFlags: 0)
!148 = !DISubroutineType(types: !149)
!149 = !{!68, !88}
!150 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !151, file: !66, line: 160)
!151 = !DISubprogram(name: "swprintf", scope: !72, file: !72, line: 590, type: !152, flags: DIFlagPrototyped, spFlags: 0)
!152 = !DISubroutineType(types: !153)
!153 = !{!14, !89, !122, !99, null}
!154 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !155, file: !66, line: 162)
!155 = !DISubprogram(name: "swscanf", linkageName: "__isoc99_swscanf", scope: !72, file: !72, line: 647, type: !156, flags: DIFlagPrototyped, spFlags: 0)
!156 = !DISubroutineType(types: !157)
!157 = !{!14, !99, !99, null}
!158 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !159, file: !66, line: 163)
!159 = !DISubprogram(name: "ungetwc", scope: !72, file: !72, line: 770, type: !160, flags: DIFlagPrototyped, spFlags: 0)
!160 = !DISubroutineType(types: !161)
!161 = !{!68, !68, !79}
!162 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !163, file: !66, line: 164)
!163 = !DISubprogram(name: "vfwprintf", scope: !72, file: !72, line: 598, type: !164, flags: DIFlagPrototyped, spFlags: 0)
!164 = !DISubroutineType(types: !165)
!165 = !{!14, !90, !99, !166}
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, flags: DIFlagTypePassByValue, elements: !168, identifier: "_ZTS13__va_list_tag")
!168 = !{!169, !171, !172, !174}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !167, file: !170, baseType: !61, size: 32)
!170 = !DIFile(filename: "Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Inheritance/Inheritance_nested_scope.cpp", directory: "/home/cs22mtech12008")
!171 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !167, file: !170, baseType: !61, size: 32, offset: 32)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !167, file: !170, baseType: !173, size: 64, offset: 64)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !167, file: !170, baseType: !173, size: 64, offset: 128)
!175 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !176, file: !66, line: 166)
!176 = !DISubprogram(name: "vfwscanf", linkageName: "__isoc99_vfwscanf", scope: !72, file: !72, line: 693, type: !164, flags: DIFlagPrototyped, spFlags: 0)
!177 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !178, file: !66, line: 169)
!178 = !DISubprogram(name: "vswprintf", scope: !72, file: !72, line: 611, type: !179, flags: DIFlagPrototyped, spFlags: 0)
!179 = !DISubroutineType(types: !180)
!180 = !{!14, !89, !122, !99, !166}
!181 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !182, file: !66, line: 172)
!182 = !DISubprogram(name: "vswscanf", linkageName: "__isoc99_vswscanf", scope: !72, file: !72, line: 700, type: !183, flags: DIFlagPrototyped, spFlags: 0)
!183 = !DISubroutineType(types: !184)
!184 = !{!14, !99, !99, !166}
!185 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !186, file: !66, line: 174)
!186 = !DISubprogram(name: "vwprintf", scope: !72, file: !72, line: 606, type: !187, flags: DIFlagPrototyped, spFlags: 0)
!187 = !DISubroutineType(types: !188)
!188 = !{!14, !99, !166}
!189 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !190, file: !66, line: 176)
!190 = !DISubprogram(name: "vwscanf", linkageName: "__isoc99_vwscanf", scope: !72, file: !72, line: 697, type: !187, flags: DIFlagPrototyped, spFlags: 0)
!191 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !192, file: !66, line: 178)
!192 = !DISubprogram(name: "wcrtomb", scope: !72, file: !72, line: 301, type: !193, flags: DIFlagPrototyped, spFlags: 0)
!193 = !DISubroutineType(types: !194)
!194 = !{!122, !195, !88, !126}
!195 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !196)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!197 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !198, file: !66, line: 179)
!198 = !DISubprogram(name: "wcscat", scope: !72, file: !72, line: 97, type: !199, flags: DIFlagPrototyped, spFlags: 0)
!199 = !DISubroutineType(types: !200)
!200 = !{!87, !89, !99}
!201 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !202, file: !66, line: 180)
!202 = !DISubprogram(name: "wcscmp", scope: !72, file: !72, line: 106, type: !203, flags: DIFlagPrototyped, spFlags: 0)
!203 = !DISubroutineType(types: !204)
!204 = !{!14, !100, !100}
!205 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !206, file: !66, line: 181)
!206 = !DISubprogram(name: "wcscoll", scope: !72, file: !72, line: 131, type: !203, flags: DIFlagPrototyped, spFlags: 0)
!207 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !208, file: !66, line: 182)
!208 = !DISubprogram(name: "wcscpy", scope: !72, file: !72, line: 87, type: !199, flags: DIFlagPrototyped, spFlags: 0)
!209 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !210, file: !66, line: 183)
!210 = !DISubprogram(name: "wcscspn", scope: !72, file: !72, line: 187, type: !211, flags: DIFlagPrototyped, spFlags: 0)
!211 = !DISubroutineType(types: !212)
!212 = !{!122, !100, !100}
!213 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !214, file: !66, line: 184)
!214 = !DISubprogram(name: "wcsftime", scope: !72, file: !72, line: 834, type: !215, flags: DIFlagPrototyped, spFlags: 0)
!215 = !DISubroutineType(types: !216)
!216 = !{!122, !89, !122, !99, !217}
!217 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !218)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !220)
!220 = !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !72, line: 83, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS2tm")
!221 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !222, file: !66, line: 185)
!222 = !DISubprogram(name: "wcslen", scope: !72, file: !72, line: 222, type: !223, flags: DIFlagPrototyped, spFlags: 0)
!223 = !DISubroutineType(types: !224)
!224 = !{!122, !100}
!225 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !226, file: !66, line: 186)
!226 = !DISubprogram(name: "wcsncat", scope: !72, file: !72, line: 101, type: !227, flags: DIFlagPrototyped, spFlags: 0)
!227 = !DISubroutineType(types: !228)
!228 = !{!87, !89, !99, !122}
!229 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !230, file: !66, line: 187)
!230 = !DISubprogram(name: "wcsncmp", scope: !72, file: !72, line: 109, type: !231, flags: DIFlagPrototyped, spFlags: 0)
!231 = !DISubroutineType(types: !232)
!232 = !{!14, !100, !100, !122}
!233 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !234, file: !66, line: 188)
!234 = !DISubprogram(name: "wcsncpy", scope: !72, file: !72, line: 92, type: !227, flags: DIFlagPrototyped, spFlags: 0)
!235 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !236, file: !66, line: 189)
!236 = !DISubprogram(name: "wcsrtombs", scope: !72, file: !72, line: 343, type: !237, flags: DIFlagPrototyped, spFlags: 0)
!237 = !DISubroutineType(types: !238)
!238 = !{!122, !195, !239, !122, !126}
!239 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !240)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!241 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !242, file: !66, line: 190)
!242 = !DISubprogram(name: "wcsspn", scope: !72, file: !72, line: 191, type: !211, flags: DIFlagPrototyped, spFlags: 0)
!243 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !244, file: !66, line: 191)
!244 = !DISubprogram(name: "wcstod", scope: !72, file: !72, line: 377, type: !245, flags: DIFlagPrototyped, spFlags: 0)
!245 = !DISubroutineType(types: !246)
!246 = !{!247, !99, !248}
!247 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!248 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !249)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!250 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !251, file: !66, line: 193)
!251 = !DISubprogram(name: "wcstof", scope: !72, file: !72, line: 382, type: !252, flags: DIFlagPrototyped, spFlags: 0)
!252 = !DISubroutineType(types: !253)
!253 = !{!254, !99, !248}
!254 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!255 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !256, file: !66, line: 195)
!256 = !DISubprogram(name: "wcstok", scope: !72, file: !72, line: 217, type: !257, flags: DIFlagPrototyped, spFlags: 0)
!257 = !DISubroutineType(types: !258)
!258 = !{!87, !89, !99, !248}
!259 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !260, file: !66, line: 196)
!260 = !DISubprogram(name: "wcstol", scope: !72, file: !72, line: 428, type: !261, flags: DIFlagPrototyped, spFlags: 0)
!261 = !DISubroutineType(types: !262)
!262 = !{!263, !99, !248, !14}
!263 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!264 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !265, file: !66, line: 197)
!265 = !DISubprogram(name: "wcstoul", scope: !72, file: !72, line: 433, type: !266, flags: DIFlagPrototyped, spFlags: 0)
!266 = !DISubroutineType(types: !267)
!267 = !{!25, !99, !248, !14}
!268 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !269, file: !66, line: 198)
!269 = !DISubprogram(name: "wcsxfrm", scope: !72, file: !72, line: 135, type: !270, flags: DIFlagPrototyped, spFlags: 0)
!270 = !DISubroutineType(types: !271)
!271 = !{!122, !89, !99, !122}
!272 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !273, file: !66, line: 199)
!273 = !DISubprogram(name: "wctob", scope: !72, file: !72, line: 288, type: !274, flags: DIFlagPrototyped, spFlags: 0)
!274 = !DISubroutineType(types: !275)
!275 = !{!14, !68}
!276 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !277, file: !66, line: 200)
!277 = !DISubprogram(name: "wmemcmp", scope: !72, file: !72, line: 258, type: !231, flags: DIFlagPrototyped, spFlags: 0)
!278 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !279, file: !66, line: 201)
!279 = !DISubprogram(name: "wmemcpy", scope: !72, file: !72, line: 262, type: !227, flags: DIFlagPrototyped, spFlags: 0)
!280 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !281, file: !66, line: 202)
!281 = !DISubprogram(name: "wmemmove", scope: !72, file: !72, line: 267, type: !282, flags: DIFlagPrototyped, spFlags: 0)
!282 = !DISubroutineType(types: !283)
!283 = !{!87, !87, !100, !122}
!284 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !285, file: !66, line: 203)
!285 = !DISubprogram(name: "wmemset", scope: !72, file: !72, line: 271, type: !286, flags: DIFlagPrototyped, spFlags: 0)
!286 = !DISubroutineType(types: !287)
!287 = !{!87, !87, !88, !122}
!288 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !289, file: !66, line: 204)
!289 = !DISubprogram(name: "wprintf", scope: !72, file: !72, line: 587, type: !290, flags: DIFlagPrototyped, spFlags: 0)
!290 = !DISubroutineType(types: !291)
!291 = !{!14, !99, null}
!292 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !293, file: !66, line: 205)
!293 = !DISubprogram(name: "wscanf", linkageName: "__isoc99_wscanf", scope: !72, file: !72, line: 644, type: !290, flags: DIFlagPrototyped, spFlags: 0)
!294 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !295, file: !66, line: 206)
!295 = !DISubprogram(name: "wcschr", scope: !72, file: !72, line: 164, type: !296, flags: DIFlagPrototyped, spFlags: 0)
!296 = !DISubroutineType(types: !297)
!297 = !{!87, !100, !88}
!298 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !299, file: !66, line: 207)
!299 = !DISubprogram(name: "wcspbrk", scope: !72, file: !72, line: 201, type: !300, flags: DIFlagPrototyped, spFlags: 0)
!300 = !DISubroutineType(types: !301)
!301 = !{!87, !100, !100}
!302 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !303, file: !66, line: 208)
!303 = !DISubprogram(name: "wcsrchr", scope: !72, file: !72, line: 174, type: !296, flags: DIFlagPrototyped, spFlags: 0)
!304 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !305, file: !66, line: 209)
!305 = !DISubprogram(name: "wcsstr", scope: !72, file: !72, line: 212, type: !300, flags: DIFlagPrototyped, spFlags: 0)
!306 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !307, file: !66, line: 210)
!307 = !DISubprogram(name: "wmemchr", scope: !72, file: !72, line: 253, type: !308, flags: DIFlagPrototyped, spFlags: 0)
!308 = !DISubroutineType(types: !309)
!309 = !{!87, !100, !88, !122}
!310 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !311, entity: !312, file: !66, line: 251)
!311 = !DINamespace(name: "__gnu_cxx", scope: null)
!312 = !DISubprogram(name: "wcstold", scope: !72, file: !72, line: 384, type: !313, flags: DIFlagPrototyped, spFlags: 0)
!313 = !DISubroutineType(types: !314)
!314 = !{!315, !99, !248}
!315 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!316 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !311, entity: !317, file: !66, line: 260)
!317 = !DISubprogram(name: "wcstoll", scope: !72, file: !72, line: 441, type: !318, flags: DIFlagPrototyped, spFlags: 0)
!318 = !DISubroutineType(types: !319)
!319 = !{!320, !99, !248, !14}
!320 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!321 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !311, entity: !322, file: !66, line: 261)
!322 = !DISubprogram(name: "wcstoull", scope: !72, file: !72, line: 448, type: !323, flags: DIFlagPrototyped, spFlags: 0)
!323 = !DISubroutineType(types: !324)
!324 = !{!325, !99, !248, !14}
!325 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!326 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !312, file: !66, line: 267)
!327 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !317, file: !66, line: 268)
!328 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !322, file: !66, line: 269)
!329 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !251, file: !66, line: 283)
!330 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !176, file: !66, line: 286)
!331 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !182, file: !66, line: 289)
!332 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !190, file: !66, line: 292)
!333 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !312, file: !66, line: 296)
!334 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !317, file: !66, line: 297)
!335 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !322, file: !66, line: 298)
!336 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !337, file: !338, line: 66)
!337 = !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !339, file: !338, line: 97, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!338 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/exception_ptr.h", directory: "", checksumkind: CSK_MD5, checksum: "314ad14748ccb9ff85c65d17ebb0828b")
!339 = !DINamespace(name: "__exception_ptr", scope: !49)
!340 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !339, entity: !341, file: !338, line: 85)
!341 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !49, file: !338, line: 81, type: !342, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!342 = !DISubroutineType(types: !343)
!343 = !{null, !337}
!344 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !345, file: !338, line: 243)
!345 = !DISubprogram(name: "swap", linkageName: "_ZNSt15__exception_ptr4swapERNS_13exception_ptrES1_", scope: !339, file: !338, line: 230, type: !346, flags: DIFlagPrototyped, spFlags: 0)
!346 = !DISubroutineType(types: !347)
!347 = !{null, !348, !348}
!348 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !337, size: 64)
!349 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !350, file: !352, line: 53)
!350 = !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !351, line: 51, size: 768, flags: DIFlagFwdDecl, identifier: "_ZTS5lconv")
!351 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "0cf373fc44eed8073800bdb9da87b72f")
!352 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/clocale", directory: "")
!353 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !354, file: !352, line: 54)
!354 = !DISubprogram(name: "setlocale", scope: !351, file: !351, line: 122, type: !355, flags: DIFlagPrototyped, spFlags: 0)
!355 = !DISubroutineType(types: !356)
!356 = !{!196, !14, !125}
!357 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !358, file: !352, line: 55)
!358 = !DISubprogram(name: "localeconv", scope: !351, file: !351, line: 125, type: !359, flags: DIFlagPrototyped, spFlags: 0)
!359 = !DISubroutineType(types: !360)
!360 = !{!361}
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!362 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !363, file: !367, line: 64)
!363 = !DISubprogram(name: "isalnum", scope: !364, file: !364, line: 108, type: !365, flags: DIFlagPrototyped, spFlags: 0)
!364 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "36575f934ef4fe7e9d50a3cb17bd5c66")
!365 = !DISubroutineType(types: !366)
!366 = !{!14, !14}
!367 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cctype", directory: "")
!368 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !369, file: !367, line: 65)
!369 = !DISubprogram(name: "isalpha", scope: !364, file: !364, line: 109, type: !365, flags: DIFlagPrototyped, spFlags: 0)
!370 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !371, file: !367, line: 66)
!371 = !DISubprogram(name: "iscntrl", scope: !364, file: !364, line: 110, type: !365, flags: DIFlagPrototyped, spFlags: 0)
!372 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !373, file: !367, line: 67)
!373 = !DISubprogram(name: "isdigit", scope: !364, file: !364, line: 111, type: !365, flags: DIFlagPrototyped, spFlags: 0)
!374 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !375, file: !367, line: 68)
!375 = !DISubprogram(name: "isgraph", scope: !364, file: !364, line: 113, type: !365, flags: DIFlagPrototyped, spFlags: 0)
!376 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !377, file: !367, line: 69)
!377 = !DISubprogram(name: "islower", scope: !364, file: !364, line: 112, type: !365, flags: DIFlagPrototyped, spFlags: 0)
!378 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !379, file: !367, line: 70)
!379 = !DISubprogram(name: "isprint", scope: !364, file: !364, line: 114, type: !365, flags: DIFlagPrototyped, spFlags: 0)
!380 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !381, file: !367, line: 71)
!381 = !DISubprogram(name: "ispunct", scope: !364, file: !364, line: 115, type: !365, flags: DIFlagPrototyped, spFlags: 0)
!382 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !383, file: !367, line: 72)
!383 = !DISubprogram(name: "isspace", scope: !364, file: !364, line: 116, type: !365, flags: DIFlagPrototyped, spFlags: 0)
!384 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !385, file: !367, line: 73)
!385 = !DISubprogram(name: "isupper", scope: !364, file: !364, line: 117, type: !365, flags: DIFlagPrototyped, spFlags: 0)
!386 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !387, file: !367, line: 74)
!387 = !DISubprogram(name: "isxdigit", scope: !364, file: !364, line: 118, type: !365, flags: DIFlagPrototyped, spFlags: 0)
!388 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !389, file: !367, line: 75)
!389 = !DISubprogram(name: "tolower", scope: !364, file: !364, line: 122, type: !365, flags: DIFlagPrototyped, spFlags: 0)
!390 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !391, file: !367, line: 76)
!391 = !DISubprogram(name: "toupper", scope: !364, file: !364, line: 125, type: !365, flags: DIFlagPrototyped, spFlags: 0)
!392 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !393, file: !367, line: 87)
!393 = !DISubprogram(name: "isblank", scope: !364, file: !364, line: 130, type: !365, flags: DIFlagPrototyped, spFlags: 0)
!394 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !395, entity: !396, file: !397, line: 58)
!395 = !DINamespace(name: "__gnu_debug", scope: null)
!396 = !DINamespace(name: "__debug", scope: !49)
!397 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/debug/debug.h", directory: "", checksumkind: CSK_MD5, checksum: "752210a319f5f5d356cc29cd1ce3cdc7")
!398 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !399, file: !401, line: 52)
!399 = !DISubprogram(name: "abs", scope: !400, file: !400, line: 840, type: !365, flags: DIFlagPrototyped, spFlags: 0)
!400 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!401 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/std_abs.h", directory: "")
!402 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !403, file: !405, line: 131)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !400, line: 62, baseType: !404)
!404 = !DICompositeType(tag: DW_TAG_structure_type, file: !400, line: 58, size: 64, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!405 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cstdlib", directory: "")
!406 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !407, file: !405, line: 132)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !400, line: 70, baseType: !408)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !400, line: 66, size: 128, flags: DIFlagTypePassByValue, elements: !409, identifier: "_ZTS6ldiv_t")
!409 = !{!410, !411}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !408, file: !400, line: 68, baseType: !263, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !408, file: !400, line: 69, baseType: !263, size: 64, offset: 64)
!412 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !413, file: !405, line: 134)
!413 = !DISubprogram(name: "abort", scope: !400, file: !400, line: 591, type: !414, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!414 = !DISubroutineType(types: !415)
!415 = !{null}
!416 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !417, file: !405, line: 136)
!417 = !DISubprogram(name: "aligned_alloc", scope: !400, file: !400, line: 586, type: !418, flags: DIFlagPrototyped, spFlags: 0)
!418 = !DISubroutineType(types: !419)
!419 = !{!173, !122, !122}
!420 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !421, file: !405, line: 138)
!421 = !DISubprogram(name: "atexit", scope: !400, file: !400, line: 595, type: !422, flags: DIFlagPrototyped, spFlags: 0)
!422 = !DISubroutineType(types: !423)
!423 = !{!14, !424}
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!425 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !426, file: !405, line: 141)
!426 = !DISubprogram(name: "at_quick_exit", scope: !400, file: !400, line: 600, type: !422, flags: DIFlagPrototyped, spFlags: 0)
!427 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !428, file: !405, line: 144)
!428 = !DISubprogram(name: "atof", scope: !400, file: !400, line: 101, type: !429, flags: DIFlagPrototyped, spFlags: 0)
!429 = !DISubroutineType(types: !430)
!430 = !{!247, !125}
!431 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !432, file: !405, line: 145)
!432 = !DISubprogram(name: "atoi", scope: !400, file: !400, line: 104, type: !433, flags: DIFlagPrototyped, spFlags: 0)
!433 = !DISubroutineType(types: !434)
!434 = !{!14, !125}
!435 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !436, file: !405, line: 146)
!436 = !DISubprogram(name: "atol", scope: !400, file: !400, line: 107, type: !437, flags: DIFlagPrototyped, spFlags: 0)
!437 = !DISubroutineType(types: !438)
!438 = !{!263, !125}
!439 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !440, file: !405, line: 147)
!440 = !DISubprogram(name: "bsearch", scope: !400, file: !400, line: 820, type: !441, flags: DIFlagPrototyped, spFlags: 0)
!441 = !DISubroutineType(types: !442)
!442 = !{!173, !443, !443, !122, !122, !445}
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !400, line: 808, baseType: !446)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DISubroutineType(types: !448)
!448 = !{!14, !443, !443}
!449 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !450, file: !405, line: 148)
!450 = !DISubprogram(name: "calloc", scope: !400, file: !400, line: 542, type: !418, flags: DIFlagPrototyped, spFlags: 0)
!451 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !452, file: !405, line: 149)
!452 = !DISubprogram(name: "div", scope: !400, file: !400, line: 852, type: !453, flags: DIFlagPrototyped, spFlags: 0)
!453 = !DISubroutineType(types: !454)
!454 = !{!403, !14, !14}
!455 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !456, file: !405, line: 150)
!456 = !DISubprogram(name: "exit", scope: !400, file: !400, line: 617, type: !457, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!457 = !DISubroutineType(types: !458)
!458 = !{null, !14}
!459 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !460, file: !405, line: 151)
!460 = !DISubprogram(name: "free", scope: !400, file: !400, line: 565, type: !461, flags: DIFlagPrototyped, spFlags: 0)
!461 = !DISubroutineType(types: !462)
!462 = !{null, !173}
!463 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !464, file: !405, line: 152)
!464 = !DISubprogram(name: "getenv", scope: !400, file: !400, line: 634, type: !465, flags: DIFlagPrototyped, spFlags: 0)
!465 = !DISubroutineType(types: !466)
!466 = !{!196, !125}
!467 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !468, file: !405, line: 153)
!468 = !DISubprogram(name: "labs", scope: !400, file: !400, line: 841, type: !469, flags: DIFlagPrototyped, spFlags: 0)
!469 = !DISubroutineType(types: !470)
!470 = !{!263, !263}
!471 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !472, file: !405, line: 154)
!472 = !DISubprogram(name: "ldiv", scope: !400, file: !400, line: 854, type: !473, flags: DIFlagPrototyped, spFlags: 0)
!473 = !DISubroutineType(types: !474)
!474 = !{!407, !263, !263}
!475 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !476, file: !405, line: 155)
!476 = !DISubprogram(name: "malloc", scope: !400, file: !400, line: 539, type: !477, flags: DIFlagPrototyped, spFlags: 0)
!477 = !DISubroutineType(types: !478)
!478 = !{!173, !122}
!479 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !480, file: !405, line: 157)
!480 = !DISubprogram(name: "mblen", scope: !400, file: !400, line: 922, type: !481, flags: DIFlagPrototyped, spFlags: 0)
!481 = !DISubroutineType(types: !482)
!482 = !{!14, !125, !122}
!483 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !484, file: !405, line: 158)
!484 = !DISubprogram(name: "mbstowcs", scope: !400, file: !400, line: 933, type: !485, flags: DIFlagPrototyped, spFlags: 0)
!485 = !DISubroutineType(types: !486)
!486 = !{!122, !89, !124, !122}
!487 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !488, file: !405, line: 159)
!488 = !DISubprogram(name: "mbtowc", scope: !400, file: !400, line: 925, type: !489, flags: DIFlagPrototyped, spFlags: 0)
!489 = !DISubroutineType(types: !490)
!490 = !{!14, !89, !124, !122}
!491 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !492, file: !405, line: 161)
!492 = !DISubprogram(name: "qsort", scope: !400, file: !400, line: 830, type: !493, flags: DIFlagPrototyped, spFlags: 0)
!493 = !DISubroutineType(types: !494)
!494 = !{null, !173, !122, !122, !445}
!495 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !496, file: !405, line: 164)
!496 = !DISubprogram(name: "quick_exit", scope: !400, file: !400, line: 623, type: !457, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!497 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !498, file: !405, line: 167)
!498 = !DISubprogram(name: "rand", scope: !400, file: !400, line: 453, type: !12, flags: DIFlagPrototyped, spFlags: 0)
!499 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !500, file: !405, line: 168)
!500 = !DISubprogram(name: "realloc", scope: !400, file: !400, line: 550, type: !501, flags: DIFlagPrototyped, spFlags: 0)
!501 = !DISubroutineType(types: !502)
!502 = !{!173, !173, !122}
!503 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !504, file: !405, line: 169)
!504 = !DISubprogram(name: "srand", scope: !400, file: !400, line: 455, type: !505, flags: DIFlagPrototyped, spFlags: 0)
!505 = !DISubroutineType(types: !506)
!506 = !{null, !61}
!507 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !508, file: !405, line: 170)
!508 = !DISubprogram(name: "strtod", scope: !400, file: !400, line: 117, type: !509, flags: DIFlagPrototyped, spFlags: 0)
!509 = !DISubroutineType(types: !510)
!510 = !{!247, !124, !511}
!511 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !512)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!513 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !514, file: !405, line: 171)
!514 = !DISubprogram(name: "strtol", scope: !400, file: !400, line: 176, type: !515, flags: DIFlagPrototyped, spFlags: 0)
!515 = !DISubroutineType(types: !516)
!516 = !{!263, !124, !511, !14}
!517 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !518, file: !405, line: 172)
!518 = !DISubprogram(name: "strtoul", scope: !400, file: !400, line: 180, type: !519, flags: DIFlagPrototyped, spFlags: 0)
!519 = !DISubroutineType(types: !520)
!520 = !{!25, !124, !511, !14}
!521 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !522, file: !405, line: 173)
!522 = !DISubprogram(name: "system", scope: !400, file: !400, line: 784, type: !433, flags: DIFlagPrototyped, spFlags: 0)
!523 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !524, file: !405, line: 175)
!524 = !DISubprogram(name: "wcstombs", scope: !400, file: !400, line: 936, type: !525, flags: DIFlagPrototyped, spFlags: 0)
!525 = !DISubroutineType(types: !526)
!526 = !{!122, !195, !99, !122}
!527 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !528, file: !405, line: 176)
!528 = !DISubprogram(name: "wctomb", scope: !400, file: !400, line: 929, type: !529, flags: DIFlagPrototyped, spFlags: 0)
!529 = !DISubroutineType(types: !530)
!530 = !{!14, !196, !88}
!531 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !311, entity: !532, file: !405, line: 204)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !400, line: 80, baseType: !533)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !400, line: 76, size: 128, flags: DIFlagTypePassByValue, elements: !534, identifier: "_ZTS7lldiv_t")
!534 = !{!535, !536}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !533, file: !400, line: 78, baseType: !320, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !533, file: !400, line: 79, baseType: !320, size: 64, offset: 64)
!537 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !311, entity: !538, file: !405, line: 210)
!538 = !DISubprogram(name: "_Exit", scope: !400, file: !400, line: 629, type: !457, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!539 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !311, entity: !540, file: !405, line: 214)
!540 = !DISubprogram(name: "llabs", scope: !400, file: !400, line: 844, type: !541, flags: DIFlagPrototyped, spFlags: 0)
!541 = !DISubroutineType(types: !542)
!542 = !{!320, !320}
!543 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !311, entity: !544, file: !405, line: 220)
!544 = !DISubprogram(name: "lldiv", scope: !400, file: !400, line: 858, type: !545, flags: DIFlagPrototyped, spFlags: 0)
!545 = !DISubroutineType(types: !546)
!546 = !{!532, !320, !320}
!547 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !311, entity: !548, file: !405, line: 231)
!548 = !DISubprogram(name: "atoll", scope: !400, file: !400, line: 112, type: !549, flags: DIFlagPrototyped, spFlags: 0)
!549 = !DISubroutineType(types: !550)
!550 = !{!320, !125}
!551 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !311, entity: !552, file: !405, line: 232)
!552 = !DISubprogram(name: "strtoll", scope: !400, file: !400, line: 200, type: !553, flags: DIFlagPrototyped, spFlags: 0)
!553 = !DISubroutineType(types: !554)
!554 = !{!320, !124, !511, !14}
!555 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !311, entity: !556, file: !405, line: 233)
!556 = !DISubprogram(name: "strtoull", scope: !400, file: !400, line: 205, type: !557, flags: DIFlagPrototyped, spFlags: 0)
!557 = !DISubroutineType(types: !558)
!558 = !{!325, !124, !511, !14}
!559 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !311, entity: !560, file: !405, line: 235)
!560 = !DISubprogram(name: "strtof", scope: !400, file: !400, line: 123, type: !561, flags: DIFlagPrototyped, spFlags: 0)
!561 = !DISubroutineType(types: !562)
!562 = !{!254, !124, !511}
!563 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !311, entity: !564, file: !405, line: 236)
!564 = !DISubprogram(name: "strtold", scope: !400, file: !400, line: 126, type: !565, flags: DIFlagPrototyped, spFlags: 0)
!565 = !DISubroutineType(types: !566)
!566 = !{!315, !124, !511}
!567 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !532, file: !405, line: 244)
!568 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !538, file: !405, line: 246)
!569 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !540, file: !405, line: 248)
!570 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !571, file: !405, line: 249)
!571 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !311, file: !405, line: 217, type: !545, flags: DIFlagPrototyped, spFlags: 0)
!572 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !544, file: !405, line: 250)
!573 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !548, file: !405, line: 252)
!574 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !560, file: !405, line: 253)
!575 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !552, file: !405, line: 254)
!576 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !556, file: !405, line: 255)
!577 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !564, file: !405, line: 256)
!578 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !579, file: !581, line: 98)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !580, line: 7, baseType: !82)
!580 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!581 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cstdio", directory: "")
!582 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !583, file: !581, line: 99)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !584, line: 84, baseType: !585)
!584 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fpos_t", file: !586, line: 14, baseType: !587)
!586 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h", directory: "", checksumkind: CSK_MD5, checksum: "32de8bdaf3551a6c0a9394f9af4389ce")
!587 = !DICompositeType(tag: DW_TAG_structure_type, name: "_G_fpos_t", file: !586, line: 10, size: 128, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
!588 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !589, file: !581, line: 101)
!589 = !DISubprogram(name: "clearerr", scope: !584, file: !584, line: 757, type: !590, flags: DIFlagPrototyped, spFlags: 0)
!590 = !DISubroutineType(types: !591)
!591 = !{null, !592}
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!593 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !594, file: !581, line: 102)
!594 = !DISubprogram(name: "fclose", scope: !584, file: !584, line: 213, type: !595, flags: DIFlagPrototyped, spFlags: 0)
!595 = !DISubroutineType(types: !596)
!596 = !{!14, !592}
!597 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !598, file: !581, line: 103)
!598 = !DISubprogram(name: "feof", scope: !584, file: !584, line: 759, type: !595, flags: DIFlagPrototyped, spFlags: 0)
!599 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !600, file: !581, line: 104)
!600 = !DISubprogram(name: "ferror", scope: !584, file: !584, line: 761, type: !595, flags: DIFlagPrototyped, spFlags: 0)
!601 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !602, file: !581, line: 105)
!602 = !DISubprogram(name: "fflush", scope: !584, file: !584, line: 218, type: !595, flags: DIFlagPrototyped, spFlags: 0)
!603 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !604, file: !581, line: 106)
!604 = !DISubprogram(name: "fgetc", scope: !584, file: !584, line: 485, type: !595, flags: DIFlagPrototyped, spFlags: 0)
!605 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !606, file: !581, line: 107)
!606 = !DISubprogram(name: "fgetpos", scope: !584, file: !584, line: 731, type: !607, flags: DIFlagPrototyped, spFlags: 0)
!607 = !DISubroutineType(types: !608)
!608 = !{!14, !609, !610}
!609 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !592)
!610 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !611)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!612 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !613, file: !581, line: 108)
!613 = !DISubprogram(name: "fgets", scope: !584, file: !584, line: 564, type: !614, flags: DIFlagPrototyped, spFlags: 0)
!614 = !DISubroutineType(types: !615)
!615 = !{!196, !195, !14, !609}
!616 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !617, file: !581, line: 109)
!617 = !DISubprogram(name: "fopen", scope: !584, file: !584, line: 246, type: !618, flags: DIFlagPrototyped, spFlags: 0)
!618 = !DISubroutineType(types: !619)
!619 = !{!592, !124, !124}
!620 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !621, file: !581, line: 110)
!621 = !DISubprogram(name: "fprintf", scope: !584, file: !584, line: 326, type: !622, flags: DIFlagPrototyped, spFlags: 0)
!622 = !DISubroutineType(types: !623)
!623 = !{!14, !609, !124, null}
!624 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !625, file: !581, line: 111)
!625 = !DISubprogram(name: "fputc", scope: !584, file: !584, line: 521, type: !626, flags: DIFlagPrototyped, spFlags: 0)
!626 = !DISubroutineType(types: !627)
!627 = !{!14, !14, !592}
!628 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !629, file: !581, line: 112)
!629 = !DISubprogram(name: "fputs", scope: !584, file: !584, line: 626, type: !630, flags: DIFlagPrototyped, spFlags: 0)
!630 = !DISubroutineType(types: !631)
!631 = !{!14, !124, !609}
!632 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !633, file: !581, line: 113)
!633 = !DISubprogram(name: "fread", scope: !584, file: !584, line: 646, type: !634, flags: DIFlagPrototyped, spFlags: 0)
!634 = !DISubroutineType(types: !635)
!635 = !{!122, !636, !122, !122, !609}
!636 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !173)
!637 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !638, file: !581, line: 114)
!638 = !DISubprogram(name: "freopen", scope: !584, file: !584, line: 252, type: !639, flags: DIFlagPrototyped, spFlags: 0)
!639 = !DISubroutineType(types: !640)
!640 = !{!592, !124, !124, !609}
!641 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !642, file: !581, line: 115)
!642 = !DISubprogram(name: "fscanf", linkageName: "__isoc99_fscanf", scope: !584, file: !584, line: 407, type: !622, flags: DIFlagPrototyped, spFlags: 0)
!643 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !644, file: !581, line: 116)
!644 = !DISubprogram(name: "fseek", scope: !584, file: !584, line: 684, type: !645, flags: DIFlagPrototyped, spFlags: 0)
!645 = !DISubroutineType(types: !646)
!646 = !{!14, !592, !263, !14}
!647 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !648, file: !581, line: 117)
!648 = !DISubprogram(name: "fsetpos", scope: !584, file: !584, line: 736, type: !649, flags: DIFlagPrototyped, spFlags: 0)
!649 = !DISubroutineType(types: !650)
!650 = !{!14, !592, !651}
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !583)
!653 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !654, file: !581, line: 118)
!654 = !DISubprogram(name: "ftell", scope: !584, file: !584, line: 689, type: !655, flags: DIFlagPrototyped, spFlags: 0)
!655 = !DISubroutineType(types: !656)
!656 = !{!263, !592}
!657 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !658, file: !581, line: 119)
!658 = !DISubprogram(name: "fwrite", scope: !584, file: !584, line: 652, type: !659, flags: DIFlagPrototyped, spFlags: 0)
!659 = !DISubroutineType(types: !660)
!660 = !{!122, !661, !122, !122, !609}
!661 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !443)
!662 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !663, file: !581, line: 120)
!663 = !DISubprogram(name: "getc", scope: !584, file: !584, line: 486, type: !595, flags: DIFlagPrototyped, spFlags: 0)
!664 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !665, file: !581, line: 121)
!665 = !DISubprogram(name: "getchar", scope: !584, file: !584, line: 492, type: !12, flags: DIFlagPrototyped, spFlags: 0)
!666 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !667, file: !581, line: 126)
!667 = !DISubprogram(name: "perror", scope: !584, file: !584, line: 775, type: !668, flags: DIFlagPrototyped, spFlags: 0)
!668 = !DISubroutineType(types: !669)
!669 = !{null, !125}
!670 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !671, file: !581, line: 127)
!671 = !DISubprogram(name: "printf", scope: !584, file: !584, line: 332, type: !672, flags: DIFlagPrototyped, spFlags: 0)
!672 = !DISubroutineType(types: !673)
!673 = !{!14, !124, null}
!674 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !675, file: !581, line: 128)
!675 = !DISubprogram(name: "putc", scope: !584, file: !584, line: 522, type: !626, flags: DIFlagPrototyped, spFlags: 0)
!676 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !677, file: !581, line: 129)
!677 = !DISubprogram(name: "putchar", scope: !584, file: !584, line: 528, type: !365, flags: DIFlagPrototyped, spFlags: 0)
!678 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !679, file: !581, line: 130)
!679 = !DISubprogram(name: "puts", scope: !584, file: !584, line: 632, type: !433, flags: DIFlagPrototyped, spFlags: 0)
!680 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !681, file: !581, line: 131)
!681 = !DISubprogram(name: "remove", scope: !584, file: !584, line: 146, type: !433, flags: DIFlagPrototyped, spFlags: 0)
!682 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !683, file: !581, line: 132)
!683 = !DISubprogram(name: "rename", scope: !584, file: !584, line: 148, type: !684, flags: DIFlagPrototyped, spFlags: 0)
!684 = !DISubroutineType(types: !685)
!685 = !{!14, !125, !125}
!686 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !687, file: !581, line: 133)
!687 = !DISubprogram(name: "rewind", scope: !584, file: !584, line: 694, type: !590, flags: DIFlagPrototyped, spFlags: 0)
!688 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !689, file: !581, line: 134)
!689 = !DISubprogram(name: "scanf", linkageName: "__isoc99_scanf", scope: !584, file: !584, line: 410, type: !672, flags: DIFlagPrototyped, spFlags: 0)
!690 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !691, file: !581, line: 135)
!691 = !DISubprogram(name: "setbuf", scope: !584, file: !584, line: 304, type: !692, flags: DIFlagPrototyped, spFlags: 0)
!692 = !DISubroutineType(types: !693)
!693 = !{null, !609, !195}
!694 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !695, file: !581, line: 136)
!695 = !DISubprogram(name: "setvbuf", scope: !584, file: !584, line: 308, type: !696, flags: DIFlagPrototyped, spFlags: 0)
!696 = !DISubroutineType(types: !697)
!697 = !{!14, !609, !195, !14, !122}
!698 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !699, file: !581, line: 137)
!699 = !DISubprogram(name: "sprintf", scope: !584, file: !584, line: 334, type: !700, flags: DIFlagPrototyped, spFlags: 0)
!700 = !DISubroutineType(types: !701)
!701 = !{!14, !195, !124, null}
!702 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !703, file: !581, line: 138)
!703 = !DISubprogram(name: "sscanf", linkageName: "__isoc99_sscanf", scope: !584, file: !584, line: 412, type: !704, flags: DIFlagPrototyped, spFlags: 0)
!704 = !DISubroutineType(types: !705)
!705 = !{!14, !124, !124, null}
!706 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !707, file: !581, line: 139)
!707 = !DISubprogram(name: "tmpfile", scope: !584, file: !584, line: 173, type: !708, flags: DIFlagPrototyped, spFlags: 0)
!708 = !DISubroutineType(types: !709)
!709 = !{!592}
!710 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !711, file: !581, line: 141)
!711 = !DISubprogram(name: "tmpnam", scope: !584, file: !584, line: 187, type: !712, flags: DIFlagPrototyped, spFlags: 0)
!712 = !DISubroutineType(types: !713)
!713 = !{!196, !196}
!714 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !715, file: !581, line: 143)
!715 = !DISubprogram(name: "ungetc", scope: !584, file: !584, line: 639, type: !626, flags: DIFlagPrototyped, spFlags: 0)
!716 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !717, file: !581, line: 144)
!717 = !DISubprogram(name: "vfprintf", scope: !584, file: !584, line: 341, type: !718, flags: DIFlagPrototyped, spFlags: 0)
!718 = !DISubroutineType(types: !719)
!719 = !{!14, !609, !124, !166}
!720 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !721, file: !581, line: 145)
!721 = !DISubprogram(name: "vprintf", scope: !584, file: !584, line: 347, type: !722, flags: DIFlagPrototyped, spFlags: 0)
!722 = !DISubroutineType(types: !723)
!723 = !{!14, !124, !166}
!724 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !725, file: !581, line: 146)
!725 = !DISubprogram(name: "vsprintf", scope: !584, file: !584, line: 349, type: !726, flags: DIFlagPrototyped, spFlags: 0)
!726 = !DISubroutineType(types: !727)
!727 = !{!14, !195, !124, !166}
!728 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !311, entity: !729, file: !581, line: 175)
!729 = !DISubprogram(name: "snprintf", scope: !584, file: !584, line: 354, type: !730, flags: DIFlagPrototyped, spFlags: 0)
!730 = !DISubroutineType(types: !731)
!731 = !{!14, !195, !122, !124, null}
!732 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !311, entity: !733, file: !581, line: 176)
!733 = !DISubprogram(name: "vfscanf", linkageName: "__isoc99_vfscanf", scope: !584, file: !584, line: 451, type: !718, flags: DIFlagPrototyped, spFlags: 0)
!734 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !311, entity: !735, file: !581, line: 177)
!735 = !DISubprogram(name: "vscanf", linkageName: "__isoc99_vscanf", scope: !584, file: !584, line: 456, type: !722, flags: DIFlagPrototyped, spFlags: 0)
!736 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !311, entity: !737, file: !581, line: 178)
!737 = !DISubprogram(name: "vsnprintf", scope: !584, file: !584, line: 358, type: !738, flags: DIFlagPrototyped, spFlags: 0)
!738 = !DISubroutineType(types: !739)
!739 = !{!14, !195, !122, !124, !166}
!740 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !311, entity: !741, file: !581, line: 179)
!741 = !DISubprogram(name: "vsscanf", linkageName: "__isoc99_vsscanf", scope: !584, file: !584, line: 459, type: !742, flags: DIFlagPrototyped, spFlags: 0)
!742 = !DISubroutineType(types: !743)
!743 = !{!14, !124, !124, !166}
!744 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !729, file: !581, line: 185)
!745 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !733, file: !581, line: 186)
!746 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !735, file: !581, line: 187)
!747 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !737, file: !581, line: 188)
!748 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !741, file: !581, line: 189)
!749 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !750, file: !756, line: 58)
!750 = !DIDerivedType(tag: DW_TAG_typedef, name: "max_align_t", file: !751, line: 24, baseType: !752)
!751 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/__stddef_max_align_t.h", directory: "/home/cs22mtech12008", checksumkind: CSK_MD5, checksum: "48e8e2456f77e6cda35d245130fa7259")
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !751, line: 19, size: 256, flags: DIFlagTypePassByValue, elements: !753, identifier: "_ZTS11max_align_t")
!753 = !{!754, !755}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "__clang_max_align_nonce1", scope: !752, file: !751, line: 20, baseType: !320, size: 64, align: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "__clang_max_align_nonce2", scope: !752, file: !751, line: 22, baseType: !315, size: 128, align: 128, offset: 128)
!756 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cstddef", directory: "")
!757 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !758, file: !764, line: 82)
!758 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctrans_t", file: !759, line: 48, baseType: !760)
!759 = !DIFile(filename: "/usr/include/wctype.h", directory: "", checksumkind: CSK_MD5, checksum: "e83097fbf57cc71ea472db59df3ba75d")
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !762)
!762 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !763, line: 41, baseType: !14)
!763 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!764 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cwctype", directory: "")
!765 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !766, file: !764, line: 83)
!766 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctype_t", file: !767, line: 38, baseType: !25)
!767 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "3598b9d23ef5d76319026b46e316b55f")
!768 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !68, file: !764, line: 84)
!769 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !770, file: !764, line: 86)
!770 = !DISubprogram(name: "iswalnum", scope: !767, file: !767, line: 95, type: !274, flags: DIFlagPrototyped, spFlags: 0)
!771 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !772, file: !764, line: 87)
!772 = !DISubprogram(name: "iswalpha", scope: !767, file: !767, line: 101, type: !274, flags: DIFlagPrototyped, spFlags: 0)
!773 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !774, file: !764, line: 89)
!774 = !DISubprogram(name: "iswblank", scope: !767, file: !767, line: 146, type: !274, flags: DIFlagPrototyped, spFlags: 0)
!775 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !776, file: !764, line: 91)
!776 = !DISubprogram(name: "iswcntrl", scope: !767, file: !767, line: 104, type: !274, flags: DIFlagPrototyped, spFlags: 0)
!777 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !778, file: !764, line: 92)
!778 = !DISubprogram(name: "iswctype", scope: !767, file: !767, line: 159, type: !779, flags: DIFlagPrototyped, spFlags: 0)
!779 = !DISubroutineType(types: !780)
!780 = !{!14, !68, !766}
!781 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !782, file: !764, line: 93)
!782 = !DISubprogram(name: "iswdigit", scope: !767, file: !767, line: 108, type: !274, flags: DIFlagPrototyped, spFlags: 0)
!783 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !784, file: !764, line: 94)
!784 = !DISubprogram(name: "iswgraph", scope: !767, file: !767, line: 112, type: !274, flags: DIFlagPrototyped, spFlags: 0)
!785 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !786, file: !764, line: 95)
!786 = !DISubprogram(name: "iswlower", scope: !767, file: !767, line: 117, type: !274, flags: DIFlagPrototyped, spFlags: 0)
!787 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !788, file: !764, line: 96)
!788 = !DISubprogram(name: "iswprint", scope: !767, file: !767, line: 120, type: !274, flags: DIFlagPrototyped, spFlags: 0)
!789 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !790, file: !764, line: 97)
!790 = !DISubprogram(name: "iswpunct", scope: !767, file: !767, line: 125, type: !274, flags: DIFlagPrototyped, spFlags: 0)
!791 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !792, file: !764, line: 98)
!792 = !DISubprogram(name: "iswspace", scope: !767, file: !767, line: 130, type: !274, flags: DIFlagPrototyped, spFlags: 0)
!793 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !794, file: !764, line: 99)
!794 = !DISubprogram(name: "iswupper", scope: !767, file: !767, line: 135, type: !274, flags: DIFlagPrototyped, spFlags: 0)
!795 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !796, file: !764, line: 100)
!796 = !DISubprogram(name: "iswxdigit", scope: !767, file: !767, line: 140, type: !274, flags: DIFlagPrototyped, spFlags: 0)
!797 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !798, file: !764, line: 101)
!798 = !DISubprogram(name: "towctrans", scope: !759, file: !759, line: 55, type: !799, flags: DIFlagPrototyped, spFlags: 0)
!799 = !DISubroutineType(types: !800)
!800 = !{!68, !68, !758}
!801 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !802, file: !764, line: 102)
!802 = !DISubprogram(name: "towlower", scope: !767, file: !767, line: 166, type: !803, flags: DIFlagPrototyped, spFlags: 0)
!803 = !DISubroutineType(types: !804)
!804 = !{!68, !68}
!805 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !806, file: !764, line: 103)
!806 = !DISubprogram(name: "towupper", scope: !767, file: !767, line: 169, type: !803, flags: DIFlagPrototyped, spFlags: 0)
!807 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !808, file: !764, line: 104)
!808 = !DISubprogram(name: "wctrans", scope: !759, file: !759, line: 52, type: !809, flags: DIFlagPrototyped, spFlags: 0)
!809 = !DISubroutineType(types: !810)
!810 = !{!758, !125}
!811 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !812, file: !764, line: 105)
!812 = !DISubprogram(name: "wctype", scope: !767, file: !767, line: 155, type: !813, flags: DIFlagPrototyped, spFlags: 0)
!813 = !DISubroutineType(types: !814)
!814 = !{!766, !125}
!815 = !{i32 7, !"Dwarf Version", i32 5}
!816 = !{i32 2, !"Debug Info Version", i32 3}
!817 = !{i32 1, !"wchar_size", i32 4}
!818 = !{i32 8, !"PIC Level", i32 2}
!819 = !{i32 7, !"PIE Level", i32 2}
!820 = !{i32 7, !"uwtable", i32 2}
!821 = !{i32 7, !"frame-pointer", i32 2}
!822 = !{!"clang version 16.0.0"}
!823 = distinct !DISubprogram(name: "runThread1", linkageName: "_Z10runThread1Pv", scope: !7, file: !7, line: 33, type: !824, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !826)
!824 = !DISubroutineType(types: !825)
!825 = !{!173, !173}
!826 = !{}
!827 = !DILocalVariable(name: "arg", arg: 1, scope: !823, file: !7, line: 33, type: !173)
!828 = !DILocation(line: 33, column: 24, scope: !823)
!829 = !DILocation(line: 34, column: 5, scope: !823)
!830 = !DILocalVariable(name: "basePtr", scope: !823, file: !7, line: 35, type: !5)
!831 = !DILocation(line: 35, column: 8, scope: !823)
!832 = !DILocation(line: 35, column: 34, scope: !823)
!833 = !DILocation(line: 36, column: 5, scope: !823)
!834 = !DILocation(line: 36, column: 14, scope: !823)
!835 = !DILocation(line: 37, column: 5, scope: !823)
!836 = distinct !DISubprogram(name: "runThread2", linkageName: "_Z10runThread2Pv", scope: !7, file: !7, line: 40, type: !824, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !826)
!837 = !DILocalVariable(name: "arg", arg: 1, scope: !836, file: !7, line: 40, type: !173)
!838 = !DILocation(line: 40, column: 24, scope: !836)
!839 = !DILocalVariable(name: "basePtr", scope: !836, file: !7, line: 41, type: !5)
!840 = !DILocation(line: 41, column: 8, scope: !836)
!841 = !DILocation(line: 41, column: 34, scope: !836)
!842 = !DILocation(line: 42, column: 5, scope: !836)
!843 = !DILocation(line: 42, column: 14, scope: !836)
!844 = !DILocation(line: 43, column: 5, scope: !836)
!845 = distinct !DISubprogram(name: "m2", linkageName: "_ZN1A2m2Ev", scope: !6, file: !7, line: 11, type: !16, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !19, retainedNodes: !826)
!846 = !DILocalVariable(name: "this", arg: 1, scope: !845, type: !5, flags: DIFlagArtificial | DIFlagObjectPointer)
!847 = !DILocation(line: 0, scope: !845)
!848 = !DILocation(line: 12, column: 19, scope: !845)
!849 = !DILocation(line: 13, column: 5, scope: !845)
!850 = distinct !DISubprogram(name: "createThread", linkageName: "_Z12createThreadv", scope: !7, file: !7, line: 46, type: !414, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !826)
!851 = !DILocalVariable(name: "x", scope: !850, file: !7, line: 47, type: !14)
!852 = !DILocation(line: 47, column: 9, scope: !850)
!853 = !DILocalVariable(name: "a2Obj", scope: !854, file: !7, line: 49, type: !855)
!854 = distinct !DILexicalBlock(scope: !850, file: !7, line: 48, column: 5)
!855 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "A2", file: !7, line: 23, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !856, vtableHolder: !6, identifier: "_ZTS2A2")
!856 = !{!857, !858}
!857 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !855, baseType: !6, flags: DIFlagPublic, extraData: i32 0)
!858 = !DISubprogram(name: "m2", linkageName: "_ZN2A22m2Ev", scope: !855, file: !7, line: 25, type: !859, scopeLine: 25, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!859 = !DISubroutineType(types: !860)
!860 = !{null, !861}
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!862 = !DILocation(line: 49, column: 12, scope: !854)
!863 = !DILocation(line: 50, column: 17, scope: !854)
!864 = !DILocation(line: 51, column: 50, scope: !854)
!865 = !DILocation(line: 51, column: 9, scope: !854)
!866 = !DILocation(line: 53, column: 13, scope: !867)
!867 = distinct !DILexicalBlock(scope: !854, file: !7, line: 53, column: 13)
!868 = !DILocation(line: 53, column: 15, scope: !867)
!869 = !DILocation(line: 53, column: 13, scope: !854)
!870 = !DILocalVariable(name: "a1Obj", scope: !871, file: !7, line: 54, type: !872)
!871 = distinct !DILexicalBlock(scope: !867, file: !7, line: 53, column: 21)
!872 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "A1", file: !7, line: 16, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !873, vtableHolder: !6, identifier: "_ZTS2A1")
!873 = !{!874, !875}
!874 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !872, baseType: !6, flags: DIFlagPublic, extraData: i32 0)
!875 = !DISubprogram(name: "m1", linkageName: "_ZN2A12m1Ev", scope: !872, file: !7, line: 18, type: !876, scopeLine: 18, containingType: !872, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!876 = !DISubroutineType(types: !877)
!877 = !{null, !878}
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!879 = !DILocation(line: 54, column: 16, scope: !871)
!880 = !DILocation(line: 55, column: 21, scope: !871)
!881 = !DILocation(line: 56, column: 54, scope: !871)
!882 = !DILocation(line: 56, column: 13, scope: !871)
!883 = !DILocation(line: 57, column: 9, scope: !871)
!884 = !DILocation(line: 58, column: 19, scope: !854)
!885 = !DILocation(line: 58, column: 41, scope: !854)
!886 = !DILocation(line: 60, column: 18, scope: !850)
!887 = !DILocation(line: 60, column: 5, scope: !850)
!888 = !DILocation(line: 61, column: 1, scope: !850)
!889 = distinct !DISubprogram(name: "A2", linkageName: "_ZN2A2C2Ev", scope: !855, file: !7, line: 23, type: !859, scopeLine: 23, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !890, retainedNodes: !826)
!890 = !DISubprogram(name: "A2", scope: !855, type: !859, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!891 = !DILocalVariable(name: "this", arg: 1, scope: !889, type: !892, flags: DIFlagArtificial | DIFlagObjectPointer)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!893 = !DILocation(line: 0, scope: !889)
!894 = !DILocation(line: 23, column: 7, scope: !889)
!895 = distinct !DISubprogram(name: "A1", linkageName: "_ZN2A1C2Ev", scope: !872, file: !7, line: 16, type: !876, scopeLine: 16, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !896, retainedNodes: !826)
!896 = !DISubprogram(name: "A1", scope: !872, type: !876, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!897 = !DILocalVariable(name: "this", arg: 1, scope: !895, type: !898, flags: DIFlagArtificial | DIFlagObjectPointer)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!899 = !DILocation(line: 0, scope: !895)
!900 = !DILocation(line: 16, column: 7, scope: !895)
!901 = distinct !DISubprogram(name: "main", scope: !7, file: !7, line: 63, type: !12, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !826)
!902 = !DILocation(line: 64, column: 5, scope: !901)
!903 = !DILocation(line: 65, column: 18, scope: !901)
!904 = !DILocation(line: 65, column: 5, scope: !901)
!905 = !DILocation(line: 66, column: 5, scope: !901)
!906 = distinct !DISubprogram(name: "A", linkageName: "_ZN1AC2Ev", scope: !6, file: !7, line: 5, type: !16, scopeLine: 5, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !907, retainedNodes: !826)
!907 = !DISubprogram(name: "A", scope: !6, type: !16, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!908 = !DILocalVariable(name: "this", arg: 1, scope: !906, type: !5, flags: DIFlagArtificial | DIFlagObjectPointer)
!909 = !DILocation(line: 0, scope: !906)
!910 = !DILocation(line: 5, column: 7, scope: !906)
!911 = distinct !DISubprogram(name: "m1", linkageName: "_ZN1A2m1Ev", scope: !6, file: !7, line: 7, type: !16, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !15, retainedNodes: !826)
!912 = !DILocalVariable(name: "this", arg: 1, scope: !911, type: !5, flags: DIFlagArtificial | DIFlagObjectPointer)
!913 = !DILocation(line: 0, scope: !911)
!914 = !DILocation(line: 8, column: 19, scope: !911)
!915 = !DILocation(line: 9, column: 5, scope: !911)
!916 = distinct !DISubprogram(name: "m1", linkageName: "_ZN2A12m1Ev", scope: !872, file: !7, line: 18, type: !876, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !875, retainedNodes: !826)
!917 = !DILocalVariable(name: "this", arg: 1, scope: !916, type: !898, flags: DIFlagArtificial | DIFlagObjectPointer)
!918 = !DILocation(line: 0, scope: !916)
!919 = !DILocation(line: 19, column: 19, scope: !916)
!920 = !DILocation(line: 20, column: 5, scope: !916)
