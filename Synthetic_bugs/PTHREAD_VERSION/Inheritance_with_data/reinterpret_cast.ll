; ModuleID = '/home/cs22mtech12008/NEW_CLONE_FOR_BENCHMARKS/Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Inheritance_with_data/reinterpret_cast.cpp'
source_filename = "/home/cs22mtech12008/NEW_CLONE_FOR_BENCHMARKS/Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Inheritance_with_data/reinterpret_cast.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%class.A = type <{ ptr, i32, [4 x i8] }>
%class.A2 = type { %class.A.base, i32 }
%class.A.base = type <{ ptr, i32 }>
%class.A1 = type { %class.A.base, i32 }

$_ZN1A2m2Ev = comdat any

$_ZN2A22m2Ev = comdat any

$_ZN2A1C2Ev = comdat any

$_ZN1AC2Ev = comdat any

$_ZN2A12m1Ev = comdat any

$_ZN1A2m1Ev = comdat any

$_ZTV2A1 = comdat any

$_ZTS2A1 = comdat any

$_ZTS1A = comdat any

$_ZTI1A = comdat any

$_ZTI2A1 = comdat any

$_ZTV1A = comdat any

@t1 = dso_local global i64 0, align 8, !dbg !0
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [15 x i8] c"Base class m2:\00", align 1, !dbg !33
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !40
@.str.2 = private unnamed_addr constant [13 x i8] c"A2 class m2:\00", align 1, !dbg !45
@_ZTV2A1 = linkonce_odr dso_local unnamed_addr constant { [3 x ptr] } { [3 x ptr] [ptr null, ptr @_ZTI2A1, ptr @_ZN2A12m1Ev] }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global ptr
@_ZTS2A1 = linkonce_odr dso_local constant [4 x i8] c"2A1\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global ptr
@_ZTS1A = linkonce_odr dso_local constant [3 x i8] c"1A\00", comdat, align 1
@_ZTI1A = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS1A }, comdat, align 8
@_ZTI2A1 = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS2A1, ptr @_ZTI1A }, comdat, align 8
@_ZTV1A = linkonce_odr dso_local unnamed_addr constant { [3 x ptr] } { [3 x ptr] [ptr null, ptr @_ZTI1A, ptr @_ZN1A2m1Ev] }, comdat, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"Base class m1:\00", align 1, !dbg !50
@.str.4 = private unnamed_addr constant [13 x i8] c"A1 class m1:\00", align 1, !dbg !52

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef ptr @_Z9runThreadPv(ptr noundef %0) #0 !dbg !833 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !837, metadata !DIExpression()), !dbg !838
  call void @llvm.dbg.declare(metadata ptr %3, metadata !839, metadata !DIExpression()), !dbg !840
  %6 = load ptr, ptr %2, align 8, !dbg !841
  store ptr %6, ptr %3, align 8, !dbg !840
  %7 = load ptr, ptr %3, align 8, !dbg !842
  %8 = load ptr, ptr %7, align 8, !dbg !843
  %9 = getelementptr inbounds ptr, ptr %8, i64 0, !dbg !843
  %10 = load ptr, ptr %9, align 8, !dbg !843
  call void %10(ptr noundef nonnull align 8 dereferenceable(12) %7), !dbg !843
  %11 = load ptr, ptr %3, align 8, !dbg !844
  call void @_ZN1A2m2Ev(ptr noundef nonnull align 8 dereferenceable(12) %11), !dbg !845
  call void @llvm.dbg.declare(metadata ptr %4, metadata !846, metadata !DIExpression()), !dbg !847
  %12 = load ptr, ptr %3, align 8, !dbg !848
  store ptr %12, ptr %4, align 8, !dbg !847
  %13 = load ptr, ptr %4, align 8, !dbg !849
  call void @_ZN2A22m2Ev(ptr noundef nonnull align 8 dereferenceable(16) %13), !dbg !850
  call void @llvm.dbg.declare(metadata ptr %5, metadata !851, metadata !DIExpression()), !dbg !852
  %14 = load ptr, ptr %3, align 8, !dbg !853
  store ptr %14, ptr %5, align 8, !dbg !852
  %15 = load ptr, ptr %5, align 8, !dbg !854
  %16 = load ptr, ptr %15, align 8, !dbg !855
  %17 = getelementptr inbounds ptr, ptr %16, i64 0, !dbg !855
  %18 = load ptr, ptr %17, align 8, !dbg !855
  call void %18(ptr noundef nonnull align 8 dereferenceable(16) %15), !dbg !855
  ret ptr null, !dbg !856
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN1A2m2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) #0 comdat align 2 !dbg !857 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !858, metadata !DIExpression()), !dbg !859
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str), !dbg !860
  %5 = getelementptr inbounds %class.A, ptr %3, i32 0, i32 1, !dbg !861
  %6 = load i32, ptr %5, align 8, !dbg !861
  %7 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %6), !dbg !862
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef @.str.1), !dbg !863
  ret void, !dbg !864
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN2A22m2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #0 comdat align 2 !dbg !865 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !870, metadata !DIExpression()), !dbg !871
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.2), !dbg !872
  %5 = getelementptr inbounds %class.A2, ptr %3, i32 0, i32 1, !dbg !873
  %6 = load i32, ptr %5, align 4, !dbg !873
  %7 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %6), !dbg !874
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef @.str.1), !dbg !875
  ret void, !dbg !876
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z12createThreadv() #0 !dbg !877 {
  %1 = alloca %class.A1, align 8
  %2 = alloca ptr, align 8
  call void @llvm.dbg.declare(metadata ptr %1, metadata !878, metadata !DIExpression()), !dbg !879
  call void @_ZN2A1C2Ev(ptr noundef nonnull align 8 dereferenceable(16) %1) #6, !dbg !879
  call void @llvm.dbg.declare(metadata ptr %2, metadata !880, metadata !DIExpression()), !dbg !881
  store ptr %1, ptr %2, align 8, !dbg !881
  %3 = load ptr, ptr %2, align 8, !dbg !882
  %4 = call i32 @pthread_create(ptr noundef @t1, ptr noundef null, ptr noundef @_Z9runThreadPv, ptr noundef %3) #6, !dbg !883
  %5 = load i64, ptr @t1, align 8, !dbg !884
  %6 = call i32 @pthread_join(i64 noundef %5, ptr noundef null), !dbg !885
  ret void, !dbg !886
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN2A1C2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 !dbg !887 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !889, metadata !DIExpression()), !dbg !890
  %3 = load ptr, ptr %2, align 8
  call void @_ZN1AC2Ev(ptr noundef nonnull align 8 dereferenceable(12) %3) #6, !dbg !891
  store ptr getelementptr inbounds ({ [3 x ptr] }, ptr @_ZTV2A1, i32 0, inrange i32 0, i32 2), ptr %3, align 8, !dbg !891
  %4 = getelementptr inbounds %class.A1, ptr %3, i32 0, i32 1, !dbg !892
  store i32 20, ptr %4, align 4, !dbg !892
  ret void, !dbg !891
}

; Function Attrs: nounwind
declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

declare i32 @pthread_join(i64 noundef, ptr noundef) #4

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main() #5 !dbg !893 {
  %1 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  call void @_Z12createThreadv(), !dbg !894
  ret i32 0, !dbg !895
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN1AC2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #2 comdat align 2 !dbg !896 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !898, metadata !DIExpression()), !dbg !899
  %3 = load ptr, ptr %2, align 8
  store ptr getelementptr inbounds ({ [3 x ptr] }, ptr @_ZTV1A, i32 0, inrange i32 0, i32 2), ptr %3, align 8, !dbg !900
  %4 = getelementptr inbounds %class.A, ptr %3, i32 0, i32 1, !dbg !901
  store i32 10, ptr %4, align 8, !dbg !901
  ret void, !dbg !900
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN2A12m1Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 !dbg !902 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !903, metadata !DIExpression()), !dbg !904
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.4), !dbg !905
  %5 = getelementptr inbounds %class.A1, ptr %3, i32 0, i32 1, !dbg !906
  %6 = load i32, ptr %5, align 4, !dbg !906
  %7 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %6), !dbg !907
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef @.str.1), !dbg !908
  ret void, !dbg !909
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN1A2m1Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #0 comdat align 2 !dbg !910 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !911, metadata !DIExpression()), !dbg !912
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.3), !dbg !913
  %5 = getelementptr inbounds %class.A, ptr %3, i32 0, i32 1, !dbg !914
  %6 = load i32, ptr %5, align 8, !dbg !914
  %7 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %6), !dbg !915
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef @.str.1), !dbg !916
  ret void, !dbg !917
}

attributes #0 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!825, !826, !827, !828, !829, !830, !831}
!llvm.ident = !{!832}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "t1", scope: !2, file: !7, line: 33, type: !823, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !3, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !32, imports: !54, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/cs22mtech12008/NEW_CLONE_FOR_BENCHMARKS/Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Inheritance_with_data/reinterpret_cast.cpp", directory: "/home/cs22mtech12008/UseAfterScope/Scripts", checksumkind: CSK_MD5, checksum: "6cc57310f4c77196f5fc9e9288a238f2")
!4 = !{!5, !21, !23}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "A", file: !7, line: 5, size: 128, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !8, vtableHolder: !6, identifier: "_ZTS1A")
!7 = !DIFile(filename: "NEW_CLONE_FOR_BENCHMARKS/Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Inheritance_with_data/reinterpret_cast.cpp", directory: "/home/cs22mtech12008", checksumkind: CSK_MD5, checksum: "6cc57310f4c77196f5fc9e9288a238f2")
!8 = !{!9, !15, !16, !20}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$A", scope: !7, file: !7, baseType: !10, size: 64, flags: DIFlagArtificial)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "__vtbl_ptr_type", baseType: !12, size: 64)
!12 = !DISubroutineType(types: !13)
!13 = !{!14}
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !6, file: !7, line: 7, baseType: !14, size: 32, offset: 64, flags: DIFlagPublic)
!16 = !DISubprogram(name: "m1", linkageName: "_ZN1A2m1Ev", scope: !6, file: !7, line: 8, type: !17, scopeLine: 8, containingType: !6, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!17 = !DISubroutineType(types: !18)
!18 = !{null, !19}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!20 = !DISubprogram(name: "m2", linkageName: "_ZN1A2m2Ev", scope: !6, file: !7, line: 12, type: !17, scopeLine: 12, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DICompositeType(tag: DW_TAG_class_type, name: "A2", file: !7, line: 25, size: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS2A2")
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "A1", file: !7, line: 17, size: 128, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !25, vtableHolder: !6, identifier: "_ZTS2A1")
!25 = !{!26, !27, !28}
!26 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !24, baseType: !6, flags: DIFlagPublic, extraData: i32 0)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "a1", scope: !24, file: !7, line: 19, baseType: !14, size: 32, offset: 96, flags: DIFlagPublic)
!28 = !DISubprogram(name: "m1", linkageName: "_ZN2A12m1Ev", scope: !24, file: !7, line: 20, type: !29, scopeLine: 20, containingType: !24, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!29 = !DISubroutineType(types: !30)
!30 = !{null, !31}
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!32 = !{!0, !33, !40, !45, !50, !52}
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !7, line: 13, type: !35, isLocal: true, isDefinition: true)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 120, elements: !38)
!36 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!37 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!38 = !{!39}
!39 = !DISubrange(count: 15)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(scope: null, file: !7, line: 13, type: !42, isLocal: true, isDefinition: true)
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 16, elements: !43)
!43 = !{!44}
!44 = !DISubrange(count: 2)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(scope: null, file: !7, line: 29, type: !47, isLocal: true, isDefinition: true)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 104, elements: !48)
!48 = !{!49}
!49 = !DISubrange(count: 13)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(scope: null, file: !7, line: 9, type: !35, isLocal: true, isDefinition: true)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !7, line: 21, type: !47, isLocal: true, isDefinition: true)
!54 = !{!55, !74, !77, !82, !90, !98, !102, !109, !113, !117, !119, !121, !125, !136, !140, !146, !152, !154, !158, !162, !166, !170, !183, !185, !189, !193, !197, !199, !205, !209, !213, !215, !217, !221, !229, !233, !237, !241, !243, !249, !251, !258, !263, !267, !272, !276, !280, !284, !286, !288, !292, !296, !300, !302, !306, !310, !312, !314, !318, !324, !329, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !348, !352, !357, !361, !365, !370, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !402, !406, !410, !414, !420, !424, !428, !433, !435, !439, !443, !447, !457, !459, !463, !467, !471, !475, !479, !483, !487, !491, !495, !499, !503, !505, !507, !511, !515, !521, !525, !529, !531, !535, !539, !545, !547, !551, !555, !559, !563, !567, !571, !575, !576, !577, !578, !580, !581, !582, !583, !584, !585, !586, !590, !596, !601, !605, !607, !609, !611, !613, !620, !624, !628, !632, !636, !640, !645, !649, !651, !655, !661, !665, !670, !672, !674, !678, !682, !684, !686, !688, !690, !694, !696, !698, !702, !706, !710, !714, !718, !722, !724, !728, !732, !736, !740, !742, !744, !748, !752, !753, !754, !755, !756, !757, !765, !773, !776, !777, !779, !781, !783, !785, !789, !791, !793, !795, !797, !799, !801, !803, !805, !809, !813, !815, !819}
!55 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !57, file: !73, line: 64)
!56 = !DINamespace(name: "std", scope: null)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !58, line: 6, baseType: !59)
!58 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !60, line: 21, baseType: !61)
!60 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !60, line: 13, size: 64, flags: DIFlagTypePassByValue, elements: !62, identifier: "_ZTS11__mbstate_t")
!62 = !{!63, !64}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !61, file: !60, line: 15, baseType: !14, size: 32)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !61, file: !60, line: 20, baseType: !65, size: 32, offset: 32)
!65 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !61, file: !60, line: 16, size: 32, flags: DIFlagTypePassByValue, elements: !66, identifier: "_ZTSN11__mbstate_tUt_E")
!66 = !{!67, !69}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !65, file: !60, line: 18, baseType: !68, size: 32)
!68 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !65, file: !60, line: 19, baseType: !70, size: 32)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 32, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 4)
!73 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cwchar", directory: "")
!74 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !75, file: !73, line: 141)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !76, line: 20, baseType: !68)
!76 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!77 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !78, file: !73, line: 143)
!78 = !DISubprogram(name: "btowc", scope: !79, file: !79, line: 284, type: !80, flags: DIFlagPrototyped, spFlags: 0)
!79 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "8900d9ecbbe40d052c41becfbc5b5531")
!80 = !DISubroutineType(types: !81)
!81 = !{!75, !14}
!82 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !83, file: !73, line: 144)
!83 = !DISubprogram(name: "fgetwc", scope: !79, file: !79, line: 726, type: !84, flags: DIFlagPrototyped, spFlags: 0)
!84 = !DISubroutineType(types: !85)
!85 = !{!75, !86}
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !88, line: 5, baseType: !89)
!88 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "72a8fe90981f484acae7c6f3dfc5c2b7")
!89 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !88, line: 4, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS8_IO_FILE")
!90 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !91, file: !73, line: 145)
!91 = !DISubprogram(name: "fgetws", scope: !79, file: !79, line: 755, type: !92, flags: DIFlagPrototyped, spFlags: 0)
!92 = !DISubroutineType(types: !93)
!93 = !{!94, !96, !14, !97}
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!96 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !94)
!97 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !86)
!98 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !99, file: !73, line: 146)
!99 = !DISubprogram(name: "fputwc", scope: !79, file: !79, line: 740, type: !100, flags: DIFlagPrototyped, spFlags: 0)
!100 = !DISubroutineType(types: !101)
!101 = !{!75, !95, !86}
!102 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !103, file: !73, line: 147)
!103 = !DISubprogram(name: "fputws", scope: !79, file: !79, line: 762, type: !104, flags: DIFlagPrototyped, spFlags: 0)
!104 = !DISubroutineType(types: !105)
!105 = !{!14, !106, !97}
!106 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !107)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !95)
!109 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !110, file: !73, line: 148)
!110 = !DISubprogram(name: "fwide", scope: !79, file: !79, line: 573, type: !111, flags: DIFlagPrototyped, spFlags: 0)
!111 = !DISubroutineType(types: !112)
!112 = !{!14, !86, !14}
!113 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !114, file: !73, line: 149)
!114 = !DISubprogram(name: "fwprintf", scope: !79, file: !79, line: 580, type: !115, flags: DIFlagPrototyped, spFlags: 0)
!115 = !DISubroutineType(types: !116)
!116 = !{!14, !97, !106, null}
!117 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !118, file: !73, line: 150)
!118 = !DISubprogram(name: "fwscanf", linkageName: "__isoc99_fwscanf", scope: !79, file: !79, line: 640, type: !115, flags: DIFlagPrototyped, spFlags: 0)
!119 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !120, file: !73, line: 151)
!120 = !DISubprogram(name: "getwc", scope: !79, file: !79, line: 727, type: !84, flags: DIFlagPrototyped, spFlags: 0)
!121 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !122, file: !73, line: 152)
!122 = !DISubprogram(name: "getwchar", scope: !79, file: !79, line: 733, type: !123, flags: DIFlagPrototyped, spFlags: 0)
!123 = !DISubroutineType(types: !124)
!124 = !{!75}
!125 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !126, file: !73, line: 153)
!126 = !DISubprogram(name: "mbrlen", scope: !79, file: !79, line: 307, type: !127, flags: DIFlagPrototyped, spFlags: 0)
!127 = !DISubroutineType(types: !128)
!128 = !{!129, !132, !129, !134}
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !130, line: 46, baseType: !131)
!130 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/cs22mtech12008", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!131 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!132 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !133)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !135)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!136 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !137, file: !73, line: 154)
!137 = !DISubprogram(name: "mbrtowc", scope: !79, file: !79, line: 296, type: !138, flags: DIFlagPrototyped, spFlags: 0)
!138 = !DISubroutineType(types: !139)
!139 = !{!129, !96, !132, !129, !134}
!140 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !141, file: !73, line: 155)
!141 = !DISubprogram(name: "mbsinit", scope: !79, file: !79, line: 292, type: !142, flags: DIFlagPrototyped, spFlags: 0)
!142 = !DISubroutineType(types: !143)
!143 = !{!14, !144}
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!146 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !147, file: !73, line: 156)
!147 = !DISubprogram(name: "mbsrtowcs", scope: !79, file: !79, line: 337, type: !148, flags: DIFlagPrototyped, spFlags: 0)
!148 = !DISubroutineType(types: !149)
!149 = !{!129, !96, !150, !129, !134}
!150 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !151)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!152 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !153, file: !73, line: 157)
!153 = !DISubprogram(name: "putwc", scope: !79, file: !79, line: 741, type: !100, flags: DIFlagPrototyped, spFlags: 0)
!154 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !155, file: !73, line: 158)
!155 = !DISubprogram(name: "putwchar", scope: !79, file: !79, line: 747, type: !156, flags: DIFlagPrototyped, spFlags: 0)
!156 = !DISubroutineType(types: !157)
!157 = !{!75, !95}
!158 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !159, file: !73, line: 160)
!159 = !DISubprogram(name: "swprintf", scope: !79, file: !79, line: 590, type: !160, flags: DIFlagPrototyped, spFlags: 0)
!160 = !DISubroutineType(types: !161)
!161 = !{!14, !96, !129, !106, null}
!162 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !163, file: !73, line: 162)
!163 = !DISubprogram(name: "swscanf", linkageName: "__isoc99_swscanf", scope: !79, file: !79, line: 647, type: !164, flags: DIFlagPrototyped, spFlags: 0)
!164 = !DISubroutineType(types: !165)
!165 = !{!14, !106, !106, null}
!166 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !167, file: !73, line: 163)
!167 = !DISubprogram(name: "ungetwc", scope: !79, file: !79, line: 770, type: !168, flags: DIFlagPrototyped, spFlags: 0)
!168 = !DISubroutineType(types: !169)
!169 = !{!75, !75, !86}
!170 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !171, file: !73, line: 164)
!171 = !DISubprogram(name: "vfwprintf", scope: !79, file: !79, line: 598, type: !172, flags: DIFlagPrototyped, spFlags: 0)
!172 = !DISubroutineType(types: !173)
!173 = !{!14, !97, !106, !174}
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, flags: DIFlagTypePassByValue, elements: !176, identifier: "_ZTS13__va_list_tag")
!176 = !{!177, !179, !180, !182}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !175, file: !178, baseType: !68, size: 32)
!178 = !DIFile(filename: "NEW_CLONE_FOR_BENCHMARKS/Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Inheritance_with_data/reinterpret_cast.cpp", directory: "/home/cs22mtech12008")
!179 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !175, file: !178, baseType: !68, size: 32, offset: 32)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !175, file: !178, baseType: !181, size: 64, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !175, file: !178, baseType: !181, size: 64, offset: 128)
!183 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !184, file: !73, line: 166)
!184 = !DISubprogram(name: "vfwscanf", linkageName: "__isoc99_vfwscanf", scope: !79, file: !79, line: 693, type: !172, flags: DIFlagPrototyped, spFlags: 0)
!185 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !186, file: !73, line: 169)
!186 = !DISubprogram(name: "vswprintf", scope: !79, file: !79, line: 611, type: !187, flags: DIFlagPrototyped, spFlags: 0)
!187 = !DISubroutineType(types: !188)
!188 = !{!14, !96, !129, !106, !174}
!189 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !190, file: !73, line: 172)
!190 = !DISubprogram(name: "vswscanf", linkageName: "__isoc99_vswscanf", scope: !79, file: !79, line: 700, type: !191, flags: DIFlagPrototyped, spFlags: 0)
!191 = !DISubroutineType(types: !192)
!192 = !{!14, !106, !106, !174}
!193 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !194, file: !73, line: 174)
!194 = !DISubprogram(name: "vwprintf", scope: !79, file: !79, line: 606, type: !195, flags: DIFlagPrototyped, spFlags: 0)
!195 = !DISubroutineType(types: !196)
!196 = !{!14, !106, !174}
!197 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !198, file: !73, line: 176)
!198 = !DISubprogram(name: "vwscanf", linkageName: "__isoc99_vwscanf", scope: !79, file: !79, line: 697, type: !195, flags: DIFlagPrototyped, spFlags: 0)
!199 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !200, file: !73, line: 178)
!200 = !DISubprogram(name: "wcrtomb", scope: !79, file: !79, line: 301, type: !201, flags: DIFlagPrototyped, spFlags: 0)
!201 = !DISubroutineType(types: !202)
!202 = !{!129, !203, !95, !134}
!203 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !204)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!205 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !206, file: !73, line: 179)
!206 = !DISubprogram(name: "wcscat", scope: !79, file: !79, line: 97, type: !207, flags: DIFlagPrototyped, spFlags: 0)
!207 = !DISubroutineType(types: !208)
!208 = !{!94, !96, !106}
!209 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !210, file: !73, line: 180)
!210 = !DISubprogram(name: "wcscmp", scope: !79, file: !79, line: 106, type: !211, flags: DIFlagPrototyped, spFlags: 0)
!211 = !DISubroutineType(types: !212)
!212 = !{!14, !107, !107}
!213 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !214, file: !73, line: 181)
!214 = !DISubprogram(name: "wcscoll", scope: !79, file: !79, line: 131, type: !211, flags: DIFlagPrototyped, spFlags: 0)
!215 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !216, file: !73, line: 182)
!216 = !DISubprogram(name: "wcscpy", scope: !79, file: !79, line: 87, type: !207, flags: DIFlagPrototyped, spFlags: 0)
!217 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !218, file: !73, line: 183)
!218 = !DISubprogram(name: "wcscspn", scope: !79, file: !79, line: 187, type: !219, flags: DIFlagPrototyped, spFlags: 0)
!219 = !DISubroutineType(types: !220)
!220 = !{!129, !107, !107}
!221 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !222, file: !73, line: 184)
!222 = !DISubprogram(name: "wcsftime", scope: !79, file: !79, line: 834, type: !223, flags: DIFlagPrototyped, spFlags: 0)
!223 = !DISubroutineType(types: !224)
!224 = !{!129, !96, !129, !106, !225}
!225 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !226)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !228)
!228 = !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !79, line: 83, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS2tm")
!229 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !230, file: !73, line: 185)
!230 = !DISubprogram(name: "wcslen", scope: !79, file: !79, line: 222, type: !231, flags: DIFlagPrototyped, spFlags: 0)
!231 = !DISubroutineType(types: !232)
!232 = !{!129, !107}
!233 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !234, file: !73, line: 186)
!234 = !DISubprogram(name: "wcsncat", scope: !79, file: !79, line: 101, type: !235, flags: DIFlagPrototyped, spFlags: 0)
!235 = !DISubroutineType(types: !236)
!236 = !{!94, !96, !106, !129}
!237 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !238, file: !73, line: 187)
!238 = !DISubprogram(name: "wcsncmp", scope: !79, file: !79, line: 109, type: !239, flags: DIFlagPrototyped, spFlags: 0)
!239 = !DISubroutineType(types: !240)
!240 = !{!14, !107, !107, !129}
!241 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !242, file: !73, line: 188)
!242 = !DISubprogram(name: "wcsncpy", scope: !79, file: !79, line: 92, type: !235, flags: DIFlagPrototyped, spFlags: 0)
!243 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !244, file: !73, line: 189)
!244 = !DISubprogram(name: "wcsrtombs", scope: !79, file: !79, line: 343, type: !245, flags: DIFlagPrototyped, spFlags: 0)
!245 = !DISubroutineType(types: !246)
!246 = !{!129, !203, !247, !129, !134}
!247 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !248)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!249 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !250, file: !73, line: 190)
!250 = !DISubprogram(name: "wcsspn", scope: !79, file: !79, line: 191, type: !219, flags: DIFlagPrototyped, spFlags: 0)
!251 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !252, file: !73, line: 191)
!252 = !DISubprogram(name: "wcstod", scope: !79, file: !79, line: 377, type: !253, flags: DIFlagPrototyped, spFlags: 0)
!253 = !DISubroutineType(types: !254)
!254 = !{!255, !106, !256}
!255 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!256 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !257)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!258 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !259, file: !73, line: 193)
!259 = !DISubprogram(name: "wcstof", scope: !79, file: !79, line: 382, type: !260, flags: DIFlagPrototyped, spFlags: 0)
!260 = !DISubroutineType(types: !261)
!261 = !{!262, !106, !256}
!262 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!263 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !264, file: !73, line: 195)
!264 = !DISubprogram(name: "wcstok", scope: !79, file: !79, line: 217, type: !265, flags: DIFlagPrototyped, spFlags: 0)
!265 = !DISubroutineType(types: !266)
!266 = !{!94, !96, !106, !256}
!267 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !268, file: !73, line: 196)
!268 = !DISubprogram(name: "wcstol", scope: !79, file: !79, line: 428, type: !269, flags: DIFlagPrototyped, spFlags: 0)
!269 = !DISubroutineType(types: !270)
!270 = !{!271, !106, !256, !14}
!271 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!272 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !273, file: !73, line: 197)
!273 = !DISubprogram(name: "wcstoul", scope: !79, file: !79, line: 433, type: !274, flags: DIFlagPrototyped, spFlags: 0)
!274 = !DISubroutineType(types: !275)
!275 = !{!131, !106, !256, !14}
!276 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !277, file: !73, line: 198)
!277 = !DISubprogram(name: "wcsxfrm", scope: !79, file: !79, line: 135, type: !278, flags: DIFlagPrototyped, spFlags: 0)
!278 = !DISubroutineType(types: !279)
!279 = !{!129, !96, !106, !129}
!280 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !281, file: !73, line: 199)
!281 = !DISubprogram(name: "wctob", scope: !79, file: !79, line: 288, type: !282, flags: DIFlagPrototyped, spFlags: 0)
!282 = !DISubroutineType(types: !283)
!283 = !{!14, !75}
!284 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !285, file: !73, line: 200)
!285 = !DISubprogram(name: "wmemcmp", scope: !79, file: !79, line: 258, type: !239, flags: DIFlagPrototyped, spFlags: 0)
!286 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !287, file: !73, line: 201)
!287 = !DISubprogram(name: "wmemcpy", scope: !79, file: !79, line: 262, type: !235, flags: DIFlagPrototyped, spFlags: 0)
!288 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !289, file: !73, line: 202)
!289 = !DISubprogram(name: "wmemmove", scope: !79, file: !79, line: 267, type: !290, flags: DIFlagPrototyped, spFlags: 0)
!290 = !DISubroutineType(types: !291)
!291 = !{!94, !94, !107, !129}
!292 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !293, file: !73, line: 203)
!293 = !DISubprogram(name: "wmemset", scope: !79, file: !79, line: 271, type: !294, flags: DIFlagPrototyped, spFlags: 0)
!294 = !DISubroutineType(types: !295)
!295 = !{!94, !94, !95, !129}
!296 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !297, file: !73, line: 204)
!297 = !DISubprogram(name: "wprintf", scope: !79, file: !79, line: 587, type: !298, flags: DIFlagPrototyped, spFlags: 0)
!298 = !DISubroutineType(types: !299)
!299 = !{!14, !106, null}
!300 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !301, file: !73, line: 205)
!301 = !DISubprogram(name: "wscanf", linkageName: "__isoc99_wscanf", scope: !79, file: !79, line: 644, type: !298, flags: DIFlagPrototyped, spFlags: 0)
!302 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !303, file: !73, line: 206)
!303 = !DISubprogram(name: "wcschr", scope: !79, file: !79, line: 164, type: !304, flags: DIFlagPrototyped, spFlags: 0)
!304 = !DISubroutineType(types: !305)
!305 = !{!94, !107, !95}
!306 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !307, file: !73, line: 207)
!307 = !DISubprogram(name: "wcspbrk", scope: !79, file: !79, line: 201, type: !308, flags: DIFlagPrototyped, spFlags: 0)
!308 = !DISubroutineType(types: !309)
!309 = !{!94, !107, !107}
!310 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !311, file: !73, line: 208)
!311 = !DISubprogram(name: "wcsrchr", scope: !79, file: !79, line: 174, type: !304, flags: DIFlagPrototyped, spFlags: 0)
!312 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !313, file: !73, line: 209)
!313 = !DISubprogram(name: "wcsstr", scope: !79, file: !79, line: 212, type: !308, flags: DIFlagPrototyped, spFlags: 0)
!314 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !315, file: !73, line: 210)
!315 = !DISubprogram(name: "wmemchr", scope: !79, file: !79, line: 253, type: !316, flags: DIFlagPrototyped, spFlags: 0)
!316 = !DISubroutineType(types: !317)
!317 = !{!94, !107, !95, !129}
!318 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !319, entity: !320, file: !73, line: 251)
!319 = !DINamespace(name: "__gnu_cxx", scope: null)
!320 = !DISubprogram(name: "wcstold", scope: !79, file: !79, line: 384, type: !321, flags: DIFlagPrototyped, spFlags: 0)
!321 = !DISubroutineType(types: !322)
!322 = !{!323, !106, !256}
!323 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!324 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !319, entity: !325, file: !73, line: 260)
!325 = !DISubprogram(name: "wcstoll", scope: !79, file: !79, line: 441, type: !326, flags: DIFlagPrototyped, spFlags: 0)
!326 = !DISubroutineType(types: !327)
!327 = !{!328, !106, !256, !14}
!328 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!329 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !319, entity: !330, file: !73, line: 261)
!330 = !DISubprogram(name: "wcstoull", scope: !79, file: !79, line: 448, type: !331, flags: DIFlagPrototyped, spFlags: 0)
!331 = !DISubroutineType(types: !332)
!332 = !{!333, !106, !256, !14}
!333 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!334 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !320, file: !73, line: 267)
!335 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !325, file: !73, line: 268)
!336 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !330, file: !73, line: 269)
!337 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !259, file: !73, line: 283)
!338 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !184, file: !73, line: 286)
!339 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !190, file: !73, line: 289)
!340 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !198, file: !73, line: 292)
!341 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !320, file: !73, line: 296)
!342 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !325, file: !73, line: 297)
!343 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !330, file: !73, line: 298)
!344 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !345, file: !346, line: 66)
!345 = !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !347, file: !346, line: 97, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!346 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/exception_ptr.h", directory: "", checksumkind: CSK_MD5, checksum: "314ad14748ccb9ff85c65d17ebb0828b")
!347 = !DINamespace(name: "__exception_ptr", scope: !56)
!348 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !347, entity: !349, file: !346, line: 85)
!349 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !56, file: !346, line: 81, type: !350, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!350 = !DISubroutineType(types: !351)
!351 = !{null, !345}
!352 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !353, file: !346, line: 243)
!353 = !DISubprogram(name: "swap", linkageName: "_ZNSt15__exception_ptr4swapERNS_13exception_ptrES1_", scope: !347, file: !346, line: 230, type: !354, flags: DIFlagPrototyped, spFlags: 0)
!354 = !DISubroutineType(types: !355)
!355 = !{null, !356, !356}
!356 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !345, size: 64)
!357 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !358, file: !360, line: 53)
!358 = !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !359, line: 51, size: 768, flags: DIFlagFwdDecl, identifier: "_ZTS5lconv")
!359 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "0cf373fc44eed8073800bdb9da87b72f")
!360 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/clocale", directory: "")
!361 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !362, file: !360, line: 54)
!362 = !DISubprogram(name: "setlocale", scope: !359, file: !359, line: 122, type: !363, flags: DIFlagPrototyped, spFlags: 0)
!363 = !DISubroutineType(types: !364)
!364 = !{!204, !14, !133}
!365 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !366, file: !360, line: 55)
!366 = !DISubprogram(name: "localeconv", scope: !359, file: !359, line: 125, type: !367, flags: DIFlagPrototyped, spFlags: 0)
!367 = !DISubroutineType(types: !368)
!368 = !{!369}
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!370 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !371, file: !375, line: 64)
!371 = !DISubprogram(name: "isalnum", scope: !372, file: !372, line: 108, type: !373, flags: DIFlagPrototyped, spFlags: 0)
!372 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "36575f934ef4fe7e9d50a3cb17bd5c66")
!373 = !DISubroutineType(types: !374)
!374 = !{!14, !14}
!375 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cctype", directory: "")
!376 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !377, file: !375, line: 65)
!377 = !DISubprogram(name: "isalpha", scope: !372, file: !372, line: 109, type: !373, flags: DIFlagPrototyped, spFlags: 0)
!378 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !379, file: !375, line: 66)
!379 = !DISubprogram(name: "iscntrl", scope: !372, file: !372, line: 110, type: !373, flags: DIFlagPrototyped, spFlags: 0)
!380 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !381, file: !375, line: 67)
!381 = !DISubprogram(name: "isdigit", scope: !372, file: !372, line: 111, type: !373, flags: DIFlagPrototyped, spFlags: 0)
!382 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !383, file: !375, line: 68)
!383 = !DISubprogram(name: "isgraph", scope: !372, file: !372, line: 113, type: !373, flags: DIFlagPrototyped, spFlags: 0)
!384 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !385, file: !375, line: 69)
!385 = !DISubprogram(name: "islower", scope: !372, file: !372, line: 112, type: !373, flags: DIFlagPrototyped, spFlags: 0)
!386 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !387, file: !375, line: 70)
!387 = !DISubprogram(name: "isprint", scope: !372, file: !372, line: 114, type: !373, flags: DIFlagPrototyped, spFlags: 0)
!388 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !389, file: !375, line: 71)
!389 = !DISubprogram(name: "ispunct", scope: !372, file: !372, line: 115, type: !373, flags: DIFlagPrototyped, spFlags: 0)
!390 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !391, file: !375, line: 72)
!391 = !DISubprogram(name: "isspace", scope: !372, file: !372, line: 116, type: !373, flags: DIFlagPrototyped, spFlags: 0)
!392 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !393, file: !375, line: 73)
!393 = !DISubprogram(name: "isupper", scope: !372, file: !372, line: 117, type: !373, flags: DIFlagPrototyped, spFlags: 0)
!394 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !395, file: !375, line: 74)
!395 = !DISubprogram(name: "isxdigit", scope: !372, file: !372, line: 118, type: !373, flags: DIFlagPrototyped, spFlags: 0)
!396 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !397, file: !375, line: 75)
!397 = !DISubprogram(name: "tolower", scope: !372, file: !372, line: 122, type: !373, flags: DIFlagPrototyped, spFlags: 0)
!398 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !399, file: !375, line: 76)
!399 = !DISubprogram(name: "toupper", scope: !372, file: !372, line: 125, type: !373, flags: DIFlagPrototyped, spFlags: 0)
!400 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !401, file: !375, line: 87)
!401 = !DISubprogram(name: "isblank", scope: !372, file: !372, line: 130, type: !373, flags: DIFlagPrototyped, spFlags: 0)
!402 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !403, entity: !404, file: !405, line: 58)
!403 = !DINamespace(name: "__gnu_debug", scope: null)
!404 = !DINamespace(name: "__debug", scope: !56)
!405 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/debug/debug.h", directory: "", checksumkind: CSK_MD5, checksum: "752210a319f5f5d356cc29cd1ce3cdc7")
!406 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !407, file: !409, line: 52)
!407 = !DISubprogram(name: "abs", scope: !408, file: !408, line: 840, type: !373, flags: DIFlagPrototyped, spFlags: 0)
!408 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!409 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/std_abs.h", directory: "")
!410 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !411, file: !413, line: 131)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !408, line: 62, baseType: !412)
!412 = !DICompositeType(tag: DW_TAG_structure_type, file: !408, line: 58, size: 64, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!413 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cstdlib", directory: "")
!414 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !415, file: !413, line: 132)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !408, line: 70, baseType: !416)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !408, line: 66, size: 128, flags: DIFlagTypePassByValue, elements: !417, identifier: "_ZTS6ldiv_t")
!417 = !{!418, !419}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !416, file: !408, line: 68, baseType: !271, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !416, file: !408, line: 69, baseType: !271, size: 64, offset: 64)
!420 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !421, file: !413, line: 134)
!421 = !DISubprogram(name: "abort", scope: !408, file: !408, line: 591, type: !422, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!422 = !DISubroutineType(types: !423)
!423 = !{null}
!424 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !425, file: !413, line: 136)
!425 = !DISubprogram(name: "aligned_alloc", scope: !408, file: !408, line: 586, type: !426, flags: DIFlagPrototyped, spFlags: 0)
!426 = !DISubroutineType(types: !427)
!427 = !{!181, !129, !129}
!428 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !429, file: !413, line: 138)
!429 = !DISubprogram(name: "atexit", scope: !408, file: !408, line: 595, type: !430, flags: DIFlagPrototyped, spFlags: 0)
!430 = !DISubroutineType(types: !431)
!431 = !{!14, !432}
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!433 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !434, file: !413, line: 141)
!434 = !DISubprogram(name: "at_quick_exit", scope: !408, file: !408, line: 600, type: !430, flags: DIFlagPrototyped, spFlags: 0)
!435 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !436, file: !413, line: 144)
!436 = !DISubprogram(name: "atof", scope: !408, file: !408, line: 101, type: !437, flags: DIFlagPrototyped, spFlags: 0)
!437 = !DISubroutineType(types: !438)
!438 = !{!255, !133}
!439 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !440, file: !413, line: 145)
!440 = !DISubprogram(name: "atoi", scope: !408, file: !408, line: 104, type: !441, flags: DIFlagPrototyped, spFlags: 0)
!441 = !DISubroutineType(types: !442)
!442 = !{!14, !133}
!443 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !444, file: !413, line: 146)
!444 = !DISubprogram(name: "atol", scope: !408, file: !408, line: 107, type: !445, flags: DIFlagPrototyped, spFlags: 0)
!445 = !DISubroutineType(types: !446)
!446 = !{!271, !133}
!447 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !448, file: !413, line: 147)
!448 = !DISubprogram(name: "bsearch", scope: !408, file: !408, line: 820, type: !449, flags: DIFlagPrototyped, spFlags: 0)
!449 = !DISubroutineType(types: !450)
!450 = !{!181, !451, !451, !129, !129, !453}
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !408, line: 808, baseType: !454)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DISubroutineType(types: !456)
!456 = !{!14, !451, !451}
!457 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !458, file: !413, line: 148)
!458 = !DISubprogram(name: "calloc", scope: !408, file: !408, line: 542, type: !426, flags: DIFlagPrototyped, spFlags: 0)
!459 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !460, file: !413, line: 149)
!460 = !DISubprogram(name: "div", scope: !408, file: !408, line: 852, type: !461, flags: DIFlagPrototyped, spFlags: 0)
!461 = !DISubroutineType(types: !462)
!462 = !{!411, !14, !14}
!463 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !464, file: !413, line: 150)
!464 = !DISubprogram(name: "exit", scope: !408, file: !408, line: 617, type: !465, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!465 = !DISubroutineType(types: !466)
!466 = !{null, !14}
!467 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !468, file: !413, line: 151)
!468 = !DISubprogram(name: "free", scope: !408, file: !408, line: 565, type: !469, flags: DIFlagPrototyped, spFlags: 0)
!469 = !DISubroutineType(types: !470)
!470 = !{null, !181}
!471 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !472, file: !413, line: 152)
!472 = !DISubprogram(name: "getenv", scope: !408, file: !408, line: 634, type: !473, flags: DIFlagPrototyped, spFlags: 0)
!473 = !DISubroutineType(types: !474)
!474 = !{!204, !133}
!475 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !476, file: !413, line: 153)
!476 = !DISubprogram(name: "labs", scope: !408, file: !408, line: 841, type: !477, flags: DIFlagPrototyped, spFlags: 0)
!477 = !DISubroutineType(types: !478)
!478 = !{!271, !271}
!479 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !480, file: !413, line: 154)
!480 = !DISubprogram(name: "ldiv", scope: !408, file: !408, line: 854, type: !481, flags: DIFlagPrototyped, spFlags: 0)
!481 = !DISubroutineType(types: !482)
!482 = !{!415, !271, !271}
!483 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !484, file: !413, line: 155)
!484 = !DISubprogram(name: "malloc", scope: !408, file: !408, line: 539, type: !485, flags: DIFlagPrototyped, spFlags: 0)
!485 = !DISubroutineType(types: !486)
!486 = !{!181, !129}
!487 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !488, file: !413, line: 157)
!488 = !DISubprogram(name: "mblen", scope: !408, file: !408, line: 922, type: !489, flags: DIFlagPrototyped, spFlags: 0)
!489 = !DISubroutineType(types: !490)
!490 = !{!14, !133, !129}
!491 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !492, file: !413, line: 158)
!492 = !DISubprogram(name: "mbstowcs", scope: !408, file: !408, line: 933, type: !493, flags: DIFlagPrototyped, spFlags: 0)
!493 = !DISubroutineType(types: !494)
!494 = !{!129, !96, !132, !129}
!495 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !496, file: !413, line: 159)
!496 = !DISubprogram(name: "mbtowc", scope: !408, file: !408, line: 925, type: !497, flags: DIFlagPrototyped, spFlags: 0)
!497 = !DISubroutineType(types: !498)
!498 = !{!14, !96, !132, !129}
!499 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !500, file: !413, line: 161)
!500 = !DISubprogram(name: "qsort", scope: !408, file: !408, line: 830, type: !501, flags: DIFlagPrototyped, spFlags: 0)
!501 = !DISubroutineType(types: !502)
!502 = !{null, !181, !129, !129, !453}
!503 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !504, file: !413, line: 164)
!504 = !DISubprogram(name: "quick_exit", scope: !408, file: !408, line: 623, type: !465, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!505 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !506, file: !413, line: 167)
!506 = !DISubprogram(name: "rand", scope: !408, file: !408, line: 453, type: !12, flags: DIFlagPrototyped, spFlags: 0)
!507 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !508, file: !413, line: 168)
!508 = !DISubprogram(name: "realloc", scope: !408, file: !408, line: 550, type: !509, flags: DIFlagPrototyped, spFlags: 0)
!509 = !DISubroutineType(types: !510)
!510 = !{!181, !181, !129}
!511 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !512, file: !413, line: 169)
!512 = !DISubprogram(name: "srand", scope: !408, file: !408, line: 455, type: !513, flags: DIFlagPrototyped, spFlags: 0)
!513 = !DISubroutineType(types: !514)
!514 = !{null, !68}
!515 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !516, file: !413, line: 170)
!516 = !DISubprogram(name: "strtod", scope: !408, file: !408, line: 117, type: !517, flags: DIFlagPrototyped, spFlags: 0)
!517 = !DISubroutineType(types: !518)
!518 = !{!255, !132, !519}
!519 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !520)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!521 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !522, file: !413, line: 171)
!522 = !DISubprogram(name: "strtol", scope: !408, file: !408, line: 176, type: !523, flags: DIFlagPrototyped, spFlags: 0)
!523 = !DISubroutineType(types: !524)
!524 = !{!271, !132, !519, !14}
!525 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !526, file: !413, line: 172)
!526 = !DISubprogram(name: "strtoul", scope: !408, file: !408, line: 180, type: !527, flags: DIFlagPrototyped, spFlags: 0)
!527 = !DISubroutineType(types: !528)
!528 = !{!131, !132, !519, !14}
!529 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !530, file: !413, line: 173)
!530 = !DISubprogram(name: "system", scope: !408, file: !408, line: 784, type: !441, flags: DIFlagPrototyped, spFlags: 0)
!531 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !532, file: !413, line: 175)
!532 = !DISubprogram(name: "wcstombs", scope: !408, file: !408, line: 936, type: !533, flags: DIFlagPrototyped, spFlags: 0)
!533 = !DISubroutineType(types: !534)
!534 = !{!129, !203, !106, !129}
!535 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !536, file: !413, line: 176)
!536 = !DISubprogram(name: "wctomb", scope: !408, file: !408, line: 929, type: !537, flags: DIFlagPrototyped, spFlags: 0)
!537 = !DISubroutineType(types: !538)
!538 = !{!14, !204, !95}
!539 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !319, entity: !540, file: !413, line: 204)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !408, line: 80, baseType: !541)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !408, line: 76, size: 128, flags: DIFlagTypePassByValue, elements: !542, identifier: "_ZTS7lldiv_t")
!542 = !{!543, !544}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !541, file: !408, line: 78, baseType: !328, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !541, file: !408, line: 79, baseType: !328, size: 64, offset: 64)
!545 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !319, entity: !546, file: !413, line: 210)
!546 = !DISubprogram(name: "_Exit", scope: !408, file: !408, line: 629, type: !465, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!547 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !319, entity: !548, file: !413, line: 214)
!548 = !DISubprogram(name: "llabs", scope: !408, file: !408, line: 844, type: !549, flags: DIFlagPrototyped, spFlags: 0)
!549 = !DISubroutineType(types: !550)
!550 = !{!328, !328}
!551 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !319, entity: !552, file: !413, line: 220)
!552 = !DISubprogram(name: "lldiv", scope: !408, file: !408, line: 858, type: !553, flags: DIFlagPrototyped, spFlags: 0)
!553 = !DISubroutineType(types: !554)
!554 = !{!540, !328, !328}
!555 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !319, entity: !556, file: !413, line: 231)
!556 = !DISubprogram(name: "atoll", scope: !408, file: !408, line: 112, type: !557, flags: DIFlagPrototyped, spFlags: 0)
!557 = !DISubroutineType(types: !558)
!558 = !{!328, !133}
!559 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !319, entity: !560, file: !413, line: 232)
!560 = !DISubprogram(name: "strtoll", scope: !408, file: !408, line: 200, type: !561, flags: DIFlagPrototyped, spFlags: 0)
!561 = !DISubroutineType(types: !562)
!562 = !{!328, !132, !519, !14}
!563 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !319, entity: !564, file: !413, line: 233)
!564 = !DISubprogram(name: "strtoull", scope: !408, file: !408, line: 205, type: !565, flags: DIFlagPrototyped, spFlags: 0)
!565 = !DISubroutineType(types: !566)
!566 = !{!333, !132, !519, !14}
!567 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !319, entity: !568, file: !413, line: 235)
!568 = !DISubprogram(name: "strtof", scope: !408, file: !408, line: 123, type: !569, flags: DIFlagPrototyped, spFlags: 0)
!569 = !DISubroutineType(types: !570)
!570 = !{!262, !132, !519}
!571 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !319, entity: !572, file: !413, line: 236)
!572 = !DISubprogram(name: "strtold", scope: !408, file: !408, line: 126, type: !573, flags: DIFlagPrototyped, spFlags: 0)
!573 = !DISubroutineType(types: !574)
!574 = !{!323, !132, !519}
!575 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !540, file: !413, line: 244)
!576 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !546, file: !413, line: 246)
!577 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !548, file: !413, line: 248)
!578 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !579, file: !413, line: 249)
!579 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !319, file: !413, line: 217, type: !553, flags: DIFlagPrototyped, spFlags: 0)
!580 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !552, file: !413, line: 250)
!581 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !556, file: !413, line: 252)
!582 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !568, file: !413, line: 253)
!583 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !560, file: !413, line: 254)
!584 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !564, file: !413, line: 255)
!585 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !572, file: !413, line: 256)
!586 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !587, file: !589, line: 98)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !588, line: 7, baseType: !89)
!588 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!589 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cstdio", directory: "")
!590 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !591, file: !589, line: 99)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !592, line: 84, baseType: !593)
!592 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fpos_t", file: !594, line: 14, baseType: !595)
!594 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h", directory: "", checksumkind: CSK_MD5, checksum: "32de8bdaf3551a6c0a9394f9af4389ce")
!595 = !DICompositeType(tag: DW_TAG_structure_type, name: "_G_fpos_t", file: !594, line: 10, size: 128, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
!596 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !597, file: !589, line: 101)
!597 = !DISubprogram(name: "clearerr", scope: !592, file: !592, line: 757, type: !598, flags: DIFlagPrototyped, spFlags: 0)
!598 = !DISubroutineType(types: !599)
!599 = !{null, !600}
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!601 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !602, file: !589, line: 102)
!602 = !DISubprogram(name: "fclose", scope: !592, file: !592, line: 213, type: !603, flags: DIFlagPrototyped, spFlags: 0)
!603 = !DISubroutineType(types: !604)
!604 = !{!14, !600}
!605 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !606, file: !589, line: 103)
!606 = !DISubprogram(name: "feof", scope: !592, file: !592, line: 759, type: !603, flags: DIFlagPrototyped, spFlags: 0)
!607 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !608, file: !589, line: 104)
!608 = !DISubprogram(name: "ferror", scope: !592, file: !592, line: 761, type: !603, flags: DIFlagPrototyped, spFlags: 0)
!609 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !610, file: !589, line: 105)
!610 = !DISubprogram(name: "fflush", scope: !592, file: !592, line: 218, type: !603, flags: DIFlagPrototyped, spFlags: 0)
!611 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !612, file: !589, line: 106)
!612 = !DISubprogram(name: "fgetc", scope: !592, file: !592, line: 485, type: !603, flags: DIFlagPrototyped, spFlags: 0)
!613 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !614, file: !589, line: 107)
!614 = !DISubprogram(name: "fgetpos", scope: !592, file: !592, line: 731, type: !615, flags: DIFlagPrototyped, spFlags: 0)
!615 = !DISubroutineType(types: !616)
!616 = !{!14, !617, !618}
!617 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !600)
!618 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !619)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!620 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !621, file: !589, line: 108)
!621 = !DISubprogram(name: "fgets", scope: !592, file: !592, line: 564, type: !622, flags: DIFlagPrototyped, spFlags: 0)
!622 = !DISubroutineType(types: !623)
!623 = !{!204, !203, !14, !617}
!624 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !625, file: !589, line: 109)
!625 = !DISubprogram(name: "fopen", scope: !592, file: !592, line: 246, type: !626, flags: DIFlagPrototyped, spFlags: 0)
!626 = !DISubroutineType(types: !627)
!627 = !{!600, !132, !132}
!628 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !629, file: !589, line: 110)
!629 = !DISubprogram(name: "fprintf", scope: !592, file: !592, line: 326, type: !630, flags: DIFlagPrototyped, spFlags: 0)
!630 = !DISubroutineType(types: !631)
!631 = !{!14, !617, !132, null}
!632 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !633, file: !589, line: 111)
!633 = !DISubprogram(name: "fputc", scope: !592, file: !592, line: 521, type: !634, flags: DIFlagPrototyped, spFlags: 0)
!634 = !DISubroutineType(types: !635)
!635 = !{!14, !14, !600}
!636 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !637, file: !589, line: 112)
!637 = !DISubprogram(name: "fputs", scope: !592, file: !592, line: 626, type: !638, flags: DIFlagPrototyped, spFlags: 0)
!638 = !DISubroutineType(types: !639)
!639 = !{!14, !132, !617}
!640 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !641, file: !589, line: 113)
!641 = !DISubprogram(name: "fread", scope: !592, file: !592, line: 646, type: !642, flags: DIFlagPrototyped, spFlags: 0)
!642 = !DISubroutineType(types: !643)
!643 = !{!129, !644, !129, !129, !617}
!644 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !181)
!645 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !646, file: !589, line: 114)
!646 = !DISubprogram(name: "freopen", scope: !592, file: !592, line: 252, type: !647, flags: DIFlagPrototyped, spFlags: 0)
!647 = !DISubroutineType(types: !648)
!648 = !{!600, !132, !132, !617}
!649 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !650, file: !589, line: 115)
!650 = !DISubprogram(name: "fscanf", linkageName: "__isoc99_fscanf", scope: !592, file: !592, line: 407, type: !630, flags: DIFlagPrototyped, spFlags: 0)
!651 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !652, file: !589, line: 116)
!652 = !DISubprogram(name: "fseek", scope: !592, file: !592, line: 684, type: !653, flags: DIFlagPrototyped, spFlags: 0)
!653 = !DISubroutineType(types: !654)
!654 = !{!14, !600, !271, !14}
!655 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !656, file: !589, line: 117)
!656 = !DISubprogram(name: "fsetpos", scope: !592, file: !592, line: 736, type: !657, flags: DIFlagPrototyped, spFlags: 0)
!657 = !DISubroutineType(types: !658)
!658 = !{!14, !600, !659}
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !591)
!661 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !662, file: !589, line: 118)
!662 = !DISubprogram(name: "ftell", scope: !592, file: !592, line: 689, type: !663, flags: DIFlagPrototyped, spFlags: 0)
!663 = !DISubroutineType(types: !664)
!664 = !{!271, !600}
!665 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !666, file: !589, line: 119)
!666 = !DISubprogram(name: "fwrite", scope: !592, file: !592, line: 652, type: !667, flags: DIFlagPrototyped, spFlags: 0)
!667 = !DISubroutineType(types: !668)
!668 = !{!129, !669, !129, !129, !617}
!669 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !451)
!670 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !671, file: !589, line: 120)
!671 = !DISubprogram(name: "getc", scope: !592, file: !592, line: 486, type: !603, flags: DIFlagPrototyped, spFlags: 0)
!672 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !673, file: !589, line: 121)
!673 = !DISubprogram(name: "getchar", scope: !592, file: !592, line: 492, type: !12, flags: DIFlagPrototyped, spFlags: 0)
!674 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !675, file: !589, line: 126)
!675 = !DISubprogram(name: "perror", scope: !592, file: !592, line: 775, type: !676, flags: DIFlagPrototyped, spFlags: 0)
!676 = !DISubroutineType(types: !677)
!677 = !{null, !133}
!678 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !679, file: !589, line: 127)
!679 = !DISubprogram(name: "printf", scope: !592, file: !592, line: 332, type: !680, flags: DIFlagPrototyped, spFlags: 0)
!680 = !DISubroutineType(types: !681)
!681 = !{!14, !132, null}
!682 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !683, file: !589, line: 128)
!683 = !DISubprogram(name: "putc", scope: !592, file: !592, line: 522, type: !634, flags: DIFlagPrototyped, spFlags: 0)
!684 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !685, file: !589, line: 129)
!685 = !DISubprogram(name: "putchar", scope: !592, file: !592, line: 528, type: !373, flags: DIFlagPrototyped, spFlags: 0)
!686 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !687, file: !589, line: 130)
!687 = !DISubprogram(name: "puts", scope: !592, file: !592, line: 632, type: !441, flags: DIFlagPrototyped, spFlags: 0)
!688 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !689, file: !589, line: 131)
!689 = !DISubprogram(name: "remove", scope: !592, file: !592, line: 146, type: !441, flags: DIFlagPrototyped, spFlags: 0)
!690 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !691, file: !589, line: 132)
!691 = !DISubprogram(name: "rename", scope: !592, file: !592, line: 148, type: !692, flags: DIFlagPrototyped, spFlags: 0)
!692 = !DISubroutineType(types: !693)
!693 = !{!14, !133, !133}
!694 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !695, file: !589, line: 133)
!695 = !DISubprogram(name: "rewind", scope: !592, file: !592, line: 694, type: !598, flags: DIFlagPrototyped, spFlags: 0)
!696 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !697, file: !589, line: 134)
!697 = !DISubprogram(name: "scanf", linkageName: "__isoc99_scanf", scope: !592, file: !592, line: 410, type: !680, flags: DIFlagPrototyped, spFlags: 0)
!698 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !699, file: !589, line: 135)
!699 = !DISubprogram(name: "setbuf", scope: !592, file: !592, line: 304, type: !700, flags: DIFlagPrototyped, spFlags: 0)
!700 = !DISubroutineType(types: !701)
!701 = !{null, !617, !203}
!702 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !703, file: !589, line: 136)
!703 = !DISubprogram(name: "setvbuf", scope: !592, file: !592, line: 308, type: !704, flags: DIFlagPrototyped, spFlags: 0)
!704 = !DISubroutineType(types: !705)
!705 = !{!14, !617, !203, !14, !129}
!706 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !707, file: !589, line: 137)
!707 = !DISubprogram(name: "sprintf", scope: !592, file: !592, line: 334, type: !708, flags: DIFlagPrototyped, spFlags: 0)
!708 = !DISubroutineType(types: !709)
!709 = !{!14, !203, !132, null}
!710 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !711, file: !589, line: 138)
!711 = !DISubprogram(name: "sscanf", linkageName: "__isoc99_sscanf", scope: !592, file: !592, line: 412, type: !712, flags: DIFlagPrototyped, spFlags: 0)
!712 = !DISubroutineType(types: !713)
!713 = !{!14, !132, !132, null}
!714 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !715, file: !589, line: 139)
!715 = !DISubprogram(name: "tmpfile", scope: !592, file: !592, line: 173, type: !716, flags: DIFlagPrototyped, spFlags: 0)
!716 = !DISubroutineType(types: !717)
!717 = !{!600}
!718 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !719, file: !589, line: 141)
!719 = !DISubprogram(name: "tmpnam", scope: !592, file: !592, line: 187, type: !720, flags: DIFlagPrototyped, spFlags: 0)
!720 = !DISubroutineType(types: !721)
!721 = !{!204, !204}
!722 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !723, file: !589, line: 143)
!723 = !DISubprogram(name: "ungetc", scope: !592, file: !592, line: 639, type: !634, flags: DIFlagPrototyped, spFlags: 0)
!724 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !725, file: !589, line: 144)
!725 = !DISubprogram(name: "vfprintf", scope: !592, file: !592, line: 341, type: !726, flags: DIFlagPrototyped, spFlags: 0)
!726 = !DISubroutineType(types: !727)
!727 = !{!14, !617, !132, !174}
!728 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !729, file: !589, line: 145)
!729 = !DISubprogram(name: "vprintf", scope: !592, file: !592, line: 347, type: !730, flags: DIFlagPrototyped, spFlags: 0)
!730 = !DISubroutineType(types: !731)
!731 = !{!14, !132, !174}
!732 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !733, file: !589, line: 146)
!733 = !DISubprogram(name: "vsprintf", scope: !592, file: !592, line: 349, type: !734, flags: DIFlagPrototyped, spFlags: 0)
!734 = !DISubroutineType(types: !735)
!735 = !{!14, !203, !132, !174}
!736 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !319, entity: !737, file: !589, line: 175)
!737 = !DISubprogram(name: "snprintf", scope: !592, file: !592, line: 354, type: !738, flags: DIFlagPrototyped, spFlags: 0)
!738 = !DISubroutineType(types: !739)
!739 = !{!14, !203, !129, !132, null}
!740 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !319, entity: !741, file: !589, line: 176)
!741 = !DISubprogram(name: "vfscanf", linkageName: "__isoc99_vfscanf", scope: !592, file: !592, line: 451, type: !726, flags: DIFlagPrototyped, spFlags: 0)
!742 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !319, entity: !743, file: !589, line: 177)
!743 = !DISubprogram(name: "vscanf", linkageName: "__isoc99_vscanf", scope: !592, file: !592, line: 456, type: !730, flags: DIFlagPrototyped, spFlags: 0)
!744 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !319, entity: !745, file: !589, line: 178)
!745 = !DISubprogram(name: "vsnprintf", scope: !592, file: !592, line: 358, type: !746, flags: DIFlagPrototyped, spFlags: 0)
!746 = !DISubroutineType(types: !747)
!747 = !{!14, !203, !129, !132, !174}
!748 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !319, entity: !749, file: !589, line: 179)
!749 = !DISubprogram(name: "vsscanf", linkageName: "__isoc99_vsscanf", scope: !592, file: !592, line: 459, type: !750, flags: DIFlagPrototyped, spFlags: 0)
!750 = !DISubroutineType(types: !751)
!751 = !{!14, !132, !132, !174}
!752 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !737, file: !589, line: 185)
!753 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !741, file: !589, line: 186)
!754 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !743, file: !589, line: 187)
!755 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !745, file: !589, line: 188)
!756 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !749, file: !589, line: 189)
!757 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !758, file: !764, line: 58)
!758 = !DIDerivedType(tag: DW_TAG_typedef, name: "max_align_t", file: !759, line: 24, baseType: !760)
!759 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/__stddef_max_align_t.h", directory: "/home/cs22mtech12008", checksumkind: CSK_MD5, checksum: "48e8e2456f77e6cda35d245130fa7259")
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !759, line: 19, size: 256, flags: DIFlagTypePassByValue, elements: !761, identifier: "_ZTS11max_align_t")
!761 = !{!762, !763}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "__clang_max_align_nonce1", scope: !760, file: !759, line: 20, baseType: !328, size: 64, align: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "__clang_max_align_nonce2", scope: !760, file: !759, line: 22, baseType: !323, size: 128, align: 128, offset: 128)
!764 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cstddef", directory: "")
!765 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !766, file: !772, line: 82)
!766 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctrans_t", file: !767, line: 48, baseType: !768)
!767 = !DIFile(filename: "/usr/include/wctype.h", directory: "", checksumkind: CSK_MD5, checksum: "e83097fbf57cc71ea472db59df3ba75d")
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !770)
!770 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !771, line: 41, baseType: !14)
!771 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!772 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cwctype", directory: "")
!773 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !774, file: !772, line: 83)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctype_t", file: !775, line: 38, baseType: !131)
!775 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "3598b9d23ef5d76319026b46e316b55f")
!776 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !75, file: !772, line: 84)
!777 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !778, file: !772, line: 86)
!778 = !DISubprogram(name: "iswalnum", scope: !775, file: !775, line: 95, type: !282, flags: DIFlagPrototyped, spFlags: 0)
!779 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !780, file: !772, line: 87)
!780 = !DISubprogram(name: "iswalpha", scope: !775, file: !775, line: 101, type: !282, flags: DIFlagPrototyped, spFlags: 0)
!781 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !782, file: !772, line: 89)
!782 = !DISubprogram(name: "iswblank", scope: !775, file: !775, line: 146, type: !282, flags: DIFlagPrototyped, spFlags: 0)
!783 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !784, file: !772, line: 91)
!784 = !DISubprogram(name: "iswcntrl", scope: !775, file: !775, line: 104, type: !282, flags: DIFlagPrototyped, spFlags: 0)
!785 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !786, file: !772, line: 92)
!786 = !DISubprogram(name: "iswctype", scope: !775, file: !775, line: 159, type: !787, flags: DIFlagPrototyped, spFlags: 0)
!787 = !DISubroutineType(types: !788)
!788 = !{!14, !75, !774}
!789 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !790, file: !772, line: 93)
!790 = !DISubprogram(name: "iswdigit", scope: !775, file: !775, line: 108, type: !282, flags: DIFlagPrototyped, spFlags: 0)
!791 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !792, file: !772, line: 94)
!792 = !DISubprogram(name: "iswgraph", scope: !775, file: !775, line: 112, type: !282, flags: DIFlagPrototyped, spFlags: 0)
!793 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !794, file: !772, line: 95)
!794 = !DISubprogram(name: "iswlower", scope: !775, file: !775, line: 117, type: !282, flags: DIFlagPrototyped, spFlags: 0)
!795 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !796, file: !772, line: 96)
!796 = !DISubprogram(name: "iswprint", scope: !775, file: !775, line: 120, type: !282, flags: DIFlagPrototyped, spFlags: 0)
!797 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !798, file: !772, line: 97)
!798 = !DISubprogram(name: "iswpunct", scope: !775, file: !775, line: 125, type: !282, flags: DIFlagPrototyped, spFlags: 0)
!799 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !800, file: !772, line: 98)
!800 = !DISubprogram(name: "iswspace", scope: !775, file: !775, line: 130, type: !282, flags: DIFlagPrototyped, spFlags: 0)
!801 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !802, file: !772, line: 99)
!802 = !DISubprogram(name: "iswupper", scope: !775, file: !775, line: 135, type: !282, flags: DIFlagPrototyped, spFlags: 0)
!803 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !804, file: !772, line: 100)
!804 = !DISubprogram(name: "iswxdigit", scope: !775, file: !775, line: 140, type: !282, flags: DIFlagPrototyped, spFlags: 0)
!805 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !806, file: !772, line: 101)
!806 = !DISubprogram(name: "towctrans", scope: !767, file: !767, line: 55, type: !807, flags: DIFlagPrototyped, spFlags: 0)
!807 = !DISubroutineType(types: !808)
!808 = !{!75, !75, !766}
!809 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !810, file: !772, line: 102)
!810 = !DISubprogram(name: "towlower", scope: !775, file: !775, line: 166, type: !811, flags: DIFlagPrototyped, spFlags: 0)
!811 = !DISubroutineType(types: !812)
!812 = !{!75, !75}
!813 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !814, file: !772, line: 103)
!814 = !DISubprogram(name: "towupper", scope: !775, file: !775, line: 169, type: !811, flags: DIFlagPrototyped, spFlags: 0)
!815 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !816, file: !772, line: 104)
!816 = !DISubprogram(name: "wctrans", scope: !767, file: !767, line: 52, type: !817, flags: DIFlagPrototyped, spFlags: 0)
!817 = !DISubroutineType(types: !818)
!818 = !{!766, !133}
!819 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !56, entity: !820, file: !772, line: 105)
!820 = !DISubprogram(name: "wctype", scope: !775, file: !775, line: 155, type: !821, flags: DIFlagPrototyped, spFlags: 0)
!821 = !DISubroutineType(types: !822)
!822 = !{!774, !133}
!823 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !824, line: 27, baseType: !131)
!824 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "2d764266ce95ab26d4a4767c2ec78176")
!825 = !{i32 7, !"Dwarf Version", i32 5}
!826 = !{i32 2, !"Debug Info Version", i32 3}
!827 = !{i32 1, !"wchar_size", i32 4}
!828 = !{i32 8, !"PIC Level", i32 2}
!829 = !{i32 7, !"PIE Level", i32 2}
!830 = !{i32 7, !"uwtable", i32 2}
!831 = !{i32 7, !"frame-pointer", i32 2}
!832 = !{!"clang version 16.0.0"}
!833 = distinct !DISubprogram(name: "runThread", linkageName: "_Z9runThreadPv", scope: !7, file: !7, line: 35, type: !834, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !836)
!834 = !DISubroutineType(types: !835)
!835 = !{!181, !181}
!836 = !{}
!837 = !DILocalVariable(name: "arg", arg: 1, scope: !833, file: !7, line: 35, type: !181)
!838 = !DILocation(line: 35, column: 23, scope: !833)
!839 = !DILocalVariable(name: "basePtr", scope: !833, file: !7, line: 36, type: !5)
!840 = !DILocation(line: 36, column: 8, scope: !833)
!841 = !DILocation(line: 36, column: 34, scope: !833)
!842 = !DILocation(line: 37, column: 5, scope: !833)
!843 = !DILocation(line: 37, column: 14, scope: !833)
!844 = !DILocation(line: 38, column: 5, scope: !833)
!845 = !DILocation(line: 38, column: 14, scope: !833)
!846 = !DILocalVariable(name: "a2Ptr", scope: !833, file: !7, line: 40, type: !21)
!847 = !DILocation(line: 40, column: 9, scope: !833)
!848 = !DILocation(line: 40, column: 39, scope: !833)
!849 = !DILocation(line: 41, column: 5, scope: !833)
!850 = !DILocation(line: 41, column: 12, scope: !833)
!851 = !DILocalVariable(name: "a1Ptr", scope: !833, file: !7, line: 43, type: !23)
!852 = !DILocation(line: 43, column: 9, scope: !833)
!853 = !DILocation(line: 43, column: 39, scope: !833)
!854 = !DILocation(line: 44, column: 5, scope: !833)
!855 = !DILocation(line: 44, column: 12, scope: !833)
!856 = !DILocation(line: 46, column: 5, scope: !833)
!857 = distinct !DISubprogram(name: "m2", linkageName: "_ZN1A2m2Ev", scope: !6, file: !7, line: 12, type: !17, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !20, retainedNodes: !836)
!858 = !DILocalVariable(name: "this", arg: 1, scope: !857, type: !5, flags: DIFlagArtificial | DIFlagObjectPointer)
!859 = !DILocation(line: 0, scope: !857)
!860 = !DILocation(line: 13, column: 19, scope: !857)
!861 = !DILocation(line: 13, column: 40, scope: !857)
!862 = !DILocation(line: 13, column: 38, scope: !857)
!863 = !DILocation(line: 13, column: 41, scope: !857)
!864 = !DILocation(line: 14, column: 5, scope: !857)
!865 = distinct !DISubprogram(name: "m2", linkageName: "_ZN2A22m2Ev", scope: !22, file: !7, line: 28, type: !866, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !869, retainedNodes: !836)
!866 = !DISubroutineType(types: !867)
!867 = !{null, !868}
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!869 = !DISubprogram(name: "m2", linkageName: "_ZN2A22m2Ev", scope: !22, file: !7, line: 28, type: !866, scopeLine: 28, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!870 = !DILocalVariable(name: "this", arg: 1, scope: !865, type: !21, flags: DIFlagArtificial | DIFlagObjectPointer)
!871 = !DILocation(line: 0, scope: !865)
!872 = !DILocation(line: 29, column: 19, scope: !865)
!873 = !DILocation(line: 29, column: 38, scope: !865)
!874 = !DILocation(line: 29, column: 36, scope: !865)
!875 = !DILocation(line: 29, column: 40, scope: !865)
!876 = !DILocation(line: 30, column: 5, scope: !865)
!877 = distinct !DISubprogram(name: "createThread", linkageName: "_Z12createThreadv", scope: !7, file: !7, line: 49, type: !422, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !836)
!878 = !DILocalVariable(name: "a1Obj", scope: !877, file: !7, line: 50, type: !24)
!879 = !DILocation(line: 50, column: 8, scope: !877)
!880 = !DILocalVariable(name: "basePtr", scope: !877, file: !7, line: 51, type: !5)
!881 = !DILocation(line: 51, column: 8, scope: !877)
!882 = !DILocation(line: 52, column: 45, scope: !877)
!883 = !DILocation(line: 52, column: 5, scope: !877)
!884 = !DILocation(line: 53, column: 18, scope: !877)
!885 = !DILocation(line: 53, column: 5, scope: !877)
!886 = !DILocation(line: 54, column: 1, scope: !877)
!887 = distinct !DISubprogram(name: "A1", linkageName: "_ZN2A1C2Ev", scope: !24, file: !7, line: 17, type: !29, scopeLine: 17, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !888, retainedNodes: !836)
!888 = !DISubprogram(name: "A1", scope: !24, type: !29, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!889 = !DILocalVariable(name: "this", arg: 1, scope: !887, type: !23, flags: DIFlagArtificial | DIFlagObjectPointer)
!890 = !DILocation(line: 0, scope: !887)
!891 = !DILocation(line: 17, column: 7, scope: !887)
!892 = !DILocation(line: 19, column: 5, scope: !887)
!893 = distinct !DISubprogram(name: "main", scope: !7, file: !7, line: 56, type: !12, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !836)
!894 = !DILocation(line: 57, column: 5, scope: !893)
!895 = !DILocation(line: 58, column: 5, scope: !893)
!896 = distinct !DISubprogram(name: "A", linkageName: "_ZN1AC2Ev", scope: !6, file: !7, line: 5, type: !17, scopeLine: 5, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !897, retainedNodes: !836)
!897 = !DISubprogram(name: "A", scope: !6, type: !17, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!898 = !DILocalVariable(name: "this", arg: 1, scope: !896, type: !5, flags: DIFlagArtificial | DIFlagObjectPointer)
!899 = !DILocation(line: 0, scope: !896)
!900 = !DILocation(line: 5, column: 7, scope: !896)
!901 = !DILocation(line: 7, column: 9, scope: !896)
!902 = distinct !DISubprogram(name: "m1", linkageName: "_ZN2A12m1Ev", scope: !24, file: !7, line: 20, type: !29, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !28, retainedNodes: !836)
!903 = !DILocalVariable(name: "this", arg: 1, scope: !902, type: !23, flags: DIFlagArtificial | DIFlagObjectPointer)
!904 = !DILocation(line: 0, scope: !902)
!905 = !DILocation(line: 21, column: 19, scope: !902)
!906 = !DILocation(line: 21, column: 38, scope: !902)
!907 = !DILocation(line: 21, column: 36, scope: !902)
!908 = !DILocation(line: 21, column: 40, scope: !902)
!909 = !DILocation(line: 22, column: 5, scope: !902)
!910 = distinct !DISubprogram(name: "m1", linkageName: "_ZN1A2m1Ev", scope: !6, file: !7, line: 8, type: !17, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !16, retainedNodes: !836)
!911 = !DILocalVariable(name: "this", arg: 1, scope: !910, type: !5, flags: DIFlagArtificial | DIFlagObjectPointer)
!912 = !DILocation(line: 0, scope: !910)
!913 = !DILocation(line: 9, column: 19, scope: !910)
!914 = !DILocation(line: 9, column: 40, scope: !910)
!915 = !DILocation(line: 9, column: 38, scope: !910)
!916 = !DILocation(line: 9, column: 41, scope: !910)
!917 = !DILocation(line: 10, column: 5, scope: !910)
