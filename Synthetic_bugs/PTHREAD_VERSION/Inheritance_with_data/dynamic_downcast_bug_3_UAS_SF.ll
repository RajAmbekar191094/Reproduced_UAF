; ModuleID = '/home/cs22mtech12008/Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Inheritance_with_data/dynamic_downcast_bug_3_UAS_SF.cpp'
source_filename = "/home/cs22mtech12008/Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Inheritance_with_data/dynamic_downcast_bug_3_UAS_SF.cpp"
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

@basePtrA1 = dso_local global ptr null, align 8, !dbg !0
@basePtrA2 = dso_local global ptr null, align 8, !dbg !40
@t1 = dso_local global i64 0, align 8, !dbg !42
@t2 = dso_local global i64 0, align 8, !dbg !47
@_ZTVN10__cxxabiv117__class_type_infoE = external global ptr
@_ZTS1A = linkonce_odr dso_local constant [3 x i8] c"1A\00", comdat, align 1
@_ZTI1A = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS1A }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global ptr
@_ZTS2A1 = linkonce_odr dso_local constant [4 x i8] c"2A1\00", comdat, align 1
@_ZTI2A1 = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS2A1, ptr @_ZTI1A }, comdat, align 8
@_ZTS2A2 = linkonce_odr dso_local constant [4 x i8] c"2A2\00", comdat, align 1
@_ZTI2A2 = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS2A2, ptr @_ZTI1A }, comdat, align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [15 x i8] c"Base class m2:\00", align 1, !dbg !49
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !56
@.str.2 = private unnamed_addr constant [13 x i8] c"A2 class m2:\00", align 1, !dbg !61
@_ZTV2A1 = linkonce_odr dso_local unnamed_addr constant { [3 x ptr] } { [3 x ptr] [ptr null, ptr @_ZTI2A1, ptr @_ZN2A12m1Ev] }, comdat, align 8
@_ZTV1A = linkonce_odr dso_local unnamed_addr constant { [3 x ptr] } { [3 x ptr] [ptr null, ptr @_ZTI1A, ptr @_ZN1A2m1Ev] }, comdat, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"Base class m1:\00", align 1, !dbg !66
@.str.4 = private unnamed_addr constant [13 x i8] c"A1 class m1:\00", align 1, !dbg !68
@_ZTV2A2 = linkonce_odr dso_local unnamed_addr constant { [3 x ptr] } { [3 x ptr] [ptr null, ptr @_ZTI2A2, ptr @_ZN1A2m1Ev] }, comdat, align 8

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef ptr @_Z10runThread1Pv(ptr noundef %0) #0 !dbg !846 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !850, metadata !DIExpression()), !dbg !851
  call void @llvm.dbg.declare(metadata ptr %3, metadata !852, metadata !DIExpression()), !dbg !853
  %5 = load ptr, ptr %2, align 8, !dbg !854
  store ptr %5, ptr %3, align 8, !dbg !853
  %6 = load ptr, ptr %3, align 8, !dbg !855
  %7 = load ptr, ptr %6, align 8, !dbg !856
  %8 = getelementptr inbounds ptr, ptr %7, i64 0, !dbg !856
  %9 = load ptr, ptr %8, align 8, !dbg !856
  call void %9(ptr noundef nonnull align 8 dereferenceable(12) %6), !dbg !856
  call void @llvm.dbg.declare(metadata ptr %4, metadata !857, metadata !DIExpression()), !dbg !858
  %10 = load ptr, ptr %3, align 8, !dbg !859
  %11 = icmp eq ptr %10, null, !dbg !860
  br i1 %11, label %14, label %12, !dbg !860

12:                                               ; preds = %1
  %13 = call ptr @__dynamic_cast(ptr %10, ptr @_ZTI1A, ptr @_ZTI2A1, i64 0) #8, !dbg !860
  br label %15, !dbg !860

14:                                               ; preds = %1
  br label %15, !dbg !860

15:                                               ; preds = %14, %12
  %16 = phi ptr [ %13, %12 ], [ null, %14 ], !dbg !860
  store ptr %16, ptr %4, align 8, !dbg !858
  %17 = load ptr, ptr %4, align 8, !dbg !861
  %18 = icmp ne ptr %17, null, !dbg !861
  br i1 %18, label %19, label %24, !dbg !863

19:                                               ; preds = %15
  %20 = load ptr, ptr %4, align 8, !dbg !864
  %21 = load ptr, ptr %20, align 8, !dbg !866
  %22 = getelementptr inbounds ptr, ptr %21, i64 0, !dbg !866
  %23 = load ptr, ptr %22, align 8, !dbg !866
  call void %23(ptr noundef nonnull align 8 dereferenceable(16) %20), !dbg !866
  br label %24, !dbg !867

24:                                               ; preds = %19, %15
  ret ptr null, !dbg !868
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) #2

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef ptr @_Z10runThread2Pv(ptr noundef %0) #0 !dbg !869 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !870, metadata !DIExpression()), !dbg !871
  %5 = call i32 @sleep(i32 noundef 5), !dbg !872
  call void @llvm.dbg.declare(metadata ptr %3, metadata !873, metadata !DIExpression()), !dbg !874
  %6 = load ptr, ptr %2, align 8, !dbg !875
  store ptr %6, ptr %3, align 8, !dbg !874
  %7 = load ptr, ptr %3, align 8, !dbg !876
  call void @_ZN1A2m2Ev(ptr noundef nonnull align 8 dereferenceable(12) %7), !dbg !877
  call void @llvm.dbg.declare(metadata ptr %4, metadata !878, metadata !DIExpression()), !dbg !879
  %8 = load ptr, ptr %3, align 8, !dbg !880
  %9 = icmp eq ptr %8, null, !dbg !881
  br i1 %9, label %12, label %10, !dbg !881

10:                                               ; preds = %1
  %11 = call ptr @__dynamic_cast(ptr %8, ptr @_ZTI1A, ptr @_ZTI2A2, i64 0) #8, !dbg !881
  br label %13, !dbg !881

12:                                               ; preds = %1
  br label %13, !dbg !881

13:                                               ; preds = %12, %10
  %14 = phi ptr [ %11, %10 ], [ null, %12 ], !dbg !881
  store ptr %14, ptr %4, align 8, !dbg !879
  %15 = load ptr, ptr %4, align 8, !dbg !882
  %16 = icmp ne ptr %15, null, !dbg !882
  br i1 %16, label %17, label %19, !dbg !884

17:                                               ; preds = %13
  %18 = load ptr, ptr %4, align 8, !dbg !885
  call void @_ZN2A22m2Ev(ptr noundef nonnull align 8 dereferenceable(16) %18), !dbg !887
  br label %19, !dbg !888

19:                                               ; preds = %17, %13
  ret ptr null, !dbg !889
}

declare i32 @sleep(i32 noundef) #3

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN1A2m2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) #0 comdat align 2 !dbg !890 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !891, metadata !DIExpression()), !dbg !892
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str), !dbg !893
  %5 = getelementptr inbounds %class.A, ptr %3, i32 0, i32 1, !dbg !894
  %6 = load i32, ptr %5, align 8, !dbg !894
  %7 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %6), !dbg !895
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef @.str.1), !dbg !896
  ret void, !dbg !897
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN2A22m2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #0 comdat align 2 !dbg !898 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !899, metadata !DIExpression()), !dbg !900
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.2), !dbg !901
  %5 = getelementptr inbounds %class.A2, ptr %3, i32 0, i32 1, !dbg !902
  %6 = load i32, ptr %5, align 4, !dbg !902
  %7 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %6), !dbg !903
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef @.str.1), !dbg !904
  ret void, !dbg !905
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_Z12createThreadv() #4 !dbg !906 {
  %1 = alloca %class.A1, align 8
  %2 = alloca %class.A2, align 8
  call void @llvm.dbg.declare(metadata ptr %1, metadata !907, metadata !DIExpression()), !dbg !908
  call void @_ZN2A1C2Ev(ptr noundef nonnull align 8 dereferenceable(16) %1) #8, !dbg !908
  call void @llvm.dbg.declare(metadata ptr %2, metadata !909, metadata !DIExpression()), !dbg !910
  call void @_ZN2A2C2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #8, !dbg !910
  store ptr %1, ptr @basePtrA1, align 8, !dbg !911
  store ptr %2, ptr @basePtrA2, align 8, !dbg !912
  %3 = load ptr, ptr @basePtrA1, align 8, !dbg !913
  %4 = call i32 @pthread_create(ptr noundef @t1, ptr noundef null, ptr noundef @_Z10runThread1Pv, ptr noundef %3) #8, !dbg !914
  %5 = load ptr, ptr @basePtrA2, align 8, !dbg !915
  %6 = call i32 @pthread_create(ptr noundef @t2, ptr noundef null, ptr noundef @_Z10runThread2Pv, ptr noundef %5) #8, !dbg !916
  ret void, !dbg !917
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN2A1C2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 !dbg !918 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !920, metadata !DIExpression()), !dbg !921
  %3 = load ptr, ptr %2, align 8
  call void @_ZN1AC2Ev(ptr noundef nonnull align 8 dereferenceable(12) %3) #8, !dbg !922
  store ptr getelementptr inbounds ({ [3 x ptr] }, ptr @_ZTV2A1, i32 0, inrange i32 0, i32 2), ptr %3, align 8, !dbg !922
  %4 = getelementptr inbounds %class.A1, ptr %3, i32 0, i32 1, !dbg !923
  store i32 20, ptr %4, align 4, !dbg !923
  ret void, !dbg !922
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN2A2C2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 !dbg !924 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !926, metadata !DIExpression()), !dbg !927
  %3 = load ptr, ptr %2, align 8
  call void @_ZN1AC2Ev(ptr noundef nonnull align 8 dereferenceable(12) %3) #8, !dbg !928
  store ptr getelementptr inbounds ({ [3 x ptr] }, ptr @_ZTV2A2, i32 0, inrange i32 0, i32 2), ptr %3, align 8, !dbg !928
  %4 = getelementptr inbounds %class.A2, ptr %3, i32 0, i32 1, !dbg !929
  store i32 30, ptr %4, align 4, !dbg !929
  ret void, !dbg !928
}

; Function Attrs: nounwind
declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main() #7 !dbg !930 {
  %1 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  call void @_Z12createThreadv(), !dbg !931
  %2 = load i64, ptr @t1, align 8, !dbg !932
  %3 = call i32 @pthread_join(i64 noundef %2, ptr noundef null), !dbg !933
  %4 = load i64, ptr @t2, align 8, !dbg !934
  %5 = call i32 @pthread_join(i64 noundef %4, ptr noundef null), !dbg !935
  ret i32 0, !dbg !936
}

declare i32 @pthread_join(i64 noundef, ptr noundef) #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN1AC2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #5 comdat align 2 !dbg !937 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !939, metadata !DIExpression()), !dbg !940
  %3 = load ptr, ptr %2, align 8
  store ptr getelementptr inbounds ({ [3 x ptr] }, ptr @_ZTV1A, i32 0, inrange i32 0, i32 2), ptr %3, align 8, !dbg !941
  %4 = getelementptr inbounds %class.A, ptr %3, i32 0, i32 1, !dbg !942
  store i32 10, ptr %4, align 8, !dbg !942
  ret void, !dbg !941
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN2A12m1Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 !dbg !943 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !944, metadata !DIExpression()), !dbg !945
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.4), !dbg !946
  %5 = getelementptr inbounds %class.A1, ptr %3, i32 0, i32 1, !dbg !947
  %6 = load i32, ptr %5, align 4, !dbg !947
  %7 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %6), !dbg !948
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef @.str.1), !dbg !949
  ret void, !dbg !950
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN1A2m1Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #0 comdat align 2 !dbg !951 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !952, metadata !DIExpression()), !dbg !953
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.3), !dbg !954
  %5 = getelementptr inbounds %class.A, ptr %3, i32 0, i32 1, !dbg !955
  %6 = load i32, ptr %5, align 8, !dbg !955
  %7 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %6), !dbg !956
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef @.str.1), !dbg !957
  ret void, !dbg !958
}

attributes #0 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind memory(read) }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!838, !839, !840, !841, !842, !843, !844}
!llvm.ident = !{!845}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "basePtrA1", scope: !2, file: !7, line: 17, type: !5, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !3, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !39, imports: !70, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/cs22mtech12008/Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Inheritance_with_data/dynamic_downcast_bug_3_UAS_SF.cpp", directory: "/home/cs22mtech12008/UseAfterScope/Scripts", checksumkind: CSK_MD5, checksum: "788f91109810c7b3ea502ea1783d6775")
!4 = !{!5, !21, !30}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "A", file: !7, line: 5, size: 128, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !8, vtableHolder: !6, identifier: "_ZTS1A")
!7 = !DIFile(filename: "Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Inheritance_with_data/dynamic_downcast_bug_3_UAS_SF.cpp", directory: "/home/cs22mtech12008", checksumkind: CSK_MD5, checksum: "788f91109810c7b3ea502ea1783d6775")
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
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "A1", file: !7, line: 20, size: 128, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !23, vtableHolder: !6, identifier: "_ZTS2A1")
!23 = !{!24, !25, !26}
!24 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !22, baseType: !6, flags: DIFlagPublic, extraData: i32 0)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "a1", scope: !22, file: !7, line: 22, baseType: !14, size: 32, offset: 96, flags: DIFlagPublic)
!26 = !DISubprogram(name: "m1", linkageName: "_ZN2A12m1Ev", scope: !22, file: !7, line: 23, type: !27, scopeLine: 23, containingType: !22, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual)
!27 = !DISubroutineType(types: !28)
!28 = !{null, !29}
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "A2", file: !7, line: 28, size: 128, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !32, vtableHolder: !6, identifier: "_ZTS2A2")
!32 = !{!33, !34, !35}
!33 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !31, baseType: !6, flags: DIFlagPublic, extraData: i32 0)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "a2", scope: !31, file: !7, line: 30, baseType: !14, size: 32, offset: 96, flags: DIFlagPublic)
!35 = !DISubprogram(name: "m2", linkageName: "_ZN2A22m2Ev", scope: !31, file: !7, line: 31, type: !36, scopeLine: 31, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!36 = !DISubroutineType(types: !37)
!37 = !{null, !38}
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!39 = !{!0, !40, !42, !47, !49, !56, !61, !66, !68}
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "basePtrA2", scope: !2, file: !7, line: 18, type: !5, isLocal: false, isDefinition: true)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(name: "t1", scope: !2, file: !7, line: 36, type: !44, isLocal: false, isDefinition: true)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !45, line: 27, baseType: !46)
!45 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "2d764266ce95ab26d4a4767c2ec78176")
!46 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(name: "t2", scope: !2, file: !7, line: 36, type: !44, isLocal: false, isDefinition: true)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(scope: null, file: !7, line: 13, type: !51, isLocal: true, isDefinition: true)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 120, elements: !54)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!53 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!54 = !{!55}
!55 = !DISubrange(count: 15)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(scope: null, file: !7, line: 13, type: !58, isLocal: true, isDefinition: true)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 16, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 2)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(scope: null, file: !7, line: 32, type: !63, isLocal: true, isDefinition: true)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 104, elements: !64)
!64 = !{!65}
!65 = !DISubrange(count: 13)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(scope: null, file: !7, line: 9, type: !51, isLocal: true, isDefinition: true)
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(scope: null, file: !7, line: 24, type: !63, isLocal: true, isDefinition: true)
!70 = !{!71, !90, !93, !98, !106, !114, !118, !125, !129, !133, !135, !137, !141, !151, !155, !161, !167, !169, !173, !177, !181, !185, !198, !200, !204, !208, !212, !214, !220, !224, !228, !230, !232, !236, !244, !248, !252, !256, !258, !264, !266, !273, !278, !282, !287, !291, !295, !299, !301, !303, !307, !311, !315, !317, !321, !325, !327, !329, !333, !339, !344, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !363, !367, !372, !376, !380, !385, !391, !393, !395, !397, !399, !401, !403, !405, !407, !409, !411, !413, !415, !417, !421, !425, !429, !435, !439, !443, !448, !450, !454, !458, !462, !472, !474, !478, !482, !486, !490, !494, !498, !502, !506, !510, !514, !518, !520, !522, !526, !530, !536, !540, !544, !546, !550, !554, !560, !562, !566, !570, !574, !578, !582, !586, !590, !591, !592, !593, !595, !596, !597, !598, !599, !600, !601, !605, !611, !616, !620, !622, !624, !626, !628, !635, !639, !643, !647, !651, !655, !660, !664, !666, !670, !676, !680, !685, !687, !689, !693, !697, !699, !701, !703, !705, !709, !711, !713, !717, !721, !725, !729, !733, !737, !739, !743, !747, !751, !755, !757, !759, !763, !767, !768, !769, !770, !771, !772, !780, !788, !791, !792, !794, !796, !798, !800, !804, !806, !808, !810, !812, !814, !816, !818, !820, !824, !828, !830, !834}
!71 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !73, file: !89, line: 64)
!72 = !DINamespace(name: "std", scope: null)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !74, line: 6, baseType: !75)
!74 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !76, line: 21, baseType: !77)
!76 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !76, line: 13, size: 64, flags: DIFlagTypePassByValue, elements: !78, identifier: "_ZTS11__mbstate_t")
!78 = !{!79, !80}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !77, file: !76, line: 15, baseType: !14, size: 32)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !77, file: !76, line: 20, baseType: !81, size: 32, offset: 32)
!81 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !77, file: !76, line: 16, size: 32, flags: DIFlagTypePassByValue, elements: !82, identifier: "_ZTSN11__mbstate_tUt_E")
!82 = !{!83, !85}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !81, file: !76, line: 18, baseType: !84, size: 32)
!84 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !81, file: !76, line: 19, baseType: !86, size: 32)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 32, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 4)
!89 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cwchar", directory: "")
!90 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !91, file: !89, line: 141)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !92, line: 20, baseType: !84)
!92 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!93 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !94, file: !89, line: 143)
!94 = !DISubprogram(name: "btowc", scope: !95, file: !95, line: 284, type: !96, flags: DIFlagPrototyped, spFlags: 0)
!95 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "8900d9ecbbe40d052c41becfbc5b5531")
!96 = !DISubroutineType(types: !97)
!97 = !{!91, !14}
!98 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !99, file: !89, line: 144)
!99 = !DISubprogram(name: "fgetwc", scope: !95, file: !95, line: 726, type: !100, flags: DIFlagPrototyped, spFlags: 0)
!100 = !DISubroutineType(types: !101)
!101 = !{!91, !102}
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !104, line: 5, baseType: !105)
!104 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "72a8fe90981f484acae7c6f3dfc5c2b7")
!105 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !104, line: 4, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS8_IO_FILE")
!106 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !107, file: !89, line: 145)
!107 = !DISubprogram(name: "fgetws", scope: !95, file: !95, line: 755, type: !108, flags: DIFlagPrototyped, spFlags: 0)
!108 = !DISubroutineType(types: !109)
!109 = !{!110, !112, !14, !113}
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!112 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !110)
!113 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !102)
!114 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !115, file: !89, line: 146)
!115 = !DISubprogram(name: "fputwc", scope: !95, file: !95, line: 740, type: !116, flags: DIFlagPrototyped, spFlags: 0)
!116 = !DISubroutineType(types: !117)
!117 = !{!91, !111, !102}
!118 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !119, file: !89, line: 147)
!119 = !DISubprogram(name: "fputws", scope: !95, file: !95, line: 762, type: !120, flags: DIFlagPrototyped, spFlags: 0)
!120 = !DISubroutineType(types: !121)
!121 = !{!14, !122, !113}
!122 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !123)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!125 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !126, file: !89, line: 148)
!126 = !DISubprogram(name: "fwide", scope: !95, file: !95, line: 573, type: !127, flags: DIFlagPrototyped, spFlags: 0)
!127 = !DISubroutineType(types: !128)
!128 = !{!14, !102, !14}
!129 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !130, file: !89, line: 149)
!130 = !DISubprogram(name: "fwprintf", scope: !95, file: !95, line: 580, type: !131, flags: DIFlagPrototyped, spFlags: 0)
!131 = !DISubroutineType(types: !132)
!132 = !{!14, !113, !122, null}
!133 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !134, file: !89, line: 150)
!134 = !DISubprogram(name: "fwscanf", linkageName: "__isoc99_fwscanf", scope: !95, file: !95, line: 640, type: !131, flags: DIFlagPrototyped, spFlags: 0)
!135 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !136, file: !89, line: 151)
!136 = !DISubprogram(name: "getwc", scope: !95, file: !95, line: 727, type: !100, flags: DIFlagPrototyped, spFlags: 0)
!137 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !138, file: !89, line: 152)
!138 = !DISubprogram(name: "getwchar", scope: !95, file: !95, line: 733, type: !139, flags: DIFlagPrototyped, spFlags: 0)
!139 = !DISubroutineType(types: !140)
!140 = !{!91}
!141 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !142, file: !89, line: 153)
!142 = !DISubprogram(name: "mbrlen", scope: !95, file: !95, line: 307, type: !143, flags: DIFlagPrototyped, spFlags: 0)
!143 = !DISubroutineType(types: !144)
!144 = !{!145, !147, !145, !149}
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !146, line: 46, baseType: !46)
!146 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/cs22mtech12008", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!147 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !148)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !150)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!151 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !152, file: !89, line: 154)
!152 = !DISubprogram(name: "mbrtowc", scope: !95, file: !95, line: 296, type: !153, flags: DIFlagPrototyped, spFlags: 0)
!153 = !DISubroutineType(types: !154)
!154 = !{!145, !112, !147, !145, !149}
!155 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !156, file: !89, line: 155)
!156 = !DISubprogram(name: "mbsinit", scope: !95, file: !95, line: 292, type: !157, flags: DIFlagPrototyped, spFlags: 0)
!157 = !DISubroutineType(types: !158)
!158 = !{!14, !159}
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!161 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !162, file: !89, line: 156)
!162 = !DISubprogram(name: "mbsrtowcs", scope: !95, file: !95, line: 337, type: !163, flags: DIFlagPrototyped, spFlags: 0)
!163 = !DISubroutineType(types: !164)
!164 = !{!145, !112, !165, !145, !149}
!165 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !166)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!167 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !168, file: !89, line: 157)
!168 = !DISubprogram(name: "putwc", scope: !95, file: !95, line: 741, type: !116, flags: DIFlagPrototyped, spFlags: 0)
!169 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !170, file: !89, line: 158)
!170 = !DISubprogram(name: "putwchar", scope: !95, file: !95, line: 747, type: !171, flags: DIFlagPrototyped, spFlags: 0)
!171 = !DISubroutineType(types: !172)
!172 = !{!91, !111}
!173 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !174, file: !89, line: 160)
!174 = !DISubprogram(name: "swprintf", scope: !95, file: !95, line: 590, type: !175, flags: DIFlagPrototyped, spFlags: 0)
!175 = !DISubroutineType(types: !176)
!176 = !{!14, !112, !145, !122, null}
!177 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !178, file: !89, line: 162)
!178 = !DISubprogram(name: "swscanf", linkageName: "__isoc99_swscanf", scope: !95, file: !95, line: 647, type: !179, flags: DIFlagPrototyped, spFlags: 0)
!179 = !DISubroutineType(types: !180)
!180 = !{!14, !122, !122, null}
!181 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !182, file: !89, line: 163)
!182 = !DISubprogram(name: "ungetwc", scope: !95, file: !95, line: 770, type: !183, flags: DIFlagPrototyped, spFlags: 0)
!183 = !DISubroutineType(types: !184)
!184 = !{!91, !91, !102}
!185 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !186, file: !89, line: 164)
!186 = !DISubprogram(name: "vfwprintf", scope: !95, file: !95, line: 598, type: !187, flags: DIFlagPrototyped, spFlags: 0)
!187 = !DISubroutineType(types: !188)
!188 = !{!14, !113, !122, !189}
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, flags: DIFlagTypePassByValue, elements: !191, identifier: "_ZTS13__va_list_tag")
!191 = !{!192, !194, !195, !197}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !190, file: !193, baseType: !84, size: 32)
!193 = !DIFile(filename: "Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Inheritance_with_data/dynamic_downcast_bug_3_UAS_SF.cpp", directory: "/home/cs22mtech12008")
!194 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !190, file: !193, baseType: !84, size: 32, offset: 32)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !190, file: !193, baseType: !196, size: 64, offset: 64)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !190, file: !193, baseType: !196, size: 64, offset: 128)
!198 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !199, file: !89, line: 166)
!199 = !DISubprogram(name: "vfwscanf", linkageName: "__isoc99_vfwscanf", scope: !95, file: !95, line: 693, type: !187, flags: DIFlagPrototyped, spFlags: 0)
!200 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !201, file: !89, line: 169)
!201 = !DISubprogram(name: "vswprintf", scope: !95, file: !95, line: 611, type: !202, flags: DIFlagPrototyped, spFlags: 0)
!202 = !DISubroutineType(types: !203)
!203 = !{!14, !112, !145, !122, !189}
!204 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !205, file: !89, line: 172)
!205 = !DISubprogram(name: "vswscanf", linkageName: "__isoc99_vswscanf", scope: !95, file: !95, line: 700, type: !206, flags: DIFlagPrototyped, spFlags: 0)
!206 = !DISubroutineType(types: !207)
!207 = !{!14, !122, !122, !189}
!208 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !209, file: !89, line: 174)
!209 = !DISubprogram(name: "vwprintf", scope: !95, file: !95, line: 606, type: !210, flags: DIFlagPrototyped, spFlags: 0)
!210 = !DISubroutineType(types: !211)
!211 = !{!14, !122, !189}
!212 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !213, file: !89, line: 176)
!213 = !DISubprogram(name: "vwscanf", linkageName: "__isoc99_vwscanf", scope: !95, file: !95, line: 697, type: !210, flags: DIFlagPrototyped, spFlags: 0)
!214 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !215, file: !89, line: 178)
!215 = !DISubprogram(name: "wcrtomb", scope: !95, file: !95, line: 301, type: !216, flags: DIFlagPrototyped, spFlags: 0)
!216 = !DISubroutineType(types: !217)
!217 = !{!145, !218, !111, !149}
!218 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !219)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!220 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !221, file: !89, line: 179)
!221 = !DISubprogram(name: "wcscat", scope: !95, file: !95, line: 97, type: !222, flags: DIFlagPrototyped, spFlags: 0)
!222 = !DISubroutineType(types: !223)
!223 = !{!110, !112, !122}
!224 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !225, file: !89, line: 180)
!225 = !DISubprogram(name: "wcscmp", scope: !95, file: !95, line: 106, type: !226, flags: DIFlagPrototyped, spFlags: 0)
!226 = !DISubroutineType(types: !227)
!227 = !{!14, !123, !123}
!228 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !229, file: !89, line: 181)
!229 = !DISubprogram(name: "wcscoll", scope: !95, file: !95, line: 131, type: !226, flags: DIFlagPrototyped, spFlags: 0)
!230 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !231, file: !89, line: 182)
!231 = !DISubprogram(name: "wcscpy", scope: !95, file: !95, line: 87, type: !222, flags: DIFlagPrototyped, spFlags: 0)
!232 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !233, file: !89, line: 183)
!233 = !DISubprogram(name: "wcscspn", scope: !95, file: !95, line: 187, type: !234, flags: DIFlagPrototyped, spFlags: 0)
!234 = !DISubroutineType(types: !235)
!235 = !{!145, !123, !123}
!236 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !237, file: !89, line: 184)
!237 = !DISubprogram(name: "wcsftime", scope: !95, file: !95, line: 834, type: !238, flags: DIFlagPrototyped, spFlags: 0)
!238 = !DISubroutineType(types: !239)
!239 = !{!145, !112, !145, !122, !240}
!240 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !241)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !243)
!243 = !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !95, line: 83, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS2tm")
!244 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !245, file: !89, line: 185)
!245 = !DISubprogram(name: "wcslen", scope: !95, file: !95, line: 222, type: !246, flags: DIFlagPrototyped, spFlags: 0)
!246 = !DISubroutineType(types: !247)
!247 = !{!145, !123}
!248 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !249, file: !89, line: 186)
!249 = !DISubprogram(name: "wcsncat", scope: !95, file: !95, line: 101, type: !250, flags: DIFlagPrototyped, spFlags: 0)
!250 = !DISubroutineType(types: !251)
!251 = !{!110, !112, !122, !145}
!252 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !253, file: !89, line: 187)
!253 = !DISubprogram(name: "wcsncmp", scope: !95, file: !95, line: 109, type: !254, flags: DIFlagPrototyped, spFlags: 0)
!254 = !DISubroutineType(types: !255)
!255 = !{!14, !123, !123, !145}
!256 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !257, file: !89, line: 188)
!257 = !DISubprogram(name: "wcsncpy", scope: !95, file: !95, line: 92, type: !250, flags: DIFlagPrototyped, spFlags: 0)
!258 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !259, file: !89, line: 189)
!259 = !DISubprogram(name: "wcsrtombs", scope: !95, file: !95, line: 343, type: !260, flags: DIFlagPrototyped, spFlags: 0)
!260 = !DISubroutineType(types: !261)
!261 = !{!145, !218, !262, !145, !149}
!262 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !263)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!264 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !265, file: !89, line: 190)
!265 = !DISubprogram(name: "wcsspn", scope: !95, file: !95, line: 191, type: !234, flags: DIFlagPrototyped, spFlags: 0)
!266 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !267, file: !89, line: 191)
!267 = !DISubprogram(name: "wcstod", scope: !95, file: !95, line: 377, type: !268, flags: DIFlagPrototyped, spFlags: 0)
!268 = !DISubroutineType(types: !269)
!269 = !{!270, !122, !271}
!270 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!271 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !272)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!273 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !274, file: !89, line: 193)
!274 = !DISubprogram(name: "wcstof", scope: !95, file: !95, line: 382, type: !275, flags: DIFlagPrototyped, spFlags: 0)
!275 = !DISubroutineType(types: !276)
!276 = !{!277, !122, !271}
!277 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!278 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !279, file: !89, line: 195)
!279 = !DISubprogram(name: "wcstok", scope: !95, file: !95, line: 217, type: !280, flags: DIFlagPrototyped, spFlags: 0)
!280 = !DISubroutineType(types: !281)
!281 = !{!110, !112, !122, !271}
!282 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !283, file: !89, line: 196)
!283 = !DISubprogram(name: "wcstol", scope: !95, file: !95, line: 428, type: !284, flags: DIFlagPrototyped, spFlags: 0)
!284 = !DISubroutineType(types: !285)
!285 = !{!286, !122, !271, !14}
!286 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!287 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !288, file: !89, line: 197)
!288 = !DISubprogram(name: "wcstoul", scope: !95, file: !95, line: 433, type: !289, flags: DIFlagPrototyped, spFlags: 0)
!289 = !DISubroutineType(types: !290)
!290 = !{!46, !122, !271, !14}
!291 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !292, file: !89, line: 198)
!292 = !DISubprogram(name: "wcsxfrm", scope: !95, file: !95, line: 135, type: !293, flags: DIFlagPrototyped, spFlags: 0)
!293 = !DISubroutineType(types: !294)
!294 = !{!145, !112, !122, !145}
!295 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !296, file: !89, line: 199)
!296 = !DISubprogram(name: "wctob", scope: !95, file: !95, line: 288, type: !297, flags: DIFlagPrototyped, spFlags: 0)
!297 = !DISubroutineType(types: !298)
!298 = !{!14, !91}
!299 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !300, file: !89, line: 200)
!300 = !DISubprogram(name: "wmemcmp", scope: !95, file: !95, line: 258, type: !254, flags: DIFlagPrototyped, spFlags: 0)
!301 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !302, file: !89, line: 201)
!302 = !DISubprogram(name: "wmemcpy", scope: !95, file: !95, line: 262, type: !250, flags: DIFlagPrototyped, spFlags: 0)
!303 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !304, file: !89, line: 202)
!304 = !DISubprogram(name: "wmemmove", scope: !95, file: !95, line: 267, type: !305, flags: DIFlagPrototyped, spFlags: 0)
!305 = !DISubroutineType(types: !306)
!306 = !{!110, !110, !123, !145}
!307 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !308, file: !89, line: 203)
!308 = !DISubprogram(name: "wmemset", scope: !95, file: !95, line: 271, type: !309, flags: DIFlagPrototyped, spFlags: 0)
!309 = !DISubroutineType(types: !310)
!310 = !{!110, !110, !111, !145}
!311 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !312, file: !89, line: 204)
!312 = !DISubprogram(name: "wprintf", scope: !95, file: !95, line: 587, type: !313, flags: DIFlagPrototyped, spFlags: 0)
!313 = !DISubroutineType(types: !314)
!314 = !{!14, !122, null}
!315 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !316, file: !89, line: 205)
!316 = !DISubprogram(name: "wscanf", linkageName: "__isoc99_wscanf", scope: !95, file: !95, line: 644, type: !313, flags: DIFlagPrototyped, spFlags: 0)
!317 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !318, file: !89, line: 206)
!318 = !DISubprogram(name: "wcschr", scope: !95, file: !95, line: 164, type: !319, flags: DIFlagPrototyped, spFlags: 0)
!319 = !DISubroutineType(types: !320)
!320 = !{!110, !123, !111}
!321 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !322, file: !89, line: 207)
!322 = !DISubprogram(name: "wcspbrk", scope: !95, file: !95, line: 201, type: !323, flags: DIFlagPrototyped, spFlags: 0)
!323 = !DISubroutineType(types: !324)
!324 = !{!110, !123, !123}
!325 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !326, file: !89, line: 208)
!326 = !DISubprogram(name: "wcsrchr", scope: !95, file: !95, line: 174, type: !319, flags: DIFlagPrototyped, spFlags: 0)
!327 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !328, file: !89, line: 209)
!328 = !DISubprogram(name: "wcsstr", scope: !95, file: !95, line: 212, type: !323, flags: DIFlagPrototyped, spFlags: 0)
!329 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !330, file: !89, line: 210)
!330 = !DISubprogram(name: "wmemchr", scope: !95, file: !95, line: 253, type: !331, flags: DIFlagPrototyped, spFlags: 0)
!331 = !DISubroutineType(types: !332)
!332 = !{!110, !123, !111, !145}
!333 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !334, entity: !335, file: !89, line: 251)
!334 = !DINamespace(name: "__gnu_cxx", scope: null)
!335 = !DISubprogram(name: "wcstold", scope: !95, file: !95, line: 384, type: !336, flags: DIFlagPrototyped, spFlags: 0)
!336 = !DISubroutineType(types: !337)
!337 = !{!338, !122, !271}
!338 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!339 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !334, entity: !340, file: !89, line: 260)
!340 = !DISubprogram(name: "wcstoll", scope: !95, file: !95, line: 441, type: !341, flags: DIFlagPrototyped, spFlags: 0)
!341 = !DISubroutineType(types: !342)
!342 = !{!343, !122, !271, !14}
!343 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!344 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !334, entity: !345, file: !89, line: 261)
!345 = !DISubprogram(name: "wcstoull", scope: !95, file: !95, line: 448, type: !346, flags: DIFlagPrototyped, spFlags: 0)
!346 = !DISubroutineType(types: !347)
!347 = !{!348, !122, !271, !14}
!348 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!349 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !335, file: !89, line: 267)
!350 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !340, file: !89, line: 268)
!351 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !345, file: !89, line: 269)
!352 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !274, file: !89, line: 283)
!353 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !199, file: !89, line: 286)
!354 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !205, file: !89, line: 289)
!355 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !213, file: !89, line: 292)
!356 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !335, file: !89, line: 296)
!357 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !340, file: !89, line: 297)
!358 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !345, file: !89, line: 298)
!359 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !360, file: !361, line: 66)
!360 = !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !362, file: !361, line: 97, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!361 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/exception_ptr.h", directory: "", checksumkind: CSK_MD5, checksum: "314ad14748ccb9ff85c65d17ebb0828b")
!362 = !DINamespace(name: "__exception_ptr", scope: !72)
!363 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !362, entity: !364, file: !361, line: 85)
!364 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !72, file: !361, line: 81, type: !365, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!365 = !DISubroutineType(types: !366)
!366 = !{null, !360}
!367 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !368, file: !361, line: 243)
!368 = !DISubprogram(name: "swap", linkageName: "_ZNSt15__exception_ptr4swapERNS_13exception_ptrES1_", scope: !362, file: !361, line: 230, type: !369, flags: DIFlagPrototyped, spFlags: 0)
!369 = !DISubroutineType(types: !370)
!370 = !{null, !371, !371}
!371 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !360, size: 64)
!372 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !373, file: !375, line: 53)
!373 = !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !374, line: 51, size: 768, flags: DIFlagFwdDecl, identifier: "_ZTS5lconv")
!374 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "0cf373fc44eed8073800bdb9da87b72f")
!375 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/clocale", directory: "")
!376 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !377, file: !375, line: 54)
!377 = !DISubprogram(name: "setlocale", scope: !374, file: !374, line: 122, type: !378, flags: DIFlagPrototyped, spFlags: 0)
!378 = !DISubroutineType(types: !379)
!379 = !{!219, !14, !148}
!380 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !381, file: !375, line: 55)
!381 = !DISubprogram(name: "localeconv", scope: !374, file: !374, line: 125, type: !382, flags: DIFlagPrototyped, spFlags: 0)
!382 = !DISubroutineType(types: !383)
!383 = !{!384}
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!385 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !386, file: !390, line: 64)
!386 = !DISubprogram(name: "isalnum", scope: !387, file: !387, line: 108, type: !388, flags: DIFlagPrototyped, spFlags: 0)
!387 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "36575f934ef4fe7e9d50a3cb17bd5c66")
!388 = !DISubroutineType(types: !389)
!389 = !{!14, !14}
!390 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cctype", directory: "")
!391 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !392, file: !390, line: 65)
!392 = !DISubprogram(name: "isalpha", scope: !387, file: !387, line: 109, type: !388, flags: DIFlagPrototyped, spFlags: 0)
!393 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !394, file: !390, line: 66)
!394 = !DISubprogram(name: "iscntrl", scope: !387, file: !387, line: 110, type: !388, flags: DIFlagPrototyped, spFlags: 0)
!395 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !396, file: !390, line: 67)
!396 = !DISubprogram(name: "isdigit", scope: !387, file: !387, line: 111, type: !388, flags: DIFlagPrototyped, spFlags: 0)
!397 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !398, file: !390, line: 68)
!398 = !DISubprogram(name: "isgraph", scope: !387, file: !387, line: 113, type: !388, flags: DIFlagPrototyped, spFlags: 0)
!399 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !400, file: !390, line: 69)
!400 = !DISubprogram(name: "islower", scope: !387, file: !387, line: 112, type: !388, flags: DIFlagPrototyped, spFlags: 0)
!401 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !402, file: !390, line: 70)
!402 = !DISubprogram(name: "isprint", scope: !387, file: !387, line: 114, type: !388, flags: DIFlagPrototyped, spFlags: 0)
!403 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !404, file: !390, line: 71)
!404 = !DISubprogram(name: "ispunct", scope: !387, file: !387, line: 115, type: !388, flags: DIFlagPrototyped, spFlags: 0)
!405 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !406, file: !390, line: 72)
!406 = !DISubprogram(name: "isspace", scope: !387, file: !387, line: 116, type: !388, flags: DIFlagPrototyped, spFlags: 0)
!407 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !408, file: !390, line: 73)
!408 = !DISubprogram(name: "isupper", scope: !387, file: !387, line: 117, type: !388, flags: DIFlagPrototyped, spFlags: 0)
!409 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !410, file: !390, line: 74)
!410 = !DISubprogram(name: "isxdigit", scope: !387, file: !387, line: 118, type: !388, flags: DIFlagPrototyped, spFlags: 0)
!411 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !412, file: !390, line: 75)
!412 = !DISubprogram(name: "tolower", scope: !387, file: !387, line: 122, type: !388, flags: DIFlagPrototyped, spFlags: 0)
!413 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !414, file: !390, line: 76)
!414 = !DISubprogram(name: "toupper", scope: !387, file: !387, line: 125, type: !388, flags: DIFlagPrototyped, spFlags: 0)
!415 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !416, file: !390, line: 87)
!416 = !DISubprogram(name: "isblank", scope: !387, file: !387, line: 130, type: !388, flags: DIFlagPrototyped, spFlags: 0)
!417 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !418, entity: !419, file: !420, line: 58)
!418 = !DINamespace(name: "__gnu_debug", scope: null)
!419 = !DINamespace(name: "__debug", scope: !72)
!420 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/debug/debug.h", directory: "", checksumkind: CSK_MD5, checksum: "752210a319f5f5d356cc29cd1ce3cdc7")
!421 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !422, file: !424, line: 52)
!422 = !DISubprogram(name: "abs", scope: !423, file: !423, line: 840, type: !388, flags: DIFlagPrototyped, spFlags: 0)
!423 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!424 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/std_abs.h", directory: "")
!425 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !426, file: !428, line: 131)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !423, line: 62, baseType: !427)
!427 = !DICompositeType(tag: DW_TAG_structure_type, file: !423, line: 58, size: 64, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!428 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cstdlib", directory: "")
!429 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !430, file: !428, line: 132)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !423, line: 70, baseType: !431)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !423, line: 66, size: 128, flags: DIFlagTypePassByValue, elements: !432, identifier: "_ZTS6ldiv_t")
!432 = !{!433, !434}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !431, file: !423, line: 68, baseType: !286, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !431, file: !423, line: 69, baseType: !286, size: 64, offset: 64)
!435 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !436, file: !428, line: 134)
!436 = !DISubprogram(name: "abort", scope: !423, file: !423, line: 591, type: !437, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!437 = !DISubroutineType(types: !438)
!438 = !{null}
!439 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !440, file: !428, line: 136)
!440 = !DISubprogram(name: "aligned_alloc", scope: !423, file: !423, line: 586, type: !441, flags: DIFlagPrototyped, spFlags: 0)
!441 = !DISubroutineType(types: !442)
!442 = !{!196, !145, !145}
!443 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !444, file: !428, line: 138)
!444 = !DISubprogram(name: "atexit", scope: !423, file: !423, line: 595, type: !445, flags: DIFlagPrototyped, spFlags: 0)
!445 = !DISubroutineType(types: !446)
!446 = !{!14, !447}
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!448 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !449, file: !428, line: 141)
!449 = !DISubprogram(name: "at_quick_exit", scope: !423, file: !423, line: 600, type: !445, flags: DIFlagPrototyped, spFlags: 0)
!450 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !451, file: !428, line: 144)
!451 = !DISubprogram(name: "atof", scope: !423, file: !423, line: 101, type: !452, flags: DIFlagPrototyped, spFlags: 0)
!452 = !DISubroutineType(types: !453)
!453 = !{!270, !148}
!454 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !455, file: !428, line: 145)
!455 = !DISubprogram(name: "atoi", scope: !423, file: !423, line: 104, type: !456, flags: DIFlagPrototyped, spFlags: 0)
!456 = !DISubroutineType(types: !457)
!457 = !{!14, !148}
!458 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !459, file: !428, line: 146)
!459 = !DISubprogram(name: "atol", scope: !423, file: !423, line: 107, type: !460, flags: DIFlagPrototyped, spFlags: 0)
!460 = !DISubroutineType(types: !461)
!461 = !{!286, !148}
!462 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !463, file: !428, line: 147)
!463 = !DISubprogram(name: "bsearch", scope: !423, file: !423, line: 820, type: !464, flags: DIFlagPrototyped, spFlags: 0)
!464 = !DISubroutineType(types: !465)
!465 = !{!196, !466, !466, !145, !145, !468}
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !423, line: 808, baseType: !469)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DISubroutineType(types: !471)
!471 = !{!14, !466, !466}
!472 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !473, file: !428, line: 148)
!473 = !DISubprogram(name: "calloc", scope: !423, file: !423, line: 542, type: !441, flags: DIFlagPrototyped, spFlags: 0)
!474 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !475, file: !428, line: 149)
!475 = !DISubprogram(name: "div", scope: !423, file: !423, line: 852, type: !476, flags: DIFlagPrototyped, spFlags: 0)
!476 = !DISubroutineType(types: !477)
!477 = !{!426, !14, !14}
!478 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !479, file: !428, line: 150)
!479 = !DISubprogram(name: "exit", scope: !423, file: !423, line: 617, type: !480, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!480 = !DISubroutineType(types: !481)
!481 = !{null, !14}
!482 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !483, file: !428, line: 151)
!483 = !DISubprogram(name: "free", scope: !423, file: !423, line: 565, type: !484, flags: DIFlagPrototyped, spFlags: 0)
!484 = !DISubroutineType(types: !485)
!485 = !{null, !196}
!486 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !487, file: !428, line: 152)
!487 = !DISubprogram(name: "getenv", scope: !423, file: !423, line: 634, type: !488, flags: DIFlagPrototyped, spFlags: 0)
!488 = !DISubroutineType(types: !489)
!489 = !{!219, !148}
!490 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !491, file: !428, line: 153)
!491 = !DISubprogram(name: "labs", scope: !423, file: !423, line: 841, type: !492, flags: DIFlagPrototyped, spFlags: 0)
!492 = !DISubroutineType(types: !493)
!493 = !{!286, !286}
!494 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !495, file: !428, line: 154)
!495 = !DISubprogram(name: "ldiv", scope: !423, file: !423, line: 854, type: !496, flags: DIFlagPrototyped, spFlags: 0)
!496 = !DISubroutineType(types: !497)
!497 = !{!430, !286, !286}
!498 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !499, file: !428, line: 155)
!499 = !DISubprogram(name: "malloc", scope: !423, file: !423, line: 539, type: !500, flags: DIFlagPrototyped, spFlags: 0)
!500 = !DISubroutineType(types: !501)
!501 = !{!196, !145}
!502 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !503, file: !428, line: 157)
!503 = !DISubprogram(name: "mblen", scope: !423, file: !423, line: 922, type: !504, flags: DIFlagPrototyped, spFlags: 0)
!504 = !DISubroutineType(types: !505)
!505 = !{!14, !148, !145}
!506 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !507, file: !428, line: 158)
!507 = !DISubprogram(name: "mbstowcs", scope: !423, file: !423, line: 933, type: !508, flags: DIFlagPrototyped, spFlags: 0)
!508 = !DISubroutineType(types: !509)
!509 = !{!145, !112, !147, !145}
!510 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !511, file: !428, line: 159)
!511 = !DISubprogram(name: "mbtowc", scope: !423, file: !423, line: 925, type: !512, flags: DIFlagPrototyped, spFlags: 0)
!512 = !DISubroutineType(types: !513)
!513 = !{!14, !112, !147, !145}
!514 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !515, file: !428, line: 161)
!515 = !DISubprogram(name: "qsort", scope: !423, file: !423, line: 830, type: !516, flags: DIFlagPrototyped, spFlags: 0)
!516 = !DISubroutineType(types: !517)
!517 = !{null, !196, !145, !145, !468}
!518 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !519, file: !428, line: 164)
!519 = !DISubprogram(name: "quick_exit", scope: !423, file: !423, line: 623, type: !480, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!520 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !521, file: !428, line: 167)
!521 = !DISubprogram(name: "rand", scope: !423, file: !423, line: 453, type: !12, flags: DIFlagPrototyped, spFlags: 0)
!522 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !523, file: !428, line: 168)
!523 = !DISubprogram(name: "realloc", scope: !423, file: !423, line: 550, type: !524, flags: DIFlagPrototyped, spFlags: 0)
!524 = !DISubroutineType(types: !525)
!525 = !{!196, !196, !145}
!526 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !527, file: !428, line: 169)
!527 = !DISubprogram(name: "srand", scope: !423, file: !423, line: 455, type: !528, flags: DIFlagPrototyped, spFlags: 0)
!528 = !DISubroutineType(types: !529)
!529 = !{null, !84}
!530 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !531, file: !428, line: 170)
!531 = !DISubprogram(name: "strtod", scope: !423, file: !423, line: 117, type: !532, flags: DIFlagPrototyped, spFlags: 0)
!532 = !DISubroutineType(types: !533)
!533 = !{!270, !147, !534}
!534 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !535)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!536 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !537, file: !428, line: 171)
!537 = !DISubprogram(name: "strtol", scope: !423, file: !423, line: 176, type: !538, flags: DIFlagPrototyped, spFlags: 0)
!538 = !DISubroutineType(types: !539)
!539 = !{!286, !147, !534, !14}
!540 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !541, file: !428, line: 172)
!541 = !DISubprogram(name: "strtoul", scope: !423, file: !423, line: 180, type: !542, flags: DIFlagPrototyped, spFlags: 0)
!542 = !DISubroutineType(types: !543)
!543 = !{!46, !147, !534, !14}
!544 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !545, file: !428, line: 173)
!545 = !DISubprogram(name: "system", scope: !423, file: !423, line: 784, type: !456, flags: DIFlagPrototyped, spFlags: 0)
!546 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !547, file: !428, line: 175)
!547 = !DISubprogram(name: "wcstombs", scope: !423, file: !423, line: 936, type: !548, flags: DIFlagPrototyped, spFlags: 0)
!548 = !DISubroutineType(types: !549)
!549 = !{!145, !218, !122, !145}
!550 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !551, file: !428, line: 176)
!551 = !DISubprogram(name: "wctomb", scope: !423, file: !423, line: 929, type: !552, flags: DIFlagPrototyped, spFlags: 0)
!552 = !DISubroutineType(types: !553)
!553 = !{!14, !219, !111}
!554 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !334, entity: !555, file: !428, line: 204)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !423, line: 80, baseType: !556)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !423, line: 76, size: 128, flags: DIFlagTypePassByValue, elements: !557, identifier: "_ZTS7lldiv_t")
!557 = !{!558, !559}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !556, file: !423, line: 78, baseType: !343, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !556, file: !423, line: 79, baseType: !343, size: 64, offset: 64)
!560 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !334, entity: !561, file: !428, line: 210)
!561 = !DISubprogram(name: "_Exit", scope: !423, file: !423, line: 629, type: !480, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!562 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !334, entity: !563, file: !428, line: 214)
!563 = !DISubprogram(name: "llabs", scope: !423, file: !423, line: 844, type: !564, flags: DIFlagPrototyped, spFlags: 0)
!564 = !DISubroutineType(types: !565)
!565 = !{!343, !343}
!566 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !334, entity: !567, file: !428, line: 220)
!567 = !DISubprogram(name: "lldiv", scope: !423, file: !423, line: 858, type: !568, flags: DIFlagPrototyped, spFlags: 0)
!568 = !DISubroutineType(types: !569)
!569 = !{!555, !343, !343}
!570 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !334, entity: !571, file: !428, line: 231)
!571 = !DISubprogram(name: "atoll", scope: !423, file: !423, line: 112, type: !572, flags: DIFlagPrototyped, spFlags: 0)
!572 = !DISubroutineType(types: !573)
!573 = !{!343, !148}
!574 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !334, entity: !575, file: !428, line: 232)
!575 = !DISubprogram(name: "strtoll", scope: !423, file: !423, line: 200, type: !576, flags: DIFlagPrototyped, spFlags: 0)
!576 = !DISubroutineType(types: !577)
!577 = !{!343, !147, !534, !14}
!578 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !334, entity: !579, file: !428, line: 233)
!579 = !DISubprogram(name: "strtoull", scope: !423, file: !423, line: 205, type: !580, flags: DIFlagPrototyped, spFlags: 0)
!580 = !DISubroutineType(types: !581)
!581 = !{!348, !147, !534, !14}
!582 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !334, entity: !583, file: !428, line: 235)
!583 = !DISubprogram(name: "strtof", scope: !423, file: !423, line: 123, type: !584, flags: DIFlagPrototyped, spFlags: 0)
!584 = !DISubroutineType(types: !585)
!585 = !{!277, !147, !534}
!586 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !334, entity: !587, file: !428, line: 236)
!587 = !DISubprogram(name: "strtold", scope: !423, file: !423, line: 126, type: !588, flags: DIFlagPrototyped, spFlags: 0)
!588 = !DISubroutineType(types: !589)
!589 = !{!338, !147, !534}
!590 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !555, file: !428, line: 244)
!591 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !561, file: !428, line: 246)
!592 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !563, file: !428, line: 248)
!593 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !594, file: !428, line: 249)
!594 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !334, file: !428, line: 217, type: !568, flags: DIFlagPrototyped, spFlags: 0)
!595 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !567, file: !428, line: 250)
!596 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !571, file: !428, line: 252)
!597 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !583, file: !428, line: 253)
!598 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !575, file: !428, line: 254)
!599 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !579, file: !428, line: 255)
!600 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !587, file: !428, line: 256)
!601 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !602, file: !604, line: 98)
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !603, line: 7, baseType: !105)
!603 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!604 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cstdio", directory: "")
!605 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !606, file: !604, line: 99)
!606 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !607, line: 84, baseType: !608)
!607 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fpos_t", file: !609, line: 14, baseType: !610)
!609 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h", directory: "", checksumkind: CSK_MD5, checksum: "32de8bdaf3551a6c0a9394f9af4389ce")
!610 = !DICompositeType(tag: DW_TAG_structure_type, name: "_G_fpos_t", file: !609, line: 10, size: 128, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
!611 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !612, file: !604, line: 101)
!612 = !DISubprogram(name: "clearerr", scope: !607, file: !607, line: 757, type: !613, flags: DIFlagPrototyped, spFlags: 0)
!613 = !DISubroutineType(types: !614)
!614 = !{null, !615}
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!616 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !617, file: !604, line: 102)
!617 = !DISubprogram(name: "fclose", scope: !607, file: !607, line: 213, type: !618, flags: DIFlagPrototyped, spFlags: 0)
!618 = !DISubroutineType(types: !619)
!619 = !{!14, !615}
!620 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !621, file: !604, line: 103)
!621 = !DISubprogram(name: "feof", scope: !607, file: !607, line: 759, type: !618, flags: DIFlagPrototyped, spFlags: 0)
!622 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !623, file: !604, line: 104)
!623 = !DISubprogram(name: "ferror", scope: !607, file: !607, line: 761, type: !618, flags: DIFlagPrototyped, spFlags: 0)
!624 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !625, file: !604, line: 105)
!625 = !DISubprogram(name: "fflush", scope: !607, file: !607, line: 218, type: !618, flags: DIFlagPrototyped, spFlags: 0)
!626 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !627, file: !604, line: 106)
!627 = !DISubprogram(name: "fgetc", scope: !607, file: !607, line: 485, type: !618, flags: DIFlagPrototyped, spFlags: 0)
!628 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !629, file: !604, line: 107)
!629 = !DISubprogram(name: "fgetpos", scope: !607, file: !607, line: 731, type: !630, flags: DIFlagPrototyped, spFlags: 0)
!630 = !DISubroutineType(types: !631)
!631 = !{!14, !632, !633}
!632 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !615)
!633 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !634)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!635 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !636, file: !604, line: 108)
!636 = !DISubprogram(name: "fgets", scope: !607, file: !607, line: 564, type: !637, flags: DIFlagPrototyped, spFlags: 0)
!637 = !DISubroutineType(types: !638)
!638 = !{!219, !218, !14, !632}
!639 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !640, file: !604, line: 109)
!640 = !DISubprogram(name: "fopen", scope: !607, file: !607, line: 246, type: !641, flags: DIFlagPrototyped, spFlags: 0)
!641 = !DISubroutineType(types: !642)
!642 = !{!615, !147, !147}
!643 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !644, file: !604, line: 110)
!644 = !DISubprogram(name: "fprintf", scope: !607, file: !607, line: 326, type: !645, flags: DIFlagPrototyped, spFlags: 0)
!645 = !DISubroutineType(types: !646)
!646 = !{!14, !632, !147, null}
!647 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !648, file: !604, line: 111)
!648 = !DISubprogram(name: "fputc", scope: !607, file: !607, line: 521, type: !649, flags: DIFlagPrototyped, spFlags: 0)
!649 = !DISubroutineType(types: !650)
!650 = !{!14, !14, !615}
!651 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !652, file: !604, line: 112)
!652 = !DISubprogram(name: "fputs", scope: !607, file: !607, line: 626, type: !653, flags: DIFlagPrototyped, spFlags: 0)
!653 = !DISubroutineType(types: !654)
!654 = !{!14, !147, !632}
!655 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !656, file: !604, line: 113)
!656 = !DISubprogram(name: "fread", scope: !607, file: !607, line: 646, type: !657, flags: DIFlagPrototyped, spFlags: 0)
!657 = !DISubroutineType(types: !658)
!658 = !{!145, !659, !145, !145, !632}
!659 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !196)
!660 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !661, file: !604, line: 114)
!661 = !DISubprogram(name: "freopen", scope: !607, file: !607, line: 252, type: !662, flags: DIFlagPrototyped, spFlags: 0)
!662 = !DISubroutineType(types: !663)
!663 = !{!615, !147, !147, !632}
!664 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !665, file: !604, line: 115)
!665 = !DISubprogram(name: "fscanf", linkageName: "__isoc99_fscanf", scope: !607, file: !607, line: 407, type: !645, flags: DIFlagPrototyped, spFlags: 0)
!666 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !667, file: !604, line: 116)
!667 = !DISubprogram(name: "fseek", scope: !607, file: !607, line: 684, type: !668, flags: DIFlagPrototyped, spFlags: 0)
!668 = !DISubroutineType(types: !669)
!669 = !{!14, !615, !286, !14}
!670 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !671, file: !604, line: 117)
!671 = !DISubprogram(name: "fsetpos", scope: !607, file: !607, line: 736, type: !672, flags: DIFlagPrototyped, spFlags: 0)
!672 = !DISubroutineType(types: !673)
!673 = !{!14, !615, !674}
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !606)
!676 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !677, file: !604, line: 118)
!677 = !DISubprogram(name: "ftell", scope: !607, file: !607, line: 689, type: !678, flags: DIFlagPrototyped, spFlags: 0)
!678 = !DISubroutineType(types: !679)
!679 = !{!286, !615}
!680 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !681, file: !604, line: 119)
!681 = !DISubprogram(name: "fwrite", scope: !607, file: !607, line: 652, type: !682, flags: DIFlagPrototyped, spFlags: 0)
!682 = !DISubroutineType(types: !683)
!683 = !{!145, !684, !145, !145, !632}
!684 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !466)
!685 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !686, file: !604, line: 120)
!686 = !DISubprogram(name: "getc", scope: !607, file: !607, line: 486, type: !618, flags: DIFlagPrototyped, spFlags: 0)
!687 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !688, file: !604, line: 121)
!688 = !DISubprogram(name: "getchar", scope: !607, file: !607, line: 492, type: !12, flags: DIFlagPrototyped, spFlags: 0)
!689 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !690, file: !604, line: 126)
!690 = !DISubprogram(name: "perror", scope: !607, file: !607, line: 775, type: !691, flags: DIFlagPrototyped, spFlags: 0)
!691 = !DISubroutineType(types: !692)
!692 = !{null, !148}
!693 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !694, file: !604, line: 127)
!694 = !DISubprogram(name: "printf", scope: !607, file: !607, line: 332, type: !695, flags: DIFlagPrototyped, spFlags: 0)
!695 = !DISubroutineType(types: !696)
!696 = !{!14, !147, null}
!697 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !698, file: !604, line: 128)
!698 = !DISubprogram(name: "putc", scope: !607, file: !607, line: 522, type: !649, flags: DIFlagPrototyped, spFlags: 0)
!699 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !700, file: !604, line: 129)
!700 = !DISubprogram(name: "putchar", scope: !607, file: !607, line: 528, type: !388, flags: DIFlagPrototyped, spFlags: 0)
!701 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !702, file: !604, line: 130)
!702 = !DISubprogram(name: "puts", scope: !607, file: !607, line: 632, type: !456, flags: DIFlagPrototyped, spFlags: 0)
!703 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !704, file: !604, line: 131)
!704 = !DISubprogram(name: "remove", scope: !607, file: !607, line: 146, type: !456, flags: DIFlagPrototyped, spFlags: 0)
!705 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !706, file: !604, line: 132)
!706 = !DISubprogram(name: "rename", scope: !607, file: !607, line: 148, type: !707, flags: DIFlagPrototyped, spFlags: 0)
!707 = !DISubroutineType(types: !708)
!708 = !{!14, !148, !148}
!709 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !710, file: !604, line: 133)
!710 = !DISubprogram(name: "rewind", scope: !607, file: !607, line: 694, type: !613, flags: DIFlagPrototyped, spFlags: 0)
!711 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !712, file: !604, line: 134)
!712 = !DISubprogram(name: "scanf", linkageName: "__isoc99_scanf", scope: !607, file: !607, line: 410, type: !695, flags: DIFlagPrototyped, spFlags: 0)
!713 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !714, file: !604, line: 135)
!714 = !DISubprogram(name: "setbuf", scope: !607, file: !607, line: 304, type: !715, flags: DIFlagPrototyped, spFlags: 0)
!715 = !DISubroutineType(types: !716)
!716 = !{null, !632, !218}
!717 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !718, file: !604, line: 136)
!718 = !DISubprogram(name: "setvbuf", scope: !607, file: !607, line: 308, type: !719, flags: DIFlagPrototyped, spFlags: 0)
!719 = !DISubroutineType(types: !720)
!720 = !{!14, !632, !218, !14, !145}
!721 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !722, file: !604, line: 137)
!722 = !DISubprogram(name: "sprintf", scope: !607, file: !607, line: 334, type: !723, flags: DIFlagPrototyped, spFlags: 0)
!723 = !DISubroutineType(types: !724)
!724 = !{!14, !218, !147, null}
!725 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !726, file: !604, line: 138)
!726 = !DISubprogram(name: "sscanf", linkageName: "__isoc99_sscanf", scope: !607, file: !607, line: 412, type: !727, flags: DIFlagPrototyped, spFlags: 0)
!727 = !DISubroutineType(types: !728)
!728 = !{!14, !147, !147, null}
!729 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !730, file: !604, line: 139)
!730 = !DISubprogram(name: "tmpfile", scope: !607, file: !607, line: 173, type: !731, flags: DIFlagPrototyped, spFlags: 0)
!731 = !DISubroutineType(types: !732)
!732 = !{!615}
!733 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !734, file: !604, line: 141)
!734 = !DISubprogram(name: "tmpnam", scope: !607, file: !607, line: 187, type: !735, flags: DIFlagPrototyped, spFlags: 0)
!735 = !DISubroutineType(types: !736)
!736 = !{!219, !219}
!737 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !738, file: !604, line: 143)
!738 = !DISubprogram(name: "ungetc", scope: !607, file: !607, line: 639, type: !649, flags: DIFlagPrototyped, spFlags: 0)
!739 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !740, file: !604, line: 144)
!740 = !DISubprogram(name: "vfprintf", scope: !607, file: !607, line: 341, type: !741, flags: DIFlagPrototyped, spFlags: 0)
!741 = !DISubroutineType(types: !742)
!742 = !{!14, !632, !147, !189}
!743 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !744, file: !604, line: 145)
!744 = !DISubprogram(name: "vprintf", scope: !607, file: !607, line: 347, type: !745, flags: DIFlagPrototyped, spFlags: 0)
!745 = !DISubroutineType(types: !746)
!746 = !{!14, !147, !189}
!747 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !748, file: !604, line: 146)
!748 = !DISubprogram(name: "vsprintf", scope: !607, file: !607, line: 349, type: !749, flags: DIFlagPrototyped, spFlags: 0)
!749 = !DISubroutineType(types: !750)
!750 = !{!14, !218, !147, !189}
!751 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !334, entity: !752, file: !604, line: 175)
!752 = !DISubprogram(name: "snprintf", scope: !607, file: !607, line: 354, type: !753, flags: DIFlagPrototyped, spFlags: 0)
!753 = !DISubroutineType(types: !754)
!754 = !{!14, !218, !145, !147, null}
!755 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !334, entity: !756, file: !604, line: 176)
!756 = !DISubprogram(name: "vfscanf", linkageName: "__isoc99_vfscanf", scope: !607, file: !607, line: 451, type: !741, flags: DIFlagPrototyped, spFlags: 0)
!757 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !334, entity: !758, file: !604, line: 177)
!758 = !DISubprogram(name: "vscanf", linkageName: "__isoc99_vscanf", scope: !607, file: !607, line: 456, type: !745, flags: DIFlagPrototyped, spFlags: 0)
!759 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !334, entity: !760, file: !604, line: 178)
!760 = !DISubprogram(name: "vsnprintf", scope: !607, file: !607, line: 358, type: !761, flags: DIFlagPrototyped, spFlags: 0)
!761 = !DISubroutineType(types: !762)
!762 = !{!14, !218, !145, !147, !189}
!763 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !334, entity: !764, file: !604, line: 179)
!764 = !DISubprogram(name: "vsscanf", linkageName: "__isoc99_vsscanf", scope: !607, file: !607, line: 459, type: !765, flags: DIFlagPrototyped, spFlags: 0)
!765 = !DISubroutineType(types: !766)
!766 = !{!14, !147, !147, !189}
!767 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !752, file: !604, line: 185)
!768 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !756, file: !604, line: 186)
!769 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !758, file: !604, line: 187)
!770 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !760, file: !604, line: 188)
!771 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !764, file: !604, line: 189)
!772 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !773, file: !779, line: 58)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "max_align_t", file: !774, line: 24, baseType: !775)
!774 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/__stddef_max_align_t.h", directory: "/home/cs22mtech12008", checksumkind: CSK_MD5, checksum: "48e8e2456f77e6cda35d245130fa7259")
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !774, line: 19, size: 256, flags: DIFlagTypePassByValue, elements: !776, identifier: "_ZTS11max_align_t")
!776 = !{!777, !778}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "__clang_max_align_nonce1", scope: !775, file: !774, line: 20, baseType: !343, size: 64, align: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "__clang_max_align_nonce2", scope: !775, file: !774, line: 22, baseType: !338, size: 128, align: 128, offset: 128)
!779 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cstddef", directory: "")
!780 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !781, file: !787, line: 82)
!781 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctrans_t", file: !782, line: 48, baseType: !783)
!782 = !DIFile(filename: "/usr/include/wctype.h", directory: "", checksumkind: CSK_MD5, checksum: "e83097fbf57cc71ea472db59df3ba75d")
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !785)
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !786, line: 41, baseType: !14)
!786 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!787 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cwctype", directory: "")
!788 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !789, file: !787, line: 83)
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctype_t", file: !790, line: 38, baseType: !46)
!790 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "3598b9d23ef5d76319026b46e316b55f")
!791 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !91, file: !787, line: 84)
!792 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !793, file: !787, line: 86)
!793 = !DISubprogram(name: "iswalnum", scope: !790, file: !790, line: 95, type: !297, flags: DIFlagPrototyped, spFlags: 0)
!794 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !795, file: !787, line: 87)
!795 = !DISubprogram(name: "iswalpha", scope: !790, file: !790, line: 101, type: !297, flags: DIFlagPrototyped, spFlags: 0)
!796 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !797, file: !787, line: 89)
!797 = !DISubprogram(name: "iswblank", scope: !790, file: !790, line: 146, type: !297, flags: DIFlagPrototyped, spFlags: 0)
!798 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !799, file: !787, line: 91)
!799 = !DISubprogram(name: "iswcntrl", scope: !790, file: !790, line: 104, type: !297, flags: DIFlagPrototyped, spFlags: 0)
!800 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !801, file: !787, line: 92)
!801 = !DISubprogram(name: "iswctype", scope: !790, file: !790, line: 159, type: !802, flags: DIFlagPrototyped, spFlags: 0)
!802 = !DISubroutineType(types: !803)
!803 = !{!14, !91, !789}
!804 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !805, file: !787, line: 93)
!805 = !DISubprogram(name: "iswdigit", scope: !790, file: !790, line: 108, type: !297, flags: DIFlagPrototyped, spFlags: 0)
!806 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !807, file: !787, line: 94)
!807 = !DISubprogram(name: "iswgraph", scope: !790, file: !790, line: 112, type: !297, flags: DIFlagPrototyped, spFlags: 0)
!808 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !809, file: !787, line: 95)
!809 = !DISubprogram(name: "iswlower", scope: !790, file: !790, line: 117, type: !297, flags: DIFlagPrototyped, spFlags: 0)
!810 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !811, file: !787, line: 96)
!811 = !DISubprogram(name: "iswprint", scope: !790, file: !790, line: 120, type: !297, flags: DIFlagPrototyped, spFlags: 0)
!812 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !813, file: !787, line: 97)
!813 = !DISubprogram(name: "iswpunct", scope: !790, file: !790, line: 125, type: !297, flags: DIFlagPrototyped, spFlags: 0)
!814 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !815, file: !787, line: 98)
!815 = !DISubprogram(name: "iswspace", scope: !790, file: !790, line: 130, type: !297, flags: DIFlagPrototyped, spFlags: 0)
!816 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !817, file: !787, line: 99)
!817 = !DISubprogram(name: "iswupper", scope: !790, file: !790, line: 135, type: !297, flags: DIFlagPrototyped, spFlags: 0)
!818 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !819, file: !787, line: 100)
!819 = !DISubprogram(name: "iswxdigit", scope: !790, file: !790, line: 140, type: !297, flags: DIFlagPrototyped, spFlags: 0)
!820 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !821, file: !787, line: 101)
!821 = !DISubprogram(name: "towctrans", scope: !782, file: !782, line: 55, type: !822, flags: DIFlagPrototyped, spFlags: 0)
!822 = !DISubroutineType(types: !823)
!823 = !{!91, !91, !781}
!824 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !825, file: !787, line: 102)
!825 = !DISubprogram(name: "towlower", scope: !790, file: !790, line: 166, type: !826, flags: DIFlagPrototyped, spFlags: 0)
!826 = !DISubroutineType(types: !827)
!827 = !{!91, !91}
!828 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !829, file: !787, line: 103)
!829 = !DISubprogram(name: "towupper", scope: !790, file: !790, line: 169, type: !826, flags: DIFlagPrototyped, spFlags: 0)
!830 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !831, file: !787, line: 104)
!831 = !DISubprogram(name: "wctrans", scope: !782, file: !782, line: 52, type: !832, flags: DIFlagPrototyped, spFlags: 0)
!832 = !DISubroutineType(types: !833)
!833 = !{!781, !148}
!834 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !72, entity: !835, file: !787, line: 105)
!835 = !DISubprogram(name: "wctype", scope: !790, file: !790, line: 155, type: !836, flags: DIFlagPrototyped, spFlags: 0)
!836 = !DISubroutineType(types: !837)
!837 = !{!789, !148}
!838 = !{i32 7, !"Dwarf Version", i32 5}
!839 = !{i32 2, !"Debug Info Version", i32 3}
!840 = !{i32 1, !"wchar_size", i32 4}
!841 = !{i32 8, !"PIC Level", i32 2}
!842 = !{i32 7, !"PIE Level", i32 2}
!843 = !{i32 7, !"uwtable", i32 2}
!844 = !{i32 7, !"frame-pointer", i32 2}
!845 = !{!"clang version 16.0.0"}
!846 = distinct !DISubprogram(name: "runThread1", linkageName: "_Z10runThread1Pv", scope: !7, file: !7, line: 38, type: !847, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !849)
!847 = !DISubroutineType(types: !848)
!848 = !{!196, !196}
!849 = !{}
!850 = !DILocalVariable(name: "arg", arg: 1, scope: !846, file: !7, line: 38, type: !196)
!851 = !DILocation(line: 38, column: 24, scope: !846)
!852 = !DILocalVariable(name: "basePtr", scope: !846, file: !7, line: 39, type: !5)
!853 = !DILocation(line: 39, column: 8, scope: !846)
!854 = !DILocation(line: 39, column: 34, scope: !846)
!855 = !DILocation(line: 40, column: 5, scope: !846)
!856 = !DILocation(line: 40, column: 14, scope: !846)
!857 = !DILocalVariable(name: "a1Ptr", scope: !846, file: !7, line: 41, type: !21)
!858 = !DILocation(line: 41, column: 9, scope: !846)
!859 = !DILocation(line: 41, column: 35, scope: !846)
!860 = !DILocation(line: 41, column: 17, scope: !846)
!861 = !DILocation(line: 42, column: 9, scope: !862)
!862 = distinct !DILexicalBlock(scope: !846, file: !7, line: 42, column: 9)
!863 = !DILocation(line: 42, column: 9, scope: !846)
!864 = !DILocation(line: 43, column: 9, scope: !865)
!865 = distinct !DILexicalBlock(scope: !862, file: !7, line: 42, column: 16)
!866 = !DILocation(line: 43, column: 16, scope: !865)
!867 = !DILocation(line: 44, column: 5, scope: !865)
!868 = !DILocation(line: 45, column: 5, scope: !846)
!869 = distinct !DISubprogram(name: "runThread2", linkageName: "_Z10runThread2Pv", scope: !7, file: !7, line: 48, type: !847, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !849)
!870 = !DILocalVariable(name: "arg", arg: 1, scope: !869, file: !7, line: 48, type: !196)
!871 = !DILocation(line: 48, column: 24, scope: !869)
!872 = !DILocation(line: 49, column: 5, scope: !869)
!873 = !DILocalVariable(name: "basePtr", scope: !869, file: !7, line: 50, type: !5)
!874 = !DILocation(line: 50, column: 8, scope: !869)
!875 = !DILocation(line: 50, column: 34, scope: !869)
!876 = !DILocation(line: 51, column: 5, scope: !869)
!877 = !DILocation(line: 51, column: 14, scope: !869)
!878 = !DILocalVariable(name: "a2Ptr", scope: !869, file: !7, line: 52, type: !30)
!879 = !DILocation(line: 52, column: 9, scope: !869)
!880 = !DILocation(line: 52, column: 35, scope: !869)
!881 = !DILocation(line: 52, column: 17, scope: !869)
!882 = !DILocation(line: 53, column: 9, scope: !883)
!883 = distinct !DILexicalBlock(scope: !869, file: !7, line: 53, column: 9)
!884 = !DILocation(line: 53, column: 9, scope: !869)
!885 = !DILocation(line: 54, column: 9, scope: !886)
!886 = distinct !DILexicalBlock(scope: !883, file: !7, line: 53, column: 16)
!887 = !DILocation(line: 54, column: 16, scope: !886)
!888 = !DILocation(line: 55, column: 5, scope: !886)
!889 = !DILocation(line: 56, column: 5, scope: !869)
!890 = distinct !DISubprogram(name: "m2", linkageName: "_ZN1A2m2Ev", scope: !6, file: !7, line: 12, type: !17, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !20, retainedNodes: !849)
!891 = !DILocalVariable(name: "this", arg: 1, scope: !890, type: !5, flags: DIFlagArtificial | DIFlagObjectPointer)
!892 = !DILocation(line: 0, scope: !890)
!893 = !DILocation(line: 13, column: 23, scope: !890)
!894 = !DILocation(line: 13, column: 44, scope: !890)
!895 = !DILocation(line: 13, column: 42, scope: !890)
!896 = !DILocation(line: 13, column: 45, scope: !890)
!897 = !DILocation(line: 14, column: 9, scope: !890)
!898 = distinct !DISubprogram(name: "m2", linkageName: "_ZN2A22m2Ev", scope: !31, file: !7, line: 31, type: !36, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !35, retainedNodes: !849)
!899 = !DILocalVariable(name: "this", arg: 1, scope: !898, type: !30, flags: DIFlagArtificial | DIFlagObjectPointer)
!900 = !DILocation(line: 0, scope: !898)
!901 = !DILocation(line: 32, column: 23, scope: !898)
!902 = !DILocation(line: 32, column: 42, scope: !898)
!903 = !DILocation(line: 32, column: 40, scope: !898)
!904 = !DILocation(line: 32, column: 44, scope: !898)
!905 = !DILocation(line: 33, column: 9, scope: !898)
!906 = distinct !DISubprogram(name: "createThread", linkageName: "_Z12createThreadv", scope: !7, file: !7, line: 59, type: !437, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !849)
!907 = !DILocalVariable(name: "a1Obj", scope: !906, file: !7, line: 60, type: !22)
!908 = !DILocation(line: 60, column: 8, scope: !906)
!909 = !DILocalVariable(name: "a2Obj", scope: !906, file: !7, line: 61, type: !31)
!910 = !DILocation(line: 61, column: 8, scope: !906)
!911 = !DILocation(line: 63, column: 15, scope: !906)
!912 = !DILocation(line: 64, column: 15, scope: !906)
!913 = !DILocation(line: 66, column: 46, scope: !906)
!914 = !DILocation(line: 66, column: 5, scope: !906)
!915 = !DILocation(line: 69, column: 46, scope: !906)
!916 = !DILocation(line: 69, column: 5, scope: !906)
!917 = !DILocation(line: 70, column: 1, scope: !906)
!918 = distinct !DISubprogram(name: "A1", linkageName: "_ZN2A1C2Ev", scope: !22, file: !7, line: 20, type: !27, scopeLine: 20, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !919, retainedNodes: !849)
!919 = !DISubprogram(name: "A1", scope: !22, type: !27, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!920 = !DILocalVariable(name: "this", arg: 1, scope: !918, type: !21, flags: DIFlagArtificial | DIFlagObjectPointer)
!921 = !DILocation(line: 0, scope: !918)
!922 = !DILocation(line: 20, column: 11, scope: !918)
!923 = !DILocation(line: 22, column: 9, scope: !918)
!924 = distinct !DISubprogram(name: "A2", linkageName: "_ZN2A2C2Ev", scope: !31, file: !7, line: 28, type: !36, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !925, retainedNodes: !849)
!925 = !DISubprogram(name: "A2", scope: !31, type: !36, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!926 = !DILocalVariable(name: "this", arg: 1, scope: !924, type: !30, flags: DIFlagArtificial | DIFlagObjectPointer)
!927 = !DILocation(line: 0, scope: !924)
!928 = !DILocation(line: 28, column: 11, scope: !924)
!929 = !DILocation(line: 30, column: 9, scope: !924)
!930 = distinct !DISubprogram(name: "main", scope: !7, file: !7, line: 72, type: !12, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !849)
!931 = !DILocation(line: 73, column: 5, scope: !930)
!932 = !DILocation(line: 74, column: 18, scope: !930)
!933 = !DILocation(line: 74, column: 5, scope: !930)
!934 = !DILocation(line: 75, column: 18, scope: !930)
!935 = !DILocation(line: 75, column: 5, scope: !930)
!936 = !DILocation(line: 76, column: 5, scope: !930)
!937 = distinct !DISubprogram(name: "A", linkageName: "_ZN1AC2Ev", scope: !6, file: !7, line: 5, type: !17, scopeLine: 5, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !938, retainedNodes: !849)
!938 = !DISubprogram(name: "A", scope: !6, type: !17, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: 0)
!939 = !DILocalVariable(name: "this", arg: 1, scope: !937, type: !5, flags: DIFlagArtificial | DIFlagObjectPointer)
!940 = !DILocation(line: 0, scope: !937)
!941 = !DILocation(line: 5, column: 7, scope: !937)
!942 = !DILocation(line: 7, column: 9, scope: !937)
!943 = distinct !DISubprogram(name: "m1", linkageName: "_ZN2A12m1Ev", scope: !22, file: !7, line: 23, type: !27, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !26, retainedNodes: !849)
!944 = !DILocalVariable(name: "this", arg: 1, scope: !943, type: !21, flags: DIFlagArtificial | DIFlagObjectPointer)
!945 = !DILocation(line: 0, scope: !943)
!946 = !DILocation(line: 24, column: 23, scope: !943)
!947 = !DILocation(line: 24, column: 42, scope: !943)
!948 = !DILocation(line: 24, column: 40, scope: !943)
!949 = !DILocation(line: 24, column: 44, scope: !943)
!950 = !DILocation(line: 25, column: 9, scope: !943)
!951 = distinct !DISubprogram(name: "m1", linkageName: "_ZN1A2m1Ev", scope: !6, file: !7, line: 8, type: !17, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !16, retainedNodes: !849)
!952 = !DILocalVariable(name: "this", arg: 1, scope: !951, type: !5, flags: DIFlagArtificial | DIFlagObjectPointer)
!953 = !DILocation(line: 0, scope: !951)
!954 = !DILocation(line: 9, column: 23, scope: !951)
!955 = !DILocation(line: 9, column: 44, scope: !951)
!956 = !DILocation(line: 9, column: 42, scope: !951)
!957 = !DILocation(line: 9, column: 45, scope: !951)
!958 = !DILocation(line: 10, column: 9, scope: !951)
