; ModuleID = '/home/cs22mtech12008/Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Inheritance/dynamic_downcast_bug.cpp'
source_filename = "/home/cs22mtech12008/Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Inheritance/dynamic_downcast_bug.cpp"
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
%class.A2 = type { %class.A }

$_ZN1A2m2Ev = comdat any

$_ZN2A22m2Ev = comdat any

$_ZN2A1C2Ev = comdat any

$_ZN2A2C2Ev = comdat any

$_ZN1AC2Ev = comdat any

$_ZN2A12m1Ev = comdat any

$_ZN1A2m1Ev = comdat any

$_ZTS1A = comdat any

$_ZTI1A = comdat any

$_ZTS2A1 = comdat any

$_ZTI2A1 = comdat any

$_ZTS2A2 = comdat any

$_ZTI2A2 = comdat any

$_ZTV2A1 = comdat any

$_ZTV1A = comdat any

$_ZTV2A2 = comdat any

@basePtrA1 = dso_local global ptr null, align 8, !dbg !0
@basePtrA2 = dso_local global ptr null, align 8, !dbg !37
@t1 = dso_local global i64 0, align 8, !dbg !39
@t2 = dso_local global i64 0, align 8, !dbg !44
@_ZTVN10__cxxabiv117__class_type_infoE = external global ptr
@_ZTS1A = linkonce_odr dso_local constant [3 x i8] c"1A\00", comdat, align 1
@_ZTI1A = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS1A }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global ptr
@_ZTS2A1 = linkonce_odr dso_local constant [4 x i8] c"2A1\00", comdat, align 1
@_ZTI2A1 = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS2A1, ptr @_ZTI1A }, comdat, align 8
@_ZTS2A2 = linkonce_odr dso_local constant [4 x i8] c"2A2\00", comdat, align 1
@_ZTI2A2 = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS2A2, ptr @_ZTI1A }, comdat, align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [15 x i8] c"Base class m2\0A\00", align 1, !dbg !46
@.str.1 = private unnamed_addr constant [13 x i8] c"A2 class m2\0A\00", align 1, !dbg !53
@_ZTV2A1 = linkonce_odr dso_local unnamed_addr constant { [3 x ptr] } { [3 x ptr] [ptr null, ptr @_ZTI2A1, ptr @_ZN2A12m1Ev] }, comdat, align 8
@_ZTV1A = linkonce_odr dso_local unnamed_addr constant { [3 x ptr] } { [3 x ptr] [ptr null, ptr @_ZTI1A, ptr @_ZN1A2m1Ev] }, comdat, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"Base class m1\0A\00", align 1, !dbg !58
@.str.3 = private unnamed_addr constant [13 x i8] c"A1 class m1\0A\00", align 1, !dbg !60
@_ZTV2A2 = linkonce_odr dso_local unnamed_addr constant { [3 x ptr] } { [3 x ptr] [ptr null, ptr @_ZTI2A2, ptr @_ZN1A2m1Ev] }, comdat, align 8

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef ptr @_Z10runThread1Pv(ptr noundef %0) #0 !dbg !838 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !842, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.declare(metadata ptr %3, metadata !844, metadata !DIExpression()), !dbg !845
  %5 = load ptr, ptr %2, align 8, !dbg !846
  store ptr %5, ptr %3, align 8, !dbg !845
  %6 = load ptr, ptr %3, align 8, !dbg !847
  %7 = load ptr, ptr %6, align 8, !dbg !848
  %8 = getelementptr inbounds ptr, ptr %7, i64 0, !dbg !848
  %9 = load ptr, ptr %8, align 8, !dbg !848
  call void %9(ptr noundef nonnull align 8 dereferenceable(8) %6), !dbg !848
  call void @llvm.dbg.declare(metadata ptr %4, metadata !849, metadata !DIExpression()), !dbg !850
  %10 = load ptr, ptr %3, align 8, !dbg !851
  %11 = icmp eq ptr %10, null, !dbg !852
  br i1 %11, label %14, label %12, !dbg !852

12:                                               ; preds = %1
  %13 = call ptr @__dynamic_cast(ptr %10, ptr @_ZTI1A, ptr @_ZTI2A1, i64 0) #7, !dbg !852
  br label %15, !dbg !852

14:                                               ; preds = %1
  br label %15, !dbg !852

15:                                               ; preds = %14, %12
  %16 = phi ptr [ %13, %12 ], [ null, %14 ], !dbg !852
  store ptr %16, ptr %4, align 8, !dbg !850
  %17 = load ptr, ptr %4, align 8, !dbg !853
  %18 = icmp ne ptr %17, null, !dbg !853
  br i1 %18, label %19, label %24, !dbg !855

19:                                               ; preds = %15
  %20 = load ptr, ptr %4, align 8, !dbg !856
  %21 = load ptr, ptr %20, align 8, !dbg !858
  %22 = getelementptr inbounds ptr, ptr %21, i64 0, !dbg !858
  %23 = load ptr, ptr %22, align 8, !dbg !858
  call void %23(ptr noundef nonnull align 8 dereferenceable(8) %20), !dbg !858
  br label %24, !dbg !859

24:                                               ; preds = %19, %15
  ret ptr null, !dbg !860
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) #2

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef ptr @_Z10runThread2Pv(ptr noundef %0) #0 !dbg !861 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !862, metadata !DIExpression()), !dbg !863
  %5 = call i32 @sleep(i32 noundef 5), !dbg !864
  call void @llvm.dbg.declare(metadata ptr %3, metadata !865, metadata !DIExpression()), !dbg !866
  %6 = load ptr, ptr %2, align 8, !dbg !867
  store ptr %6, ptr %3, align 8, !dbg !866
  %7 = load ptr, ptr %3, align 8, !dbg !868
  call void @_ZN1A2m2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7), !dbg !869
  call void @llvm.dbg.declare(metadata ptr %4, metadata !870, metadata !DIExpression()), !dbg !871
  %8 = load ptr, ptr %3, align 8, !dbg !872
  %9 = icmp eq ptr %8, null, !dbg !873
  br i1 %9, label %12, label %10, !dbg !873

10:                                               ; preds = %1
  %11 = call ptr @__dynamic_cast(ptr %8, ptr @_ZTI1A, ptr @_ZTI2A2, i64 0) #7, !dbg !873
  br label %13, !dbg !873

12:                                               ; preds = %1
  br label %13, !dbg !873

13:                                               ; preds = %12, %10
  %14 = phi ptr [ %11, %10 ], [ null, %12 ], !dbg !873
  store ptr %14, ptr %4, align 8, !dbg !871
  %15 = load ptr, ptr %4, align 8, !dbg !874
  %16 = icmp ne ptr %15, null, !dbg !874
  br i1 %16, label %17, label %19, !dbg !876

17:                                               ; preds = %13
  %18 = load ptr, ptr %4, align 8, !dbg !877
  call void @_ZN2A22m2Ev(ptr noundef nonnull align 8 dereferenceable(8) %18), !dbg !879
  br label %19, !dbg !880

19:                                               ; preds = %17, %13
  ret ptr null, !dbg !881
}

declare i32 @sleep(i32 noundef) #3

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN1A2m2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #0 comdat align 2 !dbg !882 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !883, metadata !DIExpression()), !dbg !884
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str), !dbg !885
  ret void, !dbg !886
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN2A22m2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #0 comdat align 2 !dbg !887 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !888, metadata !DIExpression()), !dbg !889
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.1), !dbg !890
  ret void, !dbg !891
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z12createThreadv() #0 !dbg !892 {
  %1 = alloca %class.A1, align 8
  %2 = alloca %class.A2, align 8
  call void @llvm.dbg.declare(metadata ptr %1, metadata !893, metadata !DIExpression()), !dbg !894
  call void @_ZN2A1C2Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #7, !dbg !894
  call void @llvm.dbg.declare(metadata ptr %2, metadata !895, metadata !DIExpression()), !dbg !896
  call void @_ZN2A2C2Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #7, !dbg !896
  store ptr %1, ptr @basePtrA1, align 8, !dbg !897
  store ptr %2, ptr @basePtrA2, align 8, !dbg !898
  %3 = load ptr, ptr @basePtrA1, align 8, !dbg !899
  %4 = call i32 @pthread_create(ptr noundef @t1, ptr noundef null, ptr noundef @_Z10runThread1Pv, ptr noundef %3) #7, !dbg !900
  %5 = load i64, ptr @t1, align 8, !dbg !901
  %6 = call i32 @pthread_join(i64 noundef %5, ptr noundef null), !dbg !902
  %7 = load ptr, ptr @basePtrA2, align 8, !dbg !903
  %8 = call i32 @pthread_create(ptr noundef @t2, ptr noundef null, ptr noundef @_Z10runThread2Pv, ptr noundef %7) #7, !dbg !904
  ret void, !dbg !905
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN2A1C2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !dbg !906 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !908, metadata !DIExpression()), !dbg !909
  %3 = load ptr, ptr %2, align 8
  call void @_ZN1AC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #7, !dbg !910
  store ptr getelementptr inbounds ({ [3 x ptr] }, ptr @_ZTV2A1, i32 0, inrange i32 0, i32 2), ptr %3, align 8, !dbg !910
  ret void, !dbg !910
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN2A2C2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !dbg !911 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !913, metadata !DIExpression()), !dbg !914
  %3 = load ptr, ptr %2, align 8
  call void @_ZN1AC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #7, !dbg !915
  store ptr getelementptr inbounds ({ [3 x ptr] }, ptr @_ZTV2A2, i32 0, inrange i32 0, i32 2), ptr %3, align 8, !dbg !915
  ret void, !dbg !915
}

; Function Attrs: nounwind
declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #5

declare i32 @pthread_join(i64 noundef, ptr noundef) #3

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main() #6 !dbg !916 {
  %1 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  call void @_Z12createThreadv(), !dbg !917
  %2 = load i64, ptr @t2, align 8, !dbg !918
  %3 = call i32 @pthread_join(i64 noundef %2, ptr noundef null), !dbg !919
  ret i32 0, !dbg !920
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN1AC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !dbg !921 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !923, metadata !DIExpression()), !dbg !924
  %3 = load ptr, ptr %2, align 8
  store ptr getelementptr inbounds ({ [3 x ptr] }, ptr @_ZTV1A, i32 0, inrange i32 0, i32 2), ptr %3, align 8, !dbg !925
  ret void, !dbg !925
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN2A12m1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !dbg !926 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !927, metadata !DIExpression()), !dbg !928
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.3), !dbg !929
  ret void, !dbg !930
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN1A2m1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !dbg !931 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !932, metadata !DIExpression()), !dbg !933
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.2), !dbg !934
  ret void, !dbg !935
}

attributes #0 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind memory(read) }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!830, !831, !832, !833, !834, !835, !836}
!llvm.ident = !{!837}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "basePtrA1", scope: !2, file: !7, line: 16, type: !5, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !3, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !36, imports: !62, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/cs22mtech12008/Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Inheritance/dynamic_downcast_bug.cpp", directory: "/home/cs22mtech12008", checksumkind: CSK_MD5, checksum: "7475a564c4f6a975fb62ab79a5b6548c")
!4 = !{!5, !20, !28}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "A", file: !7, line: 5, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !8, vtableHolder: !6, identifier: "_ZTS1A")
!7 = !DIFile(filename: "Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Inheritance/dynamic_downcast_bug.cpp", directory: "/home/cs22mtech12008", checksumkind: CSK_MD5, checksum: "7475a564c4f6a975fb62ab79a5b6548c")
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
!21 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "A1", file: !7, line: 19, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !22, vtableHolder: !6, identifier: "_ZTS2A1")
!22 = !{!23, !24}
!23 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !21, baseType: !6, flags: DIFlagPublic, extraData: i32 0)
!24 = !DISubprogram(name: "m1", linkageName: "_ZN2A12m1Ev", scope: !21, file: !7, line: 21, type: !25, scopeLine: 21, containingType: !21, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!25 = !DISubroutineType(types: !26)
!26 = !{null, !27}
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "A2", file: !7, line: 26, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !30, vtableHolder: !6, identifier: "_ZTS2A2")
!30 = !{!31, !32}
!31 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !29, baseType: !6, flags: DIFlagPublic, extraData: i32 0)
!32 = !DISubprogram(name: "m2", linkageName: "_ZN2A22m2Ev", scope: !29, file: !7, line: 28, type: !33, scopeLine: 28, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!33 = !DISubroutineType(types: !34)
!34 = !{null, !35}
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!36 = !{!0, !37, !39, !44, !46, !53, !58, !60}
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(name: "basePtrA2", scope: !2, file: !7, line: 17, type: !5, isLocal: false, isDefinition: true)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(name: "t1", scope: !2, file: !7, line: 33, type: !41, isLocal: false, isDefinition: true)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !42, line: 27, baseType: !43)
!42 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "2d764266ce95ab26d4a4767c2ec78176")
!43 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "t2", scope: !2, file: !7, line: 33, type: !41, isLocal: false, isDefinition: true)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(scope: null, file: !7, line: 12, type: !48, isLocal: true, isDefinition: true)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 120, elements: !51)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!50 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!51 = !{!52}
!52 = !DISubrange(count: 15)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(scope: null, file: !7, line: 29, type: !55, isLocal: true, isDefinition: true)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 104, elements: !56)
!56 = !{!57}
!57 = !DISubrange(count: 13)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(scope: null, file: !7, line: 8, type: !48, isLocal: true, isDefinition: true)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(scope: null, file: !7, line: 22, type: !55, isLocal: true, isDefinition: true)
!62 = !{!63, !82, !85, !90, !98, !106, !110, !117, !121, !125, !127, !129, !133, !143, !147, !153, !159, !161, !165, !169, !173, !177, !190, !192, !196, !200, !204, !206, !212, !216, !220, !222, !224, !228, !236, !240, !244, !248, !250, !256, !258, !265, !270, !274, !279, !283, !287, !291, !293, !295, !299, !303, !307, !309, !313, !317, !319, !321, !325, !331, !336, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !355, !359, !364, !368, !372, !377, !383, !385, !387, !389, !391, !393, !395, !397, !399, !401, !403, !405, !407, !409, !413, !417, !421, !427, !431, !435, !440, !442, !446, !450, !454, !464, !466, !470, !474, !478, !482, !486, !490, !494, !498, !502, !506, !510, !512, !514, !518, !522, !528, !532, !536, !538, !542, !546, !552, !554, !558, !562, !566, !570, !574, !578, !582, !583, !584, !585, !587, !588, !589, !590, !591, !592, !593, !597, !603, !608, !612, !614, !616, !618, !620, !627, !631, !635, !639, !643, !647, !652, !656, !658, !662, !668, !672, !677, !679, !681, !685, !689, !691, !693, !695, !697, !701, !703, !705, !709, !713, !717, !721, !725, !729, !731, !735, !739, !743, !747, !749, !751, !755, !759, !760, !761, !762, !763, !764, !772, !780, !783, !784, !786, !788, !790, !792, !796, !798, !800, !802, !804, !806, !808, !810, !812, !816, !820, !822, !826}
!63 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !65, file: !81, line: 64)
!64 = !DINamespace(name: "std", scope: null)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !66, line: 6, baseType: !67)
!66 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !68, line: 21, baseType: !69)
!68 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !68, line: 13, size: 64, flags: DIFlagTypePassByValue, elements: !70, identifier: "_ZTS11__mbstate_t")
!70 = !{!71, !72}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !69, file: !68, line: 15, baseType: !14, size: 32)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !69, file: !68, line: 20, baseType: !73, size: 32, offset: 32)
!73 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !69, file: !68, line: 16, size: 32, flags: DIFlagTypePassByValue, elements: !74, identifier: "_ZTSN11__mbstate_tUt_E")
!74 = !{!75, !77}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !73, file: !68, line: 18, baseType: !76, size: 32)
!76 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !73, file: !68, line: 19, baseType: !78, size: 32)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 32, elements: !79)
!79 = !{!80}
!80 = !DISubrange(count: 4)
!81 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cwchar", directory: "")
!82 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !83, file: !81, line: 141)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !84, line: 20, baseType: !76)
!84 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!85 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !86, file: !81, line: 143)
!86 = !DISubprogram(name: "btowc", scope: !87, file: !87, line: 284, type: !88, flags: DIFlagPrototyped, spFlags: 0)
!87 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "8900d9ecbbe40d052c41becfbc5b5531")
!88 = !DISubroutineType(types: !89)
!89 = !{!83, !14}
!90 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !91, file: !81, line: 144)
!91 = !DISubprogram(name: "fgetwc", scope: !87, file: !87, line: 726, type: !92, flags: DIFlagPrototyped, spFlags: 0)
!92 = !DISubroutineType(types: !93)
!93 = !{!83, !94}
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !96, line: 5, baseType: !97)
!96 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "72a8fe90981f484acae7c6f3dfc5c2b7")
!97 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !96, line: 4, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS8_IO_FILE")
!98 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !99, file: !81, line: 145)
!99 = !DISubprogram(name: "fgetws", scope: !87, file: !87, line: 755, type: !100, flags: DIFlagPrototyped, spFlags: 0)
!100 = !DISubroutineType(types: !101)
!101 = !{!102, !104, !14, !105}
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!104 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !102)
!105 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !94)
!106 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !107, file: !81, line: 146)
!107 = !DISubprogram(name: "fputwc", scope: !87, file: !87, line: 740, type: !108, flags: DIFlagPrototyped, spFlags: 0)
!108 = !DISubroutineType(types: !109)
!109 = !{!83, !103, !94}
!110 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !111, file: !81, line: 147)
!111 = !DISubprogram(name: "fputws", scope: !87, file: !87, line: 762, type: !112, flags: DIFlagPrototyped, spFlags: 0)
!112 = !DISubroutineType(types: !113)
!113 = !{!14, !114, !105}
!114 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!117 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !118, file: !81, line: 148)
!118 = !DISubprogram(name: "fwide", scope: !87, file: !87, line: 573, type: !119, flags: DIFlagPrototyped, spFlags: 0)
!119 = !DISubroutineType(types: !120)
!120 = !{!14, !94, !14}
!121 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !122, file: !81, line: 149)
!122 = !DISubprogram(name: "fwprintf", scope: !87, file: !87, line: 580, type: !123, flags: DIFlagPrototyped, spFlags: 0)
!123 = !DISubroutineType(types: !124)
!124 = !{!14, !105, !114, null}
!125 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !126, file: !81, line: 150)
!126 = !DISubprogram(name: "fwscanf", linkageName: "__isoc99_fwscanf", scope: !87, file: !87, line: 640, type: !123, flags: DIFlagPrototyped, spFlags: 0)
!127 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !128, file: !81, line: 151)
!128 = !DISubprogram(name: "getwc", scope: !87, file: !87, line: 727, type: !92, flags: DIFlagPrototyped, spFlags: 0)
!129 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !130, file: !81, line: 152)
!130 = !DISubprogram(name: "getwchar", scope: !87, file: !87, line: 733, type: !131, flags: DIFlagPrototyped, spFlags: 0)
!131 = !DISubroutineType(types: !132)
!132 = !{!83}
!133 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !134, file: !81, line: 153)
!134 = !DISubprogram(name: "mbrlen", scope: !87, file: !87, line: 307, type: !135, flags: DIFlagPrototyped, spFlags: 0)
!135 = !DISubroutineType(types: !136)
!136 = !{!137, !139, !137, !141}
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !138, line: 46, baseType: !43)
!138 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/cs22mtech12008", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!139 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !140)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !142)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!143 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !144, file: !81, line: 154)
!144 = !DISubprogram(name: "mbrtowc", scope: !87, file: !87, line: 296, type: !145, flags: DIFlagPrototyped, spFlags: 0)
!145 = !DISubroutineType(types: !146)
!146 = !{!137, !104, !139, !137, !141}
!147 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !148, file: !81, line: 155)
!148 = !DISubprogram(name: "mbsinit", scope: !87, file: !87, line: 292, type: !149, flags: DIFlagPrototyped, spFlags: 0)
!149 = !DISubroutineType(types: !150)
!150 = !{!14, !151}
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!153 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !154, file: !81, line: 156)
!154 = !DISubprogram(name: "mbsrtowcs", scope: !87, file: !87, line: 337, type: !155, flags: DIFlagPrototyped, spFlags: 0)
!155 = !DISubroutineType(types: !156)
!156 = !{!137, !104, !157, !137, !141}
!157 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !158)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!159 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !160, file: !81, line: 157)
!160 = !DISubprogram(name: "putwc", scope: !87, file: !87, line: 741, type: !108, flags: DIFlagPrototyped, spFlags: 0)
!161 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !162, file: !81, line: 158)
!162 = !DISubprogram(name: "putwchar", scope: !87, file: !87, line: 747, type: !163, flags: DIFlagPrototyped, spFlags: 0)
!163 = !DISubroutineType(types: !164)
!164 = !{!83, !103}
!165 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !166, file: !81, line: 160)
!166 = !DISubprogram(name: "swprintf", scope: !87, file: !87, line: 590, type: !167, flags: DIFlagPrototyped, spFlags: 0)
!167 = !DISubroutineType(types: !168)
!168 = !{!14, !104, !137, !114, null}
!169 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !170, file: !81, line: 162)
!170 = !DISubprogram(name: "swscanf", linkageName: "__isoc99_swscanf", scope: !87, file: !87, line: 647, type: !171, flags: DIFlagPrototyped, spFlags: 0)
!171 = !DISubroutineType(types: !172)
!172 = !{!14, !114, !114, null}
!173 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !174, file: !81, line: 163)
!174 = !DISubprogram(name: "ungetwc", scope: !87, file: !87, line: 770, type: !175, flags: DIFlagPrototyped, spFlags: 0)
!175 = !DISubroutineType(types: !176)
!176 = !{!83, !83, !94}
!177 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !178, file: !81, line: 164)
!178 = !DISubprogram(name: "vfwprintf", scope: !87, file: !87, line: 598, type: !179, flags: DIFlagPrototyped, spFlags: 0)
!179 = !DISubroutineType(types: !180)
!180 = !{!14, !105, !114, !181}
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, flags: DIFlagTypePassByValue, elements: !183, identifier: "_ZTS13__va_list_tag")
!183 = !{!184, !186, !187, !189}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !182, file: !185, baseType: !76, size: 32)
!185 = !DIFile(filename: "Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Inheritance/dynamic_downcast_bug.cpp", directory: "/home/cs22mtech12008")
!186 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !182, file: !185, baseType: !76, size: 32, offset: 32)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !182, file: !185, baseType: !188, size: 64, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !182, file: !185, baseType: !188, size: 64, offset: 128)
!190 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !191, file: !81, line: 166)
!191 = !DISubprogram(name: "vfwscanf", linkageName: "__isoc99_vfwscanf", scope: !87, file: !87, line: 693, type: !179, flags: DIFlagPrototyped, spFlags: 0)
!192 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !193, file: !81, line: 169)
!193 = !DISubprogram(name: "vswprintf", scope: !87, file: !87, line: 611, type: !194, flags: DIFlagPrototyped, spFlags: 0)
!194 = !DISubroutineType(types: !195)
!195 = !{!14, !104, !137, !114, !181}
!196 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !197, file: !81, line: 172)
!197 = !DISubprogram(name: "vswscanf", linkageName: "__isoc99_vswscanf", scope: !87, file: !87, line: 700, type: !198, flags: DIFlagPrototyped, spFlags: 0)
!198 = !DISubroutineType(types: !199)
!199 = !{!14, !114, !114, !181}
!200 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !201, file: !81, line: 174)
!201 = !DISubprogram(name: "vwprintf", scope: !87, file: !87, line: 606, type: !202, flags: DIFlagPrototyped, spFlags: 0)
!202 = !DISubroutineType(types: !203)
!203 = !{!14, !114, !181}
!204 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !205, file: !81, line: 176)
!205 = !DISubprogram(name: "vwscanf", linkageName: "__isoc99_vwscanf", scope: !87, file: !87, line: 697, type: !202, flags: DIFlagPrototyped, spFlags: 0)
!206 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !207, file: !81, line: 178)
!207 = !DISubprogram(name: "wcrtomb", scope: !87, file: !87, line: 301, type: !208, flags: DIFlagPrototyped, spFlags: 0)
!208 = !DISubroutineType(types: !209)
!209 = !{!137, !210, !103, !141}
!210 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !211)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!212 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !213, file: !81, line: 179)
!213 = !DISubprogram(name: "wcscat", scope: !87, file: !87, line: 97, type: !214, flags: DIFlagPrototyped, spFlags: 0)
!214 = !DISubroutineType(types: !215)
!215 = !{!102, !104, !114}
!216 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !217, file: !81, line: 180)
!217 = !DISubprogram(name: "wcscmp", scope: !87, file: !87, line: 106, type: !218, flags: DIFlagPrototyped, spFlags: 0)
!218 = !DISubroutineType(types: !219)
!219 = !{!14, !115, !115}
!220 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !221, file: !81, line: 181)
!221 = !DISubprogram(name: "wcscoll", scope: !87, file: !87, line: 131, type: !218, flags: DIFlagPrototyped, spFlags: 0)
!222 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !223, file: !81, line: 182)
!223 = !DISubprogram(name: "wcscpy", scope: !87, file: !87, line: 87, type: !214, flags: DIFlagPrototyped, spFlags: 0)
!224 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !225, file: !81, line: 183)
!225 = !DISubprogram(name: "wcscspn", scope: !87, file: !87, line: 187, type: !226, flags: DIFlagPrototyped, spFlags: 0)
!226 = !DISubroutineType(types: !227)
!227 = !{!137, !115, !115}
!228 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !229, file: !81, line: 184)
!229 = !DISubprogram(name: "wcsftime", scope: !87, file: !87, line: 834, type: !230, flags: DIFlagPrototyped, spFlags: 0)
!230 = !DISubroutineType(types: !231)
!231 = !{!137, !104, !137, !114, !232}
!232 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !233)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !235)
!235 = !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !87, line: 83, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS2tm")
!236 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !237, file: !81, line: 185)
!237 = !DISubprogram(name: "wcslen", scope: !87, file: !87, line: 222, type: !238, flags: DIFlagPrototyped, spFlags: 0)
!238 = !DISubroutineType(types: !239)
!239 = !{!137, !115}
!240 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !241, file: !81, line: 186)
!241 = !DISubprogram(name: "wcsncat", scope: !87, file: !87, line: 101, type: !242, flags: DIFlagPrototyped, spFlags: 0)
!242 = !DISubroutineType(types: !243)
!243 = !{!102, !104, !114, !137}
!244 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !245, file: !81, line: 187)
!245 = !DISubprogram(name: "wcsncmp", scope: !87, file: !87, line: 109, type: !246, flags: DIFlagPrototyped, spFlags: 0)
!246 = !DISubroutineType(types: !247)
!247 = !{!14, !115, !115, !137}
!248 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !249, file: !81, line: 188)
!249 = !DISubprogram(name: "wcsncpy", scope: !87, file: !87, line: 92, type: !242, flags: DIFlagPrototyped, spFlags: 0)
!250 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !251, file: !81, line: 189)
!251 = !DISubprogram(name: "wcsrtombs", scope: !87, file: !87, line: 343, type: !252, flags: DIFlagPrototyped, spFlags: 0)
!252 = !DISubroutineType(types: !253)
!253 = !{!137, !210, !254, !137, !141}
!254 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !255)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!256 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !257, file: !81, line: 190)
!257 = !DISubprogram(name: "wcsspn", scope: !87, file: !87, line: 191, type: !226, flags: DIFlagPrototyped, spFlags: 0)
!258 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !259, file: !81, line: 191)
!259 = !DISubprogram(name: "wcstod", scope: !87, file: !87, line: 377, type: !260, flags: DIFlagPrototyped, spFlags: 0)
!260 = !DISubroutineType(types: !261)
!261 = !{!262, !114, !263}
!262 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!263 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !264)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!265 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !266, file: !81, line: 193)
!266 = !DISubprogram(name: "wcstof", scope: !87, file: !87, line: 382, type: !267, flags: DIFlagPrototyped, spFlags: 0)
!267 = !DISubroutineType(types: !268)
!268 = !{!269, !114, !263}
!269 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!270 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !271, file: !81, line: 195)
!271 = !DISubprogram(name: "wcstok", scope: !87, file: !87, line: 217, type: !272, flags: DIFlagPrototyped, spFlags: 0)
!272 = !DISubroutineType(types: !273)
!273 = !{!102, !104, !114, !263}
!274 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !275, file: !81, line: 196)
!275 = !DISubprogram(name: "wcstol", scope: !87, file: !87, line: 428, type: !276, flags: DIFlagPrototyped, spFlags: 0)
!276 = !DISubroutineType(types: !277)
!277 = !{!278, !114, !263, !14}
!278 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!279 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !280, file: !81, line: 197)
!280 = !DISubprogram(name: "wcstoul", scope: !87, file: !87, line: 433, type: !281, flags: DIFlagPrototyped, spFlags: 0)
!281 = !DISubroutineType(types: !282)
!282 = !{!43, !114, !263, !14}
!283 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !284, file: !81, line: 198)
!284 = !DISubprogram(name: "wcsxfrm", scope: !87, file: !87, line: 135, type: !285, flags: DIFlagPrototyped, spFlags: 0)
!285 = !DISubroutineType(types: !286)
!286 = !{!137, !104, !114, !137}
!287 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !288, file: !81, line: 199)
!288 = !DISubprogram(name: "wctob", scope: !87, file: !87, line: 288, type: !289, flags: DIFlagPrototyped, spFlags: 0)
!289 = !DISubroutineType(types: !290)
!290 = !{!14, !83}
!291 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !292, file: !81, line: 200)
!292 = !DISubprogram(name: "wmemcmp", scope: !87, file: !87, line: 258, type: !246, flags: DIFlagPrototyped, spFlags: 0)
!293 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !294, file: !81, line: 201)
!294 = !DISubprogram(name: "wmemcpy", scope: !87, file: !87, line: 262, type: !242, flags: DIFlagPrototyped, spFlags: 0)
!295 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !296, file: !81, line: 202)
!296 = !DISubprogram(name: "wmemmove", scope: !87, file: !87, line: 267, type: !297, flags: DIFlagPrototyped, spFlags: 0)
!297 = !DISubroutineType(types: !298)
!298 = !{!102, !102, !115, !137}
!299 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !300, file: !81, line: 203)
!300 = !DISubprogram(name: "wmemset", scope: !87, file: !87, line: 271, type: !301, flags: DIFlagPrototyped, spFlags: 0)
!301 = !DISubroutineType(types: !302)
!302 = !{!102, !102, !103, !137}
!303 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !304, file: !81, line: 204)
!304 = !DISubprogram(name: "wprintf", scope: !87, file: !87, line: 587, type: !305, flags: DIFlagPrototyped, spFlags: 0)
!305 = !DISubroutineType(types: !306)
!306 = !{!14, !114, null}
!307 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !308, file: !81, line: 205)
!308 = !DISubprogram(name: "wscanf", linkageName: "__isoc99_wscanf", scope: !87, file: !87, line: 644, type: !305, flags: DIFlagPrototyped, spFlags: 0)
!309 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !310, file: !81, line: 206)
!310 = !DISubprogram(name: "wcschr", scope: !87, file: !87, line: 164, type: !311, flags: DIFlagPrototyped, spFlags: 0)
!311 = !DISubroutineType(types: !312)
!312 = !{!102, !115, !103}
!313 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !314, file: !81, line: 207)
!314 = !DISubprogram(name: "wcspbrk", scope: !87, file: !87, line: 201, type: !315, flags: DIFlagPrototyped, spFlags: 0)
!315 = !DISubroutineType(types: !316)
!316 = !{!102, !115, !115}
!317 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !318, file: !81, line: 208)
!318 = !DISubprogram(name: "wcsrchr", scope: !87, file: !87, line: 174, type: !311, flags: DIFlagPrototyped, spFlags: 0)
!319 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !320, file: !81, line: 209)
!320 = !DISubprogram(name: "wcsstr", scope: !87, file: !87, line: 212, type: !315, flags: DIFlagPrototyped, spFlags: 0)
!321 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !322, file: !81, line: 210)
!322 = !DISubprogram(name: "wmemchr", scope: !87, file: !87, line: 253, type: !323, flags: DIFlagPrototyped, spFlags: 0)
!323 = !DISubroutineType(types: !324)
!324 = !{!102, !115, !103, !137}
!325 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !326, entity: !327, file: !81, line: 251)
!326 = !DINamespace(name: "__gnu_cxx", scope: null)
!327 = !DISubprogram(name: "wcstold", scope: !87, file: !87, line: 384, type: !328, flags: DIFlagPrototyped, spFlags: 0)
!328 = !DISubroutineType(types: !329)
!329 = !{!330, !114, !263}
!330 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!331 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !326, entity: !332, file: !81, line: 260)
!332 = !DISubprogram(name: "wcstoll", scope: !87, file: !87, line: 441, type: !333, flags: DIFlagPrototyped, spFlags: 0)
!333 = !DISubroutineType(types: !334)
!334 = !{!335, !114, !263, !14}
!335 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!336 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !326, entity: !337, file: !81, line: 261)
!337 = !DISubprogram(name: "wcstoull", scope: !87, file: !87, line: 448, type: !338, flags: DIFlagPrototyped, spFlags: 0)
!338 = !DISubroutineType(types: !339)
!339 = !{!340, !114, !263, !14}
!340 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!341 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !327, file: !81, line: 267)
!342 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !332, file: !81, line: 268)
!343 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !337, file: !81, line: 269)
!344 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !266, file: !81, line: 283)
!345 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !191, file: !81, line: 286)
!346 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !197, file: !81, line: 289)
!347 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !205, file: !81, line: 292)
!348 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !327, file: !81, line: 296)
!349 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !332, file: !81, line: 297)
!350 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !337, file: !81, line: 298)
!351 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !352, file: !353, line: 66)
!352 = !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !354, file: !353, line: 97, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!353 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/exception_ptr.h", directory: "", checksumkind: CSK_MD5, checksum: "314ad14748ccb9ff85c65d17ebb0828b")
!354 = !DINamespace(name: "__exception_ptr", scope: !64)
!355 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !354, entity: !356, file: !353, line: 85)
!356 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !64, file: !353, line: 81, type: !357, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!357 = !DISubroutineType(types: !358)
!358 = !{null, !352}
!359 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !360, file: !353, line: 243)
!360 = !DISubprogram(name: "swap", linkageName: "_ZNSt15__exception_ptr4swapERNS_13exception_ptrES1_", scope: !354, file: !353, line: 230, type: !361, flags: DIFlagPrototyped, spFlags: 0)
!361 = !DISubroutineType(types: !362)
!362 = !{null, !363, !363}
!363 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !352, size: 64)
!364 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !365, file: !367, line: 53)
!365 = !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !366, line: 51, size: 768, flags: DIFlagFwdDecl, identifier: "_ZTS5lconv")
!366 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "0cf373fc44eed8073800bdb9da87b72f")
!367 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/clocale", directory: "")
!368 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !369, file: !367, line: 54)
!369 = !DISubprogram(name: "setlocale", scope: !366, file: !366, line: 122, type: !370, flags: DIFlagPrototyped, spFlags: 0)
!370 = !DISubroutineType(types: !371)
!371 = !{!211, !14, !140}
!372 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !373, file: !367, line: 55)
!373 = !DISubprogram(name: "localeconv", scope: !366, file: !366, line: 125, type: !374, flags: DIFlagPrototyped, spFlags: 0)
!374 = !DISubroutineType(types: !375)
!375 = !{!376}
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!377 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !378, file: !382, line: 64)
!378 = !DISubprogram(name: "isalnum", scope: !379, file: !379, line: 108, type: !380, flags: DIFlagPrototyped, spFlags: 0)
!379 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "36575f934ef4fe7e9d50a3cb17bd5c66")
!380 = !DISubroutineType(types: !381)
!381 = !{!14, !14}
!382 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cctype", directory: "")
!383 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !384, file: !382, line: 65)
!384 = !DISubprogram(name: "isalpha", scope: !379, file: !379, line: 109, type: !380, flags: DIFlagPrototyped, spFlags: 0)
!385 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !386, file: !382, line: 66)
!386 = !DISubprogram(name: "iscntrl", scope: !379, file: !379, line: 110, type: !380, flags: DIFlagPrototyped, spFlags: 0)
!387 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !388, file: !382, line: 67)
!388 = !DISubprogram(name: "isdigit", scope: !379, file: !379, line: 111, type: !380, flags: DIFlagPrototyped, spFlags: 0)
!389 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !390, file: !382, line: 68)
!390 = !DISubprogram(name: "isgraph", scope: !379, file: !379, line: 113, type: !380, flags: DIFlagPrototyped, spFlags: 0)
!391 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !392, file: !382, line: 69)
!392 = !DISubprogram(name: "islower", scope: !379, file: !379, line: 112, type: !380, flags: DIFlagPrototyped, spFlags: 0)
!393 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !394, file: !382, line: 70)
!394 = !DISubprogram(name: "isprint", scope: !379, file: !379, line: 114, type: !380, flags: DIFlagPrototyped, spFlags: 0)
!395 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !396, file: !382, line: 71)
!396 = !DISubprogram(name: "ispunct", scope: !379, file: !379, line: 115, type: !380, flags: DIFlagPrototyped, spFlags: 0)
!397 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !398, file: !382, line: 72)
!398 = !DISubprogram(name: "isspace", scope: !379, file: !379, line: 116, type: !380, flags: DIFlagPrototyped, spFlags: 0)
!399 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !400, file: !382, line: 73)
!400 = !DISubprogram(name: "isupper", scope: !379, file: !379, line: 117, type: !380, flags: DIFlagPrototyped, spFlags: 0)
!401 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !402, file: !382, line: 74)
!402 = !DISubprogram(name: "isxdigit", scope: !379, file: !379, line: 118, type: !380, flags: DIFlagPrototyped, spFlags: 0)
!403 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !404, file: !382, line: 75)
!404 = !DISubprogram(name: "tolower", scope: !379, file: !379, line: 122, type: !380, flags: DIFlagPrototyped, spFlags: 0)
!405 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !406, file: !382, line: 76)
!406 = !DISubprogram(name: "toupper", scope: !379, file: !379, line: 125, type: !380, flags: DIFlagPrototyped, spFlags: 0)
!407 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !408, file: !382, line: 87)
!408 = !DISubprogram(name: "isblank", scope: !379, file: !379, line: 130, type: !380, flags: DIFlagPrototyped, spFlags: 0)
!409 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !410, entity: !411, file: !412, line: 58)
!410 = !DINamespace(name: "__gnu_debug", scope: null)
!411 = !DINamespace(name: "__debug", scope: !64)
!412 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/debug/debug.h", directory: "", checksumkind: CSK_MD5, checksum: "752210a319f5f5d356cc29cd1ce3cdc7")
!413 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !414, file: !416, line: 52)
!414 = !DISubprogram(name: "abs", scope: !415, file: !415, line: 840, type: !380, flags: DIFlagPrototyped, spFlags: 0)
!415 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!416 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/std_abs.h", directory: "")
!417 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !418, file: !420, line: 131)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !415, line: 62, baseType: !419)
!419 = !DICompositeType(tag: DW_TAG_structure_type, file: !415, line: 58, size: 64, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!420 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cstdlib", directory: "")
!421 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !422, file: !420, line: 132)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !415, line: 70, baseType: !423)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !415, line: 66, size: 128, flags: DIFlagTypePassByValue, elements: !424, identifier: "_ZTS6ldiv_t")
!424 = !{!425, !426}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !423, file: !415, line: 68, baseType: !278, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !423, file: !415, line: 69, baseType: !278, size: 64, offset: 64)
!427 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !428, file: !420, line: 134)
!428 = !DISubprogram(name: "abort", scope: !415, file: !415, line: 591, type: !429, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!429 = !DISubroutineType(types: !430)
!430 = !{null}
!431 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !432, file: !420, line: 136)
!432 = !DISubprogram(name: "aligned_alloc", scope: !415, file: !415, line: 586, type: !433, flags: DIFlagPrototyped, spFlags: 0)
!433 = !DISubroutineType(types: !434)
!434 = !{!188, !137, !137}
!435 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !436, file: !420, line: 138)
!436 = !DISubprogram(name: "atexit", scope: !415, file: !415, line: 595, type: !437, flags: DIFlagPrototyped, spFlags: 0)
!437 = !DISubroutineType(types: !438)
!438 = !{!14, !439}
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!440 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !441, file: !420, line: 141)
!441 = !DISubprogram(name: "at_quick_exit", scope: !415, file: !415, line: 600, type: !437, flags: DIFlagPrototyped, spFlags: 0)
!442 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !443, file: !420, line: 144)
!443 = !DISubprogram(name: "atof", scope: !415, file: !415, line: 101, type: !444, flags: DIFlagPrototyped, spFlags: 0)
!444 = !DISubroutineType(types: !445)
!445 = !{!262, !140}
!446 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !447, file: !420, line: 145)
!447 = !DISubprogram(name: "atoi", scope: !415, file: !415, line: 104, type: !448, flags: DIFlagPrototyped, spFlags: 0)
!448 = !DISubroutineType(types: !449)
!449 = !{!14, !140}
!450 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !451, file: !420, line: 146)
!451 = !DISubprogram(name: "atol", scope: !415, file: !415, line: 107, type: !452, flags: DIFlagPrototyped, spFlags: 0)
!452 = !DISubroutineType(types: !453)
!453 = !{!278, !140}
!454 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !455, file: !420, line: 147)
!455 = !DISubprogram(name: "bsearch", scope: !415, file: !415, line: 820, type: !456, flags: DIFlagPrototyped, spFlags: 0)
!456 = !DISubroutineType(types: !457)
!457 = !{!188, !458, !458, !137, !137, !460}
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !415, line: 808, baseType: !461)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DISubroutineType(types: !463)
!463 = !{!14, !458, !458}
!464 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !465, file: !420, line: 148)
!465 = !DISubprogram(name: "calloc", scope: !415, file: !415, line: 542, type: !433, flags: DIFlagPrototyped, spFlags: 0)
!466 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !467, file: !420, line: 149)
!467 = !DISubprogram(name: "div", scope: !415, file: !415, line: 852, type: !468, flags: DIFlagPrototyped, spFlags: 0)
!468 = !DISubroutineType(types: !469)
!469 = !{!418, !14, !14}
!470 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !471, file: !420, line: 150)
!471 = !DISubprogram(name: "exit", scope: !415, file: !415, line: 617, type: !472, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!472 = !DISubroutineType(types: !473)
!473 = !{null, !14}
!474 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !475, file: !420, line: 151)
!475 = !DISubprogram(name: "free", scope: !415, file: !415, line: 565, type: !476, flags: DIFlagPrototyped, spFlags: 0)
!476 = !DISubroutineType(types: !477)
!477 = !{null, !188}
!478 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !479, file: !420, line: 152)
!479 = !DISubprogram(name: "getenv", scope: !415, file: !415, line: 634, type: !480, flags: DIFlagPrototyped, spFlags: 0)
!480 = !DISubroutineType(types: !481)
!481 = !{!211, !140}
!482 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !483, file: !420, line: 153)
!483 = !DISubprogram(name: "labs", scope: !415, file: !415, line: 841, type: !484, flags: DIFlagPrototyped, spFlags: 0)
!484 = !DISubroutineType(types: !485)
!485 = !{!278, !278}
!486 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !487, file: !420, line: 154)
!487 = !DISubprogram(name: "ldiv", scope: !415, file: !415, line: 854, type: !488, flags: DIFlagPrototyped, spFlags: 0)
!488 = !DISubroutineType(types: !489)
!489 = !{!422, !278, !278}
!490 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !491, file: !420, line: 155)
!491 = !DISubprogram(name: "malloc", scope: !415, file: !415, line: 539, type: !492, flags: DIFlagPrototyped, spFlags: 0)
!492 = !DISubroutineType(types: !493)
!493 = !{!188, !137}
!494 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !495, file: !420, line: 157)
!495 = !DISubprogram(name: "mblen", scope: !415, file: !415, line: 922, type: !496, flags: DIFlagPrototyped, spFlags: 0)
!496 = !DISubroutineType(types: !497)
!497 = !{!14, !140, !137}
!498 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !499, file: !420, line: 158)
!499 = !DISubprogram(name: "mbstowcs", scope: !415, file: !415, line: 933, type: !500, flags: DIFlagPrototyped, spFlags: 0)
!500 = !DISubroutineType(types: !501)
!501 = !{!137, !104, !139, !137}
!502 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !503, file: !420, line: 159)
!503 = !DISubprogram(name: "mbtowc", scope: !415, file: !415, line: 925, type: !504, flags: DIFlagPrototyped, spFlags: 0)
!504 = !DISubroutineType(types: !505)
!505 = !{!14, !104, !139, !137}
!506 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !507, file: !420, line: 161)
!507 = !DISubprogram(name: "qsort", scope: !415, file: !415, line: 830, type: !508, flags: DIFlagPrototyped, spFlags: 0)
!508 = !DISubroutineType(types: !509)
!509 = !{null, !188, !137, !137, !460}
!510 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !511, file: !420, line: 164)
!511 = !DISubprogram(name: "quick_exit", scope: !415, file: !415, line: 623, type: !472, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!512 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !513, file: !420, line: 167)
!513 = !DISubprogram(name: "rand", scope: !415, file: !415, line: 453, type: !12, flags: DIFlagPrototyped, spFlags: 0)
!514 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !515, file: !420, line: 168)
!515 = !DISubprogram(name: "realloc", scope: !415, file: !415, line: 550, type: !516, flags: DIFlagPrototyped, spFlags: 0)
!516 = !DISubroutineType(types: !517)
!517 = !{!188, !188, !137}
!518 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !519, file: !420, line: 169)
!519 = !DISubprogram(name: "srand", scope: !415, file: !415, line: 455, type: !520, flags: DIFlagPrototyped, spFlags: 0)
!520 = !DISubroutineType(types: !521)
!521 = !{null, !76}
!522 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !523, file: !420, line: 170)
!523 = !DISubprogram(name: "strtod", scope: !415, file: !415, line: 117, type: !524, flags: DIFlagPrototyped, spFlags: 0)
!524 = !DISubroutineType(types: !525)
!525 = !{!262, !139, !526}
!526 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !527)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!528 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !529, file: !420, line: 171)
!529 = !DISubprogram(name: "strtol", scope: !415, file: !415, line: 176, type: !530, flags: DIFlagPrototyped, spFlags: 0)
!530 = !DISubroutineType(types: !531)
!531 = !{!278, !139, !526, !14}
!532 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !533, file: !420, line: 172)
!533 = !DISubprogram(name: "strtoul", scope: !415, file: !415, line: 180, type: !534, flags: DIFlagPrototyped, spFlags: 0)
!534 = !DISubroutineType(types: !535)
!535 = !{!43, !139, !526, !14}
!536 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !537, file: !420, line: 173)
!537 = !DISubprogram(name: "system", scope: !415, file: !415, line: 784, type: !448, flags: DIFlagPrototyped, spFlags: 0)
!538 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !539, file: !420, line: 175)
!539 = !DISubprogram(name: "wcstombs", scope: !415, file: !415, line: 936, type: !540, flags: DIFlagPrototyped, spFlags: 0)
!540 = !DISubroutineType(types: !541)
!541 = !{!137, !210, !114, !137}
!542 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !543, file: !420, line: 176)
!543 = !DISubprogram(name: "wctomb", scope: !415, file: !415, line: 929, type: !544, flags: DIFlagPrototyped, spFlags: 0)
!544 = !DISubroutineType(types: !545)
!545 = !{!14, !211, !103}
!546 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !326, entity: !547, file: !420, line: 204)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !415, line: 80, baseType: !548)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !415, line: 76, size: 128, flags: DIFlagTypePassByValue, elements: !549, identifier: "_ZTS7lldiv_t")
!549 = !{!550, !551}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !548, file: !415, line: 78, baseType: !335, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !548, file: !415, line: 79, baseType: !335, size: 64, offset: 64)
!552 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !326, entity: !553, file: !420, line: 210)
!553 = !DISubprogram(name: "_Exit", scope: !415, file: !415, line: 629, type: !472, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!554 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !326, entity: !555, file: !420, line: 214)
!555 = !DISubprogram(name: "llabs", scope: !415, file: !415, line: 844, type: !556, flags: DIFlagPrototyped, spFlags: 0)
!556 = !DISubroutineType(types: !557)
!557 = !{!335, !335}
!558 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !326, entity: !559, file: !420, line: 220)
!559 = !DISubprogram(name: "lldiv", scope: !415, file: !415, line: 858, type: !560, flags: DIFlagPrototyped, spFlags: 0)
!560 = !DISubroutineType(types: !561)
!561 = !{!547, !335, !335}
!562 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !326, entity: !563, file: !420, line: 231)
!563 = !DISubprogram(name: "atoll", scope: !415, file: !415, line: 112, type: !564, flags: DIFlagPrototyped, spFlags: 0)
!564 = !DISubroutineType(types: !565)
!565 = !{!335, !140}
!566 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !326, entity: !567, file: !420, line: 232)
!567 = !DISubprogram(name: "strtoll", scope: !415, file: !415, line: 200, type: !568, flags: DIFlagPrototyped, spFlags: 0)
!568 = !DISubroutineType(types: !569)
!569 = !{!335, !139, !526, !14}
!570 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !326, entity: !571, file: !420, line: 233)
!571 = !DISubprogram(name: "strtoull", scope: !415, file: !415, line: 205, type: !572, flags: DIFlagPrototyped, spFlags: 0)
!572 = !DISubroutineType(types: !573)
!573 = !{!340, !139, !526, !14}
!574 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !326, entity: !575, file: !420, line: 235)
!575 = !DISubprogram(name: "strtof", scope: !415, file: !415, line: 123, type: !576, flags: DIFlagPrototyped, spFlags: 0)
!576 = !DISubroutineType(types: !577)
!577 = !{!269, !139, !526}
!578 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !326, entity: !579, file: !420, line: 236)
!579 = !DISubprogram(name: "strtold", scope: !415, file: !415, line: 126, type: !580, flags: DIFlagPrototyped, spFlags: 0)
!580 = !DISubroutineType(types: !581)
!581 = !{!330, !139, !526}
!582 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !547, file: !420, line: 244)
!583 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !553, file: !420, line: 246)
!584 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !555, file: !420, line: 248)
!585 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !586, file: !420, line: 249)
!586 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !326, file: !420, line: 217, type: !560, flags: DIFlagPrototyped, spFlags: 0)
!587 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !559, file: !420, line: 250)
!588 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !563, file: !420, line: 252)
!589 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !575, file: !420, line: 253)
!590 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !567, file: !420, line: 254)
!591 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !571, file: !420, line: 255)
!592 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !579, file: !420, line: 256)
!593 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !594, file: !596, line: 98)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !595, line: 7, baseType: !97)
!595 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!596 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cstdio", directory: "")
!597 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !598, file: !596, line: 99)
!598 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !599, line: 84, baseType: !600)
!599 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fpos_t", file: !601, line: 14, baseType: !602)
!601 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h", directory: "", checksumkind: CSK_MD5, checksum: "32de8bdaf3551a6c0a9394f9af4389ce")
!602 = !DICompositeType(tag: DW_TAG_structure_type, name: "_G_fpos_t", file: !601, line: 10, size: 128, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
!603 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !604, file: !596, line: 101)
!604 = !DISubprogram(name: "clearerr", scope: !599, file: !599, line: 757, type: !605, flags: DIFlagPrototyped, spFlags: 0)
!605 = !DISubroutineType(types: !606)
!606 = !{null, !607}
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!608 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !609, file: !596, line: 102)
!609 = !DISubprogram(name: "fclose", scope: !599, file: !599, line: 213, type: !610, flags: DIFlagPrototyped, spFlags: 0)
!610 = !DISubroutineType(types: !611)
!611 = !{!14, !607}
!612 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !613, file: !596, line: 103)
!613 = !DISubprogram(name: "feof", scope: !599, file: !599, line: 759, type: !610, flags: DIFlagPrototyped, spFlags: 0)
!614 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !615, file: !596, line: 104)
!615 = !DISubprogram(name: "ferror", scope: !599, file: !599, line: 761, type: !610, flags: DIFlagPrototyped, spFlags: 0)
!616 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !617, file: !596, line: 105)
!617 = !DISubprogram(name: "fflush", scope: !599, file: !599, line: 218, type: !610, flags: DIFlagPrototyped, spFlags: 0)
!618 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !619, file: !596, line: 106)
!619 = !DISubprogram(name: "fgetc", scope: !599, file: !599, line: 485, type: !610, flags: DIFlagPrototyped, spFlags: 0)
!620 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !621, file: !596, line: 107)
!621 = !DISubprogram(name: "fgetpos", scope: !599, file: !599, line: 731, type: !622, flags: DIFlagPrototyped, spFlags: 0)
!622 = !DISubroutineType(types: !623)
!623 = !{!14, !624, !625}
!624 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !607)
!625 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !626)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!627 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !628, file: !596, line: 108)
!628 = !DISubprogram(name: "fgets", scope: !599, file: !599, line: 564, type: !629, flags: DIFlagPrototyped, spFlags: 0)
!629 = !DISubroutineType(types: !630)
!630 = !{!211, !210, !14, !624}
!631 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !632, file: !596, line: 109)
!632 = !DISubprogram(name: "fopen", scope: !599, file: !599, line: 246, type: !633, flags: DIFlagPrototyped, spFlags: 0)
!633 = !DISubroutineType(types: !634)
!634 = !{!607, !139, !139}
!635 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !636, file: !596, line: 110)
!636 = !DISubprogram(name: "fprintf", scope: !599, file: !599, line: 326, type: !637, flags: DIFlagPrototyped, spFlags: 0)
!637 = !DISubroutineType(types: !638)
!638 = !{!14, !624, !139, null}
!639 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !640, file: !596, line: 111)
!640 = !DISubprogram(name: "fputc", scope: !599, file: !599, line: 521, type: !641, flags: DIFlagPrototyped, spFlags: 0)
!641 = !DISubroutineType(types: !642)
!642 = !{!14, !14, !607}
!643 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !644, file: !596, line: 112)
!644 = !DISubprogram(name: "fputs", scope: !599, file: !599, line: 626, type: !645, flags: DIFlagPrototyped, spFlags: 0)
!645 = !DISubroutineType(types: !646)
!646 = !{!14, !139, !624}
!647 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !648, file: !596, line: 113)
!648 = !DISubprogram(name: "fread", scope: !599, file: !599, line: 646, type: !649, flags: DIFlagPrototyped, spFlags: 0)
!649 = !DISubroutineType(types: !650)
!650 = !{!137, !651, !137, !137, !624}
!651 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !188)
!652 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !653, file: !596, line: 114)
!653 = !DISubprogram(name: "freopen", scope: !599, file: !599, line: 252, type: !654, flags: DIFlagPrototyped, spFlags: 0)
!654 = !DISubroutineType(types: !655)
!655 = !{!607, !139, !139, !624}
!656 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !657, file: !596, line: 115)
!657 = !DISubprogram(name: "fscanf", linkageName: "__isoc99_fscanf", scope: !599, file: !599, line: 407, type: !637, flags: DIFlagPrototyped, spFlags: 0)
!658 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !659, file: !596, line: 116)
!659 = !DISubprogram(name: "fseek", scope: !599, file: !599, line: 684, type: !660, flags: DIFlagPrototyped, spFlags: 0)
!660 = !DISubroutineType(types: !661)
!661 = !{!14, !607, !278, !14}
!662 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !663, file: !596, line: 117)
!663 = !DISubprogram(name: "fsetpos", scope: !599, file: !599, line: 736, type: !664, flags: DIFlagPrototyped, spFlags: 0)
!664 = !DISubroutineType(types: !665)
!665 = !{!14, !607, !666}
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !598)
!668 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !669, file: !596, line: 118)
!669 = !DISubprogram(name: "ftell", scope: !599, file: !599, line: 689, type: !670, flags: DIFlagPrototyped, spFlags: 0)
!670 = !DISubroutineType(types: !671)
!671 = !{!278, !607}
!672 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !673, file: !596, line: 119)
!673 = !DISubprogram(name: "fwrite", scope: !599, file: !599, line: 652, type: !674, flags: DIFlagPrototyped, spFlags: 0)
!674 = !DISubroutineType(types: !675)
!675 = !{!137, !676, !137, !137, !624}
!676 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !458)
!677 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !678, file: !596, line: 120)
!678 = !DISubprogram(name: "getc", scope: !599, file: !599, line: 486, type: !610, flags: DIFlagPrototyped, spFlags: 0)
!679 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !680, file: !596, line: 121)
!680 = !DISubprogram(name: "getchar", scope: !599, file: !599, line: 492, type: !12, flags: DIFlagPrototyped, spFlags: 0)
!681 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !682, file: !596, line: 126)
!682 = !DISubprogram(name: "perror", scope: !599, file: !599, line: 775, type: !683, flags: DIFlagPrototyped, spFlags: 0)
!683 = !DISubroutineType(types: !684)
!684 = !{null, !140}
!685 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !686, file: !596, line: 127)
!686 = !DISubprogram(name: "printf", scope: !599, file: !599, line: 332, type: !687, flags: DIFlagPrototyped, spFlags: 0)
!687 = !DISubroutineType(types: !688)
!688 = !{!14, !139, null}
!689 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !690, file: !596, line: 128)
!690 = !DISubprogram(name: "putc", scope: !599, file: !599, line: 522, type: !641, flags: DIFlagPrototyped, spFlags: 0)
!691 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !692, file: !596, line: 129)
!692 = !DISubprogram(name: "putchar", scope: !599, file: !599, line: 528, type: !380, flags: DIFlagPrototyped, spFlags: 0)
!693 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !694, file: !596, line: 130)
!694 = !DISubprogram(name: "puts", scope: !599, file: !599, line: 632, type: !448, flags: DIFlagPrototyped, spFlags: 0)
!695 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !696, file: !596, line: 131)
!696 = !DISubprogram(name: "remove", scope: !599, file: !599, line: 146, type: !448, flags: DIFlagPrototyped, spFlags: 0)
!697 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !698, file: !596, line: 132)
!698 = !DISubprogram(name: "rename", scope: !599, file: !599, line: 148, type: !699, flags: DIFlagPrototyped, spFlags: 0)
!699 = !DISubroutineType(types: !700)
!700 = !{!14, !140, !140}
!701 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !702, file: !596, line: 133)
!702 = !DISubprogram(name: "rewind", scope: !599, file: !599, line: 694, type: !605, flags: DIFlagPrototyped, spFlags: 0)
!703 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !704, file: !596, line: 134)
!704 = !DISubprogram(name: "scanf", linkageName: "__isoc99_scanf", scope: !599, file: !599, line: 410, type: !687, flags: DIFlagPrototyped, spFlags: 0)
!705 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !706, file: !596, line: 135)
!706 = !DISubprogram(name: "setbuf", scope: !599, file: !599, line: 304, type: !707, flags: DIFlagPrototyped, spFlags: 0)
!707 = !DISubroutineType(types: !708)
!708 = !{null, !624, !210}
!709 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !710, file: !596, line: 136)
!710 = !DISubprogram(name: "setvbuf", scope: !599, file: !599, line: 308, type: !711, flags: DIFlagPrototyped, spFlags: 0)
!711 = !DISubroutineType(types: !712)
!712 = !{!14, !624, !210, !14, !137}
!713 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !714, file: !596, line: 137)
!714 = !DISubprogram(name: "sprintf", scope: !599, file: !599, line: 334, type: !715, flags: DIFlagPrototyped, spFlags: 0)
!715 = !DISubroutineType(types: !716)
!716 = !{!14, !210, !139, null}
!717 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !718, file: !596, line: 138)
!718 = !DISubprogram(name: "sscanf", linkageName: "__isoc99_sscanf", scope: !599, file: !599, line: 412, type: !719, flags: DIFlagPrototyped, spFlags: 0)
!719 = !DISubroutineType(types: !720)
!720 = !{!14, !139, !139, null}
!721 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !722, file: !596, line: 139)
!722 = !DISubprogram(name: "tmpfile", scope: !599, file: !599, line: 173, type: !723, flags: DIFlagPrototyped, spFlags: 0)
!723 = !DISubroutineType(types: !724)
!724 = !{!607}
!725 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !726, file: !596, line: 141)
!726 = !DISubprogram(name: "tmpnam", scope: !599, file: !599, line: 187, type: !727, flags: DIFlagPrototyped, spFlags: 0)
!727 = !DISubroutineType(types: !728)
!728 = !{!211, !211}
!729 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !730, file: !596, line: 143)
!730 = !DISubprogram(name: "ungetc", scope: !599, file: !599, line: 639, type: !641, flags: DIFlagPrototyped, spFlags: 0)
!731 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !732, file: !596, line: 144)
!732 = !DISubprogram(name: "vfprintf", scope: !599, file: !599, line: 341, type: !733, flags: DIFlagPrototyped, spFlags: 0)
!733 = !DISubroutineType(types: !734)
!734 = !{!14, !624, !139, !181}
!735 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !736, file: !596, line: 145)
!736 = !DISubprogram(name: "vprintf", scope: !599, file: !599, line: 347, type: !737, flags: DIFlagPrototyped, spFlags: 0)
!737 = !DISubroutineType(types: !738)
!738 = !{!14, !139, !181}
!739 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !740, file: !596, line: 146)
!740 = !DISubprogram(name: "vsprintf", scope: !599, file: !599, line: 349, type: !741, flags: DIFlagPrototyped, spFlags: 0)
!741 = !DISubroutineType(types: !742)
!742 = !{!14, !210, !139, !181}
!743 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !326, entity: !744, file: !596, line: 175)
!744 = !DISubprogram(name: "snprintf", scope: !599, file: !599, line: 354, type: !745, flags: DIFlagPrototyped, spFlags: 0)
!745 = !DISubroutineType(types: !746)
!746 = !{!14, !210, !137, !139, null}
!747 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !326, entity: !748, file: !596, line: 176)
!748 = !DISubprogram(name: "vfscanf", linkageName: "__isoc99_vfscanf", scope: !599, file: !599, line: 451, type: !733, flags: DIFlagPrototyped, spFlags: 0)
!749 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !326, entity: !750, file: !596, line: 177)
!750 = !DISubprogram(name: "vscanf", linkageName: "__isoc99_vscanf", scope: !599, file: !599, line: 456, type: !737, flags: DIFlagPrototyped, spFlags: 0)
!751 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !326, entity: !752, file: !596, line: 178)
!752 = !DISubprogram(name: "vsnprintf", scope: !599, file: !599, line: 358, type: !753, flags: DIFlagPrototyped, spFlags: 0)
!753 = !DISubroutineType(types: !754)
!754 = !{!14, !210, !137, !139, !181}
!755 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !326, entity: !756, file: !596, line: 179)
!756 = !DISubprogram(name: "vsscanf", linkageName: "__isoc99_vsscanf", scope: !599, file: !599, line: 459, type: !757, flags: DIFlagPrototyped, spFlags: 0)
!757 = !DISubroutineType(types: !758)
!758 = !{!14, !139, !139, !181}
!759 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !744, file: !596, line: 185)
!760 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !748, file: !596, line: 186)
!761 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !750, file: !596, line: 187)
!762 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !752, file: !596, line: 188)
!763 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !756, file: !596, line: 189)
!764 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !765, file: !771, line: 58)
!765 = !DIDerivedType(tag: DW_TAG_typedef, name: "max_align_t", file: !766, line: 24, baseType: !767)
!766 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/__stddef_max_align_t.h", directory: "/home/cs22mtech12008", checksumkind: CSK_MD5, checksum: "48e8e2456f77e6cda35d245130fa7259")
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !766, line: 19, size: 256, flags: DIFlagTypePassByValue, elements: !768, identifier: "_ZTS11max_align_t")
!768 = !{!769, !770}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "__clang_max_align_nonce1", scope: !767, file: !766, line: 20, baseType: !335, size: 64, align: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "__clang_max_align_nonce2", scope: !767, file: !766, line: 22, baseType: !330, size: 128, align: 128, offset: 128)
!771 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cstddef", directory: "")
!772 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !773, file: !779, line: 82)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctrans_t", file: !774, line: 48, baseType: !775)
!774 = !DIFile(filename: "/usr/include/wctype.h", directory: "", checksumkind: CSK_MD5, checksum: "e83097fbf57cc71ea472db59df3ba75d")
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !777)
!777 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !778, line: 41, baseType: !14)
!778 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!779 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cwctype", directory: "")
!780 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !781, file: !779, line: 83)
!781 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctype_t", file: !782, line: 38, baseType: !43)
!782 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "3598b9d23ef5d76319026b46e316b55f")
!783 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !83, file: !779, line: 84)
!784 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !785, file: !779, line: 86)
!785 = !DISubprogram(name: "iswalnum", scope: !782, file: !782, line: 95, type: !289, flags: DIFlagPrototyped, spFlags: 0)
!786 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !787, file: !779, line: 87)
!787 = !DISubprogram(name: "iswalpha", scope: !782, file: !782, line: 101, type: !289, flags: DIFlagPrototyped, spFlags: 0)
!788 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !789, file: !779, line: 89)
!789 = !DISubprogram(name: "iswblank", scope: !782, file: !782, line: 146, type: !289, flags: DIFlagPrototyped, spFlags: 0)
!790 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !791, file: !779, line: 91)
!791 = !DISubprogram(name: "iswcntrl", scope: !782, file: !782, line: 104, type: !289, flags: DIFlagPrototyped, spFlags: 0)
!792 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !793, file: !779, line: 92)
!793 = !DISubprogram(name: "iswctype", scope: !782, file: !782, line: 159, type: !794, flags: DIFlagPrototyped, spFlags: 0)
!794 = !DISubroutineType(types: !795)
!795 = !{!14, !83, !781}
!796 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !797, file: !779, line: 93)
!797 = !DISubprogram(name: "iswdigit", scope: !782, file: !782, line: 108, type: !289, flags: DIFlagPrototyped, spFlags: 0)
!798 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !799, file: !779, line: 94)
!799 = !DISubprogram(name: "iswgraph", scope: !782, file: !782, line: 112, type: !289, flags: DIFlagPrototyped, spFlags: 0)
!800 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !801, file: !779, line: 95)
!801 = !DISubprogram(name: "iswlower", scope: !782, file: !782, line: 117, type: !289, flags: DIFlagPrototyped, spFlags: 0)
!802 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !803, file: !779, line: 96)
!803 = !DISubprogram(name: "iswprint", scope: !782, file: !782, line: 120, type: !289, flags: DIFlagPrototyped, spFlags: 0)
!804 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !805, file: !779, line: 97)
!805 = !DISubprogram(name: "iswpunct", scope: !782, file: !782, line: 125, type: !289, flags: DIFlagPrototyped, spFlags: 0)
!806 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !807, file: !779, line: 98)
!807 = !DISubprogram(name: "iswspace", scope: !782, file: !782, line: 130, type: !289, flags: DIFlagPrototyped, spFlags: 0)
!808 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !809, file: !779, line: 99)
!809 = !DISubprogram(name: "iswupper", scope: !782, file: !782, line: 135, type: !289, flags: DIFlagPrototyped, spFlags: 0)
!810 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !811, file: !779, line: 100)
!811 = !DISubprogram(name: "iswxdigit", scope: !782, file: !782, line: 140, type: !289, flags: DIFlagPrototyped, spFlags: 0)
!812 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !813, file: !779, line: 101)
!813 = !DISubprogram(name: "towctrans", scope: !774, file: !774, line: 55, type: !814, flags: DIFlagPrototyped, spFlags: 0)
!814 = !DISubroutineType(types: !815)
!815 = !{!83, !83, !773}
!816 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !817, file: !779, line: 102)
!817 = !DISubprogram(name: "towlower", scope: !782, file: !782, line: 166, type: !818, flags: DIFlagPrototyped, spFlags: 0)
!818 = !DISubroutineType(types: !819)
!819 = !{!83, !83}
!820 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !821, file: !779, line: 103)
!821 = !DISubprogram(name: "towupper", scope: !782, file: !782, line: 169, type: !818, flags: DIFlagPrototyped, spFlags: 0)
!822 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !823, file: !779, line: 104)
!823 = !DISubprogram(name: "wctrans", scope: !774, file: !774, line: 52, type: !824, flags: DIFlagPrototyped, spFlags: 0)
!824 = !DISubroutineType(types: !825)
!825 = !{!773, !140}
!826 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !64, entity: !827, file: !779, line: 105)
!827 = !DISubprogram(name: "wctype", scope: !782, file: !782, line: 155, type: !828, flags: DIFlagPrototyped, spFlags: 0)
!828 = !DISubroutineType(types: !829)
!829 = !{!781, !140}
!830 = !{i32 7, !"Dwarf Version", i32 5}
!831 = !{i32 2, !"Debug Info Version", i32 3}
!832 = !{i32 1, !"wchar_size", i32 4}
!833 = !{i32 8, !"PIC Level", i32 2}
!834 = !{i32 7, !"PIE Level", i32 2}
!835 = !{i32 7, !"uwtable", i32 2}
!836 = !{i32 7, !"frame-pointer", i32 2}
!837 = !{!"clang version 16.0.0"}
!838 = distinct !DISubprogram(name: "runThread1", linkageName: "_Z10runThread1Pv", scope: !7, file: !7, line: 35, type: !839, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !841)
!839 = !DISubroutineType(types: !840)
!840 = !{!188, !188}
!841 = !{}
!842 = !DILocalVariable(name: "arg", arg: 1, scope: !838, file: !7, line: 35, type: !188)
!843 = !DILocation(line: 35, column: 24, scope: !838)
!844 = !DILocalVariable(name: "basePtr", scope: !838, file: !7, line: 36, type: !5)
!845 = !DILocation(line: 36, column: 8, scope: !838)
!846 = !DILocation(line: 36, column: 34, scope: !838)
!847 = !DILocation(line: 37, column: 5, scope: !838)
!848 = !DILocation(line: 37, column: 14, scope: !838)
!849 = !DILocalVariable(name: "a1Ptr", scope: !838, file: !7, line: 38, type: !20)
!850 = !DILocation(line: 38, column: 9, scope: !838)
!851 = !DILocation(line: 38, column: 35, scope: !838)
!852 = !DILocation(line: 38, column: 17, scope: !838)
!853 = !DILocation(line: 39, column: 9, scope: !854)
!854 = distinct !DILexicalBlock(scope: !838, file: !7, line: 39, column: 9)
!855 = !DILocation(line: 39, column: 9, scope: !838)
!856 = !DILocation(line: 40, column: 9, scope: !857)
!857 = distinct !DILexicalBlock(scope: !854, file: !7, line: 39, column: 16)
!858 = !DILocation(line: 40, column: 16, scope: !857)
!859 = !DILocation(line: 41, column: 5, scope: !857)
!860 = !DILocation(line: 42, column: 5, scope: !838)
!861 = distinct !DISubprogram(name: "runThread2", linkageName: "_Z10runThread2Pv", scope: !7, file: !7, line: 45, type: !839, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !841)
!862 = !DILocalVariable(name: "arg", arg: 1, scope: !861, file: !7, line: 45, type: !188)
!863 = !DILocation(line: 45, column: 24, scope: !861)
!864 = !DILocation(line: 46, column: 5, scope: !861)
!865 = !DILocalVariable(name: "basePtr", scope: !861, file: !7, line: 47, type: !5)
!866 = !DILocation(line: 47, column: 8, scope: !861)
!867 = !DILocation(line: 47, column: 34, scope: !861)
!868 = !DILocation(line: 48, column: 5, scope: !861)
!869 = !DILocation(line: 48, column: 14, scope: !861)
!870 = !DILocalVariable(name: "a2Ptr", scope: !861, file: !7, line: 49, type: !28)
!871 = !DILocation(line: 49, column: 9, scope: !861)
!872 = !DILocation(line: 49, column: 35, scope: !861)
!873 = !DILocation(line: 49, column: 17, scope: !861)
!874 = !DILocation(line: 50, column: 9, scope: !875)
!875 = distinct !DILexicalBlock(scope: !861, file: !7, line: 50, column: 9)
!876 = !DILocation(line: 50, column: 9, scope: !861)
!877 = !DILocation(line: 51, column: 9, scope: !878)
!878 = distinct !DILexicalBlock(scope: !875, file: !7, line: 50, column: 16)
!879 = !DILocation(line: 51, column: 16, scope: !878)
!880 = !DILocation(line: 52, column: 5, scope: !878)
!881 = !DILocation(line: 53, column: 5, scope: !861)
!882 = distinct !DISubprogram(name: "m2", linkageName: "_ZN1A2m2Ev", scope: !6, file: !7, line: 11, type: !16, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !19, retainedNodes: !841)
!883 = !DILocalVariable(name: "this", arg: 1, scope: !882, type: !5, flags: DIFlagArtificial | DIFlagObjectPointer)
!884 = !DILocation(line: 0, scope: !882)
!885 = !DILocation(line: 12, column: 19, scope: !882)
!886 = !DILocation(line: 13, column: 5, scope: !882)
!887 = distinct !DISubprogram(name: "m2", linkageName: "_ZN2A22m2Ev", scope: !29, file: !7, line: 28, type: !33, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !32, retainedNodes: !841)
!888 = !DILocalVariable(name: "this", arg: 1, scope: !887, type: !28, flags: DIFlagArtificial | DIFlagObjectPointer)
!889 = !DILocation(line: 0, scope: !887)
!890 = !DILocation(line: 29, column: 19, scope: !887)
!891 = !DILocation(line: 30, column: 5, scope: !887)
!892 = distinct !DISubprogram(name: "createThread", linkageName: "_Z12createThreadv", scope: !7, file: !7, line: 56, type: !429, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !841)
!893 = !DILocalVariable(name: "a1Obj", scope: !892, file: !7, line: 57, type: !21)
!894 = !DILocation(line: 57, column: 8, scope: !892)
!895 = !DILocalVariable(name: "a2Obj", scope: !892, file: !7, line: 58, type: !29)
!896 = !DILocation(line: 58, column: 8, scope: !892)
!897 = !DILocation(line: 60, column: 15, scope: !892)
!898 = !DILocation(line: 61, column: 15, scope: !892)
!899 = !DILocation(line: 63, column: 46, scope: !892)
!900 = !DILocation(line: 63, column: 5, scope: !892)
!901 = !DILocation(line: 64, column: 18, scope: !892)
!902 = !DILocation(line: 64, column: 5, scope: !892)
!903 = !DILocation(line: 66, column: 46, scope: !892)
!904 = !DILocation(line: 66, column: 5, scope: !892)
!905 = !DILocation(line: 67, column: 1, scope: !892)
!906 = distinct !DISubprogram(name: "A1", linkageName: "_ZN2A1C2Ev", scope: !21, file: !7, line: 19, type: !25, scopeLine: 19, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !907, retainedNodes: !841)
!907 = !DISubprogram(name: "A1", scope: !21, type: !25, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!908 = !DILocalVariable(name: "this", arg: 1, scope: !906, type: !20, flags: DIFlagArtificial | DIFlagObjectPointer)
!909 = !DILocation(line: 0, scope: !906)
!910 = !DILocation(line: 19, column: 7, scope: !906)
!911 = distinct !DISubprogram(name: "A2", linkageName: "_ZN2A2C2Ev", scope: !29, file: !7, line: 26, type: !33, scopeLine: 26, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !912, retainedNodes: !841)
!912 = !DISubprogram(name: "A2", scope: !29, type: !33, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!913 = !DILocalVariable(name: "this", arg: 1, scope: !911, type: !28, flags: DIFlagArtificial | DIFlagObjectPointer)
!914 = !DILocation(line: 0, scope: !911)
!915 = !DILocation(line: 26, column: 7, scope: !911)
!916 = distinct !DISubprogram(name: "main", scope: !7, file: !7, line: 69, type: !12, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !841)
!917 = !DILocation(line: 70, column: 5, scope: !916)
!918 = !DILocation(line: 71, column: 18, scope: !916)
!919 = !DILocation(line: 71, column: 5, scope: !916)
!920 = !DILocation(line: 72, column: 5, scope: !916)
!921 = distinct !DISubprogram(name: "A", linkageName: "_ZN1AC2Ev", scope: !6, file: !7, line: 5, type: !16, scopeLine: 5, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !922, retainedNodes: !841)
!922 = !DISubprogram(name: "A", scope: !6, type: !16, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!923 = !DILocalVariable(name: "this", arg: 1, scope: !921, type: !5, flags: DIFlagArtificial | DIFlagObjectPointer)
!924 = !DILocation(line: 0, scope: !921)
!925 = !DILocation(line: 5, column: 7, scope: !921)
!926 = distinct !DISubprogram(name: "m1", linkageName: "_ZN2A12m1Ev", scope: !21, file: !7, line: 21, type: !25, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !24, retainedNodes: !841)
!927 = !DILocalVariable(name: "this", arg: 1, scope: !926, type: !20, flags: DIFlagArtificial | DIFlagObjectPointer)
!928 = !DILocation(line: 0, scope: !926)
!929 = !DILocation(line: 22, column: 19, scope: !926)
!930 = !DILocation(line: 23, column: 5, scope: !926)
!931 = distinct !DISubprogram(name: "m1", linkageName: "_ZN1A2m1Ev", scope: !6, file: !7, line: 7, type: !16, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !15, retainedNodes: !841)
!932 = !DILocalVariable(name: "this", arg: 1, scope: !931, type: !5, flags: DIFlagArtificial | DIFlagObjectPointer)
!933 = !DILocation(line: 0, scope: !931)
!934 = !DILocation(line: 8, column: 19, scope: !931)
!935 = !DILocation(line: 9, column: 5, scope: !931)
