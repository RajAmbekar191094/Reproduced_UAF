; ModuleID = '/home/cs22mtech12008/NEW_CLONE_FOR_BENCHMARKS/Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Inheritance_with_data/dynamic_upcast.cpp'
source_filename = "/home/cs22mtech12008/NEW_CLONE_FOR_BENCHMARKS/Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Inheritance_with_data/dynamic_upcast.cpp"
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
@t2 = dso_local global i64 0, align 8, !dbg !40
@_ZTVN10__cxxabiv117__class_type_infoE = external global ptr
@_ZTS1A = linkonce_odr dso_local constant [3 x i8] c"1A\00", comdat, align 1
@_ZTI1A = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS1A }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global ptr
@_ZTS2A1 = linkonce_odr dso_local constant [4 x i8] c"2A1\00", comdat, align 1
@_ZTI2A1 = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS2A1, ptr @_ZTI1A }, comdat, align 8
@_ZTS2A2 = linkonce_odr dso_local constant [4 x i8] c"2A2\00", comdat, align 1
@_ZTI2A2 = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS2A2, ptr @_ZTI1A }, comdat, align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [15 x i8] c"Base class m2:\00", align 1, !dbg !45
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !52
@.str.2 = private unnamed_addr constant [13 x i8] c"A2 class m2:\00", align 1, !dbg !57
@_ZTV2A1 = linkonce_odr dso_local unnamed_addr constant { [3 x ptr] } { [3 x ptr] [ptr null, ptr @_ZTI2A1, ptr @_ZN2A12m1Ev] }, comdat, align 8
@_ZTV1A = linkonce_odr dso_local unnamed_addr constant { [3 x ptr] } { [3 x ptr] [ptr null, ptr @_ZTI1A, ptr @_ZN1A2m1Ev] }, comdat, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"Base class m1:\00", align 1, !dbg !62
@.str.4 = private unnamed_addr constant [13 x i8] c"A1 class m1:\00", align 1, !dbg !64
@_ZTV2A2 = linkonce_odr dso_local unnamed_addr constant { [3 x ptr] } { [3 x ptr] [ptr null, ptr @_ZTI2A2, ptr @_ZN1A2m1Ev] }, comdat, align 8

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef ptr @_Z10runThread1Pv(ptr noundef %0) #0 !dbg !990 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !994, metadata !DIExpression()), !dbg !995
  %5 = call i32 @sleep(i32 noundef 5), !dbg !996
  call void @llvm.dbg.declare(metadata ptr %3, metadata !997, metadata !DIExpression()), !dbg !998
  %6 = load ptr, ptr %2, align 8, !dbg !999
  store ptr %6, ptr %3, align 8, !dbg !998
  %7 = load ptr, ptr %3, align 8, !dbg !1000
  %8 = load ptr, ptr %7, align 8, !dbg !1001
  %9 = getelementptr inbounds ptr, ptr %8, i64 0, !dbg !1001
  %10 = load ptr, ptr %9, align 8, !dbg !1001
  call void %10(ptr noundef nonnull align 8 dereferenceable(12) %7), !dbg !1001
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1002, metadata !DIExpression()), !dbg !1003
  %11 = load ptr, ptr %3, align 8, !dbg !1004
  %12 = icmp eq ptr %11, null, !dbg !1005
  br i1 %12, label %15, label %13, !dbg !1005

13:                                               ; preds = %1
  %14 = call ptr @__dynamic_cast(ptr %11, ptr @_ZTI1A, ptr @_ZTI2A1, i64 0) #7, !dbg !1005
  br label %16, !dbg !1005

15:                                               ; preds = %1
  br label %16, !dbg !1005

16:                                               ; preds = %15, %13
  %17 = phi ptr [ %14, %13 ], [ null, %15 ], !dbg !1005
  store ptr %17, ptr %4, align 8, !dbg !1003
  %18 = load ptr, ptr %4, align 8, !dbg !1006
  %19 = load ptr, ptr %18, align 8, !dbg !1007
  %20 = getelementptr inbounds ptr, ptr %19, i64 0, !dbg !1007
  %21 = load ptr, ptr %20, align 8, !dbg !1007
  call void %21(ptr noundef nonnull align 8 dereferenceable(16) %18), !dbg !1007
  ret ptr null, !dbg !1008
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @sleep(i32 noundef) #2

; Function Attrs: nounwind memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) #3

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef ptr @_Z10runThread2Pv(ptr noundef %0) #0 !dbg !1009 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1010, metadata !DIExpression()), !dbg !1011
  %5 = call i32 @sleep(i32 noundef 5), !dbg !1012
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1013, metadata !DIExpression()), !dbg !1014
  %6 = load ptr, ptr %2, align 8, !dbg !1015
  store ptr %6, ptr %3, align 8, !dbg !1014
  %7 = load ptr, ptr %3, align 8, !dbg !1016
  call void @_ZN1A2m2Ev(ptr noundef nonnull align 8 dereferenceable(12) %7), !dbg !1017
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1018, metadata !DIExpression()), !dbg !1019
  %8 = load ptr, ptr %3, align 8, !dbg !1020
  %9 = icmp eq ptr %8, null, !dbg !1021
  br i1 %9, label %12, label %10, !dbg !1021

10:                                               ; preds = %1
  %11 = call ptr @__dynamic_cast(ptr %8, ptr @_ZTI1A, ptr @_ZTI2A2, i64 0) #7, !dbg !1021
  br label %13, !dbg !1021

12:                                               ; preds = %1
  br label %13, !dbg !1021

13:                                               ; preds = %12, %10
  %14 = phi ptr [ %11, %10 ], [ null, %12 ], !dbg !1021
  store ptr %14, ptr %4, align 8, !dbg !1019
  %15 = load ptr, ptr %4, align 8, !dbg !1022
  call void @_ZN2A22m2Ev(ptr noundef nonnull align 8 dereferenceable(16) %15), !dbg !1023
  ret ptr null, !dbg !1024
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN1A2m2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) #0 comdat align 2 !dbg !1025 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1026, metadata !DIExpression()), !dbg !1027
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str), !dbg !1028
  %5 = getelementptr inbounds %class.A, ptr %3, i32 0, i32 1, !dbg !1029
  %6 = load i32, ptr %5, align 8, !dbg !1029
  %7 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %6), !dbg !1030
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef @.str.1), !dbg !1031
  ret void, !dbg !1032
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN2A22m2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #0 comdat align 2 !dbg !1033 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1034, metadata !DIExpression()), !dbg !1035
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.2), !dbg !1036
  %5 = getelementptr inbounds %class.A2, ptr %3, i32 0, i32 1, !dbg !1037
  %6 = load i32, ptr %5, align 4, !dbg !1037
  %7 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %6), !dbg !1038
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef @.str.1), !dbg !1039
  ret void, !dbg !1040
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z12createThreadv() #0 !dbg !1041 {
  %1 = alloca %class.A1, align 8
  %2 = alloca %class.A2, align 8
  call void @llvm.dbg.declare(metadata ptr %1, metadata !1042, metadata !DIExpression()), !dbg !1043
  call void @_ZN2A1C2Ev(ptr noundef nonnull align 8 dereferenceable(16) %1) #7, !dbg !1043
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1044, metadata !DIExpression()), !dbg !1045
  call void @_ZN2A2C2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #7, !dbg !1045
  %3 = call i32 @pthread_create(ptr noundef @t1, ptr noundef null, ptr noundef @_Z10runThread1Pv, ptr noundef %1) #7, !dbg !1046
  %4 = load i64, ptr @t1, align 8, !dbg !1047
  %5 = call i32 @pthread_join(i64 noundef %4, ptr noundef null), !dbg !1048
  %6 = call i32 @pthread_create(ptr noundef @t2, ptr noundef null, ptr noundef @_Z10runThread2Pv, ptr noundef %2) #7, !dbg !1049
  %7 = load i64, ptr @t2, align 8, !dbg !1050
  %8 = call i32 @pthread_join(i64 noundef %7, ptr noundef null), !dbg !1051
  ret void, !dbg !1052
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN2A1C2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 !dbg !1053 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1055, metadata !DIExpression()), !dbg !1056
  %3 = load ptr, ptr %2, align 8
  call void @_ZN1AC2Ev(ptr noundef nonnull align 8 dereferenceable(12) %3) #7, !dbg !1057
  store ptr getelementptr inbounds ({ [3 x ptr] }, ptr @_ZTV2A1, i32 0, inrange i32 0, i32 2), ptr %3, align 8, !dbg !1057
  %4 = getelementptr inbounds %class.A1, ptr %3, i32 0, i32 1, !dbg !1058
  store i32 20, ptr %4, align 4, !dbg !1058
  ret void, !dbg !1057
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN2A2C2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 !dbg !1059 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1061, metadata !DIExpression()), !dbg !1062
  %3 = load ptr, ptr %2, align 8
  call void @_ZN1AC2Ev(ptr noundef nonnull align 8 dereferenceable(12) %3) #7, !dbg !1063
  store ptr getelementptr inbounds ({ [3 x ptr] }, ptr @_ZTV2A2, i32 0, inrange i32 0, i32 2), ptr %3, align 8, !dbg !1063
  %4 = getelementptr inbounds %class.A2, ptr %3, i32 0, i32 1, !dbg !1064
  store i32 30, ptr %4, align 4, !dbg !1064
  ret void, !dbg !1063
}

; Function Attrs: nounwind
declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #5

declare i32 @pthread_join(i64 noundef, ptr noundef) #2

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main() #6 !dbg !1065 {
  %1 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  call void @_Z12createThreadv(), !dbg !1066
  ret i32 0, !dbg !1067
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN1AC2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #4 comdat align 2 !dbg !1068 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1070, metadata !DIExpression()), !dbg !1071
  %3 = load ptr, ptr %2, align 8
  store ptr getelementptr inbounds ({ [3 x ptr] }, ptr @_ZTV1A, i32 0, inrange i32 0, i32 2), ptr %3, align 8, !dbg !1072
  %4 = getelementptr inbounds %class.A, ptr %3, i32 0, i32 1, !dbg !1073
  store i32 10, ptr %4, align 8, !dbg !1073
  ret void, !dbg !1072
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN2A12m1Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 !dbg !1074 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1075, metadata !DIExpression()), !dbg !1076
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.4), !dbg !1077
  %5 = getelementptr inbounds %class.A1, ptr %3, i32 0, i32 1, !dbg !1078
  %6 = load i32, ptr %5, align 4, !dbg !1078
  %7 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %6), !dbg !1079
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef @.str.1), !dbg !1080
  ret void, !dbg !1081
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN1A2m1Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #0 comdat align 2 !dbg !1082 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1083, metadata !DIExpression()), !dbg !1084
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.3), !dbg !1085
  %5 = getelementptr inbounds %class.A, ptr %3, i32 0, i32 1, !dbg !1086
  %6 = load i32, ptr %5, align 8, !dbg !1086
  %7 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %6), !dbg !1087
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef @.str.1), !dbg !1088
  ret void, !dbg !1089
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
!llvm.module.flags = !{!982, !983, !984, !985, !986, !987, !988}
!llvm.ident = !{!989}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "t1", scope: !2, file: !7, line: 5, type: !42, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !3, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !39, imports: !66, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/cs22mtech12008/NEW_CLONE_FOR_BENCHMARKS/Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Inheritance_with_data/dynamic_upcast.cpp", directory: "/home/cs22mtech12008/UseAfterScope/Scripts", checksumkind: CSK_MD5, checksum: "9ff93949a7011877d70169ed14337683")
!4 = !{!5, !21, !30}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "A", file: !7, line: 8, size: 128, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !8, vtableHolder: !6, identifier: "_ZTS1A")
!7 = !DIFile(filename: "NEW_CLONE_FOR_BENCHMARKS/Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Inheritance_with_data/dynamic_upcast.cpp", directory: "/home/cs22mtech12008", checksumkind: CSK_MD5, checksum: "9ff93949a7011877d70169ed14337683")
!8 = !{!9, !15, !16, !20}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$A", scope: !7, file: !7, baseType: !10, size: 64, flags: DIFlagArtificial)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "__vtbl_ptr_type", baseType: !12, size: 64)
!12 = !DISubroutineType(types: !13)
!13 = !{!14}
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !6, file: !7, line: 10, baseType: !14, size: 32, offset: 64, flags: DIFlagPublic)
!16 = !DISubprogram(name: "m1", linkageName: "_ZN1A2m1Ev", scope: !6, file: !7, line: 11, type: !17, scopeLine: 11, containingType: !6, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!17 = !DISubroutineType(types: !18)
!18 = !{null, !19}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!20 = !DISubprogram(name: "m2", linkageName: "_ZN1A2m2Ev", scope: !6, file: !7, line: 15, type: !17, scopeLine: 15, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "A1", file: !7, line: 22, size: 128, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !23, vtableHolder: !6, identifier: "_ZTS2A1")
!23 = !{!24, !25, !26}
!24 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !22, baseType: !6, flags: DIFlagPublic, extraData: i32 0)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "a1", scope: !22, file: !7, line: 24, baseType: !14, size: 32, offset: 96, flags: DIFlagPublic)
!26 = !DISubprogram(name: "m1", linkageName: "_ZN2A12m1Ev", scope: !22, file: !7, line: 25, type: !27, scopeLine: 25, containingType: !22, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!27 = !DISubroutineType(types: !28)
!28 = !{null, !29}
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "A2", file: !7, line: 30, size: 128, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !32, vtableHolder: !6, identifier: "_ZTS2A2")
!32 = !{!33, !34, !35}
!33 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !31, baseType: !6, flags: DIFlagPublic, extraData: i32 0)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "a2", scope: !31, file: !7, line: 32, baseType: !14, size: 32, offset: 96, flags: DIFlagPublic)
!35 = !DISubprogram(name: "m2", linkageName: "_ZN2A22m2Ev", scope: !31, file: !7, line: 33, type: !36, scopeLine: 33, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!36 = !DISubroutineType(types: !37)
!37 = !{null, !38}
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!39 = !{!0, !40, !45, !52, !57, !62, !64}
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "t2", scope: !2, file: !7, line: 5, type: !42, isLocal: false, isDefinition: true)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !43, line: 27, baseType: !44)
!43 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "2d764266ce95ab26d4a4767c2ec78176")
!44 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(scope: null, file: !7, line: 16, type: !47, isLocal: true, isDefinition: true)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 120, elements: !50)
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!49 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!50 = !{!51}
!51 = !DISubrange(count: 15)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !7, line: 16, type: !54, isLocal: true, isDefinition: true)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 16, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 2)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(scope: null, file: !7, line: 34, type: !59, isLocal: true, isDefinition: true)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 104, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 13)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(scope: null, file: !7, line: 12, type: !47, isLocal: true, isDefinition: true)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(scope: null, file: !7, line: 26, type: !59, isLocal: true, isDefinition: true)
!66 = !{!67, !86, !89, !94, !102, !110, !114, !121, !125, !129, !131, !133, !137, !147, !151, !157, !163, !165, !169, !173, !177, !181, !194, !196, !200, !204, !208, !210, !216, !220, !224, !226, !228, !232, !240, !244, !248, !252, !254, !260, !262, !269, !274, !278, !283, !287, !291, !295, !297, !299, !303, !307, !311, !313, !317, !321, !323, !325, !329, !335, !340, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !359, !363, !368, !372, !376, !381, !387, !389, !391, !393, !395, !397, !399, !401, !403, !405, !407, !409, !411, !413, !417, !421, !425, !431, !435, !439, !444, !446, !450, !454, !458, !468, !470, !474, !478, !482, !486, !490, !494, !498, !502, !506, !510, !514, !516, !518, !522, !526, !532, !536, !540, !542, !546, !550, !556, !558, !562, !566, !570, !574, !578, !582, !586, !587, !588, !589, !591, !592, !593, !594, !595, !596, !597, !601, !607, !612, !616, !618, !620, !622, !624, !631, !635, !639, !643, !647, !651, !656, !660, !662, !666, !672, !676, !681, !683, !685, !689, !693, !695, !697, !699, !701, !705, !707, !709, !713, !717, !721, !725, !729, !733, !735, !739, !743, !747, !751, !753, !755, !759, !763, !764, !765, !766, !767, !768, !776, !784, !787, !788, !790, !792, !794, !796, !800, !802, !804, !806, !808, !810, !812, !814, !816, !820, !824, !826, !830, !834, !840, !844, !846, !849, !852, !854, !856, !858, !861, !864, !867, !870, !873, !875, !880, !884, !887, !890, !892, !894, !896, !898, !901, !904, !907, !910, !913, !915, !920, !924, !925, !930, !934, !939, !944, !948, !954, !958, !960, !964, !971, !976, !981}
!67 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !69, file: !85, line: 64)
!68 = !DINamespace(name: "std", scope: null)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !70, line: 6, baseType: !71)
!70 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !72, line: 21, baseType: !73)
!72 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !72, line: 13, size: 64, flags: DIFlagTypePassByValue, elements: !74, identifier: "_ZTS11__mbstate_t")
!74 = !{!75, !76}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !73, file: !72, line: 15, baseType: !14, size: 32)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !73, file: !72, line: 20, baseType: !77, size: 32, offset: 32)
!77 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !73, file: !72, line: 16, size: 32, flags: DIFlagTypePassByValue, elements: !78, identifier: "_ZTSN11__mbstate_tUt_E")
!78 = !{!79, !81}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !77, file: !72, line: 18, baseType: !80, size: 32)
!80 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !77, file: !72, line: 19, baseType: !82, size: 32)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 32, elements: !83)
!83 = !{!84}
!84 = !DISubrange(count: 4)
!85 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cwchar", directory: "")
!86 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !87, file: !85, line: 141)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !88, line: 20, baseType: !80)
!88 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!89 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !90, file: !85, line: 143)
!90 = !DISubprogram(name: "btowc", scope: !91, file: !91, line: 284, type: !92, flags: DIFlagPrototyped, spFlags: 0)
!91 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "8900d9ecbbe40d052c41becfbc5b5531")
!92 = !DISubroutineType(types: !93)
!93 = !{!87, !14}
!94 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !95, file: !85, line: 144)
!95 = !DISubprogram(name: "fgetwc", scope: !91, file: !91, line: 726, type: !96, flags: DIFlagPrototyped, spFlags: 0)
!96 = !DISubroutineType(types: !97)
!97 = !{!87, !98}
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !100, line: 5, baseType: !101)
!100 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "72a8fe90981f484acae7c6f3dfc5c2b7")
!101 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !100, line: 4, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS8_IO_FILE")
!102 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !103, file: !85, line: 145)
!103 = !DISubprogram(name: "fgetws", scope: !91, file: !91, line: 755, type: !104, flags: DIFlagPrototyped, spFlags: 0)
!104 = !DISubroutineType(types: !105)
!105 = !{!106, !108, !14, !109}
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!108 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !106)
!109 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !98)
!110 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !111, file: !85, line: 146)
!111 = !DISubprogram(name: "fputwc", scope: !91, file: !91, line: 740, type: !112, flags: DIFlagPrototyped, spFlags: 0)
!112 = !DISubroutineType(types: !113)
!113 = !{!87, !107, !98}
!114 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !115, file: !85, line: 147)
!115 = !DISubprogram(name: "fputws", scope: !91, file: !91, line: 762, type: !116, flags: DIFlagPrototyped, spFlags: 0)
!116 = !DISubroutineType(types: !117)
!117 = !{!14, !118, !109}
!118 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !119)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!121 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !122, file: !85, line: 148)
!122 = !DISubprogram(name: "fwide", scope: !91, file: !91, line: 573, type: !123, flags: DIFlagPrototyped, spFlags: 0)
!123 = !DISubroutineType(types: !124)
!124 = !{!14, !98, !14}
!125 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !126, file: !85, line: 149)
!126 = !DISubprogram(name: "fwprintf", scope: !91, file: !91, line: 580, type: !127, flags: DIFlagPrototyped, spFlags: 0)
!127 = !DISubroutineType(types: !128)
!128 = !{!14, !109, !118, null}
!129 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !130, file: !85, line: 150)
!130 = !DISubprogram(name: "fwscanf", linkageName: "__isoc99_fwscanf", scope: !91, file: !91, line: 640, type: !127, flags: DIFlagPrototyped, spFlags: 0)
!131 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !132, file: !85, line: 151)
!132 = !DISubprogram(name: "getwc", scope: !91, file: !91, line: 727, type: !96, flags: DIFlagPrototyped, spFlags: 0)
!133 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !134, file: !85, line: 152)
!134 = !DISubprogram(name: "getwchar", scope: !91, file: !91, line: 733, type: !135, flags: DIFlagPrototyped, spFlags: 0)
!135 = !DISubroutineType(types: !136)
!136 = !{!87}
!137 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !138, file: !85, line: 153)
!138 = !DISubprogram(name: "mbrlen", scope: !91, file: !91, line: 307, type: !139, flags: DIFlagPrototyped, spFlags: 0)
!139 = !DISubroutineType(types: !140)
!140 = !{!141, !143, !141, !145}
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !142, line: 46, baseType: !44)
!142 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/cs22mtech12008", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!143 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !144)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !146)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!147 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !148, file: !85, line: 154)
!148 = !DISubprogram(name: "mbrtowc", scope: !91, file: !91, line: 296, type: !149, flags: DIFlagPrototyped, spFlags: 0)
!149 = !DISubroutineType(types: !150)
!150 = !{!141, !108, !143, !141, !145}
!151 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !152, file: !85, line: 155)
!152 = !DISubprogram(name: "mbsinit", scope: !91, file: !91, line: 292, type: !153, flags: DIFlagPrototyped, spFlags: 0)
!153 = !DISubroutineType(types: !154)
!154 = !{!14, !155}
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!157 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !158, file: !85, line: 156)
!158 = !DISubprogram(name: "mbsrtowcs", scope: !91, file: !91, line: 337, type: !159, flags: DIFlagPrototyped, spFlags: 0)
!159 = !DISubroutineType(types: !160)
!160 = !{!141, !108, !161, !141, !145}
!161 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !162)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!163 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !164, file: !85, line: 157)
!164 = !DISubprogram(name: "putwc", scope: !91, file: !91, line: 741, type: !112, flags: DIFlagPrototyped, spFlags: 0)
!165 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !166, file: !85, line: 158)
!166 = !DISubprogram(name: "putwchar", scope: !91, file: !91, line: 747, type: !167, flags: DIFlagPrototyped, spFlags: 0)
!167 = !DISubroutineType(types: !168)
!168 = !{!87, !107}
!169 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !170, file: !85, line: 160)
!170 = !DISubprogram(name: "swprintf", scope: !91, file: !91, line: 590, type: !171, flags: DIFlagPrototyped, spFlags: 0)
!171 = !DISubroutineType(types: !172)
!172 = !{!14, !108, !141, !118, null}
!173 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !174, file: !85, line: 162)
!174 = !DISubprogram(name: "swscanf", linkageName: "__isoc99_swscanf", scope: !91, file: !91, line: 647, type: !175, flags: DIFlagPrototyped, spFlags: 0)
!175 = !DISubroutineType(types: !176)
!176 = !{!14, !118, !118, null}
!177 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !178, file: !85, line: 163)
!178 = !DISubprogram(name: "ungetwc", scope: !91, file: !91, line: 770, type: !179, flags: DIFlagPrototyped, spFlags: 0)
!179 = !DISubroutineType(types: !180)
!180 = !{!87, !87, !98}
!181 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !182, file: !85, line: 164)
!182 = !DISubprogram(name: "vfwprintf", scope: !91, file: !91, line: 598, type: !183, flags: DIFlagPrototyped, spFlags: 0)
!183 = !DISubroutineType(types: !184)
!184 = !{!14, !109, !118, !185}
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, flags: DIFlagTypePassByValue, elements: !187, identifier: "_ZTS13__va_list_tag")
!187 = !{!188, !190, !191, !193}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !186, file: !189, baseType: !80, size: 32)
!189 = !DIFile(filename: "NEW_CLONE_FOR_BENCHMARKS/Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Inheritance_with_data/dynamic_upcast.cpp", directory: "/home/cs22mtech12008")
!190 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !186, file: !189, baseType: !80, size: 32, offset: 32)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !186, file: !189, baseType: !192, size: 64, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !186, file: !189, baseType: !192, size: 64, offset: 128)
!194 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !195, file: !85, line: 166)
!195 = !DISubprogram(name: "vfwscanf", linkageName: "__isoc99_vfwscanf", scope: !91, file: !91, line: 693, type: !183, flags: DIFlagPrototyped, spFlags: 0)
!196 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !197, file: !85, line: 169)
!197 = !DISubprogram(name: "vswprintf", scope: !91, file: !91, line: 611, type: !198, flags: DIFlagPrototyped, spFlags: 0)
!198 = !DISubroutineType(types: !199)
!199 = !{!14, !108, !141, !118, !185}
!200 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !201, file: !85, line: 172)
!201 = !DISubprogram(name: "vswscanf", linkageName: "__isoc99_vswscanf", scope: !91, file: !91, line: 700, type: !202, flags: DIFlagPrototyped, spFlags: 0)
!202 = !DISubroutineType(types: !203)
!203 = !{!14, !118, !118, !185}
!204 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !205, file: !85, line: 174)
!205 = !DISubprogram(name: "vwprintf", scope: !91, file: !91, line: 606, type: !206, flags: DIFlagPrototyped, spFlags: 0)
!206 = !DISubroutineType(types: !207)
!207 = !{!14, !118, !185}
!208 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !209, file: !85, line: 176)
!209 = !DISubprogram(name: "vwscanf", linkageName: "__isoc99_vwscanf", scope: !91, file: !91, line: 697, type: !206, flags: DIFlagPrototyped, spFlags: 0)
!210 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !211, file: !85, line: 178)
!211 = !DISubprogram(name: "wcrtomb", scope: !91, file: !91, line: 301, type: !212, flags: DIFlagPrototyped, spFlags: 0)
!212 = !DISubroutineType(types: !213)
!213 = !{!141, !214, !107, !145}
!214 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !215)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!216 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !217, file: !85, line: 179)
!217 = !DISubprogram(name: "wcscat", scope: !91, file: !91, line: 97, type: !218, flags: DIFlagPrototyped, spFlags: 0)
!218 = !DISubroutineType(types: !219)
!219 = !{!106, !108, !118}
!220 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !221, file: !85, line: 180)
!221 = !DISubprogram(name: "wcscmp", scope: !91, file: !91, line: 106, type: !222, flags: DIFlagPrototyped, spFlags: 0)
!222 = !DISubroutineType(types: !223)
!223 = !{!14, !119, !119}
!224 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !225, file: !85, line: 181)
!225 = !DISubprogram(name: "wcscoll", scope: !91, file: !91, line: 131, type: !222, flags: DIFlagPrototyped, spFlags: 0)
!226 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !227, file: !85, line: 182)
!227 = !DISubprogram(name: "wcscpy", scope: !91, file: !91, line: 87, type: !218, flags: DIFlagPrototyped, spFlags: 0)
!228 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !229, file: !85, line: 183)
!229 = !DISubprogram(name: "wcscspn", scope: !91, file: !91, line: 187, type: !230, flags: DIFlagPrototyped, spFlags: 0)
!230 = !DISubroutineType(types: !231)
!231 = !{!141, !119, !119}
!232 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !233, file: !85, line: 184)
!233 = !DISubprogram(name: "wcsftime", scope: !91, file: !91, line: 834, type: !234, flags: DIFlagPrototyped, spFlags: 0)
!234 = !DISubroutineType(types: !235)
!235 = !{!141, !108, !141, !118, !236}
!236 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !237)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !239)
!239 = !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !91, line: 83, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS2tm")
!240 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !241, file: !85, line: 185)
!241 = !DISubprogram(name: "wcslen", scope: !91, file: !91, line: 222, type: !242, flags: DIFlagPrototyped, spFlags: 0)
!242 = !DISubroutineType(types: !243)
!243 = !{!141, !119}
!244 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !245, file: !85, line: 186)
!245 = !DISubprogram(name: "wcsncat", scope: !91, file: !91, line: 101, type: !246, flags: DIFlagPrototyped, spFlags: 0)
!246 = !DISubroutineType(types: !247)
!247 = !{!106, !108, !118, !141}
!248 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !249, file: !85, line: 187)
!249 = !DISubprogram(name: "wcsncmp", scope: !91, file: !91, line: 109, type: !250, flags: DIFlagPrototyped, spFlags: 0)
!250 = !DISubroutineType(types: !251)
!251 = !{!14, !119, !119, !141}
!252 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !253, file: !85, line: 188)
!253 = !DISubprogram(name: "wcsncpy", scope: !91, file: !91, line: 92, type: !246, flags: DIFlagPrototyped, spFlags: 0)
!254 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !255, file: !85, line: 189)
!255 = !DISubprogram(name: "wcsrtombs", scope: !91, file: !91, line: 343, type: !256, flags: DIFlagPrototyped, spFlags: 0)
!256 = !DISubroutineType(types: !257)
!257 = !{!141, !214, !258, !141, !145}
!258 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !259)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!260 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !261, file: !85, line: 190)
!261 = !DISubprogram(name: "wcsspn", scope: !91, file: !91, line: 191, type: !230, flags: DIFlagPrototyped, spFlags: 0)
!262 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !263, file: !85, line: 191)
!263 = !DISubprogram(name: "wcstod", scope: !91, file: !91, line: 377, type: !264, flags: DIFlagPrototyped, spFlags: 0)
!264 = !DISubroutineType(types: !265)
!265 = !{!266, !118, !267}
!266 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!267 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !268)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!269 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !270, file: !85, line: 193)
!270 = !DISubprogram(name: "wcstof", scope: !91, file: !91, line: 382, type: !271, flags: DIFlagPrototyped, spFlags: 0)
!271 = !DISubroutineType(types: !272)
!272 = !{!273, !118, !267}
!273 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!274 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !275, file: !85, line: 195)
!275 = !DISubprogram(name: "wcstok", scope: !91, file: !91, line: 217, type: !276, flags: DIFlagPrototyped, spFlags: 0)
!276 = !DISubroutineType(types: !277)
!277 = !{!106, !108, !118, !267}
!278 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !279, file: !85, line: 196)
!279 = !DISubprogram(name: "wcstol", scope: !91, file: !91, line: 428, type: !280, flags: DIFlagPrototyped, spFlags: 0)
!280 = !DISubroutineType(types: !281)
!281 = !{!282, !118, !267, !14}
!282 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!283 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !284, file: !85, line: 197)
!284 = !DISubprogram(name: "wcstoul", scope: !91, file: !91, line: 433, type: !285, flags: DIFlagPrototyped, spFlags: 0)
!285 = !DISubroutineType(types: !286)
!286 = !{!44, !118, !267, !14}
!287 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !288, file: !85, line: 198)
!288 = !DISubprogram(name: "wcsxfrm", scope: !91, file: !91, line: 135, type: !289, flags: DIFlagPrototyped, spFlags: 0)
!289 = !DISubroutineType(types: !290)
!290 = !{!141, !108, !118, !141}
!291 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !292, file: !85, line: 199)
!292 = !DISubprogram(name: "wctob", scope: !91, file: !91, line: 288, type: !293, flags: DIFlagPrototyped, spFlags: 0)
!293 = !DISubroutineType(types: !294)
!294 = !{!14, !87}
!295 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !296, file: !85, line: 200)
!296 = !DISubprogram(name: "wmemcmp", scope: !91, file: !91, line: 258, type: !250, flags: DIFlagPrototyped, spFlags: 0)
!297 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !298, file: !85, line: 201)
!298 = !DISubprogram(name: "wmemcpy", scope: !91, file: !91, line: 262, type: !246, flags: DIFlagPrototyped, spFlags: 0)
!299 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !300, file: !85, line: 202)
!300 = !DISubprogram(name: "wmemmove", scope: !91, file: !91, line: 267, type: !301, flags: DIFlagPrototyped, spFlags: 0)
!301 = !DISubroutineType(types: !302)
!302 = !{!106, !106, !119, !141}
!303 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !304, file: !85, line: 203)
!304 = !DISubprogram(name: "wmemset", scope: !91, file: !91, line: 271, type: !305, flags: DIFlagPrototyped, spFlags: 0)
!305 = !DISubroutineType(types: !306)
!306 = !{!106, !106, !107, !141}
!307 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !308, file: !85, line: 204)
!308 = !DISubprogram(name: "wprintf", scope: !91, file: !91, line: 587, type: !309, flags: DIFlagPrototyped, spFlags: 0)
!309 = !DISubroutineType(types: !310)
!310 = !{!14, !118, null}
!311 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !312, file: !85, line: 205)
!312 = !DISubprogram(name: "wscanf", linkageName: "__isoc99_wscanf", scope: !91, file: !91, line: 644, type: !309, flags: DIFlagPrototyped, spFlags: 0)
!313 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !314, file: !85, line: 206)
!314 = !DISubprogram(name: "wcschr", scope: !91, file: !91, line: 164, type: !315, flags: DIFlagPrototyped, spFlags: 0)
!315 = !DISubroutineType(types: !316)
!316 = !{!106, !119, !107}
!317 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !318, file: !85, line: 207)
!318 = !DISubprogram(name: "wcspbrk", scope: !91, file: !91, line: 201, type: !319, flags: DIFlagPrototyped, spFlags: 0)
!319 = !DISubroutineType(types: !320)
!320 = !{!106, !119, !119}
!321 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !322, file: !85, line: 208)
!322 = !DISubprogram(name: "wcsrchr", scope: !91, file: !91, line: 174, type: !315, flags: DIFlagPrototyped, spFlags: 0)
!323 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !324, file: !85, line: 209)
!324 = !DISubprogram(name: "wcsstr", scope: !91, file: !91, line: 212, type: !319, flags: DIFlagPrototyped, spFlags: 0)
!325 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !326, file: !85, line: 210)
!326 = !DISubprogram(name: "wmemchr", scope: !91, file: !91, line: 253, type: !327, flags: DIFlagPrototyped, spFlags: 0)
!327 = !DISubroutineType(types: !328)
!328 = !{!106, !119, !107, !141}
!329 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !330, entity: !331, file: !85, line: 251)
!330 = !DINamespace(name: "__gnu_cxx", scope: null)
!331 = !DISubprogram(name: "wcstold", scope: !91, file: !91, line: 384, type: !332, flags: DIFlagPrototyped, spFlags: 0)
!332 = !DISubroutineType(types: !333)
!333 = !{!334, !118, !267}
!334 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!335 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !330, entity: !336, file: !85, line: 260)
!336 = !DISubprogram(name: "wcstoll", scope: !91, file: !91, line: 441, type: !337, flags: DIFlagPrototyped, spFlags: 0)
!337 = !DISubroutineType(types: !338)
!338 = !{!339, !118, !267, !14}
!339 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!340 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !330, entity: !341, file: !85, line: 261)
!341 = !DISubprogram(name: "wcstoull", scope: !91, file: !91, line: 448, type: !342, flags: DIFlagPrototyped, spFlags: 0)
!342 = !DISubroutineType(types: !343)
!343 = !{!344, !118, !267, !14}
!344 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!345 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !331, file: !85, line: 267)
!346 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !336, file: !85, line: 268)
!347 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !341, file: !85, line: 269)
!348 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !270, file: !85, line: 283)
!349 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !195, file: !85, line: 286)
!350 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !201, file: !85, line: 289)
!351 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !209, file: !85, line: 292)
!352 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !331, file: !85, line: 296)
!353 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !336, file: !85, line: 297)
!354 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !341, file: !85, line: 298)
!355 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !356, file: !357, line: 66)
!356 = !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !358, file: !357, line: 97, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!357 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/exception_ptr.h", directory: "", checksumkind: CSK_MD5, checksum: "314ad14748ccb9ff85c65d17ebb0828b")
!358 = !DINamespace(name: "__exception_ptr", scope: !68)
!359 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !358, entity: !360, file: !357, line: 85)
!360 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !68, file: !357, line: 81, type: !361, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!361 = !DISubroutineType(types: !362)
!362 = !{null, !356}
!363 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !364, file: !357, line: 243)
!364 = !DISubprogram(name: "swap", linkageName: "_ZNSt15__exception_ptr4swapERNS_13exception_ptrES1_", scope: !358, file: !357, line: 230, type: !365, flags: DIFlagPrototyped, spFlags: 0)
!365 = !DISubroutineType(types: !366)
!366 = !{null, !367, !367}
!367 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !356, size: 64)
!368 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !369, file: !371, line: 53)
!369 = !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !370, line: 51, size: 768, flags: DIFlagFwdDecl, identifier: "_ZTS5lconv")
!370 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "0cf373fc44eed8073800bdb9da87b72f")
!371 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/clocale", directory: "")
!372 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !373, file: !371, line: 54)
!373 = !DISubprogram(name: "setlocale", scope: !370, file: !370, line: 122, type: !374, flags: DIFlagPrototyped, spFlags: 0)
!374 = !DISubroutineType(types: !375)
!375 = !{!215, !14, !144}
!376 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !377, file: !371, line: 55)
!377 = !DISubprogram(name: "localeconv", scope: !370, file: !370, line: 125, type: !378, flags: DIFlagPrototyped, spFlags: 0)
!378 = !DISubroutineType(types: !379)
!379 = !{!380}
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!381 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !382, file: !386, line: 64)
!382 = !DISubprogram(name: "isalnum", scope: !383, file: !383, line: 108, type: !384, flags: DIFlagPrototyped, spFlags: 0)
!383 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "36575f934ef4fe7e9d50a3cb17bd5c66")
!384 = !DISubroutineType(types: !385)
!385 = !{!14, !14}
!386 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cctype", directory: "")
!387 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !388, file: !386, line: 65)
!388 = !DISubprogram(name: "isalpha", scope: !383, file: !383, line: 109, type: !384, flags: DIFlagPrototyped, spFlags: 0)
!389 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !390, file: !386, line: 66)
!390 = !DISubprogram(name: "iscntrl", scope: !383, file: !383, line: 110, type: !384, flags: DIFlagPrototyped, spFlags: 0)
!391 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !392, file: !386, line: 67)
!392 = !DISubprogram(name: "isdigit", scope: !383, file: !383, line: 111, type: !384, flags: DIFlagPrototyped, spFlags: 0)
!393 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !394, file: !386, line: 68)
!394 = !DISubprogram(name: "isgraph", scope: !383, file: !383, line: 113, type: !384, flags: DIFlagPrototyped, spFlags: 0)
!395 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !396, file: !386, line: 69)
!396 = !DISubprogram(name: "islower", scope: !383, file: !383, line: 112, type: !384, flags: DIFlagPrototyped, spFlags: 0)
!397 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !398, file: !386, line: 70)
!398 = !DISubprogram(name: "isprint", scope: !383, file: !383, line: 114, type: !384, flags: DIFlagPrototyped, spFlags: 0)
!399 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !400, file: !386, line: 71)
!400 = !DISubprogram(name: "ispunct", scope: !383, file: !383, line: 115, type: !384, flags: DIFlagPrototyped, spFlags: 0)
!401 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !402, file: !386, line: 72)
!402 = !DISubprogram(name: "isspace", scope: !383, file: !383, line: 116, type: !384, flags: DIFlagPrototyped, spFlags: 0)
!403 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !404, file: !386, line: 73)
!404 = !DISubprogram(name: "isupper", scope: !383, file: !383, line: 117, type: !384, flags: DIFlagPrototyped, spFlags: 0)
!405 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !406, file: !386, line: 74)
!406 = !DISubprogram(name: "isxdigit", scope: !383, file: !383, line: 118, type: !384, flags: DIFlagPrototyped, spFlags: 0)
!407 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !408, file: !386, line: 75)
!408 = !DISubprogram(name: "tolower", scope: !383, file: !383, line: 122, type: !384, flags: DIFlagPrototyped, spFlags: 0)
!409 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !410, file: !386, line: 76)
!410 = !DISubprogram(name: "toupper", scope: !383, file: !383, line: 125, type: !384, flags: DIFlagPrototyped, spFlags: 0)
!411 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !412, file: !386, line: 87)
!412 = !DISubprogram(name: "isblank", scope: !383, file: !383, line: 130, type: !384, flags: DIFlagPrototyped, spFlags: 0)
!413 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !414, entity: !415, file: !416, line: 58)
!414 = !DINamespace(name: "__gnu_debug", scope: null)
!415 = !DINamespace(name: "__debug", scope: !68)
!416 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/debug/debug.h", directory: "", checksumkind: CSK_MD5, checksum: "752210a319f5f5d356cc29cd1ce3cdc7")
!417 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !418, file: !420, line: 52)
!418 = !DISubprogram(name: "abs", scope: !419, file: !419, line: 840, type: !384, flags: DIFlagPrototyped, spFlags: 0)
!419 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!420 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/std_abs.h", directory: "")
!421 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !422, file: !424, line: 131)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !419, line: 62, baseType: !423)
!423 = !DICompositeType(tag: DW_TAG_structure_type, file: !419, line: 58, size: 64, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!424 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cstdlib", directory: "")
!425 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !426, file: !424, line: 132)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !419, line: 70, baseType: !427)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !419, line: 66, size: 128, flags: DIFlagTypePassByValue, elements: !428, identifier: "_ZTS6ldiv_t")
!428 = !{!429, !430}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !427, file: !419, line: 68, baseType: !282, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !427, file: !419, line: 69, baseType: !282, size: 64, offset: 64)
!431 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !432, file: !424, line: 134)
!432 = !DISubprogram(name: "abort", scope: !419, file: !419, line: 591, type: !433, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!433 = !DISubroutineType(types: !434)
!434 = !{null}
!435 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !436, file: !424, line: 136)
!436 = !DISubprogram(name: "aligned_alloc", scope: !419, file: !419, line: 586, type: !437, flags: DIFlagPrototyped, spFlags: 0)
!437 = !DISubroutineType(types: !438)
!438 = !{!192, !141, !141}
!439 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !440, file: !424, line: 138)
!440 = !DISubprogram(name: "atexit", scope: !419, file: !419, line: 595, type: !441, flags: DIFlagPrototyped, spFlags: 0)
!441 = !DISubroutineType(types: !442)
!442 = !{!14, !443}
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!444 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !445, file: !424, line: 141)
!445 = !DISubprogram(name: "at_quick_exit", scope: !419, file: !419, line: 600, type: !441, flags: DIFlagPrototyped, spFlags: 0)
!446 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !447, file: !424, line: 144)
!447 = !DISubprogram(name: "atof", scope: !419, file: !419, line: 101, type: !448, flags: DIFlagPrototyped, spFlags: 0)
!448 = !DISubroutineType(types: !449)
!449 = !{!266, !144}
!450 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !451, file: !424, line: 145)
!451 = !DISubprogram(name: "atoi", scope: !419, file: !419, line: 104, type: !452, flags: DIFlagPrototyped, spFlags: 0)
!452 = !DISubroutineType(types: !453)
!453 = !{!14, !144}
!454 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !455, file: !424, line: 146)
!455 = !DISubprogram(name: "atol", scope: !419, file: !419, line: 107, type: !456, flags: DIFlagPrototyped, spFlags: 0)
!456 = !DISubroutineType(types: !457)
!457 = !{!282, !144}
!458 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !459, file: !424, line: 147)
!459 = !DISubprogram(name: "bsearch", scope: !419, file: !419, line: 820, type: !460, flags: DIFlagPrototyped, spFlags: 0)
!460 = !DISubroutineType(types: !461)
!461 = !{!192, !462, !462, !141, !141, !464}
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !419, line: 808, baseType: !465)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DISubroutineType(types: !467)
!467 = !{!14, !462, !462}
!468 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !469, file: !424, line: 148)
!469 = !DISubprogram(name: "calloc", scope: !419, file: !419, line: 542, type: !437, flags: DIFlagPrototyped, spFlags: 0)
!470 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !471, file: !424, line: 149)
!471 = !DISubprogram(name: "div", scope: !419, file: !419, line: 852, type: !472, flags: DIFlagPrototyped, spFlags: 0)
!472 = !DISubroutineType(types: !473)
!473 = !{!422, !14, !14}
!474 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !475, file: !424, line: 150)
!475 = !DISubprogram(name: "exit", scope: !419, file: !419, line: 617, type: !476, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!476 = !DISubroutineType(types: !477)
!477 = !{null, !14}
!478 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !479, file: !424, line: 151)
!479 = !DISubprogram(name: "free", scope: !419, file: !419, line: 565, type: !480, flags: DIFlagPrototyped, spFlags: 0)
!480 = !DISubroutineType(types: !481)
!481 = !{null, !192}
!482 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !483, file: !424, line: 152)
!483 = !DISubprogram(name: "getenv", scope: !419, file: !419, line: 634, type: !484, flags: DIFlagPrototyped, spFlags: 0)
!484 = !DISubroutineType(types: !485)
!485 = !{!215, !144}
!486 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !487, file: !424, line: 153)
!487 = !DISubprogram(name: "labs", scope: !419, file: !419, line: 841, type: !488, flags: DIFlagPrototyped, spFlags: 0)
!488 = !DISubroutineType(types: !489)
!489 = !{!282, !282}
!490 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !491, file: !424, line: 154)
!491 = !DISubprogram(name: "ldiv", scope: !419, file: !419, line: 854, type: !492, flags: DIFlagPrototyped, spFlags: 0)
!492 = !DISubroutineType(types: !493)
!493 = !{!426, !282, !282}
!494 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !495, file: !424, line: 155)
!495 = !DISubprogram(name: "malloc", scope: !419, file: !419, line: 539, type: !496, flags: DIFlagPrototyped, spFlags: 0)
!496 = !DISubroutineType(types: !497)
!497 = !{!192, !141}
!498 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !499, file: !424, line: 157)
!499 = !DISubprogram(name: "mblen", scope: !419, file: !419, line: 922, type: !500, flags: DIFlagPrototyped, spFlags: 0)
!500 = !DISubroutineType(types: !501)
!501 = !{!14, !144, !141}
!502 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !503, file: !424, line: 158)
!503 = !DISubprogram(name: "mbstowcs", scope: !419, file: !419, line: 933, type: !504, flags: DIFlagPrototyped, spFlags: 0)
!504 = !DISubroutineType(types: !505)
!505 = !{!141, !108, !143, !141}
!506 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !507, file: !424, line: 159)
!507 = !DISubprogram(name: "mbtowc", scope: !419, file: !419, line: 925, type: !508, flags: DIFlagPrototyped, spFlags: 0)
!508 = !DISubroutineType(types: !509)
!509 = !{!14, !108, !143, !141}
!510 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !511, file: !424, line: 161)
!511 = !DISubprogram(name: "qsort", scope: !419, file: !419, line: 830, type: !512, flags: DIFlagPrototyped, spFlags: 0)
!512 = !DISubroutineType(types: !513)
!513 = !{null, !192, !141, !141, !464}
!514 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !515, file: !424, line: 164)
!515 = !DISubprogram(name: "quick_exit", scope: !419, file: !419, line: 623, type: !476, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!516 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !517, file: !424, line: 167)
!517 = !DISubprogram(name: "rand", scope: !419, file: !419, line: 453, type: !12, flags: DIFlagPrototyped, spFlags: 0)
!518 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !519, file: !424, line: 168)
!519 = !DISubprogram(name: "realloc", scope: !419, file: !419, line: 550, type: !520, flags: DIFlagPrototyped, spFlags: 0)
!520 = !DISubroutineType(types: !521)
!521 = !{!192, !192, !141}
!522 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !523, file: !424, line: 169)
!523 = !DISubprogram(name: "srand", scope: !419, file: !419, line: 455, type: !524, flags: DIFlagPrototyped, spFlags: 0)
!524 = !DISubroutineType(types: !525)
!525 = !{null, !80}
!526 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !527, file: !424, line: 170)
!527 = !DISubprogram(name: "strtod", scope: !419, file: !419, line: 117, type: !528, flags: DIFlagPrototyped, spFlags: 0)
!528 = !DISubroutineType(types: !529)
!529 = !{!266, !143, !530}
!530 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !531)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!532 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !533, file: !424, line: 171)
!533 = !DISubprogram(name: "strtol", scope: !419, file: !419, line: 176, type: !534, flags: DIFlagPrototyped, spFlags: 0)
!534 = !DISubroutineType(types: !535)
!535 = !{!282, !143, !530, !14}
!536 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !537, file: !424, line: 172)
!537 = !DISubprogram(name: "strtoul", scope: !419, file: !419, line: 180, type: !538, flags: DIFlagPrototyped, spFlags: 0)
!538 = !DISubroutineType(types: !539)
!539 = !{!44, !143, !530, !14}
!540 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !541, file: !424, line: 173)
!541 = !DISubprogram(name: "system", scope: !419, file: !419, line: 784, type: !452, flags: DIFlagPrototyped, spFlags: 0)
!542 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !543, file: !424, line: 175)
!543 = !DISubprogram(name: "wcstombs", scope: !419, file: !419, line: 936, type: !544, flags: DIFlagPrototyped, spFlags: 0)
!544 = !DISubroutineType(types: !545)
!545 = !{!141, !214, !118, !141}
!546 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !547, file: !424, line: 176)
!547 = !DISubprogram(name: "wctomb", scope: !419, file: !419, line: 929, type: !548, flags: DIFlagPrototyped, spFlags: 0)
!548 = !DISubroutineType(types: !549)
!549 = !{!14, !215, !107}
!550 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !330, entity: !551, file: !424, line: 204)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !419, line: 80, baseType: !552)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !419, line: 76, size: 128, flags: DIFlagTypePassByValue, elements: !553, identifier: "_ZTS7lldiv_t")
!553 = !{!554, !555}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !552, file: !419, line: 78, baseType: !339, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !552, file: !419, line: 79, baseType: !339, size: 64, offset: 64)
!556 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !330, entity: !557, file: !424, line: 210)
!557 = !DISubprogram(name: "_Exit", scope: !419, file: !419, line: 629, type: !476, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!558 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !330, entity: !559, file: !424, line: 214)
!559 = !DISubprogram(name: "llabs", scope: !419, file: !419, line: 844, type: !560, flags: DIFlagPrototyped, spFlags: 0)
!560 = !DISubroutineType(types: !561)
!561 = !{!339, !339}
!562 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !330, entity: !563, file: !424, line: 220)
!563 = !DISubprogram(name: "lldiv", scope: !419, file: !419, line: 858, type: !564, flags: DIFlagPrototyped, spFlags: 0)
!564 = !DISubroutineType(types: !565)
!565 = !{!551, !339, !339}
!566 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !330, entity: !567, file: !424, line: 231)
!567 = !DISubprogram(name: "atoll", scope: !419, file: !419, line: 112, type: !568, flags: DIFlagPrototyped, spFlags: 0)
!568 = !DISubroutineType(types: !569)
!569 = !{!339, !144}
!570 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !330, entity: !571, file: !424, line: 232)
!571 = !DISubprogram(name: "strtoll", scope: !419, file: !419, line: 200, type: !572, flags: DIFlagPrototyped, spFlags: 0)
!572 = !DISubroutineType(types: !573)
!573 = !{!339, !143, !530, !14}
!574 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !330, entity: !575, file: !424, line: 233)
!575 = !DISubprogram(name: "strtoull", scope: !419, file: !419, line: 205, type: !576, flags: DIFlagPrototyped, spFlags: 0)
!576 = !DISubroutineType(types: !577)
!577 = !{!344, !143, !530, !14}
!578 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !330, entity: !579, file: !424, line: 235)
!579 = !DISubprogram(name: "strtof", scope: !419, file: !419, line: 123, type: !580, flags: DIFlagPrototyped, spFlags: 0)
!580 = !DISubroutineType(types: !581)
!581 = !{!273, !143, !530}
!582 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !330, entity: !583, file: !424, line: 236)
!583 = !DISubprogram(name: "strtold", scope: !419, file: !419, line: 126, type: !584, flags: DIFlagPrototyped, spFlags: 0)
!584 = !DISubroutineType(types: !585)
!585 = !{!334, !143, !530}
!586 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !551, file: !424, line: 244)
!587 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !557, file: !424, line: 246)
!588 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !559, file: !424, line: 248)
!589 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !590, file: !424, line: 249)
!590 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !330, file: !424, line: 217, type: !564, flags: DIFlagPrototyped, spFlags: 0)
!591 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !563, file: !424, line: 250)
!592 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !567, file: !424, line: 252)
!593 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !579, file: !424, line: 253)
!594 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !571, file: !424, line: 254)
!595 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !575, file: !424, line: 255)
!596 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !583, file: !424, line: 256)
!597 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !598, file: !600, line: 98)
!598 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !599, line: 7, baseType: !101)
!599 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!600 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cstdio", directory: "")
!601 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !602, file: !600, line: 99)
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !603, line: 84, baseType: !604)
!603 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fpos_t", file: !605, line: 14, baseType: !606)
!605 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h", directory: "", checksumkind: CSK_MD5, checksum: "32de8bdaf3551a6c0a9394f9af4389ce")
!606 = !DICompositeType(tag: DW_TAG_structure_type, name: "_G_fpos_t", file: !605, line: 10, size: 128, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
!607 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !608, file: !600, line: 101)
!608 = !DISubprogram(name: "clearerr", scope: !603, file: !603, line: 757, type: !609, flags: DIFlagPrototyped, spFlags: 0)
!609 = !DISubroutineType(types: !610)
!610 = !{null, !611}
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!612 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !613, file: !600, line: 102)
!613 = !DISubprogram(name: "fclose", scope: !603, file: !603, line: 213, type: !614, flags: DIFlagPrototyped, spFlags: 0)
!614 = !DISubroutineType(types: !615)
!615 = !{!14, !611}
!616 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !617, file: !600, line: 103)
!617 = !DISubprogram(name: "feof", scope: !603, file: !603, line: 759, type: !614, flags: DIFlagPrototyped, spFlags: 0)
!618 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !619, file: !600, line: 104)
!619 = !DISubprogram(name: "ferror", scope: !603, file: !603, line: 761, type: !614, flags: DIFlagPrototyped, spFlags: 0)
!620 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !621, file: !600, line: 105)
!621 = !DISubprogram(name: "fflush", scope: !603, file: !603, line: 218, type: !614, flags: DIFlagPrototyped, spFlags: 0)
!622 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !623, file: !600, line: 106)
!623 = !DISubprogram(name: "fgetc", scope: !603, file: !603, line: 485, type: !614, flags: DIFlagPrototyped, spFlags: 0)
!624 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !625, file: !600, line: 107)
!625 = !DISubprogram(name: "fgetpos", scope: !603, file: !603, line: 731, type: !626, flags: DIFlagPrototyped, spFlags: 0)
!626 = !DISubroutineType(types: !627)
!627 = !{!14, !628, !629}
!628 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !611)
!629 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !630)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!631 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !632, file: !600, line: 108)
!632 = !DISubprogram(name: "fgets", scope: !603, file: !603, line: 564, type: !633, flags: DIFlagPrototyped, spFlags: 0)
!633 = !DISubroutineType(types: !634)
!634 = !{!215, !214, !14, !628}
!635 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !636, file: !600, line: 109)
!636 = !DISubprogram(name: "fopen", scope: !603, file: !603, line: 246, type: !637, flags: DIFlagPrototyped, spFlags: 0)
!637 = !DISubroutineType(types: !638)
!638 = !{!611, !143, !143}
!639 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !640, file: !600, line: 110)
!640 = !DISubprogram(name: "fprintf", scope: !603, file: !603, line: 326, type: !641, flags: DIFlagPrototyped, spFlags: 0)
!641 = !DISubroutineType(types: !642)
!642 = !{!14, !628, !143, null}
!643 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !644, file: !600, line: 111)
!644 = !DISubprogram(name: "fputc", scope: !603, file: !603, line: 521, type: !645, flags: DIFlagPrototyped, spFlags: 0)
!645 = !DISubroutineType(types: !646)
!646 = !{!14, !14, !611}
!647 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !648, file: !600, line: 112)
!648 = !DISubprogram(name: "fputs", scope: !603, file: !603, line: 626, type: !649, flags: DIFlagPrototyped, spFlags: 0)
!649 = !DISubroutineType(types: !650)
!650 = !{!14, !143, !628}
!651 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !652, file: !600, line: 113)
!652 = !DISubprogram(name: "fread", scope: !603, file: !603, line: 646, type: !653, flags: DIFlagPrototyped, spFlags: 0)
!653 = !DISubroutineType(types: !654)
!654 = !{!141, !655, !141, !141, !628}
!655 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !192)
!656 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !657, file: !600, line: 114)
!657 = !DISubprogram(name: "freopen", scope: !603, file: !603, line: 252, type: !658, flags: DIFlagPrototyped, spFlags: 0)
!658 = !DISubroutineType(types: !659)
!659 = !{!611, !143, !143, !628}
!660 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !661, file: !600, line: 115)
!661 = !DISubprogram(name: "fscanf", linkageName: "__isoc99_fscanf", scope: !603, file: !603, line: 407, type: !641, flags: DIFlagPrototyped, spFlags: 0)
!662 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !663, file: !600, line: 116)
!663 = !DISubprogram(name: "fseek", scope: !603, file: !603, line: 684, type: !664, flags: DIFlagPrototyped, spFlags: 0)
!664 = !DISubroutineType(types: !665)
!665 = !{!14, !611, !282, !14}
!666 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !667, file: !600, line: 117)
!667 = !DISubprogram(name: "fsetpos", scope: !603, file: !603, line: 736, type: !668, flags: DIFlagPrototyped, spFlags: 0)
!668 = !DISubroutineType(types: !669)
!669 = !{!14, !611, !670}
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !602)
!672 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !673, file: !600, line: 118)
!673 = !DISubprogram(name: "ftell", scope: !603, file: !603, line: 689, type: !674, flags: DIFlagPrototyped, spFlags: 0)
!674 = !DISubroutineType(types: !675)
!675 = !{!282, !611}
!676 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !677, file: !600, line: 119)
!677 = !DISubprogram(name: "fwrite", scope: !603, file: !603, line: 652, type: !678, flags: DIFlagPrototyped, spFlags: 0)
!678 = !DISubroutineType(types: !679)
!679 = !{!141, !680, !141, !141, !628}
!680 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !462)
!681 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !682, file: !600, line: 120)
!682 = !DISubprogram(name: "getc", scope: !603, file: !603, line: 486, type: !614, flags: DIFlagPrototyped, spFlags: 0)
!683 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !684, file: !600, line: 121)
!684 = !DISubprogram(name: "getchar", scope: !603, file: !603, line: 492, type: !12, flags: DIFlagPrototyped, spFlags: 0)
!685 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !686, file: !600, line: 126)
!686 = !DISubprogram(name: "perror", scope: !603, file: !603, line: 775, type: !687, flags: DIFlagPrototyped, spFlags: 0)
!687 = !DISubroutineType(types: !688)
!688 = !{null, !144}
!689 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !690, file: !600, line: 127)
!690 = !DISubprogram(name: "printf", scope: !603, file: !603, line: 332, type: !691, flags: DIFlagPrototyped, spFlags: 0)
!691 = !DISubroutineType(types: !692)
!692 = !{!14, !143, null}
!693 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !694, file: !600, line: 128)
!694 = !DISubprogram(name: "putc", scope: !603, file: !603, line: 522, type: !645, flags: DIFlagPrototyped, spFlags: 0)
!695 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !696, file: !600, line: 129)
!696 = !DISubprogram(name: "putchar", scope: !603, file: !603, line: 528, type: !384, flags: DIFlagPrototyped, spFlags: 0)
!697 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !698, file: !600, line: 130)
!698 = !DISubprogram(name: "puts", scope: !603, file: !603, line: 632, type: !452, flags: DIFlagPrototyped, spFlags: 0)
!699 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !700, file: !600, line: 131)
!700 = !DISubprogram(name: "remove", scope: !603, file: !603, line: 146, type: !452, flags: DIFlagPrototyped, spFlags: 0)
!701 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !702, file: !600, line: 132)
!702 = !DISubprogram(name: "rename", scope: !603, file: !603, line: 148, type: !703, flags: DIFlagPrototyped, spFlags: 0)
!703 = !DISubroutineType(types: !704)
!704 = !{!14, !144, !144}
!705 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !706, file: !600, line: 133)
!706 = !DISubprogram(name: "rewind", scope: !603, file: !603, line: 694, type: !609, flags: DIFlagPrototyped, spFlags: 0)
!707 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !708, file: !600, line: 134)
!708 = !DISubprogram(name: "scanf", linkageName: "__isoc99_scanf", scope: !603, file: !603, line: 410, type: !691, flags: DIFlagPrototyped, spFlags: 0)
!709 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !710, file: !600, line: 135)
!710 = !DISubprogram(name: "setbuf", scope: !603, file: !603, line: 304, type: !711, flags: DIFlagPrototyped, spFlags: 0)
!711 = !DISubroutineType(types: !712)
!712 = !{null, !628, !214}
!713 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !714, file: !600, line: 136)
!714 = !DISubprogram(name: "setvbuf", scope: !603, file: !603, line: 308, type: !715, flags: DIFlagPrototyped, spFlags: 0)
!715 = !DISubroutineType(types: !716)
!716 = !{!14, !628, !214, !14, !141}
!717 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !718, file: !600, line: 137)
!718 = !DISubprogram(name: "sprintf", scope: !603, file: !603, line: 334, type: !719, flags: DIFlagPrototyped, spFlags: 0)
!719 = !DISubroutineType(types: !720)
!720 = !{!14, !214, !143, null}
!721 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !722, file: !600, line: 138)
!722 = !DISubprogram(name: "sscanf", linkageName: "__isoc99_sscanf", scope: !603, file: !603, line: 412, type: !723, flags: DIFlagPrototyped, spFlags: 0)
!723 = !DISubroutineType(types: !724)
!724 = !{!14, !143, !143, null}
!725 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !726, file: !600, line: 139)
!726 = !DISubprogram(name: "tmpfile", scope: !603, file: !603, line: 173, type: !727, flags: DIFlagPrototyped, spFlags: 0)
!727 = !DISubroutineType(types: !728)
!728 = !{!611}
!729 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !730, file: !600, line: 141)
!730 = !DISubprogram(name: "tmpnam", scope: !603, file: !603, line: 187, type: !731, flags: DIFlagPrototyped, spFlags: 0)
!731 = !DISubroutineType(types: !732)
!732 = !{!215, !215}
!733 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !734, file: !600, line: 143)
!734 = !DISubprogram(name: "ungetc", scope: !603, file: !603, line: 639, type: !645, flags: DIFlagPrototyped, spFlags: 0)
!735 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !736, file: !600, line: 144)
!736 = !DISubprogram(name: "vfprintf", scope: !603, file: !603, line: 341, type: !737, flags: DIFlagPrototyped, spFlags: 0)
!737 = !DISubroutineType(types: !738)
!738 = !{!14, !628, !143, !185}
!739 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !740, file: !600, line: 145)
!740 = !DISubprogram(name: "vprintf", scope: !603, file: !603, line: 347, type: !741, flags: DIFlagPrototyped, spFlags: 0)
!741 = !DISubroutineType(types: !742)
!742 = !{!14, !143, !185}
!743 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !744, file: !600, line: 146)
!744 = !DISubprogram(name: "vsprintf", scope: !603, file: !603, line: 349, type: !745, flags: DIFlagPrototyped, spFlags: 0)
!745 = !DISubroutineType(types: !746)
!746 = !{!14, !214, !143, !185}
!747 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !330, entity: !748, file: !600, line: 175)
!748 = !DISubprogram(name: "snprintf", scope: !603, file: !603, line: 354, type: !749, flags: DIFlagPrototyped, spFlags: 0)
!749 = !DISubroutineType(types: !750)
!750 = !{!14, !214, !141, !143, null}
!751 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !330, entity: !752, file: !600, line: 176)
!752 = !DISubprogram(name: "vfscanf", linkageName: "__isoc99_vfscanf", scope: !603, file: !603, line: 451, type: !737, flags: DIFlagPrototyped, spFlags: 0)
!753 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !330, entity: !754, file: !600, line: 177)
!754 = !DISubprogram(name: "vscanf", linkageName: "__isoc99_vscanf", scope: !603, file: !603, line: 456, type: !741, flags: DIFlagPrototyped, spFlags: 0)
!755 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !330, entity: !756, file: !600, line: 178)
!756 = !DISubprogram(name: "vsnprintf", scope: !603, file: !603, line: 358, type: !757, flags: DIFlagPrototyped, spFlags: 0)
!757 = !DISubroutineType(types: !758)
!758 = !{!14, !214, !141, !143, !185}
!759 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !330, entity: !760, file: !600, line: 179)
!760 = !DISubprogram(name: "vsscanf", linkageName: "__isoc99_vsscanf", scope: !603, file: !603, line: 459, type: !761, flags: DIFlagPrototyped, spFlags: 0)
!761 = !DISubroutineType(types: !762)
!762 = !{!14, !143, !143, !185}
!763 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !748, file: !600, line: 185)
!764 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !752, file: !600, line: 186)
!765 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !754, file: !600, line: 187)
!766 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !756, file: !600, line: 188)
!767 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !760, file: !600, line: 189)
!768 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !769, file: !775, line: 58)
!769 = !DIDerivedType(tag: DW_TAG_typedef, name: "max_align_t", file: !770, line: 24, baseType: !771)
!770 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/__stddef_max_align_t.h", directory: "/home/cs22mtech12008", checksumkind: CSK_MD5, checksum: "48e8e2456f77e6cda35d245130fa7259")
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !770, line: 19, size: 256, flags: DIFlagTypePassByValue, elements: !772, identifier: "_ZTS11max_align_t")
!772 = !{!773, !774}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "__clang_max_align_nonce1", scope: !771, file: !770, line: 20, baseType: !339, size: 64, align: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "__clang_max_align_nonce2", scope: !771, file: !770, line: 22, baseType: !334, size: 128, align: 128, offset: 128)
!775 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cstddef", directory: "")
!776 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !777, file: !783, line: 82)
!777 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctrans_t", file: !778, line: 48, baseType: !779)
!778 = !DIFile(filename: "/usr/include/wctype.h", directory: "", checksumkind: CSK_MD5, checksum: "e83097fbf57cc71ea472db59df3ba75d")
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !781)
!781 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !782, line: 41, baseType: !14)
!782 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!783 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cwctype", directory: "")
!784 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !785, file: !783, line: 83)
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctype_t", file: !786, line: 38, baseType: !44)
!786 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "3598b9d23ef5d76319026b46e316b55f")
!787 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !87, file: !783, line: 84)
!788 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !789, file: !783, line: 86)
!789 = !DISubprogram(name: "iswalnum", scope: !786, file: !786, line: 95, type: !293, flags: DIFlagPrototyped, spFlags: 0)
!790 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !791, file: !783, line: 87)
!791 = !DISubprogram(name: "iswalpha", scope: !786, file: !786, line: 101, type: !293, flags: DIFlagPrototyped, spFlags: 0)
!792 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !793, file: !783, line: 89)
!793 = !DISubprogram(name: "iswblank", scope: !786, file: !786, line: 146, type: !293, flags: DIFlagPrototyped, spFlags: 0)
!794 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !795, file: !783, line: 91)
!795 = !DISubprogram(name: "iswcntrl", scope: !786, file: !786, line: 104, type: !293, flags: DIFlagPrototyped, spFlags: 0)
!796 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !797, file: !783, line: 92)
!797 = !DISubprogram(name: "iswctype", scope: !786, file: !786, line: 159, type: !798, flags: DIFlagPrototyped, spFlags: 0)
!798 = !DISubroutineType(types: !799)
!799 = !{!14, !87, !785}
!800 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !801, file: !783, line: 93)
!801 = !DISubprogram(name: "iswdigit", scope: !786, file: !786, line: 108, type: !293, flags: DIFlagPrototyped, spFlags: 0)
!802 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !803, file: !783, line: 94)
!803 = !DISubprogram(name: "iswgraph", scope: !786, file: !786, line: 112, type: !293, flags: DIFlagPrototyped, spFlags: 0)
!804 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !805, file: !783, line: 95)
!805 = !DISubprogram(name: "iswlower", scope: !786, file: !786, line: 117, type: !293, flags: DIFlagPrototyped, spFlags: 0)
!806 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !807, file: !783, line: 96)
!807 = !DISubprogram(name: "iswprint", scope: !786, file: !786, line: 120, type: !293, flags: DIFlagPrototyped, spFlags: 0)
!808 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !809, file: !783, line: 97)
!809 = !DISubprogram(name: "iswpunct", scope: !786, file: !786, line: 125, type: !293, flags: DIFlagPrototyped, spFlags: 0)
!810 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !811, file: !783, line: 98)
!811 = !DISubprogram(name: "iswspace", scope: !786, file: !786, line: 130, type: !293, flags: DIFlagPrototyped, spFlags: 0)
!812 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !813, file: !783, line: 99)
!813 = !DISubprogram(name: "iswupper", scope: !786, file: !786, line: 135, type: !293, flags: DIFlagPrototyped, spFlags: 0)
!814 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !815, file: !783, line: 100)
!815 = !DISubprogram(name: "iswxdigit", scope: !786, file: !786, line: 140, type: !293, flags: DIFlagPrototyped, spFlags: 0)
!816 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !817, file: !783, line: 101)
!817 = !DISubprogram(name: "towctrans", scope: !778, file: !778, line: 55, type: !818, flags: DIFlagPrototyped, spFlags: 0)
!818 = !DISubroutineType(types: !819)
!819 = !{!87, !87, !777}
!820 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !821, file: !783, line: 102)
!821 = !DISubprogram(name: "towlower", scope: !786, file: !786, line: 166, type: !822, flags: DIFlagPrototyped, spFlags: 0)
!822 = !DISubroutineType(types: !823)
!823 = !{!87, !87}
!824 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !825, file: !783, line: 103)
!825 = !DISubprogram(name: "towupper", scope: !786, file: !786, line: 169, type: !822, flags: DIFlagPrototyped, spFlags: 0)
!826 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !827, file: !783, line: 104)
!827 = !DISubprogram(name: "wctrans", scope: !778, file: !778, line: 52, type: !828, flags: DIFlagPrototyped, spFlags: 0)
!828 = !DISubroutineType(types: !829)
!829 = !{!777, !144}
!830 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !831, file: !783, line: 105)
!831 = !DISubprogram(name: "wctype", scope: !786, file: !786, line: 155, type: !832, flags: DIFlagPrototyped, spFlags: 0)
!832 = !DISubroutineType(types: !833)
!833 = !{!785, !144}
!834 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !835, file: !839, line: 51)
!835 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !836, line: 24, baseType: !837)
!836 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "081edea97425b3437dded4a7fe223193")
!837 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !782, line: 37, baseType: !838)
!838 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!839 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cstdint", directory: "")
!840 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !841, file: !839, line: 52)
!841 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !836, line: 25, baseType: !842)
!842 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !782, line: 39, baseType: !843)
!843 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!844 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !845, file: !839, line: 53)
!845 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !836, line: 26, baseType: !781)
!846 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !847, file: !839, line: 54)
!847 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !836, line: 27, baseType: !848)
!848 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !782, line: 44, baseType: !282)
!849 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !850, file: !839, line: 56)
!850 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !851, line: 58, baseType: !838)
!851 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "24103e292ae21916e87130b926c8d2f8")
!852 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !853, file: !839, line: 57)
!853 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !851, line: 60, baseType: !282)
!854 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !855, file: !839, line: 58)
!855 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !851, line: 61, baseType: !282)
!856 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !857, file: !839, line: 59)
!857 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !851, line: 62, baseType: !282)
!858 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !859, file: !839, line: 61)
!859 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !851, line: 43, baseType: !860)
!860 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least8_t", file: !782, line: 52, baseType: !837)
!861 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !862, file: !839, line: 62)
!862 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !851, line: 44, baseType: !863)
!863 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least16_t", file: !782, line: 54, baseType: !842)
!864 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !865, file: !839, line: 63)
!865 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !851, line: 45, baseType: !866)
!866 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least32_t", file: !782, line: 56, baseType: !781)
!867 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !868, file: !839, line: 64)
!868 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !851, line: 46, baseType: !869)
!869 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least64_t", file: !782, line: 58, baseType: !848)
!870 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !871, file: !839, line: 66)
!871 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !851, line: 101, baseType: !872)
!872 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !782, line: 72, baseType: !282)
!873 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !874, file: !839, line: 67)
!874 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !851, line: 87, baseType: !282)
!875 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !876, file: !839, line: 69)
!876 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !877, line: 24, baseType: !878)
!877 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!878 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !782, line: 38, baseType: !879)
!879 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!880 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !881, file: !839, line: 70)
!881 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !877, line: 25, baseType: !882)
!882 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !782, line: 40, baseType: !883)
!883 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!884 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !885, file: !839, line: 71)
!885 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !877, line: 26, baseType: !886)
!886 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !782, line: 42, baseType: !80)
!887 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !888, file: !839, line: 72)
!888 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !877, line: 27, baseType: !889)
!889 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !782, line: 45, baseType: !44)
!890 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !891, file: !839, line: 74)
!891 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !851, line: 71, baseType: !879)
!892 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !893, file: !839, line: 75)
!893 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !851, line: 73, baseType: !44)
!894 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !895, file: !839, line: 76)
!895 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !851, line: 74, baseType: !44)
!896 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !897, file: !839, line: 77)
!897 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !851, line: 75, baseType: !44)
!898 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !899, file: !839, line: 79)
!899 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !851, line: 49, baseType: !900)
!900 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least8_t", file: !782, line: 53, baseType: !878)
!901 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !902, file: !839, line: 80)
!902 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !851, line: 50, baseType: !903)
!903 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least16_t", file: !782, line: 55, baseType: !882)
!904 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !905, file: !839, line: 81)
!905 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !851, line: 51, baseType: !906)
!906 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !782, line: 57, baseType: !886)
!907 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !908, file: !839, line: 82)
!908 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !851, line: 52, baseType: !909)
!909 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least64_t", file: !782, line: 59, baseType: !889)
!910 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !911, file: !839, line: 84)
!911 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !851, line: 102, baseType: !912)
!912 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !782, line: 73, baseType: !44)
!913 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !914, file: !839, line: 85)
!914 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !851, line: 90, baseType: !44)
!915 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !916, file: !919, line: 60)
!916 = !DIDerivedType(tag: DW_TAG_typedef, name: "clock_t", file: !917, line: 7, baseType: !918)
!917 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/clock_t.h", directory: "", checksumkind: CSK_MD5, checksum: "1aade99fd778d1551600c7ca1410b9f1")
!918 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clock_t", file: !782, line: 156, baseType: !282)
!919 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/ctime", directory: "")
!920 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !921, file: !919, line: 61)
!921 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !922, line: 7, baseType: !923)
!922 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!923 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !782, line: 160, baseType: !282)
!924 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !239, file: !919, line: 62)
!925 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !926, file: !919, line: 64)
!926 = !DISubprogram(name: "clock", scope: !927, file: !927, line: 72, type: !928, flags: DIFlagPrototyped, spFlags: 0)
!927 = !DIFile(filename: "/usr/include/time.h", directory: "", checksumkind: CSK_MD5, checksum: "2dc9fb937b28c900f98919b5c35320c2")
!928 = !DISubroutineType(types: !929)
!929 = !{!916}
!930 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !931, file: !919, line: 65)
!931 = !DISubprogram(name: "difftime", scope: !927, file: !927, line: 78, type: !932, flags: DIFlagPrototyped, spFlags: 0)
!932 = !DISubroutineType(types: !933)
!933 = !{!266, !921, !921}
!934 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !935, file: !919, line: 66)
!935 = !DISubprogram(name: "mktime", scope: !927, file: !927, line: 82, type: !936, flags: DIFlagPrototyped, spFlags: 0)
!936 = !DISubroutineType(types: !937)
!937 = !{!921, !938}
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!939 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !940, file: !919, line: 67)
!940 = !DISubprogram(name: "time", scope: !927, file: !927, line: 75, type: !941, flags: DIFlagPrototyped, spFlags: 0)
!941 = !DISubroutineType(types: !942)
!942 = !{!921, !943}
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!944 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !945, file: !919, line: 68)
!945 = !DISubprogram(name: "asctime", scope: !927, file: !927, line: 139, type: !946, flags: DIFlagPrototyped, spFlags: 0)
!946 = !DISubroutineType(types: !947)
!947 = !{!215, !237}
!948 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !949, file: !919, line: 69)
!949 = !DISubprogram(name: "ctime", scope: !927, file: !927, line: 142, type: !950, flags: DIFlagPrototyped, spFlags: 0)
!950 = !DISubroutineType(types: !951)
!951 = !{!215, !952}
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !921)
!954 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !955, file: !919, line: 70)
!955 = !DISubprogram(name: "gmtime", scope: !927, file: !927, line: 119, type: !956, flags: DIFlagPrototyped, spFlags: 0)
!956 = !DISubroutineType(types: !957)
!957 = !{!938, !952}
!958 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !959, file: !919, line: 71)
!959 = !DISubprogram(name: "localtime", scope: !927, file: !927, line: 123, type: !956, flags: DIFlagPrototyped, spFlags: 0)
!960 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !961, file: !919, line: 72)
!961 = !DISubprogram(name: "strftime", scope: !927, file: !927, line: 88, type: !962, flags: DIFlagPrototyped, spFlags: 0)
!962 = !DISubroutineType(types: !963)
!963 = !{!141, !214, !141, !143, !236}
!964 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !965, file: !919, line: 79)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !966, line: 10, size: 128, flags: DIFlagTypePassByValue, elements: !967, identifier: "_ZTS8timespec")
!966 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "33f28095c70788baa6982a79b13f774b")
!967 = !{!968, !969}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !965, file: !966, line: 12, baseType: !923, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !965, file: !966, line: 16, baseType: !970, size: 64, offset: 64)
!970 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !782, line: 196, baseType: !282)
!971 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !68, entity: !972, file: !919, line: 80)
!972 = !DISubprogram(name: "timespec_get", scope: !927, file: !927, line: 257, type: !973, flags: DIFlagPrototyped, spFlags: 0)
!973 = !DISubroutineType(types: !974)
!974 = !{!14, !975, !14}
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!976 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !977, entity: !978, file: !980, line: 1447)
!977 = !DINamespace(name: "chrono", scope: !68)
!978 = !DINamespace(name: "chrono_literals", scope: !979, exportSymbols: true)
!979 = !DINamespace(name: "literals", scope: !68, exportSymbols: true)
!980 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/chrono.h", directory: "")
!981 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !2, entity: !68, file: !7, line: 4)
!982 = !{i32 7, !"Dwarf Version", i32 5}
!983 = !{i32 2, !"Debug Info Version", i32 3}
!984 = !{i32 1, !"wchar_size", i32 4}
!985 = !{i32 8, !"PIC Level", i32 2}
!986 = !{i32 7, !"PIE Level", i32 2}
!987 = !{i32 7, !"uwtable", i32 2}
!988 = !{i32 7, !"frame-pointer", i32 2}
!989 = !{!"clang version 16.0.0"}
!990 = distinct !DISubprogram(name: "runThread1", linkageName: "_Z10runThread1Pv", scope: !7, file: !7, line: 38, type: !991, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !993)
!991 = !DISubroutineType(types: !992)
!992 = !{!192, !192}
!993 = !{}
!994 = !DILocalVariable(name: "arg", arg: 1, scope: !990, file: !7, line: 38, type: !192)
!995 = !DILocation(line: 38, column: 24, scope: !990)
!996 = !DILocation(line: 39, column: 5, scope: !990)
!997 = !DILocalVariable(name: "basePtr", scope: !990, file: !7, line: 40, type: !5)
!998 = !DILocation(line: 40, column: 8, scope: !990)
!999 = !DILocation(line: 40, column: 34, scope: !990)
!1000 = !DILocation(line: 41, column: 5, scope: !990)
!1001 = !DILocation(line: 41, column: 14, scope: !990)
!1002 = !DILocalVariable(name: "a1Ptr", scope: !990, file: !7, line: 42, type: !21)
!1003 = !DILocation(line: 42, column: 9, scope: !990)
!1004 = !DILocation(line: 42, column: 35, scope: !990)
!1005 = !DILocation(line: 42, column: 17, scope: !990)
!1006 = !DILocation(line: 44, column: 9, scope: !990)
!1007 = !DILocation(line: 44, column: 16, scope: !990)
!1008 = !DILocation(line: 46, column: 5, scope: !990)
!1009 = distinct !DISubprogram(name: "runThread2", linkageName: "_Z10runThread2Pv", scope: !7, file: !7, line: 49, type: !991, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !993)
!1010 = !DILocalVariable(name: "arg", arg: 1, scope: !1009, file: !7, line: 49, type: !192)
!1011 = !DILocation(line: 49, column: 24, scope: !1009)
!1012 = !DILocation(line: 50, column: 5, scope: !1009)
!1013 = !DILocalVariable(name: "basePtr", scope: !1009, file: !7, line: 51, type: !5)
!1014 = !DILocation(line: 51, column: 8, scope: !1009)
!1015 = !DILocation(line: 51, column: 34, scope: !1009)
!1016 = !DILocation(line: 52, column: 5, scope: !1009)
!1017 = !DILocation(line: 52, column: 14, scope: !1009)
!1018 = !DILocalVariable(name: "a2Ptr", scope: !1009, file: !7, line: 53, type: !30)
!1019 = !DILocation(line: 53, column: 9, scope: !1009)
!1020 = !DILocation(line: 53, column: 35, scope: !1009)
!1021 = !DILocation(line: 53, column: 17, scope: !1009)
!1022 = !DILocation(line: 55, column: 9, scope: !1009)
!1023 = !DILocation(line: 55, column: 16, scope: !1009)
!1024 = !DILocation(line: 57, column: 5, scope: !1009)
!1025 = distinct !DISubprogram(name: "m2", linkageName: "_ZN1A2m2Ev", scope: !6, file: !7, line: 15, type: !17, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !20, retainedNodes: !993)
!1026 = !DILocalVariable(name: "this", arg: 1, scope: !1025, type: !5, flags: DIFlagArtificial | DIFlagObjectPointer)
!1027 = !DILocation(line: 0, scope: !1025)
!1028 = !DILocation(line: 16, column: 23, scope: !1025)
!1029 = !DILocation(line: 16, column: 44, scope: !1025)
!1030 = !DILocation(line: 16, column: 42, scope: !1025)
!1031 = !DILocation(line: 16, column: 45, scope: !1025)
!1032 = !DILocation(line: 17, column: 9, scope: !1025)
!1033 = distinct !DISubprogram(name: "m2", linkageName: "_ZN2A22m2Ev", scope: !31, file: !7, line: 33, type: !36, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !35, retainedNodes: !993)
!1034 = !DILocalVariable(name: "this", arg: 1, scope: !1033, type: !30, flags: DIFlagArtificial | DIFlagObjectPointer)
!1035 = !DILocation(line: 0, scope: !1033)
!1036 = !DILocation(line: 34, column: 23, scope: !1033)
!1037 = !DILocation(line: 34, column: 42, scope: !1033)
!1038 = !DILocation(line: 34, column: 40, scope: !1033)
!1039 = !DILocation(line: 34, column: 44, scope: !1033)
!1040 = !DILocation(line: 35, column: 9, scope: !1033)
!1041 = distinct !DISubprogram(name: "createThread", linkageName: "_Z12createThreadv", scope: !7, file: !7, line: 60, type: !433, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !993)
!1042 = !DILocalVariable(name: "a1Obj", scope: !1041, file: !7, line: 61, type: !22)
!1043 = !DILocation(line: 61, column: 8, scope: !1041)
!1044 = !DILocalVariable(name: "a2Obj", scope: !1041, file: !7, line: 62, type: !31)
!1045 = !DILocation(line: 62, column: 8, scope: !1041)
!1046 = !DILocation(line: 64, column: 5, scope: !1041)
!1047 = !DILocation(line: 65, column: 18, scope: !1041)
!1048 = !DILocation(line: 65, column: 5, scope: !1041)
!1049 = !DILocation(line: 67, column: 5, scope: !1041)
!1050 = !DILocation(line: 68, column: 18, scope: !1041)
!1051 = !DILocation(line: 68, column: 5, scope: !1041)
!1052 = !DILocation(line: 69, column: 1, scope: !1041)
!1053 = distinct !DISubprogram(name: "A1", linkageName: "_ZN2A1C2Ev", scope: !22, file: !7, line: 22, type: !27, scopeLine: 22, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !1054, retainedNodes: !993)
!1054 = !DISubprogram(name: "A1", scope: !22, type: !27, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!1055 = !DILocalVariable(name: "this", arg: 1, scope: !1053, type: !21, flags: DIFlagArtificial | DIFlagObjectPointer)
!1056 = !DILocation(line: 0, scope: !1053)
!1057 = !DILocation(line: 22, column: 11, scope: !1053)
!1058 = !DILocation(line: 24, column: 9, scope: !1053)
!1059 = distinct !DISubprogram(name: "A2", linkageName: "_ZN2A2C2Ev", scope: !31, file: !7, line: 30, type: !36, scopeLine: 30, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !1060, retainedNodes: !993)
!1060 = !DISubprogram(name: "A2", scope: !31, type: !36, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!1061 = !DILocalVariable(name: "this", arg: 1, scope: !1059, type: !30, flags: DIFlagArtificial | DIFlagObjectPointer)
!1062 = !DILocation(line: 0, scope: !1059)
!1063 = !DILocation(line: 30, column: 11, scope: !1059)
!1064 = !DILocation(line: 32, column: 9, scope: !1059)
!1065 = distinct !DISubprogram(name: "main", scope: !7, file: !7, line: 71, type: !12, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !993)
!1066 = !DILocation(line: 72, column: 5, scope: !1065)
!1067 = !DILocation(line: 73, column: 5, scope: !1065)
!1068 = distinct !DISubprogram(name: "A", linkageName: "_ZN1AC2Ev", scope: !6, file: !7, line: 8, type: !17, scopeLine: 8, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !1069, retainedNodes: !993)
!1069 = !DISubprogram(name: "A", scope: !6, type: !17, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!1070 = !DILocalVariable(name: "this", arg: 1, scope: !1068, type: !5, flags: DIFlagArtificial | DIFlagObjectPointer)
!1071 = !DILocation(line: 0, scope: !1068)
!1072 = !DILocation(line: 8, column: 7, scope: !1068)
!1073 = !DILocation(line: 10, column: 9, scope: !1068)
!1074 = distinct !DISubprogram(name: "m1", linkageName: "_ZN2A12m1Ev", scope: !22, file: !7, line: 25, type: !27, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !26, retainedNodes: !993)
!1075 = !DILocalVariable(name: "this", arg: 1, scope: !1074, type: !21, flags: DIFlagArtificial | DIFlagObjectPointer)
!1076 = !DILocation(line: 0, scope: !1074)
!1077 = !DILocation(line: 26, column: 23, scope: !1074)
!1078 = !DILocation(line: 26, column: 42, scope: !1074)
!1079 = !DILocation(line: 26, column: 40, scope: !1074)
!1080 = !DILocation(line: 26, column: 44, scope: !1074)
!1081 = !DILocation(line: 27, column: 9, scope: !1074)
!1082 = distinct !DISubprogram(name: "m1", linkageName: "_ZN1A2m1Ev", scope: !6, file: !7, line: 11, type: !17, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !16, retainedNodes: !993)
!1083 = !DILocalVariable(name: "this", arg: 1, scope: !1082, type: !5, flags: DIFlagArtificial | DIFlagObjectPointer)
!1084 = !DILocation(line: 0, scope: !1082)
!1085 = !DILocation(line: 12, column: 23, scope: !1082)
!1086 = !DILocation(line: 12, column: 44, scope: !1082)
!1087 = !DILocation(line: 12, column: 42, scope: !1082)
!1088 = !DILocation(line: 12, column: 45, scope: !1082)
!1089 = !DILocation(line: 13, column: 9, scope: !1082)
