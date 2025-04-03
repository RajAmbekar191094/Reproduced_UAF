; ModuleID = '/home/cs22mtech12008/Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Inheritance/reinterpret_cast.cpp'
source_filename = "/home/cs22mtech12008/Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Inheritance/reinterpret_cast.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%class.A1 = type { %class.A }
%class.A = type { ptr }

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
@.str = private unnamed_addr constant [15 x i8] c"Base class m2\0A\00", align 1, !dbg !31
@.str.1 = private unnamed_addr constant [13 x i8] c"A2 class m2\0A\00", align 1, !dbg !38
@_ZTV2A1 = linkonce_odr dso_local unnamed_addr constant { [3 x ptr] } { [3 x ptr] [ptr null, ptr @_ZTI2A1, ptr @_ZN2A12m1Ev] }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global ptr
@_ZTS2A1 = linkonce_odr dso_local constant [4 x i8] c"2A1\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global ptr
@_ZTS1A = linkonce_odr dso_local constant [3 x i8] c"1A\00", comdat, align 1
@_ZTI1A = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS1A }, comdat, align 8
@_ZTI2A1 = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS2A1, ptr @_ZTI1A }, comdat, align 8
@_ZTV1A = linkonce_odr dso_local unnamed_addr constant { [3 x ptr] } { [3 x ptr] [ptr null, ptr @_ZTI1A, ptr @_ZN1A2m1Ev] }, comdat, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"Base class m1\0A\00", align 1, !dbg !43
@.str.3 = private unnamed_addr constant [13 x i8] c"A1 class m1\0A\00", align 1, !dbg !45

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef ptr @_Z9runThreadPv(ptr noundef %0) #0 !dbg !826 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !830, metadata !DIExpression()), !dbg !831
  call void @llvm.dbg.declare(metadata ptr %3, metadata !832, metadata !DIExpression()), !dbg !833
  %6 = load ptr, ptr %2, align 8, !dbg !834
  store ptr %6, ptr %3, align 8, !dbg !833
  %7 = load ptr, ptr %3, align 8, !dbg !835
  %8 = load ptr, ptr %7, align 8, !dbg !836
  %9 = getelementptr inbounds ptr, ptr %8, i64 0, !dbg !836
  %10 = load ptr, ptr %9, align 8, !dbg !836
  call void %10(ptr noundef nonnull align 8 dereferenceable(8) %7), !dbg !836
  %11 = load ptr, ptr %3, align 8, !dbg !837
  call void @_ZN1A2m2Ev(ptr noundef nonnull align 8 dereferenceable(8) %11), !dbg !838
  call void @llvm.dbg.declare(metadata ptr %4, metadata !839, metadata !DIExpression()), !dbg !840
  %12 = load ptr, ptr %3, align 8, !dbg !841
  store ptr %12, ptr %4, align 8, !dbg !840
  %13 = load ptr, ptr %4, align 8, !dbg !842
  call void @_ZN2A22m2Ev(ptr noundef nonnull align 8 dereferenceable(8) %13), !dbg !843
  call void @llvm.dbg.declare(metadata ptr %5, metadata !844, metadata !DIExpression()), !dbg !845
  %14 = load ptr, ptr %3, align 8, !dbg !846
  store ptr %14, ptr %5, align 8, !dbg !845
  %15 = load ptr, ptr %5, align 8, !dbg !847
  %16 = load ptr, ptr %15, align 8, !dbg !848
  %17 = getelementptr inbounds ptr, ptr %16, i64 0, !dbg !848
  %18 = load ptr, ptr %17, align 8, !dbg !848
  call void %18(ptr noundef nonnull align 8 dereferenceable(8) %15), !dbg !848
  ret ptr null, !dbg !849
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN1A2m2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #0 comdat align 2 !dbg !850 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !851, metadata !DIExpression()), !dbg !852
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str), !dbg !853
  ret void, !dbg !854
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN2A22m2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #0 comdat align 2 !dbg !855 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !860, metadata !DIExpression()), !dbg !861
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.1), !dbg !862
  ret void, !dbg !863
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z12createThreadv() #0 !dbg !864 {
  %1 = alloca %class.A1, align 8
  %2 = alloca ptr, align 8
  call void @llvm.dbg.declare(metadata ptr %1, metadata !865, metadata !DIExpression()), !dbg !866
  call void @_ZN2A1C2Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #6, !dbg !866
  call void @llvm.dbg.declare(metadata ptr %2, metadata !867, metadata !DIExpression()), !dbg !868
  store ptr %1, ptr %2, align 8, !dbg !868
  %3 = load ptr, ptr %2, align 8, !dbg !869
  %4 = call i32 @pthread_create(ptr noundef @t1, ptr noundef null, ptr noundef @_Z9runThreadPv, ptr noundef %3) #6, !dbg !870
  %5 = load i64, ptr @t1, align 8, !dbg !871
  %6 = call i32 @pthread_join(i64 noundef %5, ptr noundef null), !dbg !872
  ret void, !dbg !873
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN2A1C2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 !dbg !874 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !876, metadata !DIExpression()), !dbg !877
  %3 = load ptr, ptr %2, align 8
  call void @_ZN1AC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #6, !dbg !878
  store ptr getelementptr inbounds ({ [3 x ptr] }, ptr @_ZTV2A1, i32 0, inrange i32 0, i32 2), ptr %3, align 8, !dbg !878
  ret void, !dbg !878
}

; Function Attrs: nounwind
declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

declare i32 @pthread_join(i64 noundef, ptr noundef) #4

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main() #5 !dbg !879 {
  %1 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  call void @_Z12createThreadv(), !dbg !880
  ret i32 0, !dbg !881
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN1AC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 !dbg !882 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !884, metadata !DIExpression()), !dbg !885
  %3 = load ptr, ptr %2, align 8
  store ptr getelementptr inbounds ({ [3 x ptr] }, ptr @_ZTV1A, i32 0, inrange i32 0, i32 2), ptr %3, align 8, !dbg !886
  ret void, !dbg !886
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN2A12m1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !dbg !887 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !888, metadata !DIExpression()), !dbg !889
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.3), !dbg !890
  ret void, !dbg !891
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN1A2m1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !dbg !892 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !893, metadata !DIExpression()), !dbg !894
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.2), !dbg !895
  ret void, !dbg !896
}

attributes #0 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!818, !819, !820, !821, !822, !823, !824}
!llvm.ident = !{!825}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "t1", scope: !2, file: !7, line: 30, type: !816, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !3, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !30, imports: !47, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/cs22mtech12008/Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Inheritance/reinterpret_cast.cpp", directory: "/home/cs22mtech12008", checksumkind: CSK_MD5, checksum: "6e47b87c0c2a1fea5e0e5b5d9c3bb0be")
!4 = !{!5, !20, !22}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "A", file: !7, line: 5, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !8, vtableHolder: !6, identifier: "_ZTS1A")
!7 = !DIFile(filename: "Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Inheritance/reinterpret_cast.cpp", directory: "/home/cs22mtech12008", checksumkind: CSK_MD5, checksum: "6e47b87c0c2a1fea5e0e5b5d9c3bb0be")
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
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DICompositeType(tag: DW_TAG_class_type, name: "A2", file: !7, line: 23, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS2A2")
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "A1", file: !7, line: 16, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !24, vtableHolder: !6, identifier: "_ZTS2A1")
!24 = !{!25, !26}
!25 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !23, baseType: !6, flags: DIFlagPublic, extraData: i32 0)
!26 = !DISubprogram(name: "m1", linkageName: "_ZN2A12m1Ev", scope: !23, file: !7, line: 18, type: !27, scopeLine: 18, containingType: !23, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!27 = !DISubroutineType(types: !28)
!28 = !{null, !29}
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!30 = !{!0, !31, !38, !43, !45}
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(scope: null, file: !7, line: 12, type: !33, isLocal: true, isDefinition: true)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 120, elements: !36)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!35 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!36 = !{!37}
!37 = !DISubrange(count: 15)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(scope: null, file: !7, line: 26, type: !40, isLocal: true, isDefinition: true)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 104, elements: !41)
!41 = !{!42}
!42 = !DISubrange(count: 13)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(scope: null, file: !7, line: 8, type: !33, isLocal: true, isDefinition: true)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(scope: null, file: !7, line: 19, type: !40, isLocal: true, isDefinition: true)
!47 = !{!48, !67, !70, !75, !83, !91, !95, !102, !106, !110, !112, !114, !118, !129, !133, !139, !145, !147, !151, !155, !159, !163, !176, !178, !182, !186, !190, !192, !198, !202, !206, !208, !210, !214, !222, !226, !230, !234, !236, !242, !244, !251, !256, !260, !265, !269, !273, !277, !279, !281, !285, !289, !293, !295, !299, !303, !305, !307, !311, !317, !322, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !341, !345, !350, !354, !358, !363, !369, !371, !373, !375, !377, !379, !381, !383, !385, !387, !389, !391, !393, !395, !399, !403, !407, !413, !417, !421, !426, !428, !432, !436, !440, !450, !452, !456, !460, !464, !468, !472, !476, !480, !484, !488, !492, !496, !498, !500, !504, !508, !514, !518, !522, !524, !528, !532, !538, !540, !544, !548, !552, !556, !560, !564, !568, !569, !570, !571, !573, !574, !575, !576, !577, !578, !579, !583, !589, !594, !598, !600, !602, !604, !606, !613, !617, !621, !625, !629, !633, !638, !642, !644, !648, !654, !658, !663, !665, !667, !671, !675, !677, !679, !681, !683, !687, !689, !691, !695, !699, !703, !707, !711, !715, !717, !721, !725, !729, !733, !735, !737, !741, !745, !746, !747, !748, !749, !750, !758, !766, !769, !770, !772, !774, !776, !778, !782, !784, !786, !788, !790, !792, !794, !796, !798, !802, !806, !808, !812}
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
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 32, elements: !64)
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
!121 = !{!122, !125, !122, !127}
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !123, line: 46, baseType: !124)
!123 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/cs22mtech12008", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!124 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!125 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !126)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !128)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!129 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !130, file: !66, line: 154)
!130 = !DISubprogram(name: "mbrtowc", scope: !72, file: !72, line: 296, type: !131, flags: DIFlagPrototyped, spFlags: 0)
!131 = !DISubroutineType(types: !132)
!132 = !{!122, !89, !125, !122, !127}
!133 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !134, file: !66, line: 155)
!134 = !DISubprogram(name: "mbsinit", scope: !72, file: !72, line: 292, type: !135, flags: DIFlagPrototyped, spFlags: 0)
!135 = !DISubroutineType(types: !136)
!136 = !{!14, !137}
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!139 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !140, file: !66, line: 156)
!140 = !DISubprogram(name: "mbsrtowcs", scope: !72, file: !72, line: 337, type: !141, flags: DIFlagPrototyped, spFlags: 0)
!141 = !DISubroutineType(types: !142)
!142 = !{!122, !89, !143, !122, !127}
!143 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !144)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!145 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !146, file: !66, line: 157)
!146 = !DISubprogram(name: "putwc", scope: !72, file: !72, line: 741, type: !93, flags: DIFlagPrototyped, spFlags: 0)
!147 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !148, file: !66, line: 158)
!148 = !DISubprogram(name: "putwchar", scope: !72, file: !72, line: 747, type: !149, flags: DIFlagPrototyped, spFlags: 0)
!149 = !DISubroutineType(types: !150)
!150 = !{!68, !88}
!151 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !152, file: !66, line: 160)
!152 = !DISubprogram(name: "swprintf", scope: !72, file: !72, line: 590, type: !153, flags: DIFlagPrototyped, spFlags: 0)
!153 = !DISubroutineType(types: !154)
!154 = !{!14, !89, !122, !99, null}
!155 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !156, file: !66, line: 162)
!156 = !DISubprogram(name: "swscanf", linkageName: "__isoc99_swscanf", scope: !72, file: !72, line: 647, type: !157, flags: DIFlagPrototyped, spFlags: 0)
!157 = !DISubroutineType(types: !158)
!158 = !{!14, !99, !99, null}
!159 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !160, file: !66, line: 163)
!160 = !DISubprogram(name: "ungetwc", scope: !72, file: !72, line: 770, type: !161, flags: DIFlagPrototyped, spFlags: 0)
!161 = !DISubroutineType(types: !162)
!162 = !{!68, !68, !79}
!163 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !164, file: !66, line: 164)
!164 = !DISubprogram(name: "vfwprintf", scope: !72, file: !72, line: 598, type: !165, flags: DIFlagPrototyped, spFlags: 0)
!165 = !DISubroutineType(types: !166)
!166 = !{!14, !90, !99, !167}
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, flags: DIFlagTypePassByValue, elements: !169, identifier: "_ZTS13__va_list_tag")
!169 = !{!170, !172, !173, !175}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !168, file: !171, baseType: !61, size: 32)
!171 = !DIFile(filename: "Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Inheritance/reinterpret_cast.cpp", directory: "/home/cs22mtech12008")
!172 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !168, file: !171, baseType: !61, size: 32, offset: 32)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !168, file: !171, baseType: !174, size: 64, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !168, file: !171, baseType: !174, size: 64, offset: 128)
!176 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !177, file: !66, line: 166)
!177 = !DISubprogram(name: "vfwscanf", linkageName: "__isoc99_vfwscanf", scope: !72, file: !72, line: 693, type: !165, flags: DIFlagPrototyped, spFlags: 0)
!178 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !179, file: !66, line: 169)
!179 = !DISubprogram(name: "vswprintf", scope: !72, file: !72, line: 611, type: !180, flags: DIFlagPrototyped, spFlags: 0)
!180 = !DISubroutineType(types: !181)
!181 = !{!14, !89, !122, !99, !167}
!182 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !183, file: !66, line: 172)
!183 = !DISubprogram(name: "vswscanf", linkageName: "__isoc99_vswscanf", scope: !72, file: !72, line: 700, type: !184, flags: DIFlagPrototyped, spFlags: 0)
!184 = !DISubroutineType(types: !185)
!185 = !{!14, !99, !99, !167}
!186 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !187, file: !66, line: 174)
!187 = !DISubprogram(name: "vwprintf", scope: !72, file: !72, line: 606, type: !188, flags: DIFlagPrototyped, spFlags: 0)
!188 = !DISubroutineType(types: !189)
!189 = !{!14, !99, !167}
!190 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !191, file: !66, line: 176)
!191 = !DISubprogram(name: "vwscanf", linkageName: "__isoc99_vwscanf", scope: !72, file: !72, line: 697, type: !188, flags: DIFlagPrototyped, spFlags: 0)
!192 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !193, file: !66, line: 178)
!193 = !DISubprogram(name: "wcrtomb", scope: !72, file: !72, line: 301, type: !194, flags: DIFlagPrototyped, spFlags: 0)
!194 = !DISubroutineType(types: !195)
!195 = !{!122, !196, !88, !127}
!196 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !197)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!198 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !199, file: !66, line: 179)
!199 = !DISubprogram(name: "wcscat", scope: !72, file: !72, line: 97, type: !200, flags: DIFlagPrototyped, spFlags: 0)
!200 = !DISubroutineType(types: !201)
!201 = !{!87, !89, !99}
!202 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !203, file: !66, line: 180)
!203 = !DISubprogram(name: "wcscmp", scope: !72, file: !72, line: 106, type: !204, flags: DIFlagPrototyped, spFlags: 0)
!204 = !DISubroutineType(types: !205)
!205 = !{!14, !100, !100}
!206 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !207, file: !66, line: 181)
!207 = !DISubprogram(name: "wcscoll", scope: !72, file: !72, line: 131, type: !204, flags: DIFlagPrototyped, spFlags: 0)
!208 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !209, file: !66, line: 182)
!209 = !DISubprogram(name: "wcscpy", scope: !72, file: !72, line: 87, type: !200, flags: DIFlagPrototyped, spFlags: 0)
!210 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !211, file: !66, line: 183)
!211 = !DISubprogram(name: "wcscspn", scope: !72, file: !72, line: 187, type: !212, flags: DIFlagPrototyped, spFlags: 0)
!212 = !DISubroutineType(types: !213)
!213 = !{!122, !100, !100}
!214 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !215, file: !66, line: 184)
!215 = !DISubprogram(name: "wcsftime", scope: !72, file: !72, line: 834, type: !216, flags: DIFlagPrototyped, spFlags: 0)
!216 = !DISubroutineType(types: !217)
!217 = !{!122, !89, !122, !99, !218}
!218 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !219)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !221)
!221 = !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !72, line: 83, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS2tm")
!222 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !223, file: !66, line: 185)
!223 = !DISubprogram(name: "wcslen", scope: !72, file: !72, line: 222, type: !224, flags: DIFlagPrototyped, spFlags: 0)
!224 = !DISubroutineType(types: !225)
!225 = !{!122, !100}
!226 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !227, file: !66, line: 186)
!227 = !DISubprogram(name: "wcsncat", scope: !72, file: !72, line: 101, type: !228, flags: DIFlagPrototyped, spFlags: 0)
!228 = !DISubroutineType(types: !229)
!229 = !{!87, !89, !99, !122}
!230 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !231, file: !66, line: 187)
!231 = !DISubprogram(name: "wcsncmp", scope: !72, file: !72, line: 109, type: !232, flags: DIFlagPrototyped, spFlags: 0)
!232 = !DISubroutineType(types: !233)
!233 = !{!14, !100, !100, !122}
!234 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !235, file: !66, line: 188)
!235 = !DISubprogram(name: "wcsncpy", scope: !72, file: !72, line: 92, type: !228, flags: DIFlagPrototyped, spFlags: 0)
!236 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !237, file: !66, line: 189)
!237 = !DISubprogram(name: "wcsrtombs", scope: !72, file: !72, line: 343, type: !238, flags: DIFlagPrototyped, spFlags: 0)
!238 = !DISubroutineType(types: !239)
!239 = !{!122, !196, !240, !122, !127}
!240 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !241)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!242 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !243, file: !66, line: 190)
!243 = !DISubprogram(name: "wcsspn", scope: !72, file: !72, line: 191, type: !212, flags: DIFlagPrototyped, spFlags: 0)
!244 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !245, file: !66, line: 191)
!245 = !DISubprogram(name: "wcstod", scope: !72, file: !72, line: 377, type: !246, flags: DIFlagPrototyped, spFlags: 0)
!246 = !DISubroutineType(types: !247)
!247 = !{!248, !99, !249}
!248 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!249 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !250)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!251 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !252, file: !66, line: 193)
!252 = !DISubprogram(name: "wcstof", scope: !72, file: !72, line: 382, type: !253, flags: DIFlagPrototyped, spFlags: 0)
!253 = !DISubroutineType(types: !254)
!254 = !{!255, !99, !249}
!255 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!256 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !257, file: !66, line: 195)
!257 = !DISubprogram(name: "wcstok", scope: !72, file: !72, line: 217, type: !258, flags: DIFlagPrototyped, spFlags: 0)
!258 = !DISubroutineType(types: !259)
!259 = !{!87, !89, !99, !249}
!260 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !261, file: !66, line: 196)
!261 = !DISubprogram(name: "wcstol", scope: !72, file: !72, line: 428, type: !262, flags: DIFlagPrototyped, spFlags: 0)
!262 = !DISubroutineType(types: !263)
!263 = !{!264, !99, !249, !14}
!264 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!265 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !266, file: !66, line: 197)
!266 = !DISubprogram(name: "wcstoul", scope: !72, file: !72, line: 433, type: !267, flags: DIFlagPrototyped, spFlags: 0)
!267 = !DISubroutineType(types: !268)
!268 = !{!124, !99, !249, !14}
!269 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !270, file: !66, line: 198)
!270 = !DISubprogram(name: "wcsxfrm", scope: !72, file: !72, line: 135, type: !271, flags: DIFlagPrototyped, spFlags: 0)
!271 = !DISubroutineType(types: !272)
!272 = !{!122, !89, !99, !122}
!273 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !274, file: !66, line: 199)
!274 = !DISubprogram(name: "wctob", scope: !72, file: !72, line: 288, type: !275, flags: DIFlagPrototyped, spFlags: 0)
!275 = !DISubroutineType(types: !276)
!276 = !{!14, !68}
!277 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !278, file: !66, line: 200)
!278 = !DISubprogram(name: "wmemcmp", scope: !72, file: !72, line: 258, type: !232, flags: DIFlagPrototyped, spFlags: 0)
!279 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !280, file: !66, line: 201)
!280 = !DISubprogram(name: "wmemcpy", scope: !72, file: !72, line: 262, type: !228, flags: DIFlagPrototyped, spFlags: 0)
!281 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !282, file: !66, line: 202)
!282 = !DISubprogram(name: "wmemmove", scope: !72, file: !72, line: 267, type: !283, flags: DIFlagPrototyped, spFlags: 0)
!283 = !DISubroutineType(types: !284)
!284 = !{!87, !87, !100, !122}
!285 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !286, file: !66, line: 203)
!286 = !DISubprogram(name: "wmemset", scope: !72, file: !72, line: 271, type: !287, flags: DIFlagPrototyped, spFlags: 0)
!287 = !DISubroutineType(types: !288)
!288 = !{!87, !87, !88, !122}
!289 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !290, file: !66, line: 204)
!290 = !DISubprogram(name: "wprintf", scope: !72, file: !72, line: 587, type: !291, flags: DIFlagPrototyped, spFlags: 0)
!291 = !DISubroutineType(types: !292)
!292 = !{!14, !99, null}
!293 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !294, file: !66, line: 205)
!294 = !DISubprogram(name: "wscanf", linkageName: "__isoc99_wscanf", scope: !72, file: !72, line: 644, type: !291, flags: DIFlagPrototyped, spFlags: 0)
!295 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !296, file: !66, line: 206)
!296 = !DISubprogram(name: "wcschr", scope: !72, file: !72, line: 164, type: !297, flags: DIFlagPrototyped, spFlags: 0)
!297 = !DISubroutineType(types: !298)
!298 = !{!87, !100, !88}
!299 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !300, file: !66, line: 207)
!300 = !DISubprogram(name: "wcspbrk", scope: !72, file: !72, line: 201, type: !301, flags: DIFlagPrototyped, spFlags: 0)
!301 = !DISubroutineType(types: !302)
!302 = !{!87, !100, !100}
!303 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !304, file: !66, line: 208)
!304 = !DISubprogram(name: "wcsrchr", scope: !72, file: !72, line: 174, type: !297, flags: DIFlagPrototyped, spFlags: 0)
!305 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !306, file: !66, line: 209)
!306 = !DISubprogram(name: "wcsstr", scope: !72, file: !72, line: 212, type: !301, flags: DIFlagPrototyped, spFlags: 0)
!307 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !308, file: !66, line: 210)
!308 = !DISubprogram(name: "wmemchr", scope: !72, file: !72, line: 253, type: !309, flags: DIFlagPrototyped, spFlags: 0)
!309 = !DISubroutineType(types: !310)
!310 = !{!87, !100, !88, !122}
!311 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !312, entity: !313, file: !66, line: 251)
!312 = !DINamespace(name: "__gnu_cxx", scope: null)
!313 = !DISubprogram(name: "wcstold", scope: !72, file: !72, line: 384, type: !314, flags: DIFlagPrototyped, spFlags: 0)
!314 = !DISubroutineType(types: !315)
!315 = !{!316, !99, !249}
!316 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!317 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !312, entity: !318, file: !66, line: 260)
!318 = !DISubprogram(name: "wcstoll", scope: !72, file: !72, line: 441, type: !319, flags: DIFlagPrototyped, spFlags: 0)
!319 = !DISubroutineType(types: !320)
!320 = !{!321, !99, !249, !14}
!321 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!322 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !312, entity: !323, file: !66, line: 261)
!323 = !DISubprogram(name: "wcstoull", scope: !72, file: !72, line: 448, type: !324, flags: DIFlagPrototyped, spFlags: 0)
!324 = !DISubroutineType(types: !325)
!325 = !{!326, !99, !249, !14}
!326 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!327 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !313, file: !66, line: 267)
!328 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !318, file: !66, line: 268)
!329 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !323, file: !66, line: 269)
!330 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !252, file: !66, line: 283)
!331 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !177, file: !66, line: 286)
!332 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !183, file: !66, line: 289)
!333 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !191, file: !66, line: 292)
!334 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !313, file: !66, line: 296)
!335 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !318, file: !66, line: 297)
!336 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !323, file: !66, line: 298)
!337 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !338, file: !339, line: 66)
!338 = !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !340, file: !339, line: 97, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!339 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/exception_ptr.h", directory: "", checksumkind: CSK_MD5, checksum: "314ad14748ccb9ff85c65d17ebb0828b")
!340 = !DINamespace(name: "__exception_ptr", scope: !49)
!341 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !340, entity: !342, file: !339, line: 85)
!342 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !49, file: !339, line: 81, type: !343, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!343 = !DISubroutineType(types: !344)
!344 = !{null, !338}
!345 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !346, file: !339, line: 243)
!346 = !DISubprogram(name: "swap", linkageName: "_ZNSt15__exception_ptr4swapERNS_13exception_ptrES1_", scope: !340, file: !339, line: 230, type: !347, flags: DIFlagPrototyped, spFlags: 0)
!347 = !DISubroutineType(types: !348)
!348 = !{null, !349, !349}
!349 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !338, size: 64)
!350 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !351, file: !353, line: 53)
!351 = !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !352, line: 51, size: 768, flags: DIFlagFwdDecl, identifier: "_ZTS5lconv")
!352 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "0cf373fc44eed8073800bdb9da87b72f")
!353 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/clocale", directory: "")
!354 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !355, file: !353, line: 54)
!355 = !DISubprogram(name: "setlocale", scope: !352, file: !352, line: 122, type: !356, flags: DIFlagPrototyped, spFlags: 0)
!356 = !DISubroutineType(types: !357)
!357 = !{!197, !14, !126}
!358 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !359, file: !353, line: 55)
!359 = !DISubprogram(name: "localeconv", scope: !352, file: !352, line: 125, type: !360, flags: DIFlagPrototyped, spFlags: 0)
!360 = !DISubroutineType(types: !361)
!361 = !{!362}
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!363 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !364, file: !368, line: 64)
!364 = !DISubprogram(name: "isalnum", scope: !365, file: !365, line: 108, type: !366, flags: DIFlagPrototyped, spFlags: 0)
!365 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "36575f934ef4fe7e9d50a3cb17bd5c66")
!366 = !DISubroutineType(types: !367)
!367 = !{!14, !14}
!368 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cctype", directory: "")
!369 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !370, file: !368, line: 65)
!370 = !DISubprogram(name: "isalpha", scope: !365, file: !365, line: 109, type: !366, flags: DIFlagPrototyped, spFlags: 0)
!371 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !372, file: !368, line: 66)
!372 = !DISubprogram(name: "iscntrl", scope: !365, file: !365, line: 110, type: !366, flags: DIFlagPrototyped, spFlags: 0)
!373 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !374, file: !368, line: 67)
!374 = !DISubprogram(name: "isdigit", scope: !365, file: !365, line: 111, type: !366, flags: DIFlagPrototyped, spFlags: 0)
!375 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !376, file: !368, line: 68)
!376 = !DISubprogram(name: "isgraph", scope: !365, file: !365, line: 113, type: !366, flags: DIFlagPrototyped, spFlags: 0)
!377 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !378, file: !368, line: 69)
!378 = !DISubprogram(name: "islower", scope: !365, file: !365, line: 112, type: !366, flags: DIFlagPrototyped, spFlags: 0)
!379 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !380, file: !368, line: 70)
!380 = !DISubprogram(name: "isprint", scope: !365, file: !365, line: 114, type: !366, flags: DIFlagPrototyped, spFlags: 0)
!381 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !382, file: !368, line: 71)
!382 = !DISubprogram(name: "ispunct", scope: !365, file: !365, line: 115, type: !366, flags: DIFlagPrototyped, spFlags: 0)
!383 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !384, file: !368, line: 72)
!384 = !DISubprogram(name: "isspace", scope: !365, file: !365, line: 116, type: !366, flags: DIFlagPrototyped, spFlags: 0)
!385 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !386, file: !368, line: 73)
!386 = !DISubprogram(name: "isupper", scope: !365, file: !365, line: 117, type: !366, flags: DIFlagPrototyped, spFlags: 0)
!387 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !388, file: !368, line: 74)
!388 = !DISubprogram(name: "isxdigit", scope: !365, file: !365, line: 118, type: !366, flags: DIFlagPrototyped, spFlags: 0)
!389 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !390, file: !368, line: 75)
!390 = !DISubprogram(name: "tolower", scope: !365, file: !365, line: 122, type: !366, flags: DIFlagPrototyped, spFlags: 0)
!391 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !392, file: !368, line: 76)
!392 = !DISubprogram(name: "toupper", scope: !365, file: !365, line: 125, type: !366, flags: DIFlagPrototyped, spFlags: 0)
!393 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !394, file: !368, line: 87)
!394 = !DISubprogram(name: "isblank", scope: !365, file: !365, line: 130, type: !366, flags: DIFlagPrototyped, spFlags: 0)
!395 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !396, entity: !397, file: !398, line: 58)
!396 = !DINamespace(name: "__gnu_debug", scope: null)
!397 = !DINamespace(name: "__debug", scope: !49)
!398 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/debug/debug.h", directory: "", checksumkind: CSK_MD5, checksum: "752210a319f5f5d356cc29cd1ce3cdc7")
!399 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !400, file: !402, line: 52)
!400 = !DISubprogram(name: "abs", scope: !401, file: !401, line: 840, type: !366, flags: DIFlagPrototyped, spFlags: 0)
!401 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!402 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/std_abs.h", directory: "")
!403 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !404, file: !406, line: 131)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !401, line: 62, baseType: !405)
!405 = !DICompositeType(tag: DW_TAG_structure_type, file: !401, line: 58, size: 64, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!406 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cstdlib", directory: "")
!407 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !408, file: !406, line: 132)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !401, line: 70, baseType: !409)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !401, line: 66, size: 128, flags: DIFlagTypePassByValue, elements: !410, identifier: "_ZTS6ldiv_t")
!410 = !{!411, !412}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !409, file: !401, line: 68, baseType: !264, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !409, file: !401, line: 69, baseType: !264, size: 64, offset: 64)
!413 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !414, file: !406, line: 134)
!414 = !DISubprogram(name: "abort", scope: !401, file: !401, line: 591, type: !415, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!415 = !DISubroutineType(types: !416)
!416 = !{null}
!417 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !418, file: !406, line: 136)
!418 = !DISubprogram(name: "aligned_alloc", scope: !401, file: !401, line: 586, type: !419, flags: DIFlagPrototyped, spFlags: 0)
!419 = !DISubroutineType(types: !420)
!420 = !{!174, !122, !122}
!421 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !422, file: !406, line: 138)
!422 = !DISubprogram(name: "atexit", scope: !401, file: !401, line: 595, type: !423, flags: DIFlagPrototyped, spFlags: 0)
!423 = !DISubroutineType(types: !424)
!424 = !{!14, !425}
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!426 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !427, file: !406, line: 141)
!427 = !DISubprogram(name: "at_quick_exit", scope: !401, file: !401, line: 600, type: !423, flags: DIFlagPrototyped, spFlags: 0)
!428 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !429, file: !406, line: 144)
!429 = !DISubprogram(name: "atof", scope: !401, file: !401, line: 101, type: !430, flags: DIFlagPrototyped, spFlags: 0)
!430 = !DISubroutineType(types: !431)
!431 = !{!248, !126}
!432 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !433, file: !406, line: 145)
!433 = !DISubprogram(name: "atoi", scope: !401, file: !401, line: 104, type: !434, flags: DIFlagPrototyped, spFlags: 0)
!434 = !DISubroutineType(types: !435)
!435 = !{!14, !126}
!436 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !437, file: !406, line: 146)
!437 = !DISubprogram(name: "atol", scope: !401, file: !401, line: 107, type: !438, flags: DIFlagPrototyped, spFlags: 0)
!438 = !DISubroutineType(types: !439)
!439 = !{!264, !126}
!440 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !441, file: !406, line: 147)
!441 = !DISubprogram(name: "bsearch", scope: !401, file: !401, line: 820, type: !442, flags: DIFlagPrototyped, spFlags: 0)
!442 = !DISubroutineType(types: !443)
!443 = !{!174, !444, !444, !122, !122, !446}
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !401, line: 808, baseType: !447)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DISubroutineType(types: !449)
!449 = !{!14, !444, !444}
!450 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !451, file: !406, line: 148)
!451 = !DISubprogram(name: "calloc", scope: !401, file: !401, line: 542, type: !419, flags: DIFlagPrototyped, spFlags: 0)
!452 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !453, file: !406, line: 149)
!453 = !DISubprogram(name: "div", scope: !401, file: !401, line: 852, type: !454, flags: DIFlagPrototyped, spFlags: 0)
!454 = !DISubroutineType(types: !455)
!455 = !{!404, !14, !14}
!456 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !457, file: !406, line: 150)
!457 = !DISubprogram(name: "exit", scope: !401, file: !401, line: 617, type: !458, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!458 = !DISubroutineType(types: !459)
!459 = !{null, !14}
!460 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !461, file: !406, line: 151)
!461 = !DISubprogram(name: "free", scope: !401, file: !401, line: 565, type: !462, flags: DIFlagPrototyped, spFlags: 0)
!462 = !DISubroutineType(types: !463)
!463 = !{null, !174}
!464 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !465, file: !406, line: 152)
!465 = !DISubprogram(name: "getenv", scope: !401, file: !401, line: 634, type: !466, flags: DIFlagPrototyped, spFlags: 0)
!466 = !DISubroutineType(types: !467)
!467 = !{!197, !126}
!468 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !469, file: !406, line: 153)
!469 = !DISubprogram(name: "labs", scope: !401, file: !401, line: 841, type: !470, flags: DIFlagPrototyped, spFlags: 0)
!470 = !DISubroutineType(types: !471)
!471 = !{!264, !264}
!472 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !473, file: !406, line: 154)
!473 = !DISubprogram(name: "ldiv", scope: !401, file: !401, line: 854, type: !474, flags: DIFlagPrototyped, spFlags: 0)
!474 = !DISubroutineType(types: !475)
!475 = !{!408, !264, !264}
!476 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !477, file: !406, line: 155)
!477 = !DISubprogram(name: "malloc", scope: !401, file: !401, line: 539, type: !478, flags: DIFlagPrototyped, spFlags: 0)
!478 = !DISubroutineType(types: !479)
!479 = !{!174, !122}
!480 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !481, file: !406, line: 157)
!481 = !DISubprogram(name: "mblen", scope: !401, file: !401, line: 922, type: !482, flags: DIFlagPrototyped, spFlags: 0)
!482 = !DISubroutineType(types: !483)
!483 = !{!14, !126, !122}
!484 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !485, file: !406, line: 158)
!485 = !DISubprogram(name: "mbstowcs", scope: !401, file: !401, line: 933, type: !486, flags: DIFlagPrototyped, spFlags: 0)
!486 = !DISubroutineType(types: !487)
!487 = !{!122, !89, !125, !122}
!488 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !489, file: !406, line: 159)
!489 = !DISubprogram(name: "mbtowc", scope: !401, file: !401, line: 925, type: !490, flags: DIFlagPrototyped, spFlags: 0)
!490 = !DISubroutineType(types: !491)
!491 = !{!14, !89, !125, !122}
!492 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !493, file: !406, line: 161)
!493 = !DISubprogram(name: "qsort", scope: !401, file: !401, line: 830, type: !494, flags: DIFlagPrototyped, spFlags: 0)
!494 = !DISubroutineType(types: !495)
!495 = !{null, !174, !122, !122, !446}
!496 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !497, file: !406, line: 164)
!497 = !DISubprogram(name: "quick_exit", scope: !401, file: !401, line: 623, type: !458, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!498 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !499, file: !406, line: 167)
!499 = !DISubprogram(name: "rand", scope: !401, file: !401, line: 453, type: !12, flags: DIFlagPrototyped, spFlags: 0)
!500 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !501, file: !406, line: 168)
!501 = !DISubprogram(name: "realloc", scope: !401, file: !401, line: 550, type: !502, flags: DIFlagPrototyped, spFlags: 0)
!502 = !DISubroutineType(types: !503)
!503 = !{!174, !174, !122}
!504 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !505, file: !406, line: 169)
!505 = !DISubprogram(name: "srand", scope: !401, file: !401, line: 455, type: !506, flags: DIFlagPrototyped, spFlags: 0)
!506 = !DISubroutineType(types: !507)
!507 = !{null, !61}
!508 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !509, file: !406, line: 170)
!509 = !DISubprogram(name: "strtod", scope: !401, file: !401, line: 117, type: !510, flags: DIFlagPrototyped, spFlags: 0)
!510 = !DISubroutineType(types: !511)
!511 = !{!248, !125, !512}
!512 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !513)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!514 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !515, file: !406, line: 171)
!515 = !DISubprogram(name: "strtol", scope: !401, file: !401, line: 176, type: !516, flags: DIFlagPrototyped, spFlags: 0)
!516 = !DISubroutineType(types: !517)
!517 = !{!264, !125, !512, !14}
!518 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !519, file: !406, line: 172)
!519 = !DISubprogram(name: "strtoul", scope: !401, file: !401, line: 180, type: !520, flags: DIFlagPrototyped, spFlags: 0)
!520 = !DISubroutineType(types: !521)
!521 = !{!124, !125, !512, !14}
!522 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !523, file: !406, line: 173)
!523 = !DISubprogram(name: "system", scope: !401, file: !401, line: 784, type: !434, flags: DIFlagPrototyped, spFlags: 0)
!524 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !525, file: !406, line: 175)
!525 = !DISubprogram(name: "wcstombs", scope: !401, file: !401, line: 936, type: !526, flags: DIFlagPrototyped, spFlags: 0)
!526 = !DISubroutineType(types: !527)
!527 = !{!122, !196, !99, !122}
!528 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !529, file: !406, line: 176)
!529 = !DISubprogram(name: "wctomb", scope: !401, file: !401, line: 929, type: !530, flags: DIFlagPrototyped, spFlags: 0)
!530 = !DISubroutineType(types: !531)
!531 = !{!14, !197, !88}
!532 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !312, entity: !533, file: !406, line: 204)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !401, line: 80, baseType: !534)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !401, line: 76, size: 128, flags: DIFlagTypePassByValue, elements: !535, identifier: "_ZTS7lldiv_t")
!535 = !{!536, !537}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !534, file: !401, line: 78, baseType: !321, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !534, file: !401, line: 79, baseType: !321, size: 64, offset: 64)
!538 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !312, entity: !539, file: !406, line: 210)
!539 = !DISubprogram(name: "_Exit", scope: !401, file: !401, line: 629, type: !458, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!540 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !312, entity: !541, file: !406, line: 214)
!541 = !DISubprogram(name: "llabs", scope: !401, file: !401, line: 844, type: !542, flags: DIFlagPrototyped, spFlags: 0)
!542 = !DISubroutineType(types: !543)
!543 = !{!321, !321}
!544 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !312, entity: !545, file: !406, line: 220)
!545 = !DISubprogram(name: "lldiv", scope: !401, file: !401, line: 858, type: !546, flags: DIFlagPrototyped, spFlags: 0)
!546 = !DISubroutineType(types: !547)
!547 = !{!533, !321, !321}
!548 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !312, entity: !549, file: !406, line: 231)
!549 = !DISubprogram(name: "atoll", scope: !401, file: !401, line: 112, type: !550, flags: DIFlagPrototyped, spFlags: 0)
!550 = !DISubroutineType(types: !551)
!551 = !{!321, !126}
!552 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !312, entity: !553, file: !406, line: 232)
!553 = !DISubprogram(name: "strtoll", scope: !401, file: !401, line: 200, type: !554, flags: DIFlagPrototyped, spFlags: 0)
!554 = !DISubroutineType(types: !555)
!555 = !{!321, !125, !512, !14}
!556 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !312, entity: !557, file: !406, line: 233)
!557 = !DISubprogram(name: "strtoull", scope: !401, file: !401, line: 205, type: !558, flags: DIFlagPrototyped, spFlags: 0)
!558 = !DISubroutineType(types: !559)
!559 = !{!326, !125, !512, !14}
!560 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !312, entity: !561, file: !406, line: 235)
!561 = !DISubprogram(name: "strtof", scope: !401, file: !401, line: 123, type: !562, flags: DIFlagPrototyped, spFlags: 0)
!562 = !DISubroutineType(types: !563)
!563 = !{!255, !125, !512}
!564 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !312, entity: !565, file: !406, line: 236)
!565 = !DISubprogram(name: "strtold", scope: !401, file: !401, line: 126, type: !566, flags: DIFlagPrototyped, spFlags: 0)
!566 = !DISubroutineType(types: !567)
!567 = !{!316, !125, !512}
!568 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !533, file: !406, line: 244)
!569 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !539, file: !406, line: 246)
!570 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !541, file: !406, line: 248)
!571 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !572, file: !406, line: 249)
!572 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !312, file: !406, line: 217, type: !546, flags: DIFlagPrototyped, spFlags: 0)
!573 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !545, file: !406, line: 250)
!574 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !549, file: !406, line: 252)
!575 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !561, file: !406, line: 253)
!576 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !553, file: !406, line: 254)
!577 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !557, file: !406, line: 255)
!578 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !565, file: !406, line: 256)
!579 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !580, file: !582, line: 98)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !581, line: 7, baseType: !82)
!581 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!582 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cstdio", directory: "")
!583 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !584, file: !582, line: 99)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !585, line: 84, baseType: !586)
!585 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fpos_t", file: !587, line: 14, baseType: !588)
!587 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h", directory: "", checksumkind: CSK_MD5, checksum: "32de8bdaf3551a6c0a9394f9af4389ce")
!588 = !DICompositeType(tag: DW_TAG_structure_type, name: "_G_fpos_t", file: !587, line: 10, size: 128, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
!589 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !590, file: !582, line: 101)
!590 = !DISubprogram(name: "clearerr", scope: !585, file: !585, line: 757, type: !591, flags: DIFlagPrototyped, spFlags: 0)
!591 = !DISubroutineType(types: !592)
!592 = !{null, !593}
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!594 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !595, file: !582, line: 102)
!595 = !DISubprogram(name: "fclose", scope: !585, file: !585, line: 213, type: !596, flags: DIFlagPrototyped, spFlags: 0)
!596 = !DISubroutineType(types: !597)
!597 = !{!14, !593}
!598 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !599, file: !582, line: 103)
!599 = !DISubprogram(name: "feof", scope: !585, file: !585, line: 759, type: !596, flags: DIFlagPrototyped, spFlags: 0)
!600 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !601, file: !582, line: 104)
!601 = !DISubprogram(name: "ferror", scope: !585, file: !585, line: 761, type: !596, flags: DIFlagPrototyped, spFlags: 0)
!602 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !603, file: !582, line: 105)
!603 = !DISubprogram(name: "fflush", scope: !585, file: !585, line: 218, type: !596, flags: DIFlagPrototyped, spFlags: 0)
!604 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !605, file: !582, line: 106)
!605 = !DISubprogram(name: "fgetc", scope: !585, file: !585, line: 485, type: !596, flags: DIFlagPrototyped, spFlags: 0)
!606 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !607, file: !582, line: 107)
!607 = !DISubprogram(name: "fgetpos", scope: !585, file: !585, line: 731, type: !608, flags: DIFlagPrototyped, spFlags: 0)
!608 = !DISubroutineType(types: !609)
!609 = !{!14, !610, !611}
!610 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !593)
!611 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !612)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!613 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !614, file: !582, line: 108)
!614 = !DISubprogram(name: "fgets", scope: !585, file: !585, line: 564, type: !615, flags: DIFlagPrototyped, spFlags: 0)
!615 = !DISubroutineType(types: !616)
!616 = !{!197, !196, !14, !610}
!617 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !618, file: !582, line: 109)
!618 = !DISubprogram(name: "fopen", scope: !585, file: !585, line: 246, type: !619, flags: DIFlagPrototyped, spFlags: 0)
!619 = !DISubroutineType(types: !620)
!620 = !{!593, !125, !125}
!621 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !622, file: !582, line: 110)
!622 = !DISubprogram(name: "fprintf", scope: !585, file: !585, line: 326, type: !623, flags: DIFlagPrototyped, spFlags: 0)
!623 = !DISubroutineType(types: !624)
!624 = !{!14, !610, !125, null}
!625 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !626, file: !582, line: 111)
!626 = !DISubprogram(name: "fputc", scope: !585, file: !585, line: 521, type: !627, flags: DIFlagPrototyped, spFlags: 0)
!627 = !DISubroutineType(types: !628)
!628 = !{!14, !14, !593}
!629 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !630, file: !582, line: 112)
!630 = !DISubprogram(name: "fputs", scope: !585, file: !585, line: 626, type: !631, flags: DIFlagPrototyped, spFlags: 0)
!631 = !DISubroutineType(types: !632)
!632 = !{!14, !125, !610}
!633 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !634, file: !582, line: 113)
!634 = !DISubprogram(name: "fread", scope: !585, file: !585, line: 646, type: !635, flags: DIFlagPrototyped, spFlags: 0)
!635 = !DISubroutineType(types: !636)
!636 = !{!122, !637, !122, !122, !610}
!637 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !174)
!638 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !639, file: !582, line: 114)
!639 = !DISubprogram(name: "freopen", scope: !585, file: !585, line: 252, type: !640, flags: DIFlagPrototyped, spFlags: 0)
!640 = !DISubroutineType(types: !641)
!641 = !{!593, !125, !125, !610}
!642 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !643, file: !582, line: 115)
!643 = !DISubprogram(name: "fscanf", linkageName: "__isoc99_fscanf", scope: !585, file: !585, line: 407, type: !623, flags: DIFlagPrototyped, spFlags: 0)
!644 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !645, file: !582, line: 116)
!645 = !DISubprogram(name: "fseek", scope: !585, file: !585, line: 684, type: !646, flags: DIFlagPrototyped, spFlags: 0)
!646 = !DISubroutineType(types: !647)
!647 = !{!14, !593, !264, !14}
!648 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !649, file: !582, line: 117)
!649 = !DISubprogram(name: "fsetpos", scope: !585, file: !585, line: 736, type: !650, flags: DIFlagPrototyped, spFlags: 0)
!650 = !DISubroutineType(types: !651)
!651 = !{!14, !593, !652}
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !584)
!654 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !655, file: !582, line: 118)
!655 = !DISubprogram(name: "ftell", scope: !585, file: !585, line: 689, type: !656, flags: DIFlagPrototyped, spFlags: 0)
!656 = !DISubroutineType(types: !657)
!657 = !{!264, !593}
!658 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !659, file: !582, line: 119)
!659 = !DISubprogram(name: "fwrite", scope: !585, file: !585, line: 652, type: !660, flags: DIFlagPrototyped, spFlags: 0)
!660 = !DISubroutineType(types: !661)
!661 = !{!122, !662, !122, !122, !610}
!662 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !444)
!663 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !664, file: !582, line: 120)
!664 = !DISubprogram(name: "getc", scope: !585, file: !585, line: 486, type: !596, flags: DIFlagPrototyped, spFlags: 0)
!665 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !666, file: !582, line: 121)
!666 = !DISubprogram(name: "getchar", scope: !585, file: !585, line: 492, type: !12, flags: DIFlagPrototyped, spFlags: 0)
!667 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !668, file: !582, line: 126)
!668 = !DISubprogram(name: "perror", scope: !585, file: !585, line: 775, type: !669, flags: DIFlagPrototyped, spFlags: 0)
!669 = !DISubroutineType(types: !670)
!670 = !{null, !126}
!671 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !672, file: !582, line: 127)
!672 = !DISubprogram(name: "printf", scope: !585, file: !585, line: 332, type: !673, flags: DIFlagPrototyped, spFlags: 0)
!673 = !DISubroutineType(types: !674)
!674 = !{!14, !125, null}
!675 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !676, file: !582, line: 128)
!676 = !DISubprogram(name: "putc", scope: !585, file: !585, line: 522, type: !627, flags: DIFlagPrototyped, spFlags: 0)
!677 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !678, file: !582, line: 129)
!678 = !DISubprogram(name: "putchar", scope: !585, file: !585, line: 528, type: !366, flags: DIFlagPrototyped, spFlags: 0)
!679 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !680, file: !582, line: 130)
!680 = !DISubprogram(name: "puts", scope: !585, file: !585, line: 632, type: !434, flags: DIFlagPrototyped, spFlags: 0)
!681 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !682, file: !582, line: 131)
!682 = !DISubprogram(name: "remove", scope: !585, file: !585, line: 146, type: !434, flags: DIFlagPrototyped, spFlags: 0)
!683 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !684, file: !582, line: 132)
!684 = !DISubprogram(name: "rename", scope: !585, file: !585, line: 148, type: !685, flags: DIFlagPrototyped, spFlags: 0)
!685 = !DISubroutineType(types: !686)
!686 = !{!14, !126, !126}
!687 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !688, file: !582, line: 133)
!688 = !DISubprogram(name: "rewind", scope: !585, file: !585, line: 694, type: !591, flags: DIFlagPrototyped, spFlags: 0)
!689 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !690, file: !582, line: 134)
!690 = !DISubprogram(name: "scanf", linkageName: "__isoc99_scanf", scope: !585, file: !585, line: 410, type: !673, flags: DIFlagPrototyped, spFlags: 0)
!691 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !692, file: !582, line: 135)
!692 = !DISubprogram(name: "setbuf", scope: !585, file: !585, line: 304, type: !693, flags: DIFlagPrototyped, spFlags: 0)
!693 = !DISubroutineType(types: !694)
!694 = !{null, !610, !196}
!695 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !696, file: !582, line: 136)
!696 = !DISubprogram(name: "setvbuf", scope: !585, file: !585, line: 308, type: !697, flags: DIFlagPrototyped, spFlags: 0)
!697 = !DISubroutineType(types: !698)
!698 = !{!14, !610, !196, !14, !122}
!699 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !700, file: !582, line: 137)
!700 = !DISubprogram(name: "sprintf", scope: !585, file: !585, line: 334, type: !701, flags: DIFlagPrototyped, spFlags: 0)
!701 = !DISubroutineType(types: !702)
!702 = !{!14, !196, !125, null}
!703 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !704, file: !582, line: 138)
!704 = !DISubprogram(name: "sscanf", linkageName: "__isoc99_sscanf", scope: !585, file: !585, line: 412, type: !705, flags: DIFlagPrototyped, spFlags: 0)
!705 = !DISubroutineType(types: !706)
!706 = !{!14, !125, !125, null}
!707 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !708, file: !582, line: 139)
!708 = !DISubprogram(name: "tmpfile", scope: !585, file: !585, line: 173, type: !709, flags: DIFlagPrototyped, spFlags: 0)
!709 = !DISubroutineType(types: !710)
!710 = !{!593}
!711 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !712, file: !582, line: 141)
!712 = !DISubprogram(name: "tmpnam", scope: !585, file: !585, line: 187, type: !713, flags: DIFlagPrototyped, spFlags: 0)
!713 = !DISubroutineType(types: !714)
!714 = !{!197, !197}
!715 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !716, file: !582, line: 143)
!716 = !DISubprogram(name: "ungetc", scope: !585, file: !585, line: 639, type: !627, flags: DIFlagPrototyped, spFlags: 0)
!717 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !718, file: !582, line: 144)
!718 = !DISubprogram(name: "vfprintf", scope: !585, file: !585, line: 341, type: !719, flags: DIFlagPrototyped, spFlags: 0)
!719 = !DISubroutineType(types: !720)
!720 = !{!14, !610, !125, !167}
!721 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !722, file: !582, line: 145)
!722 = !DISubprogram(name: "vprintf", scope: !585, file: !585, line: 347, type: !723, flags: DIFlagPrototyped, spFlags: 0)
!723 = !DISubroutineType(types: !724)
!724 = !{!14, !125, !167}
!725 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !726, file: !582, line: 146)
!726 = !DISubprogram(name: "vsprintf", scope: !585, file: !585, line: 349, type: !727, flags: DIFlagPrototyped, spFlags: 0)
!727 = !DISubroutineType(types: !728)
!728 = !{!14, !196, !125, !167}
!729 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !312, entity: !730, file: !582, line: 175)
!730 = !DISubprogram(name: "snprintf", scope: !585, file: !585, line: 354, type: !731, flags: DIFlagPrototyped, spFlags: 0)
!731 = !DISubroutineType(types: !732)
!732 = !{!14, !196, !122, !125, null}
!733 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !312, entity: !734, file: !582, line: 176)
!734 = !DISubprogram(name: "vfscanf", linkageName: "__isoc99_vfscanf", scope: !585, file: !585, line: 451, type: !719, flags: DIFlagPrototyped, spFlags: 0)
!735 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !312, entity: !736, file: !582, line: 177)
!736 = !DISubprogram(name: "vscanf", linkageName: "__isoc99_vscanf", scope: !585, file: !585, line: 456, type: !723, flags: DIFlagPrototyped, spFlags: 0)
!737 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !312, entity: !738, file: !582, line: 178)
!738 = !DISubprogram(name: "vsnprintf", scope: !585, file: !585, line: 358, type: !739, flags: DIFlagPrototyped, spFlags: 0)
!739 = !DISubroutineType(types: !740)
!740 = !{!14, !196, !122, !125, !167}
!741 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !312, entity: !742, file: !582, line: 179)
!742 = !DISubprogram(name: "vsscanf", linkageName: "__isoc99_vsscanf", scope: !585, file: !585, line: 459, type: !743, flags: DIFlagPrototyped, spFlags: 0)
!743 = !DISubroutineType(types: !744)
!744 = !{!14, !125, !125, !167}
!745 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !730, file: !582, line: 185)
!746 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !734, file: !582, line: 186)
!747 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !736, file: !582, line: 187)
!748 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !738, file: !582, line: 188)
!749 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !742, file: !582, line: 189)
!750 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !751, file: !757, line: 58)
!751 = !DIDerivedType(tag: DW_TAG_typedef, name: "max_align_t", file: !752, line: 24, baseType: !753)
!752 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/__stddef_max_align_t.h", directory: "/home/cs22mtech12008", checksumkind: CSK_MD5, checksum: "48e8e2456f77e6cda35d245130fa7259")
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !752, line: 19, size: 256, flags: DIFlagTypePassByValue, elements: !754, identifier: "_ZTS11max_align_t")
!754 = !{!755, !756}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "__clang_max_align_nonce1", scope: !753, file: !752, line: 20, baseType: !321, size: 64, align: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "__clang_max_align_nonce2", scope: !753, file: !752, line: 22, baseType: !316, size: 128, align: 128, offset: 128)
!757 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cstddef", directory: "")
!758 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !759, file: !765, line: 82)
!759 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctrans_t", file: !760, line: 48, baseType: !761)
!760 = !DIFile(filename: "/usr/include/wctype.h", directory: "", checksumkind: CSK_MD5, checksum: "e83097fbf57cc71ea472db59df3ba75d")
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !763)
!763 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !764, line: 41, baseType: !14)
!764 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!765 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cwctype", directory: "")
!766 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !767, file: !765, line: 83)
!767 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctype_t", file: !768, line: 38, baseType: !124)
!768 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "3598b9d23ef5d76319026b46e316b55f")
!769 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !68, file: !765, line: 84)
!770 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !771, file: !765, line: 86)
!771 = !DISubprogram(name: "iswalnum", scope: !768, file: !768, line: 95, type: !275, flags: DIFlagPrototyped, spFlags: 0)
!772 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !773, file: !765, line: 87)
!773 = !DISubprogram(name: "iswalpha", scope: !768, file: !768, line: 101, type: !275, flags: DIFlagPrototyped, spFlags: 0)
!774 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !775, file: !765, line: 89)
!775 = !DISubprogram(name: "iswblank", scope: !768, file: !768, line: 146, type: !275, flags: DIFlagPrototyped, spFlags: 0)
!776 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !777, file: !765, line: 91)
!777 = !DISubprogram(name: "iswcntrl", scope: !768, file: !768, line: 104, type: !275, flags: DIFlagPrototyped, spFlags: 0)
!778 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !779, file: !765, line: 92)
!779 = !DISubprogram(name: "iswctype", scope: !768, file: !768, line: 159, type: !780, flags: DIFlagPrototyped, spFlags: 0)
!780 = !DISubroutineType(types: !781)
!781 = !{!14, !68, !767}
!782 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !783, file: !765, line: 93)
!783 = !DISubprogram(name: "iswdigit", scope: !768, file: !768, line: 108, type: !275, flags: DIFlagPrototyped, spFlags: 0)
!784 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !785, file: !765, line: 94)
!785 = !DISubprogram(name: "iswgraph", scope: !768, file: !768, line: 112, type: !275, flags: DIFlagPrototyped, spFlags: 0)
!786 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !787, file: !765, line: 95)
!787 = !DISubprogram(name: "iswlower", scope: !768, file: !768, line: 117, type: !275, flags: DIFlagPrototyped, spFlags: 0)
!788 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !789, file: !765, line: 96)
!789 = !DISubprogram(name: "iswprint", scope: !768, file: !768, line: 120, type: !275, flags: DIFlagPrototyped, spFlags: 0)
!790 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !791, file: !765, line: 97)
!791 = !DISubprogram(name: "iswpunct", scope: !768, file: !768, line: 125, type: !275, flags: DIFlagPrototyped, spFlags: 0)
!792 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !793, file: !765, line: 98)
!793 = !DISubprogram(name: "iswspace", scope: !768, file: !768, line: 130, type: !275, flags: DIFlagPrototyped, spFlags: 0)
!794 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !795, file: !765, line: 99)
!795 = !DISubprogram(name: "iswupper", scope: !768, file: !768, line: 135, type: !275, flags: DIFlagPrototyped, spFlags: 0)
!796 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !797, file: !765, line: 100)
!797 = !DISubprogram(name: "iswxdigit", scope: !768, file: !768, line: 140, type: !275, flags: DIFlagPrototyped, spFlags: 0)
!798 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !799, file: !765, line: 101)
!799 = !DISubprogram(name: "towctrans", scope: !760, file: !760, line: 55, type: !800, flags: DIFlagPrototyped, spFlags: 0)
!800 = !DISubroutineType(types: !801)
!801 = !{!68, !68, !759}
!802 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !803, file: !765, line: 102)
!803 = !DISubprogram(name: "towlower", scope: !768, file: !768, line: 166, type: !804, flags: DIFlagPrototyped, spFlags: 0)
!804 = !DISubroutineType(types: !805)
!805 = !{!68, !68}
!806 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !807, file: !765, line: 103)
!807 = !DISubprogram(name: "towupper", scope: !768, file: !768, line: 169, type: !804, flags: DIFlagPrototyped, spFlags: 0)
!808 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !809, file: !765, line: 104)
!809 = !DISubprogram(name: "wctrans", scope: !760, file: !760, line: 52, type: !810, flags: DIFlagPrototyped, spFlags: 0)
!810 = !DISubroutineType(types: !811)
!811 = !{!759, !126}
!812 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !49, entity: !813, file: !765, line: 105)
!813 = !DISubprogram(name: "wctype", scope: !768, file: !768, line: 155, type: !814, flags: DIFlagPrototyped, spFlags: 0)
!814 = !DISubroutineType(types: !815)
!815 = !{!767, !126}
!816 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !817, line: 27, baseType: !124)
!817 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "2d764266ce95ab26d4a4767c2ec78176")
!818 = !{i32 7, !"Dwarf Version", i32 5}
!819 = !{i32 2, !"Debug Info Version", i32 3}
!820 = !{i32 1, !"wchar_size", i32 4}
!821 = !{i32 8, !"PIC Level", i32 2}
!822 = !{i32 7, !"PIE Level", i32 2}
!823 = !{i32 7, !"uwtable", i32 2}
!824 = !{i32 7, !"frame-pointer", i32 2}
!825 = !{!"clang version 16.0.0"}
!826 = distinct !DISubprogram(name: "runThread", linkageName: "_Z9runThreadPv", scope: !7, file: !7, line: 32, type: !827, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !829)
!827 = !DISubroutineType(types: !828)
!828 = !{!174, !174}
!829 = !{}
!830 = !DILocalVariable(name: "arg", arg: 1, scope: !826, file: !7, line: 32, type: !174)
!831 = !DILocation(line: 32, column: 23, scope: !826)
!832 = !DILocalVariable(name: "basePtr", scope: !826, file: !7, line: 33, type: !5)
!833 = !DILocation(line: 33, column: 8, scope: !826)
!834 = !DILocation(line: 33, column: 34, scope: !826)
!835 = !DILocation(line: 34, column: 5, scope: !826)
!836 = !DILocation(line: 34, column: 14, scope: !826)
!837 = !DILocation(line: 35, column: 5, scope: !826)
!838 = !DILocation(line: 35, column: 14, scope: !826)
!839 = !DILocalVariable(name: "a2Ptr", scope: !826, file: !7, line: 37, type: !20)
!840 = !DILocation(line: 37, column: 9, scope: !826)
!841 = !DILocation(line: 37, column: 39, scope: !826)
!842 = !DILocation(line: 38, column: 5, scope: !826)
!843 = !DILocation(line: 38, column: 12, scope: !826)
!844 = !DILocalVariable(name: "a1Ptr", scope: !826, file: !7, line: 40, type: !22)
!845 = !DILocation(line: 40, column: 9, scope: !826)
!846 = !DILocation(line: 40, column: 39, scope: !826)
!847 = !DILocation(line: 41, column: 5, scope: !826)
!848 = !DILocation(line: 41, column: 12, scope: !826)
!849 = !DILocation(line: 43, column: 5, scope: !826)
!850 = distinct !DISubprogram(name: "m2", linkageName: "_ZN1A2m2Ev", scope: !6, file: !7, line: 11, type: !16, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !19, retainedNodes: !829)
!851 = !DILocalVariable(name: "this", arg: 1, scope: !850, type: !5, flags: DIFlagArtificial | DIFlagObjectPointer)
!852 = !DILocation(line: 0, scope: !850)
!853 = !DILocation(line: 12, column: 19, scope: !850)
!854 = !DILocation(line: 13, column: 5, scope: !850)
!855 = distinct !DISubprogram(name: "m2", linkageName: "_ZN2A22m2Ev", scope: !21, file: !7, line: 25, type: !856, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !859, retainedNodes: !829)
!856 = !DISubroutineType(types: !857)
!857 = !{null, !858}
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!859 = !DISubprogram(name: "m2", linkageName: "_ZN2A22m2Ev", scope: !21, file: !7, line: 25, type: !856, scopeLine: 25, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!860 = !DILocalVariable(name: "this", arg: 1, scope: !855, type: !20, flags: DIFlagArtificial | DIFlagObjectPointer)
!861 = !DILocation(line: 0, scope: !855)
!862 = !DILocation(line: 26, column: 19, scope: !855)
!863 = !DILocation(line: 27, column: 5, scope: !855)
!864 = distinct !DISubprogram(name: "createThread", linkageName: "_Z12createThreadv", scope: !7, file: !7, line: 46, type: !415, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !829)
!865 = !DILocalVariable(name: "a1Obj", scope: !864, file: !7, line: 47, type: !23)
!866 = !DILocation(line: 47, column: 8, scope: !864)
!867 = !DILocalVariable(name: "basePtr", scope: !864, file: !7, line: 48, type: !5)
!868 = !DILocation(line: 48, column: 8, scope: !864)
!869 = !DILocation(line: 49, column: 45, scope: !864)
!870 = !DILocation(line: 49, column: 5, scope: !864)
!871 = !DILocation(line: 50, column: 18, scope: !864)
!872 = !DILocation(line: 50, column: 5, scope: !864)
!873 = !DILocation(line: 51, column: 1, scope: !864)
!874 = distinct !DISubprogram(name: "A1", linkageName: "_ZN2A1C2Ev", scope: !23, file: !7, line: 16, type: !27, scopeLine: 16, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !875, retainedNodes: !829)
!875 = !DISubprogram(name: "A1", scope: !23, type: !27, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!876 = !DILocalVariable(name: "this", arg: 1, scope: !874, type: !22, flags: DIFlagArtificial | DIFlagObjectPointer)
!877 = !DILocation(line: 0, scope: !874)
!878 = !DILocation(line: 16, column: 7, scope: !874)
!879 = distinct !DISubprogram(name: "main", scope: !7, file: !7, line: 53, type: !12, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !829)
!880 = !DILocation(line: 54, column: 5, scope: !879)
!881 = !DILocation(line: 55, column: 5, scope: !879)
!882 = distinct !DISubprogram(name: "A", linkageName: "_ZN1AC2Ev", scope: !6, file: !7, line: 5, type: !16, scopeLine: 5, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !883, retainedNodes: !829)
!883 = !DISubprogram(name: "A", scope: !6, type: !16, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!884 = !DILocalVariable(name: "this", arg: 1, scope: !882, type: !5, flags: DIFlagArtificial | DIFlagObjectPointer)
!885 = !DILocation(line: 0, scope: !882)
!886 = !DILocation(line: 5, column: 7, scope: !882)
!887 = distinct !DISubprogram(name: "m1", linkageName: "_ZN2A12m1Ev", scope: !23, file: !7, line: 18, type: !27, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !26, retainedNodes: !829)
!888 = !DILocalVariable(name: "this", arg: 1, scope: !887, type: !22, flags: DIFlagArtificial | DIFlagObjectPointer)
!889 = !DILocation(line: 0, scope: !887)
!890 = !DILocation(line: 19, column: 19, scope: !887)
!891 = !DILocation(line: 20, column: 5, scope: !887)
!892 = distinct !DISubprogram(name: "m1", linkageName: "_ZN1A2m1Ev", scope: !6, file: !7, line: 7, type: !16, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !15, retainedNodes: !829)
!893 = !DILocalVariable(name: "this", arg: 1, scope: !892, type: !5, flags: DIFlagArtificial | DIFlagObjectPointer)
!894 = !DILocation(line: 0, scope: !892)
!895 = !DILocation(line: 8, column: 19, scope: !892)
!896 = !DILocation(line: 9, column: 5, scope: !892)
