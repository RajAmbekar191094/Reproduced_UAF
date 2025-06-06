; ModuleID = '/home/cs22mtech12008/NEW_CLONE_FOR_BENCHMARKS/Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Inheritance_with_data/Inheritance_nested_scope_2_UAS.cpp'
source_filename = "/home/cs22mtech12008/NEW_CLONE_FOR_BENCHMARKS/Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Inheritance_with_data/Inheritance_nested_scope_2_UAS.cpp"
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
@t1 = dso_local global i64 0, align 8, !dbg !22
@t2 = dso_local global i64 0, align 8, !dbg !27
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [17 x i8] c"Inner scope ends\00", align 1, !dbg !29
@.str.1 = private unnamed_addr constant [15 x i8] c"Base class m2:\00", align 1, !dbg !36
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !41
@_ZTV2A2 = linkonce_odr dso_local unnamed_addr constant { [3 x ptr] } { [3 x ptr] [ptr null, ptr @_ZTI2A2, ptr @_ZN1A2m1Ev] }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global ptr
@_ZTS2A2 = linkonce_odr dso_local constant [4 x i8] c"2A2\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global ptr
@_ZTS1A = linkonce_odr dso_local constant [3 x i8] c"1A\00", comdat, align 1
@_ZTI1A = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS1A }, comdat, align 8
@_ZTI2A2 = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS2A2, ptr @_ZTI1A }, comdat, align 8
@_ZTV1A = linkonce_odr dso_local unnamed_addr constant { [3 x ptr] } { [3 x ptr] [ptr null, ptr @_ZTI1A, ptr @_ZN1A2m1Ev] }, comdat, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"Base class m1:\00", align 1, !dbg !46
@_ZTV2A1 = linkonce_odr dso_local unnamed_addr constant { [3 x ptr] } { [3 x ptr] [ptr null, ptr @_ZTI2A1, ptr @_ZN2A12m1Ev] }, comdat, align 8
@_ZTS2A1 = linkonce_odr dso_local constant [4 x i8] c"2A1\00", comdat, align 1
@_ZTI2A1 = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS2A1, ptr @_ZTI1A }, comdat, align 8
@.str.4 = private unnamed_addr constant [13 x i8] c"A1 class m1:\00", align 1, !dbg !48

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef ptr @_Z10runThread1Pv(ptr noundef %0) #0 !dbg !829 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !833, metadata !DIExpression()), !dbg !834
  %4 = call i32 @sleep(i32 noundef 10), !dbg !835
  call void @llvm.dbg.declare(metadata ptr %3, metadata !836, metadata !DIExpression()), !dbg !837
  %5 = load ptr, ptr %2, align 8, !dbg !838
  store ptr %5, ptr %3, align 8, !dbg !837
  %6 = load ptr, ptr %3, align 8, !dbg !839
  %7 = load ptr, ptr %6, align 8, !dbg !840
  %8 = getelementptr inbounds ptr, ptr %7, i64 0, !dbg !840
  %9 = load ptr, ptr %8, align 8, !dbg !840
  call void %9(ptr noundef nonnull align 8 dereferenceable(12) %6), !dbg !840
  ret ptr null, !dbg !841
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @sleep(i32 noundef) #2

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef ptr @_Z10runThread2Pv(ptr noundef %0) #0 !dbg !842 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !843, metadata !DIExpression()), !dbg !844
  %4 = call i32 @sleep(i32 noundef 10), !dbg !845
  call void @llvm.dbg.declare(metadata ptr %3, metadata !846, metadata !DIExpression()), !dbg !847
  %5 = load ptr, ptr %2, align 8, !dbg !848
  store ptr %5, ptr %3, align 8, !dbg !847
  %6 = load ptr, ptr %3, align 8, !dbg !849
  call void @_ZN1A2m2Ev(ptr noundef nonnull align 8 dereferenceable(12) %6), !dbg !850
  ret ptr null, !dbg !851
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN1A2m2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) #0 comdat align 2 !dbg !852 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !853, metadata !DIExpression()), !dbg !854
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.1), !dbg !855
  %5 = getelementptr inbounds %class.A, ptr %3, i32 0, i32 1, !dbg !856
  %6 = load i32, ptr %5, align 8, !dbg !856
  %7 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %6), !dbg !857
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef @.str.2), !dbg !858
  ret void, !dbg !859
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z12createThreadv() #0 !dbg !860 {
  %1 = alloca i32, align 4
  %2 = alloca %class.A2, align 8
  %3 = alloca %class.A1, align 8
  %4 = alloca %class.A1, align 8
  call void @llvm.dbg.declare(metadata ptr %1, metadata !861, metadata !DIExpression()), !dbg !862
  store i32 9, ptr %1, align 4, !dbg !862
  call void @llvm.dbg.declare(metadata ptr %2, metadata !863, metadata !DIExpression()), !dbg !873
  call void @_ZN2A2C2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #6, !dbg !873
  store ptr %2, ptr @basePtr, align 8, !dbg !874
  %5 = load ptr, ptr @basePtr, align 8, !dbg !875
  %6 = call i32 @pthread_create(ptr noundef @t2, ptr noundef null, ptr noundef @_Z10runThread2Pv, ptr noundef %5) #6, !dbg !876
  %7 = load i32, ptr %1, align 4, !dbg !877
  %8 = icmp eq i32 %7, 9, !dbg !879
  br i1 %8, label %9, label %18, !dbg !880

9:                                                ; preds = %0
  call void @llvm.dbg.declare(metadata ptr %3, metadata !881, metadata !DIExpression()), !dbg !891
  call void @_ZN2A1C2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #6, !dbg !891
  store ptr %3, ptr @basePtr, align 8, !dbg !892
  %10 = load ptr, ptr @basePtr, align 8, !dbg !893
  %11 = call i32 @pthread_create(ptr noundef @t1, ptr noundef null, ptr noundef @_Z10runThread1Pv, ptr noundef %10) #6, !dbg !894
  %12 = load i32, ptr %1, align 4, !dbg !895
  %13 = icmp eq i32 %12, 8, !dbg !897
  br i1 %13, label %14, label %17, !dbg !898

14:                                               ; preds = %9
  call void @llvm.dbg.declare(metadata ptr %4, metadata !899, metadata !DIExpression()), !dbg !901
  call void @_ZN2A1C2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #6, !dbg !901
  store ptr %4, ptr @basePtr, align 8, !dbg !902
  %15 = load ptr, ptr @basePtr, align 8, !dbg !903
  %16 = call i32 @pthread_create(ptr noundef @t2, ptr noundef null, ptr noundef @_Z10runThread1Pv, ptr noundef %15) #6, !dbg !904
  br label %17, !dbg !905

17:                                               ; preds = %14, %9
  br label %18, !dbg !906

18:                                               ; preds = %17, %0
  %19 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str), !dbg !907
  %20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !908
  %21 = load i64, ptr @t2, align 8, !dbg !909
  %22 = call i32 @pthread_join(i64 noundef %21, ptr noundef null), !dbg !910
  %23 = load i64, ptr @t1, align 8, !dbg !911
  %24 = call i32 @pthread_join(i64 noundef %23, ptr noundef null), !dbg !912
  ret void, !dbg !913
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN2A2C2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 !dbg !914 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !916, metadata !DIExpression()), !dbg !918
  %3 = load ptr, ptr %2, align 8
  call void @_ZN1AC2Ev(ptr noundef nonnull align 8 dereferenceable(12) %3) #6, !dbg !919
  store ptr getelementptr inbounds ({ [3 x ptr] }, ptr @_ZTV2A2, i32 0, inrange i32 0, i32 2), ptr %3, align 8, !dbg !919
  %4 = getelementptr inbounds %class.A2, ptr %3, i32 0, i32 1, !dbg !920
  store i32 30, ptr %4, align 4, !dbg !920
  ret void, !dbg !919
}

; Function Attrs: nounwind
declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN2A1C2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 !dbg !921 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !923, metadata !DIExpression()), !dbg !925
  %3 = load ptr, ptr %2, align 8
  call void @_ZN1AC2Ev(ptr noundef nonnull align 8 dereferenceable(12) %3) #6, !dbg !926
  store ptr getelementptr inbounds ({ [3 x ptr] }, ptr @_ZTV2A1, i32 0, inrange i32 0, i32 2), ptr %3, align 8, !dbg !926
  %4 = getelementptr inbounds %class.A1, ptr %3, i32 0, i32 1, !dbg !927
  store i32 20, ptr %4, align 4, !dbg !927
  ret void, !dbg !926
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #2

declare i32 @pthread_join(i64 noundef, ptr noundef) #2

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main() #5 !dbg !928 {
  %1 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  call void @_Z12createThreadv(), !dbg !929
  %2 = load i64, ptr @t2, align 8, !dbg !930
  %3 = call i32 @pthread_join(i64 noundef %2, ptr noundef null), !dbg !931
  ret i32 0, !dbg !932
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN1AC2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #3 comdat align 2 !dbg !933 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !935, metadata !DIExpression()), !dbg !936
  %3 = load ptr, ptr %2, align 8
  store ptr getelementptr inbounds ({ [3 x ptr] }, ptr @_ZTV1A, i32 0, inrange i32 0, i32 2), ptr %3, align 8, !dbg !937
  %4 = getelementptr inbounds %class.A, ptr %3, i32 0, i32 1, !dbg !938
  store i32 10, ptr %4, align 8, !dbg !938
  ret void, !dbg !937
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN1A2m1Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #0 comdat align 2 !dbg !939 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !940, metadata !DIExpression()), !dbg !941
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.3), !dbg !942
  %5 = getelementptr inbounds %class.A, ptr %3, i32 0, i32 1, !dbg !943
  %6 = load i32, ptr %5, align 8, !dbg !943
  %7 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %6), !dbg !944
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef @.str.2), !dbg !945
  ret void, !dbg !946
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN2A12m1Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 !dbg !947 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !948, metadata !DIExpression()), !dbg !949
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.4), !dbg !950
  %5 = getelementptr inbounds %class.A1, ptr %3, i32 0, i32 1, !dbg !951
  %6 = load i32, ptr %5, align 4, !dbg !951
  %7 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %6), !dbg !952
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef @.str.2), !dbg !953
  ret void, !dbg !954
}

attributes #0 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!821, !822, !823, !824, !825, !826, !827}
!llvm.ident = !{!828}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "basePtr", scope: !2, file: !7, line: 33, type: !5, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !3, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !21, imports: !53, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/cs22mtech12008/NEW_CLONE_FOR_BENCHMARKS/Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Inheritance_with_data/Inheritance_nested_scope_2_UAS.cpp", directory: "/home/cs22mtech12008/UseAfterScope/Scripts", checksumkind: CSK_MD5, checksum: "55f5de1fbb4d9b52fe327e3e9fa41302")
!4 = !{!5}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "A", file: !7, line: 5, size: 128, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !8, vtableHolder: !6, identifier: "_ZTS1A")
!7 = !DIFile(filename: "NEW_CLONE_FOR_BENCHMARKS/Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Inheritance_with_data/Inheritance_nested_scope_2_UAS.cpp", directory: "/home/cs22mtech12008", checksumkind: CSK_MD5, checksum: "55f5de1fbb4d9b52fe327e3e9fa41302")
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
!21 = !{!0, !22, !27, !29, !36, !41, !46, !48}
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(name: "t1", scope: !2, file: !7, line: 34, type: !24, isLocal: false, isDefinition: true)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !25, line: 27, baseType: !26)
!25 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "2d764266ce95ab26d4a4767c2ec78176")
!26 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(name: "t2", scope: !2, file: !7, line: 34, type: !24, isLocal: false, isDefinition: true)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(scope: null, file: !7, line: 67, type: !31, isLocal: true, isDefinition: true)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 136, elements: !34)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!33 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!34 = !{!35}
!35 = !DISubrange(count: 17)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(scope: null, file: !7, line: 13, type: !38, isLocal: true, isDefinition: true)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 120, elements: !39)
!39 = !{!40}
!40 = !DISubrange(count: 15)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(scope: null, file: !7, line: 13, type: !43, isLocal: true, isDefinition: true)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 16, elements: !44)
!44 = !{!45}
!45 = !DISubrange(count: 2)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(scope: null, file: !7, line: 9, type: !38, isLocal: true, isDefinition: true)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(scope: null, file: !7, line: 21, type: !50, isLocal: true, isDefinition: true)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 104, elements: !51)
!51 = !{!52}
!52 = !DISubrange(count: 13)
!53 = !{!54, !73, !76, !81, !89, !97, !101, !108, !112, !116, !118, !120, !124, !134, !138, !144, !150, !152, !156, !160, !164, !168, !181, !183, !187, !191, !195, !197, !203, !207, !211, !213, !215, !219, !227, !231, !235, !239, !241, !247, !249, !256, !261, !265, !270, !274, !278, !282, !284, !286, !290, !294, !298, !300, !304, !308, !310, !312, !316, !322, !327, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !346, !350, !355, !359, !363, !368, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !404, !408, !412, !418, !422, !426, !431, !433, !437, !441, !445, !455, !457, !461, !465, !469, !473, !477, !481, !485, !489, !493, !497, !501, !503, !505, !509, !513, !519, !523, !527, !529, !533, !537, !543, !545, !549, !553, !557, !561, !565, !569, !573, !574, !575, !576, !578, !579, !580, !581, !582, !583, !584, !588, !594, !599, !603, !605, !607, !609, !611, !618, !622, !626, !630, !634, !638, !643, !647, !649, !653, !659, !663, !668, !670, !672, !676, !680, !682, !684, !686, !688, !692, !694, !696, !700, !704, !708, !712, !716, !720, !722, !726, !730, !734, !738, !740, !742, !746, !750, !751, !752, !753, !754, !755, !763, !771, !774, !775, !777, !779, !781, !783, !787, !789, !791, !793, !795, !797, !799, !801, !803, !807, !811, !813, !817}
!54 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !56, file: !72, line: 64)
!55 = !DINamespace(name: "std", scope: null)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !57, line: 6, baseType: !58)
!57 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !59, line: 21, baseType: !60)
!59 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !59, line: 13, size: 64, flags: DIFlagTypePassByValue, elements: !61, identifier: "_ZTS11__mbstate_t")
!61 = !{!62, !63}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !60, file: !59, line: 15, baseType: !14, size: 32)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !60, file: !59, line: 20, baseType: !64, size: 32, offset: 32)
!64 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !60, file: !59, line: 16, size: 32, flags: DIFlagTypePassByValue, elements: !65, identifier: "_ZTSN11__mbstate_tUt_E")
!65 = !{!66, !68}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !64, file: !59, line: 18, baseType: !67, size: 32)
!67 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !64, file: !59, line: 19, baseType: !69, size: 32)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 32, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 4)
!72 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cwchar", directory: "")
!73 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !74, file: !72, line: 141)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !75, line: 20, baseType: !67)
!75 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!76 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !77, file: !72, line: 143)
!77 = !DISubprogram(name: "btowc", scope: !78, file: !78, line: 284, type: !79, flags: DIFlagPrototyped, spFlags: 0)
!78 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "8900d9ecbbe40d052c41becfbc5b5531")
!79 = !DISubroutineType(types: !80)
!80 = !{!74, !14}
!81 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !82, file: !72, line: 144)
!82 = !DISubprogram(name: "fgetwc", scope: !78, file: !78, line: 726, type: !83, flags: DIFlagPrototyped, spFlags: 0)
!83 = !DISubroutineType(types: !84)
!84 = !{!74, !85}
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !87, line: 5, baseType: !88)
!87 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "72a8fe90981f484acae7c6f3dfc5c2b7")
!88 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !87, line: 4, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS8_IO_FILE")
!89 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !90, file: !72, line: 145)
!90 = !DISubprogram(name: "fgetws", scope: !78, file: !78, line: 755, type: !91, flags: DIFlagPrototyped, spFlags: 0)
!91 = !DISubroutineType(types: !92)
!92 = !{!93, !95, !14, !96}
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!95 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !93)
!96 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !85)
!97 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !98, file: !72, line: 146)
!98 = !DISubprogram(name: "fputwc", scope: !78, file: !78, line: 740, type: !99, flags: DIFlagPrototyped, spFlags: 0)
!99 = !DISubroutineType(types: !100)
!100 = !{!74, !94, !85}
!101 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !102, file: !72, line: 147)
!102 = !DISubprogram(name: "fputws", scope: !78, file: !78, line: 762, type: !103, flags: DIFlagPrototyped, spFlags: 0)
!103 = !DISubroutineType(types: !104)
!104 = !{!14, !105, !96}
!105 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !106)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!108 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !109, file: !72, line: 148)
!109 = !DISubprogram(name: "fwide", scope: !78, file: !78, line: 573, type: !110, flags: DIFlagPrototyped, spFlags: 0)
!110 = !DISubroutineType(types: !111)
!111 = !{!14, !85, !14}
!112 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !113, file: !72, line: 149)
!113 = !DISubprogram(name: "fwprintf", scope: !78, file: !78, line: 580, type: !114, flags: DIFlagPrototyped, spFlags: 0)
!114 = !DISubroutineType(types: !115)
!115 = !{!14, !96, !105, null}
!116 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !117, file: !72, line: 150)
!117 = !DISubprogram(name: "fwscanf", linkageName: "__isoc99_fwscanf", scope: !78, file: !78, line: 640, type: !114, flags: DIFlagPrototyped, spFlags: 0)
!118 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !119, file: !72, line: 151)
!119 = !DISubprogram(name: "getwc", scope: !78, file: !78, line: 727, type: !83, flags: DIFlagPrototyped, spFlags: 0)
!120 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !121, file: !72, line: 152)
!121 = !DISubprogram(name: "getwchar", scope: !78, file: !78, line: 733, type: !122, flags: DIFlagPrototyped, spFlags: 0)
!122 = !DISubroutineType(types: !123)
!123 = !{!74}
!124 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !125, file: !72, line: 153)
!125 = !DISubprogram(name: "mbrlen", scope: !78, file: !78, line: 307, type: !126, flags: DIFlagPrototyped, spFlags: 0)
!126 = !DISubroutineType(types: !127)
!127 = !{!128, !130, !128, !132}
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !129, line: 46, baseType: !26)
!129 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/cs22mtech12008", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!130 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !131)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !133)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!134 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !135, file: !72, line: 154)
!135 = !DISubprogram(name: "mbrtowc", scope: !78, file: !78, line: 296, type: !136, flags: DIFlagPrototyped, spFlags: 0)
!136 = !DISubroutineType(types: !137)
!137 = !{!128, !95, !130, !128, !132}
!138 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !139, file: !72, line: 155)
!139 = !DISubprogram(name: "mbsinit", scope: !78, file: !78, line: 292, type: !140, flags: DIFlagPrototyped, spFlags: 0)
!140 = !DISubroutineType(types: !141)
!141 = !{!14, !142}
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!144 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !145, file: !72, line: 156)
!145 = !DISubprogram(name: "mbsrtowcs", scope: !78, file: !78, line: 337, type: !146, flags: DIFlagPrototyped, spFlags: 0)
!146 = !DISubroutineType(types: !147)
!147 = !{!128, !95, !148, !128, !132}
!148 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !149)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!150 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !151, file: !72, line: 157)
!151 = !DISubprogram(name: "putwc", scope: !78, file: !78, line: 741, type: !99, flags: DIFlagPrototyped, spFlags: 0)
!152 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !153, file: !72, line: 158)
!153 = !DISubprogram(name: "putwchar", scope: !78, file: !78, line: 747, type: !154, flags: DIFlagPrototyped, spFlags: 0)
!154 = !DISubroutineType(types: !155)
!155 = !{!74, !94}
!156 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !157, file: !72, line: 160)
!157 = !DISubprogram(name: "swprintf", scope: !78, file: !78, line: 590, type: !158, flags: DIFlagPrototyped, spFlags: 0)
!158 = !DISubroutineType(types: !159)
!159 = !{!14, !95, !128, !105, null}
!160 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !161, file: !72, line: 162)
!161 = !DISubprogram(name: "swscanf", linkageName: "__isoc99_swscanf", scope: !78, file: !78, line: 647, type: !162, flags: DIFlagPrototyped, spFlags: 0)
!162 = !DISubroutineType(types: !163)
!163 = !{!14, !105, !105, null}
!164 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !165, file: !72, line: 163)
!165 = !DISubprogram(name: "ungetwc", scope: !78, file: !78, line: 770, type: !166, flags: DIFlagPrototyped, spFlags: 0)
!166 = !DISubroutineType(types: !167)
!167 = !{!74, !74, !85}
!168 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !169, file: !72, line: 164)
!169 = !DISubprogram(name: "vfwprintf", scope: !78, file: !78, line: 598, type: !170, flags: DIFlagPrototyped, spFlags: 0)
!170 = !DISubroutineType(types: !171)
!171 = !{!14, !96, !105, !172}
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, flags: DIFlagTypePassByValue, elements: !174, identifier: "_ZTS13__va_list_tag")
!174 = !{!175, !177, !178, !180}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !173, file: !176, baseType: !67, size: 32)
!176 = !DIFile(filename: "NEW_CLONE_FOR_BENCHMARKS/Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Inheritance_with_data/Inheritance_nested_scope_2_UAS.cpp", directory: "/home/cs22mtech12008")
!177 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !173, file: !176, baseType: !67, size: 32, offset: 32)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !173, file: !176, baseType: !179, size: 64, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !173, file: !176, baseType: !179, size: 64, offset: 128)
!181 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !182, file: !72, line: 166)
!182 = !DISubprogram(name: "vfwscanf", linkageName: "__isoc99_vfwscanf", scope: !78, file: !78, line: 693, type: !170, flags: DIFlagPrototyped, spFlags: 0)
!183 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !184, file: !72, line: 169)
!184 = !DISubprogram(name: "vswprintf", scope: !78, file: !78, line: 611, type: !185, flags: DIFlagPrototyped, spFlags: 0)
!185 = !DISubroutineType(types: !186)
!186 = !{!14, !95, !128, !105, !172}
!187 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !188, file: !72, line: 172)
!188 = !DISubprogram(name: "vswscanf", linkageName: "__isoc99_vswscanf", scope: !78, file: !78, line: 700, type: !189, flags: DIFlagPrototyped, spFlags: 0)
!189 = !DISubroutineType(types: !190)
!190 = !{!14, !105, !105, !172}
!191 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !192, file: !72, line: 174)
!192 = !DISubprogram(name: "vwprintf", scope: !78, file: !78, line: 606, type: !193, flags: DIFlagPrototyped, spFlags: 0)
!193 = !DISubroutineType(types: !194)
!194 = !{!14, !105, !172}
!195 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !196, file: !72, line: 176)
!196 = !DISubprogram(name: "vwscanf", linkageName: "__isoc99_vwscanf", scope: !78, file: !78, line: 697, type: !193, flags: DIFlagPrototyped, spFlags: 0)
!197 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !198, file: !72, line: 178)
!198 = !DISubprogram(name: "wcrtomb", scope: !78, file: !78, line: 301, type: !199, flags: DIFlagPrototyped, spFlags: 0)
!199 = !DISubroutineType(types: !200)
!200 = !{!128, !201, !94, !132}
!201 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !202)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!203 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !204, file: !72, line: 179)
!204 = !DISubprogram(name: "wcscat", scope: !78, file: !78, line: 97, type: !205, flags: DIFlagPrototyped, spFlags: 0)
!205 = !DISubroutineType(types: !206)
!206 = !{!93, !95, !105}
!207 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !208, file: !72, line: 180)
!208 = !DISubprogram(name: "wcscmp", scope: !78, file: !78, line: 106, type: !209, flags: DIFlagPrototyped, spFlags: 0)
!209 = !DISubroutineType(types: !210)
!210 = !{!14, !106, !106}
!211 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !212, file: !72, line: 181)
!212 = !DISubprogram(name: "wcscoll", scope: !78, file: !78, line: 131, type: !209, flags: DIFlagPrototyped, spFlags: 0)
!213 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !214, file: !72, line: 182)
!214 = !DISubprogram(name: "wcscpy", scope: !78, file: !78, line: 87, type: !205, flags: DIFlagPrototyped, spFlags: 0)
!215 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !216, file: !72, line: 183)
!216 = !DISubprogram(name: "wcscspn", scope: !78, file: !78, line: 187, type: !217, flags: DIFlagPrototyped, spFlags: 0)
!217 = !DISubroutineType(types: !218)
!218 = !{!128, !106, !106}
!219 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !220, file: !72, line: 184)
!220 = !DISubprogram(name: "wcsftime", scope: !78, file: !78, line: 834, type: !221, flags: DIFlagPrototyped, spFlags: 0)
!221 = !DISubroutineType(types: !222)
!222 = !{!128, !95, !128, !105, !223}
!223 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !224)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !226)
!226 = !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !78, line: 83, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS2tm")
!227 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !228, file: !72, line: 185)
!228 = !DISubprogram(name: "wcslen", scope: !78, file: !78, line: 222, type: !229, flags: DIFlagPrototyped, spFlags: 0)
!229 = !DISubroutineType(types: !230)
!230 = !{!128, !106}
!231 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !232, file: !72, line: 186)
!232 = !DISubprogram(name: "wcsncat", scope: !78, file: !78, line: 101, type: !233, flags: DIFlagPrototyped, spFlags: 0)
!233 = !DISubroutineType(types: !234)
!234 = !{!93, !95, !105, !128}
!235 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !236, file: !72, line: 187)
!236 = !DISubprogram(name: "wcsncmp", scope: !78, file: !78, line: 109, type: !237, flags: DIFlagPrototyped, spFlags: 0)
!237 = !DISubroutineType(types: !238)
!238 = !{!14, !106, !106, !128}
!239 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !240, file: !72, line: 188)
!240 = !DISubprogram(name: "wcsncpy", scope: !78, file: !78, line: 92, type: !233, flags: DIFlagPrototyped, spFlags: 0)
!241 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !242, file: !72, line: 189)
!242 = !DISubprogram(name: "wcsrtombs", scope: !78, file: !78, line: 343, type: !243, flags: DIFlagPrototyped, spFlags: 0)
!243 = !DISubroutineType(types: !244)
!244 = !{!128, !201, !245, !128, !132}
!245 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !246)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!247 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !248, file: !72, line: 190)
!248 = !DISubprogram(name: "wcsspn", scope: !78, file: !78, line: 191, type: !217, flags: DIFlagPrototyped, spFlags: 0)
!249 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !250, file: !72, line: 191)
!250 = !DISubprogram(name: "wcstod", scope: !78, file: !78, line: 377, type: !251, flags: DIFlagPrototyped, spFlags: 0)
!251 = !DISubroutineType(types: !252)
!252 = !{!253, !105, !254}
!253 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!254 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !255)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!256 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !257, file: !72, line: 193)
!257 = !DISubprogram(name: "wcstof", scope: !78, file: !78, line: 382, type: !258, flags: DIFlagPrototyped, spFlags: 0)
!258 = !DISubroutineType(types: !259)
!259 = !{!260, !105, !254}
!260 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!261 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !262, file: !72, line: 195)
!262 = !DISubprogram(name: "wcstok", scope: !78, file: !78, line: 217, type: !263, flags: DIFlagPrototyped, spFlags: 0)
!263 = !DISubroutineType(types: !264)
!264 = !{!93, !95, !105, !254}
!265 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !266, file: !72, line: 196)
!266 = !DISubprogram(name: "wcstol", scope: !78, file: !78, line: 428, type: !267, flags: DIFlagPrototyped, spFlags: 0)
!267 = !DISubroutineType(types: !268)
!268 = !{!269, !105, !254, !14}
!269 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!270 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !271, file: !72, line: 197)
!271 = !DISubprogram(name: "wcstoul", scope: !78, file: !78, line: 433, type: !272, flags: DIFlagPrototyped, spFlags: 0)
!272 = !DISubroutineType(types: !273)
!273 = !{!26, !105, !254, !14}
!274 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !275, file: !72, line: 198)
!275 = !DISubprogram(name: "wcsxfrm", scope: !78, file: !78, line: 135, type: !276, flags: DIFlagPrototyped, spFlags: 0)
!276 = !DISubroutineType(types: !277)
!277 = !{!128, !95, !105, !128}
!278 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !279, file: !72, line: 199)
!279 = !DISubprogram(name: "wctob", scope: !78, file: !78, line: 288, type: !280, flags: DIFlagPrototyped, spFlags: 0)
!280 = !DISubroutineType(types: !281)
!281 = !{!14, !74}
!282 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !283, file: !72, line: 200)
!283 = !DISubprogram(name: "wmemcmp", scope: !78, file: !78, line: 258, type: !237, flags: DIFlagPrototyped, spFlags: 0)
!284 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !285, file: !72, line: 201)
!285 = !DISubprogram(name: "wmemcpy", scope: !78, file: !78, line: 262, type: !233, flags: DIFlagPrototyped, spFlags: 0)
!286 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !287, file: !72, line: 202)
!287 = !DISubprogram(name: "wmemmove", scope: !78, file: !78, line: 267, type: !288, flags: DIFlagPrototyped, spFlags: 0)
!288 = !DISubroutineType(types: !289)
!289 = !{!93, !93, !106, !128}
!290 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !291, file: !72, line: 203)
!291 = !DISubprogram(name: "wmemset", scope: !78, file: !78, line: 271, type: !292, flags: DIFlagPrototyped, spFlags: 0)
!292 = !DISubroutineType(types: !293)
!293 = !{!93, !93, !94, !128}
!294 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !295, file: !72, line: 204)
!295 = !DISubprogram(name: "wprintf", scope: !78, file: !78, line: 587, type: !296, flags: DIFlagPrototyped, spFlags: 0)
!296 = !DISubroutineType(types: !297)
!297 = !{!14, !105, null}
!298 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !299, file: !72, line: 205)
!299 = !DISubprogram(name: "wscanf", linkageName: "__isoc99_wscanf", scope: !78, file: !78, line: 644, type: !296, flags: DIFlagPrototyped, spFlags: 0)
!300 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !301, file: !72, line: 206)
!301 = !DISubprogram(name: "wcschr", scope: !78, file: !78, line: 164, type: !302, flags: DIFlagPrototyped, spFlags: 0)
!302 = !DISubroutineType(types: !303)
!303 = !{!93, !106, !94}
!304 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !305, file: !72, line: 207)
!305 = !DISubprogram(name: "wcspbrk", scope: !78, file: !78, line: 201, type: !306, flags: DIFlagPrototyped, spFlags: 0)
!306 = !DISubroutineType(types: !307)
!307 = !{!93, !106, !106}
!308 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !309, file: !72, line: 208)
!309 = !DISubprogram(name: "wcsrchr", scope: !78, file: !78, line: 174, type: !302, flags: DIFlagPrototyped, spFlags: 0)
!310 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !311, file: !72, line: 209)
!311 = !DISubprogram(name: "wcsstr", scope: !78, file: !78, line: 212, type: !306, flags: DIFlagPrototyped, spFlags: 0)
!312 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !313, file: !72, line: 210)
!313 = !DISubprogram(name: "wmemchr", scope: !78, file: !78, line: 253, type: !314, flags: DIFlagPrototyped, spFlags: 0)
!314 = !DISubroutineType(types: !315)
!315 = !{!93, !106, !94, !128}
!316 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !317, entity: !318, file: !72, line: 251)
!317 = !DINamespace(name: "__gnu_cxx", scope: null)
!318 = !DISubprogram(name: "wcstold", scope: !78, file: !78, line: 384, type: !319, flags: DIFlagPrototyped, spFlags: 0)
!319 = !DISubroutineType(types: !320)
!320 = !{!321, !105, !254}
!321 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!322 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !317, entity: !323, file: !72, line: 260)
!323 = !DISubprogram(name: "wcstoll", scope: !78, file: !78, line: 441, type: !324, flags: DIFlagPrototyped, spFlags: 0)
!324 = !DISubroutineType(types: !325)
!325 = !{!326, !105, !254, !14}
!326 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!327 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !317, entity: !328, file: !72, line: 261)
!328 = !DISubprogram(name: "wcstoull", scope: !78, file: !78, line: 448, type: !329, flags: DIFlagPrototyped, spFlags: 0)
!329 = !DISubroutineType(types: !330)
!330 = !{!331, !105, !254, !14}
!331 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!332 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !318, file: !72, line: 267)
!333 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !323, file: !72, line: 268)
!334 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !328, file: !72, line: 269)
!335 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !257, file: !72, line: 283)
!336 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !182, file: !72, line: 286)
!337 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !188, file: !72, line: 289)
!338 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !196, file: !72, line: 292)
!339 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !318, file: !72, line: 296)
!340 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !323, file: !72, line: 297)
!341 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !328, file: !72, line: 298)
!342 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !343, file: !344, line: 66)
!343 = !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !345, file: !344, line: 97, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!344 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/exception_ptr.h", directory: "", checksumkind: CSK_MD5, checksum: "314ad14748ccb9ff85c65d17ebb0828b")
!345 = !DINamespace(name: "__exception_ptr", scope: !55)
!346 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !345, entity: !347, file: !344, line: 85)
!347 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !55, file: !344, line: 81, type: !348, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!348 = !DISubroutineType(types: !349)
!349 = !{null, !343}
!350 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !351, file: !344, line: 243)
!351 = !DISubprogram(name: "swap", linkageName: "_ZNSt15__exception_ptr4swapERNS_13exception_ptrES1_", scope: !345, file: !344, line: 230, type: !352, flags: DIFlagPrototyped, spFlags: 0)
!352 = !DISubroutineType(types: !353)
!353 = !{null, !354, !354}
!354 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !343, size: 64)
!355 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !356, file: !358, line: 53)
!356 = !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !357, line: 51, size: 768, flags: DIFlagFwdDecl, identifier: "_ZTS5lconv")
!357 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "0cf373fc44eed8073800bdb9da87b72f")
!358 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/clocale", directory: "")
!359 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !360, file: !358, line: 54)
!360 = !DISubprogram(name: "setlocale", scope: !357, file: !357, line: 122, type: !361, flags: DIFlagPrototyped, spFlags: 0)
!361 = !DISubroutineType(types: !362)
!362 = !{!202, !14, !131}
!363 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !364, file: !358, line: 55)
!364 = !DISubprogram(name: "localeconv", scope: !357, file: !357, line: 125, type: !365, flags: DIFlagPrototyped, spFlags: 0)
!365 = !DISubroutineType(types: !366)
!366 = !{!367}
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!368 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !369, file: !373, line: 64)
!369 = !DISubprogram(name: "isalnum", scope: !370, file: !370, line: 108, type: !371, flags: DIFlagPrototyped, spFlags: 0)
!370 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "36575f934ef4fe7e9d50a3cb17bd5c66")
!371 = !DISubroutineType(types: !372)
!372 = !{!14, !14}
!373 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cctype", directory: "")
!374 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !375, file: !373, line: 65)
!375 = !DISubprogram(name: "isalpha", scope: !370, file: !370, line: 109, type: !371, flags: DIFlagPrototyped, spFlags: 0)
!376 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !377, file: !373, line: 66)
!377 = !DISubprogram(name: "iscntrl", scope: !370, file: !370, line: 110, type: !371, flags: DIFlagPrototyped, spFlags: 0)
!378 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !379, file: !373, line: 67)
!379 = !DISubprogram(name: "isdigit", scope: !370, file: !370, line: 111, type: !371, flags: DIFlagPrototyped, spFlags: 0)
!380 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !381, file: !373, line: 68)
!381 = !DISubprogram(name: "isgraph", scope: !370, file: !370, line: 113, type: !371, flags: DIFlagPrototyped, spFlags: 0)
!382 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !383, file: !373, line: 69)
!383 = !DISubprogram(name: "islower", scope: !370, file: !370, line: 112, type: !371, flags: DIFlagPrototyped, spFlags: 0)
!384 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !385, file: !373, line: 70)
!385 = !DISubprogram(name: "isprint", scope: !370, file: !370, line: 114, type: !371, flags: DIFlagPrototyped, spFlags: 0)
!386 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !387, file: !373, line: 71)
!387 = !DISubprogram(name: "ispunct", scope: !370, file: !370, line: 115, type: !371, flags: DIFlagPrototyped, spFlags: 0)
!388 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !389, file: !373, line: 72)
!389 = !DISubprogram(name: "isspace", scope: !370, file: !370, line: 116, type: !371, flags: DIFlagPrototyped, spFlags: 0)
!390 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !391, file: !373, line: 73)
!391 = !DISubprogram(name: "isupper", scope: !370, file: !370, line: 117, type: !371, flags: DIFlagPrototyped, spFlags: 0)
!392 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !393, file: !373, line: 74)
!393 = !DISubprogram(name: "isxdigit", scope: !370, file: !370, line: 118, type: !371, flags: DIFlagPrototyped, spFlags: 0)
!394 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !395, file: !373, line: 75)
!395 = !DISubprogram(name: "tolower", scope: !370, file: !370, line: 122, type: !371, flags: DIFlagPrototyped, spFlags: 0)
!396 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !397, file: !373, line: 76)
!397 = !DISubprogram(name: "toupper", scope: !370, file: !370, line: 125, type: !371, flags: DIFlagPrototyped, spFlags: 0)
!398 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !399, file: !373, line: 87)
!399 = !DISubprogram(name: "isblank", scope: !370, file: !370, line: 130, type: !371, flags: DIFlagPrototyped, spFlags: 0)
!400 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !401, entity: !402, file: !403, line: 58)
!401 = !DINamespace(name: "__gnu_debug", scope: null)
!402 = !DINamespace(name: "__debug", scope: !55)
!403 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/debug/debug.h", directory: "", checksumkind: CSK_MD5, checksum: "752210a319f5f5d356cc29cd1ce3cdc7")
!404 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !405, file: !407, line: 52)
!405 = !DISubprogram(name: "abs", scope: !406, file: !406, line: 840, type: !371, flags: DIFlagPrototyped, spFlags: 0)
!406 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!407 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/std_abs.h", directory: "")
!408 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !409, file: !411, line: 131)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !406, line: 62, baseType: !410)
!410 = !DICompositeType(tag: DW_TAG_structure_type, file: !406, line: 58, size: 64, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!411 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cstdlib", directory: "")
!412 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !413, file: !411, line: 132)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !406, line: 70, baseType: !414)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !406, line: 66, size: 128, flags: DIFlagTypePassByValue, elements: !415, identifier: "_ZTS6ldiv_t")
!415 = !{!416, !417}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !414, file: !406, line: 68, baseType: !269, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !414, file: !406, line: 69, baseType: !269, size: 64, offset: 64)
!418 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !419, file: !411, line: 134)
!419 = !DISubprogram(name: "abort", scope: !406, file: !406, line: 591, type: !420, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!420 = !DISubroutineType(types: !421)
!421 = !{null}
!422 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !423, file: !411, line: 136)
!423 = !DISubprogram(name: "aligned_alloc", scope: !406, file: !406, line: 586, type: !424, flags: DIFlagPrototyped, spFlags: 0)
!424 = !DISubroutineType(types: !425)
!425 = !{!179, !128, !128}
!426 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !427, file: !411, line: 138)
!427 = !DISubprogram(name: "atexit", scope: !406, file: !406, line: 595, type: !428, flags: DIFlagPrototyped, spFlags: 0)
!428 = !DISubroutineType(types: !429)
!429 = !{!14, !430}
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!431 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !432, file: !411, line: 141)
!432 = !DISubprogram(name: "at_quick_exit", scope: !406, file: !406, line: 600, type: !428, flags: DIFlagPrototyped, spFlags: 0)
!433 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !434, file: !411, line: 144)
!434 = !DISubprogram(name: "atof", scope: !406, file: !406, line: 101, type: !435, flags: DIFlagPrototyped, spFlags: 0)
!435 = !DISubroutineType(types: !436)
!436 = !{!253, !131}
!437 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !438, file: !411, line: 145)
!438 = !DISubprogram(name: "atoi", scope: !406, file: !406, line: 104, type: !439, flags: DIFlagPrototyped, spFlags: 0)
!439 = !DISubroutineType(types: !440)
!440 = !{!14, !131}
!441 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !442, file: !411, line: 146)
!442 = !DISubprogram(name: "atol", scope: !406, file: !406, line: 107, type: !443, flags: DIFlagPrototyped, spFlags: 0)
!443 = !DISubroutineType(types: !444)
!444 = !{!269, !131}
!445 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !446, file: !411, line: 147)
!446 = !DISubprogram(name: "bsearch", scope: !406, file: !406, line: 820, type: !447, flags: DIFlagPrototyped, spFlags: 0)
!447 = !DISubroutineType(types: !448)
!448 = !{!179, !449, !449, !128, !128, !451}
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !406, line: 808, baseType: !452)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DISubroutineType(types: !454)
!454 = !{!14, !449, !449}
!455 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !456, file: !411, line: 148)
!456 = !DISubprogram(name: "calloc", scope: !406, file: !406, line: 542, type: !424, flags: DIFlagPrototyped, spFlags: 0)
!457 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !458, file: !411, line: 149)
!458 = !DISubprogram(name: "div", scope: !406, file: !406, line: 852, type: !459, flags: DIFlagPrototyped, spFlags: 0)
!459 = !DISubroutineType(types: !460)
!460 = !{!409, !14, !14}
!461 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !462, file: !411, line: 150)
!462 = !DISubprogram(name: "exit", scope: !406, file: !406, line: 617, type: !463, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!463 = !DISubroutineType(types: !464)
!464 = !{null, !14}
!465 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !466, file: !411, line: 151)
!466 = !DISubprogram(name: "free", scope: !406, file: !406, line: 565, type: !467, flags: DIFlagPrototyped, spFlags: 0)
!467 = !DISubroutineType(types: !468)
!468 = !{null, !179}
!469 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !470, file: !411, line: 152)
!470 = !DISubprogram(name: "getenv", scope: !406, file: !406, line: 634, type: !471, flags: DIFlagPrototyped, spFlags: 0)
!471 = !DISubroutineType(types: !472)
!472 = !{!202, !131}
!473 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !474, file: !411, line: 153)
!474 = !DISubprogram(name: "labs", scope: !406, file: !406, line: 841, type: !475, flags: DIFlagPrototyped, spFlags: 0)
!475 = !DISubroutineType(types: !476)
!476 = !{!269, !269}
!477 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !478, file: !411, line: 154)
!478 = !DISubprogram(name: "ldiv", scope: !406, file: !406, line: 854, type: !479, flags: DIFlagPrototyped, spFlags: 0)
!479 = !DISubroutineType(types: !480)
!480 = !{!413, !269, !269}
!481 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !482, file: !411, line: 155)
!482 = !DISubprogram(name: "malloc", scope: !406, file: !406, line: 539, type: !483, flags: DIFlagPrototyped, spFlags: 0)
!483 = !DISubroutineType(types: !484)
!484 = !{!179, !128}
!485 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !486, file: !411, line: 157)
!486 = !DISubprogram(name: "mblen", scope: !406, file: !406, line: 922, type: !487, flags: DIFlagPrototyped, spFlags: 0)
!487 = !DISubroutineType(types: !488)
!488 = !{!14, !131, !128}
!489 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !490, file: !411, line: 158)
!490 = !DISubprogram(name: "mbstowcs", scope: !406, file: !406, line: 933, type: !491, flags: DIFlagPrototyped, spFlags: 0)
!491 = !DISubroutineType(types: !492)
!492 = !{!128, !95, !130, !128}
!493 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !494, file: !411, line: 159)
!494 = !DISubprogram(name: "mbtowc", scope: !406, file: !406, line: 925, type: !495, flags: DIFlagPrototyped, spFlags: 0)
!495 = !DISubroutineType(types: !496)
!496 = !{!14, !95, !130, !128}
!497 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !498, file: !411, line: 161)
!498 = !DISubprogram(name: "qsort", scope: !406, file: !406, line: 830, type: !499, flags: DIFlagPrototyped, spFlags: 0)
!499 = !DISubroutineType(types: !500)
!500 = !{null, !179, !128, !128, !451}
!501 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !502, file: !411, line: 164)
!502 = !DISubprogram(name: "quick_exit", scope: !406, file: !406, line: 623, type: !463, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!503 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !504, file: !411, line: 167)
!504 = !DISubprogram(name: "rand", scope: !406, file: !406, line: 453, type: !12, flags: DIFlagPrototyped, spFlags: 0)
!505 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !506, file: !411, line: 168)
!506 = !DISubprogram(name: "realloc", scope: !406, file: !406, line: 550, type: !507, flags: DIFlagPrototyped, spFlags: 0)
!507 = !DISubroutineType(types: !508)
!508 = !{!179, !179, !128}
!509 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !510, file: !411, line: 169)
!510 = !DISubprogram(name: "srand", scope: !406, file: !406, line: 455, type: !511, flags: DIFlagPrototyped, spFlags: 0)
!511 = !DISubroutineType(types: !512)
!512 = !{null, !67}
!513 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !514, file: !411, line: 170)
!514 = !DISubprogram(name: "strtod", scope: !406, file: !406, line: 117, type: !515, flags: DIFlagPrototyped, spFlags: 0)
!515 = !DISubroutineType(types: !516)
!516 = !{!253, !130, !517}
!517 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !518)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!519 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !520, file: !411, line: 171)
!520 = !DISubprogram(name: "strtol", scope: !406, file: !406, line: 176, type: !521, flags: DIFlagPrototyped, spFlags: 0)
!521 = !DISubroutineType(types: !522)
!522 = !{!269, !130, !517, !14}
!523 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !524, file: !411, line: 172)
!524 = !DISubprogram(name: "strtoul", scope: !406, file: !406, line: 180, type: !525, flags: DIFlagPrototyped, spFlags: 0)
!525 = !DISubroutineType(types: !526)
!526 = !{!26, !130, !517, !14}
!527 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !528, file: !411, line: 173)
!528 = !DISubprogram(name: "system", scope: !406, file: !406, line: 784, type: !439, flags: DIFlagPrototyped, spFlags: 0)
!529 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !530, file: !411, line: 175)
!530 = !DISubprogram(name: "wcstombs", scope: !406, file: !406, line: 936, type: !531, flags: DIFlagPrototyped, spFlags: 0)
!531 = !DISubroutineType(types: !532)
!532 = !{!128, !201, !105, !128}
!533 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !534, file: !411, line: 176)
!534 = !DISubprogram(name: "wctomb", scope: !406, file: !406, line: 929, type: !535, flags: DIFlagPrototyped, spFlags: 0)
!535 = !DISubroutineType(types: !536)
!536 = !{!14, !202, !94}
!537 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !317, entity: !538, file: !411, line: 204)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !406, line: 80, baseType: !539)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !406, line: 76, size: 128, flags: DIFlagTypePassByValue, elements: !540, identifier: "_ZTS7lldiv_t")
!540 = !{!541, !542}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !539, file: !406, line: 78, baseType: !326, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !539, file: !406, line: 79, baseType: !326, size: 64, offset: 64)
!543 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !317, entity: !544, file: !411, line: 210)
!544 = !DISubprogram(name: "_Exit", scope: !406, file: !406, line: 629, type: !463, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!545 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !317, entity: !546, file: !411, line: 214)
!546 = !DISubprogram(name: "llabs", scope: !406, file: !406, line: 844, type: !547, flags: DIFlagPrototyped, spFlags: 0)
!547 = !DISubroutineType(types: !548)
!548 = !{!326, !326}
!549 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !317, entity: !550, file: !411, line: 220)
!550 = !DISubprogram(name: "lldiv", scope: !406, file: !406, line: 858, type: !551, flags: DIFlagPrototyped, spFlags: 0)
!551 = !DISubroutineType(types: !552)
!552 = !{!538, !326, !326}
!553 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !317, entity: !554, file: !411, line: 231)
!554 = !DISubprogram(name: "atoll", scope: !406, file: !406, line: 112, type: !555, flags: DIFlagPrototyped, spFlags: 0)
!555 = !DISubroutineType(types: !556)
!556 = !{!326, !131}
!557 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !317, entity: !558, file: !411, line: 232)
!558 = !DISubprogram(name: "strtoll", scope: !406, file: !406, line: 200, type: !559, flags: DIFlagPrototyped, spFlags: 0)
!559 = !DISubroutineType(types: !560)
!560 = !{!326, !130, !517, !14}
!561 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !317, entity: !562, file: !411, line: 233)
!562 = !DISubprogram(name: "strtoull", scope: !406, file: !406, line: 205, type: !563, flags: DIFlagPrototyped, spFlags: 0)
!563 = !DISubroutineType(types: !564)
!564 = !{!331, !130, !517, !14}
!565 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !317, entity: !566, file: !411, line: 235)
!566 = !DISubprogram(name: "strtof", scope: !406, file: !406, line: 123, type: !567, flags: DIFlagPrototyped, spFlags: 0)
!567 = !DISubroutineType(types: !568)
!568 = !{!260, !130, !517}
!569 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !317, entity: !570, file: !411, line: 236)
!570 = !DISubprogram(name: "strtold", scope: !406, file: !406, line: 126, type: !571, flags: DIFlagPrototyped, spFlags: 0)
!571 = !DISubroutineType(types: !572)
!572 = !{!321, !130, !517}
!573 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !538, file: !411, line: 244)
!574 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !544, file: !411, line: 246)
!575 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !546, file: !411, line: 248)
!576 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !577, file: !411, line: 249)
!577 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !317, file: !411, line: 217, type: !551, flags: DIFlagPrototyped, spFlags: 0)
!578 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !550, file: !411, line: 250)
!579 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !554, file: !411, line: 252)
!580 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !566, file: !411, line: 253)
!581 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !558, file: !411, line: 254)
!582 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !562, file: !411, line: 255)
!583 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !570, file: !411, line: 256)
!584 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !585, file: !587, line: 98)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !586, line: 7, baseType: !88)
!586 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!587 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cstdio", directory: "")
!588 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !589, file: !587, line: 99)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !590, line: 84, baseType: !591)
!590 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fpos_t", file: !592, line: 14, baseType: !593)
!592 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h", directory: "", checksumkind: CSK_MD5, checksum: "32de8bdaf3551a6c0a9394f9af4389ce")
!593 = !DICompositeType(tag: DW_TAG_structure_type, name: "_G_fpos_t", file: !592, line: 10, size: 128, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
!594 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !595, file: !587, line: 101)
!595 = !DISubprogram(name: "clearerr", scope: !590, file: !590, line: 757, type: !596, flags: DIFlagPrototyped, spFlags: 0)
!596 = !DISubroutineType(types: !597)
!597 = !{null, !598}
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!599 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !600, file: !587, line: 102)
!600 = !DISubprogram(name: "fclose", scope: !590, file: !590, line: 213, type: !601, flags: DIFlagPrototyped, spFlags: 0)
!601 = !DISubroutineType(types: !602)
!602 = !{!14, !598}
!603 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !604, file: !587, line: 103)
!604 = !DISubprogram(name: "feof", scope: !590, file: !590, line: 759, type: !601, flags: DIFlagPrototyped, spFlags: 0)
!605 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !606, file: !587, line: 104)
!606 = !DISubprogram(name: "ferror", scope: !590, file: !590, line: 761, type: !601, flags: DIFlagPrototyped, spFlags: 0)
!607 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !608, file: !587, line: 105)
!608 = !DISubprogram(name: "fflush", scope: !590, file: !590, line: 218, type: !601, flags: DIFlagPrototyped, spFlags: 0)
!609 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !610, file: !587, line: 106)
!610 = !DISubprogram(name: "fgetc", scope: !590, file: !590, line: 485, type: !601, flags: DIFlagPrototyped, spFlags: 0)
!611 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !612, file: !587, line: 107)
!612 = !DISubprogram(name: "fgetpos", scope: !590, file: !590, line: 731, type: !613, flags: DIFlagPrototyped, spFlags: 0)
!613 = !DISubroutineType(types: !614)
!614 = !{!14, !615, !616}
!615 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !598)
!616 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !617)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!618 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !619, file: !587, line: 108)
!619 = !DISubprogram(name: "fgets", scope: !590, file: !590, line: 564, type: !620, flags: DIFlagPrototyped, spFlags: 0)
!620 = !DISubroutineType(types: !621)
!621 = !{!202, !201, !14, !615}
!622 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !623, file: !587, line: 109)
!623 = !DISubprogram(name: "fopen", scope: !590, file: !590, line: 246, type: !624, flags: DIFlagPrototyped, spFlags: 0)
!624 = !DISubroutineType(types: !625)
!625 = !{!598, !130, !130}
!626 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !627, file: !587, line: 110)
!627 = !DISubprogram(name: "fprintf", scope: !590, file: !590, line: 326, type: !628, flags: DIFlagPrototyped, spFlags: 0)
!628 = !DISubroutineType(types: !629)
!629 = !{!14, !615, !130, null}
!630 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !631, file: !587, line: 111)
!631 = !DISubprogram(name: "fputc", scope: !590, file: !590, line: 521, type: !632, flags: DIFlagPrototyped, spFlags: 0)
!632 = !DISubroutineType(types: !633)
!633 = !{!14, !14, !598}
!634 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !635, file: !587, line: 112)
!635 = !DISubprogram(name: "fputs", scope: !590, file: !590, line: 626, type: !636, flags: DIFlagPrototyped, spFlags: 0)
!636 = !DISubroutineType(types: !637)
!637 = !{!14, !130, !615}
!638 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !639, file: !587, line: 113)
!639 = !DISubprogram(name: "fread", scope: !590, file: !590, line: 646, type: !640, flags: DIFlagPrototyped, spFlags: 0)
!640 = !DISubroutineType(types: !641)
!641 = !{!128, !642, !128, !128, !615}
!642 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !179)
!643 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !644, file: !587, line: 114)
!644 = !DISubprogram(name: "freopen", scope: !590, file: !590, line: 252, type: !645, flags: DIFlagPrototyped, spFlags: 0)
!645 = !DISubroutineType(types: !646)
!646 = !{!598, !130, !130, !615}
!647 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !648, file: !587, line: 115)
!648 = !DISubprogram(name: "fscanf", linkageName: "__isoc99_fscanf", scope: !590, file: !590, line: 407, type: !628, flags: DIFlagPrototyped, spFlags: 0)
!649 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !650, file: !587, line: 116)
!650 = !DISubprogram(name: "fseek", scope: !590, file: !590, line: 684, type: !651, flags: DIFlagPrototyped, spFlags: 0)
!651 = !DISubroutineType(types: !652)
!652 = !{!14, !598, !269, !14}
!653 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !654, file: !587, line: 117)
!654 = !DISubprogram(name: "fsetpos", scope: !590, file: !590, line: 736, type: !655, flags: DIFlagPrototyped, spFlags: 0)
!655 = !DISubroutineType(types: !656)
!656 = !{!14, !598, !657}
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !589)
!659 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !660, file: !587, line: 118)
!660 = !DISubprogram(name: "ftell", scope: !590, file: !590, line: 689, type: !661, flags: DIFlagPrototyped, spFlags: 0)
!661 = !DISubroutineType(types: !662)
!662 = !{!269, !598}
!663 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !664, file: !587, line: 119)
!664 = !DISubprogram(name: "fwrite", scope: !590, file: !590, line: 652, type: !665, flags: DIFlagPrototyped, spFlags: 0)
!665 = !DISubroutineType(types: !666)
!666 = !{!128, !667, !128, !128, !615}
!667 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !449)
!668 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !669, file: !587, line: 120)
!669 = !DISubprogram(name: "getc", scope: !590, file: !590, line: 486, type: !601, flags: DIFlagPrototyped, spFlags: 0)
!670 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !671, file: !587, line: 121)
!671 = !DISubprogram(name: "getchar", scope: !590, file: !590, line: 492, type: !12, flags: DIFlagPrototyped, spFlags: 0)
!672 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !673, file: !587, line: 126)
!673 = !DISubprogram(name: "perror", scope: !590, file: !590, line: 775, type: !674, flags: DIFlagPrototyped, spFlags: 0)
!674 = !DISubroutineType(types: !675)
!675 = !{null, !131}
!676 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !677, file: !587, line: 127)
!677 = !DISubprogram(name: "printf", scope: !590, file: !590, line: 332, type: !678, flags: DIFlagPrototyped, spFlags: 0)
!678 = !DISubroutineType(types: !679)
!679 = !{!14, !130, null}
!680 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !681, file: !587, line: 128)
!681 = !DISubprogram(name: "putc", scope: !590, file: !590, line: 522, type: !632, flags: DIFlagPrototyped, spFlags: 0)
!682 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !683, file: !587, line: 129)
!683 = !DISubprogram(name: "putchar", scope: !590, file: !590, line: 528, type: !371, flags: DIFlagPrototyped, spFlags: 0)
!684 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !685, file: !587, line: 130)
!685 = !DISubprogram(name: "puts", scope: !590, file: !590, line: 632, type: !439, flags: DIFlagPrototyped, spFlags: 0)
!686 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !687, file: !587, line: 131)
!687 = !DISubprogram(name: "remove", scope: !590, file: !590, line: 146, type: !439, flags: DIFlagPrototyped, spFlags: 0)
!688 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !689, file: !587, line: 132)
!689 = !DISubprogram(name: "rename", scope: !590, file: !590, line: 148, type: !690, flags: DIFlagPrototyped, spFlags: 0)
!690 = !DISubroutineType(types: !691)
!691 = !{!14, !131, !131}
!692 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !693, file: !587, line: 133)
!693 = !DISubprogram(name: "rewind", scope: !590, file: !590, line: 694, type: !596, flags: DIFlagPrototyped, spFlags: 0)
!694 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !695, file: !587, line: 134)
!695 = !DISubprogram(name: "scanf", linkageName: "__isoc99_scanf", scope: !590, file: !590, line: 410, type: !678, flags: DIFlagPrototyped, spFlags: 0)
!696 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !697, file: !587, line: 135)
!697 = !DISubprogram(name: "setbuf", scope: !590, file: !590, line: 304, type: !698, flags: DIFlagPrototyped, spFlags: 0)
!698 = !DISubroutineType(types: !699)
!699 = !{null, !615, !201}
!700 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !701, file: !587, line: 136)
!701 = !DISubprogram(name: "setvbuf", scope: !590, file: !590, line: 308, type: !702, flags: DIFlagPrototyped, spFlags: 0)
!702 = !DISubroutineType(types: !703)
!703 = !{!14, !615, !201, !14, !128}
!704 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !705, file: !587, line: 137)
!705 = !DISubprogram(name: "sprintf", scope: !590, file: !590, line: 334, type: !706, flags: DIFlagPrototyped, spFlags: 0)
!706 = !DISubroutineType(types: !707)
!707 = !{!14, !201, !130, null}
!708 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !709, file: !587, line: 138)
!709 = !DISubprogram(name: "sscanf", linkageName: "__isoc99_sscanf", scope: !590, file: !590, line: 412, type: !710, flags: DIFlagPrototyped, spFlags: 0)
!710 = !DISubroutineType(types: !711)
!711 = !{!14, !130, !130, null}
!712 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !713, file: !587, line: 139)
!713 = !DISubprogram(name: "tmpfile", scope: !590, file: !590, line: 173, type: !714, flags: DIFlagPrototyped, spFlags: 0)
!714 = !DISubroutineType(types: !715)
!715 = !{!598}
!716 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !717, file: !587, line: 141)
!717 = !DISubprogram(name: "tmpnam", scope: !590, file: !590, line: 187, type: !718, flags: DIFlagPrototyped, spFlags: 0)
!718 = !DISubroutineType(types: !719)
!719 = !{!202, !202}
!720 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !721, file: !587, line: 143)
!721 = !DISubprogram(name: "ungetc", scope: !590, file: !590, line: 639, type: !632, flags: DIFlagPrototyped, spFlags: 0)
!722 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !723, file: !587, line: 144)
!723 = !DISubprogram(name: "vfprintf", scope: !590, file: !590, line: 341, type: !724, flags: DIFlagPrototyped, spFlags: 0)
!724 = !DISubroutineType(types: !725)
!725 = !{!14, !615, !130, !172}
!726 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !727, file: !587, line: 145)
!727 = !DISubprogram(name: "vprintf", scope: !590, file: !590, line: 347, type: !728, flags: DIFlagPrototyped, spFlags: 0)
!728 = !DISubroutineType(types: !729)
!729 = !{!14, !130, !172}
!730 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !731, file: !587, line: 146)
!731 = !DISubprogram(name: "vsprintf", scope: !590, file: !590, line: 349, type: !732, flags: DIFlagPrototyped, spFlags: 0)
!732 = !DISubroutineType(types: !733)
!733 = !{!14, !201, !130, !172}
!734 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !317, entity: !735, file: !587, line: 175)
!735 = !DISubprogram(name: "snprintf", scope: !590, file: !590, line: 354, type: !736, flags: DIFlagPrototyped, spFlags: 0)
!736 = !DISubroutineType(types: !737)
!737 = !{!14, !201, !128, !130, null}
!738 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !317, entity: !739, file: !587, line: 176)
!739 = !DISubprogram(name: "vfscanf", linkageName: "__isoc99_vfscanf", scope: !590, file: !590, line: 451, type: !724, flags: DIFlagPrototyped, spFlags: 0)
!740 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !317, entity: !741, file: !587, line: 177)
!741 = !DISubprogram(name: "vscanf", linkageName: "__isoc99_vscanf", scope: !590, file: !590, line: 456, type: !728, flags: DIFlagPrototyped, spFlags: 0)
!742 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !317, entity: !743, file: !587, line: 178)
!743 = !DISubprogram(name: "vsnprintf", scope: !590, file: !590, line: 358, type: !744, flags: DIFlagPrototyped, spFlags: 0)
!744 = !DISubroutineType(types: !745)
!745 = !{!14, !201, !128, !130, !172}
!746 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !317, entity: !747, file: !587, line: 179)
!747 = !DISubprogram(name: "vsscanf", linkageName: "__isoc99_vsscanf", scope: !590, file: !590, line: 459, type: !748, flags: DIFlagPrototyped, spFlags: 0)
!748 = !DISubroutineType(types: !749)
!749 = !{!14, !130, !130, !172}
!750 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !735, file: !587, line: 185)
!751 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !739, file: !587, line: 186)
!752 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !741, file: !587, line: 187)
!753 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !743, file: !587, line: 188)
!754 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !747, file: !587, line: 189)
!755 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !756, file: !762, line: 58)
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "max_align_t", file: !757, line: 24, baseType: !758)
!757 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/__stddef_max_align_t.h", directory: "/home/cs22mtech12008", checksumkind: CSK_MD5, checksum: "48e8e2456f77e6cda35d245130fa7259")
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !757, line: 19, size: 256, flags: DIFlagTypePassByValue, elements: !759, identifier: "_ZTS11max_align_t")
!759 = !{!760, !761}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "__clang_max_align_nonce1", scope: !758, file: !757, line: 20, baseType: !326, size: 64, align: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "__clang_max_align_nonce2", scope: !758, file: !757, line: 22, baseType: !321, size: 128, align: 128, offset: 128)
!762 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cstddef", directory: "")
!763 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !764, file: !770, line: 82)
!764 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctrans_t", file: !765, line: 48, baseType: !766)
!765 = !DIFile(filename: "/usr/include/wctype.h", directory: "", checksumkind: CSK_MD5, checksum: "e83097fbf57cc71ea472db59df3ba75d")
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !768)
!768 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !769, line: 41, baseType: !14)
!769 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!770 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cwctype", directory: "")
!771 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !772, file: !770, line: 83)
!772 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctype_t", file: !773, line: 38, baseType: !26)
!773 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "3598b9d23ef5d76319026b46e316b55f")
!774 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !74, file: !770, line: 84)
!775 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !776, file: !770, line: 86)
!776 = !DISubprogram(name: "iswalnum", scope: !773, file: !773, line: 95, type: !280, flags: DIFlagPrototyped, spFlags: 0)
!777 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !778, file: !770, line: 87)
!778 = !DISubprogram(name: "iswalpha", scope: !773, file: !773, line: 101, type: !280, flags: DIFlagPrototyped, spFlags: 0)
!779 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !780, file: !770, line: 89)
!780 = !DISubprogram(name: "iswblank", scope: !773, file: !773, line: 146, type: !280, flags: DIFlagPrototyped, spFlags: 0)
!781 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !782, file: !770, line: 91)
!782 = !DISubprogram(name: "iswcntrl", scope: !773, file: !773, line: 104, type: !280, flags: DIFlagPrototyped, spFlags: 0)
!783 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !784, file: !770, line: 92)
!784 = !DISubprogram(name: "iswctype", scope: !773, file: !773, line: 159, type: !785, flags: DIFlagPrototyped, spFlags: 0)
!785 = !DISubroutineType(types: !786)
!786 = !{!14, !74, !772}
!787 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !788, file: !770, line: 93)
!788 = !DISubprogram(name: "iswdigit", scope: !773, file: !773, line: 108, type: !280, flags: DIFlagPrototyped, spFlags: 0)
!789 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !790, file: !770, line: 94)
!790 = !DISubprogram(name: "iswgraph", scope: !773, file: !773, line: 112, type: !280, flags: DIFlagPrototyped, spFlags: 0)
!791 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !792, file: !770, line: 95)
!792 = !DISubprogram(name: "iswlower", scope: !773, file: !773, line: 117, type: !280, flags: DIFlagPrototyped, spFlags: 0)
!793 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !794, file: !770, line: 96)
!794 = !DISubprogram(name: "iswprint", scope: !773, file: !773, line: 120, type: !280, flags: DIFlagPrototyped, spFlags: 0)
!795 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !796, file: !770, line: 97)
!796 = !DISubprogram(name: "iswpunct", scope: !773, file: !773, line: 125, type: !280, flags: DIFlagPrototyped, spFlags: 0)
!797 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !798, file: !770, line: 98)
!798 = !DISubprogram(name: "iswspace", scope: !773, file: !773, line: 130, type: !280, flags: DIFlagPrototyped, spFlags: 0)
!799 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !800, file: !770, line: 99)
!800 = !DISubprogram(name: "iswupper", scope: !773, file: !773, line: 135, type: !280, flags: DIFlagPrototyped, spFlags: 0)
!801 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !802, file: !770, line: 100)
!802 = !DISubprogram(name: "iswxdigit", scope: !773, file: !773, line: 140, type: !280, flags: DIFlagPrototyped, spFlags: 0)
!803 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !804, file: !770, line: 101)
!804 = !DISubprogram(name: "towctrans", scope: !765, file: !765, line: 55, type: !805, flags: DIFlagPrototyped, spFlags: 0)
!805 = !DISubroutineType(types: !806)
!806 = !{!74, !74, !764}
!807 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !808, file: !770, line: 102)
!808 = !DISubprogram(name: "towlower", scope: !773, file: !773, line: 166, type: !809, flags: DIFlagPrototyped, spFlags: 0)
!809 = !DISubroutineType(types: !810)
!810 = !{!74, !74}
!811 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !812, file: !770, line: 103)
!812 = !DISubprogram(name: "towupper", scope: !773, file: !773, line: 169, type: !809, flags: DIFlagPrototyped, spFlags: 0)
!813 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !814, file: !770, line: 104)
!814 = !DISubprogram(name: "wctrans", scope: !765, file: !765, line: 52, type: !815, flags: DIFlagPrototyped, spFlags: 0)
!815 = !DISubroutineType(types: !816)
!816 = !{!764, !131}
!817 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !55, entity: !818, file: !770, line: 105)
!818 = !DISubprogram(name: "wctype", scope: !773, file: !773, line: 155, type: !819, flags: DIFlagPrototyped, spFlags: 0)
!819 = !DISubroutineType(types: !820)
!820 = !{!772, !131}
!821 = !{i32 7, !"Dwarf Version", i32 5}
!822 = !{i32 2, !"Debug Info Version", i32 3}
!823 = !{i32 1, !"wchar_size", i32 4}
!824 = !{i32 8, !"PIC Level", i32 2}
!825 = !{i32 7, !"PIE Level", i32 2}
!826 = !{i32 7, !"uwtable", i32 2}
!827 = !{i32 7, !"frame-pointer", i32 2}
!828 = !{!"clang version 16.0.0"}
!829 = distinct !DISubprogram(name: "runThread1", linkageName: "_Z10runThread1Pv", scope: !7, file: !7, line: 36, type: !830, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !832)
!830 = !DISubroutineType(types: !831)
!831 = !{!179, !179}
!832 = !{}
!833 = !DILocalVariable(name: "arg", arg: 1, scope: !829, file: !7, line: 36, type: !179)
!834 = !DILocation(line: 36, column: 24, scope: !829)
!835 = !DILocation(line: 37, column: 5, scope: !829)
!836 = !DILocalVariable(name: "basePtr", scope: !829, file: !7, line: 38, type: !5)
!837 = !DILocation(line: 38, column: 8, scope: !829)
!838 = !DILocation(line: 38, column: 34, scope: !829)
!839 = !DILocation(line: 39, column: 5, scope: !829)
!840 = !DILocation(line: 39, column: 14, scope: !829)
!841 = !DILocation(line: 40, column: 5, scope: !829)
!842 = distinct !DISubprogram(name: "runThread2", linkageName: "_Z10runThread2Pv", scope: !7, file: !7, line: 43, type: !830, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !832)
!843 = !DILocalVariable(name: "arg", arg: 1, scope: !842, file: !7, line: 43, type: !179)
!844 = !DILocation(line: 43, column: 24, scope: !842)
!845 = !DILocation(line: 44, column: 5, scope: !842)
!846 = !DILocalVariable(name: "basePtr", scope: !842, file: !7, line: 45, type: !5)
!847 = !DILocation(line: 45, column: 8, scope: !842)
!848 = !DILocation(line: 45, column: 34, scope: !842)
!849 = !DILocation(line: 46, column: 5, scope: !842)
!850 = !DILocation(line: 46, column: 14, scope: !842)
!851 = !DILocation(line: 47, column: 5, scope: !842)
!852 = distinct !DISubprogram(name: "m2", linkageName: "_ZN1A2m2Ev", scope: !6, file: !7, line: 12, type: !17, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !20, retainedNodes: !832)
!853 = !DILocalVariable(name: "this", arg: 1, scope: !852, type: !5, flags: DIFlagArtificial | DIFlagObjectPointer)
!854 = !DILocation(line: 0, scope: !852)
!855 = !DILocation(line: 13, column: 19, scope: !852)
!856 = !DILocation(line: 13, column: 40, scope: !852)
!857 = !DILocation(line: 13, column: 38, scope: !852)
!858 = !DILocation(line: 13, column: 41, scope: !852)
!859 = !DILocation(line: 14, column: 5, scope: !852)
!860 = distinct !DISubprogram(name: "createThread", linkageName: "_Z12createThreadv", scope: !7, file: !7, line: 50, type: !420, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !832)
!861 = !DILocalVariable(name: "x", scope: !860, file: !7, line: 51, type: !14)
!862 = !DILocation(line: 51, column: 9, scope: !860)
!863 = !DILocalVariable(name: "a2Obj", scope: !864, file: !7, line: 53, type: !865)
!864 = distinct !DILexicalBlock(scope: !860, file: !7, line: 52, column: 5)
!865 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "A2", file: !7, line: 25, size: 128, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !866, vtableHolder: !6, identifier: "_ZTS2A2")
!866 = !{!867, !868, !869}
!867 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !865, baseType: !6, flags: DIFlagPublic, extraData: i32 0)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "a2", scope: !865, file: !7, line: 27, baseType: !14, size: 32, offset: 96, flags: DIFlagPublic)
!869 = !DISubprogram(name: "m2", linkageName: "_ZN2A22m2Ev", scope: !865, file: !7, line: 28, type: !870, scopeLine: 28, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!870 = !DISubroutineType(types: !871)
!871 = !{null, !872}
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!873 = !DILocation(line: 53, column: 12, scope: !864)
!874 = !DILocation(line: 54, column: 17, scope: !864)
!875 = !DILocation(line: 55, column: 50, scope: !864)
!876 = !DILocation(line: 55, column: 9, scope: !864)
!877 = !DILocation(line: 57, column: 13, scope: !878)
!878 = distinct !DILexicalBlock(scope: !864, file: !7, line: 57, column: 13)
!879 = !DILocation(line: 57, column: 15, scope: !878)
!880 = !DILocation(line: 57, column: 13, scope: !864)
!881 = !DILocalVariable(name: "a1Obj", scope: !882, file: !7, line: 58, type: !883)
!882 = distinct !DILexicalBlock(scope: !878, file: !7, line: 57, column: 21)
!883 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "A1", file: !7, line: 17, size: 128, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !884, vtableHolder: !6, identifier: "_ZTS2A1")
!884 = !{!885, !886, !887}
!885 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !883, baseType: !6, flags: DIFlagPublic, extraData: i32 0)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "a1", scope: !883, file: !7, line: 19, baseType: !14, size: 32, offset: 96, flags: DIFlagPublic)
!887 = !DISubprogram(name: "m1", linkageName: "_ZN2A12m1Ev", scope: !883, file: !7, line: 20, type: !888, scopeLine: 20, containingType: !883, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!888 = !DISubroutineType(types: !889)
!889 = !{null, !890}
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!891 = !DILocation(line: 58, column: 16, scope: !882)
!892 = !DILocation(line: 59, column: 21, scope: !882)
!893 = !DILocation(line: 60, column: 54, scope: !882)
!894 = !DILocation(line: 60, column: 13, scope: !882)
!895 = !DILocation(line: 61, column: 17, scope: !896)
!896 = distinct !DILexicalBlock(scope: !882, file: !7, line: 61, column: 17)
!897 = !DILocation(line: 61, column: 19, scope: !896)
!898 = !DILocation(line: 61, column: 17, scope: !882)
!899 = !DILocalVariable(name: "a2Obj", scope: !900, file: !7, line: 62, type: !883)
!900 = distinct !DILexicalBlock(scope: !896, file: !7, line: 61, column: 25)
!901 = !DILocation(line: 62, column: 20, scope: !900)
!902 = !DILocation(line: 63, column: 25, scope: !900)
!903 = !DILocation(line: 64, column: 58, scope: !900)
!904 = !DILocation(line: 64, column: 17, scope: !900)
!905 = !DILocation(line: 65, column: 13, scope: !900)
!906 = !DILocation(line: 66, column: 9, scope: !882)
!907 = !DILocation(line: 67, column: 19, scope: !864)
!908 = !DILocation(line: 67, column: 41, scope: !864)
!909 = !DILocation(line: 69, column: 18, scope: !860)
!910 = !DILocation(line: 69, column: 5, scope: !860)
!911 = !DILocation(line: 70, column: 18, scope: !860)
!912 = !DILocation(line: 70, column: 5, scope: !860)
!913 = !DILocation(line: 72, column: 1, scope: !860)
!914 = distinct !DISubprogram(name: "A2", linkageName: "_ZN2A2C2Ev", scope: !865, file: !7, line: 25, type: !870, scopeLine: 25, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !915, retainedNodes: !832)
!915 = !DISubprogram(name: "A2", scope: !865, type: !870, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!916 = !DILocalVariable(name: "this", arg: 1, scope: !914, type: !917, flags: DIFlagArtificial | DIFlagObjectPointer)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!918 = !DILocation(line: 0, scope: !914)
!919 = !DILocation(line: 25, column: 7, scope: !914)
!920 = !DILocation(line: 27, column: 5, scope: !914)
!921 = distinct !DISubprogram(name: "A1", linkageName: "_ZN2A1C2Ev", scope: !883, file: !7, line: 17, type: !888, scopeLine: 17, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !922, retainedNodes: !832)
!922 = !DISubprogram(name: "A1", scope: !883, type: !888, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!923 = !DILocalVariable(name: "this", arg: 1, scope: !921, type: !924, flags: DIFlagArtificial | DIFlagObjectPointer)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!925 = !DILocation(line: 0, scope: !921)
!926 = !DILocation(line: 17, column: 7, scope: !921)
!927 = !DILocation(line: 19, column: 9, scope: !921)
!928 = distinct !DISubprogram(name: "main", scope: !7, file: !7, line: 74, type: !12, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !832)
!929 = !DILocation(line: 75, column: 5, scope: !928)
!930 = !DILocation(line: 76, column: 18, scope: !928)
!931 = !DILocation(line: 76, column: 5, scope: !928)
!932 = !DILocation(line: 77, column: 5, scope: !928)
!933 = distinct !DISubprogram(name: "A", linkageName: "_ZN1AC2Ev", scope: !6, file: !7, line: 5, type: !17, scopeLine: 5, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !934, retainedNodes: !832)
!934 = !DISubprogram(name: "A", scope: !6, type: !17, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!935 = !DILocalVariable(name: "this", arg: 1, scope: !933, type: !5, flags: DIFlagArtificial | DIFlagObjectPointer)
!936 = !DILocation(line: 0, scope: !933)
!937 = !DILocation(line: 5, column: 7, scope: !933)
!938 = !DILocation(line: 7, column: 9, scope: !933)
!939 = distinct !DISubprogram(name: "m1", linkageName: "_ZN1A2m1Ev", scope: !6, file: !7, line: 8, type: !17, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !16, retainedNodes: !832)
!940 = !DILocalVariable(name: "this", arg: 1, scope: !939, type: !5, flags: DIFlagArtificial | DIFlagObjectPointer)
!941 = !DILocation(line: 0, scope: !939)
!942 = !DILocation(line: 9, column: 19, scope: !939)
!943 = !DILocation(line: 9, column: 40, scope: !939)
!944 = !DILocation(line: 9, column: 38, scope: !939)
!945 = !DILocation(line: 9, column: 41, scope: !939)
!946 = !DILocation(line: 10, column: 5, scope: !939)
!947 = distinct !DISubprogram(name: "m1", linkageName: "_ZN2A12m1Ev", scope: !883, file: !7, line: 20, type: !888, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !887, retainedNodes: !832)
!948 = !DILocalVariable(name: "this", arg: 1, scope: !947, type: !924, flags: DIFlagArtificial | DIFlagObjectPointer)
!949 = !DILocation(line: 0, scope: !947)
!950 = !DILocation(line: 21, column: 19, scope: !947)
!951 = !DILocation(line: 21, column: 38, scope: !947)
!952 = !DILocation(line: 21, column: 36, scope: !947)
!953 = !DILocation(line: 21, column: 40, scope: !947)
!954 = !DILocation(line: 22, column: 5, scope: !947)
