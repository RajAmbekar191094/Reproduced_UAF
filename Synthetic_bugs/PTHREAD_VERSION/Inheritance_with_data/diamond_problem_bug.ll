; ModuleID = '/home/cs22mtech12008/Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Inheritance_with_data/diamond_problem_bug.cpp'
source_filename = "/home/cs22mtech12008/Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Inheritance_with_data/diamond_problem_bug.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%class.A12 = type { %class.A1.base, [4 x i8], %class.A2.base, i32, %class.A.base, [4 x i8] }
%class.A1.base = type <{ ptr, i32 }>
%class.A2.base = type <{ ptr, i32 }>
%class.A.base = type <{ ptr, i32 }>
%class.A = type <{ ptr, i32, [4 x i8] }>
%class.A1 = type <{ ptr, i32, [4 x i8], %class.A.base, [4 x i8] }>
%class.A2 = type <{ ptr, i32, [4 x i8], %class.A.base, [4 x i8] }>

$_ZN3A12C1Ev = comdat any

$_ZN1AC2Ev = comdat any

$_ZN2A1C2Ev = comdat any

$_ZN2A2C2Ev = comdat any

$_ZN2A12m1Ev = comdat any

$_ZTv0_n24_N2A12m1Ev = comdat any

$_ZN1A2m1Ev = comdat any

$_ZN3A122m1Ev = comdat any

$_ZTv0_n24_N3A122m1Ev = comdat any

$_ZTV3A12 = comdat any

$_ZTT3A12 = comdat any

$_ZTC3A120_2A1 = comdat any

$_ZTS2A1 = comdat any

$_ZTS1A = comdat any

$_ZTI1A = comdat any

$_ZTI2A1 = comdat any

$_ZTC3A1216_2A2 = comdat any

$_ZTS2A2 = comdat any

$_ZTI2A2 = comdat any

$_ZTS3A12 = comdat any

$_ZTI3A12 = comdat any

$_ZTV1A = comdat any

@t1 = dso_local global i64 0, align 8, !dbg !0
@_ZTV3A12 = linkonce_odr dso_local unnamed_addr constant { [4 x ptr], [3 x ptr], [4 x ptr] } { [4 x ptr] [ptr inttoptr (i64 32 to ptr), ptr null, ptr @_ZTI3A12, ptr @_ZN3A122m1Ev], [3 x ptr] [ptr inttoptr (i64 16 to ptr), ptr inttoptr (i64 -16 to ptr), ptr @_ZTI3A12], [4 x ptr] [ptr inttoptr (i64 -32 to ptr), ptr inttoptr (i64 -32 to ptr), ptr @_ZTI3A12, ptr @_ZTv0_n24_N3A122m1Ev] }, comdat, align 8
@_ZTT3A12 = linkonce_odr unnamed_addr constant [7 x ptr] [ptr getelementptr inbounds ({ [4 x ptr], [3 x ptr], [4 x ptr] }, ptr @_ZTV3A12, i32 0, inrange i32 0, i32 3), ptr getelementptr inbounds ({ [4 x ptr], [4 x ptr] }, ptr @_ZTC3A120_2A1, i32 0, inrange i32 0, i32 3), ptr getelementptr inbounds ({ [4 x ptr], [4 x ptr] }, ptr @_ZTC3A120_2A1, i32 0, inrange i32 1, i32 3), ptr getelementptr inbounds ({ [3 x ptr], [4 x ptr] }, ptr @_ZTC3A1216_2A2, i32 0, inrange i32 0, i32 3), ptr getelementptr inbounds ({ [3 x ptr], [4 x ptr] }, ptr @_ZTC3A1216_2A2, i32 0, inrange i32 1, i32 3), ptr getelementptr inbounds ({ [4 x ptr], [3 x ptr], [4 x ptr] }, ptr @_ZTV3A12, i32 0, inrange i32 2, i32 3), ptr getelementptr inbounds ({ [4 x ptr], [3 x ptr], [4 x ptr] }, ptr @_ZTV3A12, i32 0, inrange i32 1, i32 3)], comdat, align 8
@_ZTC3A120_2A1 = linkonce_odr dso_local unnamed_addr constant { [4 x ptr], [4 x ptr] } { [4 x ptr] [ptr inttoptr (i64 32 to ptr), ptr null, ptr @_ZTI2A1, ptr @_ZN2A12m1Ev], [4 x ptr] [ptr inttoptr (i64 -32 to ptr), ptr inttoptr (i64 -32 to ptr), ptr @_ZTI2A1, ptr @_ZTv0_n24_N2A12m1Ev] }, comdat, align 8
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global ptr
@_ZTS2A1 = linkonce_odr dso_local constant [4 x i8] c"2A1\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global ptr
@_ZTS1A = linkonce_odr dso_local constant [3 x i8] c"1A\00", comdat, align 1
@_ZTI1A = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS1A }, comdat, align 8
@_ZTI2A1 = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTS2A1, i32 0, i32 1, ptr @_ZTI1A, i64 -6141 }, comdat, align 8
@_ZTC3A1216_2A2 = linkonce_odr dso_local unnamed_addr constant { [3 x ptr], [4 x ptr] } { [3 x ptr] [ptr inttoptr (i64 16 to ptr), ptr null, ptr @_ZTI2A2], [4 x ptr] [ptr null, ptr inttoptr (i64 -16 to ptr), ptr @_ZTI2A2, ptr @_ZN1A2m1Ev] }, comdat, align 8
@_ZTS2A2 = linkonce_odr dso_local constant [4 x i8] c"2A2\00", comdat, align 1
@_ZTI2A2 = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTS2A2, i32 0, i32 1, ptr @_ZTI1A, i64 -6141 }, comdat, align 8
@_ZTS3A12 = linkonce_odr dso_local constant [5 x i8] c"3A12\00", comdat, align 1
@_ZTI3A12 = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTS3A12, i32 2, i32 2, ptr @_ZTI2A1, i64 2, ptr @_ZTI2A2, i64 4098 }, comdat, align 8
@_ZTV1A = linkonce_odr dso_local unnamed_addr constant { [3 x ptr] } { [3 x ptr] [ptr null, ptr @_ZTI1A, ptr @_ZN1A2m1Ev] }, comdat, align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [13 x i8] c"A1 class m1:\00", align 1, !dbg !22
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !29
@.str.2 = private unnamed_addr constant [15 x i8] c"Base class m1:\00", align 1, !dbg !34
@.str.3 = private unnamed_addr constant [14 x i8] c"A12 class m1:\00", align 1, !dbg !39

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef ptr @_Z9runThreadPv(ptr noundef %0) #0 !dbg !823 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !827, metadata !DIExpression()), !dbg !828
  call void @llvm.dbg.declare(metadata ptr %3, metadata !829, metadata !DIExpression()), !dbg !830
  %4 = load ptr, ptr %2, align 8, !dbg !831
  store ptr %4, ptr %3, align 8, !dbg !830
  %5 = load ptr, ptr %3, align 8, !dbg !832
  %6 = load ptr, ptr %5, align 8, !dbg !833
  %7 = getelementptr inbounds ptr, ptr %6, i64 0, !dbg !833
  %8 = load ptr, ptr %7, align 8, !dbg !833
  call void %8(ptr noundef nonnull align 8 dereferenceable(12) %5), !dbg !833
  ret ptr null, !dbg !834
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_Z12createThreadv() #2 !dbg !835 {
  %1 = alloca %class.A12, align 8
  %2 = alloca ptr, align 8
  call void @llvm.dbg.declare(metadata ptr %1, metadata !836, metadata !DIExpression()), !dbg !864
  call void @_ZN3A12C1Ev(ptr noundef nonnull align 8 dereferenceable(32) %1) #8, !dbg !864
  call void @llvm.dbg.declare(metadata ptr %2, metadata !865, metadata !DIExpression()), !dbg !867
  store ptr %1, ptr %2, align 8, !dbg !867
  %3 = load ptr, ptr %2, align 8, !dbg !868
  %4 = call i32 @pthread_create(ptr noundef @t1, ptr noundef null, ptr noundef @_Z9runThreadPv, ptr noundef %3) #8, !dbg !869
  ret void, !dbg !870
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN3A12C1Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 !dbg !871 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !873, metadata !DIExpression()), !dbg !874
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds i8, ptr %3, i64 32, !dbg !875
  call void @_ZN1AC2Ev(ptr noundef nonnull align 8 dereferenceable(12) %4) #8, !dbg !875
  call void @_ZN2A1C2Ev(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef getelementptr inbounds ([7 x ptr], ptr @_ZTT3A12, i64 0, i64 1)) #8, !dbg !875
  %5 = getelementptr inbounds i8, ptr %3, i64 16, !dbg !875
  call void @_ZN2A2C2Ev(ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef getelementptr inbounds ([7 x ptr], ptr @_ZTT3A12, i64 0, i64 3)) #8, !dbg !875
  store ptr getelementptr inbounds ({ [4 x ptr], [3 x ptr], [4 x ptr] }, ptr @_ZTV3A12, i32 0, inrange i32 0, i32 3), ptr %3, align 8, !dbg !875
  %6 = getelementptr inbounds i8, ptr %3, i64 32, !dbg !875
  store ptr getelementptr inbounds ({ [4 x ptr], [3 x ptr], [4 x ptr] }, ptr @_ZTV3A12, i32 0, inrange i32 2, i32 3), ptr %6, align 8, !dbg !875
  %7 = getelementptr inbounds i8, ptr %3, i64 16, !dbg !875
  store ptr getelementptr inbounds ({ [4 x ptr], [3 x ptr], [4 x ptr] }, ptr @_ZTV3A12, i32 0, inrange i32 1, i32 3), ptr %7, align 8, !dbg !875
  %8 = getelementptr inbounds %class.A12, ptr %3, i32 0, i32 3, !dbg !876
  store i32 40, ptr %8, align 4, !dbg !876
  ret void, !dbg !875
}

; Function Attrs: nounwind
declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main() #5 !dbg !877 {
  %1 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  call void @_Z12createThreadv(), !dbg !878
  %2 = load i64, ptr @t1, align 8, !dbg !879
  %3 = call i32 @pthread_join(i64 noundef %2, ptr noundef null), !dbg !880
  ret i32 0, !dbg !881
}

declare i32 @pthread_join(i64 noundef, ptr noundef) #6

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN1AC2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #3 comdat align 2 !dbg !882 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !884, metadata !DIExpression()), !dbg !885
  %3 = load ptr, ptr %2, align 8
  store ptr getelementptr inbounds ({ [3 x ptr] }, ptr @_ZTV1A, i32 0, inrange i32 0, i32 2), ptr %3, align 8, !dbg !886
  %4 = getelementptr inbounds %class.A, ptr %3, i32 0, i32 1, !dbg !887
  store i32 10, ptr %4, align 8, !dbg !887
  ret void, !dbg !886
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN2A1C2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 !dbg !888 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !890, metadata !DIExpression()), !dbg !892
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !893, metadata !DIExpression()), !dbg !892
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = load ptr, ptr %6, align 8, !dbg !895
  store ptr %7, ptr %5, align 8, !dbg !895
  %8 = getelementptr inbounds ptr, ptr %6, i64 1, !dbg !895
  %9 = load ptr, ptr %8, align 8, !dbg !895
  %10 = load ptr, ptr %5, align 8, !dbg !895
  %11 = getelementptr i8, ptr %10, i64 -24, !dbg !895
  %12 = load i64, ptr %11, align 8, !dbg !895
  %13 = getelementptr inbounds i8, ptr %5, i64 %12, !dbg !895
  store ptr %9, ptr %13, align 8, !dbg !895
  %14 = getelementptr inbounds %class.A1, ptr %5, i32 0, i32 1, !dbg !896
  store i32 20, ptr %14, align 8, !dbg !896
  ret void, !dbg !895
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN2A2C2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 !dbg !897 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !899, metadata !DIExpression()), !dbg !901
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !902, metadata !DIExpression()), !dbg !901
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = load ptr, ptr %6, align 8, !dbg !903
  store ptr %7, ptr %5, align 8, !dbg !903
  %8 = getelementptr inbounds ptr, ptr %6, i64 1, !dbg !903
  %9 = load ptr, ptr %8, align 8, !dbg !903
  %10 = load ptr, ptr %5, align 8, !dbg !903
  %11 = getelementptr i8, ptr %10, i64 -24, !dbg !903
  %12 = load i64, ptr %11, align 8, !dbg !903
  %13 = getelementptr inbounds i8, ptr %5, i64 %12, !dbg !903
  store ptr %9, ptr %13, align 8, !dbg !903
  %14 = getelementptr inbounds %class.A2, ptr %5, i32 0, i32 1, !dbg !904
  store i32 30, ptr %14, align 8, !dbg !904
  ret void, !dbg !903
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN2A12m1Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #0 comdat align 2 !dbg !905 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !906, metadata !DIExpression()), !dbg !907
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str), !dbg !908
  %5 = getelementptr inbounds %class.A1, ptr %3, i32 0, i32 1, !dbg !909
  %6 = load i32, ptr %5, align 8, !dbg !909
  %7 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %6), !dbg !910
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef @.str.1), !dbg !911
  ret void, !dbg !912
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZTv0_n24_N2A12m1Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 !dbg !913 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8, !dbg !915
  %4 = load ptr, ptr %3, align 8, !dbg !915
  %5 = getelementptr inbounds i8, ptr %4, i64 -24, !dbg !915
  %6 = load i64, ptr %5, align 8, !dbg !915
  %7 = getelementptr inbounds i8, ptr %3, i64 %6, !dbg !915
  tail call void @_ZN2A12m1Ev(ptr noundef nonnull align 8 dereferenceable(12) %7), !dbg !915
  ret void, !dbg !915
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN1A2m1Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #0 comdat align 2 !dbg !916 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !917, metadata !DIExpression()), !dbg !918
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.2), !dbg !919
  %5 = getelementptr inbounds %class.A, ptr %3, i32 0, i32 1, !dbg !920
  %6 = load i32, ptr %5, align 8, !dbg !920
  %7 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %6), !dbg !921
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef @.str.1), !dbg !922
  ret void, !dbg !923
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN3A122m1Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 !dbg !924 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !925, metadata !DIExpression()), !dbg !926
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.3), !dbg !927
  %5 = getelementptr inbounds %class.A12, ptr %3, i32 0, i32 3, !dbg !928
  %6 = load i32, ptr %5, align 4, !dbg !928
  %7 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %6), !dbg !929
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef @.str.1), !dbg !930
  ret void, !dbg !931
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZTv0_n24_N3A122m1Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 !dbg !932 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8, !dbg !933
  %4 = load ptr, ptr %3, align 8, !dbg !933
  %5 = getelementptr inbounds i8, ptr %4, i64 -24, !dbg !933
  %6 = load i64, ptr %5, align 8, !dbg !933
  %7 = getelementptr inbounds i8, ptr %3, i64 %6, !dbg !933
  tail call void @_ZN3A122m1Ev(ptr noundef nonnull align 8 dereferenceable(32) %7), !dbg !933
  ret void, !dbg !933
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #6

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
!llvm.module.flags = !{!815, !816, !817, !818, !819, !820, !821}
!llvm.ident = !{!822}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "t1", scope: !2, file: !7, line: 42, type: !813, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !3, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !21, imports: !44, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/cs22mtech12008/Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Inheritance_with_data/diamond_problem_bug.cpp", directory: "/home/cs22mtech12008/UseAfterScope/Scripts", checksumkind: CSK_MD5, checksum: "68c95edde9d6d246de91b7cb6ac9fc66")
!4 = !{!5}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "A", file: !7, line: 5, size: 128, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !8, vtableHolder: !6, identifier: "_ZTS1A")
!7 = !DIFile(filename: "Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Inheritance_with_data/diamond_problem_bug.cpp", directory: "/home/cs22mtech12008", checksumkind: CSK_MD5, checksum: "68c95edde9d6d246de91b7cb6ac9fc66")
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
!21 = !{!0, !22, !29, !34, !39}
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !7, line: 21, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 104, elements: !27)
!25 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!26 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!27 = !{!28}
!28 = !DISubrange(count: 13)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(scope: null, file: !7, line: 21, type: !31, isLocal: true, isDefinition: true)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 16, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 2)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(scope: null, file: !7, line: 9, type: !36, isLocal: true, isDefinition: true)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 120, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: 15)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(scope: null, file: !7, line: 37, type: !41, isLocal: true, isDefinition: true)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 112, elements: !42)
!42 = !{!43}
!43 = !DISubrange(count: 14)
!44 = !{!45, !64, !67, !72, !80, !88, !92, !99, !103, !107, !109, !111, !115, !126, !130, !136, !142, !144, !148, !152, !156, !160, !173, !175, !179, !183, !187, !189, !195, !199, !203, !205, !207, !211, !219, !223, !227, !231, !233, !239, !241, !248, !253, !257, !262, !266, !270, !274, !276, !278, !282, !286, !290, !292, !296, !300, !302, !304, !308, !314, !319, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !338, !342, !347, !351, !355, !360, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !396, !400, !404, !410, !414, !418, !423, !425, !429, !433, !437, !447, !449, !453, !457, !461, !465, !469, !473, !477, !481, !485, !489, !493, !495, !497, !501, !505, !511, !515, !519, !521, !525, !529, !535, !537, !541, !545, !549, !553, !557, !561, !565, !566, !567, !568, !570, !571, !572, !573, !574, !575, !576, !580, !586, !591, !595, !597, !599, !601, !603, !610, !614, !618, !622, !626, !630, !635, !639, !641, !645, !651, !655, !660, !662, !664, !668, !672, !674, !676, !678, !680, !684, !686, !688, !692, !696, !700, !704, !708, !712, !714, !718, !722, !726, !730, !732, !734, !738, !742, !743, !744, !745, !746, !747, !755, !763, !766, !767, !769, !771, !773, !775, !779, !781, !783, !785, !787, !789, !791, !793, !795, !799, !803, !805, !809}
!45 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !47, file: !63, line: 64)
!46 = !DINamespace(name: "std", scope: null)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !48, line: 6, baseType: !49)
!48 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !50, line: 21, baseType: !51)
!50 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !50, line: 13, size: 64, flags: DIFlagTypePassByValue, elements: !52, identifier: "_ZTS11__mbstate_t")
!52 = !{!53, !54}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !51, file: !50, line: 15, baseType: !14, size: 32)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !51, file: !50, line: 20, baseType: !55, size: 32, offset: 32)
!55 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !51, file: !50, line: 16, size: 32, flags: DIFlagTypePassByValue, elements: !56, identifier: "_ZTSN11__mbstate_tUt_E")
!56 = !{!57, !59}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !55, file: !50, line: 18, baseType: !58, size: 32)
!58 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !55, file: !50, line: 19, baseType: !60, size: 32)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 32, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 4)
!63 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cwchar", directory: "")
!64 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !65, file: !63, line: 141)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !66, line: 20, baseType: !58)
!66 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!67 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !68, file: !63, line: 143)
!68 = !DISubprogram(name: "btowc", scope: !69, file: !69, line: 284, type: !70, flags: DIFlagPrototyped, spFlags: 0)
!69 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "8900d9ecbbe40d052c41becfbc5b5531")
!70 = !DISubroutineType(types: !71)
!71 = !{!65, !14}
!72 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !73, file: !63, line: 144)
!73 = !DISubprogram(name: "fgetwc", scope: !69, file: !69, line: 726, type: !74, flags: DIFlagPrototyped, spFlags: 0)
!74 = !DISubroutineType(types: !75)
!75 = !{!65, !76}
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !78, line: 5, baseType: !79)
!78 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "72a8fe90981f484acae7c6f3dfc5c2b7")
!79 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !78, line: 4, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS8_IO_FILE")
!80 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !81, file: !63, line: 145)
!81 = !DISubprogram(name: "fgetws", scope: !69, file: !69, line: 755, type: !82, flags: DIFlagPrototyped, spFlags: 0)
!82 = !DISubroutineType(types: !83)
!83 = !{!84, !86, !14, !87}
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!86 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !84)
!87 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !76)
!88 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !89, file: !63, line: 146)
!89 = !DISubprogram(name: "fputwc", scope: !69, file: !69, line: 740, type: !90, flags: DIFlagPrototyped, spFlags: 0)
!90 = !DISubroutineType(types: !91)
!91 = !{!65, !85, !76}
!92 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !93, file: !63, line: 147)
!93 = !DISubprogram(name: "fputws", scope: !69, file: !69, line: 762, type: !94, flags: DIFlagPrototyped, spFlags: 0)
!94 = !DISubroutineType(types: !95)
!95 = !{!14, !96, !87}
!96 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !97)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!99 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !100, file: !63, line: 148)
!100 = !DISubprogram(name: "fwide", scope: !69, file: !69, line: 573, type: !101, flags: DIFlagPrototyped, spFlags: 0)
!101 = !DISubroutineType(types: !102)
!102 = !{!14, !76, !14}
!103 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !104, file: !63, line: 149)
!104 = !DISubprogram(name: "fwprintf", scope: !69, file: !69, line: 580, type: !105, flags: DIFlagPrototyped, spFlags: 0)
!105 = !DISubroutineType(types: !106)
!106 = !{!14, !87, !96, null}
!107 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !108, file: !63, line: 150)
!108 = !DISubprogram(name: "fwscanf", linkageName: "__isoc99_fwscanf", scope: !69, file: !69, line: 640, type: !105, flags: DIFlagPrototyped, spFlags: 0)
!109 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !110, file: !63, line: 151)
!110 = !DISubprogram(name: "getwc", scope: !69, file: !69, line: 727, type: !74, flags: DIFlagPrototyped, spFlags: 0)
!111 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !112, file: !63, line: 152)
!112 = !DISubprogram(name: "getwchar", scope: !69, file: !69, line: 733, type: !113, flags: DIFlagPrototyped, spFlags: 0)
!113 = !DISubroutineType(types: !114)
!114 = !{!65}
!115 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !116, file: !63, line: 153)
!116 = !DISubprogram(name: "mbrlen", scope: !69, file: !69, line: 307, type: !117, flags: DIFlagPrototyped, spFlags: 0)
!117 = !DISubroutineType(types: !118)
!118 = !{!119, !122, !119, !124}
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !120, line: 46, baseType: !121)
!120 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/cs22mtech12008", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!121 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!122 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !123)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !125)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!126 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !127, file: !63, line: 154)
!127 = !DISubprogram(name: "mbrtowc", scope: !69, file: !69, line: 296, type: !128, flags: DIFlagPrototyped, spFlags: 0)
!128 = !DISubroutineType(types: !129)
!129 = !{!119, !86, !122, !119, !124}
!130 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !131, file: !63, line: 155)
!131 = !DISubprogram(name: "mbsinit", scope: !69, file: !69, line: 292, type: !132, flags: DIFlagPrototyped, spFlags: 0)
!132 = !DISubroutineType(types: !133)
!133 = !{!14, !134}
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!136 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !137, file: !63, line: 156)
!137 = !DISubprogram(name: "mbsrtowcs", scope: !69, file: !69, line: 337, type: !138, flags: DIFlagPrototyped, spFlags: 0)
!138 = !DISubroutineType(types: !139)
!139 = !{!119, !86, !140, !119, !124}
!140 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !141)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!142 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !143, file: !63, line: 157)
!143 = !DISubprogram(name: "putwc", scope: !69, file: !69, line: 741, type: !90, flags: DIFlagPrototyped, spFlags: 0)
!144 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !145, file: !63, line: 158)
!145 = !DISubprogram(name: "putwchar", scope: !69, file: !69, line: 747, type: !146, flags: DIFlagPrototyped, spFlags: 0)
!146 = !DISubroutineType(types: !147)
!147 = !{!65, !85}
!148 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !149, file: !63, line: 160)
!149 = !DISubprogram(name: "swprintf", scope: !69, file: !69, line: 590, type: !150, flags: DIFlagPrototyped, spFlags: 0)
!150 = !DISubroutineType(types: !151)
!151 = !{!14, !86, !119, !96, null}
!152 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !153, file: !63, line: 162)
!153 = !DISubprogram(name: "swscanf", linkageName: "__isoc99_swscanf", scope: !69, file: !69, line: 647, type: !154, flags: DIFlagPrototyped, spFlags: 0)
!154 = !DISubroutineType(types: !155)
!155 = !{!14, !96, !96, null}
!156 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !157, file: !63, line: 163)
!157 = !DISubprogram(name: "ungetwc", scope: !69, file: !69, line: 770, type: !158, flags: DIFlagPrototyped, spFlags: 0)
!158 = !DISubroutineType(types: !159)
!159 = !{!65, !65, !76}
!160 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !161, file: !63, line: 164)
!161 = !DISubprogram(name: "vfwprintf", scope: !69, file: !69, line: 598, type: !162, flags: DIFlagPrototyped, spFlags: 0)
!162 = !DISubroutineType(types: !163)
!163 = !{!14, !87, !96, !164}
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, flags: DIFlagTypePassByValue, elements: !166, identifier: "_ZTS13__va_list_tag")
!166 = !{!167, !169, !170, !172}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !165, file: !168, baseType: !58, size: 32)
!168 = !DIFile(filename: "Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Inheritance_with_data/diamond_problem_bug.cpp", directory: "/home/cs22mtech12008")
!169 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !165, file: !168, baseType: !58, size: 32, offset: 32)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !165, file: !168, baseType: !171, size: 64, offset: 64)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !165, file: !168, baseType: !171, size: 64, offset: 128)
!173 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !174, file: !63, line: 166)
!174 = !DISubprogram(name: "vfwscanf", linkageName: "__isoc99_vfwscanf", scope: !69, file: !69, line: 693, type: !162, flags: DIFlagPrototyped, spFlags: 0)
!175 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !176, file: !63, line: 169)
!176 = !DISubprogram(name: "vswprintf", scope: !69, file: !69, line: 611, type: !177, flags: DIFlagPrototyped, spFlags: 0)
!177 = !DISubroutineType(types: !178)
!178 = !{!14, !86, !119, !96, !164}
!179 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !180, file: !63, line: 172)
!180 = !DISubprogram(name: "vswscanf", linkageName: "__isoc99_vswscanf", scope: !69, file: !69, line: 700, type: !181, flags: DIFlagPrototyped, spFlags: 0)
!181 = !DISubroutineType(types: !182)
!182 = !{!14, !96, !96, !164}
!183 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !184, file: !63, line: 174)
!184 = !DISubprogram(name: "vwprintf", scope: !69, file: !69, line: 606, type: !185, flags: DIFlagPrototyped, spFlags: 0)
!185 = !DISubroutineType(types: !186)
!186 = !{!14, !96, !164}
!187 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !188, file: !63, line: 176)
!188 = !DISubprogram(name: "vwscanf", linkageName: "__isoc99_vwscanf", scope: !69, file: !69, line: 697, type: !185, flags: DIFlagPrototyped, spFlags: 0)
!189 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !190, file: !63, line: 178)
!190 = !DISubprogram(name: "wcrtomb", scope: !69, file: !69, line: 301, type: !191, flags: DIFlagPrototyped, spFlags: 0)
!191 = !DISubroutineType(types: !192)
!192 = !{!119, !193, !85, !124}
!193 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !194)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!195 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !196, file: !63, line: 179)
!196 = !DISubprogram(name: "wcscat", scope: !69, file: !69, line: 97, type: !197, flags: DIFlagPrototyped, spFlags: 0)
!197 = !DISubroutineType(types: !198)
!198 = !{!84, !86, !96}
!199 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !200, file: !63, line: 180)
!200 = !DISubprogram(name: "wcscmp", scope: !69, file: !69, line: 106, type: !201, flags: DIFlagPrototyped, spFlags: 0)
!201 = !DISubroutineType(types: !202)
!202 = !{!14, !97, !97}
!203 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !204, file: !63, line: 181)
!204 = !DISubprogram(name: "wcscoll", scope: !69, file: !69, line: 131, type: !201, flags: DIFlagPrototyped, spFlags: 0)
!205 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !206, file: !63, line: 182)
!206 = !DISubprogram(name: "wcscpy", scope: !69, file: !69, line: 87, type: !197, flags: DIFlagPrototyped, spFlags: 0)
!207 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !208, file: !63, line: 183)
!208 = !DISubprogram(name: "wcscspn", scope: !69, file: !69, line: 187, type: !209, flags: DIFlagPrototyped, spFlags: 0)
!209 = !DISubroutineType(types: !210)
!210 = !{!119, !97, !97}
!211 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !212, file: !63, line: 184)
!212 = !DISubprogram(name: "wcsftime", scope: !69, file: !69, line: 834, type: !213, flags: DIFlagPrototyped, spFlags: 0)
!213 = !DISubroutineType(types: !214)
!214 = !{!119, !86, !119, !96, !215}
!215 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !216)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !218)
!218 = !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !69, line: 83, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS2tm")
!219 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !220, file: !63, line: 185)
!220 = !DISubprogram(name: "wcslen", scope: !69, file: !69, line: 222, type: !221, flags: DIFlagPrototyped, spFlags: 0)
!221 = !DISubroutineType(types: !222)
!222 = !{!119, !97}
!223 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !224, file: !63, line: 186)
!224 = !DISubprogram(name: "wcsncat", scope: !69, file: !69, line: 101, type: !225, flags: DIFlagPrototyped, spFlags: 0)
!225 = !DISubroutineType(types: !226)
!226 = !{!84, !86, !96, !119}
!227 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !228, file: !63, line: 187)
!228 = !DISubprogram(name: "wcsncmp", scope: !69, file: !69, line: 109, type: !229, flags: DIFlagPrototyped, spFlags: 0)
!229 = !DISubroutineType(types: !230)
!230 = !{!14, !97, !97, !119}
!231 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !232, file: !63, line: 188)
!232 = !DISubprogram(name: "wcsncpy", scope: !69, file: !69, line: 92, type: !225, flags: DIFlagPrototyped, spFlags: 0)
!233 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !234, file: !63, line: 189)
!234 = !DISubprogram(name: "wcsrtombs", scope: !69, file: !69, line: 343, type: !235, flags: DIFlagPrototyped, spFlags: 0)
!235 = !DISubroutineType(types: !236)
!236 = !{!119, !193, !237, !119, !124}
!237 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !238)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!239 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !240, file: !63, line: 190)
!240 = !DISubprogram(name: "wcsspn", scope: !69, file: !69, line: 191, type: !209, flags: DIFlagPrototyped, spFlags: 0)
!241 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !242, file: !63, line: 191)
!242 = !DISubprogram(name: "wcstod", scope: !69, file: !69, line: 377, type: !243, flags: DIFlagPrototyped, spFlags: 0)
!243 = !DISubroutineType(types: !244)
!244 = !{!245, !96, !246}
!245 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!246 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !247)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!248 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !249, file: !63, line: 193)
!249 = !DISubprogram(name: "wcstof", scope: !69, file: !69, line: 382, type: !250, flags: DIFlagPrototyped, spFlags: 0)
!250 = !DISubroutineType(types: !251)
!251 = !{!252, !96, !246}
!252 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!253 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !254, file: !63, line: 195)
!254 = !DISubprogram(name: "wcstok", scope: !69, file: !69, line: 217, type: !255, flags: DIFlagPrototyped, spFlags: 0)
!255 = !DISubroutineType(types: !256)
!256 = !{!84, !86, !96, !246}
!257 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !258, file: !63, line: 196)
!258 = !DISubprogram(name: "wcstol", scope: !69, file: !69, line: 428, type: !259, flags: DIFlagPrototyped, spFlags: 0)
!259 = !DISubroutineType(types: !260)
!260 = !{!261, !96, !246, !14}
!261 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!262 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !263, file: !63, line: 197)
!263 = !DISubprogram(name: "wcstoul", scope: !69, file: !69, line: 433, type: !264, flags: DIFlagPrototyped, spFlags: 0)
!264 = !DISubroutineType(types: !265)
!265 = !{!121, !96, !246, !14}
!266 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !267, file: !63, line: 198)
!267 = !DISubprogram(name: "wcsxfrm", scope: !69, file: !69, line: 135, type: !268, flags: DIFlagPrototyped, spFlags: 0)
!268 = !DISubroutineType(types: !269)
!269 = !{!119, !86, !96, !119}
!270 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !271, file: !63, line: 199)
!271 = !DISubprogram(name: "wctob", scope: !69, file: !69, line: 288, type: !272, flags: DIFlagPrototyped, spFlags: 0)
!272 = !DISubroutineType(types: !273)
!273 = !{!14, !65}
!274 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !275, file: !63, line: 200)
!275 = !DISubprogram(name: "wmemcmp", scope: !69, file: !69, line: 258, type: !229, flags: DIFlagPrototyped, spFlags: 0)
!276 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !277, file: !63, line: 201)
!277 = !DISubprogram(name: "wmemcpy", scope: !69, file: !69, line: 262, type: !225, flags: DIFlagPrototyped, spFlags: 0)
!278 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !279, file: !63, line: 202)
!279 = !DISubprogram(name: "wmemmove", scope: !69, file: !69, line: 267, type: !280, flags: DIFlagPrototyped, spFlags: 0)
!280 = !DISubroutineType(types: !281)
!281 = !{!84, !84, !97, !119}
!282 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !283, file: !63, line: 203)
!283 = !DISubprogram(name: "wmemset", scope: !69, file: !69, line: 271, type: !284, flags: DIFlagPrototyped, spFlags: 0)
!284 = !DISubroutineType(types: !285)
!285 = !{!84, !84, !85, !119}
!286 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !287, file: !63, line: 204)
!287 = !DISubprogram(name: "wprintf", scope: !69, file: !69, line: 587, type: !288, flags: DIFlagPrototyped, spFlags: 0)
!288 = !DISubroutineType(types: !289)
!289 = !{!14, !96, null}
!290 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !291, file: !63, line: 205)
!291 = !DISubprogram(name: "wscanf", linkageName: "__isoc99_wscanf", scope: !69, file: !69, line: 644, type: !288, flags: DIFlagPrototyped, spFlags: 0)
!292 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !293, file: !63, line: 206)
!293 = !DISubprogram(name: "wcschr", scope: !69, file: !69, line: 164, type: !294, flags: DIFlagPrototyped, spFlags: 0)
!294 = !DISubroutineType(types: !295)
!295 = !{!84, !97, !85}
!296 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !297, file: !63, line: 207)
!297 = !DISubprogram(name: "wcspbrk", scope: !69, file: !69, line: 201, type: !298, flags: DIFlagPrototyped, spFlags: 0)
!298 = !DISubroutineType(types: !299)
!299 = !{!84, !97, !97}
!300 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !301, file: !63, line: 208)
!301 = !DISubprogram(name: "wcsrchr", scope: !69, file: !69, line: 174, type: !294, flags: DIFlagPrototyped, spFlags: 0)
!302 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !303, file: !63, line: 209)
!303 = !DISubprogram(name: "wcsstr", scope: !69, file: !69, line: 212, type: !298, flags: DIFlagPrototyped, spFlags: 0)
!304 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !305, file: !63, line: 210)
!305 = !DISubprogram(name: "wmemchr", scope: !69, file: !69, line: 253, type: !306, flags: DIFlagPrototyped, spFlags: 0)
!306 = !DISubroutineType(types: !307)
!307 = !{!84, !97, !85, !119}
!308 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !309, entity: !310, file: !63, line: 251)
!309 = !DINamespace(name: "__gnu_cxx", scope: null)
!310 = !DISubprogram(name: "wcstold", scope: !69, file: !69, line: 384, type: !311, flags: DIFlagPrototyped, spFlags: 0)
!311 = !DISubroutineType(types: !312)
!312 = !{!313, !96, !246}
!313 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!314 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !309, entity: !315, file: !63, line: 260)
!315 = !DISubprogram(name: "wcstoll", scope: !69, file: !69, line: 441, type: !316, flags: DIFlagPrototyped, spFlags: 0)
!316 = !DISubroutineType(types: !317)
!317 = !{!318, !96, !246, !14}
!318 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!319 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !309, entity: !320, file: !63, line: 261)
!320 = !DISubprogram(name: "wcstoull", scope: !69, file: !69, line: 448, type: !321, flags: DIFlagPrototyped, spFlags: 0)
!321 = !DISubroutineType(types: !322)
!322 = !{!323, !96, !246, !14}
!323 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!324 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !310, file: !63, line: 267)
!325 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !315, file: !63, line: 268)
!326 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !320, file: !63, line: 269)
!327 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !249, file: !63, line: 283)
!328 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !174, file: !63, line: 286)
!329 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !180, file: !63, line: 289)
!330 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !188, file: !63, line: 292)
!331 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !310, file: !63, line: 296)
!332 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !315, file: !63, line: 297)
!333 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !320, file: !63, line: 298)
!334 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !335, file: !336, line: 66)
!335 = !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !337, file: !336, line: 97, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!336 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/exception_ptr.h", directory: "", checksumkind: CSK_MD5, checksum: "314ad14748ccb9ff85c65d17ebb0828b")
!337 = !DINamespace(name: "__exception_ptr", scope: !46)
!338 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !337, entity: !339, file: !336, line: 85)
!339 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !46, file: !336, line: 81, type: !340, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!340 = !DISubroutineType(types: !341)
!341 = !{null, !335}
!342 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !343, file: !336, line: 243)
!343 = !DISubprogram(name: "swap", linkageName: "_ZNSt15__exception_ptr4swapERNS_13exception_ptrES1_", scope: !337, file: !336, line: 230, type: !344, flags: DIFlagPrototyped, spFlags: 0)
!344 = !DISubroutineType(types: !345)
!345 = !{null, !346, !346}
!346 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !335, size: 64)
!347 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !348, file: !350, line: 53)
!348 = !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !349, line: 51, size: 768, flags: DIFlagFwdDecl, identifier: "_ZTS5lconv")
!349 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "0cf373fc44eed8073800bdb9da87b72f")
!350 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/clocale", directory: "")
!351 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !352, file: !350, line: 54)
!352 = !DISubprogram(name: "setlocale", scope: !349, file: !349, line: 122, type: !353, flags: DIFlagPrototyped, spFlags: 0)
!353 = !DISubroutineType(types: !354)
!354 = !{!194, !14, !123}
!355 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !356, file: !350, line: 55)
!356 = !DISubprogram(name: "localeconv", scope: !349, file: !349, line: 125, type: !357, flags: DIFlagPrototyped, spFlags: 0)
!357 = !DISubroutineType(types: !358)
!358 = !{!359}
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!360 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !361, file: !365, line: 64)
!361 = !DISubprogram(name: "isalnum", scope: !362, file: !362, line: 108, type: !363, flags: DIFlagPrototyped, spFlags: 0)
!362 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "36575f934ef4fe7e9d50a3cb17bd5c66")
!363 = !DISubroutineType(types: !364)
!364 = !{!14, !14}
!365 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cctype", directory: "")
!366 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !367, file: !365, line: 65)
!367 = !DISubprogram(name: "isalpha", scope: !362, file: !362, line: 109, type: !363, flags: DIFlagPrototyped, spFlags: 0)
!368 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !369, file: !365, line: 66)
!369 = !DISubprogram(name: "iscntrl", scope: !362, file: !362, line: 110, type: !363, flags: DIFlagPrototyped, spFlags: 0)
!370 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !371, file: !365, line: 67)
!371 = !DISubprogram(name: "isdigit", scope: !362, file: !362, line: 111, type: !363, flags: DIFlagPrototyped, spFlags: 0)
!372 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !373, file: !365, line: 68)
!373 = !DISubprogram(name: "isgraph", scope: !362, file: !362, line: 113, type: !363, flags: DIFlagPrototyped, spFlags: 0)
!374 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !375, file: !365, line: 69)
!375 = !DISubprogram(name: "islower", scope: !362, file: !362, line: 112, type: !363, flags: DIFlagPrototyped, spFlags: 0)
!376 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !377, file: !365, line: 70)
!377 = !DISubprogram(name: "isprint", scope: !362, file: !362, line: 114, type: !363, flags: DIFlagPrototyped, spFlags: 0)
!378 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !379, file: !365, line: 71)
!379 = !DISubprogram(name: "ispunct", scope: !362, file: !362, line: 115, type: !363, flags: DIFlagPrototyped, spFlags: 0)
!380 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !381, file: !365, line: 72)
!381 = !DISubprogram(name: "isspace", scope: !362, file: !362, line: 116, type: !363, flags: DIFlagPrototyped, spFlags: 0)
!382 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !383, file: !365, line: 73)
!383 = !DISubprogram(name: "isupper", scope: !362, file: !362, line: 117, type: !363, flags: DIFlagPrototyped, spFlags: 0)
!384 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !385, file: !365, line: 74)
!385 = !DISubprogram(name: "isxdigit", scope: !362, file: !362, line: 118, type: !363, flags: DIFlagPrototyped, spFlags: 0)
!386 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !387, file: !365, line: 75)
!387 = !DISubprogram(name: "tolower", scope: !362, file: !362, line: 122, type: !363, flags: DIFlagPrototyped, spFlags: 0)
!388 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !389, file: !365, line: 76)
!389 = !DISubprogram(name: "toupper", scope: !362, file: !362, line: 125, type: !363, flags: DIFlagPrototyped, spFlags: 0)
!390 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !391, file: !365, line: 87)
!391 = !DISubprogram(name: "isblank", scope: !362, file: !362, line: 130, type: !363, flags: DIFlagPrototyped, spFlags: 0)
!392 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !393, entity: !394, file: !395, line: 58)
!393 = !DINamespace(name: "__gnu_debug", scope: null)
!394 = !DINamespace(name: "__debug", scope: !46)
!395 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/debug/debug.h", directory: "", checksumkind: CSK_MD5, checksum: "752210a319f5f5d356cc29cd1ce3cdc7")
!396 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !397, file: !399, line: 52)
!397 = !DISubprogram(name: "abs", scope: !398, file: !398, line: 840, type: !363, flags: DIFlagPrototyped, spFlags: 0)
!398 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!399 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/std_abs.h", directory: "")
!400 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !401, file: !403, line: 131)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !398, line: 62, baseType: !402)
!402 = !DICompositeType(tag: DW_TAG_structure_type, file: !398, line: 58, size: 64, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!403 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cstdlib", directory: "")
!404 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !405, file: !403, line: 132)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !398, line: 70, baseType: !406)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !398, line: 66, size: 128, flags: DIFlagTypePassByValue, elements: !407, identifier: "_ZTS6ldiv_t")
!407 = !{!408, !409}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !406, file: !398, line: 68, baseType: !261, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !406, file: !398, line: 69, baseType: !261, size: 64, offset: 64)
!410 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !411, file: !403, line: 134)
!411 = !DISubprogram(name: "abort", scope: !398, file: !398, line: 591, type: !412, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!412 = !DISubroutineType(types: !413)
!413 = !{null}
!414 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !415, file: !403, line: 136)
!415 = !DISubprogram(name: "aligned_alloc", scope: !398, file: !398, line: 586, type: !416, flags: DIFlagPrototyped, spFlags: 0)
!416 = !DISubroutineType(types: !417)
!417 = !{!171, !119, !119}
!418 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !419, file: !403, line: 138)
!419 = !DISubprogram(name: "atexit", scope: !398, file: !398, line: 595, type: !420, flags: DIFlagPrototyped, spFlags: 0)
!420 = !DISubroutineType(types: !421)
!421 = !{!14, !422}
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!423 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !424, file: !403, line: 141)
!424 = !DISubprogram(name: "at_quick_exit", scope: !398, file: !398, line: 600, type: !420, flags: DIFlagPrototyped, spFlags: 0)
!425 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !426, file: !403, line: 144)
!426 = !DISubprogram(name: "atof", scope: !398, file: !398, line: 101, type: !427, flags: DIFlagPrototyped, spFlags: 0)
!427 = !DISubroutineType(types: !428)
!428 = !{!245, !123}
!429 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !430, file: !403, line: 145)
!430 = !DISubprogram(name: "atoi", scope: !398, file: !398, line: 104, type: !431, flags: DIFlagPrototyped, spFlags: 0)
!431 = !DISubroutineType(types: !432)
!432 = !{!14, !123}
!433 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !434, file: !403, line: 146)
!434 = !DISubprogram(name: "atol", scope: !398, file: !398, line: 107, type: !435, flags: DIFlagPrototyped, spFlags: 0)
!435 = !DISubroutineType(types: !436)
!436 = !{!261, !123}
!437 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !438, file: !403, line: 147)
!438 = !DISubprogram(name: "bsearch", scope: !398, file: !398, line: 820, type: !439, flags: DIFlagPrototyped, spFlags: 0)
!439 = !DISubroutineType(types: !440)
!440 = !{!171, !441, !441, !119, !119, !443}
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !398, line: 808, baseType: !444)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DISubroutineType(types: !446)
!446 = !{!14, !441, !441}
!447 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !448, file: !403, line: 148)
!448 = !DISubprogram(name: "calloc", scope: !398, file: !398, line: 542, type: !416, flags: DIFlagPrototyped, spFlags: 0)
!449 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !450, file: !403, line: 149)
!450 = !DISubprogram(name: "div", scope: !398, file: !398, line: 852, type: !451, flags: DIFlagPrototyped, spFlags: 0)
!451 = !DISubroutineType(types: !452)
!452 = !{!401, !14, !14}
!453 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !454, file: !403, line: 150)
!454 = !DISubprogram(name: "exit", scope: !398, file: !398, line: 617, type: !455, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!455 = !DISubroutineType(types: !456)
!456 = !{null, !14}
!457 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !458, file: !403, line: 151)
!458 = !DISubprogram(name: "free", scope: !398, file: !398, line: 565, type: !459, flags: DIFlagPrototyped, spFlags: 0)
!459 = !DISubroutineType(types: !460)
!460 = !{null, !171}
!461 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !462, file: !403, line: 152)
!462 = !DISubprogram(name: "getenv", scope: !398, file: !398, line: 634, type: !463, flags: DIFlagPrototyped, spFlags: 0)
!463 = !DISubroutineType(types: !464)
!464 = !{!194, !123}
!465 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !466, file: !403, line: 153)
!466 = !DISubprogram(name: "labs", scope: !398, file: !398, line: 841, type: !467, flags: DIFlagPrototyped, spFlags: 0)
!467 = !DISubroutineType(types: !468)
!468 = !{!261, !261}
!469 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !470, file: !403, line: 154)
!470 = !DISubprogram(name: "ldiv", scope: !398, file: !398, line: 854, type: !471, flags: DIFlagPrototyped, spFlags: 0)
!471 = !DISubroutineType(types: !472)
!472 = !{!405, !261, !261}
!473 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !474, file: !403, line: 155)
!474 = !DISubprogram(name: "malloc", scope: !398, file: !398, line: 539, type: !475, flags: DIFlagPrototyped, spFlags: 0)
!475 = !DISubroutineType(types: !476)
!476 = !{!171, !119}
!477 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !478, file: !403, line: 157)
!478 = !DISubprogram(name: "mblen", scope: !398, file: !398, line: 922, type: !479, flags: DIFlagPrototyped, spFlags: 0)
!479 = !DISubroutineType(types: !480)
!480 = !{!14, !123, !119}
!481 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !482, file: !403, line: 158)
!482 = !DISubprogram(name: "mbstowcs", scope: !398, file: !398, line: 933, type: !483, flags: DIFlagPrototyped, spFlags: 0)
!483 = !DISubroutineType(types: !484)
!484 = !{!119, !86, !122, !119}
!485 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !486, file: !403, line: 159)
!486 = !DISubprogram(name: "mbtowc", scope: !398, file: !398, line: 925, type: !487, flags: DIFlagPrototyped, spFlags: 0)
!487 = !DISubroutineType(types: !488)
!488 = !{!14, !86, !122, !119}
!489 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !490, file: !403, line: 161)
!490 = !DISubprogram(name: "qsort", scope: !398, file: !398, line: 830, type: !491, flags: DIFlagPrototyped, spFlags: 0)
!491 = !DISubroutineType(types: !492)
!492 = !{null, !171, !119, !119, !443}
!493 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !494, file: !403, line: 164)
!494 = !DISubprogram(name: "quick_exit", scope: !398, file: !398, line: 623, type: !455, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!495 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !496, file: !403, line: 167)
!496 = !DISubprogram(name: "rand", scope: !398, file: !398, line: 453, type: !12, flags: DIFlagPrototyped, spFlags: 0)
!497 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !498, file: !403, line: 168)
!498 = !DISubprogram(name: "realloc", scope: !398, file: !398, line: 550, type: !499, flags: DIFlagPrototyped, spFlags: 0)
!499 = !DISubroutineType(types: !500)
!500 = !{!171, !171, !119}
!501 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !502, file: !403, line: 169)
!502 = !DISubprogram(name: "srand", scope: !398, file: !398, line: 455, type: !503, flags: DIFlagPrototyped, spFlags: 0)
!503 = !DISubroutineType(types: !504)
!504 = !{null, !58}
!505 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !506, file: !403, line: 170)
!506 = !DISubprogram(name: "strtod", scope: !398, file: !398, line: 117, type: !507, flags: DIFlagPrototyped, spFlags: 0)
!507 = !DISubroutineType(types: !508)
!508 = !{!245, !122, !509}
!509 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !510)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!511 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !512, file: !403, line: 171)
!512 = !DISubprogram(name: "strtol", scope: !398, file: !398, line: 176, type: !513, flags: DIFlagPrototyped, spFlags: 0)
!513 = !DISubroutineType(types: !514)
!514 = !{!261, !122, !509, !14}
!515 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !516, file: !403, line: 172)
!516 = !DISubprogram(name: "strtoul", scope: !398, file: !398, line: 180, type: !517, flags: DIFlagPrototyped, spFlags: 0)
!517 = !DISubroutineType(types: !518)
!518 = !{!121, !122, !509, !14}
!519 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !520, file: !403, line: 173)
!520 = !DISubprogram(name: "system", scope: !398, file: !398, line: 784, type: !431, flags: DIFlagPrototyped, spFlags: 0)
!521 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !522, file: !403, line: 175)
!522 = !DISubprogram(name: "wcstombs", scope: !398, file: !398, line: 936, type: !523, flags: DIFlagPrototyped, spFlags: 0)
!523 = !DISubroutineType(types: !524)
!524 = !{!119, !193, !96, !119}
!525 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !526, file: !403, line: 176)
!526 = !DISubprogram(name: "wctomb", scope: !398, file: !398, line: 929, type: !527, flags: DIFlagPrototyped, spFlags: 0)
!527 = !DISubroutineType(types: !528)
!528 = !{!14, !194, !85}
!529 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !309, entity: !530, file: !403, line: 204)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !398, line: 80, baseType: !531)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !398, line: 76, size: 128, flags: DIFlagTypePassByValue, elements: !532, identifier: "_ZTS7lldiv_t")
!532 = !{!533, !534}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !531, file: !398, line: 78, baseType: !318, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !531, file: !398, line: 79, baseType: !318, size: 64, offset: 64)
!535 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !309, entity: !536, file: !403, line: 210)
!536 = !DISubprogram(name: "_Exit", scope: !398, file: !398, line: 629, type: !455, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!537 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !309, entity: !538, file: !403, line: 214)
!538 = !DISubprogram(name: "llabs", scope: !398, file: !398, line: 844, type: !539, flags: DIFlagPrototyped, spFlags: 0)
!539 = !DISubroutineType(types: !540)
!540 = !{!318, !318}
!541 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !309, entity: !542, file: !403, line: 220)
!542 = !DISubprogram(name: "lldiv", scope: !398, file: !398, line: 858, type: !543, flags: DIFlagPrototyped, spFlags: 0)
!543 = !DISubroutineType(types: !544)
!544 = !{!530, !318, !318}
!545 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !309, entity: !546, file: !403, line: 231)
!546 = !DISubprogram(name: "atoll", scope: !398, file: !398, line: 112, type: !547, flags: DIFlagPrototyped, spFlags: 0)
!547 = !DISubroutineType(types: !548)
!548 = !{!318, !123}
!549 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !309, entity: !550, file: !403, line: 232)
!550 = !DISubprogram(name: "strtoll", scope: !398, file: !398, line: 200, type: !551, flags: DIFlagPrototyped, spFlags: 0)
!551 = !DISubroutineType(types: !552)
!552 = !{!318, !122, !509, !14}
!553 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !309, entity: !554, file: !403, line: 233)
!554 = !DISubprogram(name: "strtoull", scope: !398, file: !398, line: 205, type: !555, flags: DIFlagPrototyped, spFlags: 0)
!555 = !DISubroutineType(types: !556)
!556 = !{!323, !122, !509, !14}
!557 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !309, entity: !558, file: !403, line: 235)
!558 = !DISubprogram(name: "strtof", scope: !398, file: !398, line: 123, type: !559, flags: DIFlagPrototyped, spFlags: 0)
!559 = !DISubroutineType(types: !560)
!560 = !{!252, !122, !509}
!561 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !309, entity: !562, file: !403, line: 236)
!562 = !DISubprogram(name: "strtold", scope: !398, file: !398, line: 126, type: !563, flags: DIFlagPrototyped, spFlags: 0)
!563 = !DISubroutineType(types: !564)
!564 = !{!313, !122, !509}
!565 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !530, file: !403, line: 244)
!566 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !536, file: !403, line: 246)
!567 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !538, file: !403, line: 248)
!568 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !569, file: !403, line: 249)
!569 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !309, file: !403, line: 217, type: !543, flags: DIFlagPrototyped, spFlags: 0)
!570 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !542, file: !403, line: 250)
!571 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !546, file: !403, line: 252)
!572 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !558, file: !403, line: 253)
!573 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !550, file: !403, line: 254)
!574 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !554, file: !403, line: 255)
!575 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !562, file: !403, line: 256)
!576 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !577, file: !579, line: 98)
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !578, line: 7, baseType: !79)
!578 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!579 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cstdio", directory: "")
!580 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !581, file: !579, line: 99)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !582, line: 84, baseType: !583)
!582 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fpos_t", file: !584, line: 14, baseType: !585)
!584 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h", directory: "", checksumkind: CSK_MD5, checksum: "32de8bdaf3551a6c0a9394f9af4389ce")
!585 = !DICompositeType(tag: DW_TAG_structure_type, name: "_G_fpos_t", file: !584, line: 10, size: 128, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
!586 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !587, file: !579, line: 101)
!587 = !DISubprogram(name: "clearerr", scope: !582, file: !582, line: 757, type: !588, flags: DIFlagPrototyped, spFlags: 0)
!588 = !DISubroutineType(types: !589)
!589 = !{null, !590}
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!591 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !592, file: !579, line: 102)
!592 = !DISubprogram(name: "fclose", scope: !582, file: !582, line: 213, type: !593, flags: DIFlagPrototyped, spFlags: 0)
!593 = !DISubroutineType(types: !594)
!594 = !{!14, !590}
!595 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !596, file: !579, line: 103)
!596 = !DISubprogram(name: "feof", scope: !582, file: !582, line: 759, type: !593, flags: DIFlagPrototyped, spFlags: 0)
!597 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !598, file: !579, line: 104)
!598 = !DISubprogram(name: "ferror", scope: !582, file: !582, line: 761, type: !593, flags: DIFlagPrototyped, spFlags: 0)
!599 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !600, file: !579, line: 105)
!600 = !DISubprogram(name: "fflush", scope: !582, file: !582, line: 218, type: !593, flags: DIFlagPrototyped, spFlags: 0)
!601 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !602, file: !579, line: 106)
!602 = !DISubprogram(name: "fgetc", scope: !582, file: !582, line: 485, type: !593, flags: DIFlagPrototyped, spFlags: 0)
!603 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !604, file: !579, line: 107)
!604 = !DISubprogram(name: "fgetpos", scope: !582, file: !582, line: 731, type: !605, flags: DIFlagPrototyped, spFlags: 0)
!605 = !DISubroutineType(types: !606)
!606 = !{!14, !607, !608}
!607 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !590)
!608 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !609)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!610 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !611, file: !579, line: 108)
!611 = !DISubprogram(name: "fgets", scope: !582, file: !582, line: 564, type: !612, flags: DIFlagPrototyped, spFlags: 0)
!612 = !DISubroutineType(types: !613)
!613 = !{!194, !193, !14, !607}
!614 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !615, file: !579, line: 109)
!615 = !DISubprogram(name: "fopen", scope: !582, file: !582, line: 246, type: !616, flags: DIFlagPrototyped, spFlags: 0)
!616 = !DISubroutineType(types: !617)
!617 = !{!590, !122, !122}
!618 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !619, file: !579, line: 110)
!619 = !DISubprogram(name: "fprintf", scope: !582, file: !582, line: 326, type: !620, flags: DIFlagPrototyped, spFlags: 0)
!620 = !DISubroutineType(types: !621)
!621 = !{!14, !607, !122, null}
!622 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !623, file: !579, line: 111)
!623 = !DISubprogram(name: "fputc", scope: !582, file: !582, line: 521, type: !624, flags: DIFlagPrototyped, spFlags: 0)
!624 = !DISubroutineType(types: !625)
!625 = !{!14, !14, !590}
!626 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !627, file: !579, line: 112)
!627 = !DISubprogram(name: "fputs", scope: !582, file: !582, line: 626, type: !628, flags: DIFlagPrototyped, spFlags: 0)
!628 = !DISubroutineType(types: !629)
!629 = !{!14, !122, !607}
!630 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !631, file: !579, line: 113)
!631 = !DISubprogram(name: "fread", scope: !582, file: !582, line: 646, type: !632, flags: DIFlagPrototyped, spFlags: 0)
!632 = !DISubroutineType(types: !633)
!633 = !{!119, !634, !119, !119, !607}
!634 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !171)
!635 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !636, file: !579, line: 114)
!636 = !DISubprogram(name: "freopen", scope: !582, file: !582, line: 252, type: !637, flags: DIFlagPrototyped, spFlags: 0)
!637 = !DISubroutineType(types: !638)
!638 = !{!590, !122, !122, !607}
!639 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !640, file: !579, line: 115)
!640 = !DISubprogram(name: "fscanf", linkageName: "__isoc99_fscanf", scope: !582, file: !582, line: 407, type: !620, flags: DIFlagPrototyped, spFlags: 0)
!641 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !642, file: !579, line: 116)
!642 = !DISubprogram(name: "fseek", scope: !582, file: !582, line: 684, type: !643, flags: DIFlagPrototyped, spFlags: 0)
!643 = !DISubroutineType(types: !644)
!644 = !{!14, !590, !261, !14}
!645 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !646, file: !579, line: 117)
!646 = !DISubprogram(name: "fsetpos", scope: !582, file: !582, line: 736, type: !647, flags: DIFlagPrototyped, spFlags: 0)
!647 = !DISubroutineType(types: !648)
!648 = !{!14, !590, !649}
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !581)
!651 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !652, file: !579, line: 118)
!652 = !DISubprogram(name: "ftell", scope: !582, file: !582, line: 689, type: !653, flags: DIFlagPrototyped, spFlags: 0)
!653 = !DISubroutineType(types: !654)
!654 = !{!261, !590}
!655 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !656, file: !579, line: 119)
!656 = !DISubprogram(name: "fwrite", scope: !582, file: !582, line: 652, type: !657, flags: DIFlagPrototyped, spFlags: 0)
!657 = !DISubroutineType(types: !658)
!658 = !{!119, !659, !119, !119, !607}
!659 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !441)
!660 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !661, file: !579, line: 120)
!661 = !DISubprogram(name: "getc", scope: !582, file: !582, line: 486, type: !593, flags: DIFlagPrototyped, spFlags: 0)
!662 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !663, file: !579, line: 121)
!663 = !DISubprogram(name: "getchar", scope: !582, file: !582, line: 492, type: !12, flags: DIFlagPrototyped, spFlags: 0)
!664 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !665, file: !579, line: 126)
!665 = !DISubprogram(name: "perror", scope: !582, file: !582, line: 775, type: !666, flags: DIFlagPrototyped, spFlags: 0)
!666 = !DISubroutineType(types: !667)
!667 = !{null, !123}
!668 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !669, file: !579, line: 127)
!669 = !DISubprogram(name: "printf", scope: !582, file: !582, line: 332, type: !670, flags: DIFlagPrototyped, spFlags: 0)
!670 = !DISubroutineType(types: !671)
!671 = !{!14, !122, null}
!672 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !673, file: !579, line: 128)
!673 = !DISubprogram(name: "putc", scope: !582, file: !582, line: 522, type: !624, flags: DIFlagPrototyped, spFlags: 0)
!674 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !675, file: !579, line: 129)
!675 = !DISubprogram(name: "putchar", scope: !582, file: !582, line: 528, type: !363, flags: DIFlagPrototyped, spFlags: 0)
!676 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !677, file: !579, line: 130)
!677 = !DISubprogram(name: "puts", scope: !582, file: !582, line: 632, type: !431, flags: DIFlagPrototyped, spFlags: 0)
!678 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !679, file: !579, line: 131)
!679 = !DISubprogram(name: "remove", scope: !582, file: !582, line: 146, type: !431, flags: DIFlagPrototyped, spFlags: 0)
!680 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !681, file: !579, line: 132)
!681 = !DISubprogram(name: "rename", scope: !582, file: !582, line: 148, type: !682, flags: DIFlagPrototyped, spFlags: 0)
!682 = !DISubroutineType(types: !683)
!683 = !{!14, !123, !123}
!684 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !685, file: !579, line: 133)
!685 = !DISubprogram(name: "rewind", scope: !582, file: !582, line: 694, type: !588, flags: DIFlagPrototyped, spFlags: 0)
!686 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !687, file: !579, line: 134)
!687 = !DISubprogram(name: "scanf", linkageName: "__isoc99_scanf", scope: !582, file: !582, line: 410, type: !670, flags: DIFlagPrototyped, spFlags: 0)
!688 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !689, file: !579, line: 135)
!689 = !DISubprogram(name: "setbuf", scope: !582, file: !582, line: 304, type: !690, flags: DIFlagPrototyped, spFlags: 0)
!690 = !DISubroutineType(types: !691)
!691 = !{null, !607, !193}
!692 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !693, file: !579, line: 136)
!693 = !DISubprogram(name: "setvbuf", scope: !582, file: !582, line: 308, type: !694, flags: DIFlagPrototyped, spFlags: 0)
!694 = !DISubroutineType(types: !695)
!695 = !{!14, !607, !193, !14, !119}
!696 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !697, file: !579, line: 137)
!697 = !DISubprogram(name: "sprintf", scope: !582, file: !582, line: 334, type: !698, flags: DIFlagPrototyped, spFlags: 0)
!698 = !DISubroutineType(types: !699)
!699 = !{!14, !193, !122, null}
!700 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !701, file: !579, line: 138)
!701 = !DISubprogram(name: "sscanf", linkageName: "__isoc99_sscanf", scope: !582, file: !582, line: 412, type: !702, flags: DIFlagPrototyped, spFlags: 0)
!702 = !DISubroutineType(types: !703)
!703 = !{!14, !122, !122, null}
!704 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !705, file: !579, line: 139)
!705 = !DISubprogram(name: "tmpfile", scope: !582, file: !582, line: 173, type: !706, flags: DIFlagPrototyped, spFlags: 0)
!706 = !DISubroutineType(types: !707)
!707 = !{!590}
!708 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !709, file: !579, line: 141)
!709 = !DISubprogram(name: "tmpnam", scope: !582, file: !582, line: 187, type: !710, flags: DIFlagPrototyped, spFlags: 0)
!710 = !DISubroutineType(types: !711)
!711 = !{!194, !194}
!712 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !713, file: !579, line: 143)
!713 = !DISubprogram(name: "ungetc", scope: !582, file: !582, line: 639, type: !624, flags: DIFlagPrototyped, spFlags: 0)
!714 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !715, file: !579, line: 144)
!715 = !DISubprogram(name: "vfprintf", scope: !582, file: !582, line: 341, type: !716, flags: DIFlagPrototyped, spFlags: 0)
!716 = !DISubroutineType(types: !717)
!717 = !{!14, !607, !122, !164}
!718 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !719, file: !579, line: 145)
!719 = !DISubprogram(name: "vprintf", scope: !582, file: !582, line: 347, type: !720, flags: DIFlagPrototyped, spFlags: 0)
!720 = !DISubroutineType(types: !721)
!721 = !{!14, !122, !164}
!722 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !723, file: !579, line: 146)
!723 = !DISubprogram(name: "vsprintf", scope: !582, file: !582, line: 349, type: !724, flags: DIFlagPrototyped, spFlags: 0)
!724 = !DISubroutineType(types: !725)
!725 = !{!14, !193, !122, !164}
!726 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !309, entity: !727, file: !579, line: 175)
!727 = !DISubprogram(name: "snprintf", scope: !582, file: !582, line: 354, type: !728, flags: DIFlagPrototyped, spFlags: 0)
!728 = !DISubroutineType(types: !729)
!729 = !{!14, !193, !119, !122, null}
!730 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !309, entity: !731, file: !579, line: 176)
!731 = !DISubprogram(name: "vfscanf", linkageName: "__isoc99_vfscanf", scope: !582, file: !582, line: 451, type: !716, flags: DIFlagPrototyped, spFlags: 0)
!732 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !309, entity: !733, file: !579, line: 177)
!733 = !DISubprogram(name: "vscanf", linkageName: "__isoc99_vscanf", scope: !582, file: !582, line: 456, type: !720, flags: DIFlagPrototyped, spFlags: 0)
!734 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !309, entity: !735, file: !579, line: 178)
!735 = !DISubprogram(name: "vsnprintf", scope: !582, file: !582, line: 358, type: !736, flags: DIFlagPrototyped, spFlags: 0)
!736 = !DISubroutineType(types: !737)
!737 = !{!14, !193, !119, !122, !164}
!738 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !309, entity: !739, file: !579, line: 179)
!739 = !DISubprogram(name: "vsscanf", linkageName: "__isoc99_vsscanf", scope: !582, file: !582, line: 459, type: !740, flags: DIFlagPrototyped, spFlags: 0)
!740 = !DISubroutineType(types: !741)
!741 = !{!14, !122, !122, !164}
!742 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !727, file: !579, line: 185)
!743 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !731, file: !579, line: 186)
!744 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !733, file: !579, line: 187)
!745 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !735, file: !579, line: 188)
!746 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !739, file: !579, line: 189)
!747 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !748, file: !754, line: 58)
!748 = !DIDerivedType(tag: DW_TAG_typedef, name: "max_align_t", file: !749, line: 24, baseType: !750)
!749 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/__stddef_max_align_t.h", directory: "/home/cs22mtech12008", checksumkind: CSK_MD5, checksum: "48e8e2456f77e6cda35d245130fa7259")
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !749, line: 19, size: 256, flags: DIFlagTypePassByValue, elements: !751, identifier: "_ZTS11max_align_t")
!751 = !{!752, !753}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "__clang_max_align_nonce1", scope: !750, file: !749, line: 20, baseType: !318, size: 64, align: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "__clang_max_align_nonce2", scope: !750, file: !749, line: 22, baseType: !313, size: 128, align: 128, offset: 128)
!754 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cstddef", directory: "")
!755 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !756, file: !762, line: 82)
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctrans_t", file: !757, line: 48, baseType: !758)
!757 = !DIFile(filename: "/usr/include/wctype.h", directory: "", checksumkind: CSK_MD5, checksum: "e83097fbf57cc71ea472db59df3ba75d")
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !760)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !761, line: 41, baseType: !14)
!761 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!762 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cwctype", directory: "")
!763 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !764, file: !762, line: 83)
!764 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctype_t", file: !765, line: 38, baseType: !121)
!765 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "3598b9d23ef5d76319026b46e316b55f")
!766 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !65, file: !762, line: 84)
!767 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !768, file: !762, line: 86)
!768 = !DISubprogram(name: "iswalnum", scope: !765, file: !765, line: 95, type: !272, flags: DIFlagPrototyped, spFlags: 0)
!769 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !770, file: !762, line: 87)
!770 = !DISubprogram(name: "iswalpha", scope: !765, file: !765, line: 101, type: !272, flags: DIFlagPrototyped, spFlags: 0)
!771 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !772, file: !762, line: 89)
!772 = !DISubprogram(name: "iswblank", scope: !765, file: !765, line: 146, type: !272, flags: DIFlagPrototyped, spFlags: 0)
!773 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !774, file: !762, line: 91)
!774 = !DISubprogram(name: "iswcntrl", scope: !765, file: !765, line: 104, type: !272, flags: DIFlagPrototyped, spFlags: 0)
!775 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !776, file: !762, line: 92)
!776 = !DISubprogram(name: "iswctype", scope: !765, file: !765, line: 159, type: !777, flags: DIFlagPrototyped, spFlags: 0)
!777 = !DISubroutineType(types: !778)
!778 = !{!14, !65, !764}
!779 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !780, file: !762, line: 93)
!780 = !DISubprogram(name: "iswdigit", scope: !765, file: !765, line: 108, type: !272, flags: DIFlagPrototyped, spFlags: 0)
!781 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !782, file: !762, line: 94)
!782 = !DISubprogram(name: "iswgraph", scope: !765, file: !765, line: 112, type: !272, flags: DIFlagPrototyped, spFlags: 0)
!783 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !784, file: !762, line: 95)
!784 = !DISubprogram(name: "iswlower", scope: !765, file: !765, line: 117, type: !272, flags: DIFlagPrototyped, spFlags: 0)
!785 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !786, file: !762, line: 96)
!786 = !DISubprogram(name: "iswprint", scope: !765, file: !765, line: 120, type: !272, flags: DIFlagPrototyped, spFlags: 0)
!787 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !788, file: !762, line: 97)
!788 = !DISubprogram(name: "iswpunct", scope: !765, file: !765, line: 125, type: !272, flags: DIFlagPrototyped, spFlags: 0)
!789 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !790, file: !762, line: 98)
!790 = !DISubprogram(name: "iswspace", scope: !765, file: !765, line: 130, type: !272, flags: DIFlagPrototyped, spFlags: 0)
!791 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !792, file: !762, line: 99)
!792 = !DISubprogram(name: "iswupper", scope: !765, file: !765, line: 135, type: !272, flags: DIFlagPrototyped, spFlags: 0)
!793 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !794, file: !762, line: 100)
!794 = !DISubprogram(name: "iswxdigit", scope: !765, file: !765, line: 140, type: !272, flags: DIFlagPrototyped, spFlags: 0)
!795 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !796, file: !762, line: 101)
!796 = !DISubprogram(name: "towctrans", scope: !757, file: !757, line: 55, type: !797, flags: DIFlagPrototyped, spFlags: 0)
!797 = !DISubroutineType(types: !798)
!798 = !{!65, !65, !756}
!799 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !800, file: !762, line: 102)
!800 = !DISubprogram(name: "towlower", scope: !765, file: !765, line: 166, type: !801, flags: DIFlagPrototyped, spFlags: 0)
!801 = !DISubroutineType(types: !802)
!802 = !{!65, !65}
!803 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !804, file: !762, line: 103)
!804 = !DISubprogram(name: "towupper", scope: !765, file: !765, line: 169, type: !801, flags: DIFlagPrototyped, spFlags: 0)
!805 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !806, file: !762, line: 104)
!806 = !DISubprogram(name: "wctrans", scope: !757, file: !757, line: 52, type: !807, flags: DIFlagPrototyped, spFlags: 0)
!807 = !DISubroutineType(types: !808)
!808 = !{!756, !123}
!809 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !810, file: !762, line: 105)
!810 = !DISubprogram(name: "wctype", scope: !765, file: !765, line: 155, type: !811, flags: DIFlagPrototyped, spFlags: 0)
!811 = !DISubroutineType(types: !812)
!812 = !{!764, !123}
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !814, line: 27, baseType: !121)
!814 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "2d764266ce95ab26d4a4767c2ec78176")
!815 = !{i32 7, !"Dwarf Version", i32 5}
!816 = !{i32 2, !"Debug Info Version", i32 3}
!817 = !{i32 1, !"wchar_size", i32 4}
!818 = !{i32 8, !"PIC Level", i32 2}
!819 = !{i32 7, !"PIE Level", i32 2}
!820 = !{i32 7, !"uwtable", i32 2}
!821 = !{i32 7, !"frame-pointer", i32 2}
!822 = !{!"clang version 16.0.0"}
!823 = distinct !DISubprogram(name: "runThread", linkageName: "_Z9runThreadPv", scope: !7, file: !7, line: 44, type: !824, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !826)
!824 = !DISubroutineType(types: !825)
!825 = !{!171, !171}
!826 = !{}
!827 = !DILocalVariable(name: "arg", arg: 1, scope: !823, file: !7, line: 44, type: !171)
!828 = !DILocation(line: 44, column: 23, scope: !823)
!829 = !DILocalVariable(name: "basePtr", scope: !823, file: !7, line: 45, type: !5)
!830 = !DILocation(line: 45, column: 8, scope: !823)
!831 = !DILocation(line: 45, column: 34, scope: !823)
!832 = !DILocation(line: 46, column: 5, scope: !823)
!833 = !DILocation(line: 46, column: 14, scope: !823)
!834 = !DILocation(line: 47, column: 5, scope: !823)
!835 = distinct !DISubprogram(name: "createThread", linkageName: "_Z12createThreadv", scope: !7, file: !7, line: 50, type: !412, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !826)
!836 = !DILocalVariable(name: "a12Obj", scope: !835, file: !7, line: 51, type: !837)
!837 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "A12", file: !7, line: 33, size: 384, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !838, vtableHolder: !840, identifier: "_ZTS3A12")
!838 = !{!839, !849, !859, !860}
!839 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !837, baseType: !840, flags: DIFlagPublic, extraData: i32 0)
!840 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "A1", file: !7, line: 17, size: 256, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !841, vtableHolder: !840, identifier: "_ZTS2A1")
!841 = !{!842, !843, !844, !845}
!842 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !840, baseType: !6, offset: 24, flags: DIFlagPublic | DIFlagVirtual, extraData: i32 0)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$A1", scope: !7, file: !7, baseType: !10, size: 64, flags: DIFlagArtificial)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "a1", scope: !840, file: !7, line: 19, baseType: !14, size: 32, offset: 64, flags: DIFlagPublic)
!845 = !DISubprogram(name: "m1", linkageName: "_ZN2A12m1Ev", scope: !840, file: !7, line: 20, type: !846, scopeLine: 20, containingType: !840, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!846 = !DISubroutineType(types: !847)
!847 = !{null, !848}
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!849 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !837, baseType: !850, offset: 128, flags: DIFlagPublic, extraData: i32 0)
!850 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "A2", file: !7, line: 25, size: 256, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !851, vtableHolder: !850, identifier: "_ZTS2A2")
!851 = !{!852, !853, !854, !855}
!852 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !850, baseType: !6, offset: 24, flags: DIFlagPublic | DIFlagVirtual, extraData: i32 0)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$A2", scope: !7, file: !7, baseType: !10, size: 64, flags: DIFlagArtificial)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "a2", scope: !850, file: !7, line: 27, baseType: !14, size: 32, offset: 64, flags: DIFlagPublic)
!855 = !DISubprogram(name: "m2", linkageName: "_ZN2A22m2Ev", scope: !850, file: !7, line: 28, type: !856, scopeLine: 28, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!856 = !DISubroutineType(types: !857)
!857 = !{null, !858}
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "a12", scope: !837, file: !7, line: 35, baseType: !14, size: 32, offset: 224, flags: DIFlagPublic)
!860 = !DISubprogram(name: "m1", linkageName: "_ZN3A122m1Ev", scope: !837, file: !7, line: 36, type: !861, scopeLine: 36, containingType: !837, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!861 = !DISubroutineType(types: !862)
!862 = !{null, !863}
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!864 = !DILocation(line: 51, column: 9, scope: !835)
!865 = !DILocalVariable(name: "basePtr", scope: !835, file: !7, line: 52, type: !866)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!867 = !DILocation(line: 52, column: 10, scope: !835)
!868 = !DILocation(line: 53, column: 45, scope: !835)
!869 = !DILocation(line: 53, column: 5, scope: !835)
!870 = !DILocation(line: 54, column: 1, scope: !835)
!871 = distinct !DISubprogram(name: "A12", linkageName: "_ZN3A12C1Ev", scope: !837, file: !7, line: 33, type: !861, scopeLine: 33, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !872, retainedNodes: !826)
!872 = !DISubprogram(name: "A12", scope: !837, type: !861, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!873 = !DILocalVariable(name: "this", arg: 1, scope: !871, type: !866, flags: DIFlagArtificial | DIFlagObjectPointer)
!874 = !DILocation(line: 0, scope: !871)
!875 = !DILocation(line: 33, column: 11, scope: !871)
!876 = !DILocation(line: 35, column: 9, scope: !871)
!877 = distinct !DISubprogram(name: "main", scope: !7, file: !7, line: 56, type: !12, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !826)
!878 = !DILocation(line: 57, column: 5, scope: !877)
!879 = !DILocation(line: 58, column: 18, scope: !877)
!880 = !DILocation(line: 58, column: 5, scope: !877)
!881 = !DILocation(line: 59, column: 5, scope: !877)
!882 = distinct !DISubprogram(name: "A", linkageName: "_ZN1AC2Ev", scope: !6, file: !7, line: 5, type: !17, scopeLine: 5, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !883, retainedNodes: !826)
!883 = !DISubprogram(name: "A", scope: !6, type: !17, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!884 = !DILocalVariable(name: "this", arg: 1, scope: !882, type: !5, flags: DIFlagArtificial | DIFlagObjectPointer)
!885 = !DILocation(line: 0, scope: !882)
!886 = !DILocation(line: 5, column: 7, scope: !882)
!887 = !DILocation(line: 7, column: 9, scope: !882)
!888 = distinct !DISubprogram(name: "A1", linkageName: "_ZN2A1C2Ev", scope: !840, file: !7, line: 17, type: !846, scopeLine: 17, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !889, retainedNodes: !826)
!889 = !DISubprogram(name: "A1", scope: !840, type: !846, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!890 = !DILocalVariable(name: "this", arg: 1, scope: !888, type: !891, flags: DIFlagArtificial | DIFlagObjectPointer)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!892 = !DILocation(line: 0, scope: !888)
!893 = !DILocalVariable(name: "vtt", arg: 2, scope: !888, type: !894, flags: DIFlagArtificial)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!895 = !DILocation(line: 17, column: 11, scope: !888)
!896 = !DILocation(line: 19, column: 9, scope: !888)
!897 = distinct !DISubprogram(name: "A2", linkageName: "_ZN2A2C2Ev", scope: !850, file: !7, line: 25, type: !856, scopeLine: 25, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !898, retainedNodes: !826)
!898 = !DISubprogram(name: "A2", scope: !850, type: !856, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!899 = !DILocalVariable(name: "this", arg: 1, scope: !897, type: !900, flags: DIFlagArtificial | DIFlagObjectPointer)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!901 = !DILocation(line: 0, scope: !897)
!902 = !DILocalVariable(name: "vtt", arg: 2, scope: !897, type: !894, flags: DIFlagArtificial)
!903 = !DILocation(line: 25, column: 11, scope: !897)
!904 = !DILocation(line: 27, column: 9, scope: !897)
!905 = distinct !DISubprogram(name: "m1", linkageName: "_ZN2A12m1Ev", scope: !840, file: !7, line: 20, type: !846, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !845, retainedNodes: !826)
!906 = !DILocalVariable(name: "this", arg: 1, scope: !905, type: !891, flags: DIFlagArtificial | DIFlagObjectPointer)
!907 = !DILocation(line: 0, scope: !905)
!908 = !DILocation(line: 21, column: 23, scope: !905)
!909 = !DILocation(line: 21, column: 42, scope: !905)
!910 = !DILocation(line: 21, column: 40, scope: !905)
!911 = !DILocation(line: 21, column: 44, scope: !905)
!912 = !DILocation(line: 22, column: 9, scope: !905)
!913 = distinct !DISubprogram(linkageName: "_ZTv0_n24_N2A12m1Ev", scope: !7, file: !7, line: 20, type: !914, flags: DIFlagArtificial | DIFlagThunk, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !826)
!914 = !DISubroutineType(types: !826)
!915 = !DILocation(line: 0, scope: !913)
!916 = distinct !DISubprogram(name: "m1", linkageName: "_ZN1A2m1Ev", scope: !6, file: !7, line: 8, type: !17, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !16, retainedNodes: !826)
!917 = !DILocalVariable(name: "this", arg: 1, scope: !916, type: !5, flags: DIFlagArtificial | DIFlagObjectPointer)
!918 = !DILocation(line: 0, scope: !916)
!919 = !DILocation(line: 9, column: 23, scope: !916)
!920 = !DILocation(line: 9, column: 44, scope: !916)
!921 = !DILocation(line: 9, column: 42, scope: !916)
!922 = !DILocation(line: 9, column: 45, scope: !916)
!923 = !DILocation(line: 10, column: 9, scope: !916)
!924 = distinct !DISubprogram(name: "m1", linkageName: "_ZN3A122m1Ev", scope: !837, file: !7, line: 36, type: !861, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !860, retainedNodes: !826)
!925 = !DILocalVariable(name: "this", arg: 1, scope: !924, type: !866, flags: DIFlagArtificial | DIFlagObjectPointer)
!926 = !DILocation(line: 0, scope: !924)
!927 = !DILocation(line: 37, column: 23, scope: !924)
!928 = !DILocation(line: 37, column: 43, scope: !924)
!929 = !DILocation(line: 37, column: 41, scope: !924)
!930 = !DILocation(line: 37, column: 46, scope: !924)
!931 = !DILocation(line: 38, column: 9, scope: !924)
!932 = distinct !DISubprogram(linkageName: "_ZTv0_n24_N3A122m1Ev", scope: !7, file: !7, line: 36, type: !914, flags: DIFlagArtificial | DIFlagThunk, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !826)
!933 = !DILocation(line: 0, scope: !932)
