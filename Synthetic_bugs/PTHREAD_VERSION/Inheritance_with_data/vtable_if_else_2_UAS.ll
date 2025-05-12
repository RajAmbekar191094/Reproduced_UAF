; ModuleID = '/home/cs22mtech12008/Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Inheritance_with_data/vtable_if_else_2_UAS.cpp'
source_filename = "/home/cs22mtech12008/Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Inheritance_with_data/vtable_if_else_2_UAS.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%class.Base = type <{ ptr, i32, [4 x i8] }>
%class.Derived = type { %class.Base.base, i32 }
%class.Base.base = type <{ ptr, i32 }>

$_ZN4Base5func4Ev = comdat any

$_ZN4Base5func5Ev = comdat any

$_ZN7DerivedC2Ev = comdat any

$_ZN4BaseC2Ev = comdat any

$_ZN7Derived5func1Ev = comdat any

$_ZN7Derived5func2Ev = comdat any

$_ZN7Derived5func3Ev = comdat any

$_ZN4Base5func1Ev = comdat any

$_ZN4Base5func2Ev = comdat any

$_ZN4Base5func3Ev = comdat any

$_ZTV7Derived = comdat any

$_ZTS7Derived = comdat any

$_ZTS4Base = comdat any

$_ZTI4Base = comdat any

$_ZTI7Derived = comdat any

$_ZTV4Base = comdat any

@basePtr = dso_local global ptr null, align 8, !dbg !0
@t1 = dso_local global i64 0, align 8, !dbg !25
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [12 x i8] c"Base::func4\00", align 1, !dbg !30
@.str.1 = private unnamed_addr constant [6 x i8] c"Data:\00", align 1, !dbg !37
@.str.2 = private unnamed_addr constant [12 x i8] c"Base::func5\00", align 1, !dbg !42
@_ZTV7Derived = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI7Derived, ptr @_ZN7Derived5func1Ev, ptr @_ZN7Derived5func2Ev, ptr @_ZN7Derived5func3Ev] }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global ptr
@_ZTS7Derived = linkonce_odr dso_local constant [9 x i8] c"7Derived\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global ptr
@_ZTS4Base = linkonce_odr dso_local constant [6 x i8] c"4Base\00", comdat, align 1
@_ZTI4Base = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS4Base }, comdat, align 8
@_ZTI7Derived = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS7Derived, ptr @_ZTI4Base }, comdat, align 8
@_ZTV4Base = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI4Base, ptr @_ZN4Base5func1Ev, ptr @_ZN4Base5func2Ev, ptr @_ZN4Base5func3Ev] }, comdat, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"Base::func1\00", align 1, !dbg !44
@.str.4 = private unnamed_addr constant [12 x i8] c"Base::func2\00", align 1, !dbg !46
@.str.5 = private unnamed_addr constant [12 x i8] c"Base::func3\00", align 1, !dbg !48
@.str.6 = private unnamed_addr constant [15 x i8] c"Derived::func1\00", align 1, !dbg !50
@.str.7 = private unnamed_addr constant [15 x i8] c"Derived::func2\00", align 1, !dbg !55
@.str.8 = private unnamed_addr constant [15 x i8] c"Derived::func3\00", align 1, !dbg !57

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef ptr @_Z10threadFuncPv(ptr noundef %0) #0 !dbg !835 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !839, metadata !DIExpression()), !dbg !840
  %5 = call i32 @sleep(i32 noundef 5), !dbg !841
  call void @llvm.dbg.declare(metadata ptr %3, metadata !842, metadata !DIExpression()), !dbg !843
  store i32 1, ptr %3, align 4, !dbg !843
  call void @llvm.dbg.declare(metadata ptr %4, metadata !844, metadata !DIExpression()), !dbg !845
  %6 = load ptr, ptr %2, align 8, !dbg !846
  store ptr %6, ptr %4, align 8, !dbg !845
  %7 = load i32, ptr %3, align 4, !dbg !847
  %8 = icmp eq i32 %7, 0, !dbg !849
  br i1 %8, label %9, label %22, !dbg !850

9:                                                ; preds = %1
  %10 = load ptr, ptr %4, align 8, !dbg !851
  %11 = load ptr, ptr %10, align 8, !dbg !853
  %12 = getelementptr inbounds ptr, ptr %11, i64 0, !dbg !853
  %13 = load ptr, ptr %12, align 8, !dbg !853
  call void %13(ptr noundef nonnull align 8 dereferenceable(12) %10), !dbg !853
  %14 = load ptr, ptr %4, align 8, !dbg !854
  %15 = load ptr, ptr %14, align 8, !dbg !855
  %16 = getelementptr inbounds ptr, ptr %15, i64 1, !dbg !855
  %17 = load ptr, ptr %16, align 8, !dbg !855
  call void %17(ptr noundef nonnull align 8 dereferenceable(12) %14), !dbg !855
  %18 = load ptr, ptr %4, align 8, !dbg !856
  %19 = load ptr, ptr %18, align 8, !dbg !857
  %20 = getelementptr inbounds ptr, ptr %19, i64 2, !dbg !857
  %21 = load ptr, ptr %20, align 8, !dbg !857
  call void %21(ptr noundef nonnull align 8 dereferenceable(12) %18), !dbg !857
  br label %25, !dbg !858

22:                                               ; preds = %1
  %23 = load ptr, ptr %4, align 8, !dbg !859
  call void @_ZN4Base5func4Ev(ptr noundef nonnull align 8 dereferenceable(12) %23), !dbg !861
  %24 = load ptr, ptr %4, align 8, !dbg !862
  call void @_ZN4Base5func5Ev(ptr noundef nonnull align 8 dereferenceable(12) %24), !dbg !863
  br label %25

25:                                               ; preds = %22, %9
  ret ptr null, !dbg !864
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @sleep(i32 noundef) #2

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN4Base5func4Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) #0 comdat align 2 !dbg !865 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !866, metadata !DIExpression()), !dbg !867
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str), !dbg !868
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef @.str.1), !dbg !869
  %6 = getelementptr inbounds %class.Base, ptr %3, i32 0, i32 1, !dbg !870
  %7 = load i32, ptr %6, align 8, !dbg !870
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %7), !dbg !871
  %9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !872
  ret void, !dbg !873
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN4Base5func5Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) #0 comdat align 2 !dbg !874 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !875, metadata !DIExpression()), !dbg !876
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.2), !dbg !877
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef @.str.1), !dbg !878
  %6 = getelementptr inbounds %class.Base, ptr %3, i32 0, i32 1, !dbg !879
  %7 = load i32, ptr %6, align 8, !dbg !879
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %7), !dbg !880
  %9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !881
  ret void, !dbg !882
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_Z11startThreadv() #3 !dbg !883 {
  %1 = alloca %class.Derived, align 8
  call void @llvm.dbg.declare(metadata ptr %1, metadata !884, metadata !DIExpression()), !dbg !897
  call void @_ZN7DerivedC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %1) #7, !dbg !897
  store ptr %1, ptr @basePtr, align 8, !dbg !898
  %2 = load ptr, ptr @basePtr, align 8, !dbg !899
  %3 = call i32 @pthread_create(ptr noundef @t1, ptr noundef null, ptr noundef @_Z10threadFuncPv, ptr noundef %2) #7, !dbg !900
  ret void, !dbg !901
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7DerivedC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 !dbg !902 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !904, metadata !DIExpression()), !dbg !906
  %3 = load ptr, ptr %2, align 8
  call void @_ZN4BaseC2Ev(ptr noundef nonnull align 8 dereferenceable(12) %3) #7, !dbg !907
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTV7Derived, i32 0, inrange i32 0, i32 2), ptr %3, align 8, !dbg !907
  %4 = getelementptr inbounds %class.Derived, ptr %3, i32 0, i32 1, !dbg !908
  store i32 20, ptr %4, align 4, !dbg !908
  ret void, !dbg !907
}

; Function Attrs: nounwind
declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main() #6 !dbg !909 {
  %1 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  call void @_Z11startThreadv(), !dbg !910
  %2 = load i64, ptr @t1, align 8, !dbg !911
  %3 = call i32 @pthread_join(i64 noundef %2, ptr noundef null), !dbg !912
  ret i32 0, !dbg !913
}

declare i32 @pthread_join(i64 noundef, ptr noundef) #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #2

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4BaseC2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #4 comdat align 2 !dbg !914 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !916, metadata !DIExpression()), !dbg !917
  %3 = load ptr, ptr %2, align 8
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTV4Base, i32 0, inrange i32 0, i32 2), ptr %3, align 8, !dbg !918
  %4 = getelementptr inbounds %class.Base, ptr %3, i32 0, i32 1, !dbg !919
  store i32 10, ptr %4, align 8, !dbg !919
  ret void, !dbg !918
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN7Derived5func1Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 !dbg !920 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !921, metadata !DIExpression()), !dbg !922
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.6), !dbg !923
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef @.str.1), !dbg !924
  %6 = getelementptr inbounds %class.Derived, ptr %3, i32 0, i32 1, !dbg !925
  %7 = load i32, ptr %6, align 4, !dbg !925
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %7), !dbg !926
  %9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !927
  ret void, !dbg !928
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN7Derived5func2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 !dbg !929 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !930, metadata !DIExpression()), !dbg !931
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.7), !dbg !932
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef @.str.1), !dbg !933
  %6 = getelementptr inbounds %class.Derived, ptr %3, i32 0, i32 1, !dbg !934
  %7 = load i32, ptr %6, align 4, !dbg !934
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %7), !dbg !935
  %9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !936
  ret void, !dbg !937
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN7Derived5func3Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 !dbg !938 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !939, metadata !DIExpression()), !dbg !940
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.8), !dbg !941
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef @.str.1), !dbg !942
  %6 = getelementptr inbounds %class.Derived, ptr %3, i32 0, i32 1, !dbg !943
  %7 = load i32, ptr %6, align 4, !dbg !943
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %7), !dbg !944
  %9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !945
  ret void, !dbg !946
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN4Base5func1Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #0 comdat align 2 !dbg !947 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !948, metadata !DIExpression()), !dbg !949
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.3), !dbg !950
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef @.str.1), !dbg !951
  %6 = getelementptr inbounds %class.Base, ptr %3, i32 0, i32 1, !dbg !952
  %7 = load i32, ptr %6, align 8, !dbg !952
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %7), !dbg !953
  %9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !954
  ret void, !dbg !955
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN4Base5func2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #0 comdat align 2 !dbg !956 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !957, metadata !DIExpression()), !dbg !958
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.4), !dbg !959
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef @.str.1), !dbg !960
  %6 = getelementptr inbounds %class.Base, ptr %3, i32 0, i32 1, !dbg !961
  %7 = load i32, ptr %6, align 8, !dbg !961
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %7), !dbg !962
  %9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !963
  ret void, !dbg !964
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN4Base5func3Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #0 comdat align 2 !dbg !965 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !966, metadata !DIExpression()), !dbg !967
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.5), !dbg !968
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef @.str.1), !dbg !969
  %6 = getelementptr inbounds %class.Base, ptr %3, i32 0, i32 1, !dbg !970
  %7 = load i32, ptr %6, align 8, !dbg !970
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %7), !dbg !971
  %9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !972
  ret void, !dbg !973
}

attributes #0 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!827, !828, !829, !830, !831, !832, !833}
!llvm.ident = !{!834}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "basePtr", scope: !2, file: !7, line: 45, type: !5, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !3, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !24, imports: !59, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/cs22mtech12008/Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Inheritance_with_data/vtable_if_else_2_UAS.cpp", directory: "/home/cs22mtech12008/UseAfterScope/Scripts", checksumkind: CSK_MD5, checksum: "497a25456769e0467ebc136d49f1b60d")
!4 = !{!5}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Base", file: !7, line: 5, size: 128, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !8, vtableHolder: !6, identifier: "_ZTS4Base")
!7 = !DIFile(filename: "Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Inheritance_with_data/vtable_if_else_2_UAS.cpp", directory: "/home/cs22mtech12008", checksumkind: CSK_MD5, checksum: "497a25456769e0467ebc136d49f1b60d")
!8 = !{!9, !15, !16, !20, !21, !22, !23}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$Base", scope: !7, file: !7, baseType: !10, size: 64, flags: DIFlagArtificial)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "__vtbl_ptr_type", baseType: !12, size: 64)
!12 = !DISubroutineType(types: !13)
!13 = !{!14}
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !6, file: !7, line: 7, baseType: !14, size: 32, offset: 64, flags: DIFlagPublic)
!16 = !DISubprogram(name: "func1", linkageName: "_ZN4Base5func1Ev", scope: !6, file: !7, line: 8, type: !17, scopeLine: 8, containingType: !6, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!17 = !DISubroutineType(types: !18)
!18 = !{null, !19}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!20 = !DISubprogram(name: "func2", linkageName: "_ZN4Base5func2Ev", scope: !6, file: !7, line: 11, type: !17, scopeLine: 11, containingType: !6, virtualIndex: 1, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!21 = !DISubprogram(name: "func3", linkageName: "_ZN4Base5func3Ev", scope: !6, file: !7, line: 14, type: !17, scopeLine: 14, containingType: !6, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!22 = !DISubprogram(name: "func4", linkageName: "_ZN4Base5func4Ev", scope: !6, file: !7, line: 17, type: !17, scopeLine: 17, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!23 = !DISubprogram(name: "func5", linkageName: "_ZN4Base5func5Ev", scope: !6, file: !7, line: 20, type: !17, scopeLine: 20, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!24 = !{!0, !25, !30, !37, !42, !44, !46, !48, !50, !55, !57}
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(name: "t1", scope: !2, file: !7, line: 46, type: !27, isLocal: false, isDefinition: true)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !28, line: 27, baseType: !29)
!28 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "2d764266ce95ab26d4a4767c2ec78176")
!29 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(scope: null, file: !7, line: 18, type: !32, isLocal: true, isDefinition: true)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 96, elements: !35)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!34 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!35 = !{!36}
!36 = !DISubrange(count: 12)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !7, line: 18, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 48, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 6)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !7, line: 21, type: !32, isLocal: true, isDefinition: true)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(scope: null, file: !7, line: 9, type: !32, isLocal: true, isDefinition: true)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(scope: null, file: !7, line: 12, type: !32, isLocal: true, isDefinition: true)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(scope: null, file: !7, line: 15, type: !32, isLocal: true, isDefinition: true)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(scope: null, file: !7, line: 29, type: !52, isLocal: true, isDefinition: true)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 120, elements: !53)
!53 = !{!54}
!54 = !DISubrange(count: 15)
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(scope: null, file: !7, line: 32, type: !52, isLocal: true, isDefinition: true)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(scope: null, file: !7, line: 35, type: !52, isLocal: true, isDefinition: true)
!59 = !{!60, !79, !82, !87, !95, !103, !107, !114, !118, !122, !124, !126, !130, !140, !144, !150, !156, !158, !162, !166, !170, !174, !187, !189, !193, !197, !201, !203, !209, !213, !217, !219, !221, !225, !233, !237, !241, !245, !247, !253, !255, !262, !267, !271, !276, !280, !284, !288, !290, !292, !296, !300, !304, !306, !310, !314, !316, !318, !322, !328, !333, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !352, !356, !361, !365, !369, !374, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !402, !404, !406, !410, !414, !418, !424, !428, !432, !437, !439, !443, !447, !451, !461, !463, !467, !471, !475, !479, !483, !487, !491, !495, !499, !503, !507, !509, !511, !515, !519, !525, !529, !533, !535, !539, !543, !549, !551, !555, !559, !563, !567, !571, !575, !579, !580, !581, !582, !584, !585, !586, !587, !588, !589, !590, !594, !600, !605, !609, !611, !613, !615, !617, !624, !628, !632, !636, !640, !644, !649, !653, !655, !659, !665, !669, !674, !676, !678, !682, !686, !688, !690, !692, !694, !698, !700, !702, !706, !710, !714, !718, !722, !726, !728, !732, !736, !740, !744, !746, !748, !752, !756, !757, !758, !759, !760, !761, !769, !777, !780, !781, !783, !785, !787, !789, !793, !795, !797, !799, !801, !803, !805, !807, !809, !813, !817, !819, !823}
!60 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !62, file: !78, line: 64)
!61 = !DINamespace(name: "std", scope: null)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !63, line: 6, baseType: !64)
!63 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !65, line: 21, baseType: !66)
!65 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !65, line: 13, size: 64, flags: DIFlagTypePassByValue, elements: !67, identifier: "_ZTS11__mbstate_t")
!67 = !{!68, !69}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !66, file: !65, line: 15, baseType: !14, size: 32)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !66, file: !65, line: 20, baseType: !70, size: 32, offset: 32)
!70 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !66, file: !65, line: 16, size: 32, flags: DIFlagTypePassByValue, elements: !71, identifier: "_ZTSN11__mbstate_tUt_E")
!71 = !{!72, !74}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !70, file: !65, line: 18, baseType: !73, size: 32)
!73 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !70, file: !65, line: 19, baseType: !75, size: 32)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 32, elements: !76)
!76 = !{!77}
!77 = !DISubrange(count: 4)
!78 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cwchar", directory: "")
!79 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !80, file: !78, line: 141)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !81, line: 20, baseType: !73)
!81 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!82 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !83, file: !78, line: 143)
!83 = !DISubprogram(name: "btowc", scope: !84, file: !84, line: 284, type: !85, flags: DIFlagPrototyped, spFlags: 0)
!84 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "8900d9ecbbe40d052c41becfbc5b5531")
!85 = !DISubroutineType(types: !86)
!86 = !{!80, !14}
!87 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !88, file: !78, line: 144)
!88 = !DISubprogram(name: "fgetwc", scope: !84, file: !84, line: 726, type: !89, flags: DIFlagPrototyped, spFlags: 0)
!89 = !DISubroutineType(types: !90)
!90 = !{!80, !91}
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !93, line: 5, baseType: !94)
!93 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "72a8fe90981f484acae7c6f3dfc5c2b7")
!94 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !93, line: 4, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS8_IO_FILE")
!95 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !96, file: !78, line: 145)
!96 = !DISubprogram(name: "fgetws", scope: !84, file: !84, line: 755, type: !97, flags: DIFlagPrototyped, spFlags: 0)
!97 = !DISubroutineType(types: !98)
!98 = !{!99, !101, !14, !102}
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!101 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !99)
!102 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !91)
!103 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !104, file: !78, line: 146)
!104 = !DISubprogram(name: "fputwc", scope: !84, file: !84, line: 740, type: !105, flags: DIFlagPrototyped, spFlags: 0)
!105 = !DISubroutineType(types: !106)
!106 = !{!80, !100, !91}
!107 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !108, file: !78, line: 147)
!108 = !DISubprogram(name: "fputws", scope: !84, file: !84, line: 762, type: !109, flags: DIFlagPrototyped, spFlags: 0)
!109 = !DISubroutineType(types: !110)
!110 = !{!14, !111, !102}
!111 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !112)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!114 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !115, file: !78, line: 148)
!115 = !DISubprogram(name: "fwide", scope: !84, file: !84, line: 573, type: !116, flags: DIFlagPrototyped, spFlags: 0)
!116 = !DISubroutineType(types: !117)
!117 = !{!14, !91, !14}
!118 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !119, file: !78, line: 149)
!119 = !DISubprogram(name: "fwprintf", scope: !84, file: !84, line: 580, type: !120, flags: DIFlagPrototyped, spFlags: 0)
!120 = !DISubroutineType(types: !121)
!121 = !{!14, !102, !111, null}
!122 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !123, file: !78, line: 150)
!123 = !DISubprogram(name: "fwscanf", linkageName: "__isoc99_fwscanf", scope: !84, file: !84, line: 640, type: !120, flags: DIFlagPrototyped, spFlags: 0)
!124 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !125, file: !78, line: 151)
!125 = !DISubprogram(name: "getwc", scope: !84, file: !84, line: 727, type: !89, flags: DIFlagPrototyped, spFlags: 0)
!126 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !127, file: !78, line: 152)
!127 = !DISubprogram(name: "getwchar", scope: !84, file: !84, line: 733, type: !128, flags: DIFlagPrototyped, spFlags: 0)
!128 = !DISubroutineType(types: !129)
!129 = !{!80}
!130 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !131, file: !78, line: 153)
!131 = !DISubprogram(name: "mbrlen", scope: !84, file: !84, line: 307, type: !132, flags: DIFlagPrototyped, spFlags: 0)
!132 = !DISubroutineType(types: !133)
!133 = !{!134, !136, !134, !138}
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !135, line: 46, baseType: !29)
!135 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/cs22mtech12008", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!136 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !137)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !139)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!140 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !141, file: !78, line: 154)
!141 = !DISubprogram(name: "mbrtowc", scope: !84, file: !84, line: 296, type: !142, flags: DIFlagPrototyped, spFlags: 0)
!142 = !DISubroutineType(types: !143)
!143 = !{!134, !101, !136, !134, !138}
!144 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !145, file: !78, line: 155)
!145 = !DISubprogram(name: "mbsinit", scope: !84, file: !84, line: 292, type: !146, flags: DIFlagPrototyped, spFlags: 0)
!146 = !DISubroutineType(types: !147)
!147 = !{!14, !148}
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!150 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !151, file: !78, line: 156)
!151 = !DISubprogram(name: "mbsrtowcs", scope: !84, file: !84, line: 337, type: !152, flags: DIFlagPrototyped, spFlags: 0)
!152 = !DISubroutineType(types: !153)
!153 = !{!134, !101, !154, !134, !138}
!154 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !155)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!156 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !157, file: !78, line: 157)
!157 = !DISubprogram(name: "putwc", scope: !84, file: !84, line: 741, type: !105, flags: DIFlagPrototyped, spFlags: 0)
!158 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !159, file: !78, line: 158)
!159 = !DISubprogram(name: "putwchar", scope: !84, file: !84, line: 747, type: !160, flags: DIFlagPrototyped, spFlags: 0)
!160 = !DISubroutineType(types: !161)
!161 = !{!80, !100}
!162 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !163, file: !78, line: 160)
!163 = !DISubprogram(name: "swprintf", scope: !84, file: !84, line: 590, type: !164, flags: DIFlagPrototyped, spFlags: 0)
!164 = !DISubroutineType(types: !165)
!165 = !{!14, !101, !134, !111, null}
!166 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !167, file: !78, line: 162)
!167 = !DISubprogram(name: "swscanf", linkageName: "__isoc99_swscanf", scope: !84, file: !84, line: 647, type: !168, flags: DIFlagPrototyped, spFlags: 0)
!168 = !DISubroutineType(types: !169)
!169 = !{!14, !111, !111, null}
!170 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !171, file: !78, line: 163)
!171 = !DISubprogram(name: "ungetwc", scope: !84, file: !84, line: 770, type: !172, flags: DIFlagPrototyped, spFlags: 0)
!172 = !DISubroutineType(types: !173)
!173 = !{!80, !80, !91}
!174 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !175, file: !78, line: 164)
!175 = !DISubprogram(name: "vfwprintf", scope: !84, file: !84, line: 598, type: !176, flags: DIFlagPrototyped, spFlags: 0)
!176 = !DISubroutineType(types: !177)
!177 = !{!14, !102, !111, !178}
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, flags: DIFlagTypePassByValue, elements: !180, identifier: "_ZTS13__va_list_tag")
!180 = !{!181, !183, !184, !186}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !179, file: !182, baseType: !73, size: 32)
!182 = !DIFile(filename: "Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Inheritance_with_data/vtable_if_else_2_UAS.cpp", directory: "/home/cs22mtech12008")
!183 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !179, file: !182, baseType: !73, size: 32, offset: 32)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !179, file: !182, baseType: !185, size: 64, offset: 64)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !179, file: !182, baseType: !185, size: 64, offset: 128)
!187 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !188, file: !78, line: 166)
!188 = !DISubprogram(name: "vfwscanf", linkageName: "__isoc99_vfwscanf", scope: !84, file: !84, line: 693, type: !176, flags: DIFlagPrototyped, spFlags: 0)
!189 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !190, file: !78, line: 169)
!190 = !DISubprogram(name: "vswprintf", scope: !84, file: !84, line: 611, type: !191, flags: DIFlagPrototyped, spFlags: 0)
!191 = !DISubroutineType(types: !192)
!192 = !{!14, !101, !134, !111, !178}
!193 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !194, file: !78, line: 172)
!194 = !DISubprogram(name: "vswscanf", linkageName: "__isoc99_vswscanf", scope: !84, file: !84, line: 700, type: !195, flags: DIFlagPrototyped, spFlags: 0)
!195 = !DISubroutineType(types: !196)
!196 = !{!14, !111, !111, !178}
!197 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !198, file: !78, line: 174)
!198 = !DISubprogram(name: "vwprintf", scope: !84, file: !84, line: 606, type: !199, flags: DIFlagPrototyped, spFlags: 0)
!199 = !DISubroutineType(types: !200)
!200 = !{!14, !111, !178}
!201 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !202, file: !78, line: 176)
!202 = !DISubprogram(name: "vwscanf", linkageName: "__isoc99_vwscanf", scope: !84, file: !84, line: 697, type: !199, flags: DIFlagPrototyped, spFlags: 0)
!203 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !204, file: !78, line: 178)
!204 = !DISubprogram(name: "wcrtomb", scope: !84, file: !84, line: 301, type: !205, flags: DIFlagPrototyped, spFlags: 0)
!205 = !DISubroutineType(types: !206)
!206 = !{!134, !207, !100, !138}
!207 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !208)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!209 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !210, file: !78, line: 179)
!210 = !DISubprogram(name: "wcscat", scope: !84, file: !84, line: 97, type: !211, flags: DIFlagPrototyped, spFlags: 0)
!211 = !DISubroutineType(types: !212)
!212 = !{!99, !101, !111}
!213 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !214, file: !78, line: 180)
!214 = !DISubprogram(name: "wcscmp", scope: !84, file: !84, line: 106, type: !215, flags: DIFlagPrototyped, spFlags: 0)
!215 = !DISubroutineType(types: !216)
!216 = !{!14, !112, !112}
!217 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !218, file: !78, line: 181)
!218 = !DISubprogram(name: "wcscoll", scope: !84, file: !84, line: 131, type: !215, flags: DIFlagPrototyped, spFlags: 0)
!219 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !220, file: !78, line: 182)
!220 = !DISubprogram(name: "wcscpy", scope: !84, file: !84, line: 87, type: !211, flags: DIFlagPrototyped, spFlags: 0)
!221 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !222, file: !78, line: 183)
!222 = !DISubprogram(name: "wcscspn", scope: !84, file: !84, line: 187, type: !223, flags: DIFlagPrototyped, spFlags: 0)
!223 = !DISubroutineType(types: !224)
!224 = !{!134, !112, !112}
!225 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !226, file: !78, line: 184)
!226 = !DISubprogram(name: "wcsftime", scope: !84, file: !84, line: 834, type: !227, flags: DIFlagPrototyped, spFlags: 0)
!227 = !DISubroutineType(types: !228)
!228 = !{!134, !101, !134, !111, !229}
!229 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !230)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !232)
!232 = !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !84, line: 83, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS2tm")
!233 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !234, file: !78, line: 185)
!234 = !DISubprogram(name: "wcslen", scope: !84, file: !84, line: 222, type: !235, flags: DIFlagPrototyped, spFlags: 0)
!235 = !DISubroutineType(types: !236)
!236 = !{!134, !112}
!237 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !238, file: !78, line: 186)
!238 = !DISubprogram(name: "wcsncat", scope: !84, file: !84, line: 101, type: !239, flags: DIFlagPrototyped, spFlags: 0)
!239 = !DISubroutineType(types: !240)
!240 = !{!99, !101, !111, !134}
!241 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !242, file: !78, line: 187)
!242 = !DISubprogram(name: "wcsncmp", scope: !84, file: !84, line: 109, type: !243, flags: DIFlagPrototyped, spFlags: 0)
!243 = !DISubroutineType(types: !244)
!244 = !{!14, !112, !112, !134}
!245 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !246, file: !78, line: 188)
!246 = !DISubprogram(name: "wcsncpy", scope: !84, file: !84, line: 92, type: !239, flags: DIFlagPrototyped, spFlags: 0)
!247 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !248, file: !78, line: 189)
!248 = !DISubprogram(name: "wcsrtombs", scope: !84, file: !84, line: 343, type: !249, flags: DIFlagPrototyped, spFlags: 0)
!249 = !DISubroutineType(types: !250)
!250 = !{!134, !207, !251, !134, !138}
!251 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !252)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!253 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !254, file: !78, line: 190)
!254 = !DISubprogram(name: "wcsspn", scope: !84, file: !84, line: 191, type: !223, flags: DIFlagPrototyped, spFlags: 0)
!255 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !256, file: !78, line: 191)
!256 = !DISubprogram(name: "wcstod", scope: !84, file: !84, line: 377, type: !257, flags: DIFlagPrototyped, spFlags: 0)
!257 = !DISubroutineType(types: !258)
!258 = !{!259, !111, !260}
!259 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!260 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !261)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!262 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !263, file: !78, line: 193)
!263 = !DISubprogram(name: "wcstof", scope: !84, file: !84, line: 382, type: !264, flags: DIFlagPrototyped, spFlags: 0)
!264 = !DISubroutineType(types: !265)
!265 = !{!266, !111, !260}
!266 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!267 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !268, file: !78, line: 195)
!268 = !DISubprogram(name: "wcstok", scope: !84, file: !84, line: 217, type: !269, flags: DIFlagPrototyped, spFlags: 0)
!269 = !DISubroutineType(types: !270)
!270 = !{!99, !101, !111, !260}
!271 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !272, file: !78, line: 196)
!272 = !DISubprogram(name: "wcstol", scope: !84, file: !84, line: 428, type: !273, flags: DIFlagPrototyped, spFlags: 0)
!273 = !DISubroutineType(types: !274)
!274 = !{!275, !111, !260, !14}
!275 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!276 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !277, file: !78, line: 197)
!277 = !DISubprogram(name: "wcstoul", scope: !84, file: !84, line: 433, type: !278, flags: DIFlagPrototyped, spFlags: 0)
!278 = !DISubroutineType(types: !279)
!279 = !{!29, !111, !260, !14}
!280 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !281, file: !78, line: 198)
!281 = !DISubprogram(name: "wcsxfrm", scope: !84, file: !84, line: 135, type: !282, flags: DIFlagPrototyped, spFlags: 0)
!282 = !DISubroutineType(types: !283)
!283 = !{!134, !101, !111, !134}
!284 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !285, file: !78, line: 199)
!285 = !DISubprogram(name: "wctob", scope: !84, file: !84, line: 288, type: !286, flags: DIFlagPrototyped, spFlags: 0)
!286 = !DISubroutineType(types: !287)
!287 = !{!14, !80}
!288 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !289, file: !78, line: 200)
!289 = !DISubprogram(name: "wmemcmp", scope: !84, file: !84, line: 258, type: !243, flags: DIFlagPrototyped, spFlags: 0)
!290 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !291, file: !78, line: 201)
!291 = !DISubprogram(name: "wmemcpy", scope: !84, file: !84, line: 262, type: !239, flags: DIFlagPrototyped, spFlags: 0)
!292 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !293, file: !78, line: 202)
!293 = !DISubprogram(name: "wmemmove", scope: !84, file: !84, line: 267, type: !294, flags: DIFlagPrototyped, spFlags: 0)
!294 = !DISubroutineType(types: !295)
!295 = !{!99, !99, !112, !134}
!296 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !297, file: !78, line: 203)
!297 = !DISubprogram(name: "wmemset", scope: !84, file: !84, line: 271, type: !298, flags: DIFlagPrototyped, spFlags: 0)
!298 = !DISubroutineType(types: !299)
!299 = !{!99, !99, !100, !134}
!300 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !301, file: !78, line: 204)
!301 = !DISubprogram(name: "wprintf", scope: !84, file: !84, line: 587, type: !302, flags: DIFlagPrototyped, spFlags: 0)
!302 = !DISubroutineType(types: !303)
!303 = !{!14, !111, null}
!304 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !305, file: !78, line: 205)
!305 = !DISubprogram(name: "wscanf", linkageName: "__isoc99_wscanf", scope: !84, file: !84, line: 644, type: !302, flags: DIFlagPrototyped, spFlags: 0)
!306 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !307, file: !78, line: 206)
!307 = !DISubprogram(name: "wcschr", scope: !84, file: !84, line: 164, type: !308, flags: DIFlagPrototyped, spFlags: 0)
!308 = !DISubroutineType(types: !309)
!309 = !{!99, !112, !100}
!310 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !311, file: !78, line: 207)
!311 = !DISubprogram(name: "wcspbrk", scope: !84, file: !84, line: 201, type: !312, flags: DIFlagPrototyped, spFlags: 0)
!312 = !DISubroutineType(types: !313)
!313 = !{!99, !112, !112}
!314 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !315, file: !78, line: 208)
!315 = !DISubprogram(name: "wcsrchr", scope: !84, file: !84, line: 174, type: !308, flags: DIFlagPrototyped, spFlags: 0)
!316 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !317, file: !78, line: 209)
!317 = !DISubprogram(name: "wcsstr", scope: !84, file: !84, line: 212, type: !312, flags: DIFlagPrototyped, spFlags: 0)
!318 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !319, file: !78, line: 210)
!319 = !DISubprogram(name: "wmemchr", scope: !84, file: !84, line: 253, type: !320, flags: DIFlagPrototyped, spFlags: 0)
!320 = !DISubroutineType(types: !321)
!321 = !{!99, !112, !100, !134}
!322 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !323, entity: !324, file: !78, line: 251)
!323 = !DINamespace(name: "__gnu_cxx", scope: null)
!324 = !DISubprogram(name: "wcstold", scope: !84, file: !84, line: 384, type: !325, flags: DIFlagPrototyped, spFlags: 0)
!325 = !DISubroutineType(types: !326)
!326 = !{!327, !111, !260}
!327 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!328 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !323, entity: !329, file: !78, line: 260)
!329 = !DISubprogram(name: "wcstoll", scope: !84, file: !84, line: 441, type: !330, flags: DIFlagPrototyped, spFlags: 0)
!330 = !DISubroutineType(types: !331)
!331 = !{!332, !111, !260, !14}
!332 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!333 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !323, entity: !334, file: !78, line: 261)
!334 = !DISubprogram(name: "wcstoull", scope: !84, file: !84, line: 448, type: !335, flags: DIFlagPrototyped, spFlags: 0)
!335 = !DISubroutineType(types: !336)
!336 = !{!337, !111, !260, !14}
!337 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!338 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !324, file: !78, line: 267)
!339 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !329, file: !78, line: 268)
!340 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !334, file: !78, line: 269)
!341 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !263, file: !78, line: 283)
!342 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !188, file: !78, line: 286)
!343 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !194, file: !78, line: 289)
!344 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !202, file: !78, line: 292)
!345 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !324, file: !78, line: 296)
!346 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !329, file: !78, line: 297)
!347 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !334, file: !78, line: 298)
!348 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !349, file: !350, line: 66)
!349 = !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !351, file: !350, line: 97, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!350 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/exception_ptr.h", directory: "", checksumkind: CSK_MD5, checksum: "314ad14748ccb9ff85c65d17ebb0828b")
!351 = !DINamespace(name: "__exception_ptr", scope: !61)
!352 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !351, entity: !353, file: !350, line: 85)
!353 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !61, file: !350, line: 81, type: !354, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!354 = !DISubroutineType(types: !355)
!355 = !{null, !349}
!356 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !357, file: !350, line: 243)
!357 = !DISubprogram(name: "swap", linkageName: "_ZNSt15__exception_ptr4swapERNS_13exception_ptrES1_", scope: !351, file: !350, line: 230, type: !358, flags: DIFlagPrototyped, spFlags: 0)
!358 = !DISubroutineType(types: !359)
!359 = !{null, !360, !360}
!360 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !349, size: 64)
!361 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !362, file: !364, line: 53)
!362 = !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !363, line: 51, size: 768, flags: DIFlagFwdDecl, identifier: "_ZTS5lconv")
!363 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "0cf373fc44eed8073800bdb9da87b72f")
!364 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/clocale", directory: "")
!365 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !366, file: !364, line: 54)
!366 = !DISubprogram(name: "setlocale", scope: !363, file: !363, line: 122, type: !367, flags: DIFlagPrototyped, spFlags: 0)
!367 = !DISubroutineType(types: !368)
!368 = !{!208, !14, !137}
!369 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !370, file: !364, line: 55)
!370 = !DISubprogram(name: "localeconv", scope: !363, file: !363, line: 125, type: !371, flags: DIFlagPrototyped, spFlags: 0)
!371 = !DISubroutineType(types: !372)
!372 = !{!373}
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!374 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !375, file: !379, line: 64)
!375 = !DISubprogram(name: "isalnum", scope: !376, file: !376, line: 108, type: !377, flags: DIFlagPrototyped, spFlags: 0)
!376 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "36575f934ef4fe7e9d50a3cb17bd5c66")
!377 = !DISubroutineType(types: !378)
!378 = !{!14, !14}
!379 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cctype", directory: "")
!380 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !381, file: !379, line: 65)
!381 = !DISubprogram(name: "isalpha", scope: !376, file: !376, line: 109, type: !377, flags: DIFlagPrototyped, spFlags: 0)
!382 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !383, file: !379, line: 66)
!383 = !DISubprogram(name: "iscntrl", scope: !376, file: !376, line: 110, type: !377, flags: DIFlagPrototyped, spFlags: 0)
!384 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !385, file: !379, line: 67)
!385 = !DISubprogram(name: "isdigit", scope: !376, file: !376, line: 111, type: !377, flags: DIFlagPrototyped, spFlags: 0)
!386 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !387, file: !379, line: 68)
!387 = !DISubprogram(name: "isgraph", scope: !376, file: !376, line: 113, type: !377, flags: DIFlagPrototyped, spFlags: 0)
!388 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !389, file: !379, line: 69)
!389 = !DISubprogram(name: "islower", scope: !376, file: !376, line: 112, type: !377, flags: DIFlagPrototyped, spFlags: 0)
!390 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !391, file: !379, line: 70)
!391 = !DISubprogram(name: "isprint", scope: !376, file: !376, line: 114, type: !377, flags: DIFlagPrototyped, spFlags: 0)
!392 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !393, file: !379, line: 71)
!393 = !DISubprogram(name: "ispunct", scope: !376, file: !376, line: 115, type: !377, flags: DIFlagPrototyped, spFlags: 0)
!394 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !395, file: !379, line: 72)
!395 = !DISubprogram(name: "isspace", scope: !376, file: !376, line: 116, type: !377, flags: DIFlagPrototyped, spFlags: 0)
!396 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !397, file: !379, line: 73)
!397 = !DISubprogram(name: "isupper", scope: !376, file: !376, line: 117, type: !377, flags: DIFlagPrototyped, spFlags: 0)
!398 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !399, file: !379, line: 74)
!399 = !DISubprogram(name: "isxdigit", scope: !376, file: !376, line: 118, type: !377, flags: DIFlagPrototyped, spFlags: 0)
!400 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !401, file: !379, line: 75)
!401 = !DISubprogram(name: "tolower", scope: !376, file: !376, line: 122, type: !377, flags: DIFlagPrototyped, spFlags: 0)
!402 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !403, file: !379, line: 76)
!403 = !DISubprogram(name: "toupper", scope: !376, file: !376, line: 125, type: !377, flags: DIFlagPrototyped, spFlags: 0)
!404 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !405, file: !379, line: 87)
!405 = !DISubprogram(name: "isblank", scope: !376, file: !376, line: 130, type: !377, flags: DIFlagPrototyped, spFlags: 0)
!406 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !407, entity: !408, file: !409, line: 58)
!407 = !DINamespace(name: "__gnu_debug", scope: null)
!408 = !DINamespace(name: "__debug", scope: !61)
!409 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/debug/debug.h", directory: "", checksumkind: CSK_MD5, checksum: "752210a319f5f5d356cc29cd1ce3cdc7")
!410 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !411, file: !413, line: 52)
!411 = !DISubprogram(name: "abs", scope: !412, file: !412, line: 840, type: !377, flags: DIFlagPrototyped, spFlags: 0)
!412 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!413 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/std_abs.h", directory: "")
!414 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !415, file: !417, line: 131)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !412, line: 62, baseType: !416)
!416 = !DICompositeType(tag: DW_TAG_structure_type, file: !412, line: 58, size: 64, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!417 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cstdlib", directory: "")
!418 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !419, file: !417, line: 132)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !412, line: 70, baseType: !420)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !412, line: 66, size: 128, flags: DIFlagTypePassByValue, elements: !421, identifier: "_ZTS6ldiv_t")
!421 = !{!422, !423}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !420, file: !412, line: 68, baseType: !275, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !420, file: !412, line: 69, baseType: !275, size: 64, offset: 64)
!424 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !425, file: !417, line: 134)
!425 = !DISubprogram(name: "abort", scope: !412, file: !412, line: 591, type: !426, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!426 = !DISubroutineType(types: !427)
!427 = !{null}
!428 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !429, file: !417, line: 136)
!429 = !DISubprogram(name: "aligned_alloc", scope: !412, file: !412, line: 586, type: !430, flags: DIFlagPrototyped, spFlags: 0)
!430 = !DISubroutineType(types: !431)
!431 = !{!185, !134, !134}
!432 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !433, file: !417, line: 138)
!433 = !DISubprogram(name: "atexit", scope: !412, file: !412, line: 595, type: !434, flags: DIFlagPrototyped, spFlags: 0)
!434 = !DISubroutineType(types: !435)
!435 = !{!14, !436}
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!437 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !438, file: !417, line: 141)
!438 = !DISubprogram(name: "at_quick_exit", scope: !412, file: !412, line: 600, type: !434, flags: DIFlagPrototyped, spFlags: 0)
!439 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !440, file: !417, line: 144)
!440 = !DISubprogram(name: "atof", scope: !412, file: !412, line: 101, type: !441, flags: DIFlagPrototyped, spFlags: 0)
!441 = !DISubroutineType(types: !442)
!442 = !{!259, !137}
!443 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !444, file: !417, line: 145)
!444 = !DISubprogram(name: "atoi", scope: !412, file: !412, line: 104, type: !445, flags: DIFlagPrototyped, spFlags: 0)
!445 = !DISubroutineType(types: !446)
!446 = !{!14, !137}
!447 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !448, file: !417, line: 146)
!448 = !DISubprogram(name: "atol", scope: !412, file: !412, line: 107, type: !449, flags: DIFlagPrototyped, spFlags: 0)
!449 = !DISubroutineType(types: !450)
!450 = !{!275, !137}
!451 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !452, file: !417, line: 147)
!452 = !DISubprogram(name: "bsearch", scope: !412, file: !412, line: 820, type: !453, flags: DIFlagPrototyped, spFlags: 0)
!453 = !DISubroutineType(types: !454)
!454 = !{!185, !455, !455, !134, !134, !457}
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !412, line: 808, baseType: !458)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DISubroutineType(types: !460)
!460 = !{!14, !455, !455}
!461 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !462, file: !417, line: 148)
!462 = !DISubprogram(name: "calloc", scope: !412, file: !412, line: 542, type: !430, flags: DIFlagPrototyped, spFlags: 0)
!463 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !464, file: !417, line: 149)
!464 = !DISubprogram(name: "div", scope: !412, file: !412, line: 852, type: !465, flags: DIFlagPrototyped, spFlags: 0)
!465 = !DISubroutineType(types: !466)
!466 = !{!415, !14, !14}
!467 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !468, file: !417, line: 150)
!468 = !DISubprogram(name: "exit", scope: !412, file: !412, line: 617, type: !469, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!469 = !DISubroutineType(types: !470)
!470 = !{null, !14}
!471 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !472, file: !417, line: 151)
!472 = !DISubprogram(name: "free", scope: !412, file: !412, line: 565, type: !473, flags: DIFlagPrototyped, spFlags: 0)
!473 = !DISubroutineType(types: !474)
!474 = !{null, !185}
!475 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !476, file: !417, line: 152)
!476 = !DISubprogram(name: "getenv", scope: !412, file: !412, line: 634, type: !477, flags: DIFlagPrototyped, spFlags: 0)
!477 = !DISubroutineType(types: !478)
!478 = !{!208, !137}
!479 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !480, file: !417, line: 153)
!480 = !DISubprogram(name: "labs", scope: !412, file: !412, line: 841, type: !481, flags: DIFlagPrototyped, spFlags: 0)
!481 = !DISubroutineType(types: !482)
!482 = !{!275, !275}
!483 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !484, file: !417, line: 154)
!484 = !DISubprogram(name: "ldiv", scope: !412, file: !412, line: 854, type: !485, flags: DIFlagPrototyped, spFlags: 0)
!485 = !DISubroutineType(types: !486)
!486 = !{!419, !275, !275}
!487 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !488, file: !417, line: 155)
!488 = !DISubprogram(name: "malloc", scope: !412, file: !412, line: 539, type: !489, flags: DIFlagPrototyped, spFlags: 0)
!489 = !DISubroutineType(types: !490)
!490 = !{!185, !134}
!491 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !492, file: !417, line: 157)
!492 = !DISubprogram(name: "mblen", scope: !412, file: !412, line: 922, type: !493, flags: DIFlagPrototyped, spFlags: 0)
!493 = !DISubroutineType(types: !494)
!494 = !{!14, !137, !134}
!495 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !496, file: !417, line: 158)
!496 = !DISubprogram(name: "mbstowcs", scope: !412, file: !412, line: 933, type: !497, flags: DIFlagPrototyped, spFlags: 0)
!497 = !DISubroutineType(types: !498)
!498 = !{!134, !101, !136, !134}
!499 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !500, file: !417, line: 159)
!500 = !DISubprogram(name: "mbtowc", scope: !412, file: !412, line: 925, type: !501, flags: DIFlagPrototyped, spFlags: 0)
!501 = !DISubroutineType(types: !502)
!502 = !{!14, !101, !136, !134}
!503 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !504, file: !417, line: 161)
!504 = !DISubprogram(name: "qsort", scope: !412, file: !412, line: 830, type: !505, flags: DIFlagPrototyped, spFlags: 0)
!505 = !DISubroutineType(types: !506)
!506 = !{null, !185, !134, !134, !457}
!507 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !508, file: !417, line: 164)
!508 = !DISubprogram(name: "quick_exit", scope: !412, file: !412, line: 623, type: !469, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!509 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !510, file: !417, line: 167)
!510 = !DISubprogram(name: "rand", scope: !412, file: !412, line: 453, type: !12, flags: DIFlagPrototyped, spFlags: 0)
!511 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !512, file: !417, line: 168)
!512 = !DISubprogram(name: "realloc", scope: !412, file: !412, line: 550, type: !513, flags: DIFlagPrototyped, spFlags: 0)
!513 = !DISubroutineType(types: !514)
!514 = !{!185, !185, !134}
!515 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !516, file: !417, line: 169)
!516 = !DISubprogram(name: "srand", scope: !412, file: !412, line: 455, type: !517, flags: DIFlagPrototyped, spFlags: 0)
!517 = !DISubroutineType(types: !518)
!518 = !{null, !73}
!519 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !520, file: !417, line: 170)
!520 = !DISubprogram(name: "strtod", scope: !412, file: !412, line: 117, type: !521, flags: DIFlagPrototyped, spFlags: 0)
!521 = !DISubroutineType(types: !522)
!522 = !{!259, !136, !523}
!523 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !524)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!525 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !526, file: !417, line: 171)
!526 = !DISubprogram(name: "strtol", scope: !412, file: !412, line: 176, type: !527, flags: DIFlagPrototyped, spFlags: 0)
!527 = !DISubroutineType(types: !528)
!528 = !{!275, !136, !523, !14}
!529 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !530, file: !417, line: 172)
!530 = !DISubprogram(name: "strtoul", scope: !412, file: !412, line: 180, type: !531, flags: DIFlagPrototyped, spFlags: 0)
!531 = !DISubroutineType(types: !532)
!532 = !{!29, !136, !523, !14}
!533 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !534, file: !417, line: 173)
!534 = !DISubprogram(name: "system", scope: !412, file: !412, line: 784, type: !445, flags: DIFlagPrototyped, spFlags: 0)
!535 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !536, file: !417, line: 175)
!536 = !DISubprogram(name: "wcstombs", scope: !412, file: !412, line: 936, type: !537, flags: DIFlagPrototyped, spFlags: 0)
!537 = !DISubroutineType(types: !538)
!538 = !{!134, !207, !111, !134}
!539 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !540, file: !417, line: 176)
!540 = !DISubprogram(name: "wctomb", scope: !412, file: !412, line: 929, type: !541, flags: DIFlagPrototyped, spFlags: 0)
!541 = !DISubroutineType(types: !542)
!542 = !{!14, !208, !100}
!543 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !323, entity: !544, file: !417, line: 204)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !412, line: 80, baseType: !545)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !412, line: 76, size: 128, flags: DIFlagTypePassByValue, elements: !546, identifier: "_ZTS7lldiv_t")
!546 = !{!547, !548}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !545, file: !412, line: 78, baseType: !332, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !545, file: !412, line: 79, baseType: !332, size: 64, offset: 64)
!549 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !323, entity: !550, file: !417, line: 210)
!550 = !DISubprogram(name: "_Exit", scope: !412, file: !412, line: 629, type: !469, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!551 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !323, entity: !552, file: !417, line: 214)
!552 = !DISubprogram(name: "llabs", scope: !412, file: !412, line: 844, type: !553, flags: DIFlagPrototyped, spFlags: 0)
!553 = !DISubroutineType(types: !554)
!554 = !{!332, !332}
!555 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !323, entity: !556, file: !417, line: 220)
!556 = !DISubprogram(name: "lldiv", scope: !412, file: !412, line: 858, type: !557, flags: DIFlagPrototyped, spFlags: 0)
!557 = !DISubroutineType(types: !558)
!558 = !{!544, !332, !332}
!559 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !323, entity: !560, file: !417, line: 231)
!560 = !DISubprogram(name: "atoll", scope: !412, file: !412, line: 112, type: !561, flags: DIFlagPrototyped, spFlags: 0)
!561 = !DISubroutineType(types: !562)
!562 = !{!332, !137}
!563 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !323, entity: !564, file: !417, line: 232)
!564 = !DISubprogram(name: "strtoll", scope: !412, file: !412, line: 200, type: !565, flags: DIFlagPrototyped, spFlags: 0)
!565 = !DISubroutineType(types: !566)
!566 = !{!332, !136, !523, !14}
!567 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !323, entity: !568, file: !417, line: 233)
!568 = !DISubprogram(name: "strtoull", scope: !412, file: !412, line: 205, type: !569, flags: DIFlagPrototyped, spFlags: 0)
!569 = !DISubroutineType(types: !570)
!570 = !{!337, !136, !523, !14}
!571 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !323, entity: !572, file: !417, line: 235)
!572 = !DISubprogram(name: "strtof", scope: !412, file: !412, line: 123, type: !573, flags: DIFlagPrototyped, spFlags: 0)
!573 = !DISubroutineType(types: !574)
!574 = !{!266, !136, !523}
!575 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !323, entity: !576, file: !417, line: 236)
!576 = !DISubprogram(name: "strtold", scope: !412, file: !412, line: 126, type: !577, flags: DIFlagPrototyped, spFlags: 0)
!577 = !DISubroutineType(types: !578)
!578 = !{!327, !136, !523}
!579 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !544, file: !417, line: 244)
!580 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !550, file: !417, line: 246)
!581 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !552, file: !417, line: 248)
!582 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !583, file: !417, line: 249)
!583 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !323, file: !417, line: 217, type: !557, flags: DIFlagPrototyped, spFlags: 0)
!584 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !556, file: !417, line: 250)
!585 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !560, file: !417, line: 252)
!586 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !572, file: !417, line: 253)
!587 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !564, file: !417, line: 254)
!588 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !568, file: !417, line: 255)
!589 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !576, file: !417, line: 256)
!590 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !591, file: !593, line: 98)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !592, line: 7, baseType: !94)
!592 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!593 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cstdio", directory: "")
!594 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !595, file: !593, line: 99)
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !596, line: 84, baseType: !597)
!596 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fpos_t", file: !598, line: 14, baseType: !599)
!598 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h", directory: "", checksumkind: CSK_MD5, checksum: "32de8bdaf3551a6c0a9394f9af4389ce")
!599 = !DICompositeType(tag: DW_TAG_structure_type, name: "_G_fpos_t", file: !598, line: 10, size: 128, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
!600 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !601, file: !593, line: 101)
!601 = !DISubprogram(name: "clearerr", scope: !596, file: !596, line: 757, type: !602, flags: DIFlagPrototyped, spFlags: 0)
!602 = !DISubroutineType(types: !603)
!603 = !{null, !604}
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!605 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !606, file: !593, line: 102)
!606 = !DISubprogram(name: "fclose", scope: !596, file: !596, line: 213, type: !607, flags: DIFlagPrototyped, spFlags: 0)
!607 = !DISubroutineType(types: !608)
!608 = !{!14, !604}
!609 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !610, file: !593, line: 103)
!610 = !DISubprogram(name: "feof", scope: !596, file: !596, line: 759, type: !607, flags: DIFlagPrototyped, spFlags: 0)
!611 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !612, file: !593, line: 104)
!612 = !DISubprogram(name: "ferror", scope: !596, file: !596, line: 761, type: !607, flags: DIFlagPrototyped, spFlags: 0)
!613 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !614, file: !593, line: 105)
!614 = !DISubprogram(name: "fflush", scope: !596, file: !596, line: 218, type: !607, flags: DIFlagPrototyped, spFlags: 0)
!615 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !616, file: !593, line: 106)
!616 = !DISubprogram(name: "fgetc", scope: !596, file: !596, line: 485, type: !607, flags: DIFlagPrototyped, spFlags: 0)
!617 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !618, file: !593, line: 107)
!618 = !DISubprogram(name: "fgetpos", scope: !596, file: !596, line: 731, type: !619, flags: DIFlagPrototyped, spFlags: 0)
!619 = !DISubroutineType(types: !620)
!620 = !{!14, !621, !622}
!621 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !604)
!622 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !623)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!624 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !625, file: !593, line: 108)
!625 = !DISubprogram(name: "fgets", scope: !596, file: !596, line: 564, type: !626, flags: DIFlagPrototyped, spFlags: 0)
!626 = !DISubroutineType(types: !627)
!627 = !{!208, !207, !14, !621}
!628 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !629, file: !593, line: 109)
!629 = !DISubprogram(name: "fopen", scope: !596, file: !596, line: 246, type: !630, flags: DIFlagPrototyped, spFlags: 0)
!630 = !DISubroutineType(types: !631)
!631 = !{!604, !136, !136}
!632 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !633, file: !593, line: 110)
!633 = !DISubprogram(name: "fprintf", scope: !596, file: !596, line: 326, type: !634, flags: DIFlagPrototyped, spFlags: 0)
!634 = !DISubroutineType(types: !635)
!635 = !{!14, !621, !136, null}
!636 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !637, file: !593, line: 111)
!637 = !DISubprogram(name: "fputc", scope: !596, file: !596, line: 521, type: !638, flags: DIFlagPrototyped, spFlags: 0)
!638 = !DISubroutineType(types: !639)
!639 = !{!14, !14, !604}
!640 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !641, file: !593, line: 112)
!641 = !DISubprogram(name: "fputs", scope: !596, file: !596, line: 626, type: !642, flags: DIFlagPrototyped, spFlags: 0)
!642 = !DISubroutineType(types: !643)
!643 = !{!14, !136, !621}
!644 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !645, file: !593, line: 113)
!645 = !DISubprogram(name: "fread", scope: !596, file: !596, line: 646, type: !646, flags: DIFlagPrototyped, spFlags: 0)
!646 = !DISubroutineType(types: !647)
!647 = !{!134, !648, !134, !134, !621}
!648 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !185)
!649 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !650, file: !593, line: 114)
!650 = !DISubprogram(name: "freopen", scope: !596, file: !596, line: 252, type: !651, flags: DIFlagPrototyped, spFlags: 0)
!651 = !DISubroutineType(types: !652)
!652 = !{!604, !136, !136, !621}
!653 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !654, file: !593, line: 115)
!654 = !DISubprogram(name: "fscanf", linkageName: "__isoc99_fscanf", scope: !596, file: !596, line: 407, type: !634, flags: DIFlagPrototyped, spFlags: 0)
!655 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !656, file: !593, line: 116)
!656 = !DISubprogram(name: "fseek", scope: !596, file: !596, line: 684, type: !657, flags: DIFlagPrototyped, spFlags: 0)
!657 = !DISubroutineType(types: !658)
!658 = !{!14, !604, !275, !14}
!659 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !660, file: !593, line: 117)
!660 = !DISubprogram(name: "fsetpos", scope: !596, file: !596, line: 736, type: !661, flags: DIFlagPrototyped, spFlags: 0)
!661 = !DISubroutineType(types: !662)
!662 = !{!14, !604, !663}
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !595)
!665 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !666, file: !593, line: 118)
!666 = !DISubprogram(name: "ftell", scope: !596, file: !596, line: 689, type: !667, flags: DIFlagPrototyped, spFlags: 0)
!667 = !DISubroutineType(types: !668)
!668 = !{!275, !604}
!669 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !670, file: !593, line: 119)
!670 = !DISubprogram(name: "fwrite", scope: !596, file: !596, line: 652, type: !671, flags: DIFlagPrototyped, spFlags: 0)
!671 = !DISubroutineType(types: !672)
!672 = !{!134, !673, !134, !134, !621}
!673 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !455)
!674 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !675, file: !593, line: 120)
!675 = !DISubprogram(name: "getc", scope: !596, file: !596, line: 486, type: !607, flags: DIFlagPrototyped, spFlags: 0)
!676 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !677, file: !593, line: 121)
!677 = !DISubprogram(name: "getchar", scope: !596, file: !596, line: 492, type: !12, flags: DIFlagPrototyped, spFlags: 0)
!678 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !679, file: !593, line: 126)
!679 = !DISubprogram(name: "perror", scope: !596, file: !596, line: 775, type: !680, flags: DIFlagPrototyped, spFlags: 0)
!680 = !DISubroutineType(types: !681)
!681 = !{null, !137}
!682 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !683, file: !593, line: 127)
!683 = !DISubprogram(name: "printf", scope: !596, file: !596, line: 332, type: !684, flags: DIFlagPrototyped, spFlags: 0)
!684 = !DISubroutineType(types: !685)
!685 = !{!14, !136, null}
!686 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !687, file: !593, line: 128)
!687 = !DISubprogram(name: "putc", scope: !596, file: !596, line: 522, type: !638, flags: DIFlagPrototyped, spFlags: 0)
!688 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !689, file: !593, line: 129)
!689 = !DISubprogram(name: "putchar", scope: !596, file: !596, line: 528, type: !377, flags: DIFlagPrototyped, spFlags: 0)
!690 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !691, file: !593, line: 130)
!691 = !DISubprogram(name: "puts", scope: !596, file: !596, line: 632, type: !445, flags: DIFlagPrototyped, spFlags: 0)
!692 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !693, file: !593, line: 131)
!693 = !DISubprogram(name: "remove", scope: !596, file: !596, line: 146, type: !445, flags: DIFlagPrototyped, spFlags: 0)
!694 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !695, file: !593, line: 132)
!695 = !DISubprogram(name: "rename", scope: !596, file: !596, line: 148, type: !696, flags: DIFlagPrototyped, spFlags: 0)
!696 = !DISubroutineType(types: !697)
!697 = !{!14, !137, !137}
!698 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !699, file: !593, line: 133)
!699 = !DISubprogram(name: "rewind", scope: !596, file: !596, line: 694, type: !602, flags: DIFlagPrototyped, spFlags: 0)
!700 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !701, file: !593, line: 134)
!701 = !DISubprogram(name: "scanf", linkageName: "__isoc99_scanf", scope: !596, file: !596, line: 410, type: !684, flags: DIFlagPrototyped, spFlags: 0)
!702 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !703, file: !593, line: 135)
!703 = !DISubprogram(name: "setbuf", scope: !596, file: !596, line: 304, type: !704, flags: DIFlagPrototyped, spFlags: 0)
!704 = !DISubroutineType(types: !705)
!705 = !{null, !621, !207}
!706 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !707, file: !593, line: 136)
!707 = !DISubprogram(name: "setvbuf", scope: !596, file: !596, line: 308, type: !708, flags: DIFlagPrototyped, spFlags: 0)
!708 = !DISubroutineType(types: !709)
!709 = !{!14, !621, !207, !14, !134}
!710 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !711, file: !593, line: 137)
!711 = !DISubprogram(name: "sprintf", scope: !596, file: !596, line: 334, type: !712, flags: DIFlagPrototyped, spFlags: 0)
!712 = !DISubroutineType(types: !713)
!713 = !{!14, !207, !136, null}
!714 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !715, file: !593, line: 138)
!715 = !DISubprogram(name: "sscanf", linkageName: "__isoc99_sscanf", scope: !596, file: !596, line: 412, type: !716, flags: DIFlagPrototyped, spFlags: 0)
!716 = !DISubroutineType(types: !717)
!717 = !{!14, !136, !136, null}
!718 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !719, file: !593, line: 139)
!719 = !DISubprogram(name: "tmpfile", scope: !596, file: !596, line: 173, type: !720, flags: DIFlagPrototyped, spFlags: 0)
!720 = !DISubroutineType(types: !721)
!721 = !{!604}
!722 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !723, file: !593, line: 141)
!723 = !DISubprogram(name: "tmpnam", scope: !596, file: !596, line: 187, type: !724, flags: DIFlagPrototyped, spFlags: 0)
!724 = !DISubroutineType(types: !725)
!725 = !{!208, !208}
!726 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !727, file: !593, line: 143)
!727 = !DISubprogram(name: "ungetc", scope: !596, file: !596, line: 639, type: !638, flags: DIFlagPrototyped, spFlags: 0)
!728 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !729, file: !593, line: 144)
!729 = !DISubprogram(name: "vfprintf", scope: !596, file: !596, line: 341, type: !730, flags: DIFlagPrototyped, spFlags: 0)
!730 = !DISubroutineType(types: !731)
!731 = !{!14, !621, !136, !178}
!732 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !733, file: !593, line: 145)
!733 = !DISubprogram(name: "vprintf", scope: !596, file: !596, line: 347, type: !734, flags: DIFlagPrototyped, spFlags: 0)
!734 = !DISubroutineType(types: !735)
!735 = !{!14, !136, !178}
!736 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !737, file: !593, line: 146)
!737 = !DISubprogram(name: "vsprintf", scope: !596, file: !596, line: 349, type: !738, flags: DIFlagPrototyped, spFlags: 0)
!738 = !DISubroutineType(types: !739)
!739 = !{!14, !207, !136, !178}
!740 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !323, entity: !741, file: !593, line: 175)
!741 = !DISubprogram(name: "snprintf", scope: !596, file: !596, line: 354, type: !742, flags: DIFlagPrototyped, spFlags: 0)
!742 = !DISubroutineType(types: !743)
!743 = !{!14, !207, !134, !136, null}
!744 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !323, entity: !745, file: !593, line: 176)
!745 = !DISubprogram(name: "vfscanf", linkageName: "__isoc99_vfscanf", scope: !596, file: !596, line: 451, type: !730, flags: DIFlagPrototyped, spFlags: 0)
!746 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !323, entity: !747, file: !593, line: 177)
!747 = !DISubprogram(name: "vscanf", linkageName: "__isoc99_vscanf", scope: !596, file: !596, line: 456, type: !734, flags: DIFlagPrototyped, spFlags: 0)
!748 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !323, entity: !749, file: !593, line: 178)
!749 = !DISubprogram(name: "vsnprintf", scope: !596, file: !596, line: 358, type: !750, flags: DIFlagPrototyped, spFlags: 0)
!750 = !DISubroutineType(types: !751)
!751 = !{!14, !207, !134, !136, !178}
!752 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !323, entity: !753, file: !593, line: 179)
!753 = !DISubprogram(name: "vsscanf", linkageName: "__isoc99_vsscanf", scope: !596, file: !596, line: 459, type: !754, flags: DIFlagPrototyped, spFlags: 0)
!754 = !DISubroutineType(types: !755)
!755 = !{!14, !136, !136, !178}
!756 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !741, file: !593, line: 185)
!757 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !745, file: !593, line: 186)
!758 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !747, file: !593, line: 187)
!759 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !749, file: !593, line: 188)
!760 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !753, file: !593, line: 189)
!761 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !762, file: !768, line: 58)
!762 = !DIDerivedType(tag: DW_TAG_typedef, name: "max_align_t", file: !763, line: 24, baseType: !764)
!763 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/__stddef_max_align_t.h", directory: "/home/cs22mtech12008", checksumkind: CSK_MD5, checksum: "48e8e2456f77e6cda35d245130fa7259")
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !763, line: 19, size: 256, flags: DIFlagTypePassByValue, elements: !765, identifier: "_ZTS11max_align_t")
!765 = !{!766, !767}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "__clang_max_align_nonce1", scope: !764, file: !763, line: 20, baseType: !332, size: 64, align: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "__clang_max_align_nonce2", scope: !764, file: !763, line: 22, baseType: !327, size: 128, align: 128, offset: 128)
!768 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cstddef", directory: "")
!769 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !770, file: !776, line: 82)
!770 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctrans_t", file: !771, line: 48, baseType: !772)
!771 = !DIFile(filename: "/usr/include/wctype.h", directory: "", checksumkind: CSK_MD5, checksum: "e83097fbf57cc71ea472db59df3ba75d")
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !774)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !775, line: 41, baseType: !14)
!775 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!776 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cwctype", directory: "")
!777 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !778, file: !776, line: 83)
!778 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctype_t", file: !779, line: 38, baseType: !29)
!779 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "3598b9d23ef5d76319026b46e316b55f")
!780 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !80, file: !776, line: 84)
!781 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !782, file: !776, line: 86)
!782 = !DISubprogram(name: "iswalnum", scope: !779, file: !779, line: 95, type: !286, flags: DIFlagPrototyped, spFlags: 0)
!783 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !784, file: !776, line: 87)
!784 = !DISubprogram(name: "iswalpha", scope: !779, file: !779, line: 101, type: !286, flags: DIFlagPrototyped, spFlags: 0)
!785 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !786, file: !776, line: 89)
!786 = !DISubprogram(name: "iswblank", scope: !779, file: !779, line: 146, type: !286, flags: DIFlagPrototyped, spFlags: 0)
!787 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !788, file: !776, line: 91)
!788 = !DISubprogram(name: "iswcntrl", scope: !779, file: !779, line: 104, type: !286, flags: DIFlagPrototyped, spFlags: 0)
!789 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !790, file: !776, line: 92)
!790 = !DISubprogram(name: "iswctype", scope: !779, file: !779, line: 159, type: !791, flags: DIFlagPrototyped, spFlags: 0)
!791 = !DISubroutineType(types: !792)
!792 = !{!14, !80, !778}
!793 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !794, file: !776, line: 93)
!794 = !DISubprogram(name: "iswdigit", scope: !779, file: !779, line: 108, type: !286, flags: DIFlagPrototyped, spFlags: 0)
!795 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !796, file: !776, line: 94)
!796 = !DISubprogram(name: "iswgraph", scope: !779, file: !779, line: 112, type: !286, flags: DIFlagPrototyped, spFlags: 0)
!797 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !798, file: !776, line: 95)
!798 = !DISubprogram(name: "iswlower", scope: !779, file: !779, line: 117, type: !286, flags: DIFlagPrototyped, spFlags: 0)
!799 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !800, file: !776, line: 96)
!800 = !DISubprogram(name: "iswprint", scope: !779, file: !779, line: 120, type: !286, flags: DIFlagPrototyped, spFlags: 0)
!801 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !802, file: !776, line: 97)
!802 = !DISubprogram(name: "iswpunct", scope: !779, file: !779, line: 125, type: !286, flags: DIFlagPrototyped, spFlags: 0)
!803 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !804, file: !776, line: 98)
!804 = !DISubprogram(name: "iswspace", scope: !779, file: !779, line: 130, type: !286, flags: DIFlagPrototyped, spFlags: 0)
!805 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !806, file: !776, line: 99)
!806 = !DISubprogram(name: "iswupper", scope: !779, file: !779, line: 135, type: !286, flags: DIFlagPrototyped, spFlags: 0)
!807 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !808, file: !776, line: 100)
!808 = !DISubprogram(name: "iswxdigit", scope: !779, file: !779, line: 140, type: !286, flags: DIFlagPrototyped, spFlags: 0)
!809 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !810, file: !776, line: 101)
!810 = !DISubprogram(name: "towctrans", scope: !771, file: !771, line: 55, type: !811, flags: DIFlagPrototyped, spFlags: 0)
!811 = !DISubroutineType(types: !812)
!812 = !{!80, !80, !770}
!813 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !814, file: !776, line: 102)
!814 = !DISubprogram(name: "towlower", scope: !779, file: !779, line: 166, type: !815, flags: DIFlagPrototyped, spFlags: 0)
!815 = !DISubroutineType(types: !816)
!816 = !{!80, !80}
!817 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !818, file: !776, line: 103)
!818 = !DISubprogram(name: "towupper", scope: !779, file: !779, line: 169, type: !815, flags: DIFlagPrototyped, spFlags: 0)
!819 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !820, file: !776, line: 104)
!820 = !DISubprogram(name: "wctrans", scope: !771, file: !771, line: 52, type: !821, flags: DIFlagPrototyped, spFlags: 0)
!821 = !DISubroutineType(types: !822)
!822 = !{!770, !137}
!823 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !61, entity: !824, file: !776, line: 105)
!824 = !DISubprogram(name: "wctype", scope: !779, file: !779, line: 155, type: !825, flags: DIFlagPrototyped, spFlags: 0)
!825 = !DISubroutineType(types: !826)
!826 = !{!778, !137}
!827 = !{i32 7, !"Dwarf Version", i32 5}
!828 = !{i32 2, !"Debug Info Version", i32 3}
!829 = !{i32 1, !"wchar_size", i32 4}
!830 = !{i32 8, !"PIC Level", i32 2}
!831 = !{i32 7, !"PIE Level", i32 2}
!832 = !{i32 7, !"uwtable", i32 2}
!833 = !{i32 7, !"frame-pointer", i32 2}
!834 = !{!"clang version 16.0.0"}
!835 = distinct !DISubprogram(name: "threadFunc", linkageName: "_Z10threadFuncPv", scope: !7, file: !7, line: 48, type: !836, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !838)
!836 = !DISubroutineType(types: !837)
!837 = !{!185, !185}
!838 = !{}
!839 = !DILocalVariable(name: "arg", arg: 1, scope: !835, file: !7, line: 48, type: !185)
!840 = !DILocation(line: 48, column: 24, scope: !835)
!841 = !DILocation(line: 49, column: 5, scope: !835)
!842 = !DILocalVariable(name: "derived", scope: !835, file: !7, line: 50, type: !14)
!843 = !DILocation(line: 50, column: 9, scope: !835)
!844 = !DILocalVariable(name: "basePtr", scope: !835, file: !7, line: 51, type: !5)
!845 = !DILocation(line: 51, column: 11, scope: !835)
!846 = !DILocation(line: 51, column: 40, scope: !835)
!847 = !DILocation(line: 52, column: 8, scope: !848)
!848 = distinct !DILexicalBlock(scope: !835, file: !7, line: 52, column: 8)
!849 = !DILocation(line: 52, column: 15, scope: !848)
!850 = !DILocation(line: 52, column: 8, scope: !835)
!851 = !DILocation(line: 54, column: 13, scope: !852)
!852 = distinct !DILexicalBlock(scope: !848, file: !7, line: 53, column: 5)
!853 = !DILocation(line: 54, column: 22, scope: !852)
!854 = !DILocation(line: 55, column: 13, scope: !852)
!855 = !DILocation(line: 55, column: 22, scope: !852)
!856 = !DILocation(line: 56, column: 13, scope: !852)
!857 = !DILocation(line: 56, column: 22, scope: !852)
!858 = !DILocation(line: 57, column: 5, scope: !852)
!859 = !DILocation(line: 61, column: 13, scope: !860)
!860 = distinct !DILexicalBlock(scope: !848, file: !7, line: 59, column: 5)
!861 = !DILocation(line: 61, column: 22, scope: !860)
!862 = !DILocation(line: 62, column: 13, scope: !860)
!863 = !DILocation(line: 62, column: 22, scope: !860)
!864 = !DILocation(line: 64, column: 5, scope: !835)
!865 = distinct !DISubprogram(name: "func4", linkageName: "_ZN4Base5func4Ev", scope: !6, file: !7, line: 17, type: !17, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !22, retainedNodes: !838)
!866 = !DILocalVariable(name: "this", arg: 1, scope: !865, type: !5, flags: DIFlagArtificial | DIFlagObjectPointer)
!867 = !DILocation(line: 0, scope: !865)
!868 = !DILocation(line: 18, column: 19, scope: !865)
!869 = !DILocation(line: 18, column: 36, scope: !865)
!870 = !DILocation(line: 18, column: 47, scope: !865)
!871 = !DILocation(line: 18, column: 45, scope: !865)
!872 = !DILocation(line: 18, column: 49, scope: !865)
!873 = !DILocation(line: 19, column: 5, scope: !865)
!874 = distinct !DISubprogram(name: "func5", linkageName: "_ZN4Base5func5Ev", scope: !6, file: !7, line: 20, type: !17, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !23, retainedNodes: !838)
!875 = !DILocalVariable(name: "this", arg: 1, scope: !874, type: !5, flags: DIFlagArtificial | DIFlagObjectPointer)
!876 = !DILocation(line: 0, scope: !874)
!877 = !DILocation(line: 21, column: 19, scope: !874)
!878 = !DILocation(line: 21, column: 36, scope: !874)
!879 = !DILocation(line: 21, column: 48, scope: !874)
!880 = !DILocation(line: 21, column: 46, scope: !874)
!881 = !DILocation(line: 21, column: 50, scope: !874)
!882 = !DILocation(line: 22, column: 5, scope: !874)
!883 = distinct !DISubprogram(name: "startThread", linkageName: "_Z11startThreadv", scope: !7, file: !7, line: 67, type: !426, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !838)
!884 = !DILocalVariable(name: "DerivedObj", scope: !883, file: !7, line: 68, type: !885)
!885 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Derived", file: !7, line: 25, size: 128, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !886, vtableHolder: !6, identifier: "_ZTS7Derived")
!886 = !{!887, !888, !889, !893, !894, !895, !896}
!887 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !885, baseType: !6, flags: DIFlagPublic, extraData: i32 0)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !885, file: !7, line: 27, baseType: !14, size: 32, offset: 96, flags: DIFlagPublic)
!889 = !DISubprogram(name: "func1", linkageName: "_ZN7Derived5func1Ev", scope: !885, file: !7, line: 28, type: !890, scopeLine: 28, containingType: !885, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!890 = !DISubroutineType(types: !891)
!891 = !{null, !892}
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!893 = !DISubprogram(name: "func2", linkageName: "_ZN7Derived5func2Ev", scope: !885, file: !7, line: 31, type: !890, scopeLine: 31, containingType: !885, virtualIndex: 1, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!894 = !DISubprogram(name: "func3", linkageName: "_ZN7Derived5func3Ev", scope: !885, file: !7, line: 34, type: !890, scopeLine: 34, containingType: !885, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!895 = !DISubprogram(name: "func4", linkageName: "_ZN7Derived5func4Ev", scope: !885, file: !7, line: 37, type: !890, scopeLine: 37, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!896 = !DISubprogram(name: "func5", linkageName: "_ZN7Derived5func5Ev", scope: !885, file: !7, line: 40, type: !890, scopeLine: 40, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!897 = !DILocation(line: 68, column: 13, scope: !883)
!898 = !DILocation(line: 69, column: 13, scope: !883)
!899 = !DILocation(line: 70, column: 46, scope: !883)
!900 = !DILocation(line: 70, column: 5, scope: !883)
!901 = !DILocation(line: 72, column: 1, scope: !883)
!902 = distinct !DISubprogram(name: "Derived", linkageName: "_ZN7DerivedC2Ev", scope: !885, file: !7, line: 25, type: !890, scopeLine: 25, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !903, retainedNodes: !838)
!903 = !DISubprogram(name: "Derived", scope: !885, type: !890, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!904 = !DILocalVariable(name: "this", arg: 1, scope: !902, type: !905, flags: DIFlagArtificial | DIFlagObjectPointer)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!906 = !DILocation(line: 0, scope: !902)
!907 = !DILocation(line: 25, column: 7, scope: !902)
!908 = !DILocation(line: 27, column: 5, scope: !902)
!909 = distinct !DISubprogram(name: "main", scope: !7, file: !7, line: 74, type: !12, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !838)
!910 = !DILocation(line: 75, column: 5, scope: !909)
!911 = !DILocation(line: 76, column: 18, scope: !909)
!912 = !DILocation(line: 76, column: 5, scope: !909)
!913 = !DILocation(line: 77, column: 5, scope: !909)
!914 = distinct !DISubprogram(name: "Base", linkageName: "_ZN4BaseC2Ev", scope: !6, file: !7, line: 5, type: !17, scopeLine: 5, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !915, retainedNodes: !838)
!915 = !DISubprogram(name: "Base", scope: !6, type: !17, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!916 = !DILocalVariable(name: "this", arg: 1, scope: !914, type: !5, flags: DIFlagArtificial | DIFlagObjectPointer)
!917 = !DILocation(line: 0, scope: !914)
!918 = !DILocation(line: 5, column: 7, scope: !914)
!919 = !DILocation(line: 7, column: 9, scope: !914)
!920 = distinct !DISubprogram(name: "func1", linkageName: "_ZN7Derived5func1Ev", scope: !885, file: !7, line: 28, type: !890, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !889, retainedNodes: !838)
!921 = !DILocalVariable(name: "this", arg: 1, scope: !920, type: !905, flags: DIFlagArtificial | DIFlagObjectPointer)
!922 = !DILocation(line: 0, scope: !920)
!923 = !DILocation(line: 29, column: 19, scope: !920)
!924 = !DILocation(line: 29, column: 39, scope: !920)
!925 = !DILocation(line: 29, column: 51, scope: !920)
!926 = !DILocation(line: 29, column: 49, scope: !920)
!927 = !DILocation(line: 29, column: 52, scope: !920)
!928 = !DILocation(line: 30, column: 5, scope: !920)
!929 = distinct !DISubprogram(name: "func2", linkageName: "_ZN7Derived5func2Ev", scope: !885, file: !7, line: 31, type: !890, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !893, retainedNodes: !838)
!930 = !DILocalVariable(name: "this", arg: 1, scope: !929, type: !905, flags: DIFlagArtificial | DIFlagObjectPointer)
!931 = !DILocation(line: 0, scope: !929)
!932 = !DILocation(line: 32, column: 19, scope: !929)
!933 = !DILocation(line: 32, column: 39, scope: !929)
!934 = !DILocation(line: 32, column: 51, scope: !929)
!935 = !DILocation(line: 32, column: 49, scope: !929)
!936 = !DILocation(line: 32, column: 52, scope: !929)
!937 = !DILocation(line: 33, column: 5, scope: !929)
!938 = distinct !DISubprogram(name: "func3", linkageName: "_ZN7Derived5func3Ev", scope: !885, file: !7, line: 34, type: !890, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !894, retainedNodes: !838)
!939 = !DILocalVariable(name: "this", arg: 1, scope: !938, type: !905, flags: DIFlagArtificial | DIFlagObjectPointer)
!940 = !DILocation(line: 0, scope: !938)
!941 = !DILocation(line: 35, column: 19, scope: !938)
!942 = !DILocation(line: 35, column: 39, scope: !938)
!943 = !DILocation(line: 35, column: 51, scope: !938)
!944 = !DILocation(line: 35, column: 49, scope: !938)
!945 = !DILocation(line: 35, column: 52, scope: !938)
!946 = !DILocation(line: 36, column: 5, scope: !938)
!947 = distinct !DISubprogram(name: "func1", linkageName: "_ZN4Base5func1Ev", scope: !6, file: !7, line: 8, type: !17, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !16, retainedNodes: !838)
!948 = !DILocalVariable(name: "this", arg: 1, scope: !947, type: !5, flags: DIFlagArtificial | DIFlagObjectPointer)
!949 = !DILocation(line: 0, scope: !947)
!950 = !DILocation(line: 9, column: 19, scope: !947)
!951 = !DILocation(line: 9, column: 35, scope: !947)
!952 = !DILocation(line: 9, column: 46, scope: !947)
!953 = !DILocation(line: 9, column: 44, scope: !947)
!954 = !DILocation(line: 9, column: 48, scope: !947)
!955 = !DILocation(line: 10, column: 5, scope: !947)
!956 = distinct !DISubprogram(name: "func2", linkageName: "_ZN4Base5func2Ev", scope: !6, file: !7, line: 11, type: !17, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !20, retainedNodes: !838)
!957 = !DILocalVariable(name: "this", arg: 1, scope: !956, type: !5, flags: DIFlagArtificial | DIFlagObjectPointer)
!958 = !DILocation(line: 0, scope: !956)
!959 = !DILocation(line: 12, column: 19, scope: !956)
!960 = !DILocation(line: 12, column: 36, scope: !956)
!961 = !DILocation(line: 12, column: 47, scope: !956)
!962 = !DILocation(line: 12, column: 45, scope: !956)
!963 = !DILocation(line: 12, column: 49, scope: !956)
!964 = !DILocation(line: 13, column: 5, scope: !956)
!965 = distinct !DISubprogram(name: "func3", linkageName: "_ZN4Base5func3Ev", scope: !6, file: !7, line: 14, type: !17, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !21, retainedNodes: !838)
!966 = !DILocalVariable(name: "this", arg: 1, scope: !965, type: !5, flags: DIFlagArtificial | DIFlagObjectPointer)
!967 = !DILocation(line: 0, scope: !965)
!968 = !DILocation(line: 15, column: 19, scope: !965)
!969 = !DILocation(line: 15, column: 36, scope: !965)
!970 = !DILocation(line: 15, column: 48, scope: !965)
!971 = !DILocation(line: 15, column: 46, scope: !965)
!972 = !DILocation(line: 15, column: 50, scope: !965)
!973 = !DILocation(line: 16, column: 5, scope: !965)
