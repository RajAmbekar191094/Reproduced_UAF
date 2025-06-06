; ModuleID = '/home/cs22mtech12008/NEW_CLONE_FOR_BENCHMARKS/Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Thread_creation_Patterns/Thread_creation_multiple_scopes/thread_creation_various_scopes.cpp'
source_filename = "/home/cs22mtech12008/NEW_CLONE_FOR_BENCHMARKS/Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Thread_creation_Patterns/Thread_creation_multiple_scopes/thread_creation_various_scopes.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }

@a = dso_local global i32 10, align 4, !dbg !0
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [25 x i8] c"Value in global thread: \00", align 1, !dbg !8
@.str.1 = private unnamed_addr constant [26 x i8] c"Value in local thread 1: \00", align 1, !dbg !16
@.str.2 = private unnamed_addr constant [26 x i8] c"Value in local thread 2: \00", align 1, !dbg !21
@.str.3 = private unnamed_addr constant [26 x i8] c"Value in local thread 3: \00", align 1, !dbg !23
@.str.4 = private unnamed_addr constant [26 x i8] c"Value in local thread 4: \00", align 1, !dbg !25
@.str.5 = private unnamed_addr constant [26 x i8] c"Value in local thread 5: \00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [26 x i8] c"Value in local thread 6: \00", align 1, !dbg !29
@.str.7 = private unnamed_addr constant [26 x i8] c"Value in local thread 7: \00", align 1, !dbg !31
@global_t = dso_local global i64 0, align 8, !dbg !33

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef ptr @_Z15runGlobalThreadPv(ptr noundef %0) #0 !dbg !817 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !821, metadata !DIExpression()), !dbg !822
  call void @llvm.dbg.declare(metadata ptr %3, metadata !823, metadata !DIExpression()), !dbg !824
  %4 = load ptr, ptr %2, align 8, !dbg !825
  store ptr %4, ptr %3, align 8, !dbg !824
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str), !dbg !826
  %6 = load ptr, ptr %3, align 8, !dbg !827
  %7 = load i32, ptr %6, align 4, !dbg !828
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %7), !dbg !829
  %9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !830
  ret ptr null, !dbg !831
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #2

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef ptr @_Z15runLocalThread1Pv(ptr noundef %0) #0 !dbg !832 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !833, metadata !DIExpression()), !dbg !834
  call void @llvm.dbg.declare(metadata ptr %3, metadata !835, metadata !DIExpression()), !dbg !836
  %4 = load ptr, ptr %2, align 8, !dbg !837
  store ptr %4, ptr %3, align 8, !dbg !836
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.1), !dbg !838
  %6 = load ptr, ptr %3, align 8, !dbg !839
  %7 = load i32, ptr %6, align 4, !dbg !840
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %7), !dbg !841
  %9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !842
  ret ptr null, !dbg !843
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef ptr @_Z15runLocalThread2Pv(ptr noundef %0) #0 !dbg !844 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !845, metadata !DIExpression()), !dbg !846
  call void @llvm.dbg.declare(metadata ptr %3, metadata !847, metadata !DIExpression()), !dbg !848
  %4 = load ptr, ptr %2, align 8, !dbg !849
  store ptr %4, ptr %3, align 8, !dbg !848
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.2), !dbg !850
  %6 = load ptr, ptr %3, align 8, !dbg !851
  %7 = load i32, ptr %6, align 4, !dbg !852
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %7), !dbg !853
  %9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !854
  ret ptr null, !dbg !855
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef ptr @_Z15runLocalThread3Pv(ptr noundef %0) #0 !dbg !856 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !857, metadata !DIExpression()), !dbg !858
  call void @llvm.dbg.declare(metadata ptr %3, metadata !859, metadata !DIExpression()), !dbg !860
  %4 = load ptr, ptr %2, align 8, !dbg !861
  store ptr %4, ptr %3, align 8, !dbg !860
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.3), !dbg !862
  %6 = load ptr, ptr %3, align 8, !dbg !863
  %7 = load i32, ptr %6, align 4, !dbg !864
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %7), !dbg !865
  %9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !866
  ret ptr null, !dbg !867
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef ptr @_Z15runLocalThread4Pv(ptr noundef %0) #0 !dbg !868 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !869, metadata !DIExpression()), !dbg !870
  call void @llvm.dbg.declare(metadata ptr %3, metadata !871, metadata !DIExpression()), !dbg !872
  %4 = load ptr, ptr %2, align 8, !dbg !873
  store ptr %4, ptr %3, align 8, !dbg !872
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.4), !dbg !874
  %6 = load ptr, ptr %3, align 8, !dbg !875
  %7 = load i32, ptr %6, align 4, !dbg !876
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %7), !dbg !877
  %9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !878
  ret ptr null, !dbg !879
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef ptr @_Z15runLocalThread5Pv(ptr noundef %0) #0 !dbg !880 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !881, metadata !DIExpression()), !dbg !882
  call void @llvm.dbg.declare(metadata ptr %3, metadata !883, metadata !DIExpression()), !dbg !884
  %4 = load ptr, ptr %2, align 8, !dbg !885
  store ptr %4, ptr %3, align 8, !dbg !884
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.5), !dbg !886
  %6 = load ptr, ptr %3, align 8, !dbg !887
  %7 = load i32, ptr %6, align 4, !dbg !888
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %7), !dbg !889
  %9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !890
  ret ptr null, !dbg !891
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef ptr @_Z15runLocalThread6Pv(ptr noundef %0) #0 !dbg !892 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !893, metadata !DIExpression()), !dbg !894
  call void @llvm.dbg.declare(metadata ptr %3, metadata !895, metadata !DIExpression()), !dbg !896
  %4 = load ptr, ptr %2, align 8, !dbg !897
  store ptr %4, ptr %3, align 8, !dbg !896
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.6), !dbg !898
  %6 = load ptr, ptr %3, align 8, !dbg !899
  %7 = load i32, ptr %6, align 4, !dbg !900
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %7), !dbg !901
  %9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !902
  ret ptr null, !dbg !903
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef ptr @_Z15runLocalThread7Pv(ptr noundef %0) #0 !dbg !904 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !905, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.declare(metadata ptr %3, metadata !907, metadata !DIExpression()), !dbg !908
  %4 = load ptr, ptr %2, align 8, !dbg !909
  store ptr %4, ptr %3, align 8, !dbg !908
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.7), !dbg !910
  %6 = load ptr, ptr %3, align 8, !dbg !911
  %7 = load i32, ptr %6, align 4, !dbg !912
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %7), !dbg !913
  %9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !914
  ret ptr null, !dbg !915
}

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main() #3 !dbg !916 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32 0, ptr %1, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !917, metadata !DIExpression()), !dbg !918
  store i32 10, ptr %2, align 4, !dbg !918
  call void @llvm.dbg.declare(metadata ptr %3, metadata !919, metadata !DIExpression()), !dbg !920
  %10 = call i32 @pthread_create(ptr noundef %3, ptr noundef null, ptr noundef @_Z15runLocalThread1Pv, ptr noundef %2) #5, !dbg !921
  %11 = load i32, ptr %2, align 4, !dbg !922
  %12 = icmp eq i32 %11, 1, !dbg !924
  br i1 %12, label %13, label %17, !dbg !925

13:                                               ; preds = %0
  call void @llvm.dbg.declare(metadata ptr %4, metadata !926, metadata !DIExpression()), !dbg !928
  %14 = call i32 @pthread_create(ptr noundef %4, ptr noundef null, ptr noundef @_Z15runLocalThread2Pv, ptr noundef %2) #5, !dbg !929
  store i32 11, ptr %2, align 4, !dbg !930
  %15 = load i64, ptr %4, align 8, !dbg !931
  %16 = call i32 @pthread_join(i64 noundef %15, ptr noundef null), !dbg !932
  br label %21, !dbg !933

17:                                               ; preds = %0
  call void @llvm.dbg.declare(metadata ptr %5, metadata !934, metadata !DIExpression()), !dbg !936
  %18 = call i32 @pthread_create(ptr noundef %5, ptr noundef null, ptr noundef @_Z15runLocalThread3Pv, ptr noundef %2) #5, !dbg !937
  store i32 12, ptr %2, align 4, !dbg !938
  %19 = load i64, ptr %5, align 8, !dbg !939
  %20 = call i32 @pthread_join(i64 noundef %19, ptr noundef null), !dbg !940
  br label %21

21:                                               ; preds = %17, %13
  call void @llvm.dbg.declare(metadata ptr %6, metadata !941, metadata !DIExpression()), !dbg !943
  %22 = call i32 @pthread_create(ptr noundef %6, ptr noundef null, ptr noundef @_Z15runLocalThread4Pv, ptr noundef %2) #5, !dbg !944
  call void @llvm.dbg.declare(metadata ptr %7, metadata !945, metadata !DIExpression()), !dbg !947
  %23 = call i32 @pthread_create(ptr noundef %7, ptr noundef null, ptr noundef @_Z15runLocalThread5Pv, ptr noundef %2) #5, !dbg !948
  call void @llvm.dbg.declare(metadata ptr %8, metadata !949, metadata !DIExpression()), !dbg !951
  %24 = call i32 @pthread_create(ptr noundef %8, ptr noundef null, ptr noundef @_Z15runLocalThread6Pv, ptr noundef %2) #5, !dbg !952
  call void @llvm.dbg.declare(metadata ptr %9, metadata !953, metadata !DIExpression()), !dbg !955
  %25 = call i32 @pthread_create(ptr noundef %9, ptr noundef null, ptr noundef @_Z15runLocalThread7Pv, ptr noundef %2) #5, !dbg !956
  %26 = load i64, ptr %6, align 8, !dbg !957
  %27 = call i32 @pthread_join(i64 noundef %26, ptr noundef null), !dbg !958
  %28 = load i64, ptr %7, align 8, !dbg !959
  %29 = call i32 @pthread_join(i64 noundef %28, ptr noundef null), !dbg !960
  %30 = load i64, ptr %8, align 8, !dbg !961
  %31 = call i32 @pthread_join(i64 noundef %30, ptr noundef null), !dbg !962
  %32 = load i64, ptr %9, align 8, !dbg !963
  %33 = call i32 @pthread_join(i64 noundef %32, ptr noundef null), !dbg !964
  %34 = call i32 @pthread_create(ptr noundef @global_t, ptr noundef null, ptr noundef @_Z15runGlobalThreadPv, ptr noundef @a) #5, !dbg !965
  %35 = load i64, ptr %3, align 8, !dbg !966
  %36 = call i32 @pthread_join(i64 noundef %35, ptr noundef null), !dbg !967
  %37 = load i64, ptr @global_t, align 8, !dbg !968
  %38 = call i32 @pthread_join(i64 noundef %37, ptr noundef null), !dbg !969
  ret i32 0, !dbg !970
}

; Function Attrs: nounwind
declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

declare i32 @pthread_join(i64 noundef, ptr noundef) #2

attributes #0 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!809, !810, !811, !812, !813, !814, !815}
!llvm.ident = !{!816}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !10, line: 8, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !3, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !7, imports: !38, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/cs22mtech12008/NEW_CLONE_FOR_BENCHMARKS/Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Thread_creation_Patterns/Thread_creation_multiple_scopes/thread_creation_various_scopes.cpp", directory: "/home/cs22mtech12008/UseAfterScope/Scripts", checksumkind: CSK_MD5, checksum: "1951b50f414cc8895648758329ce422c")
!4 = !{!5}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !{!0, !8, !16, !21, !23, !25, !27, !29, !31, !33}
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(scope: null, file: !10, line: 13, type: !11, isLocal: true, isDefinition: true)
!10 = !DIFile(filename: "NEW_CLONE_FOR_BENCHMARKS/Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Thread_creation_Patterns/Thread_creation_multiple_scopes/thread_creation_various_scopes.cpp", directory: "/home/cs22mtech12008", checksumkind: CSK_MD5, checksum: "1951b50f414cc8895648758329ce422c")
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 200, elements: !14)
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !{!15}
!15 = !DISubrange(count: 25)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(scope: null, file: !10, line: 20, type: !18, isLocal: true, isDefinition: true)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 208, elements: !19)
!19 = !{!20}
!20 = !DISubrange(count: 26)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(scope: null, file: !10, line: 27, type: !18, isLocal: true, isDefinition: true)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !10, line: 34, type: !18, isLocal: true, isDefinition: true)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(scope: null, file: !10, line: 41, type: !18, isLocal: true, isDefinition: true)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !10, line: 48, type: !18, isLocal: true, isDefinition: true)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(scope: null, file: !10, line: 55, type: !18, isLocal: true, isDefinition: true)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(scope: null, file: !10, line: 62, type: !18, isLocal: true, isDefinition: true)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(name: "global_t", scope: !2, file: !10, line: 66, type: !35, isLocal: false, isDefinition: true)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !36, line: 27, baseType: !37)
!36 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "2d764266ce95ab26d4a4767c2ec78176")
!37 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!38 = !{!39, !58, !61, !66, !74, !82, !86, !93, !97, !101, !103, !105, !109, !119, !123, !129, !135, !137, !141, !145, !149, !153, !166, !168, !172, !176, !180, !182, !188, !192, !196, !198, !200, !204, !212, !216, !220, !224, !226, !232, !234, !241, !246, !250, !255, !259, !263, !267, !269, !271, !275, !279, !283, !285, !289, !293, !295, !297, !301, !307, !312, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !331, !335, !340, !344, !348, !353, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !389, !393, !397, !403, !407, !411, !416, !418, !422, !426, !430, !440, !442, !446, !450, !454, !458, !462, !466, !470, !474, !478, !482, !486, !488, !492, !496, !500, !506, !510, !514, !516, !520, !524, !530, !532, !536, !540, !544, !548, !552, !556, !560, !561, !562, !563, !565, !566, !567, !568, !569, !570, !571, !575, !581, !586, !590, !592, !594, !596, !598, !605, !609, !613, !617, !621, !625, !630, !634, !636, !640, !646, !650, !655, !657, !659, !663, !667, !669, !671, !673, !675, !679, !681, !683, !687, !691, !695, !699, !703, !707, !709, !713, !717, !721, !725, !727, !729, !733, !737, !738, !739, !740, !741, !742, !750, !758, !761, !762, !764, !766, !768, !770, !774, !776, !778, !780, !782, !784, !786, !788, !790, !794, !798, !800, !804, !808}
!39 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !41, file: !57, line: 64)
!40 = !DINamespace(name: "std", scope: null)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !42, line: 6, baseType: !43)
!42 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !44, line: 21, baseType: !45)
!44 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !44, line: 13, size: 64, flags: DIFlagTypePassByValue, elements: !46, identifier: "_ZTS11__mbstate_t")
!46 = !{!47, !48}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !45, file: !44, line: 15, baseType: !6, size: 32)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !45, file: !44, line: 20, baseType: !49, size: 32, offset: 32)
!49 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !45, file: !44, line: 16, size: 32, flags: DIFlagTypePassByValue, elements: !50, identifier: "_ZTSN11__mbstate_tUt_E")
!50 = !{!51, !53}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !49, file: !44, line: 18, baseType: !52, size: 32)
!52 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !49, file: !44, line: 19, baseType: !54, size: 32)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 32, elements: !55)
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
!65 = !{!59, !6}
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
!77 = !{!78, !80, !6, !81}
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
!89 = !{!6, !90, !81}
!90 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !91)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!93 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !94, file: !57, line: 148)
!94 = !DISubprogram(name: "fwide", scope: !63, file: !63, line: 573, type: !95, flags: DIFlagPrototyped, spFlags: 0)
!95 = !DISubroutineType(types: !96)
!96 = !{!6, !70, !6}
!97 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !98, file: !57, line: 149)
!98 = !DISubprogram(name: "fwprintf", scope: !63, file: !63, line: 580, type: !99, flags: DIFlagPrototyped, spFlags: 0)
!99 = !DISubroutineType(types: !100)
!100 = !{!6, !81, !90, null}
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
!112 = !{!113, !115, !113, !117}
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !114, line: 46, baseType: !37)
!114 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/cs22mtech12008", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!115 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !116)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !118)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!119 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !120, file: !57, line: 154)
!120 = !DISubprogram(name: "mbrtowc", scope: !63, file: !63, line: 296, type: !121, flags: DIFlagPrototyped, spFlags: 0)
!121 = !DISubroutineType(types: !122)
!122 = !{!113, !80, !115, !113, !117}
!123 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !124, file: !57, line: 155)
!124 = !DISubprogram(name: "mbsinit", scope: !63, file: !63, line: 292, type: !125, flags: DIFlagPrototyped, spFlags: 0)
!125 = !DISubroutineType(types: !126)
!126 = !{!6, !127}
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!129 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !130, file: !57, line: 156)
!130 = !DISubprogram(name: "mbsrtowcs", scope: !63, file: !63, line: 337, type: !131, flags: DIFlagPrototyped, spFlags: 0)
!131 = !DISubroutineType(types: !132)
!132 = !{!113, !80, !133, !113, !117}
!133 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !134)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!135 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !136, file: !57, line: 157)
!136 = !DISubprogram(name: "putwc", scope: !63, file: !63, line: 741, type: !84, flags: DIFlagPrototyped, spFlags: 0)
!137 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !138, file: !57, line: 158)
!138 = !DISubprogram(name: "putwchar", scope: !63, file: !63, line: 747, type: !139, flags: DIFlagPrototyped, spFlags: 0)
!139 = !DISubroutineType(types: !140)
!140 = !{!59, !79}
!141 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !142, file: !57, line: 160)
!142 = !DISubprogram(name: "swprintf", scope: !63, file: !63, line: 590, type: !143, flags: DIFlagPrototyped, spFlags: 0)
!143 = !DISubroutineType(types: !144)
!144 = !{!6, !80, !113, !90, null}
!145 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !146, file: !57, line: 162)
!146 = !DISubprogram(name: "swscanf", linkageName: "__isoc99_swscanf", scope: !63, file: !63, line: 647, type: !147, flags: DIFlagPrototyped, spFlags: 0)
!147 = !DISubroutineType(types: !148)
!148 = !{!6, !90, !90, null}
!149 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !150, file: !57, line: 163)
!150 = !DISubprogram(name: "ungetwc", scope: !63, file: !63, line: 770, type: !151, flags: DIFlagPrototyped, spFlags: 0)
!151 = !DISubroutineType(types: !152)
!152 = !{!59, !59, !70}
!153 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !154, file: !57, line: 164)
!154 = !DISubprogram(name: "vfwprintf", scope: !63, file: !63, line: 598, type: !155, flags: DIFlagPrototyped, spFlags: 0)
!155 = !DISubroutineType(types: !156)
!156 = !{!6, !81, !90, !157}
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, flags: DIFlagTypePassByValue, elements: !159, identifier: "_ZTS13__va_list_tag")
!159 = !{!160, !162, !163, !165}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !158, file: !161, baseType: !52, size: 32)
!161 = !DIFile(filename: "NEW_CLONE_FOR_BENCHMARKS/Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Thread_creation_Patterns/Thread_creation_multiple_scopes/thread_creation_various_scopes.cpp", directory: "/home/cs22mtech12008")
!162 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !158, file: !161, baseType: !52, size: 32, offset: 32)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !158, file: !161, baseType: !164, size: 64, offset: 64)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !158, file: !161, baseType: !164, size: 64, offset: 128)
!166 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !167, file: !57, line: 166)
!167 = !DISubprogram(name: "vfwscanf", linkageName: "__isoc99_vfwscanf", scope: !63, file: !63, line: 693, type: !155, flags: DIFlagPrototyped, spFlags: 0)
!168 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !169, file: !57, line: 169)
!169 = !DISubprogram(name: "vswprintf", scope: !63, file: !63, line: 611, type: !170, flags: DIFlagPrototyped, spFlags: 0)
!170 = !DISubroutineType(types: !171)
!171 = !{!6, !80, !113, !90, !157}
!172 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !173, file: !57, line: 172)
!173 = !DISubprogram(name: "vswscanf", linkageName: "__isoc99_vswscanf", scope: !63, file: !63, line: 700, type: !174, flags: DIFlagPrototyped, spFlags: 0)
!174 = !DISubroutineType(types: !175)
!175 = !{!6, !90, !90, !157}
!176 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !177, file: !57, line: 174)
!177 = !DISubprogram(name: "vwprintf", scope: !63, file: !63, line: 606, type: !178, flags: DIFlagPrototyped, spFlags: 0)
!178 = !DISubroutineType(types: !179)
!179 = !{!6, !90, !157}
!180 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !181, file: !57, line: 176)
!181 = !DISubprogram(name: "vwscanf", linkageName: "__isoc99_vwscanf", scope: !63, file: !63, line: 697, type: !178, flags: DIFlagPrototyped, spFlags: 0)
!182 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !183, file: !57, line: 178)
!183 = !DISubprogram(name: "wcrtomb", scope: !63, file: !63, line: 301, type: !184, flags: DIFlagPrototyped, spFlags: 0)
!184 = !DISubroutineType(types: !185)
!185 = !{!113, !186, !79, !117}
!186 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !187)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!188 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !189, file: !57, line: 179)
!189 = !DISubprogram(name: "wcscat", scope: !63, file: !63, line: 97, type: !190, flags: DIFlagPrototyped, spFlags: 0)
!190 = !DISubroutineType(types: !191)
!191 = !{!78, !80, !90}
!192 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !193, file: !57, line: 180)
!193 = !DISubprogram(name: "wcscmp", scope: !63, file: !63, line: 106, type: !194, flags: DIFlagPrototyped, spFlags: 0)
!194 = !DISubroutineType(types: !195)
!195 = !{!6, !91, !91}
!196 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !197, file: !57, line: 181)
!197 = !DISubprogram(name: "wcscoll", scope: !63, file: !63, line: 131, type: !194, flags: DIFlagPrototyped, spFlags: 0)
!198 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !199, file: !57, line: 182)
!199 = !DISubprogram(name: "wcscpy", scope: !63, file: !63, line: 87, type: !190, flags: DIFlagPrototyped, spFlags: 0)
!200 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !201, file: !57, line: 183)
!201 = !DISubprogram(name: "wcscspn", scope: !63, file: !63, line: 187, type: !202, flags: DIFlagPrototyped, spFlags: 0)
!202 = !DISubroutineType(types: !203)
!203 = !{!113, !91, !91}
!204 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !205, file: !57, line: 184)
!205 = !DISubprogram(name: "wcsftime", scope: !63, file: !63, line: 834, type: !206, flags: DIFlagPrototyped, spFlags: 0)
!206 = !DISubroutineType(types: !207)
!207 = !{!113, !80, !113, !90, !208}
!208 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !209)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !211)
!211 = !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !63, line: 83, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS2tm")
!212 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !213, file: !57, line: 185)
!213 = !DISubprogram(name: "wcslen", scope: !63, file: !63, line: 222, type: !214, flags: DIFlagPrototyped, spFlags: 0)
!214 = !DISubroutineType(types: !215)
!215 = !{!113, !91}
!216 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !217, file: !57, line: 186)
!217 = !DISubprogram(name: "wcsncat", scope: !63, file: !63, line: 101, type: !218, flags: DIFlagPrototyped, spFlags: 0)
!218 = !DISubroutineType(types: !219)
!219 = !{!78, !80, !90, !113}
!220 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !221, file: !57, line: 187)
!221 = !DISubprogram(name: "wcsncmp", scope: !63, file: !63, line: 109, type: !222, flags: DIFlagPrototyped, spFlags: 0)
!222 = !DISubroutineType(types: !223)
!223 = !{!6, !91, !91, !113}
!224 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !225, file: !57, line: 188)
!225 = !DISubprogram(name: "wcsncpy", scope: !63, file: !63, line: 92, type: !218, flags: DIFlagPrototyped, spFlags: 0)
!226 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !227, file: !57, line: 189)
!227 = !DISubprogram(name: "wcsrtombs", scope: !63, file: !63, line: 343, type: !228, flags: DIFlagPrototyped, spFlags: 0)
!228 = !DISubroutineType(types: !229)
!229 = !{!113, !186, !230, !113, !117}
!230 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !231)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!232 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !233, file: !57, line: 190)
!233 = !DISubprogram(name: "wcsspn", scope: !63, file: !63, line: 191, type: !202, flags: DIFlagPrototyped, spFlags: 0)
!234 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !235, file: !57, line: 191)
!235 = !DISubprogram(name: "wcstod", scope: !63, file: !63, line: 377, type: !236, flags: DIFlagPrototyped, spFlags: 0)
!236 = !DISubroutineType(types: !237)
!237 = !{!238, !90, !239}
!238 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!239 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !240)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!241 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !242, file: !57, line: 193)
!242 = !DISubprogram(name: "wcstof", scope: !63, file: !63, line: 382, type: !243, flags: DIFlagPrototyped, spFlags: 0)
!243 = !DISubroutineType(types: !244)
!244 = !{!245, !90, !239}
!245 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!246 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !247, file: !57, line: 195)
!247 = !DISubprogram(name: "wcstok", scope: !63, file: !63, line: 217, type: !248, flags: DIFlagPrototyped, spFlags: 0)
!248 = !DISubroutineType(types: !249)
!249 = !{!78, !80, !90, !239}
!250 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !251, file: !57, line: 196)
!251 = !DISubprogram(name: "wcstol", scope: !63, file: !63, line: 428, type: !252, flags: DIFlagPrototyped, spFlags: 0)
!252 = !DISubroutineType(types: !253)
!253 = !{!254, !90, !239, !6}
!254 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!255 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !256, file: !57, line: 197)
!256 = !DISubprogram(name: "wcstoul", scope: !63, file: !63, line: 433, type: !257, flags: DIFlagPrototyped, spFlags: 0)
!257 = !DISubroutineType(types: !258)
!258 = !{!37, !90, !239, !6}
!259 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !260, file: !57, line: 198)
!260 = !DISubprogram(name: "wcsxfrm", scope: !63, file: !63, line: 135, type: !261, flags: DIFlagPrototyped, spFlags: 0)
!261 = !DISubroutineType(types: !262)
!262 = !{!113, !80, !90, !113}
!263 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !264, file: !57, line: 199)
!264 = !DISubprogram(name: "wctob", scope: !63, file: !63, line: 288, type: !265, flags: DIFlagPrototyped, spFlags: 0)
!265 = !DISubroutineType(types: !266)
!266 = !{!6, !59}
!267 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !268, file: !57, line: 200)
!268 = !DISubprogram(name: "wmemcmp", scope: !63, file: !63, line: 258, type: !222, flags: DIFlagPrototyped, spFlags: 0)
!269 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !270, file: !57, line: 201)
!270 = !DISubprogram(name: "wmemcpy", scope: !63, file: !63, line: 262, type: !218, flags: DIFlagPrototyped, spFlags: 0)
!271 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !272, file: !57, line: 202)
!272 = !DISubprogram(name: "wmemmove", scope: !63, file: !63, line: 267, type: !273, flags: DIFlagPrototyped, spFlags: 0)
!273 = !DISubroutineType(types: !274)
!274 = !{!78, !78, !91, !113}
!275 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !276, file: !57, line: 203)
!276 = !DISubprogram(name: "wmemset", scope: !63, file: !63, line: 271, type: !277, flags: DIFlagPrototyped, spFlags: 0)
!277 = !DISubroutineType(types: !278)
!278 = !{!78, !78, !79, !113}
!279 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !280, file: !57, line: 204)
!280 = !DISubprogram(name: "wprintf", scope: !63, file: !63, line: 587, type: !281, flags: DIFlagPrototyped, spFlags: 0)
!281 = !DISubroutineType(types: !282)
!282 = !{!6, !90, null}
!283 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !284, file: !57, line: 205)
!284 = !DISubprogram(name: "wscanf", linkageName: "__isoc99_wscanf", scope: !63, file: !63, line: 644, type: !281, flags: DIFlagPrototyped, spFlags: 0)
!285 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !286, file: !57, line: 206)
!286 = !DISubprogram(name: "wcschr", scope: !63, file: !63, line: 164, type: !287, flags: DIFlagPrototyped, spFlags: 0)
!287 = !DISubroutineType(types: !288)
!288 = !{!78, !91, !79}
!289 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !290, file: !57, line: 207)
!290 = !DISubprogram(name: "wcspbrk", scope: !63, file: !63, line: 201, type: !291, flags: DIFlagPrototyped, spFlags: 0)
!291 = !DISubroutineType(types: !292)
!292 = !{!78, !91, !91}
!293 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !294, file: !57, line: 208)
!294 = !DISubprogram(name: "wcsrchr", scope: !63, file: !63, line: 174, type: !287, flags: DIFlagPrototyped, spFlags: 0)
!295 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !296, file: !57, line: 209)
!296 = !DISubprogram(name: "wcsstr", scope: !63, file: !63, line: 212, type: !291, flags: DIFlagPrototyped, spFlags: 0)
!297 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !298, file: !57, line: 210)
!298 = !DISubprogram(name: "wmemchr", scope: !63, file: !63, line: 253, type: !299, flags: DIFlagPrototyped, spFlags: 0)
!299 = !DISubroutineType(types: !300)
!300 = !{!78, !91, !79, !113}
!301 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !302, entity: !303, file: !57, line: 251)
!302 = !DINamespace(name: "__gnu_cxx", scope: null)
!303 = !DISubprogram(name: "wcstold", scope: !63, file: !63, line: 384, type: !304, flags: DIFlagPrototyped, spFlags: 0)
!304 = !DISubroutineType(types: !305)
!305 = !{!306, !90, !239}
!306 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!307 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !302, entity: !308, file: !57, line: 260)
!308 = !DISubprogram(name: "wcstoll", scope: !63, file: !63, line: 441, type: !309, flags: DIFlagPrototyped, spFlags: 0)
!309 = !DISubroutineType(types: !310)
!310 = !{!311, !90, !239, !6}
!311 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!312 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !302, entity: !313, file: !57, line: 261)
!313 = !DISubprogram(name: "wcstoull", scope: !63, file: !63, line: 448, type: !314, flags: DIFlagPrototyped, spFlags: 0)
!314 = !DISubroutineType(types: !315)
!315 = !{!316, !90, !239, !6}
!316 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!317 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !303, file: !57, line: 267)
!318 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !308, file: !57, line: 268)
!319 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !313, file: !57, line: 269)
!320 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !242, file: !57, line: 283)
!321 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !167, file: !57, line: 286)
!322 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !173, file: !57, line: 289)
!323 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !181, file: !57, line: 292)
!324 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !303, file: !57, line: 296)
!325 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !308, file: !57, line: 297)
!326 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !313, file: !57, line: 298)
!327 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !328, file: !329, line: 66)
!328 = !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !330, file: !329, line: 97, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!329 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/exception_ptr.h", directory: "", checksumkind: CSK_MD5, checksum: "314ad14748ccb9ff85c65d17ebb0828b")
!330 = !DINamespace(name: "__exception_ptr", scope: !40)
!331 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !330, entity: !332, file: !329, line: 85)
!332 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !40, file: !329, line: 81, type: !333, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!333 = !DISubroutineType(types: !334)
!334 = !{null, !328}
!335 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !336, file: !329, line: 243)
!336 = !DISubprogram(name: "swap", linkageName: "_ZNSt15__exception_ptr4swapERNS_13exception_ptrES1_", scope: !330, file: !329, line: 230, type: !337, flags: DIFlagPrototyped, spFlags: 0)
!337 = !DISubroutineType(types: !338)
!338 = !{null, !339, !339}
!339 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !328, size: 64)
!340 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !341, file: !343, line: 53)
!341 = !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !342, line: 51, size: 768, flags: DIFlagFwdDecl, identifier: "_ZTS5lconv")
!342 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "0cf373fc44eed8073800bdb9da87b72f")
!343 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/clocale", directory: "")
!344 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !345, file: !343, line: 54)
!345 = !DISubprogram(name: "setlocale", scope: !342, file: !342, line: 122, type: !346, flags: DIFlagPrototyped, spFlags: 0)
!346 = !DISubroutineType(types: !347)
!347 = !{!187, !6, !116}
!348 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !349, file: !343, line: 55)
!349 = !DISubprogram(name: "localeconv", scope: !342, file: !342, line: 125, type: !350, flags: DIFlagPrototyped, spFlags: 0)
!350 = !DISubroutineType(types: !351)
!351 = !{!352}
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!353 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !354, file: !358, line: 64)
!354 = !DISubprogram(name: "isalnum", scope: !355, file: !355, line: 108, type: !356, flags: DIFlagPrototyped, spFlags: 0)
!355 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "36575f934ef4fe7e9d50a3cb17bd5c66")
!356 = !DISubroutineType(types: !357)
!357 = !{!6, !6}
!358 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cctype", directory: "")
!359 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !360, file: !358, line: 65)
!360 = !DISubprogram(name: "isalpha", scope: !355, file: !355, line: 109, type: !356, flags: DIFlagPrototyped, spFlags: 0)
!361 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !362, file: !358, line: 66)
!362 = !DISubprogram(name: "iscntrl", scope: !355, file: !355, line: 110, type: !356, flags: DIFlagPrototyped, spFlags: 0)
!363 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !364, file: !358, line: 67)
!364 = !DISubprogram(name: "isdigit", scope: !355, file: !355, line: 111, type: !356, flags: DIFlagPrototyped, spFlags: 0)
!365 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !366, file: !358, line: 68)
!366 = !DISubprogram(name: "isgraph", scope: !355, file: !355, line: 113, type: !356, flags: DIFlagPrototyped, spFlags: 0)
!367 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !368, file: !358, line: 69)
!368 = !DISubprogram(name: "islower", scope: !355, file: !355, line: 112, type: !356, flags: DIFlagPrototyped, spFlags: 0)
!369 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !370, file: !358, line: 70)
!370 = !DISubprogram(name: "isprint", scope: !355, file: !355, line: 114, type: !356, flags: DIFlagPrototyped, spFlags: 0)
!371 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !372, file: !358, line: 71)
!372 = !DISubprogram(name: "ispunct", scope: !355, file: !355, line: 115, type: !356, flags: DIFlagPrototyped, spFlags: 0)
!373 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !374, file: !358, line: 72)
!374 = !DISubprogram(name: "isspace", scope: !355, file: !355, line: 116, type: !356, flags: DIFlagPrototyped, spFlags: 0)
!375 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !376, file: !358, line: 73)
!376 = !DISubprogram(name: "isupper", scope: !355, file: !355, line: 117, type: !356, flags: DIFlagPrototyped, spFlags: 0)
!377 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !378, file: !358, line: 74)
!378 = !DISubprogram(name: "isxdigit", scope: !355, file: !355, line: 118, type: !356, flags: DIFlagPrototyped, spFlags: 0)
!379 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !380, file: !358, line: 75)
!380 = !DISubprogram(name: "tolower", scope: !355, file: !355, line: 122, type: !356, flags: DIFlagPrototyped, spFlags: 0)
!381 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !382, file: !358, line: 76)
!382 = !DISubprogram(name: "toupper", scope: !355, file: !355, line: 125, type: !356, flags: DIFlagPrototyped, spFlags: 0)
!383 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !384, file: !358, line: 87)
!384 = !DISubprogram(name: "isblank", scope: !355, file: !355, line: 130, type: !356, flags: DIFlagPrototyped, spFlags: 0)
!385 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !386, entity: !387, file: !388, line: 58)
!386 = !DINamespace(name: "__gnu_debug", scope: null)
!387 = !DINamespace(name: "__debug", scope: !40)
!388 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/debug/debug.h", directory: "", checksumkind: CSK_MD5, checksum: "752210a319f5f5d356cc29cd1ce3cdc7")
!389 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !390, file: !392, line: 52)
!390 = !DISubprogram(name: "abs", scope: !391, file: !391, line: 840, type: !356, flags: DIFlagPrototyped, spFlags: 0)
!391 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!392 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/std_abs.h", directory: "")
!393 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !394, file: !396, line: 131)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !391, line: 62, baseType: !395)
!395 = !DICompositeType(tag: DW_TAG_structure_type, file: !391, line: 58, size: 64, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!396 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cstdlib", directory: "")
!397 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !398, file: !396, line: 132)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !391, line: 70, baseType: !399)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !391, line: 66, size: 128, flags: DIFlagTypePassByValue, elements: !400, identifier: "_ZTS6ldiv_t")
!400 = !{!401, !402}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !399, file: !391, line: 68, baseType: !254, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !399, file: !391, line: 69, baseType: !254, size: 64, offset: 64)
!403 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !404, file: !396, line: 134)
!404 = !DISubprogram(name: "abort", scope: !391, file: !391, line: 591, type: !405, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!405 = !DISubroutineType(types: !406)
!406 = !{null}
!407 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !408, file: !396, line: 136)
!408 = !DISubprogram(name: "aligned_alloc", scope: !391, file: !391, line: 586, type: !409, flags: DIFlagPrototyped, spFlags: 0)
!409 = !DISubroutineType(types: !410)
!410 = !{!164, !113, !113}
!411 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !412, file: !396, line: 138)
!412 = !DISubprogram(name: "atexit", scope: !391, file: !391, line: 595, type: !413, flags: DIFlagPrototyped, spFlags: 0)
!413 = !DISubroutineType(types: !414)
!414 = !{!6, !415}
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!416 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !417, file: !396, line: 141)
!417 = !DISubprogram(name: "at_quick_exit", scope: !391, file: !391, line: 600, type: !413, flags: DIFlagPrototyped, spFlags: 0)
!418 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !419, file: !396, line: 144)
!419 = !DISubprogram(name: "atof", scope: !391, file: !391, line: 101, type: !420, flags: DIFlagPrototyped, spFlags: 0)
!420 = !DISubroutineType(types: !421)
!421 = !{!238, !116}
!422 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !423, file: !396, line: 145)
!423 = !DISubprogram(name: "atoi", scope: !391, file: !391, line: 104, type: !424, flags: DIFlagPrototyped, spFlags: 0)
!424 = !DISubroutineType(types: !425)
!425 = !{!6, !116}
!426 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !427, file: !396, line: 146)
!427 = !DISubprogram(name: "atol", scope: !391, file: !391, line: 107, type: !428, flags: DIFlagPrototyped, spFlags: 0)
!428 = !DISubroutineType(types: !429)
!429 = !{!254, !116}
!430 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !431, file: !396, line: 147)
!431 = !DISubprogram(name: "bsearch", scope: !391, file: !391, line: 820, type: !432, flags: DIFlagPrototyped, spFlags: 0)
!432 = !DISubroutineType(types: !433)
!433 = !{!164, !434, !434, !113, !113, !436}
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !391, line: 808, baseType: !437)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DISubroutineType(types: !439)
!439 = !{!6, !434, !434}
!440 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !441, file: !396, line: 148)
!441 = !DISubprogram(name: "calloc", scope: !391, file: !391, line: 542, type: !409, flags: DIFlagPrototyped, spFlags: 0)
!442 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !443, file: !396, line: 149)
!443 = !DISubprogram(name: "div", scope: !391, file: !391, line: 852, type: !444, flags: DIFlagPrototyped, spFlags: 0)
!444 = !DISubroutineType(types: !445)
!445 = !{!394, !6, !6}
!446 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !447, file: !396, line: 150)
!447 = !DISubprogram(name: "exit", scope: !391, file: !391, line: 617, type: !448, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!448 = !DISubroutineType(types: !449)
!449 = !{null, !6}
!450 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !451, file: !396, line: 151)
!451 = !DISubprogram(name: "free", scope: !391, file: !391, line: 565, type: !452, flags: DIFlagPrototyped, spFlags: 0)
!452 = !DISubroutineType(types: !453)
!453 = !{null, !164}
!454 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !455, file: !396, line: 152)
!455 = !DISubprogram(name: "getenv", scope: !391, file: !391, line: 634, type: !456, flags: DIFlagPrototyped, spFlags: 0)
!456 = !DISubroutineType(types: !457)
!457 = !{!187, !116}
!458 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !459, file: !396, line: 153)
!459 = !DISubprogram(name: "labs", scope: !391, file: !391, line: 841, type: !460, flags: DIFlagPrototyped, spFlags: 0)
!460 = !DISubroutineType(types: !461)
!461 = !{!254, !254}
!462 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !463, file: !396, line: 154)
!463 = !DISubprogram(name: "ldiv", scope: !391, file: !391, line: 854, type: !464, flags: DIFlagPrototyped, spFlags: 0)
!464 = !DISubroutineType(types: !465)
!465 = !{!398, !254, !254}
!466 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !467, file: !396, line: 155)
!467 = !DISubprogram(name: "malloc", scope: !391, file: !391, line: 539, type: !468, flags: DIFlagPrototyped, spFlags: 0)
!468 = !DISubroutineType(types: !469)
!469 = !{!164, !113}
!470 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !471, file: !396, line: 157)
!471 = !DISubprogram(name: "mblen", scope: !391, file: !391, line: 922, type: !472, flags: DIFlagPrototyped, spFlags: 0)
!472 = !DISubroutineType(types: !473)
!473 = !{!6, !116, !113}
!474 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !475, file: !396, line: 158)
!475 = !DISubprogram(name: "mbstowcs", scope: !391, file: !391, line: 933, type: !476, flags: DIFlagPrototyped, spFlags: 0)
!476 = !DISubroutineType(types: !477)
!477 = !{!113, !80, !115, !113}
!478 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !479, file: !396, line: 159)
!479 = !DISubprogram(name: "mbtowc", scope: !391, file: !391, line: 925, type: !480, flags: DIFlagPrototyped, spFlags: 0)
!480 = !DISubroutineType(types: !481)
!481 = !{!6, !80, !115, !113}
!482 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !483, file: !396, line: 161)
!483 = !DISubprogram(name: "qsort", scope: !391, file: !391, line: 830, type: !484, flags: DIFlagPrototyped, spFlags: 0)
!484 = !DISubroutineType(types: !485)
!485 = !{null, !164, !113, !113, !436}
!486 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !487, file: !396, line: 164)
!487 = !DISubprogram(name: "quick_exit", scope: !391, file: !391, line: 623, type: !448, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!488 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !489, file: !396, line: 167)
!489 = !DISubprogram(name: "rand", scope: !391, file: !391, line: 453, type: !490, flags: DIFlagPrototyped, spFlags: 0)
!490 = !DISubroutineType(types: !491)
!491 = !{!6}
!492 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !493, file: !396, line: 168)
!493 = !DISubprogram(name: "realloc", scope: !391, file: !391, line: 550, type: !494, flags: DIFlagPrototyped, spFlags: 0)
!494 = !DISubroutineType(types: !495)
!495 = !{!164, !164, !113}
!496 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !497, file: !396, line: 169)
!497 = !DISubprogram(name: "srand", scope: !391, file: !391, line: 455, type: !498, flags: DIFlagPrototyped, spFlags: 0)
!498 = !DISubroutineType(types: !499)
!499 = !{null, !52}
!500 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !501, file: !396, line: 170)
!501 = !DISubprogram(name: "strtod", scope: !391, file: !391, line: 117, type: !502, flags: DIFlagPrototyped, spFlags: 0)
!502 = !DISubroutineType(types: !503)
!503 = !{!238, !115, !504}
!504 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !505)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!506 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !507, file: !396, line: 171)
!507 = !DISubprogram(name: "strtol", scope: !391, file: !391, line: 176, type: !508, flags: DIFlagPrototyped, spFlags: 0)
!508 = !DISubroutineType(types: !509)
!509 = !{!254, !115, !504, !6}
!510 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !511, file: !396, line: 172)
!511 = !DISubprogram(name: "strtoul", scope: !391, file: !391, line: 180, type: !512, flags: DIFlagPrototyped, spFlags: 0)
!512 = !DISubroutineType(types: !513)
!513 = !{!37, !115, !504, !6}
!514 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !515, file: !396, line: 173)
!515 = !DISubprogram(name: "system", scope: !391, file: !391, line: 784, type: !424, flags: DIFlagPrototyped, spFlags: 0)
!516 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !517, file: !396, line: 175)
!517 = !DISubprogram(name: "wcstombs", scope: !391, file: !391, line: 936, type: !518, flags: DIFlagPrototyped, spFlags: 0)
!518 = !DISubroutineType(types: !519)
!519 = !{!113, !186, !90, !113}
!520 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !521, file: !396, line: 176)
!521 = !DISubprogram(name: "wctomb", scope: !391, file: !391, line: 929, type: !522, flags: DIFlagPrototyped, spFlags: 0)
!522 = !DISubroutineType(types: !523)
!523 = !{!6, !187, !79}
!524 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !302, entity: !525, file: !396, line: 204)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !391, line: 80, baseType: !526)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !391, line: 76, size: 128, flags: DIFlagTypePassByValue, elements: !527, identifier: "_ZTS7lldiv_t")
!527 = !{!528, !529}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !526, file: !391, line: 78, baseType: !311, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !526, file: !391, line: 79, baseType: !311, size: 64, offset: 64)
!530 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !302, entity: !531, file: !396, line: 210)
!531 = !DISubprogram(name: "_Exit", scope: !391, file: !391, line: 629, type: !448, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!532 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !302, entity: !533, file: !396, line: 214)
!533 = !DISubprogram(name: "llabs", scope: !391, file: !391, line: 844, type: !534, flags: DIFlagPrototyped, spFlags: 0)
!534 = !DISubroutineType(types: !535)
!535 = !{!311, !311}
!536 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !302, entity: !537, file: !396, line: 220)
!537 = !DISubprogram(name: "lldiv", scope: !391, file: !391, line: 858, type: !538, flags: DIFlagPrototyped, spFlags: 0)
!538 = !DISubroutineType(types: !539)
!539 = !{!525, !311, !311}
!540 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !302, entity: !541, file: !396, line: 231)
!541 = !DISubprogram(name: "atoll", scope: !391, file: !391, line: 112, type: !542, flags: DIFlagPrototyped, spFlags: 0)
!542 = !DISubroutineType(types: !543)
!543 = !{!311, !116}
!544 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !302, entity: !545, file: !396, line: 232)
!545 = !DISubprogram(name: "strtoll", scope: !391, file: !391, line: 200, type: !546, flags: DIFlagPrototyped, spFlags: 0)
!546 = !DISubroutineType(types: !547)
!547 = !{!311, !115, !504, !6}
!548 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !302, entity: !549, file: !396, line: 233)
!549 = !DISubprogram(name: "strtoull", scope: !391, file: !391, line: 205, type: !550, flags: DIFlagPrototyped, spFlags: 0)
!550 = !DISubroutineType(types: !551)
!551 = !{!316, !115, !504, !6}
!552 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !302, entity: !553, file: !396, line: 235)
!553 = !DISubprogram(name: "strtof", scope: !391, file: !391, line: 123, type: !554, flags: DIFlagPrototyped, spFlags: 0)
!554 = !DISubroutineType(types: !555)
!555 = !{!245, !115, !504}
!556 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !302, entity: !557, file: !396, line: 236)
!557 = !DISubprogram(name: "strtold", scope: !391, file: !391, line: 126, type: !558, flags: DIFlagPrototyped, spFlags: 0)
!558 = !DISubroutineType(types: !559)
!559 = !{!306, !115, !504}
!560 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !525, file: !396, line: 244)
!561 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !531, file: !396, line: 246)
!562 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !533, file: !396, line: 248)
!563 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !564, file: !396, line: 249)
!564 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !302, file: !396, line: 217, type: !538, flags: DIFlagPrototyped, spFlags: 0)
!565 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !537, file: !396, line: 250)
!566 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !541, file: !396, line: 252)
!567 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !553, file: !396, line: 253)
!568 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !545, file: !396, line: 254)
!569 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !549, file: !396, line: 255)
!570 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !557, file: !396, line: 256)
!571 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !572, file: !574, line: 98)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !573, line: 7, baseType: !73)
!573 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!574 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cstdio", directory: "")
!575 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !576, file: !574, line: 99)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !577, line: 84, baseType: !578)
!577 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fpos_t", file: !579, line: 14, baseType: !580)
!579 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h", directory: "", checksumkind: CSK_MD5, checksum: "32de8bdaf3551a6c0a9394f9af4389ce")
!580 = !DICompositeType(tag: DW_TAG_structure_type, name: "_G_fpos_t", file: !579, line: 10, size: 128, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
!581 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !582, file: !574, line: 101)
!582 = !DISubprogram(name: "clearerr", scope: !577, file: !577, line: 757, type: !583, flags: DIFlagPrototyped, spFlags: 0)
!583 = !DISubroutineType(types: !584)
!584 = !{null, !585}
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!586 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !587, file: !574, line: 102)
!587 = !DISubprogram(name: "fclose", scope: !577, file: !577, line: 213, type: !588, flags: DIFlagPrototyped, spFlags: 0)
!588 = !DISubroutineType(types: !589)
!589 = !{!6, !585}
!590 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !591, file: !574, line: 103)
!591 = !DISubprogram(name: "feof", scope: !577, file: !577, line: 759, type: !588, flags: DIFlagPrototyped, spFlags: 0)
!592 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !593, file: !574, line: 104)
!593 = !DISubprogram(name: "ferror", scope: !577, file: !577, line: 761, type: !588, flags: DIFlagPrototyped, spFlags: 0)
!594 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !595, file: !574, line: 105)
!595 = !DISubprogram(name: "fflush", scope: !577, file: !577, line: 218, type: !588, flags: DIFlagPrototyped, spFlags: 0)
!596 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !597, file: !574, line: 106)
!597 = !DISubprogram(name: "fgetc", scope: !577, file: !577, line: 485, type: !588, flags: DIFlagPrototyped, spFlags: 0)
!598 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !599, file: !574, line: 107)
!599 = !DISubprogram(name: "fgetpos", scope: !577, file: !577, line: 731, type: !600, flags: DIFlagPrototyped, spFlags: 0)
!600 = !DISubroutineType(types: !601)
!601 = !{!6, !602, !603}
!602 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !585)
!603 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !604)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!605 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !606, file: !574, line: 108)
!606 = !DISubprogram(name: "fgets", scope: !577, file: !577, line: 564, type: !607, flags: DIFlagPrototyped, spFlags: 0)
!607 = !DISubroutineType(types: !608)
!608 = !{!187, !186, !6, !602}
!609 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !610, file: !574, line: 109)
!610 = !DISubprogram(name: "fopen", scope: !577, file: !577, line: 246, type: !611, flags: DIFlagPrototyped, spFlags: 0)
!611 = !DISubroutineType(types: !612)
!612 = !{!585, !115, !115}
!613 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !614, file: !574, line: 110)
!614 = !DISubprogram(name: "fprintf", scope: !577, file: !577, line: 326, type: !615, flags: DIFlagPrototyped, spFlags: 0)
!615 = !DISubroutineType(types: !616)
!616 = !{!6, !602, !115, null}
!617 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !618, file: !574, line: 111)
!618 = !DISubprogram(name: "fputc", scope: !577, file: !577, line: 521, type: !619, flags: DIFlagPrototyped, spFlags: 0)
!619 = !DISubroutineType(types: !620)
!620 = !{!6, !6, !585}
!621 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !622, file: !574, line: 112)
!622 = !DISubprogram(name: "fputs", scope: !577, file: !577, line: 626, type: !623, flags: DIFlagPrototyped, spFlags: 0)
!623 = !DISubroutineType(types: !624)
!624 = !{!6, !115, !602}
!625 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !626, file: !574, line: 113)
!626 = !DISubprogram(name: "fread", scope: !577, file: !577, line: 646, type: !627, flags: DIFlagPrototyped, spFlags: 0)
!627 = !DISubroutineType(types: !628)
!628 = !{!113, !629, !113, !113, !602}
!629 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !164)
!630 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !631, file: !574, line: 114)
!631 = !DISubprogram(name: "freopen", scope: !577, file: !577, line: 252, type: !632, flags: DIFlagPrototyped, spFlags: 0)
!632 = !DISubroutineType(types: !633)
!633 = !{!585, !115, !115, !602}
!634 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !635, file: !574, line: 115)
!635 = !DISubprogram(name: "fscanf", linkageName: "__isoc99_fscanf", scope: !577, file: !577, line: 407, type: !615, flags: DIFlagPrototyped, spFlags: 0)
!636 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !637, file: !574, line: 116)
!637 = !DISubprogram(name: "fseek", scope: !577, file: !577, line: 684, type: !638, flags: DIFlagPrototyped, spFlags: 0)
!638 = !DISubroutineType(types: !639)
!639 = !{!6, !585, !254, !6}
!640 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !641, file: !574, line: 117)
!641 = !DISubprogram(name: "fsetpos", scope: !577, file: !577, line: 736, type: !642, flags: DIFlagPrototyped, spFlags: 0)
!642 = !DISubroutineType(types: !643)
!643 = !{!6, !585, !644}
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !576)
!646 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !647, file: !574, line: 118)
!647 = !DISubprogram(name: "ftell", scope: !577, file: !577, line: 689, type: !648, flags: DIFlagPrototyped, spFlags: 0)
!648 = !DISubroutineType(types: !649)
!649 = !{!254, !585}
!650 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !651, file: !574, line: 119)
!651 = !DISubprogram(name: "fwrite", scope: !577, file: !577, line: 652, type: !652, flags: DIFlagPrototyped, spFlags: 0)
!652 = !DISubroutineType(types: !653)
!653 = !{!113, !654, !113, !113, !602}
!654 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !434)
!655 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !656, file: !574, line: 120)
!656 = !DISubprogram(name: "getc", scope: !577, file: !577, line: 486, type: !588, flags: DIFlagPrototyped, spFlags: 0)
!657 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !658, file: !574, line: 121)
!658 = !DISubprogram(name: "getchar", scope: !577, file: !577, line: 492, type: !490, flags: DIFlagPrototyped, spFlags: 0)
!659 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !660, file: !574, line: 126)
!660 = !DISubprogram(name: "perror", scope: !577, file: !577, line: 775, type: !661, flags: DIFlagPrototyped, spFlags: 0)
!661 = !DISubroutineType(types: !662)
!662 = !{null, !116}
!663 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !664, file: !574, line: 127)
!664 = !DISubprogram(name: "printf", scope: !577, file: !577, line: 332, type: !665, flags: DIFlagPrototyped, spFlags: 0)
!665 = !DISubroutineType(types: !666)
!666 = !{!6, !115, null}
!667 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !668, file: !574, line: 128)
!668 = !DISubprogram(name: "putc", scope: !577, file: !577, line: 522, type: !619, flags: DIFlagPrototyped, spFlags: 0)
!669 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !670, file: !574, line: 129)
!670 = !DISubprogram(name: "putchar", scope: !577, file: !577, line: 528, type: !356, flags: DIFlagPrototyped, spFlags: 0)
!671 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !672, file: !574, line: 130)
!672 = !DISubprogram(name: "puts", scope: !577, file: !577, line: 632, type: !424, flags: DIFlagPrototyped, spFlags: 0)
!673 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !674, file: !574, line: 131)
!674 = !DISubprogram(name: "remove", scope: !577, file: !577, line: 146, type: !424, flags: DIFlagPrototyped, spFlags: 0)
!675 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !676, file: !574, line: 132)
!676 = !DISubprogram(name: "rename", scope: !577, file: !577, line: 148, type: !677, flags: DIFlagPrototyped, spFlags: 0)
!677 = !DISubroutineType(types: !678)
!678 = !{!6, !116, !116}
!679 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !680, file: !574, line: 133)
!680 = !DISubprogram(name: "rewind", scope: !577, file: !577, line: 694, type: !583, flags: DIFlagPrototyped, spFlags: 0)
!681 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !682, file: !574, line: 134)
!682 = !DISubprogram(name: "scanf", linkageName: "__isoc99_scanf", scope: !577, file: !577, line: 410, type: !665, flags: DIFlagPrototyped, spFlags: 0)
!683 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !684, file: !574, line: 135)
!684 = !DISubprogram(name: "setbuf", scope: !577, file: !577, line: 304, type: !685, flags: DIFlagPrototyped, spFlags: 0)
!685 = !DISubroutineType(types: !686)
!686 = !{null, !602, !186}
!687 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !688, file: !574, line: 136)
!688 = !DISubprogram(name: "setvbuf", scope: !577, file: !577, line: 308, type: !689, flags: DIFlagPrototyped, spFlags: 0)
!689 = !DISubroutineType(types: !690)
!690 = !{!6, !602, !186, !6, !113}
!691 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !692, file: !574, line: 137)
!692 = !DISubprogram(name: "sprintf", scope: !577, file: !577, line: 334, type: !693, flags: DIFlagPrototyped, spFlags: 0)
!693 = !DISubroutineType(types: !694)
!694 = !{!6, !186, !115, null}
!695 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !696, file: !574, line: 138)
!696 = !DISubprogram(name: "sscanf", linkageName: "__isoc99_sscanf", scope: !577, file: !577, line: 412, type: !697, flags: DIFlagPrototyped, spFlags: 0)
!697 = !DISubroutineType(types: !698)
!698 = !{!6, !115, !115, null}
!699 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !700, file: !574, line: 139)
!700 = !DISubprogram(name: "tmpfile", scope: !577, file: !577, line: 173, type: !701, flags: DIFlagPrototyped, spFlags: 0)
!701 = !DISubroutineType(types: !702)
!702 = !{!585}
!703 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !704, file: !574, line: 141)
!704 = !DISubprogram(name: "tmpnam", scope: !577, file: !577, line: 187, type: !705, flags: DIFlagPrototyped, spFlags: 0)
!705 = !DISubroutineType(types: !706)
!706 = !{!187, !187}
!707 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !708, file: !574, line: 143)
!708 = !DISubprogram(name: "ungetc", scope: !577, file: !577, line: 639, type: !619, flags: DIFlagPrototyped, spFlags: 0)
!709 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !710, file: !574, line: 144)
!710 = !DISubprogram(name: "vfprintf", scope: !577, file: !577, line: 341, type: !711, flags: DIFlagPrototyped, spFlags: 0)
!711 = !DISubroutineType(types: !712)
!712 = !{!6, !602, !115, !157}
!713 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !714, file: !574, line: 145)
!714 = !DISubprogram(name: "vprintf", scope: !577, file: !577, line: 347, type: !715, flags: DIFlagPrototyped, spFlags: 0)
!715 = !DISubroutineType(types: !716)
!716 = !{!6, !115, !157}
!717 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !718, file: !574, line: 146)
!718 = !DISubprogram(name: "vsprintf", scope: !577, file: !577, line: 349, type: !719, flags: DIFlagPrototyped, spFlags: 0)
!719 = !DISubroutineType(types: !720)
!720 = !{!6, !186, !115, !157}
!721 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !302, entity: !722, file: !574, line: 175)
!722 = !DISubprogram(name: "snprintf", scope: !577, file: !577, line: 354, type: !723, flags: DIFlagPrototyped, spFlags: 0)
!723 = !DISubroutineType(types: !724)
!724 = !{!6, !186, !113, !115, null}
!725 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !302, entity: !726, file: !574, line: 176)
!726 = !DISubprogram(name: "vfscanf", linkageName: "__isoc99_vfscanf", scope: !577, file: !577, line: 451, type: !711, flags: DIFlagPrototyped, spFlags: 0)
!727 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !302, entity: !728, file: !574, line: 177)
!728 = !DISubprogram(name: "vscanf", linkageName: "__isoc99_vscanf", scope: !577, file: !577, line: 456, type: !715, flags: DIFlagPrototyped, spFlags: 0)
!729 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !302, entity: !730, file: !574, line: 178)
!730 = !DISubprogram(name: "vsnprintf", scope: !577, file: !577, line: 358, type: !731, flags: DIFlagPrototyped, spFlags: 0)
!731 = !DISubroutineType(types: !732)
!732 = !{!6, !186, !113, !115, !157}
!733 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !302, entity: !734, file: !574, line: 179)
!734 = !DISubprogram(name: "vsscanf", linkageName: "__isoc99_vsscanf", scope: !577, file: !577, line: 459, type: !735, flags: DIFlagPrototyped, spFlags: 0)
!735 = !DISubroutineType(types: !736)
!736 = !{!6, !115, !115, !157}
!737 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !722, file: !574, line: 185)
!738 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !726, file: !574, line: 186)
!739 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !728, file: !574, line: 187)
!740 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !730, file: !574, line: 188)
!741 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !734, file: !574, line: 189)
!742 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !743, file: !749, line: 58)
!743 = !DIDerivedType(tag: DW_TAG_typedef, name: "max_align_t", file: !744, line: 24, baseType: !745)
!744 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/__stddef_max_align_t.h", directory: "/home/cs22mtech12008", checksumkind: CSK_MD5, checksum: "48e8e2456f77e6cda35d245130fa7259")
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !744, line: 19, size: 256, flags: DIFlagTypePassByValue, elements: !746, identifier: "_ZTS11max_align_t")
!746 = !{!747, !748}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "__clang_max_align_nonce1", scope: !745, file: !744, line: 20, baseType: !311, size: 64, align: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "__clang_max_align_nonce2", scope: !745, file: !744, line: 22, baseType: !306, size: 128, align: 128, offset: 128)
!749 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cstddef", directory: "")
!750 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !751, file: !757, line: 82)
!751 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctrans_t", file: !752, line: 48, baseType: !753)
!752 = !DIFile(filename: "/usr/include/wctype.h", directory: "", checksumkind: CSK_MD5, checksum: "e83097fbf57cc71ea472db59df3ba75d")
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !755)
!755 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !756, line: 41, baseType: !6)
!756 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!757 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cwctype", directory: "")
!758 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !759, file: !757, line: 83)
!759 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctype_t", file: !760, line: 38, baseType: !37)
!760 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "3598b9d23ef5d76319026b46e316b55f")
!761 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !59, file: !757, line: 84)
!762 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !763, file: !757, line: 86)
!763 = !DISubprogram(name: "iswalnum", scope: !760, file: !760, line: 95, type: !265, flags: DIFlagPrototyped, spFlags: 0)
!764 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !765, file: !757, line: 87)
!765 = !DISubprogram(name: "iswalpha", scope: !760, file: !760, line: 101, type: !265, flags: DIFlagPrototyped, spFlags: 0)
!766 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !767, file: !757, line: 89)
!767 = !DISubprogram(name: "iswblank", scope: !760, file: !760, line: 146, type: !265, flags: DIFlagPrototyped, spFlags: 0)
!768 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !769, file: !757, line: 91)
!769 = !DISubprogram(name: "iswcntrl", scope: !760, file: !760, line: 104, type: !265, flags: DIFlagPrototyped, spFlags: 0)
!770 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !771, file: !757, line: 92)
!771 = !DISubprogram(name: "iswctype", scope: !760, file: !760, line: 159, type: !772, flags: DIFlagPrototyped, spFlags: 0)
!772 = !DISubroutineType(types: !773)
!773 = !{!6, !59, !759}
!774 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !775, file: !757, line: 93)
!775 = !DISubprogram(name: "iswdigit", scope: !760, file: !760, line: 108, type: !265, flags: DIFlagPrototyped, spFlags: 0)
!776 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !777, file: !757, line: 94)
!777 = !DISubprogram(name: "iswgraph", scope: !760, file: !760, line: 112, type: !265, flags: DIFlagPrototyped, spFlags: 0)
!778 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !779, file: !757, line: 95)
!779 = !DISubprogram(name: "iswlower", scope: !760, file: !760, line: 117, type: !265, flags: DIFlagPrototyped, spFlags: 0)
!780 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !781, file: !757, line: 96)
!781 = !DISubprogram(name: "iswprint", scope: !760, file: !760, line: 120, type: !265, flags: DIFlagPrototyped, spFlags: 0)
!782 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !783, file: !757, line: 97)
!783 = !DISubprogram(name: "iswpunct", scope: !760, file: !760, line: 125, type: !265, flags: DIFlagPrototyped, spFlags: 0)
!784 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !785, file: !757, line: 98)
!785 = !DISubprogram(name: "iswspace", scope: !760, file: !760, line: 130, type: !265, flags: DIFlagPrototyped, spFlags: 0)
!786 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !787, file: !757, line: 99)
!787 = !DISubprogram(name: "iswupper", scope: !760, file: !760, line: 135, type: !265, flags: DIFlagPrototyped, spFlags: 0)
!788 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !789, file: !757, line: 100)
!789 = !DISubprogram(name: "iswxdigit", scope: !760, file: !760, line: 140, type: !265, flags: DIFlagPrototyped, spFlags: 0)
!790 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !791, file: !757, line: 101)
!791 = !DISubprogram(name: "towctrans", scope: !752, file: !752, line: 55, type: !792, flags: DIFlagPrototyped, spFlags: 0)
!792 = !DISubroutineType(types: !793)
!793 = !{!59, !59, !751}
!794 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !795, file: !757, line: 102)
!795 = !DISubprogram(name: "towlower", scope: !760, file: !760, line: 166, type: !796, flags: DIFlagPrototyped, spFlags: 0)
!796 = !DISubroutineType(types: !797)
!797 = !{!59, !59}
!798 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !799, file: !757, line: 103)
!799 = !DISubprogram(name: "towupper", scope: !760, file: !760, line: 169, type: !796, flags: DIFlagPrototyped, spFlags: 0)
!800 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !801, file: !757, line: 104)
!801 = !DISubprogram(name: "wctrans", scope: !752, file: !752, line: 52, type: !802, flags: DIFlagPrototyped, spFlags: 0)
!802 = !DISubroutineType(types: !803)
!803 = !{!751, !116}
!804 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !40, entity: !805, file: !757, line: 105)
!805 = !DISubprogram(name: "wctype", scope: !760, file: !760, line: 155, type: !806, flags: DIFlagPrototyped, spFlags: 0)
!806 = !DISubroutineType(types: !807)
!807 = !{!759, !116}
!808 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !2, entity: !40, file: !10, line: 6)
!809 = !{i32 7, !"Dwarf Version", i32 5}
!810 = !{i32 2, !"Debug Info Version", i32 3}
!811 = !{i32 1, !"wchar_size", i32 4}
!812 = !{i32 8, !"PIC Level", i32 2}
!813 = !{i32 7, !"PIE Level", i32 2}
!814 = !{i32 7, !"uwtable", i32 2}
!815 = !{i32 7, !"frame-pointer", i32 2}
!816 = !{!"clang version 16.0.0"}
!817 = distinct !DISubprogram(name: "runGlobalThread", linkageName: "_Z15runGlobalThreadPv", scope: !10, file: !10, line: 10, type: !818, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !820)
!818 = !DISubroutineType(types: !819)
!819 = !{!164, !164}
!820 = !{}
!821 = !DILocalVariable(name: "arg", arg: 1, scope: !817, file: !10, line: 10, type: !164)
!822 = !DILocation(line: 10, column: 29, scope: !817)
!823 = !DILocalVariable(name: "a", scope: !817, file: !10, line: 12, type: !5)
!824 = !DILocation(line: 12, column: 10, scope: !817)
!825 = !DILocation(line: 12, column: 32, scope: !817)
!826 = !DILocation(line: 13, column: 10, scope: !817)
!827 = !DILocation(line: 13, column: 44, scope: !817)
!828 = !DILocation(line: 13, column: 43, scope: !817)
!829 = !DILocation(line: 13, column: 40, scope: !817)
!830 = !DILocation(line: 13, column: 46, scope: !817)
!831 = !DILocation(line: 14, column: 5, scope: !817)
!832 = distinct !DISubprogram(name: "runLocalThread1", linkageName: "_Z15runLocalThread1Pv", scope: !10, file: !10, line: 17, type: !818, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !820)
!833 = !DILocalVariable(name: "arg", arg: 1, scope: !832, file: !10, line: 17, type: !164)
!834 = !DILocation(line: 17, column: 29, scope: !832)
!835 = !DILocalVariable(name: "x", scope: !832, file: !10, line: 19, type: !5)
!836 = !DILocation(line: 19, column: 10, scope: !832)
!837 = !DILocation(line: 19, column: 32, scope: !832)
!838 = !DILocation(line: 20, column: 10, scope: !832)
!839 = !DILocation(line: 20, column: 45, scope: !832)
!840 = !DILocation(line: 20, column: 44, scope: !832)
!841 = !DILocation(line: 20, column: 41, scope: !832)
!842 = !DILocation(line: 20, column: 47, scope: !832)
!843 = !DILocation(line: 21, column: 5, scope: !832)
!844 = distinct !DISubprogram(name: "runLocalThread2", linkageName: "_Z15runLocalThread2Pv", scope: !10, file: !10, line: 24, type: !818, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !820)
!845 = !DILocalVariable(name: "arg", arg: 1, scope: !844, file: !10, line: 24, type: !164)
!846 = !DILocation(line: 24, column: 29, scope: !844)
!847 = !DILocalVariable(name: "x", scope: !844, file: !10, line: 26, type: !5)
!848 = !DILocation(line: 26, column: 10, scope: !844)
!849 = !DILocation(line: 26, column: 32, scope: !844)
!850 = !DILocation(line: 27, column: 10, scope: !844)
!851 = !DILocation(line: 27, column: 45, scope: !844)
!852 = !DILocation(line: 27, column: 44, scope: !844)
!853 = !DILocation(line: 27, column: 41, scope: !844)
!854 = !DILocation(line: 27, column: 47, scope: !844)
!855 = !DILocation(line: 28, column: 5, scope: !844)
!856 = distinct !DISubprogram(name: "runLocalThread3", linkageName: "_Z15runLocalThread3Pv", scope: !10, file: !10, line: 31, type: !818, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !820)
!857 = !DILocalVariable(name: "arg", arg: 1, scope: !856, file: !10, line: 31, type: !164)
!858 = !DILocation(line: 31, column: 29, scope: !856)
!859 = !DILocalVariable(name: "x", scope: !856, file: !10, line: 33, type: !5)
!860 = !DILocation(line: 33, column: 10, scope: !856)
!861 = !DILocation(line: 33, column: 32, scope: !856)
!862 = !DILocation(line: 34, column: 10, scope: !856)
!863 = !DILocation(line: 34, column: 45, scope: !856)
!864 = !DILocation(line: 34, column: 44, scope: !856)
!865 = !DILocation(line: 34, column: 41, scope: !856)
!866 = !DILocation(line: 34, column: 47, scope: !856)
!867 = !DILocation(line: 35, column: 5, scope: !856)
!868 = distinct !DISubprogram(name: "runLocalThread4", linkageName: "_Z15runLocalThread4Pv", scope: !10, file: !10, line: 38, type: !818, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !820)
!869 = !DILocalVariable(name: "arg", arg: 1, scope: !868, file: !10, line: 38, type: !164)
!870 = !DILocation(line: 38, column: 29, scope: !868)
!871 = !DILocalVariable(name: "x", scope: !868, file: !10, line: 40, type: !5)
!872 = !DILocation(line: 40, column: 10, scope: !868)
!873 = !DILocation(line: 40, column: 32, scope: !868)
!874 = !DILocation(line: 41, column: 10, scope: !868)
!875 = !DILocation(line: 41, column: 45, scope: !868)
!876 = !DILocation(line: 41, column: 44, scope: !868)
!877 = !DILocation(line: 41, column: 41, scope: !868)
!878 = !DILocation(line: 41, column: 47, scope: !868)
!879 = !DILocation(line: 42, column: 5, scope: !868)
!880 = distinct !DISubprogram(name: "runLocalThread5", linkageName: "_Z15runLocalThread5Pv", scope: !10, file: !10, line: 45, type: !818, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !820)
!881 = !DILocalVariable(name: "arg", arg: 1, scope: !880, file: !10, line: 45, type: !164)
!882 = !DILocation(line: 45, column: 29, scope: !880)
!883 = !DILocalVariable(name: "x", scope: !880, file: !10, line: 47, type: !5)
!884 = !DILocation(line: 47, column: 10, scope: !880)
!885 = !DILocation(line: 47, column: 32, scope: !880)
!886 = !DILocation(line: 48, column: 10, scope: !880)
!887 = !DILocation(line: 48, column: 45, scope: !880)
!888 = !DILocation(line: 48, column: 44, scope: !880)
!889 = !DILocation(line: 48, column: 41, scope: !880)
!890 = !DILocation(line: 48, column: 47, scope: !880)
!891 = !DILocation(line: 49, column: 5, scope: !880)
!892 = distinct !DISubprogram(name: "runLocalThread6", linkageName: "_Z15runLocalThread6Pv", scope: !10, file: !10, line: 52, type: !818, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !820)
!893 = !DILocalVariable(name: "arg", arg: 1, scope: !892, file: !10, line: 52, type: !164)
!894 = !DILocation(line: 52, column: 29, scope: !892)
!895 = !DILocalVariable(name: "x", scope: !892, file: !10, line: 54, type: !5)
!896 = !DILocation(line: 54, column: 10, scope: !892)
!897 = !DILocation(line: 54, column: 32, scope: !892)
!898 = !DILocation(line: 55, column: 10, scope: !892)
!899 = !DILocation(line: 55, column: 45, scope: !892)
!900 = !DILocation(line: 55, column: 44, scope: !892)
!901 = !DILocation(line: 55, column: 41, scope: !892)
!902 = !DILocation(line: 55, column: 47, scope: !892)
!903 = !DILocation(line: 56, column: 5, scope: !892)
!904 = distinct !DISubprogram(name: "runLocalThread7", linkageName: "_Z15runLocalThread7Pv", scope: !10, file: !10, line: 59, type: !818, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !820)
!905 = !DILocalVariable(name: "arg", arg: 1, scope: !904, file: !10, line: 59, type: !164)
!906 = !DILocation(line: 59, column: 29, scope: !904)
!907 = !DILocalVariable(name: "x", scope: !904, file: !10, line: 61, type: !5)
!908 = !DILocation(line: 61, column: 10, scope: !904)
!909 = !DILocation(line: 61, column: 32, scope: !904)
!910 = !DILocation(line: 62, column: 10, scope: !904)
!911 = !DILocation(line: 62, column: 45, scope: !904)
!912 = !DILocation(line: 62, column: 44, scope: !904)
!913 = !DILocation(line: 62, column: 41, scope: !904)
!914 = !DILocation(line: 62, column: 47, scope: !904)
!915 = !DILocation(line: 63, column: 5, scope: !904)
!916 = distinct !DISubprogram(name: "main", scope: !10, file: !10, line: 68, type: !490, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !820)
!917 = !DILocalVariable(name: "x", scope: !916, file: !10, line: 70, type: !6)
!918 = !DILocation(line: 70, column: 9, scope: !916)
!919 = !DILocalVariable(name: "local_t", scope: !916, file: !10, line: 71, type: !35)
!920 = !DILocation(line: 71, column: 15, scope: !916)
!921 = !DILocation(line: 72, column: 5, scope: !916)
!922 = !DILocation(line: 74, column: 9, scope: !923)
!923 = distinct !DILexicalBlock(scope: !916, file: !10, line: 74, column: 9)
!924 = !DILocation(line: 74, column: 11, scope: !923)
!925 = !DILocation(line: 74, column: 9, scope: !916)
!926 = !DILocalVariable(name: "if_thread", scope: !927, file: !10, line: 76, type: !35)
!927 = distinct !DILexicalBlock(scope: !923, file: !10, line: 75, column: 5)
!928 = !DILocation(line: 76, column: 19, scope: !927)
!929 = !DILocation(line: 77, column: 9, scope: !927)
!930 = !DILocation(line: 78, column: 11, scope: !927)
!931 = !DILocation(line: 79, column: 22, scope: !927)
!932 = !DILocation(line: 79, column: 9, scope: !927)
!933 = !DILocation(line: 80, column: 5, scope: !927)
!934 = !DILocalVariable(name: "else_thread", scope: !935, file: !10, line: 83, type: !35)
!935 = distinct !DILexicalBlock(scope: !923, file: !10, line: 82, column: 5)
!936 = !DILocation(line: 83, column: 19, scope: !935)
!937 = !DILocation(line: 84, column: 9, scope: !935)
!938 = !DILocation(line: 85, column: 11, scope: !935)
!939 = !DILocation(line: 86, column: 22, scope: !935)
!940 = !DILocation(line: 86, column: 9, scope: !935)
!941 = !DILocalVariable(name: "scope_1", scope: !942, file: !10, line: 90, type: !35)
!942 = distinct !DILexicalBlock(scope: !916, file: !10, line: 89, column: 5)
!943 = !DILocation(line: 90, column: 19, scope: !942)
!944 = !DILocation(line: 91, column: 9, scope: !942)
!945 = !DILocalVariable(name: "scope_2", scope: !946, file: !10, line: 94, type: !35)
!946 = distinct !DILexicalBlock(scope: !942, file: !10, line: 93, column: 9)
!947 = !DILocation(line: 94, column: 23, scope: !946)
!948 = !DILocation(line: 95, column: 13, scope: !946)
!949 = !DILocalVariable(name: "scope_3", scope: !950, file: !10, line: 98, type: !35)
!950 = distinct !DILexicalBlock(scope: !946, file: !10, line: 97, column: 13)
!951 = !DILocation(line: 98, column: 27, scope: !950)
!952 = !DILocation(line: 99, column: 17, scope: !950)
!953 = !DILocalVariable(name: "scope_n", scope: !954, file: !10, line: 102, type: !35)
!954 = distinct !DILexicalBlock(scope: !950, file: !10, line: 101, column: 17)
!955 = !DILocation(line: 102, column: 31, scope: !954)
!956 = !DILocation(line: 103, column: 21, scope: !954)
!957 = !DILocation(line: 105, column: 34, scope: !954)
!958 = !DILocation(line: 105, column: 21, scope: !954)
!959 = !DILocation(line: 106, column: 34, scope: !954)
!960 = !DILocation(line: 106, column: 21, scope: !954)
!961 = !DILocation(line: 107, column: 34, scope: !954)
!962 = !DILocation(line: 107, column: 21, scope: !954)
!963 = !DILocation(line: 109, column: 34, scope: !954)
!964 = !DILocation(line: 109, column: 21, scope: !954)
!965 = !DILocation(line: 115, column: 5, scope: !916)
!966 = !DILocation(line: 116, column: 18, scope: !916)
!967 = !DILocation(line: 116, column: 5, scope: !916)
!968 = !DILocation(line: 117, column: 18, scope: !916)
!969 = !DILocation(line: 117, column: 5, scope: !916)
!970 = !DILocation(line: 119, column: 5, scope: !916)
