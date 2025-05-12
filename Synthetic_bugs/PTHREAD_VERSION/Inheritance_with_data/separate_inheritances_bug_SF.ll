; ModuleID = '/home/cs22mtech12008/Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Inheritance_with_data/separate_inheritances_bug_SF.cpp'
source_filename = "/home/cs22mtech12008/Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Inheritance_with_data/separate_inheritances_bug_SF.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%class.Derived1 = type { %class.Base1, i32 }
%class.Base1 = type { i32 }
%class.Derived2 = type { %class.Base2.base, i32 }
%class.Base2.base = type <{ ptr, i32 }>
%class.Base2 = type <{ ptr, i32, [4 x i8] }>

$_ZN8Derived1C2Ev = comdat any

$_ZN8Derived2C2Ev = comdat any

$_ZN5Base1C2Ev = comdat any

$_ZN5Base2C2Ev = comdat any

$_ZN8Derived27displayEv = comdat any

$_ZN5Base27displayEv = comdat any

$_ZTV8Derived2 = comdat any

$_ZTS8Derived2 = comdat any

$_ZTS5Base2 = comdat any

$_ZTI5Base2 = comdat any

$_ZTI8Derived2 = comdat any

$_ZTV5Base2 = comdat any

@derived2Ptr = dso_local global ptr null, align 8, !dbg !0
@t1 = dso_local global i64 0, align 8, !dbg !44
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [23 x i8] c"Main thread finishes.\0A\00", align 1, !dbg !49
@_ZTV8Derived2 = linkonce_odr dso_local unnamed_addr constant { [3 x ptr] } { [3 x ptr] [ptr null, ptr @_ZTI8Derived2, ptr @_ZN8Derived27displayEv] }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global ptr
@_ZTS8Derived2 = linkonce_odr dso_local constant [10 x i8] c"8Derived2\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global ptr
@_ZTS5Base2 = linkonce_odr dso_local constant [7 x i8] c"5Base2\00", comdat, align 1
@_ZTI5Base2 = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS5Base2 }, comdat, align 8
@_ZTI8Derived2 = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS8Derived2, ptr @_ZTI5Base2 }, comdat, align 8
@_ZTV5Base2 = linkonce_odr dso_local unnamed_addr constant { [3 x ptr] } { [3 x ptr] [ptr null, ptr @_ZTI5Base2, ptr @_ZN5Base27displayEv] }, comdat, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"Base2 display:\00", align 1, !dbg !56
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !61
@.str.3 = private unnamed_addr constant [18 x i8] c"Derived2 display:\00", align 1, !dbg !66

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef ptr @_Z14threadFunctionPv(ptr noundef %0) #0 !dbg !847 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !851, metadata !DIExpression()), !dbg !852
  %4 = call i32 @sleep(i32 noundef 5), !dbg !853
  call void @llvm.dbg.declare(metadata ptr %3, metadata !854, metadata !DIExpression()), !dbg !855
  %5 = load ptr, ptr %2, align 8, !dbg !856
  store ptr %5, ptr %3, align 8, !dbg !855
  %6 = load ptr, ptr %3, align 8, !dbg !857
  %7 = load ptr, ptr %6, align 8, !dbg !858
  %8 = getelementptr inbounds ptr, ptr %7, i64 0, !dbg !858
  %9 = load ptr, ptr %8, align 8, !dbg !858
  call void %9(ptr noundef nonnull align 8 dereferenceable(16) %6), !dbg !858
  ret ptr null, !dbg !859
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @sleep(i32 noundef) #2

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_Z12createThreadv() #3 !dbg !860 {
  %1 = alloca %class.Derived1, align 4
  %2 = alloca %class.Derived2, align 8
  call void @llvm.dbg.declare(metadata ptr %1, metadata !861, metadata !DIExpression()), !dbg !862
  call void @_ZN8Derived1C2Ev(ptr noundef nonnull align 4 dereferenceable(8) %1) #7, !dbg !862
  call void @llvm.dbg.declare(metadata ptr %2, metadata !863, metadata !DIExpression()), !dbg !864
  call void @_ZN8Derived2C2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #7, !dbg !864
  store ptr %1, ptr @derived2Ptr, align 8, !dbg !865
  %3 = load ptr, ptr @derived2Ptr, align 8, !dbg !866
  %4 = call i32 @pthread_create(ptr noundef @t1, ptr noundef null, ptr noundef @_Z14threadFunctionPv, ptr noundef %3) #7, !dbg !867
  ret void, !dbg !868
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN8Derived1C2Ev(ptr noundef nonnull align 4 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !dbg !869 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !871, metadata !DIExpression()), !dbg !873
  %3 = load ptr, ptr %2, align 8
  call void @_ZN5Base1C2Ev(ptr noundef nonnull align 4 dereferenceable(4) %3) #7, !dbg !874
  %4 = getelementptr inbounds %class.Derived1, ptr %3, i32 0, i32 1, !dbg !875
  store i32 30, ptr %4, align 4, !dbg !875
  ret void, !dbg !874
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN8Derived2C2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 !dbg !876 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !878, metadata !DIExpression()), !dbg !879
  %3 = load ptr, ptr %2, align 8
  call void @_ZN5Base2C2Ev(ptr noundef nonnull align 8 dereferenceable(12) %3) #7, !dbg !880
  store ptr getelementptr inbounds ({ [3 x ptr] }, ptr @_ZTV8Derived2, i32 0, inrange i32 0, i32 2), ptr %3, align 8, !dbg !880
  %4 = getelementptr inbounds %class.Derived2, ptr %3, i32 0, i32 1, !dbg !881
  store i32 40, ptr %4, align 4, !dbg !881
  ret void, !dbg !880
}

; Function Attrs: nounwind
declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main() #6 !dbg !882 {
  %1 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  call void @_Z12createThreadv(), !dbg !883
  %2 = load i64, ptr @t1, align 8, !dbg !884
  %3 = call i32 @pthread_join(i64 noundef %2, ptr noundef null), !dbg !885
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str), !dbg !886
  ret i32 0, !dbg !887
}

declare i32 @pthread_join(i64 noundef, ptr noundef) #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN5Base1C2Ev(ptr noundef nonnull align 4 dereferenceable(4) %0) unnamed_addr #4 comdat align 2 !dbg !888 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !890, metadata !DIExpression()), !dbg !892
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %class.Base1, ptr %3, i32 0, i32 0, !dbg !893
  store i32 10, ptr %4, align 4, !dbg !893
  ret void, !dbg !894
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN5Base2C2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #4 comdat align 2 !dbg !895 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !897, metadata !DIExpression()), !dbg !899
  %3 = load ptr, ptr %2, align 8
  store ptr getelementptr inbounds ({ [3 x ptr] }, ptr @_ZTV5Base2, i32 0, inrange i32 0, i32 2), ptr %3, align 8, !dbg !900
  %4 = getelementptr inbounds %class.Base2, ptr %3, i32 0, i32 1, !dbg !901
  store i32 20, ptr %4, align 8, !dbg !901
  ret void, !dbg !900
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN8Derived27displayEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 !dbg !902 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !903, metadata !DIExpression()), !dbg !904
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.3), !dbg !905
  %5 = getelementptr inbounds %class.Derived2, ptr %3, i32 0, i32 1, !dbg !906
  %6 = load i32, ptr %5, align 4, !dbg !906
  %7 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %6), !dbg !907
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef @.str.2), !dbg !908
  ret void, !dbg !909
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN5Base27displayEv(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #0 comdat align 2 !dbg !910 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !911, metadata !DIExpression()), !dbg !912
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.1), !dbg !913
  %5 = getelementptr inbounds %class.Base2, ptr %3, i32 0, i32 1, !dbg !914
  %6 = load i32, ptr %5, align 8, !dbg !914
  %7 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %6), !dbg !915
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef @.str.2), !dbg !916
  ret void, !dbg !917
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #2

attributes #0 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!839, !840, !841, !842, !843, !844, !845}
!llvm.ident = !{!846}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "derived2Ptr", scope: !2, file: !7, line: 37, type: !5, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !3, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !43, imports: !71, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/cs22mtech12008/Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Inheritance_with_data/separate_inheritances_bug_SF.cpp", directory: "/home/cs22mtech12008/UseAfterScope/Scripts", checksumkind: CSK_MD5, checksum: "1c1b5cda1ebbb9d16c50ae4098b111f1")
!4 = !{!5, !28, !31}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Derived2", file: !7, line: 29, size: 128, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !8, vtableHolder: !10, identifier: "_ZTS8Derived2")
!7 = !DIFile(filename: "Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Inheritance_with_data/separate_inheritances_bug_SF.cpp", directory: "/home/cs22mtech12008", checksumkind: CSK_MD5, checksum: "1c1b5cda1ebbb9d16c50ae4098b111f1")
!8 = !{!9, !23, !24}
!9 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !6, baseType: !10, flags: DIFlagPublic, extraData: i32 0)
!10 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Base2", file: !7, line: 13, size: 128, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !11, vtableHolder: !10, identifier: "_ZTS5Base2")
!11 = !{!12, !18, !19}
!12 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$Base2", scope: !7, file: !7, baseType: !13, size: 64, flags: DIFlagArtificial)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "__vtbl_ptr_type", baseType: !15, size: 64)
!15 = !DISubroutineType(types: !16)
!16 = !{!17}
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "b2", scope: !10, file: !7, line: 15, baseType: !17, size: 32, offset: 64, flags: DIFlagPublic)
!19 = !DISubprogram(name: "display", linkageName: "_ZN5Base27displayEv", scope: !10, file: !7, line: 16, type: !20, scopeLine: 16, containingType: !10, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!20 = !DISubroutineType(types: !21)
!21 = !{null, !22}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "d2", scope: !6, file: !7, line: 31, baseType: !17, size: 32, offset: 96, flags: DIFlagPublic)
!24 = !DISubprogram(name: "display", linkageName: "_ZN8Derived27displayEv", scope: !6, file: !7, line: 32, type: !25, scopeLine: 32, containingType: !6, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!25 = !DISubroutineType(types: !26)
!26 = !{null, !27}
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!28 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Derived1", file: !7, line: 21, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !29, identifier: "_ZTS8Derived1")
!29 = !{!30, !38, !39}
!30 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !28, baseType: !31, flags: DIFlagPublic, extraData: i32 0)
!31 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Base1", file: !7, line: 5, size: 32, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !32, identifier: "_ZTS5Base1")
!32 = !{!33, !34}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "b1", scope: !31, file: !7, line: 7, baseType: !17, size: 32, flags: DIFlagPublic)
!34 = !DISubprogram(name: "display", linkageName: "_ZN5Base17displayEv", scope: !31, file: !7, line: 8, type: !35, scopeLine: 8, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!35 = !DISubroutineType(types: !36)
!36 = !{null, !37}
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "d1", scope: !28, file: !7, line: 23, baseType: !17, size: 32, offset: 32, flags: DIFlagPublic)
!39 = !DISubprogram(name: "display", linkageName: "_ZN8Derived17displayEv", scope: !28, file: !7, line: 24, type: !40, scopeLine: 24, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!40 = !DISubroutineType(types: !41)
!41 = !{null, !42}
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!43 = !{!0, !44, !49, !56, !61, !66}
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "t1", scope: !2, file: !7, line: 38, type: !46, isLocal: false, isDefinition: true)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !47, line: 27, baseType: !48)
!47 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "2d764266ce95ab26d4a4767c2ec78176")
!48 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(scope: null, file: !7, line: 57, type: !51, isLocal: true, isDefinition: true)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 184, elements: !54)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!53 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!54 = !{!55}
!55 = !DISubrange(count: 23)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(scope: null, file: !7, line: 17, type: !58, isLocal: true, isDefinition: true)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 120, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 15)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(scope: null, file: !7, line: 17, type: !63, isLocal: true, isDefinition: true)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 16, elements: !64)
!64 = !{!65}
!65 = !DISubrange(count: 2)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(scope: null, file: !7, line: 33, type: !68, isLocal: true, isDefinition: true)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 144, elements: !69)
!69 = !{!70}
!70 = !DISubrange(count: 18)
!71 = !{!72, !91, !94, !99, !107, !115, !119, !126, !130, !134, !136, !138, !142, !152, !156, !162, !168, !170, !174, !178, !182, !186, !199, !201, !205, !209, !213, !215, !221, !225, !229, !231, !233, !237, !245, !249, !253, !257, !259, !265, !267, !274, !279, !283, !288, !292, !296, !300, !302, !304, !308, !312, !316, !318, !322, !326, !328, !330, !334, !340, !345, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !364, !368, !373, !377, !381, !386, !392, !394, !396, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !422, !426, !430, !436, !440, !444, !449, !451, !455, !459, !463, !473, !475, !479, !483, !487, !491, !495, !499, !503, !507, !511, !515, !519, !521, !523, !527, !531, !537, !541, !545, !547, !551, !555, !561, !563, !567, !571, !575, !579, !583, !587, !591, !592, !593, !594, !596, !597, !598, !599, !600, !601, !602, !606, !612, !617, !621, !623, !625, !627, !629, !636, !640, !644, !648, !652, !656, !661, !665, !667, !671, !677, !681, !686, !688, !690, !694, !698, !700, !702, !704, !706, !710, !712, !714, !718, !722, !726, !730, !734, !738, !740, !744, !748, !752, !756, !758, !760, !764, !768, !769, !770, !771, !772, !773, !781, !789, !792, !793, !795, !797, !799, !801, !805, !807, !809, !811, !813, !815, !817, !819, !821, !825, !829, !831, !835}
!72 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !74, file: !90, line: 64)
!73 = !DINamespace(name: "std", scope: null)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !75, line: 6, baseType: !76)
!75 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !77, line: 21, baseType: !78)
!77 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !77, line: 13, size: 64, flags: DIFlagTypePassByValue, elements: !79, identifier: "_ZTS11__mbstate_t")
!79 = !{!80, !81}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !78, file: !77, line: 15, baseType: !17, size: 32)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !78, file: !77, line: 20, baseType: !82, size: 32, offset: 32)
!82 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !78, file: !77, line: 16, size: 32, flags: DIFlagTypePassByValue, elements: !83, identifier: "_ZTSN11__mbstate_tUt_E")
!83 = !{!84, !86}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !82, file: !77, line: 18, baseType: !85, size: 32)
!85 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !82, file: !77, line: 19, baseType: !87, size: 32)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 32, elements: !88)
!88 = !{!89}
!89 = !DISubrange(count: 4)
!90 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cwchar", directory: "")
!91 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !92, file: !90, line: 141)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !93, line: 20, baseType: !85)
!93 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!94 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !95, file: !90, line: 143)
!95 = !DISubprogram(name: "btowc", scope: !96, file: !96, line: 284, type: !97, flags: DIFlagPrototyped, spFlags: 0)
!96 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "8900d9ecbbe40d052c41becfbc5b5531")
!97 = !DISubroutineType(types: !98)
!98 = !{!92, !17}
!99 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !100, file: !90, line: 144)
!100 = !DISubprogram(name: "fgetwc", scope: !96, file: !96, line: 726, type: !101, flags: DIFlagPrototyped, spFlags: 0)
!101 = !DISubroutineType(types: !102)
!102 = !{!92, !103}
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !105, line: 5, baseType: !106)
!105 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "72a8fe90981f484acae7c6f3dfc5c2b7")
!106 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !105, line: 4, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS8_IO_FILE")
!107 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !108, file: !90, line: 145)
!108 = !DISubprogram(name: "fgetws", scope: !96, file: !96, line: 755, type: !109, flags: DIFlagPrototyped, spFlags: 0)
!109 = !DISubroutineType(types: !110)
!110 = !{!111, !113, !17, !114}
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!113 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !111)
!114 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !103)
!115 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !116, file: !90, line: 146)
!116 = !DISubprogram(name: "fputwc", scope: !96, file: !96, line: 740, type: !117, flags: DIFlagPrototyped, spFlags: 0)
!117 = !DISubroutineType(types: !118)
!118 = !{!92, !112, !103}
!119 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !120, file: !90, line: 147)
!120 = !DISubprogram(name: "fputws", scope: !96, file: !96, line: 762, type: !121, flags: DIFlagPrototyped, spFlags: 0)
!121 = !DISubroutineType(types: !122)
!122 = !{!17, !123, !114}
!123 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !124)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !112)
!126 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !127, file: !90, line: 148)
!127 = !DISubprogram(name: "fwide", scope: !96, file: !96, line: 573, type: !128, flags: DIFlagPrototyped, spFlags: 0)
!128 = !DISubroutineType(types: !129)
!129 = !{!17, !103, !17}
!130 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !131, file: !90, line: 149)
!131 = !DISubprogram(name: "fwprintf", scope: !96, file: !96, line: 580, type: !132, flags: DIFlagPrototyped, spFlags: 0)
!132 = !DISubroutineType(types: !133)
!133 = !{!17, !114, !123, null}
!134 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !135, file: !90, line: 150)
!135 = !DISubprogram(name: "fwscanf", linkageName: "__isoc99_fwscanf", scope: !96, file: !96, line: 640, type: !132, flags: DIFlagPrototyped, spFlags: 0)
!136 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !137, file: !90, line: 151)
!137 = !DISubprogram(name: "getwc", scope: !96, file: !96, line: 727, type: !101, flags: DIFlagPrototyped, spFlags: 0)
!138 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !139, file: !90, line: 152)
!139 = !DISubprogram(name: "getwchar", scope: !96, file: !96, line: 733, type: !140, flags: DIFlagPrototyped, spFlags: 0)
!140 = !DISubroutineType(types: !141)
!141 = !{!92}
!142 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !143, file: !90, line: 153)
!143 = !DISubprogram(name: "mbrlen", scope: !96, file: !96, line: 307, type: !144, flags: DIFlagPrototyped, spFlags: 0)
!144 = !DISubroutineType(types: !145)
!145 = !{!146, !148, !146, !150}
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !147, line: 46, baseType: !48)
!147 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/cs22mtech12008", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!148 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !149)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !151)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!152 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !153, file: !90, line: 154)
!153 = !DISubprogram(name: "mbrtowc", scope: !96, file: !96, line: 296, type: !154, flags: DIFlagPrototyped, spFlags: 0)
!154 = !DISubroutineType(types: !155)
!155 = !{!146, !113, !148, !146, !150}
!156 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !157, file: !90, line: 155)
!157 = !DISubprogram(name: "mbsinit", scope: !96, file: !96, line: 292, type: !158, flags: DIFlagPrototyped, spFlags: 0)
!158 = !DISubroutineType(types: !159)
!159 = !{!17, !160}
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!162 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !163, file: !90, line: 156)
!163 = !DISubprogram(name: "mbsrtowcs", scope: !96, file: !96, line: 337, type: !164, flags: DIFlagPrototyped, spFlags: 0)
!164 = !DISubroutineType(types: !165)
!165 = !{!146, !113, !166, !146, !150}
!166 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !167)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!168 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !169, file: !90, line: 157)
!169 = !DISubprogram(name: "putwc", scope: !96, file: !96, line: 741, type: !117, flags: DIFlagPrototyped, spFlags: 0)
!170 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !171, file: !90, line: 158)
!171 = !DISubprogram(name: "putwchar", scope: !96, file: !96, line: 747, type: !172, flags: DIFlagPrototyped, spFlags: 0)
!172 = !DISubroutineType(types: !173)
!173 = !{!92, !112}
!174 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !175, file: !90, line: 160)
!175 = !DISubprogram(name: "swprintf", scope: !96, file: !96, line: 590, type: !176, flags: DIFlagPrototyped, spFlags: 0)
!176 = !DISubroutineType(types: !177)
!177 = !{!17, !113, !146, !123, null}
!178 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !179, file: !90, line: 162)
!179 = !DISubprogram(name: "swscanf", linkageName: "__isoc99_swscanf", scope: !96, file: !96, line: 647, type: !180, flags: DIFlagPrototyped, spFlags: 0)
!180 = !DISubroutineType(types: !181)
!181 = !{!17, !123, !123, null}
!182 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !183, file: !90, line: 163)
!183 = !DISubprogram(name: "ungetwc", scope: !96, file: !96, line: 770, type: !184, flags: DIFlagPrototyped, spFlags: 0)
!184 = !DISubroutineType(types: !185)
!185 = !{!92, !92, !103}
!186 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !187, file: !90, line: 164)
!187 = !DISubprogram(name: "vfwprintf", scope: !96, file: !96, line: 598, type: !188, flags: DIFlagPrototyped, spFlags: 0)
!188 = !DISubroutineType(types: !189)
!189 = !{!17, !114, !123, !190}
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, flags: DIFlagTypePassByValue, elements: !192, identifier: "_ZTS13__va_list_tag")
!192 = !{!193, !195, !196, !198}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !191, file: !194, baseType: !85, size: 32)
!194 = !DIFile(filename: "Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Inheritance_with_data/separate_inheritances_bug_SF.cpp", directory: "/home/cs22mtech12008")
!195 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !191, file: !194, baseType: !85, size: 32, offset: 32)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !191, file: !194, baseType: !197, size: 64, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !191, file: !194, baseType: !197, size: 64, offset: 128)
!199 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !200, file: !90, line: 166)
!200 = !DISubprogram(name: "vfwscanf", linkageName: "__isoc99_vfwscanf", scope: !96, file: !96, line: 693, type: !188, flags: DIFlagPrototyped, spFlags: 0)
!201 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !202, file: !90, line: 169)
!202 = !DISubprogram(name: "vswprintf", scope: !96, file: !96, line: 611, type: !203, flags: DIFlagPrototyped, spFlags: 0)
!203 = !DISubroutineType(types: !204)
!204 = !{!17, !113, !146, !123, !190}
!205 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !206, file: !90, line: 172)
!206 = !DISubprogram(name: "vswscanf", linkageName: "__isoc99_vswscanf", scope: !96, file: !96, line: 700, type: !207, flags: DIFlagPrototyped, spFlags: 0)
!207 = !DISubroutineType(types: !208)
!208 = !{!17, !123, !123, !190}
!209 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !210, file: !90, line: 174)
!210 = !DISubprogram(name: "vwprintf", scope: !96, file: !96, line: 606, type: !211, flags: DIFlagPrototyped, spFlags: 0)
!211 = !DISubroutineType(types: !212)
!212 = !{!17, !123, !190}
!213 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !214, file: !90, line: 176)
!214 = !DISubprogram(name: "vwscanf", linkageName: "__isoc99_vwscanf", scope: !96, file: !96, line: 697, type: !211, flags: DIFlagPrototyped, spFlags: 0)
!215 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !216, file: !90, line: 178)
!216 = !DISubprogram(name: "wcrtomb", scope: !96, file: !96, line: 301, type: !217, flags: DIFlagPrototyped, spFlags: 0)
!217 = !DISubroutineType(types: !218)
!218 = !{!146, !219, !112, !150}
!219 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !220)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!221 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !222, file: !90, line: 179)
!222 = !DISubprogram(name: "wcscat", scope: !96, file: !96, line: 97, type: !223, flags: DIFlagPrototyped, spFlags: 0)
!223 = !DISubroutineType(types: !224)
!224 = !{!111, !113, !123}
!225 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !226, file: !90, line: 180)
!226 = !DISubprogram(name: "wcscmp", scope: !96, file: !96, line: 106, type: !227, flags: DIFlagPrototyped, spFlags: 0)
!227 = !DISubroutineType(types: !228)
!228 = !{!17, !124, !124}
!229 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !230, file: !90, line: 181)
!230 = !DISubprogram(name: "wcscoll", scope: !96, file: !96, line: 131, type: !227, flags: DIFlagPrototyped, spFlags: 0)
!231 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !232, file: !90, line: 182)
!232 = !DISubprogram(name: "wcscpy", scope: !96, file: !96, line: 87, type: !223, flags: DIFlagPrototyped, spFlags: 0)
!233 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !234, file: !90, line: 183)
!234 = !DISubprogram(name: "wcscspn", scope: !96, file: !96, line: 187, type: !235, flags: DIFlagPrototyped, spFlags: 0)
!235 = !DISubroutineType(types: !236)
!236 = !{!146, !124, !124}
!237 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !238, file: !90, line: 184)
!238 = !DISubprogram(name: "wcsftime", scope: !96, file: !96, line: 834, type: !239, flags: DIFlagPrototyped, spFlags: 0)
!239 = !DISubroutineType(types: !240)
!240 = !{!146, !113, !146, !123, !241}
!241 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !242)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !244)
!244 = !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !96, line: 83, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS2tm")
!245 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !246, file: !90, line: 185)
!246 = !DISubprogram(name: "wcslen", scope: !96, file: !96, line: 222, type: !247, flags: DIFlagPrototyped, spFlags: 0)
!247 = !DISubroutineType(types: !248)
!248 = !{!146, !124}
!249 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !250, file: !90, line: 186)
!250 = !DISubprogram(name: "wcsncat", scope: !96, file: !96, line: 101, type: !251, flags: DIFlagPrototyped, spFlags: 0)
!251 = !DISubroutineType(types: !252)
!252 = !{!111, !113, !123, !146}
!253 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !254, file: !90, line: 187)
!254 = !DISubprogram(name: "wcsncmp", scope: !96, file: !96, line: 109, type: !255, flags: DIFlagPrototyped, spFlags: 0)
!255 = !DISubroutineType(types: !256)
!256 = !{!17, !124, !124, !146}
!257 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !258, file: !90, line: 188)
!258 = !DISubprogram(name: "wcsncpy", scope: !96, file: !96, line: 92, type: !251, flags: DIFlagPrototyped, spFlags: 0)
!259 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !260, file: !90, line: 189)
!260 = !DISubprogram(name: "wcsrtombs", scope: !96, file: !96, line: 343, type: !261, flags: DIFlagPrototyped, spFlags: 0)
!261 = !DISubroutineType(types: !262)
!262 = !{!146, !219, !263, !146, !150}
!263 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !264)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!265 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !266, file: !90, line: 190)
!266 = !DISubprogram(name: "wcsspn", scope: !96, file: !96, line: 191, type: !235, flags: DIFlagPrototyped, spFlags: 0)
!267 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !268, file: !90, line: 191)
!268 = !DISubprogram(name: "wcstod", scope: !96, file: !96, line: 377, type: !269, flags: DIFlagPrototyped, spFlags: 0)
!269 = !DISubroutineType(types: !270)
!270 = !{!271, !123, !272}
!271 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!272 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !273)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!274 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !275, file: !90, line: 193)
!275 = !DISubprogram(name: "wcstof", scope: !96, file: !96, line: 382, type: !276, flags: DIFlagPrototyped, spFlags: 0)
!276 = !DISubroutineType(types: !277)
!277 = !{!278, !123, !272}
!278 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!279 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !280, file: !90, line: 195)
!280 = !DISubprogram(name: "wcstok", scope: !96, file: !96, line: 217, type: !281, flags: DIFlagPrototyped, spFlags: 0)
!281 = !DISubroutineType(types: !282)
!282 = !{!111, !113, !123, !272}
!283 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !284, file: !90, line: 196)
!284 = !DISubprogram(name: "wcstol", scope: !96, file: !96, line: 428, type: !285, flags: DIFlagPrototyped, spFlags: 0)
!285 = !DISubroutineType(types: !286)
!286 = !{!287, !123, !272, !17}
!287 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!288 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !289, file: !90, line: 197)
!289 = !DISubprogram(name: "wcstoul", scope: !96, file: !96, line: 433, type: !290, flags: DIFlagPrototyped, spFlags: 0)
!290 = !DISubroutineType(types: !291)
!291 = !{!48, !123, !272, !17}
!292 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !293, file: !90, line: 198)
!293 = !DISubprogram(name: "wcsxfrm", scope: !96, file: !96, line: 135, type: !294, flags: DIFlagPrototyped, spFlags: 0)
!294 = !DISubroutineType(types: !295)
!295 = !{!146, !113, !123, !146}
!296 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !297, file: !90, line: 199)
!297 = !DISubprogram(name: "wctob", scope: !96, file: !96, line: 288, type: !298, flags: DIFlagPrototyped, spFlags: 0)
!298 = !DISubroutineType(types: !299)
!299 = !{!17, !92}
!300 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !301, file: !90, line: 200)
!301 = !DISubprogram(name: "wmemcmp", scope: !96, file: !96, line: 258, type: !255, flags: DIFlagPrototyped, spFlags: 0)
!302 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !303, file: !90, line: 201)
!303 = !DISubprogram(name: "wmemcpy", scope: !96, file: !96, line: 262, type: !251, flags: DIFlagPrototyped, spFlags: 0)
!304 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !305, file: !90, line: 202)
!305 = !DISubprogram(name: "wmemmove", scope: !96, file: !96, line: 267, type: !306, flags: DIFlagPrototyped, spFlags: 0)
!306 = !DISubroutineType(types: !307)
!307 = !{!111, !111, !124, !146}
!308 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !309, file: !90, line: 203)
!309 = !DISubprogram(name: "wmemset", scope: !96, file: !96, line: 271, type: !310, flags: DIFlagPrototyped, spFlags: 0)
!310 = !DISubroutineType(types: !311)
!311 = !{!111, !111, !112, !146}
!312 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !313, file: !90, line: 204)
!313 = !DISubprogram(name: "wprintf", scope: !96, file: !96, line: 587, type: !314, flags: DIFlagPrototyped, spFlags: 0)
!314 = !DISubroutineType(types: !315)
!315 = !{!17, !123, null}
!316 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !317, file: !90, line: 205)
!317 = !DISubprogram(name: "wscanf", linkageName: "__isoc99_wscanf", scope: !96, file: !96, line: 644, type: !314, flags: DIFlagPrototyped, spFlags: 0)
!318 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !319, file: !90, line: 206)
!319 = !DISubprogram(name: "wcschr", scope: !96, file: !96, line: 164, type: !320, flags: DIFlagPrototyped, spFlags: 0)
!320 = !DISubroutineType(types: !321)
!321 = !{!111, !124, !112}
!322 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !323, file: !90, line: 207)
!323 = !DISubprogram(name: "wcspbrk", scope: !96, file: !96, line: 201, type: !324, flags: DIFlagPrototyped, spFlags: 0)
!324 = !DISubroutineType(types: !325)
!325 = !{!111, !124, !124}
!326 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !327, file: !90, line: 208)
!327 = !DISubprogram(name: "wcsrchr", scope: !96, file: !96, line: 174, type: !320, flags: DIFlagPrototyped, spFlags: 0)
!328 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !329, file: !90, line: 209)
!329 = !DISubprogram(name: "wcsstr", scope: !96, file: !96, line: 212, type: !324, flags: DIFlagPrototyped, spFlags: 0)
!330 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !331, file: !90, line: 210)
!331 = !DISubprogram(name: "wmemchr", scope: !96, file: !96, line: 253, type: !332, flags: DIFlagPrototyped, spFlags: 0)
!332 = !DISubroutineType(types: !333)
!333 = !{!111, !124, !112, !146}
!334 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !335, entity: !336, file: !90, line: 251)
!335 = !DINamespace(name: "__gnu_cxx", scope: null)
!336 = !DISubprogram(name: "wcstold", scope: !96, file: !96, line: 384, type: !337, flags: DIFlagPrototyped, spFlags: 0)
!337 = !DISubroutineType(types: !338)
!338 = !{!339, !123, !272}
!339 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!340 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !335, entity: !341, file: !90, line: 260)
!341 = !DISubprogram(name: "wcstoll", scope: !96, file: !96, line: 441, type: !342, flags: DIFlagPrototyped, spFlags: 0)
!342 = !DISubroutineType(types: !343)
!343 = !{!344, !123, !272, !17}
!344 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!345 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !335, entity: !346, file: !90, line: 261)
!346 = !DISubprogram(name: "wcstoull", scope: !96, file: !96, line: 448, type: !347, flags: DIFlagPrototyped, spFlags: 0)
!347 = !DISubroutineType(types: !348)
!348 = !{!349, !123, !272, !17}
!349 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!350 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !336, file: !90, line: 267)
!351 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !341, file: !90, line: 268)
!352 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !346, file: !90, line: 269)
!353 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !275, file: !90, line: 283)
!354 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !200, file: !90, line: 286)
!355 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !206, file: !90, line: 289)
!356 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !214, file: !90, line: 292)
!357 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !336, file: !90, line: 296)
!358 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !341, file: !90, line: 297)
!359 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !346, file: !90, line: 298)
!360 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !361, file: !362, line: 66)
!361 = !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !363, file: !362, line: 97, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!362 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/exception_ptr.h", directory: "", checksumkind: CSK_MD5, checksum: "314ad14748ccb9ff85c65d17ebb0828b")
!363 = !DINamespace(name: "__exception_ptr", scope: !73)
!364 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !363, entity: !365, file: !362, line: 85)
!365 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !73, file: !362, line: 81, type: !366, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!366 = !DISubroutineType(types: !367)
!367 = !{null, !361}
!368 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !369, file: !362, line: 243)
!369 = !DISubprogram(name: "swap", linkageName: "_ZNSt15__exception_ptr4swapERNS_13exception_ptrES1_", scope: !363, file: !362, line: 230, type: !370, flags: DIFlagPrototyped, spFlags: 0)
!370 = !DISubroutineType(types: !371)
!371 = !{null, !372, !372}
!372 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !361, size: 64)
!373 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !374, file: !376, line: 53)
!374 = !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !375, line: 51, size: 768, flags: DIFlagFwdDecl, identifier: "_ZTS5lconv")
!375 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "0cf373fc44eed8073800bdb9da87b72f")
!376 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/clocale", directory: "")
!377 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !378, file: !376, line: 54)
!378 = !DISubprogram(name: "setlocale", scope: !375, file: !375, line: 122, type: !379, flags: DIFlagPrototyped, spFlags: 0)
!379 = !DISubroutineType(types: !380)
!380 = !{!220, !17, !149}
!381 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !382, file: !376, line: 55)
!382 = !DISubprogram(name: "localeconv", scope: !375, file: !375, line: 125, type: !383, flags: DIFlagPrototyped, spFlags: 0)
!383 = !DISubroutineType(types: !384)
!384 = !{!385}
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!386 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !387, file: !391, line: 64)
!387 = !DISubprogram(name: "isalnum", scope: !388, file: !388, line: 108, type: !389, flags: DIFlagPrototyped, spFlags: 0)
!388 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "36575f934ef4fe7e9d50a3cb17bd5c66")
!389 = !DISubroutineType(types: !390)
!390 = !{!17, !17}
!391 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cctype", directory: "")
!392 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !393, file: !391, line: 65)
!393 = !DISubprogram(name: "isalpha", scope: !388, file: !388, line: 109, type: !389, flags: DIFlagPrototyped, spFlags: 0)
!394 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !395, file: !391, line: 66)
!395 = !DISubprogram(name: "iscntrl", scope: !388, file: !388, line: 110, type: !389, flags: DIFlagPrototyped, spFlags: 0)
!396 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !397, file: !391, line: 67)
!397 = !DISubprogram(name: "isdigit", scope: !388, file: !388, line: 111, type: !389, flags: DIFlagPrototyped, spFlags: 0)
!398 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !399, file: !391, line: 68)
!399 = !DISubprogram(name: "isgraph", scope: !388, file: !388, line: 113, type: !389, flags: DIFlagPrototyped, spFlags: 0)
!400 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !401, file: !391, line: 69)
!401 = !DISubprogram(name: "islower", scope: !388, file: !388, line: 112, type: !389, flags: DIFlagPrototyped, spFlags: 0)
!402 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !403, file: !391, line: 70)
!403 = !DISubprogram(name: "isprint", scope: !388, file: !388, line: 114, type: !389, flags: DIFlagPrototyped, spFlags: 0)
!404 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !405, file: !391, line: 71)
!405 = !DISubprogram(name: "ispunct", scope: !388, file: !388, line: 115, type: !389, flags: DIFlagPrototyped, spFlags: 0)
!406 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !407, file: !391, line: 72)
!407 = !DISubprogram(name: "isspace", scope: !388, file: !388, line: 116, type: !389, flags: DIFlagPrototyped, spFlags: 0)
!408 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !409, file: !391, line: 73)
!409 = !DISubprogram(name: "isupper", scope: !388, file: !388, line: 117, type: !389, flags: DIFlagPrototyped, spFlags: 0)
!410 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !411, file: !391, line: 74)
!411 = !DISubprogram(name: "isxdigit", scope: !388, file: !388, line: 118, type: !389, flags: DIFlagPrototyped, spFlags: 0)
!412 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !413, file: !391, line: 75)
!413 = !DISubprogram(name: "tolower", scope: !388, file: !388, line: 122, type: !389, flags: DIFlagPrototyped, spFlags: 0)
!414 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !415, file: !391, line: 76)
!415 = !DISubprogram(name: "toupper", scope: !388, file: !388, line: 125, type: !389, flags: DIFlagPrototyped, spFlags: 0)
!416 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !417, file: !391, line: 87)
!417 = !DISubprogram(name: "isblank", scope: !388, file: !388, line: 130, type: !389, flags: DIFlagPrototyped, spFlags: 0)
!418 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !419, entity: !420, file: !421, line: 58)
!419 = !DINamespace(name: "__gnu_debug", scope: null)
!420 = !DINamespace(name: "__debug", scope: !73)
!421 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/debug/debug.h", directory: "", checksumkind: CSK_MD5, checksum: "752210a319f5f5d356cc29cd1ce3cdc7")
!422 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !423, file: !425, line: 52)
!423 = !DISubprogram(name: "abs", scope: !424, file: !424, line: 840, type: !389, flags: DIFlagPrototyped, spFlags: 0)
!424 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!425 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/std_abs.h", directory: "")
!426 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !427, file: !429, line: 131)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !424, line: 62, baseType: !428)
!428 = !DICompositeType(tag: DW_TAG_structure_type, file: !424, line: 58, size: 64, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!429 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cstdlib", directory: "")
!430 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !431, file: !429, line: 132)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !424, line: 70, baseType: !432)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !424, line: 66, size: 128, flags: DIFlagTypePassByValue, elements: !433, identifier: "_ZTS6ldiv_t")
!433 = !{!434, !435}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !432, file: !424, line: 68, baseType: !287, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !432, file: !424, line: 69, baseType: !287, size: 64, offset: 64)
!436 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !437, file: !429, line: 134)
!437 = !DISubprogram(name: "abort", scope: !424, file: !424, line: 591, type: !438, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!438 = !DISubroutineType(types: !439)
!439 = !{null}
!440 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !441, file: !429, line: 136)
!441 = !DISubprogram(name: "aligned_alloc", scope: !424, file: !424, line: 586, type: !442, flags: DIFlagPrototyped, spFlags: 0)
!442 = !DISubroutineType(types: !443)
!443 = !{!197, !146, !146}
!444 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !445, file: !429, line: 138)
!445 = !DISubprogram(name: "atexit", scope: !424, file: !424, line: 595, type: !446, flags: DIFlagPrototyped, spFlags: 0)
!446 = !DISubroutineType(types: !447)
!447 = !{!17, !448}
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!449 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !450, file: !429, line: 141)
!450 = !DISubprogram(name: "at_quick_exit", scope: !424, file: !424, line: 600, type: !446, flags: DIFlagPrototyped, spFlags: 0)
!451 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !452, file: !429, line: 144)
!452 = !DISubprogram(name: "atof", scope: !424, file: !424, line: 101, type: !453, flags: DIFlagPrototyped, spFlags: 0)
!453 = !DISubroutineType(types: !454)
!454 = !{!271, !149}
!455 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !456, file: !429, line: 145)
!456 = !DISubprogram(name: "atoi", scope: !424, file: !424, line: 104, type: !457, flags: DIFlagPrototyped, spFlags: 0)
!457 = !DISubroutineType(types: !458)
!458 = !{!17, !149}
!459 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !460, file: !429, line: 146)
!460 = !DISubprogram(name: "atol", scope: !424, file: !424, line: 107, type: !461, flags: DIFlagPrototyped, spFlags: 0)
!461 = !DISubroutineType(types: !462)
!462 = !{!287, !149}
!463 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !464, file: !429, line: 147)
!464 = !DISubprogram(name: "bsearch", scope: !424, file: !424, line: 820, type: !465, flags: DIFlagPrototyped, spFlags: 0)
!465 = !DISubroutineType(types: !466)
!466 = !{!197, !467, !467, !146, !146, !469}
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !424, line: 808, baseType: !470)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DISubroutineType(types: !472)
!472 = !{!17, !467, !467}
!473 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !474, file: !429, line: 148)
!474 = !DISubprogram(name: "calloc", scope: !424, file: !424, line: 542, type: !442, flags: DIFlagPrototyped, spFlags: 0)
!475 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !476, file: !429, line: 149)
!476 = !DISubprogram(name: "div", scope: !424, file: !424, line: 852, type: !477, flags: DIFlagPrototyped, spFlags: 0)
!477 = !DISubroutineType(types: !478)
!478 = !{!427, !17, !17}
!479 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !480, file: !429, line: 150)
!480 = !DISubprogram(name: "exit", scope: !424, file: !424, line: 617, type: !481, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!481 = !DISubroutineType(types: !482)
!482 = !{null, !17}
!483 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !484, file: !429, line: 151)
!484 = !DISubprogram(name: "free", scope: !424, file: !424, line: 565, type: !485, flags: DIFlagPrototyped, spFlags: 0)
!485 = !DISubroutineType(types: !486)
!486 = !{null, !197}
!487 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !488, file: !429, line: 152)
!488 = !DISubprogram(name: "getenv", scope: !424, file: !424, line: 634, type: !489, flags: DIFlagPrototyped, spFlags: 0)
!489 = !DISubroutineType(types: !490)
!490 = !{!220, !149}
!491 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !492, file: !429, line: 153)
!492 = !DISubprogram(name: "labs", scope: !424, file: !424, line: 841, type: !493, flags: DIFlagPrototyped, spFlags: 0)
!493 = !DISubroutineType(types: !494)
!494 = !{!287, !287}
!495 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !496, file: !429, line: 154)
!496 = !DISubprogram(name: "ldiv", scope: !424, file: !424, line: 854, type: !497, flags: DIFlagPrototyped, spFlags: 0)
!497 = !DISubroutineType(types: !498)
!498 = !{!431, !287, !287}
!499 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !500, file: !429, line: 155)
!500 = !DISubprogram(name: "malloc", scope: !424, file: !424, line: 539, type: !501, flags: DIFlagPrototyped, spFlags: 0)
!501 = !DISubroutineType(types: !502)
!502 = !{!197, !146}
!503 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !504, file: !429, line: 157)
!504 = !DISubprogram(name: "mblen", scope: !424, file: !424, line: 922, type: !505, flags: DIFlagPrototyped, spFlags: 0)
!505 = !DISubroutineType(types: !506)
!506 = !{!17, !149, !146}
!507 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !508, file: !429, line: 158)
!508 = !DISubprogram(name: "mbstowcs", scope: !424, file: !424, line: 933, type: !509, flags: DIFlagPrototyped, spFlags: 0)
!509 = !DISubroutineType(types: !510)
!510 = !{!146, !113, !148, !146}
!511 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !512, file: !429, line: 159)
!512 = !DISubprogram(name: "mbtowc", scope: !424, file: !424, line: 925, type: !513, flags: DIFlagPrototyped, spFlags: 0)
!513 = !DISubroutineType(types: !514)
!514 = !{!17, !113, !148, !146}
!515 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !516, file: !429, line: 161)
!516 = !DISubprogram(name: "qsort", scope: !424, file: !424, line: 830, type: !517, flags: DIFlagPrototyped, spFlags: 0)
!517 = !DISubroutineType(types: !518)
!518 = !{null, !197, !146, !146, !469}
!519 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !520, file: !429, line: 164)
!520 = !DISubprogram(name: "quick_exit", scope: !424, file: !424, line: 623, type: !481, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!521 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !522, file: !429, line: 167)
!522 = !DISubprogram(name: "rand", scope: !424, file: !424, line: 453, type: !15, flags: DIFlagPrototyped, spFlags: 0)
!523 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !524, file: !429, line: 168)
!524 = !DISubprogram(name: "realloc", scope: !424, file: !424, line: 550, type: !525, flags: DIFlagPrototyped, spFlags: 0)
!525 = !DISubroutineType(types: !526)
!526 = !{!197, !197, !146}
!527 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !528, file: !429, line: 169)
!528 = !DISubprogram(name: "srand", scope: !424, file: !424, line: 455, type: !529, flags: DIFlagPrototyped, spFlags: 0)
!529 = !DISubroutineType(types: !530)
!530 = !{null, !85}
!531 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !532, file: !429, line: 170)
!532 = !DISubprogram(name: "strtod", scope: !424, file: !424, line: 117, type: !533, flags: DIFlagPrototyped, spFlags: 0)
!533 = !DISubroutineType(types: !534)
!534 = !{!271, !148, !535}
!535 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !536)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!537 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !538, file: !429, line: 171)
!538 = !DISubprogram(name: "strtol", scope: !424, file: !424, line: 176, type: !539, flags: DIFlagPrototyped, spFlags: 0)
!539 = !DISubroutineType(types: !540)
!540 = !{!287, !148, !535, !17}
!541 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !542, file: !429, line: 172)
!542 = !DISubprogram(name: "strtoul", scope: !424, file: !424, line: 180, type: !543, flags: DIFlagPrototyped, spFlags: 0)
!543 = !DISubroutineType(types: !544)
!544 = !{!48, !148, !535, !17}
!545 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !546, file: !429, line: 173)
!546 = !DISubprogram(name: "system", scope: !424, file: !424, line: 784, type: !457, flags: DIFlagPrototyped, spFlags: 0)
!547 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !548, file: !429, line: 175)
!548 = !DISubprogram(name: "wcstombs", scope: !424, file: !424, line: 936, type: !549, flags: DIFlagPrototyped, spFlags: 0)
!549 = !DISubroutineType(types: !550)
!550 = !{!146, !219, !123, !146}
!551 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !552, file: !429, line: 176)
!552 = !DISubprogram(name: "wctomb", scope: !424, file: !424, line: 929, type: !553, flags: DIFlagPrototyped, spFlags: 0)
!553 = !DISubroutineType(types: !554)
!554 = !{!17, !220, !112}
!555 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !335, entity: !556, file: !429, line: 204)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !424, line: 80, baseType: !557)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !424, line: 76, size: 128, flags: DIFlagTypePassByValue, elements: !558, identifier: "_ZTS7lldiv_t")
!558 = !{!559, !560}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !557, file: !424, line: 78, baseType: !344, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !557, file: !424, line: 79, baseType: !344, size: 64, offset: 64)
!561 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !335, entity: !562, file: !429, line: 210)
!562 = !DISubprogram(name: "_Exit", scope: !424, file: !424, line: 629, type: !481, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!563 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !335, entity: !564, file: !429, line: 214)
!564 = !DISubprogram(name: "llabs", scope: !424, file: !424, line: 844, type: !565, flags: DIFlagPrototyped, spFlags: 0)
!565 = !DISubroutineType(types: !566)
!566 = !{!344, !344}
!567 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !335, entity: !568, file: !429, line: 220)
!568 = !DISubprogram(name: "lldiv", scope: !424, file: !424, line: 858, type: !569, flags: DIFlagPrototyped, spFlags: 0)
!569 = !DISubroutineType(types: !570)
!570 = !{!556, !344, !344}
!571 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !335, entity: !572, file: !429, line: 231)
!572 = !DISubprogram(name: "atoll", scope: !424, file: !424, line: 112, type: !573, flags: DIFlagPrototyped, spFlags: 0)
!573 = !DISubroutineType(types: !574)
!574 = !{!344, !149}
!575 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !335, entity: !576, file: !429, line: 232)
!576 = !DISubprogram(name: "strtoll", scope: !424, file: !424, line: 200, type: !577, flags: DIFlagPrototyped, spFlags: 0)
!577 = !DISubroutineType(types: !578)
!578 = !{!344, !148, !535, !17}
!579 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !335, entity: !580, file: !429, line: 233)
!580 = !DISubprogram(name: "strtoull", scope: !424, file: !424, line: 205, type: !581, flags: DIFlagPrototyped, spFlags: 0)
!581 = !DISubroutineType(types: !582)
!582 = !{!349, !148, !535, !17}
!583 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !335, entity: !584, file: !429, line: 235)
!584 = !DISubprogram(name: "strtof", scope: !424, file: !424, line: 123, type: !585, flags: DIFlagPrototyped, spFlags: 0)
!585 = !DISubroutineType(types: !586)
!586 = !{!278, !148, !535}
!587 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !335, entity: !588, file: !429, line: 236)
!588 = !DISubprogram(name: "strtold", scope: !424, file: !424, line: 126, type: !589, flags: DIFlagPrototyped, spFlags: 0)
!589 = !DISubroutineType(types: !590)
!590 = !{!339, !148, !535}
!591 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !556, file: !429, line: 244)
!592 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !562, file: !429, line: 246)
!593 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !564, file: !429, line: 248)
!594 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !595, file: !429, line: 249)
!595 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !335, file: !429, line: 217, type: !569, flags: DIFlagPrototyped, spFlags: 0)
!596 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !568, file: !429, line: 250)
!597 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !572, file: !429, line: 252)
!598 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !584, file: !429, line: 253)
!599 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !576, file: !429, line: 254)
!600 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !580, file: !429, line: 255)
!601 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !588, file: !429, line: 256)
!602 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !603, file: !605, line: 98)
!603 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !604, line: 7, baseType: !106)
!604 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!605 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cstdio", directory: "")
!606 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !607, file: !605, line: 99)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !608, line: 84, baseType: !609)
!608 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fpos_t", file: !610, line: 14, baseType: !611)
!610 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h", directory: "", checksumkind: CSK_MD5, checksum: "32de8bdaf3551a6c0a9394f9af4389ce")
!611 = !DICompositeType(tag: DW_TAG_structure_type, name: "_G_fpos_t", file: !610, line: 10, size: 128, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
!612 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !613, file: !605, line: 101)
!613 = !DISubprogram(name: "clearerr", scope: !608, file: !608, line: 757, type: !614, flags: DIFlagPrototyped, spFlags: 0)
!614 = !DISubroutineType(types: !615)
!615 = !{null, !616}
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!617 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !618, file: !605, line: 102)
!618 = !DISubprogram(name: "fclose", scope: !608, file: !608, line: 213, type: !619, flags: DIFlagPrototyped, spFlags: 0)
!619 = !DISubroutineType(types: !620)
!620 = !{!17, !616}
!621 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !622, file: !605, line: 103)
!622 = !DISubprogram(name: "feof", scope: !608, file: !608, line: 759, type: !619, flags: DIFlagPrototyped, spFlags: 0)
!623 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !624, file: !605, line: 104)
!624 = !DISubprogram(name: "ferror", scope: !608, file: !608, line: 761, type: !619, flags: DIFlagPrototyped, spFlags: 0)
!625 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !626, file: !605, line: 105)
!626 = !DISubprogram(name: "fflush", scope: !608, file: !608, line: 218, type: !619, flags: DIFlagPrototyped, spFlags: 0)
!627 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !628, file: !605, line: 106)
!628 = !DISubprogram(name: "fgetc", scope: !608, file: !608, line: 485, type: !619, flags: DIFlagPrototyped, spFlags: 0)
!629 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !630, file: !605, line: 107)
!630 = !DISubprogram(name: "fgetpos", scope: !608, file: !608, line: 731, type: !631, flags: DIFlagPrototyped, spFlags: 0)
!631 = !DISubroutineType(types: !632)
!632 = !{!17, !633, !634}
!633 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !616)
!634 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !635)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!636 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !637, file: !605, line: 108)
!637 = !DISubprogram(name: "fgets", scope: !608, file: !608, line: 564, type: !638, flags: DIFlagPrototyped, spFlags: 0)
!638 = !DISubroutineType(types: !639)
!639 = !{!220, !219, !17, !633}
!640 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !641, file: !605, line: 109)
!641 = !DISubprogram(name: "fopen", scope: !608, file: !608, line: 246, type: !642, flags: DIFlagPrototyped, spFlags: 0)
!642 = !DISubroutineType(types: !643)
!643 = !{!616, !148, !148}
!644 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !645, file: !605, line: 110)
!645 = !DISubprogram(name: "fprintf", scope: !608, file: !608, line: 326, type: !646, flags: DIFlagPrototyped, spFlags: 0)
!646 = !DISubroutineType(types: !647)
!647 = !{!17, !633, !148, null}
!648 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !649, file: !605, line: 111)
!649 = !DISubprogram(name: "fputc", scope: !608, file: !608, line: 521, type: !650, flags: DIFlagPrototyped, spFlags: 0)
!650 = !DISubroutineType(types: !651)
!651 = !{!17, !17, !616}
!652 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !653, file: !605, line: 112)
!653 = !DISubprogram(name: "fputs", scope: !608, file: !608, line: 626, type: !654, flags: DIFlagPrototyped, spFlags: 0)
!654 = !DISubroutineType(types: !655)
!655 = !{!17, !148, !633}
!656 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !657, file: !605, line: 113)
!657 = !DISubprogram(name: "fread", scope: !608, file: !608, line: 646, type: !658, flags: DIFlagPrototyped, spFlags: 0)
!658 = !DISubroutineType(types: !659)
!659 = !{!146, !660, !146, !146, !633}
!660 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !197)
!661 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !662, file: !605, line: 114)
!662 = !DISubprogram(name: "freopen", scope: !608, file: !608, line: 252, type: !663, flags: DIFlagPrototyped, spFlags: 0)
!663 = !DISubroutineType(types: !664)
!664 = !{!616, !148, !148, !633}
!665 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !666, file: !605, line: 115)
!666 = !DISubprogram(name: "fscanf", linkageName: "__isoc99_fscanf", scope: !608, file: !608, line: 407, type: !646, flags: DIFlagPrototyped, spFlags: 0)
!667 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !668, file: !605, line: 116)
!668 = !DISubprogram(name: "fseek", scope: !608, file: !608, line: 684, type: !669, flags: DIFlagPrototyped, spFlags: 0)
!669 = !DISubroutineType(types: !670)
!670 = !{!17, !616, !287, !17}
!671 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !672, file: !605, line: 117)
!672 = !DISubprogram(name: "fsetpos", scope: !608, file: !608, line: 736, type: !673, flags: DIFlagPrototyped, spFlags: 0)
!673 = !DISubroutineType(types: !674)
!674 = !{!17, !616, !675}
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !607)
!677 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !678, file: !605, line: 118)
!678 = !DISubprogram(name: "ftell", scope: !608, file: !608, line: 689, type: !679, flags: DIFlagPrototyped, spFlags: 0)
!679 = !DISubroutineType(types: !680)
!680 = !{!287, !616}
!681 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !682, file: !605, line: 119)
!682 = !DISubprogram(name: "fwrite", scope: !608, file: !608, line: 652, type: !683, flags: DIFlagPrototyped, spFlags: 0)
!683 = !DISubroutineType(types: !684)
!684 = !{!146, !685, !146, !146, !633}
!685 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !467)
!686 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !687, file: !605, line: 120)
!687 = !DISubprogram(name: "getc", scope: !608, file: !608, line: 486, type: !619, flags: DIFlagPrototyped, spFlags: 0)
!688 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !689, file: !605, line: 121)
!689 = !DISubprogram(name: "getchar", scope: !608, file: !608, line: 492, type: !15, flags: DIFlagPrototyped, spFlags: 0)
!690 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !691, file: !605, line: 126)
!691 = !DISubprogram(name: "perror", scope: !608, file: !608, line: 775, type: !692, flags: DIFlagPrototyped, spFlags: 0)
!692 = !DISubroutineType(types: !693)
!693 = !{null, !149}
!694 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !695, file: !605, line: 127)
!695 = !DISubprogram(name: "printf", scope: !608, file: !608, line: 332, type: !696, flags: DIFlagPrototyped, spFlags: 0)
!696 = !DISubroutineType(types: !697)
!697 = !{!17, !148, null}
!698 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !699, file: !605, line: 128)
!699 = !DISubprogram(name: "putc", scope: !608, file: !608, line: 522, type: !650, flags: DIFlagPrototyped, spFlags: 0)
!700 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !701, file: !605, line: 129)
!701 = !DISubprogram(name: "putchar", scope: !608, file: !608, line: 528, type: !389, flags: DIFlagPrototyped, spFlags: 0)
!702 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !703, file: !605, line: 130)
!703 = !DISubprogram(name: "puts", scope: !608, file: !608, line: 632, type: !457, flags: DIFlagPrototyped, spFlags: 0)
!704 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !705, file: !605, line: 131)
!705 = !DISubprogram(name: "remove", scope: !608, file: !608, line: 146, type: !457, flags: DIFlagPrototyped, spFlags: 0)
!706 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !707, file: !605, line: 132)
!707 = !DISubprogram(name: "rename", scope: !608, file: !608, line: 148, type: !708, flags: DIFlagPrototyped, spFlags: 0)
!708 = !DISubroutineType(types: !709)
!709 = !{!17, !149, !149}
!710 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !711, file: !605, line: 133)
!711 = !DISubprogram(name: "rewind", scope: !608, file: !608, line: 694, type: !614, flags: DIFlagPrototyped, spFlags: 0)
!712 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !713, file: !605, line: 134)
!713 = !DISubprogram(name: "scanf", linkageName: "__isoc99_scanf", scope: !608, file: !608, line: 410, type: !696, flags: DIFlagPrototyped, spFlags: 0)
!714 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !715, file: !605, line: 135)
!715 = !DISubprogram(name: "setbuf", scope: !608, file: !608, line: 304, type: !716, flags: DIFlagPrototyped, spFlags: 0)
!716 = !DISubroutineType(types: !717)
!717 = !{null, !633, !219}
!718 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !719, file: !605, line: 136)
!719 = !DISubprogram(name: "setvbuf", scope: !608, file: !608, line: 308, type: !720, flags: DIFlagPrototyped, spFlags: 0)
!720 = !DISubroutineType(types: !721)
!721 = !{!17, !633, !219, !17, !146}
!722 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !723, file: !605, line: 137)
!723 = !DISubprogram(name: "sprintf", scope: !608, file: !608, line: 334, type: !724, flags: DIFlagPrototyped, spFlags: 0)
!724 = !DISubroutineType(types: !725)
!725 = !{!17, !219, !148, null}
!726 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !727, file: !605, line: 138)
!727 = !DISubprogram(name: "sscanf", linkageName: "__isoc99_sscanf", scope: !608, file: !608, line: 412, type: !728, flags: DIFlagPrototyped, spFlags: 0)
!728 = !DISubroutineType(types: !729)
!729 = !{!17, !148, !148, null}
!730 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !731, file: !605, line: 139)
!731 = !DISubprogram(name: "tmpfile", scope: !608, file: !608, line: 173, type: !732, flags: DIFlagPrototyped, spFlags: 0)
!732 = !DISubroutineType(types: !733)
!733 = !{!616}
!734 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !735, file: !605, line: 141)
!735 = !DISubprogram(name: "tmpnam", scope: !608, file: !608, line: 187, type: !736, flags: DIFlagPrototyped, spFlags: 0)
!736 = !DISubroutineType(types: !737)
!737 = !{!220, !220}
!738 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !739, file: !605, line: 143)
!739 = !DISubprogram(name: "ungetc", scope: !608, file: !608, line: 639, type: !650, flags: DIFlagPrototyped, spFlags: 0)
!740 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !741, file: !605, line: 144)
!741 = !DISubprogram(name: "vfprintf", scope: !608, file: !608, line: 341, type: !742, flags: DIFlagPrototyped, spFlags: 0)
!742 = !DISubroutineType(types: !743)
!743 = !{!17, !633, !148, !190}
!744 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !745, file: !605, line: 145)
!745 = !DISubprogram(name: "vprintf", scope: !608, file: !608, line: 347, type: !746, flags: DIFlagPrototyped, spFlags: 0)
!746 = !DISubroutineType(types: !747)
!747 = !{!17, !148, !190}
!748 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !749, file: !605, line: 146)
!749 = !DISubprogram(name: "vsprintf", scope: !608, file: !608, line: 349, type: !750, flags: DIFlagPrototyped, spFlags: 0)
!750 = !DISubroutineType(types: !751)
!751 = !{!17, !219, !148, !190}
!752 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !335, entity: !753, file: !605, line: 175)
!753 = !DISubprogram(name: "snprintf", scope: !608, file: !608, line: 354, type: !754, flags: DIFlagPrototyped, spFlags: 0)
!754 = !DISubroutineType(types: !755)
!755 = !{!17, !219, !146, !148, null}
!756 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !335, entity: !757, file: !605, line: 176)
!757 = !DISubprogram(name: "vfscanf", linkageName: "__isoc99_vfscanf", scope: !608, file: !608, line: 451, type: !742, flags: DIFlagPrototyped, spFlags: 0)
!758 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !335, entity: !759, file: !605, line: 177)
!759 = !DISubprogram(name: "vscanf", linkageName: "__isoc99_vscanf", scope: !608, file: !608, line: 456, type: !746, flags: DIFlagPrototyped, spFlags: 0)
!760 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !335, entity: !761, file: !605, line: 178)
!761 = !DISubprogram(name: "vsnprintf", scope: !608, file: !608, line: 358, type: !762, flags: DIFlagPrototyped, spFlags: 0)
!762 = !DISubroutineType(types: !763)
!763 = !{!17, !219, !146, !148, !190}
!764 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !335, entity: !765, file: !605, line: 179)
!765 = !DISubprogram(name: "vsscanf", linkageName: "__isoc99_vsscanf", scope: !608, file: !608, line: 459, type: !766, flags: DIFlagPrototyped, spFlags: 0)
!766 = !DISubroutineType(types: !767)
!767 = !{!17, !148, !148, !190}
!768 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !753, file: !605, line: 185)
!769 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !757, file: !605, line: 186)
!770 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !759, file: !605, line: 187)
!771 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !761, file: !605, line: 188)
!772 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !765, file: !605, line: 189)
!773 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !774, file: !780, line: 58)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "max_align_t", file: !775, line: 24, baseType: !776)
!775 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/__stddef_max_align_t.h", directory: "/home/cs22mtech12008", checksumkind: CSK_MD5, checksum: "48e8e2456f77e6cda35d245130fa7259")
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !775, line: 19, size: 256, flags: DIFlagTypePassByValue, elements: !777, identifier: "_ZTS11max_align_t")
!777 = !{!778, !779}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "__clang_max_align_nonce1", scope: !776, file: !775, line: 20, baseType: !344, size: 64, align: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "__clang_max_align_nonce2", scope: !776, file: !775, line: 22, baseType: !339, size: 128, align: 128, offset: 128)
!780 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cstddef", directory: "")
!781 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !782, file: !788, line: 82)
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctrans_t", file: !783, line: 48, baseType: !784)
!783 = !DIFile(filename: "/usr/include/wctype.h", directory: "", checksumkind: CSK_MD5, checksum: "e83097fbf57cc71ea472db59df3ba75d")
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !786)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !787, line: 41, baseType: !17)
!787 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!788 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cwctype", directory: "")
!789 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !790, file: !788, line: 83)
!790 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctype_t", file: !791, line: 38, baseType: !48)
!791 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "3598b9d23ef5d76319026b46e316b55f")
!792 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !92, file: !788, line: 84)
!793 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !794, file: !788, line: 86)
!794 = !DISubprogram(name: "iswalnum", scope: !791, file: !791, line: 95, type: !298, flags: DIFlagPrototyped, spFlags: 0)
!795 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !796, file: !788, line: 87)
!796 = !DISubprogram(name: "iswalpha", scope: !791, file: !791, line: 101, type: !298, flags: DIFlagPrototyped, spFlags: 0)
!797 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !798, file: !788, line: 89)
!798 = !DISubprogram(name: "iswblank", scope: !791, file: !791, line: 146, type: !298, flags: DIFlagPrototyped, spFlags: 0)
!799 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !800, file: !788, line: 91)
!800 = !DISubprogram(name: "iswcntrl", scope: !791, file: !791, line: 104, type: !298, flags: DIFlagPrototyped, spFlags: 0)
!801 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !802, file: !788, line: 92)
!802 = !DISubprogram(name: "iswctype", scope: !791, file: !791, line: 159, type: !803, flags: DIFlagPrototyped, spFlags: 0)
!803 = !DISubroutineType(types: !804)
!804 = !{!17, !92, !790}
!805 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !806, file: !788, line: 93)
!806 = !DISubprogram(name: "iswdigit", scope: !791, file: !791, line: 108, type: !298, flags: DIFlagPrototyped, spFlags: 0)
!807 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !808, file: !788, line: 94)
!808 = !DISubprogram(name: "iswgraph", scope: !791, file: !791, line: 112, type: !298, flags: DIFlagPrototyped, spFlags: 0)
!809 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !810, file: !788, line: 95)
!810 = !DISubprogram(name: "iswlower", scope: !791, file: !791, line: 117, type: !298, flags: DIFlagPrototyped, spFlags: 0)
!811 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !812, file: !788, line: 96)
!812 = !DISubprogram(name: "iswprint", scope: !791, file: !791, line: 120, type: !298, flags: DIFlagPrototyped, spFlags: 0)
!813 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !814, file: !788, line: 97)
!814 = !DISubprogram(name: "iswpunct", scope: !791, file: !791, line: 125, type: !298, flags: DIFlagPrototyped, spFlags: 0)
!815 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !816, file: !788, line: 98)
!816 = !DISubprogram(name: "iswspace", scope: !791, file: !791, line: 130, type: !298, flags: DIFlagPrototyped, spFlags: 0)
!817 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !818, file: !788, line: 99)
!818 = !DISubprogram(name: "iswupper", scope: !791, file: !791, line: 135, type: !298, flags: DIFlagPrototyped, spFlags: 0)
!819 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !820, file: !788, line: 100)
!820 = !DISubprogram(name: "iswxdigit", scope: !791, file: !791, line: 140, type: !298, flags: DIFlagPrototyped, spFlags: 0)
!821 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !822, file: !788, line: 101)
!822 = !DISubprogram(name: "towctrans", scope: !783, file: !783, line: 55, type: !823, flags: DIFlagPrototyped, spFlags: 0)
!823 = !DISubroutineType(types: !824)
!824 = !{!92, !92, !782}
!825 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !826, file: !788, line: 102)
!826 = !DISubprogram(name: "towlower", scope: !791, file: !791, line: 166, type: !827, flags: DIFlagPrototyped, spFlags: 0)
!827 = !DISubroutineType(types: !828)
!828 = !{!92, !92}
!829 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !830, file: !788, line: 103)
!830 = !DISubprogram(name: "towupper", scope: !791, file: !791, line: 169, type: !827, flags: DIFlagPrototyped, spFlags: 0)
!831 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !832, file: !788, line: 104)
!832 = !DISubprogram(name: "wctrans", scope: !783, file: !783, line: 52, type: !833, flags: DIFlagPrototyped, spFlags: 0)
!833 = !DISubroutineType(types: !834)
!834 = !{!782, !149}
!835 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !73, entity: !836, file: !788, line: 105)
!836 = !DISubprogram(name: "wctype", scope: !791, file: !791, line: 155, type: !837, flags: DIFlagPrototyped, spFlags: 0)
!837 = !DISubroutineType(types: !838)
!838 = !{!790, !149}
!839 = !{i32 7, !"Dwarf Version", i32 5}
!840 = !{i32 2, !"Debug Info Version", i32 3}
!841 = !{i32 1, !"wchar_size", i32 4}
!842 = !{i32 8, !"PIC Level", i32 2}
!843 = !{i32 7, !"PIE Level", i32 2}
!844 = !{i32 7, !"uwtable", i32 2}
!845 = !{i32 7, !"frame-pointer", i32 2}
!846 = !{!"clang version 16.0.0"}
!847 = distinct !DISubprogram(name: "threadFunction", linkageName: "_Z14threadFunctionPv", scope: !7, file: !7, line: 40, type: !848, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !850)
!848 = !DISubroutineType(types: !849)
!849 = !{!197, !197}
!850 = !{}
!851 = !DILocalVariable(name: "arg", arg: 1, scope: !847, file: !7, line: 40, type: !197)
!852 = !DILocation(line: 40, column: 28, scope: !847)
!853 = !DILocation(line: 41, column: 5, scope: !847)
!854 = !DILocalVariable(name: "derivedRef", scope: !847, file: !7, line: 42, type: !5)
!855 = !DILocation(line: 42, column: 15, scope: !847)
!856 = !DILocation(line: 42, column: 51, scope: !847)
!857 = !DILocation(line: 43, column: 5, scope: !847)
!858 = !DILocation(line: 43, column: 17, scope: !847)
!859 = !DILocation(line: 44, column: 5, scope: !847)
!860 = distinct !DISubprogram(name: "createThread", linkageName: "_Z12createThreadv", scope: !7, file: !7, line: 47, type: !438, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !850)
!861 = !DILocalVariable(name: "derived1Obj", scope: !860, file: !7, line: 48, type: !28)
!862 = !DILocation(line: 48, column: 14, scope: !860)
!863 = !DILocalVariable(name: "derived2Obj", scope: !860, file: !7, line: 49, type: !6)
!864 = !DILocation(line: 49, column: 14, scope: !860)
!865 = !DILocation(line: 50, column: 17, scope: !860)
!866 = !DILocation(line: 51, column: 50, scope: !860)
!867 = !DILocation(line: 51, column: 5, scope: !860)
!868 = !DILocation(line: 52, column: 1, scope: !860)
!869 = distinct !DISubprogram(name: "Derived1", linkageName: "_ZN8Derived1C2Ev", scope: !28, file: !7, line: 21, type: !40, scopeLine: 21, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !870, retainedNodes: !850)
!870 = !DISubprogram(name: "Derived1", scope: !28, type: !40, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!871 = !DILocalVariable(name: "this", arg: 1, scope: !869, type: !872, flags: DIFlagArtificial | DIFlagObjectPointer)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!873 = !DILocation(line: 0, scope: !869)
!874 = !DILocation(line: 21, column: 7, scope: !869)
!875 = !DILocation(line: 23, column: 9, scope: !869)
!876 = distinct !DISubprogram(name: "Derived2", linkageName: "_ZN8Derived2C2Ev", scope: !6, file: !7, line: 29, type: !25, scopeLine: 29, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !877, retainedNodes: !850)
!877 = !DISubprogram(name: "Derived2", scope: !6, type: !25, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!878 = !DILocalVariable(name: "this", arg: 1, scope: !876, type: !5, flags: DIFlagArtificial | DIFlagObjectPointer)
!879 = !DILocation(line: 0, scope: !876)
!880 = !DILocation(line: 29, column: 7, scope: !876)
!881 = !DILocation(line: 31, column: 9, scope: !876)
!882 = distinct !DISubprogram(name: "main", scope: !7, file: !7, line: 54, type: !15, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !850)
!883 = !DILocation(line: 55, column: 5, scope: !882)
!884 = !DILocation(line: 56, column: 18, scope: !882)
!885 = !DILocation(line: 56, column: 5, scope: !882)
!886 = !DILocation(line: 57, column: 15, scope: !882)
!887 = !DILocation(line: 58, column: 5, scope: !882)
!888 = distinct !DISubprogram(name: "Base1", linkageName: "_ZN5Base1C2Ev", scope: !31, file: !7, line: 5, type: !35, scopeLine: 5, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !889, retainedNodes: !850)
!889 = !DISubprogram(name: "Base1", scope: !31, type: !35, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!890 = !DILocalVariable(name: "this", arg: 1, scope: !888, type: !891, flags: DIFlagArtificial | DIFlagObjectPointer)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!892 = !DILocation(line: 0, scope: !888)
!893 = !DILocation(line: 7, column: 5, scope: !888)
!894 = !DILocation(line: 5, column: 7, scope: !888)
!895 = distinct !DISubprogram(name: "Base2", linkageName: "_ZN5Base2C2Ev", scope: !10, file: !7, line: 13, type: !20, scopeLine: 13, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !896, retainedNodes: !850)
!896 = !DISubprogram(name: "Base2", scope: !10, type: !20, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!897 = !DILocalVariable(name: "this", arg: 1, scope: !895, type: !898, flags: DIFlagArtificial | DIFlagObjectPointer)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!899 = !DILocation(line: 0, scope: !895)
!900 = !DILocation(line: 13, column: 7, scope: !895)
!901 = !DILocation(line: 15, column: 5, scope: !895)
!902 = distinct !DISubprogram(name: "display", linkageName: "_ZN8Derived27displayEv", scope: !6, file: !7, line: 32, type: !25, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !24, retainedNodes: !850)
!903 = !DILocalVariable(name: "this", arg: 1, scope: !902, type: !5, flags: DIFlagArtificial | DIFlagObjectPointer)
!904 = !DILocation(line: 0, scope: !902)
!905 = !DILocation(line: 33, column: 19, scope: !902)
!906 = !DILocation(line: 33, column: 43, scope: !902)
!907 = !DILocation(line: 33, column: 41, scope: !902)
!908 = !DILocation(line: 33, column: 45, scope: !902)
!909 = !DILocation(line: 34, column: 5, scope: !902)
!910 = distinct !DISubprogram(name: "display", linkageName: "_ZN5Base27displayEv", scope: !10, file: !7, line: 16, type: !20, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !19, retainedNodes: !850)
!911 = !DILocalVariable(name: "this", arg: 1, scope: !910, type: !898, flags: DIFlagArtificial | DIFlagObjectPointer)
!912 = !DILocation(line: 0, scope: !910)
!913 = !DILocation(line: 17, column: 19, scope: !910)
!914 = !DILocation(line: 17, column: 40, scope: !910)
!915 = !DILocation(line: 17, column: 38, scope: !910)
!916 = !DILocation(line: 17, column: 42, scope: !910)
!917 = !DILocation(line: 18, column: 5, scope: !910)
