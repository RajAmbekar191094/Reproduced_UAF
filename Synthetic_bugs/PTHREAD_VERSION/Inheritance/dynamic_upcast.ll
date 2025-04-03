; ModuleID = '/home/cs22mtech12008/Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Inheritance/dynamic_upcast.cpp'
source_filename = "/home/cs22mtech12008/Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Inheritance/dynamic_upcast.cpp"
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

@t1 = dso_local global i64 0, align 8, !dbg !0
@t2 = dso_local global i64 0, align 8, !dbg !37
@_ZTVN10__cxxabiv117__class_type_infoE = external global ptr
@_ZTS1A = linkonce_odr dso_local constant [3 x i8] c"1A\00", comdat, align 1
@_ZTI1A = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS1A }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global ptr
@_ZTS2A1 = linkonce_odr dso_local constant [4 x i8] c"2A1\00", comdat, align 1
@_ZTI2A1 = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS2A1, ptr @_ZTI1A }, comdat, align 8
@_ZTS2A2 = linkonce_odr dso_local constant [4 x i8] c"2A2\00", comdat, align 1
@_ZTI2A2 = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS2A2, ptr @_ZTI1A }, comdat, align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [15 x i8] c"Base class m2\0A\00", align 1, !dbg !42
@.str.1 = private unnamed_addr constant [13 x i8] c"A2 class m2\0A\00", align 1, !dbg !49
@_ZTV2A1 = linkonce_odr dso_local unnamed_addr constant { [3 x ptr] } { [3 x ptr] [ptr null, ptr @_ZTI2A1, ptr @_ZN2A12m1Ev] }, comdat, align 8
@_ZTV1A = linkonce_odr dso_local unnamed_addr constant { [3 x ptr] } { [3 x ptr] [ptr null, ptr @_ZTI1A, ptr @_ZN1A2m1Ev] }, comdat, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"Base class m1\0A\00", align 1, !dbg !54
@.str.3 = private unnamed_addr constant [13 x i8] c"A1 class m1\0A\00", align 1, !dbg !56
@_ZTV2A2 = linkonce_odr dso_local unnamed_addr constant { [3 x ptr] } { [3 x ptr] [ptr null, ptr @_ZTI2A2, ptr @_ZN1A2m1Ev] }, comdat, align 8

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef ptr @_Z10runThread1Pv(ptr noundef %0) #0 !dbg !982 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !986, metadata !DIExpression()), !dbg !987
  %5 = call i32 @sleep(i32 noundef 5), !dbg !988
  call void @llvm.dbg.declare(metadata ptr %3, metadata !989, metadata !DIExpression()), !dbg !990
  %6 = load ptr, ptr %2, align 8, !dbg !991
  store ptr %6, ptr %3, align 8, !dbg !990
  %7 = load ptr, ptr %3, align 8, !dbg !992
  %8 = load ptr, ptr %7, align 8, !dbg !993
  %9 = getelementptr inbounds ptr, ptr %8, i64 0, !dbg !993
  %10 = load ptr, ptr %9, align 8, !dbg !993
  call void %10(ptr noundef nonnull align 8 dereferenceable(8) %7), !dbg !993
  call void @llvm.dbg.declare(metadata ptr %4, metadata !994, metadata !DIExpression()), !dbg !995
  %11 = load ptr, ptr %3, align 8, !dbg !996
  %12 = icmp eq ptr %11, null, !dbg !997
  br i1 %12, label %15, label %13, !dbg !997

13:                                               ; preds = %1
  %14 = call ptr @__dynamic_cast(ptr %11, ptr @_ZTI1A, ptr @_ZTI2A1, i64 0) #7, !dbg !997
  br label %16, !dbg !997

15:                                               ; preds = %1
  br label %16, !dbg !997

16:                                               ; preds = %15, %13
  %17 = phi ptr [ %14, %13 ], [ null, %15 ], !dbg !997
  store ptr %17, ptr %4, align 8, !dbg !995
  %18 = load ptr, ptr %4, align 8, !dbg !998
  %19 = load ptr, ptr %18, align 8, !dbg !999
  %20 = getelementptr inbounds ptr, ptr %19, i64 0, !dbg !999
  %21 = load ptr, ptr %20, align 8, !dbg !999
  call void %21(ptr noundef nonnull align 8 dereferenceable(8) %18), !dbg !999
  ret ptr null, !dbg !1000
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @sleep(i32 noundef) #2

; Function Attrs: nounwind memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) #3

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef ptr @_Z10runThread2Pv(ptr noundef %0) #0 !dbg !1001 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1002, metadata !DIExpression()), !dbg !1003
  %5 = call i32 @sleep(i32 noundef 5), !dbg !1004
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1005, metadata !DIExpression()), !dbg !1006
  %6 = load ptr, ptr %2, align 8, !dbg !1007
  store ptr %6, ptr %3, align 8, !dbg !1006
  %7 = load ptr, ptr %3, align 8, !dbg !1008
  call void @_ZN1A2m2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7), !dbg !1009
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1010, metadata !DIExpression()), !dbg !1011
  %8 = load ptr, ptr %3, align 8, !dbg !1012
  %9 = icmp eq ptr %8, null, !dbg !1013
  br i1 %9, label %12, label %10, !dbg !1013

10:                                               ; preds = %1
  %11 = call ptr @__dynamic_cast(ptr %8, ptr @_ZTI1A, ptr @_ZTI2A2, i64 0) #7, !dbg !1013
  br label %13, !dbg !1013

12:                                               ; preds = %1
  br label %13, !dbg !1013

13:                                               ; preds = %12, %10
  %14 = phi ptr [ %11, %10 ], [ null, %12 ], !dbg !1013
  store ptr %14, ptr %4, align 8, !dbg !1011
  %15 = load ptr, ptr %4, align 8, !dbg !1014
  call void @_ZN2A22m2Ev(ptr noundef nonnull align 8 dereferenceable(8) %15), !dbg !1015
  ret ptr null, !dbg !1016
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN1A2m2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #0 comdat align 2 !dbg !1017 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1018, metadata !DIExpression()), !dbg !1019
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str), !dbg !1020
  ret void, !dbg !1021
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN2A22m2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #0 comdat align 2 !dbg !1022 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1023, metadata !DIExpression()), !dbg !1024
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.1), !dbg !1025
  ret void, !dbg !1026
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z12createThreadv() #0 !dbg !1027 {
  %1 = alloca %class.A1, align 8
  %2 = alloca %class.A2, align 8
  call void @llvm.dbg.declare(metadata ptr %1, metadata !1028, metadata !DIExpression()), !dbg !1029
  call void @_ZN2A1C2Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #7, !dbg !1029
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1030, metadata !DIExpression()), !dbg !1031
  call void @_ZN2A2C2Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #7, !dbg !1031
  %3 = call i32 @pthread_create(ptr noundef @t1, ptr noundef null, ptr noundef @_Z10runThread1Pv, ptr noundef %1) #7, !dbg !1032
  %4 = load i64, ptr @t1, align 8, !dbg !1033
  %5 = call i32 @pthread_join(i64 noundef %4, ptr noundef null), !dbg !1034
  %6 = call i32 @pthread_create(ptr noundef @t2, ptr noundef null, ptr noundef @_Z10runThread2Pv, ptr noundef %2) #7, !dbg !1035
  %7 = load i64, ptr @t2, align 8, !dbg !1036
  %8 = call i32 @pthread_join(i64 noundef %7, ptr noundef null), !dbg !1037
  ret void, !dbg !1038
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN2A1C2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !dbg !1039 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1041, metadata !DIExpression()), !dbg !1042
  %3 = load ptr, ptr %2, align 8
  call void @_ZN1AC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #7, !dbg !1043
  store ptr getelementptr inbounds ({ [3 x ptr] }, ptr @_ZTV2A1, i32 0, inrange i32 0, i32 2), ptr %3, align 8, !dbg !1043
  ret void, !dbg !1043
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN2A2C2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !dbg !1044 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1046, metadata !DIExpression()), !dbg !1047
  %3 = load ptr, ptr %2, align 8
  call void @_ZN1AC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #7, !dbg !1048
  store ptr getelementptr inbounds ({ [3 x ptr] }, ptr @_ZTV2A2, i32 0, inrange i32 0, i32 2), ptr %3, align 8, !dbg !1048
  ret void, !dbg !1048
}

; Function Attrs: nounwind
declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #5

declare i32 @pthread_join(i64 noundef, ptr noundef) #2

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main() #6 !dbg !1049 {
  %1 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  call void @_Z12createThreadv(), !dbg !1050
  ret i32 0, !dbg !1051
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN1AC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !dbg !1052 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1054, metadata !DIExpression()), !dbg !1055
  %3 = load ptr, ptr %2, align 8
  store ptr getelementptr inbounds ({ [3 x ptr] }, ptr @_ZTV1A, i32 0, inrange i32 0, i32 2), ptr %3, align 8, !dbg !1056
  ret void, !dbg !1056
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN2A12m1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !dbg !1057 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1058, metadata !DIExpression()), !dbg !1059
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.3), !dbg !1060
  ret void, !dbg !1061
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN1A2m1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !dbg !1062 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1063, metadata !DIExpression()), !dbg !1064
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.2), !dbg !1065
  ret void, !dbg !1066
}

attributes #0 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind memory(read) }
attributes #4 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!974, !975, !976, !977, !978, !979, !980}
!llvm.ident = !{!981}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "t1", scope: !2, file: !7, line: 5, type: !39, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !3, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !36, imports: !58, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/cs22mtech12008/Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Inheritance/dynamic_upcast.cpp", directory: "/home/cs22mtech12008", checksumkind: CSK_MD5, checksum: "fa146c9f0c4bde5e11e4d7dfd6f159de")
!4 = !{!5, !20, !28}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "A", file: !7, line: 8, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !8, vtableHolder: !6, identifier: "_ZTS1A")
!7 = !DIFile(filename: "Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Inheritance/dynamic_upcast.cpp", directory: "/home/cs22mtech12008", checksumkind: CSK_MD5, checksum: "fa146c9f0c4bde5e11e4d7dfd6f159de")
!8 = !{!9, !15, !19}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$A", scope: !7, file: !7, baseType: !10, size: 64, flags: DIFlagArtificial)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "__vtbl_ptr_type", baseType: !12, size: 64)
!12 = !DISubroutineType(types: !13)
!13 = !{!14}
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DISubprogram(name: "m1", linkageName: "_ZN1A2m1Ev", scope: !6, file: !7, line: 10, type: !16, scopeLine: 10, containingType: !6, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!16 = !DISubroutineType(types: !17)
!17 = !{null, !18}
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!19 = !DISubprogram(name: "m2", linkageName: "_ZN1A2m2Ev", scope: !6, file: !7, line: 14, type: !16, scopeLine: 14, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "A1", file: !7, line: 22, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !22, vtableHolder: !6, identifier: "_ZTS2A1")
!22 = !{!23, !24}
!23 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !21, baseType: !6, flags: DIFlagPublic, extraData: i32 0)
!24 = !DISubprogram(name: "m1", linkageName: "_ZN2A12m1Ev", scope: !21, file: !7, line: 24, type: !25, scopeLine: 24, containingType: !21, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!25 = !DISubroutineType(types: !26)
!26 = !{null, !27}
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "A2", file: !7, line: 30, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !30, vtableHolder: !6, identifier: "_ZTS2A2")
!30 = !{!31, !32}
!31 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !29, baseType: !6, flags: DIFlagPublic, extraData: i32 0)
!32 = !DISubprogram(name: "m2", linkageName: "_ZN2A22m2Ev", scope: !29, file: !7, line: 32, type: !33, scopeLine: 32, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!33 = !DISubroutineType(types: !34)
!34 = !{null, !35}
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!36 = !{!0, !37, !42, !49, !54, !56}
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(name: "t2", scope: !2, file: !7, line: 5, type: !39, isLocal: false, isDefinition: true)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !40, line: 27, baseType: !41)
!40 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "2d764266ce95ab26d4a4767c2ec78176")
!41 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !7, line: 15, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 120, elements: !47)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!46 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!47 = !{!48}
!48 = !DISubrange(count: 15)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(scope: null, file: !7, line: 33, type: !51, isLocal: true, isDefinition: true)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 104, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 13)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(scope: null, file: !7, line: 11, type: !44, isLocal: true, isDefinition: true)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(scope: null, file: !7, line: 25, type: !51, isLocal: true, isDefinition: true)
!58 = !{!59, !78, !81, !86, !94, !102, !106, !113, !117, !121, !123, !125, !129, !139, !143, !149, !155, !157, !161, !165, !169, !173, !186, !188, !192, !196, !200, !202, !208, !212, !216, !218, !220, !224, !232, !236, !240, !244, !246, !252, !254, !261, !266, !270, !275, !279, !283, !287, !289, !291, !295, !299, !303, !305, !309, !313, !315, !317, !321, !327, !332, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !351, !355, !360, !364, !368, !373, !379, !381, !383, !385, !387, !389, !391, !393, !395, !397, !399, !401, !403, !405, !409, !413, !417, !423, !427, !431, !436, !438, !442, !446, !450, !460, !462, !466, !470, !474, !478, !482, !486, !490, !494, !498, !502, !506, !508, !510, !514, !518, !524, !528, !532, !534, !538, !542, !548, !550, !554, !558, !562, !566, !570, !574, !578, !579, !580, !581, !583, !584, !585, !586, !587, !588, !589, !593, !599, !604, !608, !610, !612, !614, !616, !623, !627, !631, !635, !639, !643, !648, !652, !654, !658, !664, !668, !673, !675, !677, !681, !685, !687, !689, !691, !693, !697, !699, !701, !705, !709, !713, !717, !721, !725, !727, !731, !735, !739, !743, !745, !747, !751, !755, !756, !757, !758, !759, !760, !768, !776, !779, !780, !782, !784, !786, !788, !792, !794, !796, !798, !800, !802, !804, !806, !808, !812, !816, !818, !822, !826, !832, !836, !838, !841, !844, !846, !848, !850, !853, !856, !859, !862, !865, !867, !872, !876, !879, !882, !884, !886, !888, !890, !893, !896, !899, !902, !905, !907, !912, !916, !917, !922, !926, !931, !936, !940, !946, !950, !952, !956, !963, !968, !973}
!59 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !61, file: !77, line: 64)
!60 = !DINamespace(name: "std", scope: null)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !62, line: 6, baseType: !63)
!62 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !64, line: 21, baseType: !65)
!64 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !64, line: 13, size: 64, flags: DIFlagTypePassByValue, elements: !66, identifier: "_ZTS11__mbstate_t")
!66 = !{!67, !68}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !65, file: !64, line: 15, baseType: !14, size: 32)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !65, file: !64, line: 20, baseType: !69, size: 32, offset: 32)
!69 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !65, file: !64, line: 16, size: 32, flags: DIFlagTypePassByValue, elements: !70, identifier: "_ZTSN11__mbstate_tUt_E")
!70 = !{!71, !73}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !69, file: !64, line: 18, baseType: !72, size: 32)
!72 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !69, file: !64, line: 19, baseType: !74, size: 32)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 32, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 4)
!77 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cwchar", directory: "")
!78 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !79, file: !77, line: 141)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !80, line: 20, baseType: !72)
!80 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!81 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !82, file: !77, line: 143)
!82 = !DISubprogram(name: "btowc", scope: !83, file: !83, line: 284, type: !84, flags: DIFlagPrototyped, spFlags: 0)
!83 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "8900d9ecbbe40d052c41becfbc5b5531")
!84 = !DISubroutineType(types: !85)
!85 = !{!79, !14}
!86 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !87, file: !77, line: 144)
!87 = !DISubprogram(name: "fgetwc", scope: !83, file: !83, line: 726, type: !88, flags: DIFlagPrototyped, spFlags: 0)
!88 = !DISubroutineType(types: !89)
!89 = !{!79, !90}
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !92, line: 5, baseType: !93)
!92 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "72a8fe90981f484acae7c6f3dfc5c2b7")
!93 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !92, line: 4, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS8_IO_FILE")
!94 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !95, file: !77, line: 145)
!95 = !DISubprogram(name: "fgetws", scope: !83, file: !83, line: 755, type: !96, flags: DIFlagPrototyped, spFlags: 0)
!96 = !DISubroutineType(types: !97)
!97 = !{!98, !100, !14, !101}
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!100 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !98)
!101 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !90)
!102 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !103, file: !77, line: 146)
!103 = !DISubprogram(name: "fputwc", scope: !83, file: !83, line: 740, type: !104, flags: DIFlagPrototyped, spFlags: 0)
!104 = !DISubroutineType(types: !105)
!105 = !{!79, !99, !90}
!106 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !107, file: !77, line: 147)
!107 = !DISubprogram(name: "fputws", scope: !83, file: !83, line: 762, type: !108, flags: DIFlagPrototyped, spFlags: 0)
!108 = !DISubroutineType(types: !109)
!109 = !{!14, !110, !101}
!110 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !111)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!113 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !114, file: !77, line: 148)
!114 = !DISubprogram(name: "fwide", scope: !83, file: !83, line: 573, type: !115, flags: DIFlagPrototyped, spFlags: 0)
!115 = !DISubroutineType(types: !116)
!116 = !{!14, !90, !14}
!117 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !118, file: !77, line: 149)
!118 = !DISubprogram(name: "fwprintf", scope: !83, file: !83, line: 580, type: !119, flags: DIFlagPrototyped, spFlags: 0)
!119 = !DISubroutineType(types: !120)
!120 = !{!14, !101, !110, null}
!121 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !122, file: !77, line: 150)
!122 = !DISubprogram(name: "fwscanf", linkageName: "__isoc99_fwscanf", scope: !83, file: !83, line: 640, type: !119, flags: DIFlagPrototyped, spFlags: 0)
!123 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !124, file: !77, line: 151)
!124 = !DISubprogram(name: "getwc", scope: !83, file: !83, line: 727, type: !88, flags: DIFlagPrototyped, spFlags: 0)
!125 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !126, file: !77, line: 152)
!126 = !DISubprogram(name: "getwchar", scope: !83, file: !83, line: 733, type: !127, flags: DIFlagPrototyped, spFlags: 0)
!127 = !DISubroutineType(types: !128)
!128 = !{!79}
!129 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !130, file: !77, line: 153)
!130 = !DISubprogram(name: "mbrlen", scope: !83, file: !83, line: 307, type: !131, flags: DIFlagPrototyped, spFlags: 0)
!131 = !DISubroutineType(types: !132)
!132 = !{!133, !135, !133, !137}
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !134, line: 46, baseType: !41)
!134 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/cs22mtech12008", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!135 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !136)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !138)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!139 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !140, file: !77, line: 154)
!140 = !DISubprogram(name: "mbrtowc", scope: !83, file: !83, line: 296, type: !141, flags: DIFlagPrototyped, spFlags: 0)
!141 = !DISubroutineType(types: !142)
!142 = !{!133, !100, !135, !133, !137}
!143 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !144, file: !77, line: 155)
!144 = !DISubprogram(name: "mbsinit", scope: !83, file: !83, line: 292, type: !145, flags: DIFlagPrototyped, spFlags: 0)
!145 = !DISubroutineType(types: !146)
!146 = !{!14, !147}
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!149 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !150, file: !77, line: 156)
!150 = !DISubprogram(name: "mbsrtowcs", scope: !83, file: !83, line: 337, type: !151, flags: DIFlagPrototyped, spFlags: 0)
!151 = !DISubroutineType(types: !152)
!152 = !{!133, !100, !153, !133, !137}
!153 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !154)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!155 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !156, file: !77, line: 157)
!156 = !DISubprogram(name: "putwc", scope: !83, file: !83, line: 741, type: !104, flags: DIFlagPrototyped, spFlags: 0)
!157 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !158, file: !77, line: 158)
!158 = !DISubprogram(name: "putwchar", scope: !83, file: !83, line: 747, type: !159, flags: DIFlagPrototyped, spFlags: 0)
!159 = !DISubroutineType(types: !160)
!160 = !{!79, !99}
!161 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !162, file: !77, line: 160)
!162 = !DISubprogram(name: "swprintf", scope: !83, file: !83, line: 590, type: !163, flags: DIFlagPrototyped, spFlags: 0)
!163 = !DISubroutineType(types: !164)
!164 = !{!14, !100, !133, !110, null}
!165 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !166, file: !77, line: 162)
!166 = !DISubprogram(name: "swscanf", linkageName: "__isoc99_swscanf", scope: !83, file: !83, line: 647, type: !167, flags: DIFlagPrototyped, spFlags: 0)
!167 = !DISubroutineType(types: !168)
!168 = !{!14, !110, !110, null}
!169 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !170, file: !77, line: 163)
!170 = !DISubprogram(name: "ungetwc", scope: !83, file: !83, line: 770, type: !171, flags: DIFlagPrototyped, spFlags: 0)
!171 = !DISubroutineType(types: !172)
!172 = !{!79, !79, !90}
!173 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !174, file: !77, line: 164)
!174 = !DISubprogram(name: "vfwprintf", scope: !83, file: !83, line: 598, type: !175, flags: DIFlagPrototyped, spFlags: 0)
!175 = !DISubroutineType(types: !176)
!176 = !{!14, !101, !110, !177}
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, flags: DIFlagTypePassByValue, elements: !179, identifier: "_ZTS13__va_list_tag")
!179 = !{!180, !182, !183, !185}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !178, file: !181, baseType: !72, size: 32)
!181 = !DIFile(filename: "Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Inheritance/dynamic_upcast.cpp", directory: "/home/cs22mtech12008")
!182 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !178, file: !181, baseType: !72, size: 32, offset: 32)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !178, file: !181, baseType: !184, size: 64, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !178, file: !181, baseType: !184, size: 64, offset: 128)
!186 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !187, file: !77, line: 166)
!187 = !DISubprogram(name: "vfwscanf", linkageName: "__isoc99_vfwscanf", scope: !83, file: !83, line: 693, type: !175, flags: DIFlagPrototyped, spFlags: 0)
!188 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !189, file: !77, line: 169)
!189 = !DISubprogram(name: "vswprintf", scope: !83, file: !83, line: 611, type: !190, flags: DIFlagPrototyped, spFlags: 0)
!190 = !DISubroutineType(types: !191)
!191 = !{!14, !100, !133, !110, !177}
!192 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !193, file: !77, line: 172)
!193 = !DISubprogram(name: "vswscanf", linkageName: "__isoc99_vswscanf", scope: !83, file: !83, line: 700, type: !194, flags: DIFlagPrototyped, spFlags: 0)
!194 = !DISubroutineType(types: !195)
!195 = !{!14, !110, !110, !177}
!196 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !197, file: !77, line: 174)
!197 = !DISubprogram(name: "vwprintf", scope: !83, file: !83, line: 606, type: !198, flags: DIFlagPrototyped, spFlags: 0)
!198 = !DISubroutineType(types: !199)
!199 = !{!14, !110, !177}
!200 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !201, file: !77, line: 176)
!201 = !DISubprogram(name: "vwscanf", linkageName: "__isoc99_vwscanf", scope: !83, file: !83, line: 697, type: !198, flags: DIFlagPrototyped, spFlags: 0)
!202 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !203, file: !77, line: 178)
!203 = !DISubprogram(name: "wcrtomb", scope: !83, file: !83, line: 301, type: !204, flags: DIFlagPrototyped, spFlags: 0)
!204 = !DISubroutineType(types: !205)
!205 = !{!133, !206, !99, !137}
!206 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !207)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!208 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !209, file: !77, line: 179)
!209 = !DISubprogram(name: "wcscat", scope: !83, file: !83, line: 97, type: !210, flags: DIFlagPrototyped, spFlags: 0)
!210 = !DISubroutineType(types: !211)
!211 = !{!98, !100, !110}
!212 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !213, file: !77, line: 180)
!213 = !DISubprogram(name: "wcscmp", scope: !83, file: !83, line: 106, type: !214, flags: DIFlagPrototyped, spFlags: 0)
!214 = !DISubroutineType(types: !215)
!215 = !{!14, !111, !111}
!216 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !217, file: !77, line: 181)
!217 = !DISubprogram(name: "wcscoll", scope: !83, file: !83, line: 131, type: !214, flags: DIFlagPrototyped, spFlags: 0)
!218 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !219, file: !77, line: 182)
!219 = !DISubprogram(name: "wcscpy", scope: !83, file: !83, line: 87, type: !210, flags: DIFlagPrototyped, spFlags: 0)
!220 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !221, file: !77, line: 183)
!221 = !DISubprogram(name: "wcscspn", scope: !83, file: !83, line: 187, type: !222, flags: DIFlagPrototyped, spFlags: 0)
!222 = !DISubroutineType(types: !223)
!223 = !{!133, !111, !111}
!224 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !225, file: !77, line: 184)
!225 = !DISubprogram(name: "wcsftime", scope: !83, file: !83, line: 834, type: !226, flags: DIFlagPrototyped, spFlags: 0)
!226 = !DISubroutineType(types: !227)
!227 = !{!133, !100, !133, !110, !228}
!228 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !229)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !231)
!231 = !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !83, line: 83, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS2tm")
!232 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !233, file: !77, line: 185)
!233 = !DISubprogram(name: "wcslen", scope: !83, file: !83, line: 222, type: !234, flags: DIFlagPrototyped, spFlags: 0)
!234 = !DISubroutineType(types: !235)
!235 = !{!133, !111}
!236 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !237, file: !77, line: 186)
!237 = !DISubprogram(name: "wcsncat", scope: !83, file: !83, line: 101, type: !238, flags: DIFlagPrototyped, spFlags: 0)
!238 = !DISubroutineType(types: !239)
!239 = !{!98, !100, !110, !133}
!240 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !241, file: !77, line: 187)
!241 = !DISubprogram(name: "wcsncmp", scope: !83, file: !83, line: 109, type: !242, flags: DIFlagPrototyped, spFlags: 0)
!242 = !DISubroutineType(types: !243)
!243 = !{!14, !111, !111, !133}
!244 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !245, file: !77, line: 188)
!245 = !DISubprogram(name: "wcsncpy", scope: !83, file: !83, line: 92, type: !238, flags: DIFlagPrototyped, spFlags: 0)
!246 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !247, file: !77, line: 189)
!247 = !DISubprogram(name: "wcsrtombs", scope: !83, file: !83, line: 343, type: !248, flags: DIFlagPrototyped, spFlags: 0)
!248 = !DISubroutineType(types: !249)
!249 = !{!133, !206, !250, !133, !137}
!250 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !251)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!252 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !253, file: !77, line: 190)
!253 = !DISubprogram(name: "wcsspn", scope: !83, file: !83, line: 191, type: !222, flags: DIFlagPrototyped, spFlags: 0)
!254 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !255, file: !77, line: 191)
!255 = !DISubprogram(name: "wcstod", scope: !83, file: !83, line: 377, type: !256, flags: DIFlagPrototyped, spFlags: 0)
!256 = !DISubroutineType(types: !257)
!257 = !{!258, !110, !259}
!258 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!259 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !260)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!261 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !262, file: !77, line: 193)
!262 = !DISubprogram(name: "wcstof", scope: !83, file: !83, line: 382, type: !263, flags: DIFlagPrototyped, spFlags: 0)
!263 = !DISubroutineType(types: !264)
!264 = !{!265, !110, !259}
!265 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!266 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !267, file: !77, line: 195)
!267 = !DISubprogram(name: "wcstok", scope: !83, file: !83, line: 217, type: !268, flags: DIFlagPrototyped, spFlags: 0)
!268 = !DISubroutineType(types: !269)
!269 = !{!98, !100, !110, !259}
!270 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !271, file: !77, line: 196)
!271 = !DISubprogram(name: "wcstol", scope: !83, file: !83, line: 428, type: !272, flags: DIFlagPrototyped, spFlags: 0)
!272 = !DISubroutineType(types: !273)
!273 = !{!274, !110, !259, !14}
!274 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!275 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !276, file: !77, line: 197)
!276 = !DISubprogram(name: "wcstoul", scope: !83, file: !83, line: 433, type: !277, flags: DIFlagPrototyped, spFlags: 0)
!277 = !DISubroutineType(types: !278)
!278 = !{!41, !110, !259, !14}
!279 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !280, file: !77, line: 198)
!280 = !DISubprogram(name: "wcsxfrm", scope: !83, file: !83, line: 135, type: !281, flags: DIFlagPrototyped, spFlags: 0)
!281 = !DISubroutineType(types: !282)
!282 = !{!133, !100, !110, !133}
!283 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !284, file: !77, line: 199)
!284 = !DISubprogram(name: "wctob", scope: !83, file: !83, line: 288, type: !285, flags: DIFlagPrototyped, spFlags: 0)
!285 = !DISubroutineType(types: !286)
!286 = !{!14, !79}
!287 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !288, file: !77, line: 200)
!288 = !DISubprogram(name: "wmemcmp", scope: !83, file: !83, line: 258, type: !242, flags: DIFlagPrototyped, spFlags: 0)
!289 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !290, file: !77, line: 201)
!290 = !DISubprogram(name: "wmemcpy", scope: !83, file: !83, line: 262, type: !238, flags: DIFlagPrototyped, spFlags: 0)
!291 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !292, file: !77, line: 202)
!292 = !DISubprogram(name: "wmemmove", scope: !83, file: !83, line: 267, type: !293, flags: DIFlagPrototyped, spFlags: 0)
!293 = !DISubroutineType(types: !294)
!294 = !{!98, !98, !111, !133}
!295 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !296, file: !77, line: 203)
!296 = !DISubprogram(name: "wmemset", scope: !83, file: !83, line: 271, type: !297, flags: DIFlagPrototyped, spFlags: 0)
!297 = !DISubroutineType(types: !298)
!298 = !{!98, !98, !99, !133}
!299 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !300, file: !77, line: 204)
!300 = !DISubprogram(name: "wprintf", scope: !83, file: !83, line: 587, type: !301, flags: DIFlagPrototyped, spFlags: 0)
!301 = !DISubroutineType(types: !302)
!302 = !{!14, !110, null}
!303 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !304, file: !77, line: 205)
!304 = !DISubprogram(name: "wscanf", linkageName: "__isoc99_wscanf", scope: !83, file: !83, line: 644, type: !301, flags: DIFlagPrototyped, spFlags: 0)
!305 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !306, file: !77, line: 206)
!306 = !DISubprogram(name: "wcschr", scope: !83, file: !83, line: 164, type: !307, flags: DIFlagPrototyped, spFlags: 0)
!307 = !DISubroutineType(types: !308)
!308 = !{!98, !111, !99}
!309 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !310, file: !77, line: 207)
!310 = !DISubprogram(name: "wcspbrk", scope: !83, file: !83, line: 201, type: !311, flags: DIFlagPrototyped, spFlags: 0)
!311 = !DISubroutineType(types: !312)
!312 = !{!98, !111, !111}
!313 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !314, file: !77, line: 208)
!314 = !DISubprogram(name: "wcsrchr", scope: !83, file: !83, line: 174, type: !307, flags: DIFlagPrototyped, spFlags: 0)
!315 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !316, file: !77, line: 209)
!316 = !DISubprogram(name: "wcsstr", scope: !83, file: !83, line: 212, type: !311, flags: DIFlagPrototyped, spFlags: 0)
!317 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !318, file: !77, line: 210)
!318 = !DISubprogram(name: "wmemchr", scope: !83, file: !83, line: 253, type: !319, flags: DIFlagPrototyped, spFlags: 0)
!319 = !DISubroutineType(types: !320)
!320 = !{!98, !111, !99, !133}
!321 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !322, entity: !323, file: !77, line: 251)
!322 = !DINamespace(name: "__gnu_cxx", scope: null)
!323 = !DISubprogram(name: "wcstold", scope: !83, file: !83, line: 384, type: !324, flags: DIFlagPrototyped, spFlags: 0)
!324 = !DISubroutineType(types: !325)
!325 = !{!326, !110, !259}
!326 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!327 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !322, entity: !328, file: !77, line: 260)
!328 = !DISubprogram(name: "wcstoll", scope: !83, file: !83, line: 441, type: !329, flags: DIFlagPrototyped, spFlags: 0)
!329 = !DISubroutineType(types: !330)
!330 = !{!331, !110, !259, !14}
!331 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!332 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !322, entity: !333, file: !77, line: 261)
!333 = !DISubprogram(name: "wcstoull", scope: !83, file: !83, line: 448, type: !334, flags: DIFlagPrototyped, spFlags: 0)
!334 = !DISubroutineType(types: !335)
!335 = !{!336, !110, !259, !14}
!336 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!337 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !323, file: !77, line: 267)
!338 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !328, file: !77, line: 268)
!339 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !333, file: !77, line: 269)
!340 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !262, file: !77, line: 283)
!341 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !187, file: !77, line: 286)
!342 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !193, file: !77, line: 289)
!343 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !201, file: !77, line: 292)
!344 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !323, file: !77, line: 296)
!345 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !328, file: !77, line: 297)
!346 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !333, file: !77, line: 298)
!347 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !348, file: !349, line: 66)
!348 = !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !350, file: !349, line: 97, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!349 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/exception_ptr.h", directory: "", checksumkind: CSK_MD5, checksum: "314ad14748ccb9ff85c65d17ebb0828b")
!350 = !DINamespace(name: "__exception_ptr", scope: !60)
!351 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !350, entity: !352, file: !349, line: 85)
!352 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !60, file: !349, line: 81, type: !353, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!353 = !DISubroutineType(types: !354)
!354 = !{null, !348}
!355 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !356, file: !349, line: 243)
!356 = !DISubprogram(name: "swap", linkageName: "_ZNSt15__exception_ptr4swapERNS_13exception_ptrES1_", scope: !350, file: !349, line: 230, type: !357, flags: DIFlagPrototyped, spFlags: 0)
!357 = !DISubroutineType(types: !358)
!358 = !{null, !359, !359}
!359 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !348, size: 64)
!360 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !361, file: !363, line: 53)
!361 = !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !362, line: 51, size: 768, flags: DIFlagFwdDecl, identifier: "_ZTS5lconv")
!362 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "0cf373fc44eed8073800bdb9da87b72f")
!363 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/clocale", directory: "")
!364 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !365, file: !363, line: 54)
!365 = !DISubprogram(name: "setlocale", scope: !362, file: !362, line: 122, type: !366, flags: DIFlagPrototyped, spFlags: 0)
!366 = !DISubroutineType(types: !367)
!367 = !{!207, !14, !136}
!368 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !369, file: !363, line: 55)
!369 = !DISubprogram(name: "localeconv", scope: !362, file: !362, line: 125, type: !370, flags: DIFlagPrototyped, spFlags: 0)
!370 = !DISubroutineType(types: !371)
!371 = !{!372}
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!373 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !374, file: !378, line: 64)
!374 = !DISubprogram(name: "isalnum", scope: !375, file: !375, line: 108, type: !376, flags: DIFlagPrototyped, spFlags: 0)
!375 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "36575f934ef4fe7e9d50a3cb17bd5c66")
!376 = !DISubroutineType(types: !377)
!377 = !{!14, !14}
!378 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cctype", directory: "")
!379 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !380, file: !378, line: 65)
!380 = !DISubprogram(name: "isalpha", scope: !375, file: !375, line: 109, type: !376, flags: DIFlagPrototyped, spFlags: 0)
!381 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !382, file: !378, line: 66)
!382 = !DISubprogram(name: "iscntrl", scope: !375, file: !375, line: 110, type: !376, flags: DIFlagPrototyped, spFlags: 0)
!383 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !384, file: !378, line: 67)
!384 = !DISubprogram(name: "isdigit", scope: !375, file: !375, line: 111, type: !376, flags: DIFlagPrototyped, spFlags: 0)
!385 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !386, file: !378, line: 68)
!386 = !DISubprogram(name: "isgraph", scope: !375, file: !375, line: 113, type: !376, flags: DIFlagPrototyped, spFlags: 0)
!387 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !388, file: !378, line: 69)
!388 = !DISubprogram(name: "islower", scope: !375, file: !375, line: 112, type: !376, flags: DIFlagPrototyped, spFlags: 0)
!389 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !390, file: !378, line: 70)
!390 = !DISubprogram(name: "isprint", scope: !375, file: !375, line: 114, type: !376, flags: DIFlagPrototyped, spFlags: 0)
!391 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !392, file: !378, line: 71)
!392 = !DISubprogram(name: "ispunct", scope: !375, file: !375, line: 115, type: !376, flags: DIFlagPrototyped, spFlags: 0)
!393 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !394, file: !378, line: 72)
!394 = !DISubprogram(name: "isspace", scope: !375, file: !375, line: 116, type: !376, flags: DIFlagPrototyped, spFlags: 0)
!395 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !396, file: !378, line: 73)
!396 = !DISubprogram(name: "isupper", scope: !375, file: !375, line: 117, type: !376, flags: DIFlagPrototyped, spFlags: 0)
!397 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !398, file: !378, line: 74)
!398 = !DISubprogram(name: "isxdigit", scope: !375, file: !375, line: 118, type: !376, flags: DIFlagPrototyped, spFlags: 0)
!399 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !400, file: !378, line: 75)
!400 = !DISubprogram(name: "tolower", scope: !375, file: !375, line: 122, type: !376, flags: DIFlagPrototyped, spFlags: 0)
!401 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !402, file: !378, line: 76)
!402 = !DISubprogram(name: "toupper", scope: !375, file: !375, line: 125, type: !376, flags: DIFlagPrototyped, spFlags: 0)
!403 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !404, file: !378, line: 87)
!404 = !DISubprogram(name: "isblank", scope: !375, file: !375, line: 130, type: !376, flags: DIFlagPrototyped, spFlags: 0)
!405 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !406, entity: !407, file: !408, line: 58)
!406 = !DINamespace(name: "__gnu_debug", scope: null)
!407 = !DINamespace(name: "__debug", scope: !60)
!408 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/debug/debug.h", directory: "", checksumkind: CSK_MD5, checksum: "752210a319f5f5d356cc29cd1ce3cdc7")
!409 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !410, file: !412, line: 52)
!410 = !DISubprogram(name: "abs", scope: !411, file: !411, line: 840, type: !376, flags: DIFlagPrototyped, spFlags: 0)
!411 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!412 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/std_abs.h", directory: "")
!413 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !414, file: !416, line: 131)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !411, line: 62, baseType: !415)
!415 = !DICompositeType(tag: DW_TAG_structure_type, file: !411, line: 58, size: 64, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!416 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cstdlib", directory: "")
!417 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !418, file: !416, line: 132)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !411, line: 70, baseType: !419)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !411, line: 66, size: 128, flags: DIFlagTypePassByValue, elements: !420, identifier: "_ZTS6ldiv_t")
!420 = !{!421, !422}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !419, file: !411, line: 68, baseType: !274, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !419, file: !411, line: 69, baseType: !274, size: 64, offset: 64)
!423 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !424, file: !416, line: 134)
!424 = !DISubprogram(name: "abort", scope: !411, file: !411, line: 591, type: !425, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!425 = !DISubroutineType(types: !426)
!426 = !{null}
!427 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !428, file: !416, line: 136)
!428 = !DISubprogram(name: "aligned_alloc", scope: !411, file: !411, line: 586, type: !429, flags: DIFlagPrototyped, spFlags: 0)
!429 = !DISubroutineType(types: !430)
!430 = !{!184, !133, !133}
!431 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !432, file: !416, line: 138)
!432 = !DISubprogram(name: "atexit", scope: !411, file: !411, line: 595, type: !433, flags: DIFlagPrototyped, spFlags: 0)
!433 = !DISubroutineType(types: !434)
!434 = !{!14, !435}
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!436 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !437, file: !416, line: 141)
!437 = !DISubprogram(name: "at_quick_exit", scope: !411, file: !411, line: 600, type: !433, flags: DIFlagPrototyped, spFlags: 0)
!438 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !439, file: !416, line: 144)
!439 = !DISubprogram(name: "atof", scope: !411, file: !411, line: 101, type: !440, flags: DIFlagPrototyped, spFlags: 0)
!440 = !DISubroutineType(types: !441)
!441 = !{!258, !136}
!442 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !443, file: !416, line: 145)
!443 = !DISubprogram(name: "atoi", scope: !411, file: !411, line: 104, type: !444, flags: DIFlagPrototyped, spFlags: 0)
!444 = !DISubroutineType(types: !445)
!445 = !{!14, !136}
!446 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !447, file: !416, line: 146)
!447 = !DISubprogram(name: "atol", scope: !411, file: !411, line: 107, type: !448, flags: DIFlagPrototyped, spFlags: 0)
!448 = !DISubroutineType(types: !449)
!449 = !{!274, !136}
!450 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !451, file: !416, line: 147)
!451 = !DISubprogram(name: "bsearch", scope: !411, file: !411, line: 820, type: !452, flags: DIFlagPrototyped, spFlags: 0)
!452 = !DISubroutineType(types: !453)
!453 = !{!184, !454, !454, !133, !133, !456}
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !411, line: 808, baseType: !457)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DISubroutineType(types: !459)
!459 = !{!14, !454, !454}
!460 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !461, file: !416, line: 148)
!461 = !DISubprogram(name: "calloc", scope: !411, file: !411, line: 542, type: !429, flags: DIFlagPrototyped, spFlags: 0)
!462 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !463, file: !416, line: 149)
!463 = !DISubprogram(name: "div", scope: !411, file: !411, line: 852, type: !464, flags: DIFlagPrototyped, spFlags: 0)
!464 = !DISubroutineType(types: !465)
!465 = !{!414, !14, !14}
!466 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !467, file: !416, line: 150)
!467 = !DISubprogram(name: "exit", scope: !411, file: !411, line: 617, type: !468, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!468 = !DISubroutineType(types: !469)
!469 = !{null, !14}
!470 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !471, file: !416, line: 151)
!471 = !DISubprogram(name: "free", scope: !411, file: !411, line: 565, type: !472, flags: DIFlagPrototyped, spFlags: 0)
!472 = !DISubroutineType(types: !473)
!473 = !{null, !184}
!474 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !475, file: !416, line: 152)
!475 = !DISubprogram(name: "getenv", scope: !411, file: !411, line: 634, type: !476, flags: DIFlagPrototyped, spFlags: 0)
!476 = !DISubroutineType(types: !477)
!477 = !{!207, !136}
!478 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !479, file: !416, line: 153)
!479 = !DISubprogram(name: "labs", scope: !411, file: !411, line: 841, type: !480, flags: DIFlagPrototyped, spFlags: 0)
!480 = !DISubroutineType(types: !481)
!481 = !{!274, !274}
!482 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !483, file: !416, line: 154)
!483 = !DISubprogram(name: "ldiv", scope: !411, file: !411, line: 854, type: !484, flags: DIFlagPrototyped, spFlags: 0)
!484 = !DISubroutineType(types: !485)
!485 = !{!418, !274, !274}
!486 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !487, file: !416, line: 155)
!487 = !DISubprogram(name: "malloc", scope: !411, file: !411, line: 539, type: !488, flags: DIFlagPrototyped, spFlags: 0)
!488 = !DISubroutineType(types: !489)
!489 = !{!184, !133}
!490 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !491, file: !416, line: 157)
!491 = !DISubprogram(name: "mblen", scope: !411, file: !411, line: 922, type: !492, flags: DIFlagPrototyped, spFlags: 0)
!492 = !DISubroutineType(types: !493)
!493 = !{!14, !136, !133}
!494 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !495, file: !416, line: 158)
!495 = !DISubprogram(name: "mbstowcs", scope: !411, file: !411, line: 933, type: !496, flags: DIFlagPrototyped, spFlags: 0)
!496 = !DISubroutineType(types: !497)
!497 = !{!133, !100, !135, !133}
!498 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !499, file: !416, line: 159)
!499 = !DISubprogram(name: "mbtowc", scope: !411, file: !411, line: 925, type: !500, flags: DIFlagPrototyped, spFlags: 0)
!500 = !DISubroutineType(types: !501)
!501 = !{!14, !100, !135, !133}
!502 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !503, file: !416, line: 161)
!503 = !DISubprogram(name: "qsort", scope: !411, file: !411, line: 830, type: !504, flags: DIFlagPrototyped, spFlags: 0)
!504 = !DISubroutineType(types: !505)
!505 = !{null, !184, !133, !133, !456}
!506 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !507, file: !416, line: 164)
!507 = !DISubprogram(name: "quick_exit", scope: !411, file: !411, line: 623, type: !468, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!508 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !509, file: !416, line: 167)
!509 = !DISubprogram(name: "rand", scope: !411, file: !411, line: 453, type: !12, flags: DIFlagPrototyped, spFlags: 0)
!510 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !511, file: !416, line: 168)
!511 = !DISubprogram(name: "realloc", scope: !411, file: !411, line: 550, type: !512, flags: DIFlagPrototyped, spFlags: 0)
!512 = !DISubroutineType(types: !513)
!513 = !{!184, !184, !133}
!514 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !515, file: !416, line: 169)
!515 = !DISubprogram(name: "srand", scope: !411, file: !411, line: 455, type: !516, flags: DIFlagPrototyped, spFlags: 0)
!516 = !DISubroutineType(types: !517)
!517 = !{null, !72}
!518 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !519, file: !416, line: 170)
!519 = !DISubprogram(name: "strtod", scope: !411, file: !411, line: 117, type: !520, flags: DIFlagPrototyped, spFlags: 0)
!520 = !DISubroutineType(types: !521)
!521 = !{!258, !135, !522}
!522 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !523)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!524 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !525, file: !416, line: 171)
!525 = !DISubprogram(name: "strtol", scope: !411, file: !411, line: 176, type: !526, flags: DIFlagPrototyped, spFlags: 0)
!526 = !DISubroutineType(types: !527)
!527 = !{!274, !135, !522, !14}
!528 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !529, file: !416, line: 172)
!529 = !DISubprogram(name: "strtoul", scope: !411, file: !411, line: 180, type: !530, flags: DIFlagPrototyped, spFlags: 0)
!530 = !DISubroutineType(types: !531)
!531 = !{!41, !135, !522, !14}
!532 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !533, file: !416, line: 173)
!533 = !DISubprogram(name: "system", scope: !411, file: !411, line: 784, type: !444, flags: DIFlagPrototyped, spFlags: 0)
!534 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !535, file: !416, line: 175)
!535 = !DISubprogram(name: "wcstombs", scope: !411, file: !411, line: 936, type: !536, flags: DIFlagPrototyped, spFlags: 0)
!536 = !DISubroutineType(types: !537)
!537 = !{!133, !206, !110, !133}
!538 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !539, file: !416, line: 176)
!539 = !DISubprogram(name: "wctomb", scope: !411, file: !411, line: 929, type: !540, flags: DIFlagPrototyped, spFlags: 0)
!540 = !DISubroutineType(types: !541)
!541 = !{!14, !207, !99}
!542 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !322, entity: !543, file: !416, line: 204)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !411, line: 80, baseType: !544)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !411, line: 76, size: 128, flags: DIFlagTypePassByValue, elements: !545, identifier: "_ZTS7lldiv_t")
!545 = !{!546, !547}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !544, file: !411, line: 78, baseType: !331, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !544, file: !411, line: 79, baseType: !331, size: 64, offset: 64)
!548 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !322, entity: !549, file: !416, line: 210)
!549 = !DISubprogram(name: "_Exit", scope: !411, file: !411, line: 629, type: !468, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!550 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !322, entity: !551, file: !416, line: 214)
!551 = !DISubprogram(name: "llabs", scope: !411, file: !411, line: 844, type: !552, flags: DIFlagPrototyped, spFlags: 0)
!552 = !DISubroutineType(types: !553)
!553 = !{!331, !331}
!554 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !322, entity: !555, file: !416, line: 220)
!555 = !DISubprogram(name: "lldiv", scope: !411, file: !411, line: 858, type: !556, flags: DIFlagPrototyped, spFlags: 0)
!556 = !DISubroutineType(types: !557)
!557 = !{!543, !331, !331}
!558 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !322, entity: !559, file: !416, line: 231)
!559 = !DISubprogram(name: "atoll", scope: !411, file: !411, line: 112, type: !560, flags: DIFlagPrototyped, spFlags: 0)
!560 = !DISubroutineType(types: !561)
!561 = !{!331, !136}
!562 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !322, entity: !563, file: !416, line: 232)
!563 = !DISubprogram(name: "strtoll", scope: !411, file: !411, line: 200, type: !564, flags: DIFlagPrototyped, spFlags: 0)
!564 = !DISubroutineType(types: !565)
!565 = !{!331, !135, !522, !14}
!566 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !322, entity: !567, file: !416, line: 233)
!567 = !DISubprogram(name: "strtoull", scope: !411, file: !411, line: 205, type: !568, flags: DIFlagPrototyped, spFlags: 0)
!568 = !DISubroutineType(types: !569)
!569 = !{!336, !135, !522, !14}
!570 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !322, entity: !571, file: !416, line: 235)
!571 = !DISubprogram(name: "strtof", scope: !411, file: !411, line: 123, type: !572, flags: DIFlagPrototyped, spFlags: 0)
!572 = !DISubroutineType(types: !573)
!573 = !{!265, !135, !522}
!574 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !322, entity: !575, file: !416, line: 236)
!575 = !DISubprogram(name: "strtold", scope: !411, file: !411, line: 126, type: !576, flags: DIFlagPrototyped, spFlags: 0)
!576 = !DISubroutineType(types: !577)
!577 = !{!326, !135, !522}
!578 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !543, file: !416, line: 244)
!579 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !549, file: !416, line: 246)
!580 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !551, file: !416, line: 248)
!581 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !582, file: !416, line: 249)
!582 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !322, file: !416, line: 217, type: !556, flags: DIFlagPrototyped, spFlags: 0)
!583 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !555, file: !416, line: 250)
!584 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !559, file: !416, line: 252)
!585 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !571, file: !416, line: 253)
!586 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !563, file: !416, line: 254)
!587 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !567, file: !416, line: 255)
!588 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !575, file: !416, line: 256)
!589 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !590, file: !592, line: 98)
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !591, line: 7, baseType: !93)
!591 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!592 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cstdio", directory: "")
!593 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !594, file: !592, line: 99)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !595, line: 84, baseType: !596)
!595 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fpos_t", file: !597, line: 14, baseType: !598)
!597 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h", directory: "", checksumkind: CSK_MD5, checksum: "32de8bdaf3551a6c0a9394f9af4389ce")
!598 = !DICompositeType(tag: DW_TAG_structure_type, name: "_G_fpos_t", file: !597, line: 10, size: 128, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
!599 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !600, file: !592, line: 101)
!600 = !DISubprogram(name: "clearerr", scope: !595, file: !595, line: 757, type: !601, flags: DIFlagPrototyped, spFlags: 0)
!601 = !DISubroutineType(types: !602)
!602 = !{null, !603}
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!604 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !605, file: !592, line: 102)
!605 = !DISubprogram(name: "fclose", scope: !595, file: !595, line: 213, type: !606, flags: DIFlagPrototyped, spFlags: 0)
!606 = !DISubroutineType(types: !607)
!607 = !{!14, !603}
!608 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !609, file: !592, line: 103)
!609 = !DISubprogram(name: "feof", scope: !595, file: !595, line: 759, type: !606, flags: DIFlagPrototyped, spFlags: 0)
!610 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !611, file: !592, line: 104)
!611 = !DISubprogram(name: "ferror", scope: !595, file: !595, line: 761, type: !606, flags: DIFlagPrototyped, spFlags: 0)
!612 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !613, file: !592, line: 105)
!613 = !DISubprogram(name: "fflush", scope: !595, file: !595, line: 218, type: !606, flags: DIFlagPrototyped, spFlags: 0)
!614 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !615, file: !592, line: 106)
!615 = !DISubprogram(name: "fgetc", scope: !595, file: !595, line: 485, type: !606, flags: DIFlagPrototyped, spFlags: 0)
!616 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !617, file: !592, line: 107)
!617 = !DISubprogram(name: "fgetpos", scope: !595, file: !595, line: 731, type: !618, flags: DIFlagPrototyped, spFlags: 0)
!618 = !DISubroutineType(types: !619)
!619 = !{!14, !620, !621}
!620 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !603)
!621 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !622)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!623 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !624, file: !592, line: 108)
!624 = !DISubprogram(name: "fgets", scope: !595, file: !595, line: 564, type: !625, flags: DIFlagPrototyped, spFlags: 0)
!625 = !DISubroutineType(types: !626)
!626 = !{!207, !206, !14, !620}
!627 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !628, file: !592, line: 109)
!628 = !DISubprogram(name: "fopen", scope: !595, file: !595, line: 246, type: !629, flags: DIFlagPrototyped, spFlags: 0)
!629 = !DISubroutineType(types: !630)
!630 = !{!603, !135, !135}
!631 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !632, file: !592, line: 110)
!632 = !DISubprogram(name: "fprintf", scope: !595, file: !595, line: 326, type: !633, flags: DIFlagPrototyped, spFlags: 0)
!633 = !DISubroutineType(types: !634)
!634 = !{!14, !620, !135, null}
!635 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !636, file: !592, line: 111)
!636 = !DISubprogram(name: "fputc", scope: !595, file: !595, line: 521, type: !637, flags: DIFlagPrototyped, spFlags: 0)
!637 = !DISubroutineType(types: !638)
!638 = !{!14, !14, !603}
!639 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !640, file: !592, line: 112)
!640 = !DISubprogram(name: "fputs", scope: !595, file: !595, line: 626, type: !641, flags: DIFlagPrototyped, spFlags: 0)
!641 = !DISubroutineType(types: !642)
!642 = !{!14, !135, !620}
!643 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !644, file: !592, line: 113)
!644 = !DISubprogram(name: "fread", scope: !595, file: !595, line: 646, type: !645, flags: DIFlagPrototyped, spFlags: 0)
!645 = !DISubroutineType(types: !646)
!646 = !{!133, !647, !133, !133, !620}
!647 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !184)
!648 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !649, file: !592, line: 114)
!649 = !DISubprogram(name: "freopen", scope: !595, file: !595, line: 252, type: !650, flags: DIFlagPrototyped, spFlags: 0)
!650 = !DISubroutineType(types: !651)
!651 = !{!603, !135, !135, !620}
!652 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !653, file: !592, line: 115)
!653 = !DISubprogram(name: "fscanf", linkageName: "__isoc99_fscanf", scope: !595, file: !595, line: 407, type: !633, flags: DIFlagPrototyped, spFlags: 0)
!654 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !655, file: !592, line: 116)
!655 = !DISubprogram(name: "fseek", scope: !595, file: !595, line: 684, type: !656, flags: DIFlagPrototyped, spFlags: 0)
!656 = !DISubroutineType(types: !657)
!657 = !{!14, !603, !274, !14}
!658 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !659, file: !592, line: 117)
!659 = !DISubprogram(name: "fsetpos", scope: !595, file: !595, line: 736, type: !660, flags: DIFlagPrototyped, spFlags: 0)
!660 = !DISubroutineType(types: !661)
!661 = !{!14, !603, !662}
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !594)
!664 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !665, file: !592, line: 118)
!665 = !DISubprogram(name: "ftell", scope: !595, file: !595, line: 689, type: !666, flags: DIFlagPrototyped, spFlags: 0)
!666 = !DISubroutineType(types: !667)
!667 = !{!274, !603}
!668 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !669, file: !592, line: 119)
!669 = !DISubprogram(name: "fwrite", scope: !595, file: !595, line: 652, type: !670, flags: DIFlagPrototyped, spFlags: 0)
!670 = !DISubroutineType(types: !671)
!671 = !{!133, !672, !133, !133, !620}
!672 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !454)
!673 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !674, file: !592, line: 120)
!674 = !DISubprogram(name: "getc", scope: !595, file: !595, line: 486, type: !606, flags: DIFlagPrototyped, spFlags: 0)
!675 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !676, file: !592, line: 121)
!676 = !DISubprogram(name: "getchar", scope: !595, file: !595, line: 492, type: !12, flags: DIFlagPrototyped, spFlags: 0)
!677 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !678, file: !592, line: 126)
!678 = !DISubprogram(name: "perror", scope: !595, file: !595, line: 775, type: !679, flags: DIFlagPrototyped, spFlags: 0)
!679 = !DISubroutineType(types: !680)
!680 = !{null, !136}
!681 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !682, file: !592, line: 127)
!682 = !DISubprogram(name: "printf", scope: !595, file: !595, line: 332, type: !683, flags: DIFlagPrototyped, spFlags: 0)
!683 = !DISubroutineType(types: !684)
!684 = !{!14, !135, null}
!685 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !686, file: !592, line: 128)
!686 = !DISubprogram(name: "putc", scope: !595, file: !595, line: 522, type: !637, flags: DIFlagPrototyped, spFlags: 0)
!687 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !688, file: !592, line: 129)
!688 = !DISubprogram(name: "putchar", scope: !595, file: !595, line: 528, type: !376, flags: DIFlagPrototyped, spFlags: 0)
!689 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !690, file: !592, line: 130)
!690 = !DISubprogram(name: "puts", scope: !595, file: !595, line: 632, type: !444, flags: DIFlagPrototyped, spFlags: 0)
!691 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !692, file: !592, line: 131)
!692 = !DISubprogram(name: "remove", scope: !595, file: !595, line: 146, type: !444, flags: DIFlagPrototyped, spFlags: 0)
!693 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !694, file: !592, line: 132)
!694 = !DISubprogram(name: "rename", scope: !595, file: !595, line: 148, type: !695, flags: DIFlagPrototyped, spFlags: 0)
!695 = !DISubroutineType(types: !696)
!696 = !{!14, !136, !136}
!697 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !698, file: !592, line: 133)
!698 = !DISubprogram(name: "rewind", scope: !595, file: !595, line: 694, type: !601, flags: DIFlagPrototyped, spFlags: 0)
!699 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !700, file: !592, line: 134)
!700 = !DISubprogram(name: "scanf", linkageName: "__isoc99_scanf", scope: !595, file: !595, line: 410, type: !683, flags: DIFlagPrototyped, spFlags: 0)
!701 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !702, file: !592, line: 135)
!702 = !DISubprogram(name: "setbuf", scope: !595, file: !595, line: 304, type: !703, flags: DIFlagPrototyped, spFlags: 0)
!703 = !DISubroutineType(types: !704)
!704 = !{null, !620, !206}
!705 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !706, file: !592, line: 136)
!706 = !DISubprogram(name: "setvbuf", scope: !595, file: !595, line: 308, type: !707, flags: DIFlagPrototyped, spFlags: 0)
!707 = !DISubroutineType(types: !708)
!708 = !{!14, !620, !206, !14, !133}
!709 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !710, file: !592, line: 137)
!710 = !DISubprogram(name: "sprintf", scope: !595, file: !595, line: 334, type: !711, flags: DIFlagPrototyped, spFlags: 0)
!711 = !DISubroutineType(types: !712)
!712 = !{!14, !206, !135, null}
!713 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !714, file: !592, line: 138)
!714 = !DISubprogram(name: "sscanf", linkageName: "__isoc99_sscanf", scope: !595, file: !595, line: 412, type: !715, flags: DIFlagPrototyped, spFlags: 0)
!715 = !DISubroutineType(types: !716)
!716 = !{!14, !135, !135, null}
!717 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !718, file: !592, line: 139)
!718 = !DISubprogram(name: "tmpfile", scope: !595, file: !595, line: 173, type: !719, flags: DIFlagPrototyped, spFlags: 0)
!719 = !DISubroutineType(types: !720)
!720 = !{!603}
!721 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !722, file: !592, line: 141)
!722 = !DISubprogram(name: "tmpnam", scope: !595, file: !595, line: 187, type: !723, flags: DIFlagPrototyped, spFlags: 0)
!723 = !DISubroutineType(types: !724)
!724 = !{!207, !207}
!725 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !726, file: !592, line: 143)
!726 = !DISubprogram(name: "ungetc", scope: !595, file: !595, line: 639, type: !637, flags: DIFlagPrototyped, spFlags: 0)
!727 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !728, file: !592, line: 144)
!728 = !DISubprogram(name: "vfprintf", scope: !595, file: !595, line: 341, type: !729, flags: DIFlagPrototyped, spFlags: 0)
!729 = !DISubroutineType(types: !730)
!730 = !{!14, !620, !135, !177}
!731 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !732, file: !592, line: 145)
!732 = !DISubprogram(name: "vprintf", scope: !595, file: !595, line: 347, type: !733, flags: DIFlagPrototyped, spFlags: 0)
!733 = !DISubroutineType(types: !734)
!734 = !{!14, !135, !177}
!735 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !736, file: !592, line: 146)
!736 = !DISubprogram(name: "vsprintf", scope: !595, file: !595, line: 349, type: !737, flags: DIFlagPrototyped, spFlags: 0)
!737 = !DISubroutineType(types: !738)
!738 = !{!14, !206, !135, !177}
!739 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !322, entity: !740, file: !592, line: 175)
!740 = !DISubprogram(name: "snprintf", scope: !595, file: !595, line: 354, type: !741, flags: DIFlagPrototyped, spFlags: 0)
!741 = !DISubroutineType(types: !742)
!742 = !{!14, !206, !133, !135, null}
!743 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !322, entity: !744, file: !592, line: 176)
!744 = !DISubprogram(name: "vfscanf", linkageName: "__isoc99_vfscanf", scope: !595, file: !595, line: 451, type: !729, flags: DIFlagPrototyped, spFlags: 0)
!745 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !322, entity: !746, file: !592, line: 177)
!746 = !DISubprogram(name: "vscanf", linkageName: "__isoc99_vscanf", scope: !595, file: !595, line: 456, type: !733, flags: DIFlagPrototyped, spFlags: 0)
!747 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !322, entity: !748, file: !592, line: 178)
!748 = !DISubprogram(name: "vsnprintf", scope: !595, file: !595, line: 358, type: !749, flags: DIFlagPrototyped, spFlags: 0)
!749 = !DISubroutineType(types: !750)
!750 = !{!14, !206, !133, !135, !177}
!751 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !322, entity: !752, file: !592, line: 179)
!752 = !DISubprogram(name: "vsscanf", linkageName: "__isoc99_vsscanf", scope: !595, file: !595, line: 459, type: !753, flags: DIFlagPrototyped, spFlags: 0)
!753 = !DISubroutineType(types: !754)
!754 = !{!14, !135, !135, !177}
!755 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !740, file: !592, line: 185)
!756 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !744, file: !592, line: 186)
!757 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !746, file: !592, line: 187)
!758 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !748, file: !592, line: 188)
!759 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !752, file: !592, line: 189)
!760 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !761, file: !767, line: 58)
!761 = !DIDerivedType(tag: DW_TAG_typedef, name: "max_align_t", file: !762, line: 24, baseType: !763)
!762 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/__stddef_max_align_t.h", directory: "/home/cs22mtech12008", checksumkind: CSK_MD5, checksum: "48e8e2456f77e6cda35d245130fa7259")
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !762, line: 19, size: 256, flags: DIFlagTypePassByValue, elements: !764, identifier: "_ZTS11max_align_t")
!764 = !{!765, !766}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "__clang_max_align_nonce1", scope: !763, file: !762, line: 20, baseType: !331, size: 64, align: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "__clang_max_align_nonce2", scope: !763, file: !762, line: 22, baseType: !326, size: 128, align: 128, offset: 128)
!767 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cstddef", directory: "")
!768 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !769, file: !775, line: 82)
!769 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctrans_t", file: !770, line: 48, baseType: !771)
!770 = !DIFile(filename: "/usr/include/wctype.h", directory: "", checksumkind: CSK_MD5, checksum: "e83097fbf57cc71ea472db59df3ba75d")
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !773)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !774, line: 41, baseType: !14)
!774 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!775 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cwctype", directory: "")
!776 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !777, file: !775, line: 83)
!777 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctype_t", file: !778, line: 38, baseType: !41)
!778 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "3598b9d23ef5d76319026b46e316b55f")
!779 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !79, file: !775, line: 84)
!780 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !781, file: !775, line: 86)
!781 = !DISubprogram(name: "iswalnum", scope: !778, file: !778, line: 95, type: !285, flags: DIFlagPrototyped, spFlags: 0)
!782 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !783, file: !775, line: 87)
!783 = !DISubprogram(name: "iswalpha", scope: !778, file: !778, line: 101, type: !285, flags: DIFlagPrototyped, spFlags: 0)
!784 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !785, file: !775, line: 89)
!785 = !DISubprogram(name: "iswblank", scope: !778, file: !778, line: 146, type: !285, flags: DIFlagPrototyped, spFlags: 0)
!786 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !787, file: !775, line: 91)
!787 = !DISubprogram(name: "iswcntrl", scope: !778, file: !778, line: 104, type: !285, flags: DIFlagPrototyped, spFlags: 0)
!788 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !789, file: !775, line: 92)
!789 = !DISubprogram(name: "iswctype", scope: !778, file: !778, line: 159, type: !790, flags: DIFlagPrototyped, spFlags: 0)
!790 = !DISubroutineType(types: !791)
!791 = !{!14, !79, !777}
!792 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !793, file: !775, line: 93)
!793 = !DISubprogram(name: "iswdigit", scope: !778, file: !778, line: 108, type: !285, flags: DIFlagPrototyped, spFlags: 0)
!794 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !795, file: !775, line: 94)
!795 = !DISubprogram(name: "iswgraph", scope: !778, file: !778, line: 112, type: !285, flags: DIFlagPrototyped, spFlags: 0)
!796 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !797, file: !775, line: 95)
!797 = !DISubprogram(name: "iswlower", scope: !778, file: !778, line: 117, type: !285, flags: DIFlagPrototyped, spFlags: 0)
!798 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !799, file: !775, line: 96)
!799 = !DISubprogram(name: "iswprint", scope: !778, file: !778, line: 120, type: !285, flags: DIFlagPrototyped, spFlags: 0)
!800 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !801, file: !775, line: 97)
!801 = !DISubprogram(name: "iswpunct", scope: !778, file: !778, line: 125, type: !285, flags: DIFlagPrototyped, spFlags: 0)
!802 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !803, file: !775, line: 98)
!803 = !DISubprogram(name: "iswspace", scope: !778, file: !778, line: 130, type: !285, flags: DIFlagPrototyped, spFlags: 0)
!804 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !805, file: !775, line: 99)
!805 = !DISubprogram(name: "iswupper", scope: !778, file: !778, line: 135, type: !285, flags: DIFlagPrototyped, spFlags: 0)
!806 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !807, file: !775, line: 100)
!807 = !DISubprogram(name: "iswxdigit", scope: !778, file: !778, line: 140, type: !285, flags: DIFlagPrototyped, spFlags: 0)
!808 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !809, file: !775, line: 101)
!809 = !DISubprogram(name: "towctrans", scope: !770, file: !770, line: 55, type: !810, flags: DIFlagPrototyped, spFlags: 0)
!810 = !DISubroutineType(types: !811)
!811 = !{!79, !79, !769}
!812 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !813, file: !775, line: 102)
!813 = !DISubprogram(name: "towlower", scope: !778, file: !778, line: 166, type: !814, flags: DIFlagPrototyped, spFlags: 0)
!814 = !DISubroutineType(types: !815)
!815 = !{!79, !79}
!816 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !817, file: !775, line: 103)
!817 = !DISubprogram(name: "towupper", scope: !778, file: !778, line: 169, type: !814, flags: DIFlagPrototyped, spFlags: 0)
!818 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !819, file: !775, line: 104)
!819 = !DISubprogram(name: "wctrans", scope: !770, file: !770, line: 52, type: !820, flags: DIFlagPrototyped, spFlags: 0)
!820 = !DISubroutineType(types: !821)
!821 = !{!769, !136}
!822 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !823, file: !775, line: 105)
!823 = !DISubprogram(name: "wctype", scope: !778, file: !778, line: 155, type: !824, flags: DIFlagPrototyped, spFlags: 0)
!824 = !DISubroutineType(types: !825)
!825 = !{!777, !136}
!826 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !827, file: !831, line: 51)
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !828, line: 24, baseType: !829)
!828 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "081edea97425b3437dded4a7fe223193")
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !774, line: 37, baseType: !830)
!830 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!831 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cstdint", directory: "")
!832 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !833, file: !831, line: 52)
!833 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !828, line: 25, baseType: !834)
!834 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !774, line: 39, baseType: !835)
!835 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!836 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !837, file: !831, line: 53)
!837 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !828, line: 26, baseType: !773)
!838 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !839, file: !831, line: 54)
!839 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !828, line: 27, baseType: !840)
!840 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !774, line: 44, baseType: !274)
!841 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !842, file: !831, line: 56)
!842 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !843, line: 58, baseType: !830)
!843 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "24103e292ae21916e87130b926c8d2f8")
!844 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !845, file: !831, line: 57)
!845 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !843, line: 60, baseType: !274)
!846 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !847, file: !831, line: 58)
!847 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !843, line: 61, baseType: !274)
!848 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !849, file: !831, line: 59)
!849 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !843, line: 62, baseType: !274)
!850 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !851, file: !831, line: 61)
!851 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !843, line: 43, baseType: !852)
!852 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least8_t", file: !774, line: 52, baseType: !829)
!853 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !854, file: !831, line: 62)
!854 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !843, line: 44, baseType: !855)
!855 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least16_t", file: !774, line: 54, baseType: !834)
!856 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !857, file: !831, line: 63)
!857 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !843, line: 45, baseType: !858)
!858 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least32_t", file: !774, line: 56, baseType: !773)
!859 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !860, file: !831, line: 64)
!860 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !843, line: 46, baseType: !861)
!861 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least64_t", file: !774, line: 58, baseType: !840)
!862 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !863, file: !831, line: 66)
!863 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !843, line: 101, baseType: !864)
!864 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !774, line: 72, baseType: !274)
!865 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !866, file: !831, line: 67)
!866 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !843, line: 87, baseType: !274)
!867 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !868, file: !831, line: 69)
!868 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !869, line: 24, baseType: !870)
!869 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!870 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !774, line: 38, baseType: !871)
!871 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!872 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !873, file: !831, line: 70)
!873 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !869, line: 25, baseType: !874)
!874 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !774, line: 40, baseType: !875)
!875 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!876 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !877, file: !831, line: 71)
!877 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !869, line: 26, baseType: !878)
!878 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !774, line: 42, baseType: !72)
!879 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !880, file: !831, line: 72)
!880 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !869, line: 27, baseType: !881)
!881 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !774, line: 45, baseType: !41)
!882 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !883, file: !831, line: 74)
!883 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !843, line: 71, baseType: !871)
!884 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !885, file: !831, line: 75)
!885 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !843, line: 73, baseType: !41)
!886 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !887, file: !831, line: 76)
!887 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !843, line: 74, baseType: !41)
!888 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !889, file: !831, line: 77)
!889 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !843, line: 75, baseType: !41)
!890 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !891, file: !831, line: 79)
!891 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !843, line: 49, baseType: !892)
!892 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least8_t", file: !774, line: 53, baseType: !870)
!893 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !894, file: !831, line: 80)
!894 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !843, line: 50, baseType: !895)
!895 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least16_t", file: !774, line: 55, baseType: !874)
!896 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !897, file: !831, line: 81)
!897 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !843, line: 51, baseType: !898)
!898 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !774, line: 57, baseType: !878)
!899 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !900, file: !831, line: 82)
!900 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !843, line: 52, baseType: !901)
!901 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least64_t", file: !774, line: 59, baseType: !881)
!902 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !903, file: !831, line: 84)
!903 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !843, line: 102, baseType: !904)
!904 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !774, line: 73, baseType: !41)
!905 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !906, file: !831, line: 85)
!906 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !843, line: 90, baseType: !41)
!907 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !908, file: !911, line: 60)
!908 = !DIDerivedType(tag: DW_TAG_typedef, name: "clock_t", file: !909, line: 7, baseType: !910)
!909 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/clock_t.h", directory: "", checksumkind: CSK_MD5, checksum: "1aade99fd778d1551600c7ca1410b9f1")
!910 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clock_t", file: !774, line: 156, baseType: !274)
!911 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/ctime", directory: "")
!912 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !913, file: !911, line: 61)
!913 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !914, line: 7, baseType: !915)
!914 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!915 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !774, line: 160, baseType: !274)
!916 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !231, file: !911, line: 62)
!917 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !918, file: !911, line: 64)
!918 = !DISubprogram(name: "clock", scope: !919, file: !919, line: 72, type: !920, flags: DIFlagPrototyped, spFlags: 0)
!919 = !DIFile(filename: "/usr/include/time.h", directory: "", checksumkind: CSK_MD5, checksum: "2dc9fb937b28c900f98919b5c35320c2")
!920 = !DISubroutineType(types: !921)
!921 = !{!908}
!922 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !923, file: !911, line: 65)
!923 = !DISubprogram(name: "difftime", scope: !919, file: !919, line: 78, type: !924, flags: DIFlagPrototyped, spFlags: 0)
!924 = !DISubroutineType(types: !925)
!925 = !{!258, !913, !913}
!926 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !927, file: !911, line: 66)
!927 = !DISubprogram(name: "mktime", scope: !919, file: !919, line: 82, type: !928, flags: DIFlagPrototyped, spFlags: 0)
!928 = !DISubroutineType(types: !929)
!929 = !{!913, !930}
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!931 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !932, file: !911, line: 67)
!932 = !DISubprogram(name: "time", scope: !919, file: !919, line: 75, type: !933, flags: DIFlagPrototyped, spFlags: 0)
!933 = !DISubroutineType(types: !934)
!934 = !{!913, !935}
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!936 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !937, file: !911, line: 68)
!937 = !DISubprogram(name: "asctime", scope: !919, file: !919, line: 139, type: !938, flags: DIFlagPrototyped, spFlags: 0)
!938 = !DISubroutineType(types: !939)
!939 = !{!207, !229}
!940 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !941, file: !911, line: 69)
!941 = !DISubprogram(name: "ctime", scope: !919, file: !919, line: 142, type: !942, flags: DIFlagPrototyped, spFlags: 0)
!942 = !DISubroutineType(types: !943)
!943 = !{!207, !944}
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !913)
!946 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !947, file: !911, line: 70)
!947 = !DISubprogram(name: "gmtime", scope: !919, file: !919, line: 119, type: !948, flags: DIFlagPrototyped, spFlags: 0)
!948 = !DISubroutineType(types: !949)
!949 = !{!930, !944}
!950 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !951, file: !911, line: 71)
!951 = !DISubprogram(name: "localtime", scope: !919, file: !919, line: 123, type: !948, flags: DIFlagPrototyped, spFlags: 0)
!952 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !953, file: !911, line: 72)
!953 = !DISubprogram(name: "strftime", scope: !919, file: !919, line: 88, type: !954, flags: DIFlagPrototyped, spFlags: 0)
!954 = !DISubroutineType(types: !955)
!955 = !{!133, !206, !133, !135, !228}
!956 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !957, file: !911, line: 79)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !958, line: 10, size: 128, flags: DIFlagTypePassByValue, elements: !959, identifier: "_ZTS8timespec")
!958 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "33f28095c70788baa6982a79b13f774b")
!959 = !{!960, !961}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !957, file: !958, line: 12, baseType: !915, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !957, file: !958, line: 16, baseType: !962, size: 64, offset: 64)
!962 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !774, line: 196, baseType: !274)
!963 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !60, entity: !964, file: !911, line: 80)
!964 = !DISubprogram(name: "timespec_get", scope: !919, file: !919, line: 257, type: !965, flags: DIFlagPrototyped, spFlags: 0)
!965 = !DISubroutineType(types: !966)
!966 = !{!14, !967, !14}
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!968 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !969, entity: !970, file: !972, line: 1447)
!969 = !DINamespace(name: "chrono", scope: !60)
!970 = !DINamespace(name: "chrono_literals", scope: !971, exportSymbols: true)
!971 = !DINamespace(name: "literals", scope: !60, exportSymbols: true)
!972 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/chrono.h", directory: "")
!973 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !2, entity: !60, file: !7, line: 4)
!974 = !{i32 7, !"Dwarf Version", i32 5}
!975 = !{i32 2, !"Debug Info Version", i32 3}
!976 = !{i32 1, !"wchar_size", i32 4}
!977 = !{i32 8, !"PIC Level", i32 2}
!978 = !{i32 7, !"PIE Level", i32 2}
!979 = !{i32 7, !"uwtable", i32 2}
!980 = !{i32 7, !"frame-pointer", i32 2}
!981 = !{!"clang version 16.0.0"}
!982 = distinct !DISubprogram(name: "runThread1", linkageName: "_Z10runThread1Pv", scope: !7, file: !7, line: 37, type: !983, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !985)
!983 = !DISubroutineType(types: !984)
!984 = !{!184, !184}
!985 = !{}
!986 = !DILocalVariable(name: "arg", arg: 1, scope: !982, file: !7, line: 37, type: !184)
!987 = !DILocation(line: 37, column: 24, scope: !982)
!988 = !DILocation(line: 38, column: 5, scope: !982)
!989 = !DILocalVariable(name: "basePtr", scope: !982, file: !7, line: 39, type: !5)
!990 = !DILocation(line: 39, column: 8, scope: !982)
!991 = !DILocation(line: 39, column: 34, scope: !982)
!992 = !DILocation(line: 40, column: 5, scope: !982)
!993 = !DILocation(line: 40, column: 14, scope: !982)
!994 = !DILocalVariable(name: "a1Ptr", scope: !982, file: !7, line: 41, type: !20)
!995 = !DILocation(line: 41, column: 9, scope: !982)
!996 = !DILocation(line: 41, column: 35, scope: !982)
!997 = !DILocation(line: 41, column: 17, scope: !982)
!998 = !DILocation(line: 43, column: 9, scope: !982)
!999 = !DILocation(line: 43, column: 16, scope: !982)
!1000 = !DILocation(line: 45, column: 5, scope: !982)
!1001 = distinct !DISubprogram(name: "runThread2", linkageName: "_Z10runThread2Pv", scope: !7, file: !7, line: 48, type: !983, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !985)
!1002 = !DILocalVariable(name: "arg", arg: 1, scope: !1001, file: !7, line: 48, type: !184)
!1003 = !DILocation(line: 48, column: 24, scope: !1001)
!1004 = !DILocation(line: 49, column: 5, scope: !1001)
!1005 = !DILocalVariable(name: "basePtr", scope: !1001, file: !7, line: 50, type: !5)
!1006 = !DILocation(line: 50, column: 8, scope: !1001)
!1007 = !DILocation(line: 50, column: 34, scope: !1001)
!1008 = !DILocation(line: 51, column: 5, scope: !1001)
!1009 = !DILocation(line: 51, column: 14, scope: !1001)
!1010 = !DILocalVariable(name: "a2Ptr", scope: !1001, file: !7, line: 52, type: !28)
!1011 = !DILocation(line: 52, column: 9, scope: !1001)
!1012 = !DILocation(line: 52, column: 35, scope: !1001)
!1013 = !DILocation(line: 52, column: 17, scope: !1001)
!1014 = !DILocation(line: 54, column: 9, scope: !1001)
!1015 = !DILocation(line: 54, column: 16, scope: !1001)
!1016 = !DILocation(line: 56, column: 5, scope: !1001)
!1017 = distinct !DISubprogram(name: "m2", linkageName: "_ZN1A2m2Ev", scope: !6, file: !7, line: 14, type: !16, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !19, retainedNodes: !985)
!1018 = !DILocalVariable(name: "this", arg: 1, scope: !1017, type: !5, flags: DIFlagArtificial | DIFlagObjectPointer)
!1019 = !DILocation(line: 0, scope: !1017)
!1020 = !DILocation(line: 15, column: 19, scope: !1017)
!1021 = !DILocation(line: 16, column: 5, scope: !1017)
!1022 = distinct !DISubprogram(name: "m2", linkageName: "_ZN2A22m2Ev", scope: !29, file: !7, line: 32, type: !33, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !32, retainedNodes: !985)
!1023 = !DILocalVariable(name: "this", arg: 1, scope: !1022, type: !28, flags: DIFlagArtificial | DIFlagObjectPointer)
!1024 = !DILocation(line: 0, scope: !1022)
!1025 = !DILocation(line: 33, column: 19, scope: !1022)
!1026 = !DILocation(line: 34, column: 5, scope: !1022)
!1027 = distinct !DISubprogram(name: "createThread", linkageName: "_Z12createThreadv", scope: !7, file: !7, line: 59, type: !425, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !985)
!1028 = !DILocalVariable(name: "a1Obj", scope: !1027, file: !7, line: 60, type: !21)
!1029 = !DILocation(line: 60, column: 8, scope: !1027)
!1030 = !DILocalVariable(name: "a2Obj", scope: !1027, file: !7, line: 61, type: !29)
!1031 = !DILocation(line: 61, column: 8, scope: !1027)
!1032 = !DILocation(line: 63, column: 5, scope: !1027)
!1033 = !DILocation(line: 64, column: 18, scope: !1027)
!1034 = !DILocation(line: 64, column: 5, scope: !1027)
!1035 = !DILocation(line: 66, column: 5, scope: !1027)
!1036 = !DILocation(line: 67, column: 18, scope: !1027)
!1037 = !DILocation(line: 67, column: 5, scope: !1027)
!1038 = !DILocation(line: 68, column: 1, scope: !1027)
!1039 = distinct !DISubprogram(name: "A1", linkageName: "_ZN2A1C2Ev", scope: !21, file: !7, line: 22, type: !25, scopeLine: 22, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !1040, retainedNodes: !985)
!1040 = !DISubprogram(name: "A1", scope: !21, type: !25, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!1041 = !DILocalVariable(name: "this", arg: 1, scope: !1039, type: !20, flags: DIFlagArtificial | DIFlagObjectPointer)
!1042 = !DILocation(line: 0, scope: !1039)
!1043 = !DILocation(line: 22, column: 7, scope: !1039)
!1044 = distinct !DISubprogram(name: "A2", linkageName: "_ZN2A2C2Ev", scope: !29, file: !7, line: 30, type: !33, scopeLine: 30, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !1045, retainedNodes: !985)
!1045 = !DISubprogram(name: "A2", scope: !29, type: !33, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!1046 = !DILocalVariable(name: "this", arg: 1, scope: !1044, type: !28, flags: DIFlagArtificial | DIFlagObjectPointer)
!1047 = !DILocation(line: 0, scope: !1044)
!1048 = !DILocation(line: 30, column: 7, scope: !1044)
!1049 = distinct !DISubprogram(name: "main", scope: !7, file: !7, line: 70, type: !12, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !985)
!1050 = !DILocation(line: 71, column: 5, scope: !1049)
!1051 = !DILocation(line: 72, column: 5, scope: !1049)
!1052 = distinct !DISubprogram(name: "A", linkageName: "_ZN1AC2Ev", scope: !6, file: !7, line: 8, type: !16, scopeLine: 8, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !1053, retainedNodes: !985)
!1053 = !DISubprogram(name: "A", scope: !6, type: !16, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!1054 = !DILocalVariable(name: "this", arg: 1, scope: !1052, type: !5, flags: DIFlagArtificial | DIFlagObjectPointer)
!1055 = !DILocation(line: 0, scope: !1052)
!1056 = !DILocation(line: 8, column: 7, scope: !1052)
!1057 = distinct !DISubprogram(name: "m1", linkageName: "_ZN2A12m1Ev", scope: !21, file: !7, line: 24, type: !25, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !24, retainedNodes: !985)
!1058 = !DILocalVariable(name: "this", arg: 1, scope: !1057, type: !20, flags: DIFlagArtificial | DIFlagObjectPointer)
!1059 = !DILocation(line: 0, scope: !1057)
!1060 = !DILocation(line: 25, column: 19, scope: !1057)
!1061 = !DILocation(line: 26, column: 5, scope: !1057)
!1062 = distinct !DISubprogram(name: "m1", linkageName: "_ZN1A2m1Ev", scope: !6, file: !7, line: 10, type: !16, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !15, retainedNodes: !985)
!1063 = !DILocalVariable(name: "this", arg: 1, scope: !1062, type: !5, flags: DIFlagArtificial | DIFlagObjectPointer)
!1064 = !DILocation(line: 0, scope: !1062)
!1065 = !DILocation(line: 11, column: 19, scope: !1062)
!1066 = !DILocation(line: 12, column: 5, scope: !1062)
