; ModuleID = '/home/cs22mtech12008/NEW_CLONE_FOR_BENCHMARKS/Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Thread_creation_Patterns/Thread_creation_multiple_scopes/thread_creation_various_scopes_3.cpp'
source_filename = "/home/cs22mtech12008/NEW_CLONE_FOR_BENCHMARKS/Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Thread_creation_Patterns/Thread_creation_multiple_scopes/thread_creation_various_scopes_3.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }

@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [26 x i8] c"Value in local thread 1: \00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [26 x i8] c"Value in local thread 2: \00", align 1, !dbg !8
@.str.2 = private unnamed_addr constant [26 x i8] c"Value in local thread 3: \00", align 1, !dbg !10
@.str.3 = private unnamed_addr constant [26 x i8] c"Value in local thread 4: \00", align 1, !dbg !12
@.str.4 = private unnamed_addr constant [26 x i8] c"Value in local thread 5: \00", align 1, !dbg !14
@.str.5 = private unnamed_addr constant [26 x i8] c"Value in local thread 6: \00", align 1, !dbg !16
@.str.6 = private unnamed_addr constant [26 x i8] c"Value in local thread 7: \00", align 1, !dbg !18
@scope_1 = dso_local global i64 0, align 8, !dbg !20
@scope_2 = dso_local global i64 0, align 8, !dbg !28
@scope_3 = dso_local global i64 0, align 8, !dbg !33
@scope_n = dso_local global i64 0, align 8, !dbg !35
@.str.7 = private unnamed_addr constant [17 x i8] c"loop scope ended\00", align 1, !dbg !37

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef ptr @_Z15runLocalThread1Pv(ptr noundef %0) #0 !dbg !821 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !825, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.declare(metadata ptr %3, metadata !827, metadata !DIExpression()), !dbg !828
  %4 = load ptr, ptr %2, align 8, !dbg !829
  store ptr %4, ptr %3, align 8, !dbg !828
  %5 = call i32 @sleep(i32 noundef 5), !dbg !830
  %6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str), !dbg !831
  %7 = load ptr, ptr %3, align 8, !dbg !832
  %8 = load i32, ptr %7, align 4, !dbg !833
  %9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef %8), !dbg !834
  %10 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !835
  ret ptr null, !dbg !836
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @sleep(i32 noundef) #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #2

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef ptr @_Z15runLocalThread2Pv(ptr noundef %0) #0 !dbg !837 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !838, metadata !DIExpression()), !dbg !839
  call void @llvm.dbg.declare(metadata ptr %3, metadata !840, metadata !DIExpression()), !dbg !841
  %4 = load ptr, ptr %2, align 8, !dbg !842
  store ptr %4, ptr %3, align 8, !dbg !841
  %5 = call i32 @sleep(i32 noundef 5), !dbg !843
  %6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.1), !dbg !844
  %7 = load ptr, ptr %3, align 8, !dbg !845
  %8 = load i32, ptr %7, align 4, !dbg !846
  %9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef %8), !dbg !847
  %10 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !848
  ret ptr null, !dbg !849
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef ptr @_Z15runLocalThread3Pv(ptr noundef %0) #0 !dbg !850 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !851, metadata !DIExpression()), !dbg !852
  call void @llvm.dbg.declare(metadata ptr %3, metadata !853, metadata !DIExpression()), !dbg !854
  %4 = load ptr, ptr %2, align 8, !dbg !855
  store ptr %4, ptr %3, align 8, !dbg !854
  %5 = call i32 @sleep(i32 noundef 5), !dbg !856
  %6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.2), !dbg !857
  %7 = load ptr, ptr %3, align 8, !dbg !858
  %8 = load i32, ptr %7, align 4, !dbg !859
  %9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef %8), !dbg !860
  %10 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !861
  ret ptr null, !dbg !862
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef ptr @_Z15runLocalThread4Pv(ptr noundef %0) #0 !dbg !863 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !864, metadata !DIExpression()), !dbg !865
  call void @llvm.dbg.declare(metadata ptr %3, metadata !866, metadata !DIExpression()), !dbg !867
  %4 = load ptr, ptr %2, align 8, !dbg !868
  store ptr %4, ptr %3, align 8, !dbg !867
  %5 = call i32 @sleep(i32 noundef 5), !dbg !869
  %6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.3), !dbg !870
  %7 = load ptr, ptr %3, align 8, !dbg !871
  %8 = load i32, ptr %7, align 4, !dbg !872
  %9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef %8), !dbg !873
  %10 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !874
  ret ptr null, !dbg !875
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef ptr @_Z15runLocalThread5Pv(ptr noundef %0) #0 !dbg !876 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !877, metadata !DIExpression()), !dbg !878
  call void @llvm.dbg.declare(metadata ptr %3, metadata !879, metadata !DIExpression()), !dbg !880
  %4 = load ptr, ptr %2, align 8, !dbg !881
  store ptr %4, ptr %3, align 8, !dbg !880
  %5 = call i32 @sleep(i32 noundef 5), !dbg !882
  %6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.4), !dbg !883
  %7 = load ptr, ptr %3, align 8, !dbg !884
  %8 = load i32, ptr %7, align 4, !dbg !885
  %9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef %8), !dbg !886
  %10 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !887
  ret ptr null, !dbg !888
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef ptr @_Z15runLocalThread6Pv(ptr noundef %0) #0 !dbg !889 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !890, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.declare(metadata ptr %3, metadata !892, metadata !DIExpression()), !dbg !893
  %4 = load ptr, ptr %2, align 8, !dbg !894
  store ptr %4, ptr %3, align 8, !dbg !893
  %5 = call i32 @sleep(i32 noundef 5), !dbg !895
  %6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.5), !dbg !896
  %7 = load ptr, ptr %3, align 8, !dbg !897
  %8 = load i32, ptr %7, align 4, !dbg !898
  %9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef %8), !dbg !899
  %10 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !900
  ret ptr null, !dbg !901
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef ptr @_Z15runLocalThread7Pv(ptr noundef %0) #0 !dbg !902 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !903, metadata !DIExpression()), !dbg !904
  call void @llvm.dbg.declare(metadata ptr %3, metadata !905, metadata !DIExpression()), !dbg !906
  %4 = load ptr, ptr %2, align 8, !dbg !907
  store ptr %4, ptr %3, align 8, !dbg !906
  %5 = call i32 @sleep(i32 noundef 5), !dbg !908
  %6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.6), !dbg !909
  %7 = load ptr, ptr %3, align 8, !dbg !910
  %8 = load i32, ptr %7, align 4, !dbg !911
  %9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef %8), !dbg !912
  %10 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !913
  ret ptr null, !dbg !914
}

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main() #3 !dbg !915 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !916, metadata !DIExpression()), !dbg !917
  store i32 10, ptr %2, align 4, !dbg !917
  %7 = load i32, ptr %2, align 4, !dbg !918
  %8 = icmp eq i32 %7, 10, !dbg !920
  br i1 %8, label %9, label %26, !dbg !921

9:                                                ; preds = %0
  call void @llvm.dbg.declare(metadata ptr %3, metadata !922, metadata !DIExpression()), !dbg !924
  store i32 1, ptr %3, align 4, !dbg !924
  %10 = call i32 @pthread_create(ptr noundef @scope_1, ptr noundef null, ptr noundef @_Z15runLocalThread1Pv, ptr noundef %3) #5, !dbg !925
  %11 = load i32, ptr %2, align 4, !dbg !926
  %12 = icmp eq i32 %11, 10, !dbg !928
  br i1 %12, label %13, label %25, !dbg !929

13:                                               ; preds = %9
  call void @llvm.dbg.declare(metadata ptr %4, metadata !930, metadata !DIExpression()), !dbg !932
  store i32 2, ptr %4, align 4, !dbg !932
  %14 = call i32 @pthread_create(ptr noundef @scope_2, ptr noundef null, ptr noundef @_Z15runLocalThread2Pv, ptr noundef %4) #5, !dbg !933
  %15 = load i32, ptr %2, align 4, !dbg !934
  %16 = icmp eq i32 %15, 10, !dbg !936
  br i1 %16, label %17, label %24, !dbg !937

17:                                               ; preds = %13
  call void @llvm.dbg.declare(metadata ptr %5, metadata !938, metadata !DIExpression()), !dbg !940
  store i32 3, ptr %5, align 4, !dbg !940
  %18 = call i32 @pthread_create(ptr noundef @scope_3, ptr noundef null, ptr noundef @_Z15runLocalThread3Pv, ptr noundef %5) #5, !dbg !941
  %19 = load i32, ptr %2, align 4, !dbg !942
  %20 = icmp eq i32 %19, 10, !dbg !944
  br i1 %20, label %21, label %23, !dbg !945

21:                                               ; preds = %17
  call void @llvm.dbg.declare(metadata ptr %6, metadata !946, metadata !DIExpression()), !dbg !948
  store i32 4, ptr %6, align 4, !dbg !948
  %22 = call i32 @pthread_create(ptr noundef @scope_n, ptr noundef null, ptr noundef @_Z15runLocalThread4Pv, ptr noundef %6) #5, !dbg !949
  br label %23, !dbg !950

23:                                               ; preds = %21, %17
  br label %24, !dbg !951

24:                                               ; preds = %23, %13
  br label %25, !dbg !952

25:                                               ; preds = %24, %9
  br label %26, !dbg !953

26:                                               ; preds = %25, %0
  %27 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.7), !dbg !954
  %28 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !955
  %29 = load i64, ptr @scope_1, align 8, !dbg !956
  %30 = call i32 @pthread_join(i64 noundef %29, ptr noundef null), !dbg !957
  %31 = load i64, ptr @scope_2, align 8, !dbg !958
  %32 = call i32 @pthread_join(i64 noundef %31, ptr noundef null), !dbg !959
  %33 = load i64, ptr @scope_3, align 8, !dbg !960
  %34 = call i32 @pthread_join(i64 noundef %33, ptr noundef null), !dbg !961
  %35 = load i64, ptr @scope_n, align 8, !dbg !962
  %36 = call i32 @pthread_join(i64 noundef %35, ptr noundef null), !dbg !963
  ret i32 0, !dbg !964
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

!llvm.dbg.cu = !{!22}
!llvm.module.flags = !{!813, !814, !815, !816, !817, !818, !819}
!llvm.ident = !{!820}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 14, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "NEW_CLONE_FOR_BENCHMARKS/Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Thread_creation_Patterns/Thread_creation_multiple_scopes/thread_creation_various_scopes_3.cpp", directory: "/home/cs22mtech12008", checksumkind: CSK_MD5, checksum: "a4ed4e0b15446d08fb1096ea286f6c20")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !6)
!4 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !{!7}
!7 = !DISubrange(count: 26)
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(scope: null, file: !2, line: 22, type: !3, isLocal: true, isDefinition: true)
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression())
!11 = distinct !DIGlobalVariable(scope: null, file: !2, line: 30, type: !3, isLocal: true, isDefinition: true)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 38, type: !3, isLocal: true, isDefinition: true)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(scope: null, file: !2, line: 46, type: !3, isLocal: true, isDefinition: true)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(scope: null, file: !2, line: 54, type: !3, isLocal: true, isDefinition: true)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(scope: null, file: !2, line: 62, type: !3, isLocal: true, isDefinition: true)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(name: "scope_1", scope: !22, file: !2, line: 66, type: !30, isLocal: false, isDefinition: true)
!22 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !23, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !24, globals: !27, imports: !42, splitDebugInlining: false, nameTableKind: None)
!23 = !DIFile(filename: "/home/cs22mtech12008/NEW_CLONE_FOR_BENCHMARKS/Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Thread_creation_Patterns/Thread_creation_multiple_scopes/thread_creation_various_scopes_3.cpp", directory: "/home/cs22mtech12008/UseAfterScope/Scripts", checksumkind: CSK_MD5, checksum: "a4ed4e0b15446d08fb1096ea286f6c20")
!24 = !{!25}
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!27 = !{!0, !8, !10, !12, !14, !16, !18, !20, !28, !33, !35, !37}
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(name: "scope_2", scope: !22, file: !2, line: 67, type: !30, isLocal: false, isDefinition: true)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !31, line: 27, baseType: !32)
!31 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "2d764266ce95ab26d4a4767c2ec78176")
!32 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(name: "scope_3", scope: !22, file: !2, line: 68, type: !30, isLocal: false, isDefinition: true)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(name: "scope_n", scope: !22, file: !2, line: 69, type: !30, isLocal: false, isDefinition: true)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 98, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 17)
!42 = !{!43, !62, !65, !70, !78, !86, !90, !97, !101, !105, !107, !109, !113, !123, !127, !133, !139, !141, !145, !149, !153, !157, !170, !172, !176, !180, !184, !186, !192, !196, !200, !202, !204, !208, !216, !220, !224, !228, !230, !236, !238, !245, !250, !254, !259, !263, !267, !271, !273, !275, !279, !283, !287, !289, !293, !297, !299, !301, !305, !311, !316, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !335, !339, !344, !348, !352, !357, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !387, !389, !393, !397, !401, !407, !411, !415, !420, !422, !426, !430, !434, !444, !446, !450, !454, !458, !462, !466, !470, !474, !478, !482, !486, !490, !492, !496, !500, !504, !510, !514, !518, !520, !524, !528, !534, !536, !540, !544, !548, !552, !556, !560, !564, !565, !566, !567, !569, !570, !571, !572, !573, !574, !575, !579, !585, !590, !594, !596, !598, !600, !602, !609, !613, !617, !621, !625, !629, !634, !638, !640, !644, !650, !654, !659, !661, !663, !667, !671, !673, !675, !677, !679, !683, !685, !687, !691, !695, !699, !703, !707, !711, !713, !717, !721, !725, !729, !731, !733, !737, !741, !742, !743, !744, !745, !746, !754, !762, !765, !766, !768, !770, !772, !774, !778, !780, !782, !784, !786, !788, !790, !792, !794, !798, !802, !804, !808, !812}
!43 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !45, file: !61, line: 64)
!44 = !DINamespace(name: "std", scope: null)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !46, line: 6, baseType: !47)
!46 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !48, line: 21, baseType: !49)
!48 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !48, line: 13, size: 64, flags: DIFlagTypePassByValue, elements: !50, identifier: "_ZTS11__mbstate_t")
!50 = !{!51, !52}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !49, file: !48, line: 15, baseType: !26, size: 32)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !49, file: !48, line: 20, baseType: !53, size: 32, offset: 32)
!53 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !49, file: !48, line: 16, size: 32, flags: DIFlagTypePassByValue, elements: !54, identifier: "_ZTSN11__mbstate_tUt_E")
!54 = !{!55, !57}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !53, file: !48, line: 18, baseType: !56, size: 32)
!56 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !53, file: !48, line: 19, baseType: !58, size: 32)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 32, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 4)
!61 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cwchar", directory: "")
!62 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !63, file: !61, line: 141)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !64, line: 20, baseType: !56)
!64 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!65 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !66, file: !61, line: 143)
!66 = !DISubprogram(name: "btowc", scope: !67, file: !67, line: 284, type: !68, flags: DIFlagPrototyped, spFlags: 0)
!67 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "8900d9ecbbe40d052c41becfbc5b5531")
!68 = !DISubroutineType(types: !69)
!69 = !{!63, !26}
!70 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !71, file: !61, line: 144)
!71 = !DISubprogram(name: "fgetwc", scope: !67, file: !67, line: 726, type: !72, flags: DIFlagPrototyped, spFlags: 0)
!72 = !DISubroutineType(types: !73)
!73 = !{!63, !74}
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !76, line: 5, baseType: !77)
!76 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "72a8fe90981f484acae7c6f3dfc5c2b7")
!77 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !76, line: 4, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS8_IO_FILE")
!78 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !79, file: !61, line: 145)
!79 = !DISubprogram(name: "fgetws", scope: !67, file: !67, line: 755, type: !80, flags: DIFlagPrototyped, spFlags: 0)
!80 = !DISubroutineType(types: !81)
!81 = !{!82, !84, !26, !85}
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!84 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !82)
!85 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !74)
!86 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !87, file: !61, line: 146)
!87 = !DISubprogram(name: "fputwc", scope: !67, file: !67, line: 740, type: !88, flags: DIFlagPrototyped, spFlags: 0)
!88 = !DISubroutineType(types: !89)
!89 = !{!63, !83, !74}
!90 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !91, file: !61, line: 147)
!91 = !DISubprogram(name: "fputws", scope: !67, file: !67, line: 762, type: !92, flags: DIFlagPrototyped, spFlags: 0)
!92 = !DISubroutineType(types: !93)
!93 = !{!26, !94, !85}
!94 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !95)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !83)
!97 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !98, file: !61, line: 148)
!98 = !DISubprogram(name: "fwide", scope: !67, file: !67, line: 573, type: !99, flags: DIFlagPrototyped, spFlags: 0)
!99 = !DISubroutineType(types: !100)
!100 = !{!26, !74, !26}
!101 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !102, file: !61, line: 149)
!102 = !DISubprogram(name: "fwprintf", scope: !67, file: !67, line: 580, type: !103, flags: DIFlagPrototyped, spFlags: 0)
!103 = !DISubroutineType(types: !104)
!104 = !{!26, !85, !94, null}
!105 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !106, file: !61, line: 150)
!106 = !DISubprogram(name: "fwscanf", linkageName: "__isoc99_fwscanf", scope: !67, file: !67, line: 640, type: !103, flags: DIFlagPrototyped, spFlags: 0)
!107 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !108, file: !61, line: 151)
!108 = !DISubprogram(name: "getwc", scope: !67, file: !67, line: 727, type: !72, flags: DIFlagPrototyped, spFlags: 0)
!109 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !110, file: !61, line: 152)
!110 = !DISubprogram(name: "getwchar", scope: !67, file: !67, line: 733, type: !111, flags: DIFlagPrototyped, spFlags: 0)
!111 = !DISubroutineType(types: !112)
!112 = !{!63}
!113 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !114, file: !61, line: 153)
!114 = !DISubprogram(name: "mbrlen", scope: !67, file: !67, line: 307, type: !115, flags: DIFlagPrototyped, spFlags: 0)
!115 = !DISubroutineType(types: !116)
!116 = !{!117, !119, !117, !121}
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !118, line: 46, baseType: !32)
!118 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/cs22mtech12008", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!119 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !120)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !122)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!123 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !124, file: !61, line: 154)
!124 = !DISubprogram(name: "mbrtowc", scope: !67, file: !67, line: 296, type: !125, flags: DIFlagPrototyped, spFlags: 0)
!125 = !DISubroutineType(types: !126)
!126 = !{!117, !84, !119, !117, !121}
!127 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !128, file: !61, line: 155)
!128 = !DISubprogram(name: "mbsinit", scope: !67, file: !67, line: 292, type: !129, flags: DIFlagPrototyped, spFlags: 0)
!129 = !DISubroutineType(types: !130)
!130 = !{!26, !131}
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!133 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !134, file: !61, line: 156)
!134 = !DISubprogram(name: "mbsrtowcs", scope: !67, file: !67, line: 337, type: !135, flags: DIFlagPrototyped, spFlags: 0)
!135 = !DISubroutineType(types: !136)
!136 = !{!117, !84, !137, !117, !121}
!137 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !138)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!139 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !140, file: !61, line: 157)
!140 = !DISubprogram(name: "putwc", scope: !67, file: !67, line: 741, type: !88, flags: DIFlagPrototyped, spFlags: 0)
!141 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !142, file: !61, line: 158)
!142 = !DISubprogram(name: "putwchar", scope: !67, file: !67, line: 747, type: !143, flags: DIFlagPrototyped, spFlags: 0)
!143 = !DISubroutineType(types: !144)
!144 = !{!63, !83}
!145 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !146, file: !61, line: 160)
!146 = !DISubprogram(name: "swprintf", scope: !67, file: !67, line: 590, type: !147, flags: DIFlagPrototyped, spFlags: 0)
!147 = !DISubroutineType(types: !148)
!148 = !{!26, !84, !117, !94, null}
!149 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !150, file: !61, line: 162)
!150 = !DISubprogram(name: "swscanf", linkageName: "__isoc99_swscanf", scope: !67, file: !67, line: 647, type: !151, flags: DIFlagPrototyped, spFlags: 0)
!151 = !DISubroutineType(types: !152)
!152 = !{!26, !94, !94, null}
!153 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !154, file: !61, line: 163)
!154 = !DISubprogram(name: "ungetwc", scope: !67, file: !67, line: 770, type: !155, flags: DIFlagPrototyped, spFlags: 0)
!155 = !DISubroutineType(types: !156)
!156 = !{!63, !63, !74}
!157 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !158, file: !61, line: 164)
!158 = !DISubprogram(name: "vfwprintf", scope: !67, file: !67, line: 598, type: !159, flags: DIFlagPrototyped, spFlags: 0)
!159 = !DISubroutineType(types: !160)
!160 = !{!26, !85, !94, !161}
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, flags: DIFlagTypePassByValue, elements: !163, identifier: "_ZTS13__va_list_tag")
!163 = !{!164, !166, !167, !169}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !162, file: !165, baseType: !56, size: 32)
!165 = !DIFile(filename: "NEW_CLONE_FOR_BENCHMARKS/Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Thread_creation_Patterns/Thread_creation_multiple_scopes/thread_creation_various_scopes_3.cpp", directory: "/home/cs22mtech12008")
!166 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !162, file: !165, baseType: !56, size: 32, offset: 32)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !162, file: !165, baseType: !168, size: 64, offset: 64)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !162, file: !165, baseType: !168, size: 64, offset: 128)
!170 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !171, file: !61, line: 166)
!171 = !DISubprogram(name: "vfwscanf", linkageName: "__isoc99_vfwscanf", scope: !67, file: !67, line: 693, type: !159, flags: DIFlagPrototyped, spFlags: 0)
!172 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !173, file: !61, line: 169)
!173 = !DISubprogram(name: "vswprintf", scope: !67, file: !67, line: 611, type: !174, flags: DIFlagPrototyped, spFlags: 0)
!174 = !DISubroutineType(types: !175)
!175 = !{!26, !84, !117, !94, !161}
!176 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !177, file: !61, line: 172)
!177 = !DISubprogram(name: "vswscanf", linkageName: "__isoc99_vswscanf", scope: !67, file: !67, line: 700, type: !178, flags: DIFlagPrototyped, spFlags: 0)
!178 = !DISubroutineType(types: !179)
!179 = !{!26, !94, !94, !161}
!180 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !181, file: !61, line: 174)
!181 = !DISubprogram(name: "vwprintf", scope: !67, file: !67, line: 606, type: !182, flags: DIFlagPrototyped, spFlags: 0)
!182 = !DISubroutineType(types: !183)
!183 = !{!26, !94, !161}
!184 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !185, file: !61, line: 176)
!185 = !DISubprogram(name: "vwscanf", linkageName: "__isoc99_vwscanf", scope: !67, file: !67, line: 697, type: !182, flags: DIFlagPrototyped, spFlags: 0)
!186 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !187, file: !61, line: 178)
!187 = !DISubprogram(name: "wcrtomb", scope: !67, file: !67, line: 301, type: !188, flags: DIFlagPrototyped, spFlags: 0)
!188 = !DISubroutineType(types: !189)
!189 = !{!117, !190, !83, !121}
!190 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !191)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!192 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !193, file: !61, line: 179)
!193 = !DISubprogram(name: "wcscat", scope: !67, file: !67, line: 97, type: !194, flags: DIFlagPrototyped, spFlags: 0)
!194 = !DISubroutineType(types: !195)
!195 = !{!82, !84, !94}
!196 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !197, file: !61, line: 180)
!197 = !DISubprogram(name: "wcscmp", scope: !67, file: !67, line: 106, type: !198, flags: DIFlagPrototyped, spFlags: 0)
!198 = !DISubroutineType(types: !199)
!199 = !{!26, !95, !95}
!200 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !201, file: !61, line: 181)
!201 = !DISubprogram(name: "wcscoll", scope: !67, file: !67, line: 131, type: !198, flags: DIFlagPrototyped, spFlags: 0)
!202 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !203, file: !61, line: 182)
!203 = !DISubprogram(name: "wcscpy", scope: !67, file: !67, line: 87, type: !194, flags: DIFlagPrototyped, spFlags: 0)
!204 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !205, file: !61, line: 183)
!205 = !DISubprogram(name: "wcscspn", scope: !67, file: !67, line: 187, type: !206, flags: DIFlagPrototyped, spFlags: 0)
!206 = !DISubroutineType(types: !207)
!207 = !{!117, !95, !95}
!208 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !209, file: !61, line: 184)
!209 = !DISubprogram(name: "wcsftime", scope: !67, file: !67, line: 834, type: !210, flags: DIFlagPrototyped, spFlags: 0)
!210 = !DISubroutineType(types: !211)
!211 = !{!117, !84, !117, !94, !212}
!212 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !213)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !215)
!215 = !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !67, line: 83, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS2tm")
!216 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !217, file: !61, line: 185)
!217 = !DISubprogram(name: "wcslen", scope: !67, file: !67, line: 222, type: !218, flags: DIFlagPrototyped, spFlags: 0)
!218 = !DISubroutineType(types: !219)
!219 = !{!117, !95}
!220 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !221, file: !61, line: 186)
!221 = !DISubprogram(name: "wcsncat", scope: !67, file: !67, line: 101, type: !222, flags: DIFlagPrototyped, spFlags: 0)
!222 = !DISubroutineType(types: !223)
!223 = !{!82, !84, !94, !117}
!224 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !225, file: !61, line: 187)
!225 = !DISubprogram(name: "wcsncmp", scope: !67, file: !67, line: 109, type: !226, flags: DIFlagPrototyped, spFlags: 0)
!226 = !DISubroutineType(types: !227)
!227 = !{!26, !95, !95, !117}
!228 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !229, file: !61, line: 188)
!229 = !DISubprogram(name: "wcsncpy", scope: !67, file: !67, line: 92, type: !222, flags: DIFlagPrototyped, spFlags: 0)
!230 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !231, file: !61, line: 189)
!231 = !DISubprogram(name: "wcsrtombs", scope: !67, file: !67, line: 343, type: !232, flags: DIFlagPrototyped, spFlags: 0)
!232 = !DISubroutineType(types: !233)
!233 = !{!117, !190, !234, !117, !121}
!234 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !235)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!236 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !237, file: !61, line: 190)
!237 = !DISubprogram(name: "wcsspn", scope: !67, file: !67, line: 191, type: !206, flags: DIFlagPrototyped, spFlags: 0)
!238 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !239, file: !61, line: 191)
!239 = !DISubprogram(name: "wcstod", scope: !67, file: !67, line: 377, type: !240, flags: DIFlagPrototyped, spFlags: 0)
!240 = !DISubroutineType(types: !241)
!241 = !{!242, !94, !243}
!242 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!243 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !244)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!245 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !246, file: !61, line: 193)
!246 = !DISubprogram(name: "wcstof", scope: !67, file: !67, line: 382, type: !247, flags: DIFlagPrototyped, spFlags: 0)
!247 = !DISubroutineType(types: !248)
!248 = !{!249, !94, !243}
!249 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!250 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !251, file: !61, line: 195)
!251 = !DISubprogram(name: "wcstok", scope: !67, file: !67, line: 217, type: !252, flags: DIFlagPrototyped, spFlags: 0)
!252 = !DISubroutineType(types: !253)
!253 = !{!82, !84, !94, !243}
!254 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !255, file: !61, line: 196)
!255 = !DISubprogram(name: "wcstol", scope: !67, file: !67, line: 428, type: !256, flags: DIFlagPrototyped, spFlags: 0)
!256 = !DISubroutineType(types: !257)
!257 = !{!258, !94, !243, !26}
!258 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!259 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !260, file: !61, line: 197)
!260 = !DISubprogram(name: "wcstoul", scope: !67, file: !67, line: 433, type: !261, flags: DIFlagPrototyped, spFlags: 0)
!261 = !DISubroutineType(types: !262)
!262 = !{!32, !94, !243, !26}
!263 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !264, file: !61, line: 198)
!264 = !DISubprogram(name: "wcsxfrm", scope: !67, file: !67, line: 135, type: !265, flags: DIFlagPrototyped, spFlags: 0)
!265 = !DISubroutineType(types: !266)
!266 = !{!117, !84, !94, !117}
!267 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !268, file: !61, line: 199)
!268 = !DISubprogram(name: "wctob", scope: !67, file: !67, line: 288, type: !269, flags: DIFlagPrototyped, spFlags: 0)
!269 = !DISubroutineType(types: !270)
!270 = !{!26, !63}
!271 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !272, file: !61, line: 200)
!272 = !DISubprogram(name: "wmemcmp", scope: !67, file: !67, line: 258, type: !226, flags: DIFlagPrototyped, spFlags: 0)
!273 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !274, file: !61, line: 201)
!274 = !DISubprogram(name: "wmemcpy", scope: !67, file: !67, line: 262, type: !222, flags: DIFlagPrototyped, spFlags: 0)
!275 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !276, file: !61, line: 202)
!276 = !DISubprogram(name: "wmemmove", scope: !67, file: !67, line: 267, type: !277, flags: DIFlagPrototyped, spFlags: 0)
!277 = !DISubroutineType(types: !278)
!278 = !{!82, !82, !95, !117}
!279 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !280, file: !61, line: 203)
!280 = !DISubprogram(name: "wmemset", scope: !67, file: !67, line: 271, type: !281, flags: DIFlagPrototyped, spFlags: 0)
!281 = !DISubroutineType(types: !282)
!282 = !{!82, !82, !83, !117}
!283 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !284, file: !61, line: 204)
!284 = !DISubprogram(name: "wprintf", scope: !67, file: !67, line: 587, type: !285, flags: DIFlagPrototyped, spFlags: 0)
!285 = !DISubroutineType(types: !286)
!286 = !{!26, !94, null}
!287 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !288, file: !61, line: 205)
!288 = !DISubprogram(name: "wscanf", linkageName: "__isoc99_wscanf", scope: !67, file: !67, line: 644, type: !285, flags: DIFlagPrototyped, spFlags: 0)
!289 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !290, file: !61, line: 206)
!290 = !DISubprogram(name: "wcschr", scope: !67, file: !67, line: 164, type: !291, flags: DIFlagPrototyped, spFlags: 0)
!291 = !DISubroutineType(types: !292)
!292 = !{!82, !95, !83}
!293 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !294, file: !61, line: 207)
!294 = !DISubprogram(name: "wcspbrk", scope: !67, file: !67, line: 201, type: !295, flags: DIFlagPrototyped, spFlags: 0)
!295 = !DISubroutineType(types: !296)
!296 = !{!82, !95, !95}
!297 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !298, file: !61, line: 208)
!298 = !DISubprogram(name: "wcsrchr", scope: !67, file: !67, line: 174, type: !291, flags: DIFlagPrototyped, spFlags: 0)
!299 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !300, file: !61, line: 209)
!300 = !DISubprogram(name: "wcsstr", scope: !67, file: !67, line: 212, type: !295, flags: DIFlagPrototyped, spFlags: 0)
!301 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !302, file: !61, line: 210)
!302 = !DISubprogram(name: "wmemchr", scope: !67, file: !67, line: 253, type: !303, flags: DIFlagPrototyped, spFlags: 0)
!303 = !DISubroutineType(types: !304)
!304 = !{!82, !95, !83, !117}
!305 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !306, entity: !307, file: !61, line: 251)
!306 = !DINamespace(name: "__gnu_cxx", scope: null)
!307 = !DISubprogram(name: "wcstold", scope: !67, file: !67, line: 384, type: !308, flags: DIFlagPrototyped, spFlags: 0)
!308 = !DISubroutineType(types: !309)
!309 = !{!310, !94, !243}
!310 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!311 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !306, entity: !312, file: !61, line: 260)
!312 = !DISubprogram(name: "wcstoll", scope: !67, file: !67, line: 441, type: !313, flags: DIFlagPrototyped, spFlags: 0)
!313 = !DISubroutineType(types: !314)
!314 = !{!315, !94, !243, !26}
!315 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!316 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !306, entity: !317, file: !61, line: 261)
!317 = !DISubprogram(name: "wcstoull", scope: !67, file: !67, line: 448, type: !318, flags: DIFlagPrototyped, spFlags: 0)
!318 = !DISubroutineType(types: !319)
!319 = !{!320, !94, !243, !26}
!320 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!321 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !307, file: !61, line: 267)
!322 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !312, file: !61, line: 268)
!323 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !317, file: !61, line: 269)
!324 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !246, file: !61, line: 283)
!325 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !171, file: !61, line: 286)
!326 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !177, file: !61, line: 289)
!327 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !185, file: !61, line: 292)
!328 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !307, file: !61, line: 296)
!329 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !312, file: !61, line: 297)
!330 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !317, file: !61, line: 298)
!331 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !332, file: !333, line: 66)
!332 = !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !334, file: !333, line: 97, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!333 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/exception_ptr.h", directory: "", checksumkind: CSK_MD5, checksum: "314ad14748ccb9ff85c65d17ebb0828b")
!334 = !DINamespace(name: "__exception_ptr", scope: !44)
!335 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !334, entity: !336, file: !333, line: 85)
!336 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !44, file: !333, line: 81, type: !337, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!337 = !DISubroutineType(types: !338)
!338 = !{null, !332}
!339 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !340, file: !333, line: 243)
!340 = !DISubprogram(name: "swap", linkageName: "_ZNSt15__exception_ptr4swapERNS_13exception_ptrES1_", scope: !334, file: !333, line: 230, type: !341, flags: DIFlagPrototyped, spFlags: 0)
!341 = !DISubroutineType(types: !342)
!342 = !{null, !343, !343}
!343 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !332, size: 64)
!344 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !345, file: !347, line: 53)
!345 = !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !346, line: 51, size: 768, flags: DIFlagFwdDecl, identifier: "_ZTS5lconv")
!346 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "0cf373fc44eed8073800bdb9da87b72f")
!347 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/clocale", directory: "")
!348 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !349, file: !347, line: 54)
!349 = !DISubprogram(name: "setlocale", scope: !346, file: !346, line: 122, type: !350, flags: DIFlagPrototyped, spFlags: 0)
!350 = !DISubroutineType(types: !351)
!351 = !{!191, !26, !120}
!352 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !353, file: !347, line: 55)
!353 = !DISubprogram(name: "localeconv", scope: !346, file: !346, line: 125, type: !354, flags: DIFlagPrototyped, spFlags: 0)
!354 = !DISubroutineType(types: !355)
!355 = !{!356}
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!357 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !358, file: !362, line: 64)
!358 = !DISubprogram(name: "isalnum", scope: !359, file: !359, line: 108, type: !360, flags: DIFlagPrototyped, spFlags: 0)
!359 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "36575f934ef4fe7e9d50a3cb17bd5c66")
!360 = !DISubroutineType(types: !361)
!361 = !{!26, !26}
!362 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cctype", directory: "")
!363 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !364, file: !362, line: 65)
!364 = !DISubprogram(name: "isalpha", scope: !359, file: !359, line: 109, type: !360, flags: DIFlagPrototyped, spFlags: 0)
!365 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !366, file: !362, line: 66)
!366 = !DISubprogram(name: "iscntrl", scope: !359, file: !359, line: 110, type: !360, flags: DIFlagPrototyped, spFlags: 0)
!367 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !368, file: !362, line: 67)
!368 = !DISubprogram(name: "isdigit", scope: !359, file: !359, line: 111, type: !360, flags: DIFlagPrototyped, spFlags: 0)
!369 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !370, file: !362, line: 68)
!370 = !DISubprogram(name: "isgraph", scope: !359, file: !359, line: 113, type: !360, flags: DIFlagPrototyped, spFlags: 0)
!371 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !372, file: !362, line: 69)
!372 = !DISubprogram(name: "islower", scope: !359, file: !359, line: 112, type: !360, flags: DIFlagPrototyped, spFlags: 0)
!373 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !374, file: !362, line: 70)
!374 = !DISubprogram(name: "isprint", scope: !359, file: !359, line: 114, type: !360, flags: DIFlagPrototyped, spFlags: 0)
!375 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !376, file: !362, line: 71)
!376 = !DISubprogram(name: "ispunct", scope: !359, file: !359, line: 115, type: !360, flags: DIFlagPrototyped, spFlags: 0)
!377 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !378, file: !362, line: 72)
!378 = !DISubprogram(name: "isspace", scope: !359, file: !359, line: 116, type: !360, flags: DIFlagPrototyped, spFlags: 0)
!379 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !380, file: !362, line: 73)
!380 = !DISubprogram(name: "isupper", scope: !359, file: !359, line: 117, type: !360, flags: DIFlagPrototyped, spFlags: 0)
!381 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !382, file: !362, line: 74)
!382 = !DISubprogram(name: "isxdigit", scope: !359, file: !359, line: 118, type: !360, flags: DIFlagPrototyped, spFlags: 0)
!383 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !384, file: !362, line: 75)
!384 = !DISubprogram(name: "tolower", scope: !359, file: !359, line: 122, type: !360, flags: DIFlagPrototyped, spFlags: 0)
!385 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !386, file: !362, line: 76)
!386 = !DISubprogram(name: "toupper", scope: !359, file: !359, line: 125, type: !360, flags: DIFlagPrototyped, spFlags: 0)
!387 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !388, file: !362, line: 87)
!388 = !DISubprogram(name: "isblank", scope: !359, file: !359, line: 130, type: !360, flags: DIFlagPrototyped, spFlags: 0)
!389 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !390, entity: !391, file: !392, line: 58)
!390 = !DINamespace(name: "__gnu_debug", scope: null)
!391 = !DINamespace(name: "__debug", scope: !44)
!392 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/debug/debug.h", directory: "", checksumkind: CSK_MD5, checksum: "752210a319f5f5d356cc29cd1ce3cdc7")
!393 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !394, file: !396, line: 52)
!394 = !DISubprogram(name: "abs", scope: !395, file: !395, line: 840, type: !360, flags: DIFlagPrototyped, spFlags: 0)
!395 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!396 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/std_abs.h", directory: "")
!397 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !398, file: !400, line: 131)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !395, line: 62, baseType: !399)
!399 = !DICompositeType(tag: DW_TAG_structure_type, file: !395, line: 58, size: 64, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!400 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cstdlib", directory: "")
!401 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !402, file: !400, line: 132)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !395, line: 70, baseType: !403)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !395, line: 66, size: 128, flags: DIFlagTypePassByValue, elements: !404, identifier: "_ZTS6ldiv_t")
!404 = !{!405, !406}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !403, file: !395, line: 68, baseType: !258, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !403, file: !395, line: 69, baseType: !258, size: 64, offset: 64)
!407 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !408, file: !400, line: 134)
!408 = !DISubprogram(name: "abort", scope: !395, file: !395, line: 591, type: !409, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!409 = !DISubroutineType(types: !410)
!410 = !{null}
!411 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !412, file: !400, line: 136)
!412 = !DISubprogram(name: "aligned_alloc", scope: !395, file: !395, line: 586, type: !413, flags: DIFlagPrototyped, spFlags: 0)
!413 = !DISubroutineType(types: !414)
!414 = !{!168, !117, !117}
!415 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !416, file: !400, line: 138)
!416 = !DISubprogram(name: "atexit", scope: !395, file: !395, line: 595, type: !417, flags: DIFlagPrototyped, spFlags: 0)
!417 = !DISubroutineType(types: !418)
!418 = !{!26, !419}
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!420 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !421, file: !400, line: 141)
!421 = !DISubprogram(name: "at_quick_exit", scope: !395, file: !395, line: 600, type: !417, flags: DIFlagPrototyped, spFlags: 0)
!422 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !423, file: !400, line: 144)
!423 = !DISubprogram(name: "atof", scope: !395, file: !395, line: 101, type: !424, flags: DIFlagPrototyped, spFlags: 0)
!424 = !DISubroutineType(types: !425)
!425 = !{!242, !120}
!426 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !427, file: !400, line: 145)
!427 = !DISubprogram(name: "atoi", scope: !395, file: !395, line: 104, type: !428, flags: DIFlagPrototyped, spFlags: 0)
!428 = !DISubroutineType(types: !429)
!429 = !{!26, !120}
!430 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !431, file: !400, line: 146)
!431 = !DISubprogram(name: "atol", scope: !395, file: !395, line: 107, type: !432, flags: DIFlagPrototyped, spFlags: 0)
!432 = !DISubroutineType(types: !433)
!433 = !{!258, !120}
!434 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !435, file: !400, line: 147)
!435 = !DISubprogram(name: "bsearch", scope: !395, file: !395, line: 820, type: !436, flags: DIFlagPrototyped, spFlags: 0)
!436 = !DISubroutineType(types: !437)
!437 = !{!168, !438, !438, !117, !117, !440}
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !395, line: 808, baseType: !441)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DISubroutineType(types: !443)
!443 = !{!26, !438, !438}
!444 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !445, file: !400, line: 148)
!445 = !DISubprogram(name: "calloc", scope: !395, file: !395, line: 542, type: !413, flags: DIFlagPrototyped, spFlags: 0)
!446 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !447, file: !400, line: 149)
!447 = !DISubprogram(name: "div", scope: !395, file: !395, line: 852, type: !448, flags: DIFlagPrototyped, spFlags: 0)
!448 = !DISubroutineType(types: !449)
!449 = !{!398, !26, !26}
!450 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !451, file: !400, line: 150)
!451 = !DISubprogram(name: "exit", scope: !395, file: !395, line: 617, type: !452, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!452 = !DISubroutineType(types: !453)
!453 = !{null, !26}
!454 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !455, file: !400, line: 151)
!455 = !DISubprogram(name: "free", scope: !395, file: !395, line: 565, type: !456, flags: DIFlagPrototyped, spFlags: 0)
!456 = !DISubroutineType(types: !457)
!457 = !{null, !168}
!458 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !459, file: !400, line: 152)
!459 = !DISubprogram(name: "getenv", scope: !395, file: !395, line: 634, type: !460, flags: DIFlagPrototyped, spFlags: 0)
!460 = !DISubroutineType(types: !461)
!461 = !{!191, !120}
!462 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !463, file: !400, line: 153)
!463 = !DISubprogram(name: "labs", scope: !395, file: !395, line: 841, type: !464, flags: DIFlagPrototyped, spFlags: 0)
!464 = !DISubroutineType(types: !465)
!465 = !{!258, !258}
!466 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !467, file: !400, line: 154)
!467 = !DISubprogram(name: "ldiv", scope: !395, file: !395, line: 854, type: !468, flags: DIFlagPrototyped, spFlags: 0)
!468 = !DISubroutineType(types: !469)
!469 = !{!402, !258, !258}
!470 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !471, file: !400, line: 155)
!471 = !DISubprogram(name: "malloc", scope: !395, file: !395, line: 539, type: !472, flags: DIFlagPrototyped, spFlags: 0)
!472 = !DISubroutineType(types: !473)
!473 = !{!168, !117}
!474 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !475, file: !400, line: 157)
!475 = !DISubprogram(name: "mblen", scope: !395, file: !395, line: 922, type: !476, flags: DIFlagPrototyped, spFlags: 0)
!476 = !DISubroutineType(types: !477)
!477 = !{!26, !120, !117}
!478 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !479, file: !400, line: 158)
!479 = !DISubprogram(name: "mbstowcs", scope: !395, file: !395, line: 933, type: !480, flags: DIFlagPrototyped, spFlags: 0)
!480 = !DISubroutineType(types: !481)
!481 = !{!117, !84, !119, !117}
!482 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !483, file: !400, line: 159)
!483 = !DISubprogram(name: "mbtowc", scope: !395, file: !395, line: 925, type: !484, flags: DIFlagPrototyped, spFlags: 0)
!484 = !DISubroutineType(types: !485)
!485 = !{!26, !84, !119, !117}
!486 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !487, file: !400, line: 161)
!487 = !DISubprogram(name: "qsort", scope: !395, file: !395, line: 830, type: !488, flags: DIFlagPrototyped, spFlags: 0)
!488 = !DISubroutineType(types: !489)
!489 = !{null, !168, !117, !117, !440}
!490 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !491, file: !400, line: 164)
!491 = !DISubprogram(name: "quick_exit", scope: !395, file: !395, line: 623, type: !452, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!492 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !493, file: !400, line: 167)
!493 = !DISubprogram(name: "rand", scope: !395, file: !395, line: 453, type: !494, flags: DIFlagPrototyped, spFlags: 0)
!494 = !DISubroutineType(types: !495)
!495 = !{!26}
!496 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !497, file: !400, line: 168)
!497 = !DISubprogram(name: "realloc", scope: !395, file: !395, line: 550, type: !498, flags: DIFlagPrototyped, spFlags: 0)
!498 = !DISubroutineType(types: !499)
!499 = !{!168, !168, !117}
!500 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !501, file: !400, line: 169)
!501 = !DISubprogram(name: "srand", scope: !395, file: !395, line: 455, type: !502, flags: DIFlagPrototyped, spFlags: 0)
!502 = !DISubroutineType(types: !503)
!503 = !{null, !56}
!504 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !505, file: !400, line: 170)
!505 = !DISubprogram(name: "strtod", scope: !395, file: !395, line: 117, type: !506, flags: DIFlagPrototyped, spFlags: 0)
!506 = !DISubroutineType(types: !507)
!507 = !{!242, !119, !508}
!508 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !509)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!510 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !511, file: !400, line: 171)
!511 = !DISubprogram(name: "strtol", scope: !395, file: !395, line: 176, type: !512, flags: DIFlagPrototyped, spFlags: 0)
!512 = !DISubroutineType(types: !513)
!513 = !{!258, !119, !508, !26}
!514 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !515, file: !400, line: 172)
!515 = !DISubprogram(name: "strtoul", scope: !395, file: !395, line: 180, type: !516, flags: DIFlagPrototyped, spFlags: 0)
!516 = !DISubroutineType(types: !517)
!517 = !{!32, !119, !508, !26}
!518 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !519, file: !400, line: 173)
!519 = !DISubprogram(name: "system", scope: !395, file: !395, line: 784, type: !428, flags: DIFlagPrototyped, spFlags: 0)
!520 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !521, file: !400, line: 175)
!521 = !DISubprogram(name: "wcstombs", scope: !395, file: !395, line: 936, type: !522, flags: DIFlagPrototyped, spFlags: 0)
!522 = !DISubroutineType(types: !523)
!523 = !{!117, !190, !94, !117}
!524 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !525, file: !400, line: 176)
!525 = !DISubprogram(name: "wctomb", scope: !395, file: !395, line: 929, type: !526, flags: DIFlagPrototyped, spFlags: 0)
!526 = !DISubroutineType(types: !527)
!527 = !{!26, !191, !83}
!528 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !306, entity: !529, file: !400, line: 204)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !395, line: 80, baseType: !530)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !395, line: 76, size: 128, flags: DIFlagTypePassByValue, elements: !531, identifier: "_ZTS7lldiv_t")
!531 = !{!532, !533}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !530, file: !395, line: 78, baseType: !315, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !530, file: !395, line: 79, baseType: !315, size: 64, offset: 64)
!534 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !306, entity: !535, file: !400, line: 210)
!535 = !DISubprogram(name: "_Exit", scope: !395, file: !395, line: 629, type: !452, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!536 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !306, entity: !537, file: !400, line: 214)
!537 = !DISubprogram(name: "llabs", scope: !395, file: !395, line: 844, type: !538, flags: DIFlagPrototyped, spFlags: 0)
!538 = !DISubroutineType(types: !539)
!539 = !{!315, !315}
!540 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !306, entity: !541, file: !400, line: 220)
!541 = !DISubprogram(name: "lldiv", scope: !395, file: !395, line: 858, type: !542, flags: DIFlagPrototyped, spFlags: 0)
!542 = !DISubroutineType(types: !543)
!543 = !{!529, !315, !315}
!544 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !306, entity: !545, file: !400, line: 231)
!545 = !DISubprogram(name: "atoll", scope: !395, file: !395, line: 112, type: !546, flags: DIFlagPrototyped, spFlags: 0)
!546 = !DISubroutineType(types: !547)
!547 = !{!315, !120}
!548 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !306, entity: !549, file: !400, line: 232)
!549 = !DISubprogram(name: "strtoll", scope: !395, file: !395, line: 200, type: !550, flags: DIFlagPrototyped, spFlags: 0)
!550 = !DISubroutineType(types: !551)
!551 = !{!315, !119, !508, !26}
!552 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !306, entity: !553, file: !400, line: 233)
!553 = !DISubprogram(name: "strtoull", scope: !395, file: !395, line: 205, type: !554, flags: DIFlagPrototyped, spFlags: 0)
!554 = !DISubroutineType(types: !555)
!555 = !{!320, !119, !508, !26}
!556 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !306, entity: !557, file: !400, line: 235)
!557 = !DISubprogram(name: "strtof", scope: !395, file: !395, line: 123, type: !558, flags: DIFlagPrototyped, spFlags: 0)
!558 = !DISubroutineType(types: !559)
!559 = !{!249, !119, !508}
!560 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !306, entity: !561, file: !400, line: 236)
!561 = !DISubprogram(name: "strtold", scope: !395, file: !395, line: 126, type: !562, flags: DIFlagPrototyped, spFlags: 0)
!562 = !DISubroutineType(types: !563)
!563 = !{!310, !119, !508}
!564 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !529, file: !400, line: 244)
!565 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !535, file: !400, line: 246)
!566 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !537, file: !400, line: 248)
!567 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !568, file: !400, line: 249)
!568 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !306, file: !400, line: 217, type: !542, flags: DIFlagPrototyped, spFlags: 0)
!569 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !541, file: !400, line: 250)
!570 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !545, file: !400, line: 252)
!571 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !557, file: !400, line: 253)
!572 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !549, file: !400, line: 254)
!573 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !553, file: !400, line: 255)
!574 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !561, file: !400, line: 256)
!575 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !576, file: !578, line: 98)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !577, line: 7, baseType: !77)
!577 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!578 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cstdio", directory: "")
!579 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !580, file: !578, line: 99)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !581, line: 84, baseType: !582)
!581 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fpos_t", file: !583, line: 14, baseType: !584)
!583 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h", directory: "", checksumkind: CSK_MD5, checksum: "32de8bdaf3551a6c0a9394f9af4389ce")
!584 = !DICompositeType(tag: DW_TAG_structure_type, name: "_G_fpos_t", file: !583, line: 10, size: 128, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
!585 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !586, file: !578, line: 101)
!586 = !DISubprogram(name: "clearerr", scope: !581, file: !581, line: 757, type: !587, flags: DIFlagPrototyped, spFlags: 0)
!587 = !DISubroutineType(types: !588)
!588 = !{null, !589}
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!590 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !591, file: !578, line: 102)
!591 = !DISubprogram(name: "fclose", scope: !581, file: !581, line: 213, type: !592, flags: DIFlagPrototyped, spFlags: 0)
!592 = !DISubroutineType(types: !593)
!593 = !{!26, !589}
!594 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !595, file: !578, line: 103)
!595 = !DISubprogram(name: "feof", scope: !581, file: !581, line: 759, type: !592, flags: DIFlagPrototyped, spFlags: 0)
!596 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !597, file: !578, line: 104)
!597 = !DISubprogram(name: "ferror", scope: !581, file: !581, line: 761, type: !592, flags: DIFlagPrototyped, spFlags: 0)
!598 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !599, file: !578, line: 105)
!599 = !DISubprogram(name: "fflush", scope: !581, file: !581, line: 218, type: !592, flags: DIFlagPrototyped, spFlags: 0)
!600 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !601, file: !578, line: 106)
!601 = !DISubprogram(name: "fgetc", scope: !581, file: !581, line: 485, type: !592, flags: DIFlagPrototyped, spFlags: 0)
!602 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !603, file: !578, line: 107)
!603 = !DISubprogram(name: "fgetpos", scope: !581, file: !581, line: 731, type: !604, flags: DIFlagPrototyped, spFlags: 0)
!604 = !DISubroutineType(types: !605)
!605 = !{!26, !606, !607}
!606 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !589)
!607 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !608)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!609 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !610, file: !578, line: 108)
!610 = !DISubprogram(name: "fgets", scope: !581, file: !581, line: 564, type: !611, flags: DIFlagPrototyped, spFlags: 0)
!611 = !DISubroutineType(types: !612)
!612 = !{!191, !190, !26, !606}
!613 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !614, file: !578, line: 109)
!614 = !DISubprogram(name: "fopen", scope: !581, file: !581, line: 246, type: !615, flags: DIFlagPrototyped, spFlags: 0)
!615 = !DISubroutineType(types: !616)
!616 = !{!589, !119, !119}
!617 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !618, file: !578, line: 110)
!618 = !DISubprogram(name: "fprintf", scope: !581, file: !581, line: 326, type: !619, flags: DIFlagPrototyped, spFlags: 0)
!619 = !DISubroutineType(types: !620)
!620 = !{!26, !606, !119, null}
!621 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !622, file: !578, line: 111)
!622 = !DISubprogram(name: "fputc", scope: !581, file: !581, line: 521, type: !623, flags: DIFlagPrototyped, spFlags: 0)
!623 = !DISubroutineType(types: !624)
!624 = !{!26, !26, !589}
!625 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !626, file: !578, line: 112)
!626 = !DISubprogram(name: "fputs", scope: !581, file: !581, line: 626, type: !627, flags: DIFlagPrototyped, spFlags: 0)
!627 = !DISubroutineType(types: !628)
!628 = !{!26, !119, !606}
!629 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !630, file: !578, line: 113)
!630 = !DISubprogram(name: "fread", scope: !581, file: !581, line: 646, type: !631, flags: DIFlagPrototyped, spFlags: 0)
!631 = !DISubroutineType(types: !632)
!632 = !{!117, !633, !117, !117, !606}
!633 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !168)
!634 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !635, file: !578, line: 114)
!635 = !DISubprogram(name: "freopen", scope: !581, file: !581, line: 252, type: !636, flags: DIFlagPrototyped, spFlags: 0)
!636 = !DISubroutineType(types: !637)
!637 = !{!589, !119, !119, !606}
!638 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !639, file: !578, line: 115)
!639 = !DISubprogram(name: "fscanf", linkageName: "__isoc99_fscanf", scope: !581, file: !581, line: 407, type: !619, flags: DIFlagPrototyped, spFlags: 0)
!640 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !641, file: !578, line: 116)
!641 = !DISubprogram(name: "fseek", scope: !581, file: !581, line: 684, type: !642, flags: DIFlagPrototyped, spFlags: 0)
!642 = !DISubroutineType(types: !643)
!643 = !{!26, !589, !258, !26}
!644 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !645, file: !578, line: 117)
!645 = !DISubprogram(name: "fsetpos", scope: !581, file: !581, line: 736, type: !646, flags: DIFlagPrototyped, spFlags: 0)
!646 = !DISubroutineType(types: !647)
!647 = !{!26, !589, !648}
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !580)
!650 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !651, file: !578, line: 118)
!651 = !DISubprogram(name: "ftell", scope: !581, file: !581, line: 689, type: !652, flags: DIFlagPrototyped, spFlags: 0)
!652 = !DISubroutineType(types: !653)
!653 = !{!258, !589}
!654 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !655, file: !578, line: 119)
!655 = !DISubprogram(name: "fwrite", scope: !581, file: !581, line: 652, type: !656, flags: DIFlagPrototyped, spFlags: 0)
!656 = !DISubroutineType(types: !657)
!657 = !{!117, !658, !117, !117, !606}
!658 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !438)
!659 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !660, file: !578, line: 120)
!660 = !DISubprogram(name: "getc", scope: !581, file: !581, line: 486, type: !592, flags: DIFlagPrototyped, spFlags: 0)
!661 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !662, file: !578, line: 121)
!662 = !DISubprogram(name: "getchar", scope: !581, file: !581, line: 492, type: !494, flags: DIFlagPrototyped, spFlags: 0)
!663 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !664, file: !578, line: 126)
!664 = !DISubprogram(name: "perror", scope: !581, file: !581, line: 775, type: !665, flags: DIFlagPrototyped, spFlags: 0)
!665 = !DISubroutineType(types: !666)
!666 = !{null, !120}
!667 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !668, file: !578, line: 127)
!668 = !DISubprogram(name: "printf", scope: !581, file: !581, line: 332, type: !669, flags: DIFlagPrototyped, spFlags: 0)
!669 = !DISubroutineType(types: !670)
!670 = !{!26, !119, null}
!671 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !672, file: !578, line: 128)
!672 = !DISubprogram(name: "putc", scope: !581, file: !581, line: 522, type: !623, flags: DIFlagPrototyped, spFlags: 0)
!673 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !674, file: !578, line: 129)
!674 = !DISubprogram(name: "putchar", scope: !581, file: !581, line: 528, type: !360, flags: DIFlagPrototyped, spFlags: 0)
!675 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !676, file: !578, line: 130)
!676 = !DISubprogram(name: "puts", scope: !581, file: !581, line: 632, type: !428, flags: DIFlagPrototyped, spFlags: 0)
!677 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !678, file: !578, line: 131)
!678 = !DISubprogram(name: "remove", scope: !581, file: !581, line: 146, type: !428, flags: DIFlagPrototyped, spFlags: 0)
!679 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !680, file: !578, line: 132)
!680 = !DISubprogram(name: "rename", scope: !581, file: !581, line: 148, type: !681, flags: DIFlagPrototyped, spFlags: 0)
!681 = !DISubroutineType(types: !682)
!682 = !{!26, !120, !120}
!683 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !684, file: !578, line: 133)
!684 = !DISubprogram(name: "rewind", scope: !581, file: !581, line: 694, type: !587, flags: DIFlagPrototyped, spFlags: 0)
!685 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !686, file: !578, line: 134)
!686 = !DISubprogram(name: "scanf", linkageName: "__isoc99_scanf", scope: !581, file: !581, line: 410, type: !669, flags: DIFlagPrototyped, spFlags: 0)
!687 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !688, file: !578, line: 135)
!688 = !DISubprogram(name: "setbuf", scope: !581, file: !581, line: 304, type: !689, flags: DIFlagPrototyped, spFlags: 0)
!689 = !DISubroutineType(types: !690)
!690 = !{null, !606, !190}
!691 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !692, file: !578, line: 136)
!692 = !DISubprogram(name: "setvbuf", scope: !581, file: !581, line: 308, type: !693, flags: DIFlagPrototyped, spFlags: 0)
!693 = !DISubroutineType(types: !694)
!694 = !{!26, !606, !190, !26, !117}
!695 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !696, file: !578, line: 137)
!696 = !DISubprogram(name: "sprintf", scope: !581, file: !581, line: 334, type: !697, flags: DIFlagPrototyped, spFlags: 0)
!697 = !DISubroutineType(types: !698)
!698 = !{!26, !190, !119, null}
!699 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !700, file: !578, line: 138)
!700 = !DISubprogram(name: "sscanf", linkageName: "__isoc99_sscanf", scope: !581, file: !581, line: 412, type: !701, flags: DIFlagPrototyped, spFlags: 0)
!701 = !DISubroutineType(types: !702)
!702 = !{!26, !119, !119, null}
!703 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !704, file: !578, line: 139)
!704 = !DISubprogram(name: "tmpfile", scope: !581, file: !581, line: 173, type: !705, flags: DIFlagPrototyped, spFlags: 0)
!705 = !DISubroutineType(types: !706)
!706 = !{!589}
!707 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !708, file: !578, line: 141)
!708 = !DISubprogram(name: "tmpnam", scope: !581, file: !581, line: 187, type: !709, flags: DIFlagPrototyped, spFlags: 0)
!709 = !DISubroutineType(types: !710)
!710 = !{!191, !191}
!711 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !712, file: !578, line: 143)
!712 = !DISubprogram(name: "ungetc", scope: !581, file: !581, line: 639, type: !623, flags: DIFlagPrototyped, spFlags: 0)
!713 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !714, file: !578, line: 144)
!714 = !DISubprogram(name: "vfprintf", scope: !581, file: !581, line: 341, type: !715, flags: DIFlagPrototyped, spFlags: 0)
!715 = !DISubroutineType(types: !716)
!716 = !{!26, !606, !119, !161}
!717 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !718, file: !578, line: 145)
!718 = !DISubprogram(name: "vprintf", scope: !581, file: !581, line: 347, type: !719, flags: DIFlagPrototyped, spFlags: 0)
!719 = !DISubroutineType(types: !720)
!720 = !{!26, !119, !161}
!721 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !722, file: !578, line: 146)
!722 = !DISubprogram(name: "vsprintf", scope: !581, file: !581, line: 349, type: !723, flags: DIFlagPrototyped, spFlags: 0)
!723 = !DISubroutineType(types: !724)
!724 = !{!26, !190, !119, !161}
!725 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !306, entity: !726, file: !578, line: 175)
!726 = !DISubprogram(name: "snprintf", scope: !581, file: !581, line: 354, type: !727, flags: DIFlagPrototyped, spFlags: 0)
!727 = !DISubroutineType(types: !728)
!728 = !{!26, !190, !117, !119, null}
!729 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !306, entity: !730, file: !578, line: 176)
!730 = !DISubprogram(name: "vfscanf", linkageName: "__isoc99_vfscanf", scope: !581, file: !581, line: 451, type: !715, flags: DIFlagPrototyped, spFlags: 0)
!731 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !306, entity: !732, file: !578, line: 177)
!732 = !DISubprogram(name: "vscanf", linkageName: "__isoc99_vscanf", scope: !581, file: !581, line: 456, type: !719, flags: DIFlagPrototyped, spFlags: 0)
!733 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !306, entity: !734, file: !578, line: 178)
!734 = !DISubprogram(name: "vsnprintf", scope: !581, file: !581, line: 358, type: !735, flags: DIFlagPrototyped, spFlags: 0)
!735 = !DISubroutineType(types: !736)
!736 = !{!26, !190, !117, !119, !161}
!737 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !306, entity: !738, file: !578, line: 179)
!738 = !DISubprogram(name: "vsscanf", linkageName: "__isoc99_vsscanf", scope: !581, file: !581, line: 459, type: !739, flags: DIFlagPrototyped, spFlags: 0)
!739 = !DISubroutineType(types: !740)
!740 = !{!26, !119, !119, !161}
!741 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !726, file: !578, line: 185)
!742 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !730, file: !578, line: 186)
!743 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !732, file: !578, line: 187)
!744 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !734, file: !578, line: 188)
!745 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !738, file: !578, line: 189)
!746 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !747, file: !753, line: 58)
!747 = !DIDerivedType(tag: DW_TAG_typedef, name: "max_align_t", file: !748, line: 24, baseType: !749)
!748 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/__stddef_max_align_t.h", directory: "/home/cs22mtech12008", checksumkind: CSK_MD5, checksum: "48e8e2456f77e6cda35d245130fa7259")
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !748, line: 19, size: 256, flags: DIFlagTypePassByValue, elements: !750, identifier: "_ZTS11max_align_t")
!750 = !{!751, !752}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "__clang_max_align_nonce1", scope: !749, file: !748, line: 20, baseType: !315, size: 64, align: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "__clang_max_align_nonce2", scope: !749, file: !748, line: 22, baseType: !310, size: 128, align: 128, offset: 128)
!753 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cstddef", directory: "")
!754 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !755, file: !761, line: 82)
!755 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctrans_t", file: !756, line: 48, baseType: !757)
!756 = !DIFile(filename: "/usr/include/wctype.h", directory: "", checksumkind: CSK_MD5, checksum: "e83097fbf57cc71ea472db59df3ba75d")
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !759)
!759 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !760, line: 41, baseType: !26)
!760 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!761 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cwctype", directory: "")
!762 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !763, file: !761, line: 83)
!763 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctype_t", file: !764, line: 38, baseType: !32)
!764 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "3598b9d23ef5d76319026b46e316b55f")
!765 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !63, file: !761, line: 84)
!766 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !767, file: !761, line: 86)
!767 = !DISubprogram(name: "iswalnum", scope: !764, file: !764, line: 95, type: !269, flags: DIFlagPrototyped, spFlags: 0)
!768 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !769, file: !761, line: 87)
!769 = !DISubprogram(name: "iswalpha", scope: !764, file: !764, line: 101, type: !269, flags: DIFlagPrototyped, spFlags: 0)
!770 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !771, file: !761, line: 89)
!771 = !DISubprogram(name: "iswblank", scope: !764, file: !764, line: 146, type: !269, flags: DIFlagPrototyped, spFlags: 0)
!772 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !773, file: !761, line: 91)
!773 = !DISubprogram(name: "iswcntrl", scope: !764, file: !764, line: 104, type: !269, flags: DIFlagPrototyped, spFlags: 0)
!774 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !775, file: !761, line: 92)
!775 = !DISubprogram(name: "iswctype", scope: !764, file: !764, line: 159, type: !776, flags: DIFlagPrototyped, spFlags: 0)
!776 = !DISubroutineType(types: !777)
!777 = !{!26, !63, !763}
!778 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !779, file: !761, line: 93)
!779 = !DISubprogram(name: "iswdigit", scope: !764, file: !764, line: 108, type: !269, flags: DIFlagPrototyped, spFlags: 0)
!780 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !781, file: !761, line: 94)
!781 = !DISubprogram(name: "iswgraph", scope: !764, file: !764, line: 112, type: !269, flags: DIFlagPrototyped, spFlags: 0)
!782 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !783, file: !761, line: 95)
!783 = !DISubprogram(name: "iswlower", scope: !764, file: !764, line: 117, type: !269, flags: DIFlagPrototyped, spFlags: 0)
!784 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !785, file: !761, line: 96)
!785 = !DISubprogram(name: "iswprint", scope: !764, file: !764, line: 120, type: !269, flags: DIFlagPrototyped, spFlags: 0)
!786 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !787, file: !761, line: 97)
!787 = !DISubprogram(name: "iswpunct", scope: !764, file: !764, line: 125, type: !269, flags: DIFlagPrototyped, spFlags: 0)
!788 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !789, file: !761, line: 98)
!789 = !DISubprogram(name: "iswspace", scope: !764, file: !764, line: 130, type: !269, flags: DIFlagPrototyped, spFlags: 0)
!790 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !791, file: !761, line: 99)
!791 = !DISubprogram(name: "iswupper", scope: !764, file: !764, line: 135, type: !269, flags: DIFlagPrototyped, spFlags: 0)
!792 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !793, file: !761, line: 100)
!793 = !DISubprogram(name: "iswxdigit", scope: !764, file: !764, line: 140, type: !269, flags: DIFlagPrototyped, spFlags: 0)
!794 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !795, file: !761, line: 101)
!795 = !DISubprogram(name: "towctrans", scope: !756, file: !756, line: 55, type: !796, flags: DIFlagPrototyped, spFlags: 0)
!796 = !DISubroutineType(types: !797)
!797 = !{!63, !63, !755}
!798 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !799, file: !761, line: 102)
!799 = !DISubprogram(name: "towlower", scope: !764, file: !764, line: 166, type: !800, flags: DIFlagPrototyped, spFlags: 0)
!800 = !DISubroutineType(types: !801)
!801 = !{!63, !63}
!802 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !803, file: !761, line: 103)
!803 = !DISubprogram(name: "towupper", scope: !764, file: !764, line: 169, type: !800, flags: DIFlagPrototyped, spFlags: 0)
!804 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !805, file: !761, line: 104)
!805 = !DISubprogram(name: "wctrans", scope: !756, file: !756, line: 52, type: !806, flags: DIFlagPrototyped, spFlags: 0)
!806 = !DISubroutineType(types: !807)
!807 = !{!755, !120}
!808 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !44, entity: !809, file: !761, line: 105)
!809 = !DISubprogram(name: "wctype", scope: !764, file: !764, line: 155, type: !810, flags: DIFlagPrototyped, spFlags: 0)
!810 = !DISubroutineType(types: !811)
!811 = !{!763, !120}
!812 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !22, entity: !44, file: !2, line: 8)
!813 = !{i32 7, !"Dwarf Version", i32 5}
!814 = !{i32 2, !"Debug Info Version", i32 3}
!815 = !{i32 1, !"wchar_size", i32 4}
!816 = !{i32 8, !"PIC Level", i32 2}
!817 = !{i32 7, !"PIE Level", i32 2}
!818 = !{i32 7, !"uwtable", i32 2}
!819 = !{i32 7, !"frame-pointer", i32 2}
!820 = !{!"clang version 16.0.0"}
!821 = distinct !DISubprogram(name: "runLocalThread1", linkageName: "_Z15runLocalThread1Pv", scope: !2, file: !2, line: 10, type: !822, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !824)
!822 = !DISubroutineType(types: !823)
!823 = !{!168, !168}
!824 = !{}
!825 = !DILocalVariable(name: "arg", arg: 1, scope: !821, file: !2, line: 10, type: !168)
!826 = !DILocation(line: 10, column: 29, scope: !821)
!827 = !DILocalVariable(name: "x", scope: !821, file: !2, line: 12, type: !25)
!828 = !DILocation(line: 12, column: 10, scope: !821)
!829 = !DILocation(line: 12, column: 32, scope: !821)
!830 = !DILocation(line: 13, column: 5, scope: !821)
!831 = !DILocation(line: 14, column: 10, scope: !821)
!832 = !DILocation(line: 14, column: 45, scope: !821)
!833 = !DILocation(line: 14, column: 44, scope: !821)
!834 = !DILocation(line: 14, column: 41, scope: !821)
!835 = !DILocation(line: 14, column: 47, scope: !821)
!836 = !DILocation(line: 15, column: 5, scope: !821)
!837 = distinct !DISubprogram(name: "runLocalThread2", linkageName: "_Z15runLocalThread2Pv", scope: !2, file: !2, line: 18, type: !822, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !824)
!838 = !DILocalVariable(name: "arg", arg: 1, scope: !837, file: !2, line: 18, type: !168)
!839 = !DILocation(line: 18, column: 29, scope: !837)
!840 = !DILocalVariable(name: "x", scope: !837, file: !2, line: 20, type: !25)
!841 = !DILocation(line: 20, column: 10, scope: !837)
!842 = !DILocation(line: 20, column: 32, scope: !837)
!843 = !DILocation(line: 21, column: 5, scope: !837)
!844 = !DILocation(line: 22, column: 10, scope: !837)
!845 = !DILocation(line: 22, column: 45, scope: !837)
!846 = !DILocation(line: 22, column: 44, scope: !837)
!847 = !DILocation(line: 22, column: 41, scope: !837)
!848 = !DILocation(line: 22, column: 47, scope: !837)
!849 = !DILocation(line: 23, column: 5, scope: !837)
!850 = distinct !DISubprogram(name: "runLocalThread3", linkageName: "_Z15runLocalThread3Pv", scope: !2, file: !2, line: 26, type: !822, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !824)
!851 = !DILocalVariable(name: "arg", arg: 1, scope: !850, file: !2, line: 26, type: !168)
!852 = !DILocation(line: 26, column: 29, scope: !850)
!853 = !DILocalVariable(name: "x", scope: !850, file: !2, line: 28, type: !25)
!854 = !DILocation(line: 28, column: 10, scope: !850)
!855 = !DILocation(line: 28, column: 32, scope: !850)
!856 = !DILocation(line: 29, column: 5, scope: !850)
!857 = !DILocation(line: 30, column: 10, scope: !850)
!858 = !DILocation(line: 30, column: 45, scope: !850)
!859 = !DILocation(line: 30, column: 44, scope: !850)
!860 = !DILocation(line: 30, column: 41, scope: !850)
!861 = !DILocation(line: 30, column: 47, scope: !850)
!862 = !DILocation(line: 31, column: 5, scope: !850)
!863 = distinct !DISubprogram(name: "runLocalThread4", linkageName: "_Z15runLocalThread4Pv", scope: !2, file: !2, line: 34, type: !822, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !824)
!864 = !DILocalVariable(name: "arg", arg: 1, scope: !863, file: !2, line: 34, type: !168)
!865 = !DILocation(line: 34, column: 29, scope: !863)
!866 = !DILocalVariable(name: "x", scope: !863, file: !2, line: 36, type: !25)
!867 = !DILocation(line: 36, column: 10, scope: !863)
!868 = !DILocation(line: 36, column: 32, scope: !863)
!869 = !DILocation(line: 37, column: 5, scope: !863)
!870 = !DILocation(line: 38, column: 10, scope: !863)
!871 = !DILocation(line: 38, column: 45, scope: !863)
!872 = !DILocation(line: 38, column: 44, scope: !863)
!873 = !DILocation(line: 38, column: 41, scope: !863)
!874 = !DILocation(line: 38, column: 47, scope: !863)
!875 = !DILocation(line: 39, column: 5, scope: !863)
!876 = distinct !DISubprogram(name: "runLocalThread5", linkageName: "_Z15runLocalThread5Pv", scope: !2, file: !2, line: 42, type: !822, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !824)
!877 = !DILocalVariable(name: "arg", arg: 1, scope: !876, file: !2, line: 42, type: !168)
!878 = !DILocation(line: 42, column: 29, scope: !876)
!879 = !DILocalVariable(name: "x", scope: !876, file: !2, line: 44, type: !25)
!880 = !DILocation(line: 44, column: 10, scope: !876)
!881 = !DILocation(line: 44, column: 32, scope: !876)
!882 = !DILocation(line: 45, column: 5, scope: !876)
!883 = !DILocation(line: 46, column: 10, scope: !876)
!884 = !DILocation(line: 46, column: 45, scope: !876)
!885 = !DILocation(line: 46, column: 44, scope: !876)
!886 = !DILocation(line: 46, column: 41, scope: !876)
!887 = !DILocation(line: 46, column: 47, scope: !876)
!888 = !DILocation(line: 47, column: 5, scope: !876)
!889 = distinct !DISubprogram(name: "runLocalThread6", linkageName: "_Z15runLocalThread6Pv", scope: !2, file: !2, line: 50, type: !822, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !824)
!890 = !DILocalVariable(name: "arg", arg: 1, scope: !889, file: !2, line: 50, type: !168)
!891 = !DILocation(line: 50, column: 29, scope: !889)
!892 = !DILocalVariable(name: "x", scope: !889, file: !2, line: 52, type: !25)
!893 = !DILocation(line: 52, column: 10, scope: !889)
!894 = !DILocation(line: 52, column: 32, scope: !889)
!895 = !DILocation(line: 53, column: 5, scope: !889)
!896 = !DILocation(line: 54, column: 10, scope: !889)
!897 = !DILocation(line: 54, column: 45, scope: !889)
!898 = !DILocation(line: 54, column: 44, scope: !889)
!899 = !DILocation(line: 54, column: 41, scope: !889)
!900 = !DILocation(line: 54, column: 47, scope: !889)
!901 = !DILocation(line: 55, column: 5, scope: !889)
!902 = distinct !DISubprogram(name: "runLocalThread7", linkageName: "_Z15runLocalThread7Pv", scope: !2, file: !2, line: 58, type: !822, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !824)
!903 = !DILocalVariable(name: "arg", arg: 1, scope: !902, file: !2, line: 58, type: !168)
!904 = !DILocation(line: 58, column: 29, scope: !902)
!905 = !DILocalVariable(name: "x", scope: !902, file: !2, line: 60, type: !25)
!906 = !DILocation(line: 60, column: 10, scope: !902)
!907 = !DILocation(line: 60, column: 32, scope: !902)
!908 = !DILocation(line: 61, column: 5, scope: !902)
!909 = !DILocation(line: 62, column: 10, scope: !902)
!910 = !DILocation(line: 62, column: 45, scope: !902)
!911 = !DILocation(line: 62, column: 44, scope: !902)
!912 = !DILocation(line: 62, column: 41, scope: !902)
!913 = !DILocation(line: 62, column: 47, scope: !902)
!914 = !DILocation(line: 63, column: 5, scope: !902)
!915 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 71, type: !494, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !824)
!916 = !DILocalVariable(name: "i", scope: !915, file: !2, line: 73, type: !26)
!917 = !DILocation(line: 73, column: 9, scope: !915)
!918 = !DILocation(line: 74, column: 8, scope: !919)
!919 = distinct !DILexicalBlock(scope: !915, file: !2, line: 74, column: 8)
!920 = !DILocation(line: 74, column: 9, scope: !919)
!921 = !DILocation(line: 74, column: 8, scope: !915)
!922 = !DILocalVariable(name: "s1_var", scope: !923, file: !2, line: 76, type: !26)
!923 = distinct !DILexicalBlock(scope: !919, file: !2, line: 75, column: 5)
!924 = !DILocation(line: 76, column: 13, scope: !923)
!925 = !DILocation(line: 77, column: 9, scope: !923)
!926 = !DILocation(line: 79, column: 12, scope: !927)
!927 = distinct !DILexicalBlock(scope: !923, file: !2, line: 79, column: 12)
!928 = !DILocation(line: 79, column: 13, scope: !927)
!929 = !DILocation(line: 79, column: 12, scope: !923)
!930 = !DILocalVariable(name: "s2_var", scope: !931, file: !2, line: 82, type: !26)
!931 = distinct !DILexicalBlock(scope: !927, file: !2, line: 81, column: 9)
!932 = !DILocation(line: 82, column: 17, scope: !931)
!933 = !DILocation(line: 83, column: 13, scope: !931)
!934 = !DILocation(line: 84, column: 16, scope: !935)
!935 = distinct !DILexicalBlock(scope: !931, file: !2, line: 84, column: 16)
!936 = !DILocation(line: 84, column: 17, scope: !935)
!937 = !DILocation(line: 84, column: 16, scope: !931)
!938 = !DILocalVariable(name: "s3_var", scope: !939, file: !2, line: 86, type: !26)
!939 = distinct !DILexicalBlock(scope: !935, file: !2, line: 85, column: 13)
!940 = !DILocation(line: 86, column: 21, scope: !939)
!941 = !DILocation(line: 87, column: 17, scope: !939)
!942 = !DILocation(line: 88, column: 20, scope: !943)
!943 = distinct !DILexicalBlock(scope: !939, file: !2, line: 88, column: 20)
!944 = !DILocation(line: 88, column: 21, scope: !943)
!945 = !DILocation(line: 88, column: 20, scope: !939)
!946 = !DILocalVariable(name: "sn_var", scope: !947, file: !2, line: 91, type: !26)
!947 = distinct !DILexicalBlock(scope: !943, file: !2, line: 89, column: 17)
!948 = !DILocation(line: 91, column: 29, scope: !947)
!949 = !DILocation(line: 92, column: 25, scope: !947)
!950 = !DILocation(line: 94, column: 17, scope: !947)
!951 = !DILocation(line: 95, column: 13, scope: !939)
!952 = !DILocation(line: 96, column: 9, scope: !931)
!953 = !DILocation(line: 97, column: 5, scope: !923)
!954 = !DILocation(line: 98, column: 9, scope: !915)
!955 = !DILocation(line: 98, column: 29, scope: !915)
!956 = !DILocation(line: 100, column: 18, scope: !915)
!957 = !DILocation(line: 100, column: 5, scope: !915)
!958 = !DILocation(line: 101, column: 18, scope: !915)
!959 = !DILocation(line: 101, column: 5, scope: !915)
!960 = !DILocation(line: 102, column: 18, scope: !915)
!961 = !DILocation(line: 102, column: 5, scope: !915)
!962 = !DILocation(line: 103, column: 18, scope: !915)
!963 = !DILocation(line: 103, column: 5, scope: !915)
!964 = !DILocation(line: 105, column: 5, scope: !915)
