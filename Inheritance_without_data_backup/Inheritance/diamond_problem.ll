; ModuleID = '/home/cs22mtech12008/Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Inheritance/diamond_problem.cpp'
source_filename = "/home/cs22mtech12008/Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Inheritance/diamond_problem.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%class.A12 = type { %class.A1, %class.A2 }
%class.A1 = type { %class.A }
%class.A = type { ptr }
%class.A2 = type { %class.A }

$_ZN3A12C1Ev = comdat any

$_ZN1AC2Ev = comdat any

$_ZN2A1C2Ev = comdat any

$_ZN2A2C2Ev = comdat any

$_ZN2A12m1Ev = comdat any

$_ZN1A2m1Ev = comdat any

$_ZN3A122m1Ev = comdat any

$_ZTv0_n24_N2A12m1Ev = comdat any

$_ZTv0_n24_N3A122m1Ev = comdat any

$_ZTV3A12 = comdat any

$_ZTT3A12 = comdat any

$_ZTC3A120_2A1 = comdat any

$_ZTS2A1 = comdat any

$_ZTS1A = comdat any

$_ZTI1A = comdat any

$_ZTI2A1 = comdat any

$_ZTC3A128_2A2 = comdat any

$_ZTS2A2 = comdat any

$_ZTI2A2 = comdat any

$_ZTS3A12 = comdat any

$_ZTI3A12 = comdat any

$_ZTV1A = comdat any

@t1 = dso_local global i64 0, align 8, !dbg !0
@_ZTV3A12 = linkonce_odr dso_local unnamed_addr constant { [5 x ptr], [5 x ptr] } { [5 x ptr] [ptr null, ptr null, ptr null, ptr @_ZTI3A12, ptr @_ZN3A122m1Ev], [5 x ptr] [ptr inttoptr (i64 -8 to ptr), ptr inttoptr (i64 -8 to ptr), ptr inttoptr (i64 -8 to ptr), ptr @_ZTI3A12, ptr null] }, comdat, align 8
@_ZTT3A12 = linkonce_odr unnamed_addr constant [7 x ptr] [ptr getelementptr inbounds ({ [5 x ptr], [5 x ptr] }, ptr @_ZTV3A12, i32 0, inrange i32 0, i32 4), ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTC3A120_2A1, i32 0, inrange i32 0, i32 4), ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTC3A120_2A1, i32 0, inrange i32 0, i32 4), ptr getelementptr inbounds ({ [5 x ptr], [4 x ptr] }, ptr @_ZTC3A128_2A2, i32 0, inrange i32 0, i32 4), ptr getelementptr inbounds ({ [5 x ptr], [4 x ptr] }, ptr @_ZTC3A128_2A2, i32 0, inrange i32 1, i32 3), ptr getelementptr inbounds ({ [5 x ptr], [5 x ptr] }, ptr @_ZTV3A12, i32 0, inrange i32 0, i32 4), ptr getelementptr inbounds ({ [5 x ptr], [5 x ptr] }, ptr @_ZTV3A12, i32 0, inrange i32 1, i32 4)], comdat, align 8
@_ZTC3A120_2A1 = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr null, ptr null, ptr @_ZTI2A1, ptr @_ZN2A12m1Ev] }, comdat, align 8
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global ptr
@_ZTS2A1 = linkonce_odr dso_local constant [4 x i8] c"2A1\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global ptr
@_ZTS1A = linkonce_odr dso_local constant [3 x i8] c"1A\00", comdat, align 1
@_ZTI1A = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS1A }, comdat, align 8
@_ZTI2A1 = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTS2A1, i32 0, i32 1, ptr @_ZTI1A, i64 -8189 }, comdat, align 8
@_ZTC3A128_2A2 = linkonce_odr dso_local unnamed_addr constant { [5 x ptr], [4 x ptr] } { [5 x ptr] [ptr inttoptr (i64 -8 to ptr), ptr inttoptr (i64 -8 to ptr), ptr null, ptr @_ZTI2A2, ptr null], [4 x ptr] [ptr null, ptr inttoptr (i64 8 to ptr), ptr @_ZTI2A2, ptr @_ZN1A2m1Ev] }, comdat, align 8
@_ZTS2A2 = linkonce_odr dso_local constant [4 x i8] c"2A2\00", comdat, align 1
@_ZTI2A2 = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTS2A2, i32 0, i32 1, ptr @_ZTI1A, i64 -8189 }, comdat, align 8
@_ZTS3A12 = linkonce_odr dso_local constant [5 x i8] c"3A12\00", comdat, align 1
@_ZTI3A12 = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTS3A12, i32 2, i32 2, ptr @_ZTI2A1, i64 2, ptr @_ZTI2A2, i64 2050 }, comdat, align 8
@_ZTV1A = linkonce_odr dso_local unnamed_addr constant { [3 x ptr] } { [3 x ptr] [ptr null, ptr @_ZTI1A, ptr @_ZN1A2m1Ev] }, comdat, align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [13 x i8] c"A1 class m1\0A\00", align 1, !dbg !21
@.str.1 = private unnamed_addr constant [15 x i8] c"Base class m1\0A\00", align 1, !dbg !28
@.str.2 = private unnamed_addr constant [14 x i8] c"A12 class m1\0A\00", align 1, !dbg !33

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef ptr @_Z9runThreadPv(ptr noundef %0) #0 !dbg !817 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !821, metadata !DIExpression()), !dbg !822
  call void @llvm.dbg.declare(metadata ptr %3, metadata !823, metadata !DIExpression()), !dbg !824
  %4 = load ptr, ptr %2, align 8, !dbg !825
  store ptr %4, ptr %3, align 8, !dbg !824
  %5 = load ptr, ptr %3, align 8, !dbg !826
  %6 = load ptr, ptr %5, align 8, !dbg !827
  %7 = getelementptr inbounds ptr, ptr %6, i64 0, !dbg !827
  %8 = load ptr, ptr %7, align 8, !dbg !827
  call void %8(ptr noundef nonnull align 8 dereferenceable(8) %5), !dbg !827
  ret ptr null, !dbg !828
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_Z12createThreadv() #2 !dbg !829 {
  %1 = alloca %class.A12, align 8
  %2 = alloca ptr, align 8
  call void @llvm.dbg.declare(metadata ptr %1, metadata !830, metadata !DIExpression()), !dbg !853
  call void @_ZN3A12C1Ev(ptr noundef nonnull align 8 dereferenceable(16) %1) #8, !dbg !853
  call void @llvm.dbg.declare(metadata ptr %2, metadata !854, metadata !DIExpression()), !dbg !856
  store ptr %1, ptr %2, align 8, !dbg !856
  %3 = load ptr, ptr %2, align 8, !dbg !857
  %4 = call i32 @pthread_create(ptr noundef @t1, ptr noundef null, ptr noundef @_Z9runThreadPv, ptr noundef %3) #8, !dbg !858
  ret void, !dbg !859
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN3A12C1Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 !dbg !860 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !862, metadata !DIExpression()), !dbg !863
  %3 = load ptr, ptr %2, align 8
  call void @_ZN1AC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #8, !dbg !864
  call void @_ZN2A1C2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef getelementptr inbounds ([7 x ptr], ptr @_ZTT3A12, i64 0, i64 1)) #8, !dbg !864
  %4 = getelementptr inbounds i8, ptr %3, i64 8, !dbg !864
  call void @_ZN2A2C2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef getelementptr inbounds ([7 x ptr], ptr @_ZTT3A12, i64 0, i64 3)) #8, !dbg !864
  store ptr getelementptr inbounds ({ [5 x ptr], [5 x ptr] }, ptr @_ZTV3A12, i32 0, inrange i32 0, i32 4), ptr %3, align 8, !dbg !864
  store ptr getelementptr inbounds ({ [5 x ptr], [5 x ptr] }, ptr @_ZTV3A12, i32 0, inrange i32 0, i32 4), ptr %3, align 8, !dbg !864
  %5 = getelementptr inbounds i8, ptr %3, i64 8, !dbg !864
  store ptr getelementptr inbounds ({ [5 x ptr], [5 x ptr] }, ptr @_ZTV3A12, i32 0, inrange i32 1, i32 4), ptr %5, align 8, !dbg !864
  ret void, !dbg !864
}

; Function Attrs: nounwind
declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main() #5 !dbg !865 {
  %1 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  call void @_Z12createThreadv(), !dbg !866
  %2 = load i64, ptr @t1, align 8, !dbg !867
  %3 = call i32 @pthread_join(i64 noundef %2, ptr noundef null), !dbg !868
  ret i32 0, !dbg !869
}

declare i32 @pthread_join(i64 noundef, ptr noundef) #6

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN1AC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 !dbg !870 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !872, metadata !DIExpression()), !dbg !873
  %3 = load ptr, ptr %2, align 8
  store ptr getelementptr inbounds ({ [3 x ptr] }, ptr @_ZTV1A, i32 0, inrange i32 0, i32 2), ptr %3, align 8, !dbg !874
  ret void, !dbg !874
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN2A1C2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 !dbg !875 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !877, metadata !DIExpression()), !dbg !879
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !880, metadata !DIExpression()), !dbg !879
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = load ptr, ptr %6, align 8, !dbg !882
  store ptr %7, ptr %5, align 8, !dbg !882
  %8 = getelementptr inbounds ptr, ptr %6, i64 1, !dbg !882
  %9 = load ptr, ptr %8, align 8, !dbg !882
  %10 = load ptr, ptr %5, align 8, !dbg !882
  %11 = getelementptr i8, ptr %10, i64 -32, !dbg !882
  %12 = load i64, ptr %11, align 8, !dbg !882
  %13 = getelementptr inbounds i8, ptr %5, i64 %12, !dbg !882
  store ptr %9, ptr %13, align 8, !dbg !882
  ret void, !dbg !882
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN2A2C2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 !dbg !883 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !885, metadata !DIExpression()), !dbg !887
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !888, metadata !DIExpression()), !dbg !887
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = load ptr, ptr %6, align 8, !dbg !889
  store ptr %7, ptr %5, align 8, !dbg !889
  %8 = getelementptr inbounds ptr, ptr %6, i64 1, !dbg !889
  %9 = load ptr, ptr %8, align 8, !dbg !889
  %10 = load ptr, ptr %5, align 8, !dbg !889
  %11 = getelementptr i8, ptr %10, i64 -32, !dbg !889
  %12 = load i64, ptr %11, align 8, !dbg !889
  %13 = getelementptr inbounds i8, ptr %5, i64 %12, !dbg !889
  store ptr %9, ptr %13, align 8, !dbg !889
  ret void, !dbg !889
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN2A12m1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !dbg !890 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !891, metadata !DIExpression()), !dbg !892
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str), !dbg !893
  ret void, !dbg !894
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN1A2m1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !dbg !895 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !896, metadata !DIExpression()), !dbg !897
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.1), !dbg !898
  ret void, !dbg !899
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN3A122m1Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 !dbg !900 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !901, metadata !DIExpression()), !dbg !902
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.2), !dbg !903
  ret void, !dbg !904
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #6

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZTv0_n24_N2A12m1Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 !dbg !905 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8, !dbg !907
  %4 = load ptr, ptr %3, align 8, !dbg !907
  %5 = getelementptr inbounds i8, ptr %4, i64 -24, !dbg !907
  %6 = load i64, ptr %5, align 8, !dbg !907
  %7 = getelementptr inbounds i8, ptr %3, i64 %6, !dbg !907
  tail call void @_ZN2A12m1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7), !dbg !907
  ret void, !dbg !907
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZTv0_n24_N3A122m1Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 !dbg !908 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8, !dbg !909
  %4 = load ptr, ptr %3, align 8, !dbg !909
  %5 = getelementptr inbounds i8, ptr %4, i64 -24, !dbg !909
  %6 = load i64, ptr %5, align 8, !dbg !909
  %7 = getelementptr inbounds i8, ptr %3, i64 %6, !dbg !909
  tail call void @_ZN3A122m1Ev(ptr noundef nonnull align 8 dereferenceable(16) %7), !dbg !909
  ret void, !dbg !909
}

attributes #0 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!809, !810, !811, !812, !813, !814, !815}
!llvm.ident = !{!816}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "t1", scope: !2, file: !7, line: 37, type: !807, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !3, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !20, imports: !38, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/cs22mtech12008/Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Inheritance/diamond_problem.cpp", directory: "/home/cs22mtech12008", checksumkind: CSK_MD5, checksum: "17cac47eb15f62c34df05d6f11712b2b")
!4 = !{!5}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "A", file: !7, line: 5, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !8, vtableHolder: !6, identifier: "_ZTS1A")
!7 = !DIFile(filename: "Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Inheritance/diamond_problem.cpp", directory: "/home/cs22mtech12008", checksumkind: CSK_MD5, checksum: "17cac47eb15f62c34df05d6f11712b2b")
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
!20 = !{!0, !21, !28, !33}
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(scope: null, file: !7, line: 19, type: !23, isLocal: true, isDefinition: true)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 104, elements: !26)
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!25 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!26 = !{!27}
!27 = !DISubrange(count: 13)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(scope: null, file: !7, line: 8, type: !30, isLocal: true, isDefinition: true)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 120, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 15)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !7, line: 33, type: !35, isLocal: true, isDefinition: true)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 112, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 14)
!38 = !{!39, !58, !61, !66, !74, !82, !86, !93, !97, !101, !103, !105, !109, !120, !124, !130, !136, !138, !142, !146, !150, !154, !167, !169, !173, !177, !181, !183, !189, !193, !197, !199, !201, !205, !213, !217, !221, !225, !227, !233, !235, !242, !247, !251, !256, !260, !264, !268, !270, !272, !276, !280, !284, !286, !290, !294, !296, !298, !302, !308, !313, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !332, !336, !341, !345, !349, !354, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !390, !394, !398, !404, !408, !412, !417, !419, !423, !427, !431, !441, !443, !447, !451, !455, !459, !463, !467, !471, !475, !479, !483, !487, !489, !491, !495, !499, !505, !509, !513, !515, !519, !523, !529, !531, !535, !539, !543, !547, !551, !555, !559, !560, !561, !562, !564, !565, !566, !567, !568, !569, !570, !574, !580, !585, !589, !591, !593, !595, !597, !604, !608, !612, !616, !620, !624, !629, !633, !635, !639, !645, !649, !654, !656, !658, !662, !666, !668, !670, !672, !674, !678, !680, !682, !686, !690, !694, !698, !702, !706, !708, !712, !716, !720, !724, !726, !728, !732, !736, !737, !738, !739, !740, !741, !749, !757, !760, !761, !763, !765, !767, !769, !773, !775, !777, !779, !781, !783, !785, !787, !789, !793, !797, !799, !803}
!39 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !41, file: !57, line: 64)
!40 = !DINamespace(name: "std", scope: null)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !42, line: 6, baseType: !43)
!42 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !44, line: 21, baseType: !45)
!44 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !44, line: 13, size: 64, flags: DIFlagTypePassByValue, elements: !46, identifier: "_ZTS11__mbstate_t")
!46 = !{!47, !48}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !45, file: !44, line: 15, baseType: !14, size: 32)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !45, file: !44, line: 20, baseType: !49, size: 32, offset: 32)
!49 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !45, file: !44, line: 16, size: 32, flags: DIFlagTypePassByValue, elements: !50, identifier: "_ZTSN11__mbstate_tUt_E")
!50 = !{!51, !53}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !49, file: !44, line: 18, baseType: !52, size: 32)
!52 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !49, file: !44, line: 19, baseType: !54, size: 32)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 32, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 4)
!57 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cwchar", directory: "")
!58 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !59, file: !57, line: 141)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !60, line: 20, baseType: !52)
!60 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!61 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !62, file: !57, line: 143)
!62 = !DISubprogram(name: "btowc", scope: !63, file: !63, line: 284, type: !64, flags: DIFlagPrototyped, spFlags: 0)
!63 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "8900d9ecbbe40d052c41becfbc5b5531")
!64 = !DISubroutineType(types: !65)
!65 = !{!59, !14}
!66 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !67, file: !57, line: 144)
!67 = !DISubprogram(name: "fgetwc", scope: !63, file: !63, line: 726, type: !68, flags: DIFlagPrototyped, spFlags: 0)
!68 = !DISubroutineType(types: !69)
!69 = !{!59, !70}
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !72, line: 5, baseType: !73)
!72 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "72a8fe90981f484acae7c6f3dfc5c2b7")
!73 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !72, line: 4, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS8_IO_FILE")
!74 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !75, file: !57, line: 145)
!75 = !DISubprogram(name: "fgetws", scope: !63, file: !63, line: 755, type: !76, flags: DIFlagPrototyped, spFlags: 0)
!76 = !DISubroutineType(types: !77)
!77 = !{!78, !80, !14, !81}
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!80 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !78)
!81 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !70)
!82 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !83, file: !57, line: 146)
!83 = !DISubprogram(name: "fputwc", scope: !63, file: !63, line: 740, type: !84, flags: DIFlagPrototyped, spFlags: 0)
!84 = !DISubroutineType(types: !85)
!85 = !{!59, !79, !70}
!86 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !87, file: !57, line: 147)
!87 = !DISubprogram(name: "fputws", scope: !63, file: !63, line: 762, type: !88, flags: DIFlagPrototyped, spFlags: 0)
!88 = !DISubroutineType(types: !89)
!89 = !{!14, !90, !81}
!90 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !91)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!93 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !94, file: !57, line: 148)
!94 = !DISubprogram(name: "fwide", scope: !63, file: !63, line: 573, type: !95, flags: DIFlagPrototyped, spFlags: 0)
!95 = !DISubroutineType(types: !96)
!96 = !{!14, !70, !14}
!97 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !98, file: !57, line: 149)
!98 = !DISubprogram(name: "fwprintf", scope: !63, file: !63, line: 580, type: !99, flags: DIFlagPrototyped, spFlags: 0)
!99 = !DISubroutineType(types: !100)
!100 = !{!14, !81, !90, null}
!101 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !102, file: !57, line: 150)
!102 = !DISubprogram(name: "fwscanf", linkageName: "__isoc99_fwscanf", scope: !63, file: !63, line: 640, type: !99, flags: DIFlagPrototyped, spFlags: 0)
!103 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !104, file: !57, line: 151)
!104 = !DISubprogram(name: "getwc", scope: !63, file: !63, line: 727, type: !68, flags: DIFlagPrototyped, spFlags: 0)
!105 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !106, file: !57, line: 152)
!106 = !DISubprogram(name: "getwchar", scope: !63, file: !63, line: 733, type: !107, flags: DIFlagPrototyped, spFlags: 0)
!107 = !DISubroutineType(types: !108)
!108 = !{!59}
!109 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !110, file: !57, line: 153)
!110 = !DISubprogram(name: "mbrlen", scope: !63, file: !63, line: 307, type: !111, flags: DIFlagPrototyped, spFlags: 0)
!111 = !DISubroutineType(types: !112)
!112 = !{!113, !116, !113, !118}
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !114, line: 46, baseType: !115)
!114 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/cs22mtech12008", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!115 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!116 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !117)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !119)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!120 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !121, file: !57, line: 154)
!121 = !DISubprogram(name: "mbrtowc", scope: !63, file: !63, line: 296, type: !122, flags: DIFlagPrototyped, spFlags: 0)
!122 = !DISubroutineType(types: !123)
!123 = !{!113, !80, !116, !113, !118}
!124 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !125, file: !57, line: 155)
!125 = !DISubprogram(name: "mbsinit", scope: !63, file: !63, line: 292, type: !126, flags: DIFlagPrototyped, spFlags: 0)
!126 = !DISubroutineType(types: !127)
!127 = !{!14, !128}
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!130 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !131, file: !57, line: 156)
!131 = !DISubprogram(name: "mbsrtowcs", scope: !63, file: !63, line: 337, type: !132, flags: DIFlagPrototyped, spFlags: 0)
!132 = !DISubroutineType(types: !133)
!133 = !{!113, !80, !134, !113, !118}
!134 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !135)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!136 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !137, file: !57, line: 157)
!137 = !DISubprogram(name: "putwc", scope: !63, file: !63, line: 741, type: !84, flags: DIFlagPrototyped, spFlags: 0)
!138 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !139, file: !57, line: 158)
!139 = !DISubprogram(name: "putwchar", scope: !63, file: !63, line: 747, type: !140, flags: DIFlagPrototyped, spFlags: 0)
!140 = !DISubroutineType(types: !141)
!141 = !{!59, !79}
!142 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !143, file: !57, line: 160)
!143 = !DISubprogram(name: "swprintf", scope: !63, file: !63, line: 590, type: !144, flags: DIFlagPrototyped, spFlags: 0)
!144 = !DISubroutineType(types: !145)
!145 = !{!14, !80, !113, !90, null}
!146 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !147, file: !57, line: 162)
!147 = !DISubprogram(name: "swscanf", linkageName: "__isoc99_swscanf", scope: !63, file: !63, line: 647, type: !148, flags: DIFlagPrototyped, spFlags: 0)
!148 = !DISubroutineType(types: !149)
!149 = !{!14, !90, !90, null}
!150 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !151, file: !57, line: 163)
!151 = !DISubprogram(name: "ungetwc", scope: !63, file: !63, line: 770, type: !152, flags: DIFlagPrototyped, spFlags: 0)
!152 = !DISubroutineType(types: !153)
!153 = !{!59, !59, !70}
!154 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !155, file: !57, line: 164)
!155 = !DISubprogram(name: "vfwprintf", scope: !63, file: !63, line: 598, type: !156, flags: DIFlagPrototyped, spFlags: 0)
!156 = !DISubroutineType(types: !157)
!157 = !{!14, !81, !90, !158}
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, flags: DIFlagTypePassByValue, elements: !160, identifier: "_ZTS13__va_list_tag")
!160 = !{!161, !163, !164, !166}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !159, file: !162, baseType: !52, size: 32)
!162 = !DIFile(filename: "Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Inheritance/diamond_problem.cpp", directory: "/home/cs22mtech12008")
!163 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !159, file: !162, baseType: !52, size: 32, offset: 32)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !159, file: !162, baseType: !165, size: 64, offset: 64)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !159, file: !162, baseType: !165, size: 64, offset: 128)
!167 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !168, file: !57, line: 166)
!168 = !DISubprogram(name: "vfwscanf", linkageName: "__isoc99_vfwscanf", scope: !63, file: !63, line: 693, type: !156, flags: DIFlagPrototyped, spFlags: 0)
!169 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !170, file: !57, line: 169)
!170 = !DISubprogram(name: "vswprintf", scope: !63, file: !63, line: 611, type: !171, flags: DIFlagPrototyped, spFlags: 0)
!171 = !DISubroutineType(types: !172)
!172 = !{!14, !80, !113, !90, !158}
!173 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !174, file: !57, line: 172)
!174 = !DISubprogram(name: "vswscanf", linkageName: "__isoc99_vswscanf", scope: !63, file: !63, line: 700, type: !175, flags: DIFlagPrototyped, spFlags: 0)
!175 = !DISubroutineType(types: !176)
!176 = !{!14, !90, !90, !158}
!177 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !178, file: !57, line: 174)
!178 = !DISubprogram(name: "vwprintf", scope: !63, file: !63, line: 606, type: !179, flags: DIFlagPrototyped, spFlags: 0)
!179 = !DISubroutineType(types: !180)
!180 = !{!14, !90, !158}
!181 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !182, file: !57, line: 176)
!182 = !DISubprogram(name: "vwscanf", linkageName: "__isoc99_vwscanf", scope: !63, file: !63, line: 697, type: !179, flags: DIFlagPrototyped, spFlags: 0)
!183 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !184, file: !57, line: 178)
!184 = !DISubprogram(name: "wcrtomb", scope: !63, file: !63, line: 301, type: !185, flags: DIFlagPrototyped, spFlags: 0)
!185 = !DISubroutineType(types: !186)
!186 = !{!113, !187, !79, !118}
!187 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !188)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!189 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !190, file: !57, line: 179)
!190 = !DISubprogram(name: "wcscat", scope: !63, file: !63, line: 97, type: !191, flags: DIFlagPrototyped, spFlags: 0)
!191 = !DISubroutineType(types: !192)
!192 = !{!78, !80, !90}
!193 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !194, file: !57, line: 180)
!194 = !DISubprogram(name: "wcscmp", scope: !63, file: !63, line: 106, type: !195, flags: DIFlagPrototyped, spFlags: 0)
!195 = !DISubroutineType(types: !196)
!196 = !{!14, !91, !91}
!197 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !198, file: !57, line: 181)
!198 = !DISubprogram(name: "wcscoll", scope: !63, file: !63, line: 131, type: !195, flags: DIFlagPrototyped, spFlags: 0)
!199 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !200, file: !57, line: 182)
!200 = !DISubprogram(name: "wcscpy", scope: !63, file: !63, line: 87, type: !191, flags: DIFlagPrototyped, spFlags: 0)
!201 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !202, file: !57, line: 183)
!202 = !DISubprogram(name: "wcscspn", scope: !63, file: !63, line: 187, type: !203, flags: DIFlagPrototyped, spFlags: 0)
!203 = !DISubroutineType(types: !204)
!204 = !{!113, !91, !91}
!205 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !206, file: !57, line: 184)
!206 = !DISubprogram(name: "wcsftime", scope: !63, file: !63, line: 834, type: !207, flags: DIFlagPrototyped, spFlags: 0)
!207 = !DISubroutineType(types: !208)
!208 = !{!113, !80, !113, !90, !209}
!209 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !212)
!212 = !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !63, line: 83, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS2tm")
!213 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !214, file: !57, line: 185)
!214 = !DISubprogram(name: "wcslen", scope: !63, file: !63, line: 222, type: !215, flags: DIFlagPrototyped, spFlags: 0)
!215 = !DISubroutineType(types: !216)
!216 = !{!113, !91}
!217 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !218, file: !57, line: 186)
!218 = !DISubprogram(name: "wcsncat", scope: !63, file: !63, line: 101, type: !219, flags: DIFlagPrototyped, spFlags: 0)
!219 = !DISubroutineType(types: !220)
!220 = !{!78, !80, !90, !113}
!221 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !222, file: !57, line: 187)
!222 = !DISubprogram(name: "wcsncmp", scope: !63, file: !63, line: 109, type: !223, flags: DIFlagPrototyped, spFlags: 0)
!223 = !DISubroutineType(types: !224)
!224 = !{!14, !91, !91, !113}
!225 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !226, file: !57, line: 188)
!226 = !DISubprogram(name: "wcsncpy", scope: !63, file: !63, line: 92, type: !219, flags: DIFlagPrototyped, spFlags: 0)
!227 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !228, file: !57, line: 189)
!228 = !DISubprogram(name: "wcsrtombs", scope: !63, file: !63, line: 343, type: !229, flags: DIFlagPrototyped, spFlags: 0)
!229 = !DISubroutineType(types: !230)
!230 = !{!113, !187, !231, !113, !118}
!231 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !232)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!233 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !234, file: !57, line: 190)
!234 = !DISubprogram(name: "wcsspn", scope: !63, file: !63, line: 191, type: !203, flags: DIFlagPrototyped, spFlags: 0)
!235 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !236, file: !57, line: 191)
!236 = !DISubprogram(name: "wcstod", scope: !63, file: !63, line: 377, type: !237, flags: DIFlagPrototyped, spFlags: 0)
!237 = !DISubroutineType(types: !238)
!238 = !{!239, !90, !240}
!239 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!240 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !241)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!242 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !243, file: !57, line: 193)
!243 = !DISubprogram(name: "wcstof", scope: !63, file: !63, line: 382, type: !244, flags: DIFlagPrototyped, spFlags: 0)
!244 = !DISubroutineType(types: !245)
!245 = !{!246, !90, !240}
!246 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!247 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !248, file: !57, line: 195)
!248 = !DISubprogram(name: "wcstok", scope: !63, file: !63, line: 217, type: !249, flags: DIFlagPrototyped, spFlags: 0)
!249 = !DISubroutineType(types: !250)
!250 = !{!78, !80, !90, !240}
!251 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !252, file: !57, line: 196)
!252 = !DISubprogram(name: "wcstol", scope: !63, file: !63, line: 428, type: !253, flags: DIFlagPrototyped, spFlags: 0)
!253 = !DISubroutineType(types: !254)
!254 = !{!255, !90, !240, !14}
!255 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!256 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !257, file: !57, line: 197)
!257 = !DISubprogram(name: "wcstoul", scope: !63, file: !63, line: 433, type: !258, flags: DIFlagPrototyped, spFlags: 0)
!258 = !DISubroutineType(types: !259)
!259 = !{!115, !90, !240, !14}
!260 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !261, file: !57, line: 198)
!261 = !DISubprogram(name: "wcsxfrm", scope: !63, file: !63, line: 135, type: !262, flags: DIFlagPrototyped, spFlags: 0)
!262 = !DISubroutineType(types: !263)
!263 = !{!113, !80, !90, !113}
!264 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !265, file: !57, line: 199)
!265 = !DISubprogram(name: "wctob", scope: !63, file: !63, line: 288, type: !266, flags: DIFlagPrototyped, spFlags: 0)
!266 = !DISubroutineType(types: !267)
!267 = !{!14, !59}
!268 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !269, file: !57, line: 200)
!269 = !DISubprogram(name: "wmemcmp", scope: !63, file: !63, line: 258, type: !223, flags: DIFlagPrototyped, spFlags: 0)
!270 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !271, file: !57, line: 201)
!271 = !DISubprogram(name: "wmemcpy", scope: !63, file: !63, line: 262, type: !219, flags: DIFlagPrototyped, spFlags: 0)
!272 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !273, file: !57, line: 202)
!273 = !DISubprogram(name: "wmemmove", scope: !63, file: !63, line: 267, type: !274, flags: DIFlagPrototyped, spFlags: 0)
!274 = !DISubroutineType(types: !275)
!275 = !{!78, !78, !91, !113}
!276 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !277, file: !57, line: 203)
!277 = !DISubprogram(name: "wmemset", scope: !63, file: !63, line: 271, type: !278, flags: DIFlagPrototyped, spFlags: 0)
!278 = !DISubroutineType(types: !279)
!279 = !{!78, !78, !79, !113}
!280 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !281, file: !57, line: 204)
!281 = !DISubprogram(name: "wprintf", scope: !63, file: !63, line: 587, type: !282, flags: DIFlagPrototyped, spFlags: 0)
!282 = !DISubroutineType(types: !283)
!283 = !{!14, !90, null}
!284 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !285, file: !57, line: 205)
!285 = !DISubprogram(name: "wscanf", linkageName: "__isoc99_wscanf", scope: !63, file: !63, line: 644, type: !282, flags: DIFlagPrototyped, spFlags: 0)
!286 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !287, file: !57, line: 206)
!287 = !DISubprogram(name: "wcschr", scope: !63, file: !63, line: 164, type: !288, flags: DIFlagPrototyped, spFlags: 0)
!288 = !DISubroutineType(types: !289)
!289 = !{!78, !91, !79}
!290 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !291, file: !57, line: 207)
!291 = !DISubprogram(name: "wcspbrk", scope: !63, file: !63, line: 201, type: !292, flags: DIFlagPrototyped, spFlags: 0)
!292 = !DISubroutineType(types: !293)
!293 = !{!78, !91, !91}
!294 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !295, file: !57, line: 208)
!295 = !DISubprogram(name: "wcsrchr", scope: !63, file: !63, line: 174, type: !288, flags: DIFlagPrototyped, spFlags: 0)
!296 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !297, file: !57, line: 209)
!297 = !DISubprogram(name: "wcsstr", scope: !63, file: !63, line: 212, type: !292, flags: DIFlagPrototyped, spFlags: 0)
!298 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !299, file: !57, line: 210)
!299 = !DISubprogram(name: "wmemchr", scope: !63, file: !63, line: 253, type: !300, flags: DIFlagPrototyped, spFlags: 0)
!300 = !DISubroutineType(types: !301)
!301 = !{!78, !91, !79, !113}
!302 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !303, entity: !304, file: !57, line: 251)
!303 = !DINamespace(name: "__gnu_cxx", scope: null)
!304 = !DISubprogram(name: "wcstold", scope: !63, file: !63, line: 384, type: !305, flags: DIFlagPrototyped, spFlags: 0)
!305 = !DISubroutineType(types: !306)
!306 = !{!307, !90, !240}
!307 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!308 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !303, entity: !309, file: !57, line: 260)
!309 = !DISubprogram(name: "wcstoll", scope: !63, file: !63, line: 441, type: !310, flags: DIFlagPrototyped, spFlags: 0)
!310 = !DISubroutineType(types: !311)
!311 = !{!312, !90, !240, !14}
!312 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!313 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !303, entity: !314, file: !57, line: 261)
!314 = !DISubprogram(name: "wcstoull", scope: !63, file: !63, line: 448, type: !315, flags: DIFlagPrototyped, spFlags: 0)
!315 = !DISubroutineType(types: !316)
!316 = !{!317, !90, !240, !14}
!317 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!318 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !304, file: !57, line: 267)
!319 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !309, file: !57, line: 268)
!320 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !314, file: !57, line: 269)
!321 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !243, file: !57, line: 283)
!322 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !168, file: !57, line: 286)
!323 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !174, file: !57, line: 289)
!324 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !182, file: !57, line: 292)
!325 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !304, file: !57, line: 296)
!326 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !309, file: !57, line: 297)
!327 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !314, file: !57, line: 298)
!328 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !329, file: !330, line: 66)
!329 = !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !331, file: !330, line: 97, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!330 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/exception_ptr.h", directory: "", checksumkind: CSK_MD5, checksum: "314ad14748ccb9ff85c65d17ebb0828b")
!331 = !DINamespace(name: "__exception_ptr", scope: !40)
!332 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !331, entity: !333, file: !330, line: 85)
!333 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !40, file: !330, line: 81, type: !334, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!334 = !DISubroutineType(types: !335)
!335 = !{null, !329}
!336 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !337, file: !330, line: 243)
!337 = !DISubprogram(name: "swap", linkageName: "_ZNSt15__exception_ptr4swapERNS_13exception_ptrES1_", scope: !331, file: !330, line: 230, type: !338, flags: DIFlagPrototyped, spFlags: 0)
!338 = !DISubroutineType(types: !339)
!339 = !{null, !340, !340}
!340 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !329, size: 64)
!341 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !342, file: !344, line: 53)
!342 = !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !343, line: 51, size: 768, flags: DIFlagFwdDecl, identifier: "_ZTS5lconv")
!343 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "0cf373fc44eed8073800bdb9da87b72f")
!344 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/clocale", directory: "")
!345 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !346, file: !344, line: 54)
!346 = !DISubprogram(name: "setlocale", scope: !343, file: !343, line: 122, type: !347, flags: DIFlagPrototyped, spFlags: 0)
!347 = !DISubroutineType(types: !348)
!348 = !{!188, !14, !117}
!349 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !350, file: !344, line: 55)
!350 = !DISubprogram(name: "localeconv", scope: !343, file: !343, line: 125, type: !351, flags: DIFlagPrototyped, spFlags: 0)
!351 = !DISubroutineType(types: !352)
!352 = !{!353}
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!354 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !355, file: !359, line: 64)
!355 = !DISubprogram(name: "isalnum", scope: !356, file: !356, line: 108, type: !357, flags: DIFlagPrototyped, spFlags: 0)
!356 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "36575f934ef4fe7e9d50a3cb17bd5c66")
!357 = !DISubroutineType(types: !358)
!358 = !{!14, !14}
!359 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cctype", directory: "")
!360 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !361, file: !359, line: 65)
!361 = !DISubprogram(name: "isalpha", scope: !356, file: !356, line: 109, type: !357, flags: DIFlagPrototyped, spFlags: 0)
!362 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !363, file: !359, line: 66)
!363 = !DISubprogram(name: "iscntrl", scope: !356, file: !356, line: 110, type: !357, flags: DIFlagPrototyped, spFlags: 0)
!364 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !365, file: !359, line: 67)
!365 = !DISubprogram(name: "isdigit", scope: !356, file: !356, line: 111, type: !357, flags: DIFlagPrototyped, spFlags: 0)
!366 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !367, file: !359, line: 68)
!367 = !DISubprogram(name: "isgraph", scope: !356, file: !356, line: 113, type: !357, flags: DIFlagPrototyped, spFlags: 0)
!368 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !369, file: !359, line: 69)
!369 = !DISubprogram(name: "islower", scope: !356, file: !356, line: 112, type: !357, flags: DIFlagPrototyped, spFlags: 0)
!370 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !371, file: !359, line: 70)
!371 = !DISubprogram(name: "isprint", scope: !356, file: !356, line: 114, type: !357, flags: DIFlagPrototyped, spFlags: 0)
!372 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !373, file: !359, line: 71)
!373 = !DISubprogram(name: "ispunct", scope: !356, file: !356, line: 115, type: !357, flags: DIFlagPrototyped, spFlags: 0)
!374 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !375, file: !359, line: 72)
!375 = !DISubprogram(name: "isspace", scope: !356, file: !356, line: 116, type: !357, flags: DIFlagPrototyped, spFlags: 0)
!376 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !377, file: !359, line: 73)
!377 = !DISubprogram(name: "isupper", scope: !356, file: !356, line: 117, type: !357, flags: DIFlagPrototyped, spFlags: 0)
!378 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !379, file: !359, line: 74)
!379 = !DISubprogram(name: "isxdigit", scope: !356, file: !356, line: 118, type: !357, flags: DIFlagPrototyped, spFlags: 0)
!380 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !381, file: !359, line: 75)
!381 = !DISubprogram(name: "tolower", scope: !356, file: !356, line: 122, type: !357, flags: DIFlagPrototyped, spFlags: 0)
!382 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !383, file: !359, line: 76)
!383 = !DISubprogram(name: "toupper", scope: !356, file: !356, line: 125, type: !357, flags: DIFlagPrototyped, spFlags: 0)
!384 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !385, file: !359, line: 87)
!385 = !DISubprogram(name: "isblank", scope: !356, file: !356, line: 130, type: !357, flags: DIFlagPrototyped, spFlags: 0)
!386 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !387, entity: !388, file: !389, line: 58)
!387 = !DINamespace(name: "__gnu_debug", scope: null)
!388 = !DINamespace(name: "__debug", scope: !40)
!389 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/debug/debug.h", directory: "", checksumkind: CSK_MD5, checksum: "752210a319f5f5d356cc29cd1ce3cdc7")
!390 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !391, file: !393, line: 52)
!391 = !DISubprogram(name: "abs", scope: !392, file: !392, line: 840, type: !357, flags: DIFlagPrototyped, spFlags: 0)
!392 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!393 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/std_abs.h", directory: "")
!394 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !395, file: !397, line: 131)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !392, line: 62, baseType: !396)
!396 = !DICompositeType(tag: DW_TAG_structure_type, file: !392, line: 58, size: 64, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!397 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cstdlib", directory: "")
!398 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !399, file: !397, line: 132)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !392, line: 70, baseType: !400)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !392, line: 66, size: 128, flags: DIFlagTypePassByValue, elements: !401, identifier: "_ZTS6ldiv_t")
!401 = !{!402, !403}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !400, file: !392, line: 68, baseType: !255, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !400, file: !392, line: 69, baseType: !255, size: 64, offset: 64)
!404 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !405, file: !397, line: 134)
!405 = !DISubprogram(name: "abort", scope: !392, file: !392, line: 591, type: !406, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!406 = !DISubroutineType(types: !407)
!407 = !{null}
!408 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !409, file: !397, line: 136)
!409 = !DISubprogram(name: "aligned_alloc", scope: !392, file: !392, line: 586, type: !410, flags: DIFlagPrototyped, spFlags: 0)
!410 = !DISubroutineType(types: !411)
!411 = !{!165, !113, !113}
!412 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !413, file: !397, line: 138)
!413 = !DISubprogram(name: "atexit", scope: !392, file: !392, line: 595, type: !414, flags: DIFlagPrototyped, spFlags: 0)
!414 = !DISubroutineType(types: !415)
!415 = !{!14, !416}
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!417 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !418, file: !397, line: 141)
!418 = !DISubprogram(name: "at_quick_exit", scope: !392, file: !392, line: 600, type: !414, flags: DIFlagPrototyped, spFlags: 0)
!419 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !420, file: !397, line: 144)
!420 = !DISubprogram(name: "atof", scope: !392, file: !392, line: 101, type: !421, flags: DIFlagPrototyped, spFlags: 0)
!421 = !DISubroutineType(types: !422)
!422 = !{!239, !117}
!423 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !424, file: !397, line: 145)
!424 = !DISubprogram(name: "atoi", scope: !392, file: !392, line: 104, type: !425, flags: DIFlagPrototyped, spFlags: 0)
!425 = !DISubroutineType(types: !426)
!426 = !{!14, !117}
!427 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !428, file: !397, line: 146)
!428 = !DISubprogram(name: "atol", scope: !392, file: !392, line: 107, type: !429, flags: DIFlagPrototyped, spFlags: 0)
!429 = !DISubroutineType(types: !430)
!430 = !{!255, !117}
!431 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !432, file: !397, line: 147)
!432 = !DISubprogram(name: "bsearch", scope: !392, file: !392, line: 820, type: !433, flags: DIFlagPrototyped, spFlags: 0)
!433 = !DISubroutineType(types: !434)
!434 = !{!165, !435, !435, !113, !113, !437}
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !392, line: 808, baseType: !438)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DISubroutineType(types: !440)
!440 = !{!14, !435, !435}
!441 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !442, file: !397, line: 148)
!442 = !DISubprogram(name: "calloc", scope: !392, file: !392, line: 542, type: !410, flags: DIFlagPrototyped, spFlags: 0)
!443 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !444, file: !397, line: 149)
!444 = !DISubprogram(name: "div", scope: !392, file: !392, line: 852, type: !445, flags: DIFlagPrototyped, spFlags: 0)
!445 = !DISubroutineType(types: !446)
!446 = !{!395, !14, !14}
!447 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !448, file: !397, line: 150)
!448 = !DISubprogram(name: "exit", scope: !392, file: !392, line: 617, type: !449, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!449 = !DISubroutineType(types: !450)
!450 = !{null, !14}
!451 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !452, file: !397, line: 151)
!452 = !DISubprogram(name: "free", scope: !392, file: !392, line: 565, type: !453, flags: DIFlagPrototyped, spFlags: 0)
!453 = !DISubroutineType(types: !454)
!454 = !{null, !165}
!455 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !456, file: !397, line: 152)
!456 = !DISubprogram(name: "getenv", scope: !392, file: !392, line: 634, type: !457, flags: DIFlagPrototyped, spFlags: 0)
!457 = !DISubroutineType(types: !458)
!458 = !{!188, !117}
!459 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !460, file: !397, line: 153)
!460 = !DISubprogram(name: "labs", scope: !392, file: !392, line: 841, type: !461, flags: DIFlagPrototyped, spFlags: 0)
!461 = !DISubroutineType(types: !462)
!462 = !{!255, !255}
!463 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !464, file: !397, line: 154)
!464 = !DISubprogram(name: "ldiv", scope: !392, file: !392, line: 854, type: !465, flags: DIFlagPrototyped, spFlags: 0)
!465 = !DISubroutineType(types: !466)
!466 = !{!399, !255, !255}
!467 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !468, file: !397, line: 155)
!468 = !DISubprogram(name: "malloc", scope: !392, file: !392, line: 539, type: !469, flags: DIFlagPrototyped, spFlags: 0)
!469 = !DISubroutineType(types: !470)
!470 = !{!165, !113}
!471 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !472, file: !397, line: 157)
!472 = !DISubprogram(name: "mblen", scope: !392, file: !392, line: 922, type: !473, flags: DIFlagPrototyped, spFlags: 0)
!473 = !DISubroutineType(types: !474)
!474 = !{!14, !117, !113}
!475 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !476, file: !397, line: 158)
!476 = !DISubprogram(name: "mbstowcs", scope: !392, file: !392, line: 933, type: !477, flags: DIFlagPrototyped, spFlags: 0)
!477 = !DISubroutineType(types: !478)
!478 = !{!113, !80, !116, !113}
!479 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !480, file: !397, line: 159)
!480 = !DISubprogram(name: "mbtowc", scope: !392, file: !392, line: 925, type: !481, flags: DIFlagPrototyped, spFlags: 0)
!481 = !DISubroutineType(types: !482)
!482 = !{!14, !80, !116, !113}
!483 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !484, file: !397, line: 161)
!484 = !DISubprogram(name: "qsort", scope: !392, file: !392, line: 830, type: !485, flags: DIFlagPrototyped, spFlags: 0)
!485 = !DISubroutineType(types: !486)
!486 = !{null, !165, !113, !113, !437}
!487 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !488, file: !397, line: 164)
!488 = !DISubprogram(name: "quick_exit", scope: !392, file: !392, line: 623, type: !449, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!489 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !490, file: !397, line: 167)
!490 = !DISubprogram(name: "rand", scope: !392, file: !392, line: 453, type: !12, flags: DIFlagPrototyped, spFlags: 0)
!491 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !492, file: !397, line: 168)
!492 = !DISubprogram(name: "realloc", scope: !392, file: !392, line: 550, type: !493, flags: DIFlagPrototyped, spFlags: 0)
!493 = !DISubroutineType(types: !494)
!494 = !{!165, !165, !113}
!495 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !496, file: !397, line: 169)
!496 = !DISubprogram(name: "srand", scope: !392, file: !392, line: 455, type: !497, flags: DIFlagPrototyped, spFlags: 0)
!497 = !DISubroutineType(types: !498)
!498 = !{null, !52}
!499 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !500, file: !397, line: 170)
!500 = !DISubprogram(name: "strtod", scope: !392, file: !392, line: 117, type: !501, flags: DIFlagPrototyped, spFlags: 0)
!501 = !DISubroutineType(types: !502)
!502 = !{!239, !116, !503}
!503 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !504)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!505 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !506, file: !397, line: 171)
!506 = !DISubprogram(name: "strtol", scope: !392, file: !392, line: 176, type: !507, flags: DIFlagPrototyped, spFlags: 0)
!507 = !DISubroutineType(types: !508)
!508 = !{!255, !116, !503, !14}
!509 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !510, file: !397, line: 172)
!510 = !DISubprogram(name: "strtoul", scope: !392, file: !392, line: 180, type: !511, flags: DIFlagPrototyped, spFlags: 0)
!511 = !DISubroutineType(types: !512)
!512 = !{!115, !116, !503, !14}
!513 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !514, file: !397, line: 173)
!514 = !DISubprogram(name: "system", scope: !392, file: !392, line: 784, type: !425, flags: DIFlagPrototyped, spFlags: 0)
!515 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !516, file: !397, line: 175)
!516 = !DISubprogram(name: "wcstombs", scope: !392, file: !392, line: 936, type: !517, flags: DIFlagPrototyped, spFlags: 0)
!517 = !DISubroutineType(types: !518)
!518 = !{!113, !187, !90, !113}
!519 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !520, file: !397, line: 176)
!520 = !DISubprogram(name: "wctomb", scope: !392, file: !392, line: 929, type: !521, flags: DIFlagPrototyped, spFlags: 0)
!521 = !DISubroutineType(types: !522)
!522 = !{!14, !188, !79}
!523 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !303, entity: !524, file: !397, line: 204)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !392, line: 80, baseType: !525)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !392, line: 76, size: 128, flags: DIFlagTypePassByValue, elements: !526, identifier: "_ZTS7lldiv_t")
!526 = !{!527, !528}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !525, file: !392, line: 78, baseType: !312, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !525, file: !392, line: 79, baseType: !312, size: 64, offset: 64)
!529 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !303, entity: !530, file: !397, line: 210)
!530 = !DISubprogram(name: "_Exit", scope: !392, file: !392, line: 629, type: !449, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!531 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !303, entity: !532, file: !397, line: 214)
!532 = !DISubprogram(name: "llabs", scope: !392, file: !392, line: 844, type: !533, flags: DIFlagPrototyped, spFlags: 0)
!533 = !DISubroutineType(types: !534)
!534 = !{!312, !312}
!535 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !303, entity: !536, file: !397, line: 220)
!536 = !DISubprogram(name: "lldiv", scope: !392, file: !392, line: 858, type: !537, flags: DIFlagPrototyped, spFlags: 0)
!537 = !DISubroutineType(types: !538)
!538 = !{!524, !312, !312}
!539 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !303, entity: !540, file: !397, line: 231)
!540 = !DISubprogram(name: "atoll", scope: !392, file: !392, line: 112, type: !541, flags: DIFlagPrototyped, spFlags: 0)
!541 = !DISubroutineType(types: !542)
!542 = !{!312, !117}
!543 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !303, entity: !544, file: !397, line: 232)
!544 = !DISubprogram(name: "strtoll", scope: !392, file: !392, line: 200, type: !545, flags: DIFlagPrototyped, spFlags: 0)
!545 = !DISubroutineType(types: !546)
!546 = !{!312, !116, !503, !14}
!547 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !303, entity: !548, file: !397, line: 233)
!548 = !DISubprogram(name: "strtoull", scope: !392, file: !392, line: 205, type: !549, flags: DIFlagPrototyped, spFlags: 0)
!549 = !DISubroutineType(types: !550)
!550 = !{!317, !116, !503, !14}
!551 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !303, entity: !552, file: !397, line: 235)
!552 = !DISubprogram(name: "strtof", scope: !392, file: !392, line: 123, type: !553, flags: DIFlagPrototyped, spFlags: 0)
!553 = !DISubroutineType(types: !554)
!554 = !{!246, !116, !503}
!555 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !303, entity: !556, file: !397, line: 236)
!556 = !DISubprogram(name: "strtold", scope: !392, file: !392, line: 126, type: !557, flags: DIFlagPrototyped, spFlags: 0)
!557 = !DISubroutineType(types: !558)
!558 = !{!307, !116, !503}
!559 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !524, file: !397, line: 244)
!560 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !530, file: !397, line: 246)
!561 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !532, file: !397, line: 248)
!562 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !563, file: !397, line: 249)
!563 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !303, file: !397, line: 217, type: !537, flags: DIFlagPrototyped, spFlags: 0)
!564 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !536, file: !397, line: 250)
!565 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !540, file: !397, line: 252)
!566 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !552, file: !397, line: 253)
!567 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !544, file: !397, line: 254)
!568 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !548, file: !397, line: 255)
!569 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !556, file: !397, line: 256)
!570 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !571, file: !573, line: 98)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !572, line: 7, baseType: !73)
!572 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!573 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cstdio", directory: "")
!574 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !575, file: !573, line: 99)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !576, line: 84, baseType: !577)
!576 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fpos_t", file: !578, line: 14, baseType: !579)
!578 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h", directory: "", checksumkind: CSK_MD5, checksum: "32de8bdaf3551a6c0a9394f9af4389ce")
!579 = !DICompositeType(tag: DW_TAG_structure_type, name: "_G_fpos_t", file: !578, line: 10, size: 128, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
!580 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !581, file: !573, line: 101)
!581 = !DISubprogram(name: "clearerr", scope: !576, file: !576, line: 757, type: !582, flags: DIFlagPrototyped, spFlags: 0)
!582 = !DISubroutineType(types: !583)
!583 = !{null, !584}
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!585 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !586, file: !573, line: 102)
!586 = !DISubprogram(name: "fclose", scope: !576, file: !576, line: 213, type: !587, flags: DIFlagPrototyped, spFlags: 0)
!587 = !DISubroutineType(types: !588)
!588 = !{!14, !584}
!589 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !590, file: !573, line: 103)
!590 = !DISubprogram(name: "feof", scope: !576, file: !576, line: 759, type: !587, flags: DIFlagPrototyped, spFlags: 0)
!591 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !592, file: !573, line: 104)
!592 = !DISubprogram(name: "ferror", scope: !576, file: !576, line: 761, type: !587, flags: DIFlagPrototyped, spFlags: 0)
!593 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !594, file: !573, line: 105)
!594 = !DISubprogram(name: "fflush", scope: !576, file: !576, line: 218, type: !587, flags: DIFlagPrototyped, spFlags: 0)
!595 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !596, file: !573, line: 106)
!596 = !DISubprogram(name: "fgetc", scope: !576, file: !576, line: 485, type: !587, flags: DIFlagPrototyped, spFlags: 0)
!597 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !598, file: !573, line: 107)
!598 = !DISubprogram(name: "fgetpos", scope: !576, file: !576, line: 731, type: !599, flags: DIFlagPrototyped, spFlags: 0)
!599 = !DISubroutineType(types: !600)
!600 = !{!14, !601, !602}
!601 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !584)
!602 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !603)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!604 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !605, file: !573, line: 108)
!605 = !DISubprogram(name: "fgets", scope: !576, file: !576, line: 564, type: !606, flags: DIFlagPrototyped, spFlags: 0)
!606 = !DISubroutineType(types: !607)
!607 = !{!188, !187, !14, !601}
!608 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !609, file: !573, line: 109)
!609 = !DISubprogram(name: "fopen", scope: !576, file: !576, line: 246, type: !610, flags: DIFlagPrototyped, spFlags: 0)
!610 = !DISubroutineType(types: !611)
!611 = !{!584, !116, !116}
!612 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !613, file: !573, line: 110)
!613 = !DISubprogram(name: "fprintf", scope: !576, file: !576, line: 326, type: !614, flags: DIFlagPrototyped, spFlags: 0)
!614 = !DISubroutineType(types: !615)
!615 = !{!14, !601, !116, null}
!616 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !617, file: !573, line: 111)
!617 = !DISubprogram(name: "fputc", scope: !576, file: !576, line: 521, type: !618, flags: DIFlagPrototyped, spFlags: 0)
!618 = !DISubroutineType(types: !619)
!619 = !{!14, !14, !584}
!620 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !621, file: !573, line: 112)
!621 = !DISubprogram(name: "fputs", scope: !576, file: !576, line: 626, type: !622, flags: DIFlagPrototyped, spFlags: 0)
!622 = !DISubroutineType(types: !623)
!623 = !{!14, !116, !601}
!624 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !625, file: !573, line: 113)
!625 = !DISubprogram(name: "fread", scope: !576, file: !576, line: 646, type: !626, flags: DIFlagPrototyped, spFlags: 0)
!626 = !DISubroutineType(types: !627)
!627 = !{!113, !628, !113, !113, !601}
!628 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !165)
!629 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !630, file: !573, line: 114)
!630 = !DISubprogram(name: "freopen", scope: !576, file: !576, line: 252, type: !631, flags: DIFlagPrototyped, spFlags: 0)
!631 = !DISubroutineType(types: !632)
!632 = !{!584, !116, !116, !601}
!633 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !634, file: !573, line: 115)
!634 = !DISubprogram(name: "fscanf", linkageName: "__isoc99_fscanf", scope: !576, file: !576, line: 407, type: !614, flags: DIFlagPrototyped, spFlags: 0)
!635 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !636, file: !573, line: 116)
!636 = !DISubprogram(name: "fseek", scope: !576, file: !576, line: 684, type: !637, flags: DIFlagPrototyped, spFlags: 0)
!637 = !DISubroutineType(types: !638)
!638 = !{!14, !584, !255, !14}
!639 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !640, file: !573, line: 117)
!640 = !DISubprogram(name: "fsetpos", scope: !576, file: !576, line: 736, type: !641, flags: DIFlagPrototyped, spFlags: 0)
!641 = !DISubroutineType(types: !642)
!642 = !{!14, !584, !643}
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !575)
!645 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !646, file: !573, line: 118)
!646 = !DISubprogram(name: "ftell", scope: !576, file: !576, line: 689, type: !647, flags: DIFlagPrototyped, spFlags: 0)
!647 = !DISubroutineType(types: !648)
!648 = !{!255, !584}
!649 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !650, file: !573, line: 119)
!650 = !DISubprogram(name: "fwrite", scope: !576, file: !576, line: 652, type: !651, flags: DIFlagPrototyped, spFlags: 0)
!651 = !DISubroutineType(types: !652)
!652 = !{!113, !653, !113, !113, !601}
!653 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !435)
!654 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !655, file: !573, line: 120)
!655 = !DISubprogram(name: "getc", scope: !576, file: !576, line: 486, type: !587, flags: DIFlagPrototyped, spFlags: 0)
!656 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !657, file: !573, line: 121)
!657 = !DISubprogram(name: "getchar", scope: !576, file: !576, line: 492, type: !12, flags: DIFlagPrototyped, spFlags: 0)
!658 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !659, file: !573, line: 126)
!659 = !DISubprogram(name: "perror", scope: !576, file: !576, line: 775, type: !660, flags: DIFlagPrototyped, spFlags: 0)
!660 = !DISubroutineType(types: !661)
!661 = !{null, !117}
!662 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !663, file: !573, line: 127)
!663 = !DISubprogram(name: "printf", scope: !576, file: !576, line: 332, type: !664, flags: DIFlagPrototyped, spFlags: 0)
!664 = !DISubroutineType(types: !665)
!665 = !{!14, !116, null}
!666 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !667, file: !573, line: 128)
!667 = !DISubprogram(name: "putc", scope: !576, file: !576, line: 522, type: !618, flags: DIFlagPrototyped, spFlags: 0)
!668 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !669, file: !573, line: 129)
!669 = !DISubprogram(name: "putchar", scope: !576, file: !576, line: 528, type: !357, flags: DIFlagPrototyped, spFlags: 0)
!670 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !671, file: !573, line: 130)
!671 = !DISubprogram(name: "puts", scope: !576, file: !576, line: 632, type: !425, flags: DIFlagPrototyped, spFlags: 0)
!672 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !673, file: !573, line: 131)
!673 = !DISubprogram(name: "remove", scope: !576, file: !576, line: 146, type: !425, flags: DIFlagPrototyped, spFlags: 0)
!674 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !675, file: !573, line: 132)
!675 = !DISubprogram(name: "rename", scope: !576, file: !576, line: 148, type: !676, flags: DIFlagPrototyped, spFlags: 0)
!676 = !DISubroutineType(types: !677)
!677 = !{!14, !117, !117}
!678 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !679, file: !573, line: 133)
!679 = !DISubprogram(name: "rewind", scope: !576, file: !576, line: 694, type: !582, flags: DIFlagPrototyped, spFlags: 0)
!680 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !681, file: !573, line: 134)
!681 = !DISubprogram(name: "scanf", linkageName: "__isoc99_scanf", scope: !576, file: !576, line: 410, type: !664, flags: DIFlagPrototyped, spFlags: 0)
!682 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !683, file: !573, line: 135)
!683 = !DISubprogram(name: "setbuf", scope: !576, file: !576, line: 304, type: !684, flags: DIFlagPrototyped, spFlags: 0)
!684 = !DISubroutineType(types: !685)
!685 = !{null, !601, !187}
!686 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !687, file: !573, line: 136)
!687 = !DISubprogram(name: "setvbuf", scope: !576, file: !576, line: 308, type: !688, flags: DIFlagPrototyped, spFlags: 0)
!688 = !DISubroutineType(types: !689)
!689 = !{!14, !601, !187, !14, !113}
!690 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !691, file: !573, line: 137)
!691 = !DISubprogram(name: "sprintf", scope: !576, file: !576, line: 334, type: !692, flags: DIFlagPrototyped, spFlags: 0)
!692 = !DISubroutineType(types: !693)
!693 = !{!14, !187, !116, null}
!694 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !695, file: !573, line: 138)
!695 = !DISubprogram(name: "sscanf", linkageName: "__isoc99_sscanf", scope: !576, file: !576, line: 412, type: !696, flags: DIFlagPrototyped, spFlags: 0)
!696 = !DISubroutineType(types: !697)
!697 = !{!14, !116, !116, null}
!698 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !699, file: !573, line: 139)
!699 = !DISubprogram(name: "tmpfile", scope: !576, file: !576, line: 173, type: !700, flags: DIFlagPrototyped, spFlags: 0)
!700 = !DISubroutineType(types: !701)
!701 = !{!584}
!702 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !703, file: !573, line: 141)
!703 = !DISubprogram(name: "tmpnam", scope: !576, file: !576, line: 187, type: !704, flags: DIFlagPrototyped, spFlags: 0)
!704 = !DISubroutineType(types: !705)
!705 = !{!188, !188}
!706 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !707, file: !573, line: 143)
!707 = !DISubprogram(name: "ungetc", scope: !576, file: !576, line: 639, type: !618, flags: DIFlagPrototyped, spFlags: 0)
!708 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !709, file: !573, line: 144)
!709 = !DISubprogram(name: "vfprintf", scope: !576, file: !576, line: 341, type: !710, flags: DIFlagPrototyped, spFlags: 0)
!710 = !DISubroutineType(types: !711)
!711 = !{!14, !601, !116, !158}
!712 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !713, file: !573, line: 145)
!713 = !DISubprogram(name: "vprintf", scope: !576, file: !576, line: 347, type: !714, flags: DIFlagPrototyped, spFlags: 0)
!714 = !DISubroutineType(types: !715)
!715 = !{!14, !116, !158}
!716 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !717, file: !573, line: 146)
!717 = !DISubprogram(name: "vsprintf", scope: !576, file: !576, line: 349, type: !718, flags: DIFlagPrototyped, spFlags: 0)
!718 = !DISubroutineType(types: !719)
!719 = !{!14, !187, !116, !158}
!720 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !303, entity: !721, file: !573, line: 175)
!721 = !DISubprogram(name: "snprintf", scope: !576, file: !576, line: 354, type: !722, flags: DIFlagPrototyped, spFlags: 0)
!722 = !DISubroutineType(types: !723)
!723 = !{!14, !187, !113, !116, null}
!724 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !303, entity: !725, file: !573, line: 176)
!725 = !DISubprogram(name: "vfscanf", linkageName: "__isoc99_vfscanf", scope: !576, file: !576, line: 451, type: !710, flags: DIFlagPrototyped, spFlags: 0)
!726 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !303, entity: !727, file: !573, line: 177)
!727 = !DISubprogram(name: "vscanf", linkageName: "__isoc99_vscanf", scope: !576, file: !576, line: 456, type: !714, flags: DIFlagPrototyped, spFlags: 0)
!728 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !303, entity: !729, file: !573, line: 178)
!729 = !DISubprogram(name: "vsnprintf", scope: !576, file: !576, line: 358, type: !730, flags: DIFlagPrototyped, spFlags: 0)
!730 = !DISubroutineType(types: !731)
!731 = !{!14, !187, !113, !116, !158}
!732 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !303, entity: !733, file: !573, line: 179)
!733 = !DISubprogram(name: "vsscanf", linkageName: "__isoc99_vsscanf", scope: !576, file: !576, line: 459, type: !734, flags: DIFlagPrototyped, spFlags: 0)
!734 = !DISubroutineType(types: !735)
!735 = !{!14, !116, !116, !158}
!736 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !721, file: !573, line: 185)
!737 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !725, file: !573, line: 186)
!738 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !727, file: !573, line: 187)
!739 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !729, file: !573, line: 188)
!740 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !733, file: !573, line: 189)
!741 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !742, file: !748, line: 58)
!742 = !DIDerivedType(tag: DW_TAG_typedef, name: "max_align_t", file: !743, line: 24, baseType: !744)
!743 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/__stddef_max_align_t.h", directory: "/home/cs22mtech12008", checksumkind: CSK_MD5, checksum: "48e8e2456f77e6cda35d245130fa7259")
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !743, line: 19, size: 256, flags: DIFlagTypePassByValue, elements: !745, identifier: "_ZTS11max_align_t")
!745 = !{!746, !747}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "__clang_max_align_nonce1", scope: !744, file: !743, line: 20, baseType: !312, size: 64, align: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "__clang_max_align_nonce2", scope: !744, file: !743, line: 22, baseType: !307, size: 128, align: 128, offset: 128)
!748 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cstddef", directory: "")
!749 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !750, file: !756, line: 82)
!750 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctrans_t", file: !751, line: 48, baseType: !752)
!751 = !DIFile(filename: "/usr/include/wctype.h", directory: "", checksumkind: CSK_MD5, checksum: "e83097fbf57cc71ea472db59df3ba75d")
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !754)
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !755, line: 41, baseType: !14)
!755 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!756 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cwctype", directory: "")
!757 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !758, file: !756, line: 83)
!758 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctype_t", file: !759, line: 38, baseType: !115)
!759 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "3598b9d23ef5d76319026b46e316b55f")
!760 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !59, file: !756, line: 84)
!761 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !762, file: !756, line: 86)
!762 = !DISubprogram(name: "iswalnum", scope: !759, file: !759, line: 95, type: !266, flags: DIFlagPrototyped, spFlags: 0)
!763 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !764, file: !756, line: 87)
!764 = !DISubprogram(name: "iswalpha", scope: !759, file: !759, line: 101, type: !266, flags: DIFlagPrototyped, spFlags: 0)
!765 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !766, file: !756, line: 89)
!766 = !DISubprogram(name: "iswblank", scope: !759, file: !759, line: 146, type: !266, flags: DIFlagPrototyped, spFlags: 0)
!767 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !768, file: !756, line: 91)
!768 = !DISubprogram(name: "iswcntrl", scope: !759, file: !759, line: 104, type: !266, flags: DIFlagPrototyped, spFlags: 0)
!769 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !770, file: !756, line: 92)
!770 = !DISubprogram(name: "iswctype", scope: !759, file: !759, line: 159, type: !771, flags: DIFlagPrototyped, spFlags: 0)
!771 = !DISubroutineType(types: !772)
!772 = !{!14, !59, !758}
!773 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !774, file: !756, line: 93)
!774 = !DISubprogram(name: "iswdigit", scope: !759, file: !759, line: 108, type: !266, flags: DIFlagPrototyped, spFlags: 0)
!775 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !776, file: !756, line: 94)
!776 = !DISubprogram(name: "iswgraph", scope: !759, file: !759, line: 112, type: !266, flags: DIFlagPrototyped, spFlags: 0)
!777 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !778, file: !756, line: 95)
!778 = !DISubprogram(name: "iswlower", scope: !759, file: !759, line: 117, type: !266, flags: DIFlagPrototyped, spFlags: 0)
!779 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !780, file: !756, line: 96)
!780 = !DISubprogram(name: "iswprint", scope: !759, file: !759, line: 120, type: !266, flags: DIFlagPrototyped, spFlags: 0)
!781 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !782, file: !756, line: 97)
!782 = !DISubprogram(name: "iswpunct", scope: !759, file: !759, line: 125, type: !266, flags: DIFlagPrototyped, spFlags: 0)
!783 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !784, file: !756, line: 98)
!784 = !DISubprogram(name: "iswspace", scope: !759, file: !759, line: 130, type: !266, flags: DIFlagPrototyped, spFlags: 0)
!785 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !786, file: !756, line: 99)
!786 = !DISubprogram(name: "iswupper", scope: !759, file: !759, line: 135, type: !266, flags: DIFlagPrototyped, spFlags: 0)
!787 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !788, file: !756, line: 100)
!788 = !DISubprogram(name: "iswxdigit", scope: !759, file: !759, line: 140, type: !266, flags: DIFlagPrototyped, spFlags: 0)
!789 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !790, file: !756, line: 101)
!790 = !DISubprogram(name: "towctrans", scope: !751, file: !751, line: 55, type: !791, flags: DIFlagPrototyped, spFlags: 0)
!791 = !DISubroutineType(types: !792)
!792 = !{!59, !59, !750}
!793 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !794, file: !756, line: 102)
!794 = !DISubprogram(name: "towlower", scope: !759, file: !759, line: 166, type: !795, flags: DIFlagPrototyped, spFlags: 0)
!795 = !DISubroutineType(types: !796)
!796 = !{!59, !59}
!797 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !798, file: !756, line: 103)
!798 = !DISubprogram(name: "towupper", scope: !759, file: !759, line: 169, type: !795, flags: DIFlagPrototyped, spFlags: 0)
!799 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !800, file: !756, line: 104)
!800 = !DISubprogram(name: "wctrans", scope: !751, file: !751, line: 52, type: !801, flags: DIFlagPrototyped, spFlags: 0)
!801 = !DISubroutineType(types: !802)
!802 = !{!750, !117}
!803 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !804, file: !756, line: 105)
!804 = !DISubprogram(name: "wctype", scope: !759, file: !759, line: 155, type: !805, flags: DIFlagPrototyped, spFlags: 0)
!805 = !DISubroutineType(types: !806)
!806 = !{!758, !117}
!807 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !808, line: 27, baseType: !115)
!808 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "2d764266ce95ab26d4a4767c2ec78176")
!809 = !{i32 7, !"Dwarf Version", i32 5}
!810 = !{i32 2, !"Debug Info Version", i32 3}
!811 = !{i32 1, !"wchar_size", i32 4}
!812 = !{i32 8, !"PIC Level", i32 2}
!813 = !{i32 7, !"PIE Level", i32 2}
!814 = !{i32 7, !"uwtable", i32 2}
!815 = !{i32 7, !"frame-pointer", i32 2}
!816 = !{!"clang version 16.0.0"}
!817 = distinct !DISubprogram(name: "runThread", linkageName: "_Z9runThreadPv", scope: !7, file: !7, line: 39, type: !818, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !820)
!818 = !DISubroutineType(types: !819)
!819 = !{!165, !165}
!820 = !{}
!821 = !DILocalVariable(name: "arg", arg: 1, scope: !817, file: !7, line: 39, type: !165)
!822 = !DILocation(line: 39, column: 23, scope: !817)
!823 = !DILocalVariable(name: "basePtr", scope: !817, file: !7, line: 40, type: !5)
!824 = !DILocation(line: 40, column: 8, scope: !817)
!825 = !DILocation(line: 40, column: 34, scope: !817)
!826 = !DILocation(line: 41, column: 5, scope: !817)
!827 = !DILocation(line: 41, column: 14, scope: !817)
!828 = !DILocation(line: 42, column: 5, scope: !817)
!829 = distinct !DISubprogram(name: "createThread", linkageName: "_Z12createThreadv", scope: !7, file: !7, line: 45, type: !406, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !820)
!830 = !DILocalVariable(name: "a12Obj", scope: !829, file: !7, line: 46, type: !831)
!831 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "A12", file: !7, line: 30, size: 128, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !832, vtableHolder: !834, identifier: "_ZTS3A12")
!832 = !{!833, !841, !849}
!833 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !831, baseType: !834, flags: DIFlagPublic, extraData: i32 0)
!834 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "A1", file: !7, line: 16, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !835, vtableHolder: !6, identifier: "_ZTS2A1")
!835 = !{!836, !837}
!836 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !834, baseType: !6, offset: 32, flags: DIFlagPublic | DIFlagVirtual, extraData: i32 0)
!837 = !DISubprogram(name: "m1", linkageName: "_ZN2A12m1Ev", scope: !834, file: !7, line: 18, type: !838, scopeLine: 18, containingType: !834, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!838 = !DISubroutineType(types: !839)
!839 = !{null, !840}
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!841 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !831, baseType: !842, offset: 64, flags: DIFlagPublic, extraData: i32 0)
!842 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "A2", file: !7, line: 23, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !843, vtableHolder: !6, identifier: "_ZTS2A2")
!843 = !{!844, !845}
!844 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !842, baseType: !6, offset: 32, flags: DIFlagPublic | DIFlagVirtual, extraData: i32 0)
!845 = !DISubprogram(name: "m2", linkageName: "_ZN2A22m2Ev", scope: !842, file: !7, line: 25, type: !846, scopeLine: 25, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!846 = !DISubroutineType(types: !847)
!847 = !{null, !848}
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!849 = !DISubprogram(name: "m1", linkageName: "_ZN3A122m1Ev", scope: !831, file: !7, line: 32, type: !850, scopeLine: 32, containingType: !831, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!850 = !DISubroutineType(types: !851)
!851 = !{null, !852}
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!853 = !DILocation(line: 46, column: 9, scope: !829)
!854 = !DILocalVariable(name: "basePtr", scope: !829, file: !7, line: 47, type: !855)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!856 = !DILocation(line: 47, column: 10, scope: !829)
!857 = !DILocation(line: 48, column: 45, scope: !829)
!858 = !DILocation(line: 48, column: 5, scope: !829)
!859 = !DILocation(line: 49, column: 1, scope: !829)
!860 = distinct !DISubprogram(name: "A12", linkageName: "_ZN3A12C1Ev", scope: !831, file: !7, line: 30, type: !850, scopeLine: 30, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !861, retainedNodes: !820)
!861 = !DISubprogram(name: "A12", scope: !831, type: !850, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!862 = !DILocalVariable(name: "this", arg: 1, scope: !860, type: !855, flags: DIFlagArtificial | DIFlagObjectPointer)
!863 = !DILocation(line: 0, scope: !860)
!864 = !DILocation(line: 30, column: 7, scope: !860)
!865 = distinct !DISubprogram(name: "main", scope: !7, file: !7, line: 51, type: !12, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !820)
!866 = !DILocation(line: 52, column: 5, scope: !865)
!867 = !DILocation(line: 53, column: 18, scope: !865)
!868 = !DILocation(line: 53, column: 5, scope: !865)
!869 = !DILocation(line: 54, column: 5, scope: !865)
!870 = distinct !DISubprogram(name: "A", linkageName: "_ZN1AC2Ev", scope: !6, file: !7, line: 5, type: !16, scopeLine: 5, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !871, retainedNodes: !820)
!871 = !DISubprogram(name: "A", scope: !6, type: !16, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!872 = !DILocalVariable(name: "this", arg: 1, scope: !870, type: !5, flags: DIFlagArtificial | DIFlagObjectPointer)
!873 = !DILocation(line: 0, scope: !870)
!874 = !DILocation(line: 5, column: 7, scope: !870)
!875 = distinct !DISubprogram(name: "A1", linkageName: "_ZN2A1C2Ev", scope: !834, file: !7, line: 16, type: !838, scopeLine: 16, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !876, retainedNodes: !820)
!876 = !DISubprogram(name: "A1", scope: !834, type: !838, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!877 = !DILocalVariable(name: "this", arg: 1, scope: !875, type: !878, flags: DIFlagArtificial | DIFlagObjectPointer)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!879 = !DILocation(line: 0, scope: !875)
!880 = !DILocalVariable(name: "vtt", arg: 2, scope: !875, type: !881, flags: DIFlagArtificial)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!882 = !DILocation(line: 16, column: 7, scope: !875)
!883 = distinct !DISubprogram(name: "A2", linkageName: "_ZN2A2C2Ev", scope: !842, file: !7, line: 23, type: !846, scopeLine: 23, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !884, retainedNodes: !820)
!884 = !DISubprogram(name: "A2", scope: !842, type: !846, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!885 = !DILocalVariable(name: "this", arg: 1, scope: !883, type: !886, flags: DIFlagArtificial | DIFlagObjectPointer)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!887 = !DILocation(line: 0, scope: !883)
!888 = !DILocalVariable(name: "vtt", arg: 2, scope: !883, type: !881, flags: DIFlagArtificial)
!889 = !DILocation(line: 23, column: 7, scope: !883)
!890 = distinct !DISubprogram(name: "m1", linkageName: "_ZN2A12m1Ev", scope: !834, file: !7, line: 18, type: !838, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !837, retainedNodes: !820)
!891 = !DILocalVariable(name: "this", arg: 1, scope: !890, type: !878, flags: DIFlagArtificial | DIFlagObjectPointer)
!892 = !DILocation(line: 0, scope: !890)
!893 = !DILocation(line: 19, column: 19, scope: !890)
!894 = !DILocation(line: 20, column: 5, scope: !890)
!895 = distinct !DISubprogram(name: "m1", linkageName: "_ZN1A2m1Ev", scope: !6, file: !7, line: 7, type: !16, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !15, retainedNodes: !820)
!896 = !DILocalVariable(name: "this", arg: 1, scope: !895, type: !5, flags: DIFlagArtificial | DIFlagObjectPointer)
!897 = !DILocation(line: 0, scope: !895)
!898 = !DILocation(line: 8, column: 19, scope: !895)
!899 = !DILocation(line: 9, column: 5, scope: !895)
!900 = distinct !DISubprogram(name: "m1", linkageName: "_ZN3A122m1Ev", scope: !831, file: !7, line: 32, type: !850, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !849, retainedNodes: !820)
!901 = !DILocalVariable(name: "this", arg: 1, scope: !900, type: !855, flags: DIFlagArtificial | DIFlagObjectPointer)
!902 = !DILocation(line: 0, scope: !900)
!903 = !DILocation(line: 33, column: 19, scope: !900)
!904 = !DILocation(line: 34, column: 5, scope: !900)
!905 = distinct !DISubprogram(linkageName: "_ZTv0_n24_N2A12m1Ev", scope: !7, file: !7, line: 18, type: !906, flags: DIFlagArtificial | DIFlagThunk, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !820)
!906 = !DISubroutineType(types: !820)
!907 = !DILocation(line: 0, scope: !905)
!908 = distinct !DISubprogram(linkageName: "_ZTv0_n24_N3A122m1Ev", scope: !7, file: !7, line: 32, type: !906, flags: DIFlagArtificial | DIFlagThunk, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !820)
!909 = !DILocation(line: 0, scope: !908)
