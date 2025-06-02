; ModuleID = '/home/cs22mtech12008/Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Inheritance_with_data/diamond_problem_2_bugs.cpp'
source_filename = "/home/cs22mtech12008/Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Inheritance_with_data/diamond_problem_2_bugs.cpp"
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
@t2 = dso_local global i64 0, align 8, !dbg !22
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
@.str = private unnamed_addr constant [13 x i8] c"A1 class m1:\00", align 1, !dbg !27
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !34
@.str.2 = private unnamed_addr constant [15 x i8] c"Base class m1:\00", align 1, !dbg !39
@.str.3 = private unnamed_addr constant [14 x i8] c"A12 class m1:\00", align 1, !dbg !44

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef ptr @_Z9runThreadPv(ptr noundef %0) #0 !dbg !825 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !829, metadata !DIExpression()), !dbg !830
  call void @llvm.dbg.declare(metadata ptr %3, metadata !831, metadata !DIExpression()), !dbg !832
  %4 = load ptr, ptr %2, align 8, !dbg !833
  store ptr %4, ptr %3, align 8, !dbg !832
  %5 = load ptr, ptr %3, align 8, !dbg !834
  %6 = load ptr, ptr %5, align 8, !dbg !835
  %7 = getelementptr inbounds ptr, ptr %6, i64 0, !dbg !835
  %8 = load ptr, ptr %7, align 8, !dbg !835
  call void %8(ptr noundef nonnull align 8 dereferenceable(12) %5), !dbg !835
  ret ptr null, !dbg !836
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_Z12createThreadv() #2 !dbg !837 {
  %1 = alloca %class.A12, align 8
  %2 = alloca ptr, align 8
  call void @llvm.dbg.declare(metadata ptr %1, metadata !838, metadata !DIExpression()), !dbg !866
  call void @_ZN3A12C1Ev(ptr noundef nonnull align 8 dereferenceable(32) %1) #8, !dbg !866
  call void @llvm.dbg.declare(metadata ptr %2, metadata !867, metadata !DIExpression()), !dbg !869
  store ptr %1, ptr %2, align 8, !dbg !869
  %3 = load ptr, ptr %2, align 8, !dbg !870
  %4 = call i32 @pthread_create(ptr noundef @t1, ptr noundef null, ptr noundef @_Z9runThreadPv, ptr noundef %3) #8, !dbg !871
  %5 = load ptr, ptr %2, align 8, !dbg !872
  %6 = call i32 @pthread_create(ptr noundef @t2, ptr noundef null, ptr noundef @_Z9runThreadPv, ptr noundef %5) #8, !dbg !873
  ret void, !dbg !874
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN3A12C1Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 !dbg !875 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !877, metadata !DIExpression()), !dbg !878
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds i8, ptr %3, i64 32, !dbg !879
  call void @_ZN1AC2Ev(ptr noundef nonnull align 8 dereferenceable(12) %4) #8, !dbg !879
  call void @_ZN2A1C2Ev(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef getelementptr inbounds ([7 x ptr], ptr @_ZTT3A12, i64 0, i64 1)) #8, !dbg !879
  %5 = getelementptr inbounds i8, ptr %3, i64 16, !dbg !879
  call void @_ZN2A2C2Ev(ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef getelementptr inbounds ([7 x ptr], ptr @_ZTT3A12, i64 0, i64 3)) #8, !dbg !879
  store ptr getelementptr inbounds ({ [4 x ptr], [3 x ptr], [4 x ptr] }, ptr @_ZTV3A12, i32 0, inrange i32 0, i32 3), ptr %3, align 8, !dbg !879
  %6 = getelementptr inbounds i8, ptr %3, i64 32, !dbg !879
  store ptr getelementptr inbounds ({ [4 x ptr], [3 x ptr], [4 x ptr] }, ptr @_ZTV3A12, i32 0, inrange i32 2, i32 3), ptr %6, align 8, !dbg !879
  %7 = getelementptr inbounds i8, ptr %3, i64 16, !dbg !879
  store ptr getelementptr inbounds ({ [4 x ptr], [3 x ptr], [4 x ptr] }, ptr @_ZTV3A12, i32 0, inrange i32 1, i32 3), ptr %7, align 8, !dbg !879
  %8 = getelementptr inbounds %class.A12, ptr %3, i32 0, i32 3, !dbg !880
  store i32 40, ptr %8, align 4, !dbg !880
  ret void, !dbg !879
}

; Function Attrs: nounwind
declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main() #5 !dbg !881 {
  %1 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  call void @_Z12createThreadv(), !dbg !882
  %2 = load i64, ptr @t1, align 8, !dbg !883
  %3 = call i32 @pthread_join(i64 noundef %2, ptr noundef null), !dbg !884
  %4 = load i64, ptr @t2, align 8, !dbg !885
  %5 = call i32 @pthread_join(i64 noundef %4, ptr noundef null), !dbg !886
  ret i32 0, !dbg !887
}

declare i32 @pthread_join(i64 noundef, ptr noundef) #6

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN1AC2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #3 comdat align 2 !dbg !888 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !890, metadata !DIExpression()), !dbg !891
  %3 = load ptr, ptr %2, align 8
  store ptr getelementptr inbounds ({ [3 x ptr] }, ptr @_ZTV1A, i32 0, inrange i32 0, i32 2), ptr %3, align 8, !dbg !892
  %4 = getelementptr inbounds %class.A, ptr %3, i32 0, i32 1, !dbg !893
  store i32 10, ptr %4, align 8, !dbg !893
  ret void, !dbg !892
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN2A1C2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 !dbg !894 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !896, metadata !DIExpression()), !dbg !898
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !899, metadata !DIExpression()), !dbg !898
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = load ptr, ptr %6, align 8, !dbg !901
  store ptr %7, ptr %5, align 8, !dbg !901
  %8 = getelementptr inbounds ptr, ptr %6, i64 1, !dbg !901
  %9 = load ptr, ptr %8, align 8, !dbg !901
  %10 = load ptr, ptr %5, align 8, !dbg !901
  %11 = getelementptr i8, ptr %10, i64 -24, !dbg !901
  %12 = load i64, ptr %11, align 8, !dbg !901
  %13 = getelementptr inbounds i8, ptr %5, i64 %12, !dbg !901
  store ptr %9, ptr %13, align 8, !dbg !901
  %14 = getelementptr inbounds %class.A1, ptr %5, i32 0, i32 1, !dbg !902
  store i32 20, ptr %14, align 8, !dbg !902
  ret void, !dbg !901
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN2A2C2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 !dbg !903 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !905, metadata !DIExpression()), !dbg !907
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !908, metadata !DIExpression()), !dbg !907
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = load ptr, ptr %6, align 8, !dbg !909
  store ptr %7, ptr %5, align 8, !dbg !909
  %8 = getelementptr inbounds ptr, ptr %6, i64 1, !dbg !909
  %9 = load ptr, ptr %8, align 8, !dbg !909
  %10 = load ptr, ptr %5, align 8, !dbg !909
  %11 = getelementptr i8, ptr %10, i64 -24, !dbg !909
  %12 = load i64, ptr %11, align 8, !dbg !909
  %13 = getelementptr inbounds i8, ptr %5, i64 %12, !dbg !909
  store ptr %9, ptr %13, align 8, !dbg !909
  %14 = getelementptr inbounds %class.A2, ptr %5, i32 0, i32 1, !dbg !910
  store i32 30, ptr %14, align 8, !dbg !910
  ret void, !dbg !909
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN2A12m1Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #0 comdat align 2 !dbg !911 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !912, metadata !DIExpression()), !dbg !913
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str), !dbg !914
  %5 = getelementptr inbounds %class.A1, ptr %3, i32 0, i32 1, !dbg !915
  %6 = load i32, ptr %5, align 8, !dbg !915
  %7 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %6), !dbg !916
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef @.str.1), !dbg !917
  ret void, !dbg !918
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZTv0_n24_N2A12m1Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 !dbg !919 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8, !dbg !921
  %4 = load ptr, ptr %3, align 8, !dbg !921
  %5 = getelementptr inbounds i8, ptr %4, i64 -24, !dbg !921
  %6 = load i64, ptr %5, align 8, !dbg !921
  %7 = getelementptr inbounds i8, ptr %3, i64 %6, !dbg !921
  tail call void @_ZN2A12m1Ev(ptr noundef nonnull align 8 dereferenceable(12) %7), !dbg !921
  ret void, !dbg !921
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN1A2m1Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #0 comdat align 2 !dbg !922 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !923, metadata !DIExpression()), !dbg !924
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.2), !dbg !925
  %5 = getelementptr inbounds %class.A, ptr %3, i32 0, i32 1, !dbg !926
  %6 = load i32, ptr %5, align 8, !dbg !926
  %7 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %6), !dbg !927
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef @.str.1), !dbg !928
  ret void, !dbg !929
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN3A122m1Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 !dbg !930 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !931, metadata !DIExpression()), !dbg !932
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.3), !dbg !933
  %5 = getelementptr inbounds %class.A12, ptr %3, i32 0, i32 3, !dbg !934
  %6 = load i32, ptr %5, align 4, !dbg !934
  %7 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %6), !dbg !935
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef @.str.1), !dbg !936
  ret void, !dbg !937
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZTv0_n24_N3A122m1Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 !dbg !938 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8, !dbg !939
  %4 = load ptr, ptr %3, align 8, !dbg !939
  %5 = getelementptr inbounds i8, ptr %4, i64 -24, !dbg !939
  %6 = load i64, ptr %5, align 8, !dbg !939
  %7 = getelementptr inbounds i8, ptr %3, i64 %6, !dbg !939
  tail call void @_ZN3A122m1Ev(ptr noundef nonnull align 8 dereferenceable(32) %7), !dbg !939
  ret void, !dbg !939
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
!llvm.module.flags = !{!817, !818, !819, !820, !821, !822, !823}
!llvm.ident = !{!824}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "t1", scope: !2, file: !7, line: 42, type: !24, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !3, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !21, imports: !49, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/cs22mtech12008/Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Inheritance_with_data/diamond_problem_2_bugs.cpp", directory: "/home/cs22mtech12008/UseAfterScope/Scripts", checksumkind: CSK_MD5, checksum: "908d552fd922d00c44770fd5edecabe2")
!4 = !{!5}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "A", file: !7, line: 5, size: 128, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !8, vtableHolder: !6, identifier: "_ZTS1A")
!7 = !DIFile(filename: "Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Inheritance_with_data/diamond_problem_2_bugs.cpp", directory: "/home/cs22mtech12008", checksumkind: CSK_MD5, checksum: "908d552fd922d00c44770fd5edecabe2")
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
!21 = !{!0, !22, !27, !34, !39, !44}
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(name: "t2", scope: !2, file: !7, line: 42, type: !24, isLocal: false, isDefinition: true)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !25, line: 27, baseType: !26)
!25 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "2d764266ce95ab26d4a4767c2ec78176")
!26 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !7, line: 21, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 104, elements: !32)
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!31 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!32 = !{!33}
!33 = !DISubrange(count: 13)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(scope: null, file: !7, line: 21, type: !36, isLocal: true, isDefinition: true)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 16, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: 2)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(scope: null, file: !7, line: 9, type: !41, isLocal: true, isDefinition: true)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 120, elements: !42)
!42 = !{!43}
!43 = !DISubrange(count: 15)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(scope: null, file: !7, line: 37, type: !46, isLocal: true, isDefinition: true)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 112, elements: !47)
!47 = !{!48}
!48 = !DISubrange(count: 14)
!49 = !{!50, !69, !72, !77, !85, !93, !97, !104, !108, !112, !114, !116, !120, !130, !134, !140, !146, !148, !152, !156, !160, !164, !177, !179, !183, !187, !191, !193, !199, !203, !207, !209, !211, !215, !223, !227, !231, !235, !237, !243, !245, !252, !257, !261, !266, !270, !274, !278, !280, !282, !286, !290, !294, !296, !300, !304, !306, !308, !312, !318, !323, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !342, !346, !351, !355, !359, !364, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !400, !404, !408, !414, !418, !422, !427, !429, !433, !437, !441, !451, !453, !457, !461, !465, !469, !473, !477, !481, !485, !489, !493, !497, !499, !501, !505, !509, !515, !519, !523, !525, !529, !533, !539, !541, !545, !549, !553, !557, !561, !565, !569, !570, !571, !572, !574, !575, !576, !577, !578, !579, !580, !584, !590, !595, !599, !601, !603, !605, !607, !614, !618, !622, !626, !630, !634, !639, !643, !645, !649, !655, !659, !664, !666, !668, !672, !676, !678, !680, !682, !684, !688, !690, !692, !696, !700, !704, !708, !712, !716, !718, !722, !726, !730, !734, !736, !738, !742, !746, !747, !748, !749, !750, !751, !759, !767, !770, !771, !773, !775, !777, !779, !783, !785, !787, !789, !791, !793, !795, !797, !799, !803, !807, !809, !813}
!50 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !52, file: !68, line: 64)
!51 = !DINamespace(name: "std", scope: null)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !53, line: 6, baseType: !54)
!53 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !55, line: 21, baseType: !56)
!55 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !55, line: 13, size: 64, flags: DIFlagTypePassByValue, elements: !57, identifier: "_ZTS11__mbstate_t")
!57 = !{!58, !59}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !56, file: !55, line: 15, baseType: !14, size: 32)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !56, file: !55, line: 20, baseType: !60, size: 32, offset: 32)
!60 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !56, file: !55, line: 16, size: 32, flags: DIFlagTypePassByValue, elements: !61, identifier: "_ZTSN11__mbstate_tUt_E")
!61 = !{!62, !64}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !60, file: !55, line: 18, baseType: !63, size: 32)
!63 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !60, file: !55, line: 19, baseType: !65, size: 32)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 32, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 4)
!68 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cwchar", directory: "")
!69 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !70, file: !68, line: 141)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !71, line: 20, baseType: !63)
!71 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!72 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !73, file: !68, line: 143)
!73 = !DISubprogram(name: "btowc", scope: !74, file: !74, line: 284, type: !75, flags: DIFlagPrototyped, spFlags: 0)
!74 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "8900d9ecbbe40d052c41becfbc5b5531")
!75 = !DISubroutineType(types: !76)
!76 = !{!70, !14}
!77 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !78, file: !68, line: 144)
!78 = !DISubprogram(name: "fgetwc", scope: !74, file: !74, line: 726, type: !79, flags: DIFlagPrototyped, spFlags: 0)
!79 = !DISubroutineType(types: !80)
!80 = !{!70, !81}
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !83, line: 5, baseType: !84)
!83 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "72a8fe90981f484acae7c6f3dfc5c2b7")
!84 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !83, line: 4, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS8_IO_FILE")
!85 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !86, file: !68, line: 145)
!86 = !DISubprogram(name: "fgetws", scope: !74, file: !74, line: 755, type: !87, flags: DIFlagPrototyped, spFlags: 0)
!87 = !DISubroutineType(types: !88)
!88 = !{!89, !91, !14, !92}
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!91 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !89)
!92 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !81)
!93 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !94, file: !68, line: 146)
!94 = !DISubprogram(name: "fputwc", scope: !74, file: !74, line: 740, type: !95, flags: DIFlagPrototyped, spFlags: 0)
!95 = !DISubroutineType(types: !96)
!96 = !{!70, !90, !81}
!97 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !98, file: !68, line: 147)
!98 = !DISubprogram(name: "fputws", scope: !74, file: !74, line: 762, type: !99, flags: DIFlagPrototyped, spFlags: 0)
!99 = !DISubroutineType(types: !100)
!100 = !{!14, !101, !92}
!101 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !102)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!104 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !105, file: !68, line: 148)
!105 = !DISubprogram(name: "fwide", scope: !74, file: !74, line: 573, type: !106, flags: DIFlagPrototyped, spFlags: 0)
!106 = !DISubroutineType(types: !107)
!107 = !{!14, !81, !14}
!108 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !109, file: !68, line: 149)
!109 = !DISubprogram(name: "fwprintf", scope: !74, file: !74, line: 580, type: !110, flags: DIFlagPrototyped, spFlags: 0)
!110 = !DISubroutineType(types: !111)
!111 = !{!14, !92, !101, null}
!112 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !113, file: !68, line: 150)
!113 = !DISubprogram(name: "fwscanf", linkageName: "__isoc99_fwscanf", scope: !74, file: !74, line: 640, type: !110, flags: DIFlagPrototyped, spFlags: 0)
!114 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !115, file: !68, line: 151)
!115 = !DISubprogram(name: "getwc", scope: !74, file: !74, line: 727, type: !79, flags: DIFlagPrototyped, spFlags: 0)
!116 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !117, file: !68, line: 152)
!117 = !DISubprogram(name: "getwchar", scope: !74, file: !74, line: 733, type: !118, flags: DIFlagPrototyped, spFlags: 0)
!118 = !DISubroutineType(types: !119)
!119 = !{!70}
!120 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !121, file: !68, line: 153)
!121 = !DISubprogram(name: "mbrlen", scope: !74, file: !74, line: 307, type: !122, flags: DIFlagPrototyped, spFlags: 0)
!122 = !DISubroutineType(types: !123)
!123 = !{!124, !126, !124, !128}
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !125, line: 46, baseType: !26)
!125 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/cs22mtech12008", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!126 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !127)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !129)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!130 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !131, file: !68, line: 154)
!131 = !DISubprogram(name: "mbrtowc", scope: !74, file: !74, line: 296, type: !132, flags: DIFlagPrototyped, spFlags: 0)
!132 = !DISubroutineType(types: !133)
!133 = !{!124, !91, !126, !124, !128}
!134 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !135, file: !68, line: 155)
!135 = !DISubprogram(name: "mbsinit", scope: !74, file: !74, line: 292, type: !136, flags: DIFlagPrototyped, spFlags: 0)
!136 = !DISubroutineType(types: !137)
!137 = !{!14, !138}
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!140 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !141, file: !68, line: 156)
!141 = !DISubprogram(name: "mbsrtowcs", scope: !74, file: !74, line: 337, type: !142, flags: DIFlagPrototyped, spFlags: 0)
!142 = !DISubroutineType(types: !143)
!143 = !{!124, !91, !144, !124, !128}
!144 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !145)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!146 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !147, file: !68, line: 157)
!147 = !DISubprogram(name: "putwc", scope: !74, file: !74, line: 741, type: !95, flags: DIFlagPrototyped, spFlags: 0)
!148 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !149, file: !68, line: 158)
!149 = !DISubprogram(name: "putwchar", scope: !74, file: !74, line: 747, type: !150, flags: DIFlagPrototyped, spFlags: 0)
!150 = !DISubroutineType(types: !151)
!151 = !{!70, !90}
!152 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !153, file: !68, line: 160)
!153 = !DISubprogram(name: "swprintf", scope: !74, file: !74, line: 590, type: !154, flags: DIFlagPrototyped, spFlags: 0)
!154 = !DISubroutineType(types: !155)
!155 = !{!14, !91, !124, !101, null}
!156 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !157, file: !68, line: 162)
!157 = !DISubprogram(name: "swscanf", linkageName: "__isoc99_swscanf", scope: !74, file: !74, line: 647, type: !158, flags: DIFlagPrototyped, spFlags: 0)
!158 = !DISubroutineType(types: !159)
!159 = !{!14, !101, !101, null}
!160 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !161, file: !68, line: 163)
!161 = !DISubprogram(name: "ungetwc", scope: !74, file: !74, line: 770, type: !162, flags: DIFlagPrototyped, spFlags: 0)
!162 = !DISubroutineType(types: !163)
!163 = !{!70, !70, !81}
!164 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !165, file: !68, line: 164)
!165 = !DISubprogram(name: "vfwprintf", scope: !74, file: !74, line: 598, type: !166, flags: DIFlagPrototyped, spFlags: 0)
!166 = !DISubroutineType(types: !167)
!167 = !{!14, !92, !101, !168}
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, flags: DIFlagTypePassByValue, elements: !170, identifier: "_ZTS13__va_list_tag")
!170 = !{!171, !173, !174, !176}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !169, file: !172, baseType: !63, size: 32)
!172 = !DIFile(filename: "Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Inheritance_with_data/diamond_problem_2_bugs.cpp", directory: "/home/cs22mtech12008")
!173 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !169, file: !172, baseType: !63, size: 32, offset: 32)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !169, file: !172, baseType: !175, size: 64, offset: 64)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !169, file: !172, baseType: !175, size: 64, offset: 128)
!177 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !178, file: !68, line: 166)
!178 = !DISubprogram(name: "vfwscanf", linkageName: "__isoc99_vfwscanf", scope: !74, file: !74, line: 693, type: !166, flags: DIFlagPrototyped, spFlags: 0)
!179 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !180, file: !68, line: 169)
!180 = !DISubprogram(name: "vswprintf", scope: !74, file: !74, line: 611, type: !181, flags: DIFlagPrototyped, spFlags: 0)
!181 = !DISubroutineType(types: !182)
!182 = !{!14, !91, !124, !101, !168}
!183 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !184, file: !68, line: 172)
!184 = !DISubprogram(name: "vswscanf", linkageName: "__isoc99_vswscanf", scope: !74, file: !74, line: 700, type: !185, flags: DIFlagPrototyped, spFlags: 0)
!185 = !DISubroutineType(types: !186)
!186 = !{!14, !101, !101, !168}
!187 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !188, file: !68, line: 174)
!188 = !DISubprogram(name: "vwprintf", scope: !74, file: !74, line: 606, type: !189, flags: DIFlagPrototyped, spFlags: 0)
!189 = !DISubroutineType(types: !190)
!190 = !{!14, !101, !168}
!191 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !192, file: !68, line: 176)
!192 = !DISubprogram(name: "vwscanf", linkageName: "__isoc99_vwscanf", scope: !74, file: !74, line: 697, type: !189, flags: DIFlagPrototyped, spFlags: 0)
!193 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !194, file: !68, line: 178)
!194 = !DISubprogram(name: "wcrtomb", scope: !74, file: !74, line: 301, type: !195, flags: DIFlagPrototyped, spFlags: 0)
!195 = !DISubroutineType(types: !196)
!196 = !{!124, !197, !90, !128}
!197 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !198)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!199 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !200, file: !68, line: 179)
!200 = !DISubprogram(name: "wcscat", scope: !74, file: !74, line: 97, type: !201, flags: DIFlagPrototyped, spFlags: 0)
!201 = !DISubroutineType(types: !202)
!202 = !{!89, !91, !101}
!203 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !204, file: !68, line: 180)
!204 = !DISubprogram(name: "wcscmp", scope: !74, file: !74, line: 106, type: !205, flags: DIFlagPrototyped, spFlags: 0)
!205 = !DISubroutineType(types: !206)
!206 = !{!14, !102, !102}
!207 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !208, file: !68, line: 181)
!208 = !DISubprogram(name: "wcscoll", scope: !74, file: !74, line: 131, type: !205, flags: DIFlagPrototyped, spFlags: 0)
!209 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !210, file: !68, line: 182)
!210 = !DISubprogram(name: "wcscpy", scope: !74, file: !74, line: 87, type: !201, flags: DIFlagPrototyped, spFlags: 0)
!211 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !212, file: !68, line: 183)
!212 = !DISubprogram(name: "wcscspn", scope: !74, file: !74, line: 187, type: !213, flags: DIFlagPrototyped, spFlags: 0)
!213 = !DISubroutineType(types: !214)
!214 = !{!124, !102, !102}
!215 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !216, file: !68, line: 184)
!216 = !DISubprogram(name: "wcsftime", scope: !74, file: !74, line: 834, type: !217, flags: DIFlagPrototyped, spFlags: 0)
!217 = !DISubroutineType(types: !218)
!218 = !{!124, !91, !124, !101, !219}
!219 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !220)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !222)
!222 = !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !74, line: 83, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS2tm")
!223 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !224, file: !68, line: 185)
!224 = !DISubprogram(name: "wcslen", scope: !74, file: !74, line: 222, type: !225, flags: DIFlagPrototyped, spFlags: 0)
!225 = !DISubroutineType(types: !226)
!226 = !{!124, !102}
!227 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !228, file: !68, line: 186)
!228 = !DISubprogram(name: "wcsncat", scope: !74, file: !74, line: 101, type: !229, flags: DIFlagPrototyped, spFlags: 0)
!229 = !DISubroutineType(types: !230)
!230 = !{!89, !91, !101, !124}
!231 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !232, file: !68, line: 187)
!232 = !DISubprogram(name: "wcsncmp", scope: !74, file: !74, line: 109, type: !233, flags: DIFlagPrototyped, spFlags: 0)
!233 = !DISubroutineType(types: !234)
!234 = !{!14, !102, !102, !124}
!235 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !236, file: !68, line: 188)
!236 = !DISubprogram(name: "wcsncpy", scope: !74, file: !74, line: 92, type: !229, flags: DIFlagPrototyped, spFlags: 0)
!237 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !238, file: !68, line: 189)
!238 = !DISubprogram(name: "wcsrtombs", scope: !74, file: !74, line: 343, type: !239, flags: DIFlagPrototyped, spFlags: 0)
!239 = !DISubroutineType(types: !240)
!240 = !{!124, !197, !241, !124, !128}
!241 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !242)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!243 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !244, file: !68, line: 190)
!244 = !DISubprogram(name: "wcsspn", scope: !74, file: !74, line: 191, type: !213, flags: DIFlagPrototyped, spFlags: 0)
!245 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !246, file: !68, line: 191)
!246 = !DISubprogram(name: "wcstod", scope: !74, file: !74, line: 377, type: !247, flags: DIFlagPrototyped, spFlags: 0)
!247 = !DISubroutineType(types: !248)
!248 = !{!249, !101, !250}
!249 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!250 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !251)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!252 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !253, file: !68, line: 193)
!253 = !DISubprogram(name: "wcstof", scope: !74, file: !74, line: 382, type: !254, flags: DIFlagPrototyped, spFlags: 0)
!254 = !DISubroutineType(types: !255)
!255 = !{!256, !101, !250}
!256 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!257 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !258, file: !68, line: 195)
!258 = !DISubprogram(name: "wcstok", scope: !74, file: !74, line: 217, type: !259, flags: DIFlagPrototyped, spFlags: 0)
!259 = !DISubroutineType(types: !260)
!260 = !{!89, !91, !101, !250}
!261 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !262, file: !68, line: 196)
!262 = !DISubprogram(name: "wcstol", scope: !74, file: !74, line: 428, type: !263, flags: DIFlagPrototyped, spFlags: 0)
!263 = !DISubroutineType(types: !264)
!264 = !{!265, !101, !250, !14}
!265 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!266 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !267, file: !68, line: 197)
!267 = !DISubprogram(name: "wcstoul", scope: !74, file: !74, line: 433, type: !268, flags: DIFlagPrototyped, spFlags: 0)
!268 = !DISubroutineType(types: !269)
!269 = !{!26, !101, !250, !14}
!270 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !271, file: !68, line: 198)
!271 = !DISubprogram(name: "wcsxfrm", scope: !74, file: !74, line: 135, type: !272, flags: DIFlagPrototyped, spFlags: 0)
!272 = !DISubroutineType(types: !273)
!273 = !{!124, !91, !101, !124}
!274 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !275, file: !68, line: 199)
!275 = !DISubprogram(name: "wctob", scope: !74, file: !74, line: 288, type: !276, flags: DIFlagPrototyped, spFlags: 0)
!276 = !DISubroutineType(types: !277)
!277 = !{!14, !70}
!278 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !279, file: !68, line: 200)
!279 = !DISubprogram(name: "wmemcmp", scope: !74, file: !74, line: 258, type: !233, flags: DIFlagPrototyped, spFlags: 0)
!280 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !281, file: !68, line: 201)
!281 = !DISubprogram(name: "wmemcpy", scope: !74, file: !74, line: 262, type: !229, flags: DIFlagPrototyped, spFlags: 0)
!282 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !283, file: !68, line: 202)
!283 = !DISubprogram(name: "wmemmove", scope: !74, file: !74, line: 267, type: !284, flags: DIFlagPrototyped, spFlags: 0)
!284 = !DISubroutineType(types: !285)
!285 = !{!89, !89, !102, !124}
!286 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !287, file: !68, line: 203)
!287 = !DISubprogram(name: "wmemset", scope: !74, file: !74, line: 271, type: !288, flags: DIFlagPrototyped, spFlags: 0)
!288 = !DISubroutineType(types: !289)
!289 = !{!89, !89, !90, !124}
!290 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !291, file: !68, line: 204)
!291 = !DISubprogram(name: "wprintf", scope: !74, file: !74, line: 587, type: !292, flags: DIFlagPrototyped, spFlags: 0)
!292 = !DISubroutineType(types: !293)
!293 = !{!14, !101, null}
!294 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !295, file: !68, line: 205)
!295 = !DISubprogram(name: "wscanf", linkageName: "__isoc99_wscanf", scope: !74, file: !74, line: 644, type: !292, flags: DIFlagPrototyped, spFlags: 0)
!296 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !297, file: !68, line: 206)
!297 = !DISubprogram(name: "wcschr", scope: !74, file: !74, line: 164, type: !298, flags: DIFlagPrototyped, spFlags: 0)
!298 = !DISubroutineType(types: !299)
!299 = !{!89, !102, !90}
!300 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !301, file: !68, line: 207)
!301 = !DISubprogram(name: "wcspbrk", scope: !74, file: !74, line: 201, type: !302, flags: DIFlagPrototyped, spFlags: 0)
!302 = !DISubroutineType(types: !303)
!303 = !{!89, !102, !102}
!304 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !305, file: !68, line: 208)
!305 = !DISubprogram(name: "wcsrchr", scope: !74, file: !74, line: 174, type: !298, flags: DIFlagPrototyped, spFlags: 0)
!306 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !307, file: !68, line: 209)
!307 = !DISubprogram(name: "wcsstr", scope: !74, file: !74, line: 212, type: !302, flags: DIFlagPrototyped, spFlags: 0)
!308 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !309, file: !68, line: 210)
!309 = !DISubprogram(name: "wmemchr", scope: !74, file: !74, line: 253, type: !310, flags: DIFlagPrototyped, spFlags: 0)
!310 = !DISubroutineType(types: !311)
!311 = !{!89, !102, !90, !124}
!312 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !313, entity: !314, file: !68, line: 251)
!313 = !DINamespace(name: "__gnu_cxx", scope: null)
!314 = !DISubprogram(name: "wcstold", scope: !74, file: !74, line: 384, type: !315, flags: DIFlagPrototyped, spFlags: 0)
!315 = !DISubroutineType(types: !316)
!316 = !{!317, !101, !250}
!317 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!318 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !313, entity: !319, file: !68, line: 260)
!319 = !DISubprogram(name: "wcstoll", scope: !74, file: !74, line: 441, type: !320, flags: DIFlagPrototyped, spFlags: 0)
!320 = !DISubroutineType(types: !321)
!321 = !{!322, !101, !250, !14}
!322 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!323 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !313, entity: !324, file: !68, line: 261)
!324 = !DISubprogram(name: "wcstoull", scope: !74, file: !74, line: 448, type: !325, flags: DIFlagPrototyped, spFlags: 0)
!325 = !DISubroutineType(types: !326)
!326 = !{!327, !101, !250, !14}
!327 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!328 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !314, file: !68, line: 267)
!329 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !319, file: !68, line: 268)
!330 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !324, file: !68, line: 269)
!331 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !253, file: !68, line: 283)
!332 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !178, file: !68, line: 286)
!333 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !184, file: !68, line: 289)
!334 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !192, file: !68, line: 292)
!335 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !314, file: !68, line: 296)
!336 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !319, file: !68, line: 297)
!337 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !324, file: !68, line: 298)
!338 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !339, file: !340, line: 66)
!339 = !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !341, file: !340, line: 97, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!340 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/exception_ptr.h", directory: "", checksumkind: CSK_MD5, checksum: "314ad14748ccb9ff85c65d17ebb0828b")
!341 = !DINamespace(name: "__exception_ptr", scope: !51)
!342 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !341, entity: !343, file: !340, line: 85)
!343 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !51, file: !340, line: 81, type: !344, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!344 = !DISubroutineType(types: !345)
!345 = !{null, !339}
!346 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !347, file: !340, line: 243)
!347 = !DISubprogram(name: "swap", linkageName: "_ZNSt15__exception_ptr4swapERNS_13exception_ptrES1_", scope: !341, file: !340, line: 230, type: !348, flags: DIFlagPrototyped, spFlags: 0)
!348 = !DISubroutineType(types: !349)
!349 = !{null, !350, !350}
!350 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !339, size: 64)
!351 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !352, file: !354, line: 53)
!352 = !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !353, line: 51, size: 768, flags: DIFlagFwdDecl, identifier: "_ZTS5lconv")
!353 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "0cf373fc44eed8073800bdb9da87b72f")
!354 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/clocale", directory: "")
!355 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !356, file: !354, line: 54)
!356 = !DISubprogram(name: "setlocale", scope: !353, file: !353, line: 122, type: !357, flags: DIFlagPrototyped, spFlags: 0)
!357 = !DISubroutineType(types: !358)
!358 = !{!198, !14, !127}
!359 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !360, file: !354, line: 55)
!360 = !DISubprogram(name: "localeconv", scope: !353, file: !353, line: 125, type: !361, flags: DIFlagPrototyped, spFlags: 0)
!361 = !DISubroutineType(types: !362)
!362 = !{!363}
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!364 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !365, file: !369, line: 64)
!365 = !DISubprogram(name: "isalnum", scope: !366, file: !366, line: 108, type: !367, flags: DIFlagPrototyped, spFlags: 0)
!366 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "36575f934ef4fe7e9d50a3cb17bd5c66")
!367 = !DISubroutineType(types: !368)
!368 = !{!14, !14}
!369 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cctype", directory: "")
!370 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !371, file: !369, line: 65)
!371 = !DISubprogram(name: "isalpha", scope: !366, file: !366, line: 109, type: !367, flags: DIFlagPrototyped, spFlags: 0)
!372 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !373, file: !369, line: 66)
!373 = !DISubprogram(name: "iscntrl", scope: !366, file: !366, line: 110, type: !367, flags: DIFlagPrototyped, spFlags: 0)
!374 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !375, file: !369, line: 67)
!375 = !DISubprogram(name: "isdigit", scope: !366, file: !366, line: 111, type: !367, flags: DIFlagPrototyped, spFlags: 0)
!376 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !377, file: !369, line: 68)
!377 = !DISubprogram(name: "isgraph", scope: !366, file: !366, line: 113, type: !367, flags: DIFlagPrototyped, spFlags: 0)
!378 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !379, file: !369, line: 69)
!379 = !DISubprogram(name: "islower", scope: !366, file: !366, line: 112, type: !367, flags: DIFlagPrototyped, spFlags: 0)
!380 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !381, file: !369, line: 70)
!381 = !DISubprogram(name: "isprint", scope: !366, file: !366, line: 114, type: !367, flags: DIFlagPrototyped, spFlags: 0)
!382 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !383, file: !369, line: 71)
!383 = !DISubprogram(name: "ispunct", scope: !366, file: !366, line: 115, type: !367, flags: DIFlagPrototyped, spFlags: 0)
!384 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !385, file: !369, line: 72)
!385 = !DISubprogram(name: "isspace", scope: !366, file: !366, line: 116, type: !367, flags: DIFlagPrototyped, spFlags: 0)
!386 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !387, file: !369, line: 73)
!387 = !DISubprogram(name: "isupper", scope: !366, file: !366, line: 117, type: !367, flags: DIFlagPrototyped, spFlags: 0)
!388 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !389, file: !369, line: 74)
!389 = !DISubprogram(name: "isxdigit", scope: !366, file: !366, line: 118, type: !367, flags: DIFlagPrototyped, spFlags: 0)
!390 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !391, file: !369, line: 75)
!391 = !DISubprogram(name: "tolower", scope: !366, file: !366, line: 122, type: !367, flags: DIFlagPrototyped, spFlags: 0)
!392 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !393, file: !369, line: 76)
!393 = !DISubprogram(name: "toupper", scope: !366, file: !366, line: 125, type: !367, flags: DIFlagPrototyped, spFlags: 0)
!394 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !395, file: !369, line: 87)
!395 = !DISubprogram(name: "isblank", scope: !366, file: !366, line: 130, type: !367, flags: DIFlagPrototyped, spFlags: 0)
!396 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !397, entity: !398, file: !399, line: 58)
!397 = !DINamespace(name: "__gnu_debug", scope: null)
!398 = !DINamespace(name: "__debug", scope: !51)
!399 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/debug/debug.h", directory: "", checksumkind: CSK_MD5, checksum: "752210a319f5f5d356cc29cd1ce3cdc7")
!400 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !401, file: !403, line: 52)
!401 = !DISubprogram(name: "abs", scope: !402, file: !402, line: 840, type: !367, flags: DIFlagPrototyped, spFlags: 0)
!402 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!403 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/std_abs.h", directory: "")
!404 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !405, file: !407, line: 131)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !402, line: 62, baseType: !406)
!406 = !DICompositeType(tag: DW_TAG_structure_type, file: !402, line: 58, size: 64, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!407 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cstdlib", directory: "")
!408 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !409, file: !407, line: 132)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !402, line: 70, baseType: !410)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !402, line: 66, size: 128, flags: DIFlagTypePassByValue, elements: !411, identifier: "_ZTS6ldiv_t")
!411 = !{!412, !413}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !410, file: !402, line: 68, baseType: !265, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !410, file: !402, line: 69, baseType: !265, size: 64, offset: 64)
!414 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !415, file: !407, line: 134)
!415 = !DISubprogram(name: "abort", scope: !402, file: !402, line: 591, type: !416, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!416 = !DISubroutineType(types: !417)
!417 = !{null}
!418 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !419, file: !407, line: 136)
!419 = !DISubprogram(name: "aligned_alloc", scope: !402, file: !402, line: 586, type: !420, flags: DIFlagPrototyped, spFlags: 0)
!420 = !DISubroutineType(types: !421)
!421 = !{!175, !124, !124}
!422 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !423, file: !407, line: 138)
!423 = !DISubprogram(name: "atexit", scope: !402, file: !402, line: 595, type: !424, flags: DIFlagPrototyped, spFlags: 0)
!424 = !DISubroutineType(types: !425)
!425 = !{!14, !426}
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!427 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !428, file: !407, line: 141)
!428 = !DISubprogram(name: "at_quick_exit", scope: !402, file: !402, line: 600, type: !424, flags: DIFlagPrototyped, spFlags: 0)
!429 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !430, file: !407, line: 144)
!430 = !DISubprogram(name: "atof", scope: !402, file: !402, line: 101, type: !431, flags: DIFlagPrototyped, spFlags: 0)
!431 = !DISubroutineType(types: !432)
!432 = !{!249, !127}
!433 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !434, file: !407, line: 145)
!434 = !DISubprogram(name: "atoi", scope: !402, file: !402, line: 104, type: !435, flags: DIFlagPrototyped, spFlags: 0)
!435 = !DISubroutineType(types: !436)
!436 = !{!14, !127}
!437 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !438, file: !407, line: 146)
!438 = !DISubprogram(name: "atol", scope: !402, file: !402, line: 107, type: !439, flags: DIFlagPrototyped, spFlags: 0)
!439 = !DISubroutineType(types: !440)
!440 = !{!265, !127}
!441 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !442, file: !407, line: 147)
!442 = !DISubprogram(name: "bsearch", scope: !402, file: !402, line: 820, type: !443, flags: DIFlagPrototyped, spFlags: 0)
!443 = !DISubroutineType(types: !444)
!444 = !{!175, !445, !445, !124, !124, !447}
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !402, line: 808, baseType: !448)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DISubroutineType(types: !450)
!450 = !{!14, !445, !445}
!451 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !452, file: !407, line: 148)
!452 = !DISubprogram(name: "calloc", scope: !402, file: !402, line: 542, type: !420, flags: DIFlagPrototyped, spFlags: 0)
!453 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !454, file: !407, line: 149)
!454 = !DISubprogram(name: "div", scope: !402, file: !402, line: 852, type: !455, flags: DIFlagPrototyped, spFlags: 0)
!455 = !DISubroutineType(types: !456)
!456 = !{!405, !14, !14}
!457 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !458, file: !407, line: 150)
!458 = !DISubprogram(name: "exit", scope: !402, file: !402, line: 617, type: !459, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!459 = !DISubroutineType(types: !460)
!460 = !{null, !14}
!461 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !462, file: !407, line: 151)
!462 = !DISubprogram(name: "free", scope: !402, file: !402, line: 565, type: !463, flags: DIFlagPrototyped, spFlags: 0)
!463 = !DISubroutineType(types: !464)
!464 = !{null, !175}
!465 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !466, file: !407, line: 152)
!466 = !DISubprogram(name: "getenv", scope: !402, file: !402, line: 634, type: !467, flags: DIFlagPrototyped, spFlags: 0)
!467 = !DISubroutineType(types: !468)
!468 = !{!198, !127}
!469 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !470, file: !407, line: 153)
!470 = !DISubprogram(name: "labs", scope: !402, file: !402, line: 841, type: !471, flags: DIFlagPrototyped, spFlags: 0)
!471 = !DISubroutineType(types: !472)
!472 = !{!265, !265}
!473 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !474, file: !407, line: 154)
!474 = !DISubprogram(name: "ldiv", scope: !402, file: !402, line: 854, type: !475, flags: DIFlagPrototyped, spFlags: 0)
!475 = !DISubroutineType(types: !476)
!476 = !{!409, !265, !265}
!477 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !478, file: !407, line: 155)
!478 = !DISubprogram(name: "malloc", scope: !402, file: !402, line: 539, type: !479, flags: DIFlagPrototyped, spFlags: 0)
!479 = !DISubroutineType(types: !480)
!480 = !{!175, !124}
!481 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !482, file: !407, line: 157)
!482 = !DISubprogram(name: "mblen", scope: !402, file: !402, line: 922, type: !483, flags: DIFlagPrototyped, spFlags: 0)
!483 = !DISubroutineType(types: !484)
!484 = !{!14, !127, !124}
!485 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !486, file: !407, line: 158)
!486 = !DISubprogram(name: "mbstowcs", scope: !402, file: !402, line: 933, type: !487, flags: DIFlagPrototyped, spFlags: 0)
!487 = !DISubroutineType(types: !488)
!488 = !{!124, !91, !126, !124}
!489 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !490, file: !407, line: 159)
!490 = !DISubprogram(name: "mbtowc", scope: !402, file: !402, line: 925, type: !491, flags: DIFlagPrototyped, spFlags: 0)
!491 = !DISubroutineType(types: !492)
!492 = !{!14, !91, !126, !124}
!493 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !494, file: !407, line: 161)
!494 = !DISubprogram(name: "qsort", scope: !402, file: !402, line: 830, type: !495, flags: DIFlagPrototyped, spFlags: 0)
!495 = !DISubroutineType(types: !496)
!496 = !{null, !175, !124, !124, !447}
!497 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !498, file: !407, line: 164)
!498 = !DISubprogram(name: "quick_exit", scope: !402, file: !402, line: 623, type: !459, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!499 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !500, file: !407, line: 167)
!500 = !DISubprogram(name: "rand", scope: !402, file: !402, line: 453, type: !12, flags: DIFlagPrototyped, spFlags: 0)
!501 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !502, file: !407, line: 168)
!502 = !DISubprogram(name: "realloc", scope: !402, file: !402, line: 550, type: !503, flags: DIFlagPrototyped, spFlags: 0)
!503 = !DISubroutineType(types: !504)
!504 = !{!175, !175, !124}
!505 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !506, file: !407, line: 169)
!506 = !DISubprogram(name: "srand", scope: !402, file: !402, line: 455, type: !507, flags: DIFlagPrototyped, spFlags: 0)
!507 = !DISubroutineType(types: !508)
!508 = !{null, !63}
!509 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !510, file: !407, line: 170)
!510 = !DISubprogram(name: "strtod", scope: !402, file: !402, line: 117, type: !511, flags: DIFlagPrototyped, spFlags: 0)
!511 = !DISubroutineType(types: !512)
!512 = !{!249, !126, !513}
!513 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !514)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!515 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !516, file: !407, line: 171)
!516 = !DISubprogram(name: "strtol", scope: !402, file: !402, line: 176, type: !517, flags: DIFlagPrototyped, spFlags: 0)
!517 = !DISubroutineType(types: !518)
!518 = !{!265, !126, !513, !14}
!519 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !520, file: !407, line: 172)
!520 = !DISubprogram(name: "strtoul", scope: !402, file: !402, line: 180, type: !521, flags: DIFlagPrototyped, spFlags: 0)
!521 = !DISubroutineType(types: !522)
!522 = !{!26, !126, !513, !14}
!523 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !524, file: !407, line: 173)
!524 = !DISubprogram(name: "system", scope: !402, file: !402, line: 784, type: !435, flags: DIFlagPrototyped, spFlags: 0)
!525 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !526, file: !407, line: 175)
!526 = !DISubprogram(name: "wcstombs", scope: !402, file: !402, line: 936, type: !527, flags: DIFlagPrototyped, spFlags: 0)
!527 = !DISubroutineType(types: !528)
!528 = !{!124, !197, !101, !124}
!529 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !530, file: !407, line: 176)
!530 = !DISubprogram(name: "wctomb", scope: !402, file: !402, line: 929, type: !531, flags: DIFlagPrototyped, spFlags: 0)
!531 = !DISubroutineType(types: !532)
!532 = !{!14, !198, !90}
!533 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !313, entity: !534, file: !407, line: 204)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !402, line: 80, baseType: !535)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !402, line: 76, size: 128, flags: DIFlagTypePassByValue, elements: !536, identifier: "_ZTS7lldiv_t")
!536 = !{!537, !538}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !535, file: !402, line: 78, baseType: !322, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !535, file: !402, line: 79, baseType: !322, size: 64, offset: 64)
!539 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !313, entity: !540, file: !407, line: 210)
!540 = !DISubprogram(name: "_Exit", scope: !402, file: !402, line: 629, type: !459, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!541 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !313, entity: !542, file: !407, line: 214)
!542 = !DISubprogram(name: "llabs", scope: !402, file: !402, line: 844, type: !543, flags: DIFlagPrototyped, spFlags: 0)
!543 = !DISubroutineType(types: !544)
!544 = !{!322, !322}
!545 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !313, entity: !546, file: !407, line: 220)
!546 = !DISubprogram(name: "lldiv", scope: !402, file: !402, line: 858, type: !547, flags: DIFlagPrototyped, spFlags: 0)
!547 = !DISubroutineType(types: !548)
!548 = !{!534, !322, !322}
!549 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !313, entity: !550, file: !407, line: 231)
!550 = !DISubprogram(name: "atoll", scope: !402, file: !402, line: 112, type: !551, flags: DIFlagPrototyped, spFlags: 0)
!551 = !DISubroutineType(types: !552)
!552 = !{!322, !127}
!553 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !313, entity: !554, file: !407, line: 232)
!554 = !DISubprogram(name: "strtoll", scope: !402, file: !402, line: 200, type: !555, flags: DIFlagPrototyped, spFlags: 0)
!555 = !DISubroutineType(types: !556)
!556 = !{!322, !126, !513, !14}
!557 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !313, entity: !558, file: !407, line: 233)
!558 = !DISubprogram(name: "strtoull", scope: !402, file: !402, line: 205, type: !559, flags: DIFlagPrototyped, spFlags: 0)
!559 = !DISubroutineType(types: !560)
!560 = !{!327, !126, !513, !14}
!561 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !313, entity: !562, file: !407, line: 235)
!562 = !DISubprogram(name: "strtof", scope: !402, file: !402, line: 123, type: !563, flags: DIFlagPrototyped, spFlags: 0)
!563 = !DISubroutineType(types: !564)
!564 = !{!256, !126, !513}
!565 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !313, entity: !566, file: !407, line: 236)
!566 = !DISubprogram(name: "strtold", scope: !402, file: !402, line: 126, type: !567, flags: DIFlagPrototyped, spFlags: 0)
!567 = !DISubroutineType(types: !568)
!568 = !{!317, !126, !513}
!569 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !534, file: !407, line: 244)
!570 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !540, file: !407, line: 246)
!571 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !542, file: !407, line: 248)
!572 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !573, file: !407, line: 249)
!573 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !313, file: !407, line: 217, type: !547, flags: DIFlagPrototyped, spFlags: 0)
!574 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !546, file: !407, line: 250)
!575 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !550, file: !407, line: 252)
!576 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !562, file: !407, line: 253)
!577 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !554, file: !407, line: 254)
!578 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !558, file: !407, line: 255)
!579 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !566, file: !407, line: 256)
!580 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !581, file: !583, line: 98)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !582, line: 7, baseType: !84)
!582 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!583 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cstdio", directory: "")
!584 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !585, file: !583, line: 99)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !586, line: 84, baseType: !587)
!586 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fpos_t", file: !588, line: 14, baseType: !589)
!588 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h", directory: "", checksumkind: CSK_MD5, checksum: "32de8bdaf3551a6c0a9394f9af4389ce")
!589 = !DICompositeType(tag: DW_TAG_structure_type, name: "_G_fpos_t", file: !588, line: 10, size: 128, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
!590 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !591, file: !583, line: 101)
!591 = !DISubprogram(name: "clearerr", scope: !586, file: !586, line: 757, type: !592, flags: DIFlagPrototyped, spFlags: 0)
!592 = !DISubroutineType(types: !593)
!593 = !{null, !594}
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!595 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !596, file: !583, line: 102)
!596 = !DISubprogram(name: "fclose", scope: !586, file: !586, line: 213, type: !597, flags: DIFlagPrototyped, spFlags: 0)
!597 = !DISubroutineType(types: !598)
!598 = !{!14, !594}
!599 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !600, file: !583, line: 103)
!600 = !DISubprogram(name: "feof", scope: !586, file: !586, line: 759, type: !597, flags: DIFlagPrototyped, spFlags: 0)
!601 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !602, file: !583, line: 104)
!602 = !DISubprogram(name: "ferror", scope: !586, file: !586, line: 761, type: !597, flags: DIFlagPrototyped, spFlags: 0)
!603 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !604, file: !583, line: 105)
!604 = !DISubprogram(name: "fflush", scope: !586, file: !586, line: 218, type: !597, flags: DIFlagPrototyped, spFlags: 0)
!605 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !606, file: !583, line: 106)
!606 = !DISubprogram(name: "fgetc", scope: !586, file: !586, line: 485, type: !597, flags: DIFlagPrototyped, spFlags: 0)
!607 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !608, file: !583, line: 107)
!608 = !DISubprogram(name: "fgetpos", scope: !586, file: !586, line: 731, type: !609, flags: DIFlagPrototyped, spFlags: 0)
!609 = !DISubroutineType(types: !610)
!610 = !{!14, !611, !612}
!611 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !594)
!612 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !613)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!614 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !615, file: !583, line: 108)
!615 = !DISubprogram(name: "fgets", scope: !586, file: !586, line: 564, type: !616, flags: DIFlagPrototyped, spFlags: 0)
!616 = !DISubroutineType(types: !617)
!617 = !{!198, !197, !14, !611}
!618 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !619, file: !583, line: 109)
!619 = !DISubprogram(name: "fopen", scope: !586, file: !586, line: 246, type: !620, flags: DIFlagPrototyped, spFlags: 0)
!620 = !DISubroutineType(types: !621)
!621 = !{!594, !126, !126}
!622 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !623, file: !583, line: 110)
!623 = !DISubprogram(name: "fprintf", scope: !586, file: !586, line: 326, type: !624, flags: DIFlagPrototyped, spFlags: 0)
!624 = !DISubroutineType(types: !625)
!625 = !{!14, !611, !126, null}
!626 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !627, file: !583, line: 111)
!627 = !DISubprogram(name: "fputc", scope: !586, file: !586, line: 521, type: !628, flags: DIFlagPrototyped, spFlags: 0)
!628 = !DISubroutineType(types: !629)
!629 = !{!14, !14, !594}
!630 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !631, file: !583, line: 112)
!631 = !DISubprogram(name: "fputs", scope: !586, file: !586, line: 626, type: !632, flags: DIFlagPrototyped, spFlags: 0)
!632 = !DISubroutineType(types: !633)
!633 = !{!14, !126, !611}
!634 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !635, file: !583, line: 113)
!635 = !DISubprogram(name: "fread", scope: !586, file: !586, line: 646, type: !636, flags: DIFlagPrototyped, spFlags: 0)
!636 = !DISubroutineType(types: !637)
!637 = !{!124, !638, !124, !124, !611}
!638 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !175)
!639 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !640, file: !583, line: 114)
!640 = !DISubprogram(name: "freopen", scope: !586, file: !586, line: 252, type: !641, flags: DIFlagPrototyped, spFlags: 0)
!641 = !DISubroutineType(types: !642)
!642 = !{!594, !126, !126, !611}
!643 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !644, file: !583, line: 115)
!644 = !DISubprogram(name: "fscanf", linkageName: "__isoc99_fscanf", scope: !586, file: !586, line: 407, type: !624, flags: DIFlagPrototyped, spFlags: 0)
!645 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !646, file: !583, line: 116)
!646 = !DISubprogram(name: "fseek", scope: !586, file: !586, line: 684, type: !647, flags: DIFlagPrototyped, spFlags: 0)
!647 = !DISubroutineType(types: !648)
!648 = !{!14, !594, !265, !14}
!649 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !650, file: !583, line: 117)
!650 = !DISubprogram(name: "fsetpos", scope: !586, file: !586, line: 736, type: !651, flags: DIFlagPrototyped, spFlags: 0)
!651 = !DISubroutineType(types: !652)
!652 = !{!14, !594, !653}
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !585)
!655 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !656, file: !583, line: 118)
!656 = !DISubprogram(name: "ftell", scope: !586, file: !586, line: 689, type: !657, flags: DIFlagPrototyped, spFlags: 0)
!657 = !DISubroutineType(types: !658)
!658 = !{!265, !594}
!659 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !660, file: !583, line: 119)
!660 = !DISubprogram(name: "fwrite", scope: !586, file: !586, line: 652, type: !661, flags: DIFlagPrototyped, spFlags: 0)
!661 = !DISubroutineType(types: !662)
!662 = !{!124, !663, !124, !124, !611}
!663 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !445)
!664 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !665, file: !583, line: 120)
!665 = !DISubprogram(name: "getc", scope: !586, file: !586, line: 486, type: !597, flags: DIFlagPrototyped, spFlags: 0)
!666 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !667, file: !583, line: 121)
!667 = !DISubprogram(name: "getchar", scope: !586, file: !586, line: 492, type: !12, flags: DIFlagPrototyped, spFlags: 0)
!668 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !669, file: !583, line: 126)
!669 = !DISubprogram(name: "perror", scope: !586, file: !586, line: 775, type: !670, flags: DIFlagPrototyped, spFlags: 0)
!670 = !DISubroutineType(types: !671)
!671 = !{null, !127}
!672 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !673, file: !583, line: 127)
!673 = !DISubprogram(name: "printf", scope: !586, file: !586, line: 332, type: !674, flags: DIFlagPrototyped, spFlags: 0)
!674 = !DISubroutineType(types: !675)
!675 = !{!14, !126, null}
!676 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !677, file: !583, line: 128)
!677 = !DISubprogram(name: "putc", scope: !586, file: !586, line: 522, type: !628, flags: DIFlagPrototyped, spFlags: 0)
!678 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !679, file: !583, line: 129)
!679 = !DISubprogram(name: "putchar", scope: !586, file: !586, line: 528, type: !367, flags: DIFlagPrototyped, spFlags: 0)
!680 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !681, file: !583, line: 130)
!681 = !DISubprogram(name: "puts", scope: !586, file: !586, line: 632, type: !435, flags: DIFlagPrototyped, spFlags: 0)
!682 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !683, file: !583, line: 131)
!683 = !DISubprogram(name: "remove", scope: !586, file: !586, line: 146, type: !435, flags: DIFlagPrototyped, spFlags: 0)
!684 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !685, file: !583, line: 132)
!685 = !DISubprogram(name: "rename", scope: !586, file: !586, line: 148, type: !686, flags: DIFlagPrototyped, spFlags: 0)
!686 = !DISubroutineType(types: !687)
!687 = !{!14, !127, !127}
!688 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !689, file: !583, line: 133)
!689 = !DISubprogram(name: "rewind", scope: !586, file: !586, line: 694, type: !592, flags: DIFlagPrototyped, spFlags: 0)
!690 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !691, file: !583, line: 134)
!691 = !DISubprogram(name: "scanf", linkageName: "__isoc99_scanf", scope: !586, file: !586, line: 410, type: !674, flags: DIFlagPrototyped, spFlags: 0)
!692 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !693, file: !583, line: 135)
!693 = !DISubprogram(name: "setbuf", scope: !586, file: !586, line: 304, type: !694, flags: DIFlagPrototyped, spFlags: 0)
!694 = !DISubroutineType(types: !695)
!695 = !{null, !611, !197}
!696 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !697, file: !583, line: 136)
!697 = !DISubprogram(name: "setvbuf", scope: !586, file: !586, line: 308, type: !698, flags: DIFlagPrototyped, spFlags: 0)
!698 = !DISubroutineType(types: !699)
!699 = !{!14, !611, !197, !14, !124}
!700 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !701, file: !583, line: 137)
!701 = !DISubprogram(name: "sprintf", scope: !586, file: !586, line: 334, type: !702, flags: DIFlagPrototyped, spFlags: 0)
!702 = !DISubroutineType(types: !703)
!703 = !{!14, !197, !126, null}
!704 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !705, file: !583, line: 138)
!705 = !DISubprogram(name: "sscanf", linkageName: "__isoc99_sscanf", scope: !586, file: !586, line: 412, type: !706, flags: DIFlagPrototyped, spFlags: 0)
!706 = !DISubroutineType(types: !707)
!707 = !{!14, !126, !126, null}
!708 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !709, file: !583, line: 139)
!709 = !DISubprogram(name: "tmpfile", scope: !586, file: !586, line: 173, type: !710, flags: DIFlagPrototyped, spFlags: 0)
!710 = !DISubroutineType(types: !711)
!711 = !{!594}
!712 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !713, file: !583, line: 141)
!713 = !DISubprogram(name: "tmpnam", scope: !586, file: !586, line: 187, type: !714, flags: DIFlagPrototyped, spFlags: 0)
!714 = !DISubroutineType(types: !715)
!715 = !{!198, !198}
!716 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !717, file: !583, line: 143)
!717 = !DISubprogram(name: "ungetc", scope: !586, file: !586, line: 639, type: !628, flags: DIFlagPrototyped, spFlags: 0)
!718 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !719, file: !583, line: 144)
!719 = !DISubprogram(name: "vfprintf", scope: !586, file: !586, line: 341, type: !720, flags: DIFlagPrototyped, spFlags: 0)
!720 = !DISubroutineType(types: !721)
!721 = !{!14, !611, !126, !168}
!722 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !723, file: !583, line: 145)
!723 = !DISubprogram(name: "vprintf", scope: !586, file: !586, line: 347, type: !724, flags: DIFlagPrototyped, spFlags: 0)
!724 = !DISubroutineType(types: !725)
!725 = !{!14, !126, !168}
!726 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !727, file: !583, line: 146)
!727 = !DISubprogram(name: "vsprintf", scope: !586, file: !586, line: 349, type: !728, flags: DIFlagPrototyped, spFlags: 0)
!728 = !DISubroutineType(types: !729)
!729 = !{!14, !197, !126, !168}
!730 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !313, entity: !731, file: !583, line: 175)
!731 = !DISubprogram(name: "snprintf", scope: !586, file: !586, line: 354, type: !732, flags: DIFlagPrototyped, spFlags: 0)
!732 = !DISubroutineType(types: !733)
!733 = !{!14, !197, !124, !126, null}
!734 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !313, entity: !735, file: !583, line: 176)
!735 = !DISubprogram(name: "vfscanf", linkageName: "__isoc99_vfscanf", scope: !586, file: !586, line: 451, type: !720, flags: DIFlagPrototyped, spFlags: 0)
!736 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !313, entity: !737, file: !583, line: 177)
!737 = !DISubprogram(name: "vscanf", linkageName: "__isoc99_vscanf", scope: !586, file: !586, line: 456, type: !724, flags: DIFlagPrototyped, spFlags: 0)
!738 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !313, entity: !739, file: !583, line: 178)
!739 = !DISubprogram(name: "vsnprintf", scope: !586, file: !586, line: 358, type: !740, flags: DIFlagPrototyped, spFlags: 0)
!740 = !DISubroutineType(types: !741)
!741 = !{!14, !197, !124, !126, !168}
!742 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !313, entity: !743, file: !583, line: 179)
!743 = !DISubprogram(name: "vsscanf", linkageName: "__isoc99_vsscanf", scope: !586, file: !586, line: 459, type: !744, flags: DIFlagPrototyped, spFlags: 0)
!744 = !DISubroutineType(types: !745)
!745 = !{!14, !126, !126, !168}
!746 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !731, file: !583, line: 185)
!747 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !735, file: !583, line: 186)
!748 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !737, file: !583, line: 187)
!749 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !739, file: !583, line: 188)
!750 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !743, file: !583, line: 189)
!751 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !752, file: !758, line: 58)
!752 = !DIDerivedType(tag: DW_TAG_typedef, name: "max_align_t", file: !753, line: 24, baseType: !754)
!753 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/__stddef_max_align_t.h", directory: "/home/cs22mtech12008", checksumkind: CSK_MD5, checksum: "48e8e2456f77e6cda35d245130fa7259")
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !753, line: 19, size: 256, flags: DIFlagTypePassByValue, elements: !755, identifier: "_ZTS11max_align_t")
!755 = !{!756, !757}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "__clang_max_align_nonce1", scope: !754, file: !753, line: 20, baseType: !322, size: 64, align: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "__clang_max_align_nonce2", scope: !754, file: !753, line: 22, baseType: !317, size: 128, align: 128, offset: 128)
!758 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cstddef", directory: "")
!759 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !760, file: !766, line: 82)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctrans_t", file: !761, line: 48, baseType: !762)
!761 = !DIFile(filename: "/usr/include/wctype.h", directory: "", checksumkind: CSK_MD5, checksum: "e83097fbf57cc71ea472db59df3ba75d")
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !764)
!764 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !765, line: 41, baseType: !14)
!765 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!766 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cwctype", directory: "")
!767 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !768, file: !766, line: 83)
!768 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctype_t", file: !769, line: 38, baseType: !26)
!769 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "3598b9d23ef5d76319026b46e316b55f")
!770 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !70, file: !766, line: 84)
!771 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !772, file: !766, line: 86)
!772 = !DISubprogram(name: "iswalnum", scope: !769, file: !769, line: 95, type: !276, flags: DIFlagPrototyped, spFlags: 0)
!773 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !774, file: !766, line: 87)
!774 = !DISubprogram(name: "iswalpha", scope: !769, file: !769, line: 101, type: !276, flags: DIFlagPrototyped, spFlags: 0)
!775 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !776, file: !766, line: 89)
!776 = !DISubprogram(name: "iswblank", scope: !769, file: !769, line: 146, type: !276, flags: DIFlagPrototyped, spFlags: 0)
!777 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !778, file: !766, line: 91)
!778 = !DISubprogram(name: "iswcntrl", scope: !769, file: !769, line: 104, type: !276, flags: DIFlagPrototyped, spFlags: 0)
!779 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !780, file: !766, line: 92)
!780 = !DISubprogram(name: "iswctype", scope: !769, file: !769, line: 159, type: !781, flags: DIFlagPrototyped, spFlags: 0)
!781 = !DISubroutineType(types: !782)
!782 = !{!14, !70, !768}
!783 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !784, file: !766, line: 93)
!784 = !DISubprogram(name: "iswdigit", scope: !769, file: !769, line: 108, type: !276, flags: DIFlagPrototyped, spFlags: 0)
!785 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !786, file: !766, line: 94)
!786 = !DISubprogram(name: "iswgraph", scope: !769, file: !769, line: 112, type: !276, flags: DIFlagPrototyped, spFlags: 0)
!787 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !788, file: !766, line: 95)
!788 = !DISubprogram(name: "iswlower", scope: !769, file: !769, line: 117, type: !276, flags: DIFlagPrototyped, spFlags: 0)
!789 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !790, file: !766, line: 96)
!790 = !DISubprogram(name: "iswprint", scope: !769, file: !769, line: 120, type: !276, flags: DIFlagPrototyped, spFlags: 0)
!791 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !792, file: !766, line: 97)
!792 = !DISubprogram(name: "iswpunct", scope: !769, file: !769, line: 125, type: !276, flags: DIFlagPrototyped, spFlags: 0)
!793 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !794, file: !766, line: 98)
!794 = !DISubprogram(name: "iswspace", scope: !769, file: !769, line: 130, type: !276, flags: DIFlagPrototyped, spFlags: 0)
!795 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !796, file: !766, line: 99)
!796 = !DISubprogram(name: "iswupper", scope: !769, file: !769, line: 135, type: !276, flags: DIFlagPrototyped, spFlags: 0)
!797 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !798, file: !766, line: 100)
!798 = !DISubprogram(name: "iswxdigit", scope: !769, file: !769, line: 140, type: !276, flags: DIFlagPrototyped, spFlags: 0)
!799 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !800, file: !766, line: 101)
!800 = !DISubprogram(name: "towctrans", scope: !761, file: !761, line: 55, type: !801, flags: DIFlagPrototyped, spFlags: 0)
!801 = !DISubroutineType(types: !802)
!802 = !{!70, !70, !760}
!803 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !804, file: !766, line: 102)
!804 = !DISubprogram(name: "towlower", scope: !769, file: !769, line: 166, type: !805, flags: DIFlagPrototyped, spFlags: 0)
!805 = !DISubroutineType(types: !806)
!806 = !{!70, !70}
!807 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !808, file: !766, line: 103)
!808 = !DISubprogram(name: "towupper", scope: !769, file: !769, line: 169, type: !805, flags: DIFlagPrototyped, spFlags: 0)
!809 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !810, file: !766, line: 104)
!810 = !DISubprogram(name: "wctrans", scope: !761, file: !761, line: 52, type: !811, flags: DIFlagPrototyped, spFlags: 0)
!811 = !DISubroutineType(types: !812)
!812 = !{!760, !127}
!813 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !51, entity: !814, file: !766, line: 105)
!814 = !DISubprogram(name: "wctype", scope: !769, file: !769, line: 155, type: !815, flags: DIFlagPrototyped, spFlags: 0)
!815 = !DISubroutineType(types: !816)
!816 = !{!768, !127}
!817 = !{i32 7, !"Dwarf Version", i32 5}
!818 = !{i32 2, !"Debug Info Version", i32 3}
!819 = !{i32 1, !"wchar_size", i32 4}
!820 = !{i32 8, !"PIC Level", i32 2}
!821 = !{i32 7, !"PIE Level", i32 2}
!822 = !{i32 7, !"uwtable", i32 2}
!823 = !{i32 7, !"frame-pointer", i32 2}
!824 = !{!"clang version 16.0.0"}
!825 = distinct !DISubprogram(name: "runThread", linkageName: "_Z9runThreadPv", scope: !7, file: !7, line: 44, type: !826, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !828)
!826 = !DISubroutineType(types: !827)
!827 = !{!175, !175}
!828 = !{}
!829 = !DILocalVariable(name: "arg", arg: 1, scope: !825, file: !7, line: 44, type: !175)
!830 = !DILocation(line: 44, column: 23, scope: !825)
!831 = !DILocalVariable(name: "basePtr", scope: !825, file: !7, line: 45, type: !5)
!832 = !DILocation(line: 45, column: 8, scope: !825)
!833 = !DILocation(line: 45, column: 34, scope: !825)
!834 = !DILocation(line: 46, column: 5, scope: !825)
!835 = !DILocation(line: 46, column: 14, scope: !825)
!836 = !DILocation(line: 47, column: 5, scope: !825)
!837 = distinct !DISubprogram(name: "createThread", linkageName: "_Z12createThreadv", scope: !7, file: !7, line: 50, type: !416, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !828)
!838 = !DILocalVariable(name: "a12Obj", scope: !837, file: !7, line: 51, type: !839)
!839 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "A12", file: !7, line: 33, size: 384, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !840, vtableHolder: !842, identifier: "_ZTS3A12")
!840 = !{!841, !851, !861, !862}
!841 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !839, baseType: !842, flags: DIFlagPublic, extraData: i32 0)
!842 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "A1", file: !7, line: 17, size: 256, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !843, vtableHolder: !842, identifier: "_ZTS2A1")
!843 = !{!844, !845, !846, !847}
!844 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !842, baseType: !6, offset: 24, flags: DIFlagPublic | DIFlagVirtual, extraData: i32 0)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$A1", scope: !7, file: !7, baseType: !10, size: 64, flags: DIFlagArtificial)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "a1", scope: !842, file: !7, line: 19, baseType: !14, size: 32, offset: 64, flags: DIFlagPublic)
!847 = !DISubprogram(name: "m1", linkageName: "_ZN2A12m1Ev", scope: !842, file: !7, line: 20, type: !848, scopeLine: 20, containingType: !842, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!848 = !DISubroutineType(types: !849)
!849 = !{null, !850}
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!851 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !839, baseType: !852, offset: 128, flags: DIFlagPublic, extraData: i32 0)
!852 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "A2", file: !7, line: 25, size: 256, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !853, vtableHolder: !852, identifier: "_ZTS2A2")
!853 = !{!854, !855, !856, !857}
!854 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !852, baseType: !6, offset: 24, flags: DIFlagPublic | DIFlagVirtual, extraData: i32 0)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$A2", scope: !7, file: !7, baseType: !10, size: 64, flags: DIFlagArtificial)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "a2", scope: !852, file: !7, line: 27, baseType: !14, size: 32, offset: 64, flags: DIFlagPublic)
!857 = !DISubprogram(name: "m2", linkageName: "_ZN2A22m2Ev", scope: !852, file: !7, line: 28, type: !858, scopeLine: 28, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!858 = !DISubroutineType(types: !859)
!859 = !{null, !860}
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "a12", scope: !839, file: !7, line: 35, baseType: !14, size: 32, offset: 224, flags: DIFlagPublic)
!862 = !DISubprogram(name: "m1", linkageName: "_ZN3A122m1Ev", scope: !839, file: !7, line: 36, type: !863, scopeLine: 36, containingType: !839, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!863 = !DISubroutineType(types: !864)
!864 = !{null, !865}
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!866 = !DILocation(line: 51, column: 9, scope: !837)
!867 = !DILocalVariable(name: "basePtr", scope: !837, file: !7, line: 52, type: !868)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!869 = !DILocation(line: 52, column: 10, scope: !837)
!870 = !DILocation(line: 53, column: 45, scope: !837)
!871 = !DILocation(line: 53, column: 5, scope: !837)
!872 = !DILocation(line: 54, column: 45, scope: !837)
!873 = !DILocation(line: 54, column: 5, scope: !837)
!874 = !DILocation(line: 55, column: 1, scope: !837)
!875 = distinct !DISubprogram(name: "A12", linkageName: "_ZN3A12C1Ev", scope: !839, file: !7, line: 33, type: !863, scopeLine: 33, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !876, retainedNodes: !828)
!876 = !DISubprogram(name: "A12", scope: !839, type: !863, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!877 = !DILocalVariable(name: "this", arg: 1, scope: !875, type: !868, flags: DIFlagArtificial | DIFlagObjectPointer)
!878 = !DILocation(line: 0, scope: !875)
!879 = !DILocation(line: 33, column: 11, scope: !875)
!880 = !DILocation(line: 35, column: 9, scope: !875)
!881 = distinct !DISubprogram(name: "main", scope: !7, file: !7, line: 57, type: !12, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !828)
!882 = !DILocation(line: 58, column: 5, scope: !881)
!883 = !DILocation(line: 59, column: 18, scope: !881)
!884 = !DILocation(line: 59, column: 5, scope: !881)
!885 = !DILocation(line: 60, column: 18, scope: !881)
!886 = !DILocation(line: 60, column: 5, scope: !881)
!887 = !DILocation(line: 61, column: 5, scope: !881)
!888 = distinct !DISubprogram(name: "A", linkageName: "_ZN1AC2Ev", scope: !6, file: !7, line: 5, type: !17, scopeLine: 5, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !889, retainedNodes: !828)
!889 = !DISubprogram(name: "A", scope: !6, type: !17, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!890 = !DILocalVariable(name: "this", arg: 1, scope: !888, type: !5, flags: DIFlagArtificial | DIFlagObjectPointer)
!891 = !DILocation(line: 0, scope: !888)
!892 = !DILocation(line: 5, column: 7, scope: !888)
!893 = !DILocation(line: 7, column: 9, scope: !888)
!894 = distinct !DISubprogram(name: "A1", linkageName: "_ZN2A1C2Ev", scope: !842, file: !7, line: 17, type: !848, scopeLine: 17, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !895, retainedNodes: !828)
!895 = !DISubprogram(name: "A1", scope: !842, type: !848, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!896 = !DILocalVariable(name: "this", arg: 1, scope: !894, type: !897, flags: DIFlagArtificial | DIFlagObjectPointer)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!898 = !DILocation(line: 0, scope: !894)
!899 = !DILocalVariable(name: "vtt", arg: 2, scope: !894, type: !900, flags: DIFlagArtificial)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!901 = !DILocation(line: 17, column: 11, scope: !894)
!902 = !DILocation(line: 19, column: 9, scope: !894)
!903 = distinct !DISubprogram(name: "A2", linkageName: "_ZN2A2C2Ev", scope: !852, file: !7, line: 25, type: !858, scopeLine: 25, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !904, retainedNodes: !828)
!904 = !DISubprogram(name: "A2", scope: !852, type: !858, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!905 = !DILocalVariable(name: "this", arg: 1, scope: !903, type: !906, flags: DIFlagArtificial | DIFlagObjectPointer)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!907 = !DILocation(line: 0, scope: !903)
!908 = !DILocalVariable(name: "vtt", arg: 2, scope: !903, type: !900, flags: DIFlagArtificial)
!909 = !DILocation(line: 25, column: 11, scope: !903)
!910 = !DILocation(line: 27, column: 9, scope: !903)
!911 = distinct !DISubprogram(name: "m1", linkageName: "_ZN2A12m1Ev", scope: !842, file: !7, line: 20, type: !848, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !847, retainedNodes: !828)
!912 = !DILocalVariable(name: "this", arg: 1, scope: !911, type: !897, flags: DIFlagArtificial | DIFlagObjectPointer)
!913 = !DILocation(line: 0, scope: !911)
!914 = !DILocation(line: 21, column: 23, scope: !911)
!915 = !DILocation(line: 21, column: 42, scope: !911)
!916 = !DILocation(line: 21, column: 40, scope: !911)
!917 = !DILocation(line: 21, column: 44, scope: !911)
!918 = !DILocation(line: 22, column: 9, scope: !911)
!919 = distinct !DISubprogram(linkageName: "_ZTv0_n24_N2A12m1Ev", scope: !7, file: !7, line: 20, type: !920, flags: DIFlagArtificial | DIFlagThunk, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !828)
!920 = !DISubroutineType(types: !828)
!921 = !DILocation(line: 0, scope: !919)
!922 = distinct !DISubprogram(name: "m1", linkageName: "_ZN1A2m1Ev", scope: !6, file: !7, line: 8, type: !17, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !16, retainedNodes: !828)
!923 = !DILocalVariable(name: "this", arg: 1, scope: !922, type: !5, flags: DIFlagArtificial | DIFlagObjectPointer)
!924 = !DILocation(line: 0, scope: !922)
!925 = !DILocation(line: 9, column: 23, scope: !922)
!926 = !DILocation(line: 9, column: 44, scope: !922)
!927 = !DILocation(line: 9, column: 42, scope: !922)
!928 = !DILocation(line: 9, column: 45, scope: !922)
!929 = !DILocation(line: 10, column: 9, scope: !922)
!930 = distinct !DISubprogram(name: "m1", linkageName: "_ZN3A122m1Ev", scope: !839, file: !7, line: 36, type: !863, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !862, retainedNodes: !828)
!931 = !DILocalVariable(name: "this", arg: 1, scope: !930, type: !868, flags: DIFlagArtificial | DIFlagObjectPointer)
!932 = !DILocation(line: 0, scope: !930)
!933 = !DILocation(line: 37, column: 23, scope: !930)
!934 = !DILocation(line: 37, column: 43, scope: !930)
!935 = !DILocation(line: 37, column: 41, scope: !930)
!936 = !DILocation(line: 37, column: 46, scope: !930)
!937 = !DILocation(line: 38, column: 9, scope: !930)
!938 = distinct !DISubprogram(linkageName: "_ZTv0_n24_N3A122m1Ev", scope: !7, file: !7, line: 36, type: !920, flags: DIFlagArtificial | DIFlagThunk, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !828)
!939 = !DILocation(line: 0, scope: !938)
