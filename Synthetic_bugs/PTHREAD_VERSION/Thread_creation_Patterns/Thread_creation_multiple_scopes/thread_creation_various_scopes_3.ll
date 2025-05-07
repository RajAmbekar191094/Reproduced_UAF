; ModuleID = '/home/cs22mtech12008/Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Thread_creation_Patterns/Thread_creation_multiple_scopes/thread_creation_various_scopes_3.cpp'
source_filename = "/home/cs22mtech12008/Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Thread_creation_Patterns/Thread_creation_multiple_scopes/thread_creation_various_scopes_3.cpp"
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

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef ptr @_Z15runLocalThread1Pv(ptr noundef %0) #0 !dbg !816 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !820, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.declare(metadata ptr %3, metadata !822, metadata !DIExpression()), !dbg !823
  %4 = load ptr, ptr %2, align 8, !dbg !824
  store ptr %4, ptr %3, align 8, !dbg !823
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str), !dbg !825
  %6 = load ptr, ptr %3, align 8, !dbg !826
  %7 = load i32, ptr %6, align 4, !dbg !827
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %7), !dbg !828
  %9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !829
  ret ptr null, !dbg !830
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #2

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef ptr @_Z15runLocalThread2Pv(ptr noundef %0) #0 !dbg !831 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !832, metadata !DIExpression()), !dbg !833
  call void @llvm.dbg.declare(metadata ptr %3, metadata !834, metadata !DIExpression()), !dbg !835
  %4 = load ptr, ptr %2, align 8, !dbg !836
  store ptr %4, ptr %3, align 8, !dbg !835
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.1), !dbg !837
  %6 = load ptr, ptr %3, align 8, !dbg !838
  %7 = load i32, ptr %6, align 4, !dbg !839
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %7), !dbg !840
  %9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !841
  ret ptr null, !dbg !842
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef ptr @_Z15runLocalThread3Pv(ptr noundef %0) #0 !dbg !843 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !844, metadata !DIExpression()), !dbg !845
  call void @llvm.dbg.declare(metadata ptr %3, metadata !846, metadata !DIExpression()), !dbg !847
  %4 = load ptr, ptr %2, align 8, !dbg !848
  store ptr %4, ptr %3, align 8, !dbg !847
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.2), !dbg !849
  %6 = load ptr, ptr %3, align 8, !dbg !850
  %7 = load i32, ptr %6, align 4, !dbg !851
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %7), !dbg !852
  %9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !853
  ret ptr null, !dbg !854
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef ptr @_Z15runLocalThread4Pv(ptr noundef %0) #0 !dbg !855 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !856, metadata !DIExpression()), !dbg !857
  call void @llvm.dbg.declare(metadata ptr %3, metadata !858, metadata !DIExpression()), !dbg !859
  %4 = load ptr, ptr %2, align 8, !dbg !860
  store ptr %4, ptr %3, align 8, !dbg !859
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.3), !dbg !861
  %6 = load ptr, ptr %3, align 8, !dbg !862
  %7 = load i32, ptr %6, align 4, !dbg !863
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %7), !dbg !864
  %9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !865
  ret ptr null, !dbg !866
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef ptr @_Z15runLocalThread5Pv(ptr noundef %0) #0 !dbg !867 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !868, metadata !DIExpression()), !dbg !869
  call void @llvm.dbg.declare(metadata ptr %3, metadata !870, metadata !DIExpression()), !dbg !871
  %4 = load ptr, ptr %2, align 8, !dbg !872
  store ptr %4, ptr %3, align 8, !dbg !871
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.4), !dbg !873
  %6 = load ptr, ptr %3, align 8, !dbg !874
  %7 = load i32, ptr %6, align 4, !dbg !875
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %7), !dbg !876
  %9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !877
  ret ptr null, !dbg !878
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef ptr @_Z15runLocalThread6Pv(ptr noundef %0) #0 !dbg !879 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !880, metadata !DIExpression()), !dbg !881
  call void @llvm.dbg.declare(metadata ptr %3, metadata !882, metadata !DIExpression()), !dbg !883
  %4 = load ptr, ptr %2, align 8, !dbg !884
  store ptr %4, ptr %3, align 8, !dbg !883
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.5), !dbg !885
  %6 = load ptr, ptr %3, align 8, !dbg !886
  %7 = load i32, ptr %6, align 4, !dbg !887
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %7), !dbg !888
  %9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !889
  ret ptr null, !dbg !890
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef ptr @_Z15runLocalThread7Pv(ptr noundef %0) #0 !dbg !891 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !892, metadata !DIExpression()), !dbg !893
  call void @llvm.dbg.declare(metadata ptr %3, metadata !894, metadata !DIExpression()), !dbg !895
  %4 = load ptr, ptr %2, align 8, !dbg !896
  store ptr %4, ptr %3, align 8, !dbg !895
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str.6), !dbg !897
  %6 = load ptr, ptr %3, align 8, !dbg !898
  %7 = load i32, ptr %6, align 4, !dbg !899
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %7), !dbg !900
  %9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !901
  ret ptr null, !dbg !902
}

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main() #3 !dbg !903 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !904, metadata !DIExpression()), !dbg !905
  store i32 10, ptr %2, align 4, !dbg !905
  %7 = load i32, ptr %2, align 4, !dbg !906
  %8 = icmp eq i32 %7, 10, !dbg !908
  br i1 %8, label %9, label %26, !dbg !909

9:                                                ; preds = %0
  call void @llvm.dbg.declare(metadata ptr %3, metadata !910, metadata !DIExpression()), !dbg !912
  store i32 1, ptr %3, align 4, !dbg !912
  %10 = call i32 @pthread_create(ptr noundef @scope_1, ptr noundef null, ptr noundef @_Z15runLocalThread1Pv, ptr noundef %3) #5, !dbg !913
  %11 = load i32, ptr %2, align 4, !dbg !914
  %12 = icmp eq i32 %11, 100, !dbg !916
  br i1 %12, label %13, label %25, !dbg !917

13:                                               ; preds = %9
  call void @llvm.dbg.declare(metadata ptr %4, metadata !918, metadata !DIExpression()), !dbg !920
  store i32 2, ptr %4, align 4, !dbg !920
  %14 = call i32 @pthread_create(ptr noundef @scope_2, ptr noundef null, ptr noundef @_Z15runLocalThread2Pv, ptr noundef %4) #5, !dbg !921
  %15 = load i32, ptr %2, align 4, !dbg !922
  %16 = icmp eq i32 %15, 1000, !dbg !924
  br i1 %16, label %17, label %24, !dbg !925

17:                                               ; preds = %13
  call void @llvm.dbg.declare(metadata ptr %5, metadata !926, metadata !DIExpression()), !dbg !928
  store i32 3, ptr %5, align 4, !dbg !928
  %18 = call i32 @pthread_create(ptr noundef @scope_3, ptr noundef null, ptr noundef @_Z15runLocalThread3Pv, ptr noundef %5) #5, !dbg !929
  %19 = load i32, ptr %2, align 4, !dbg !930
  %20 = icmp eq i32 %19, 10000, !dbg !932
  br i1 %20, label %21, label %23, !dbg !933

21:                                               ; preds = %17
  call void @llvm.dbg.declare(metadata ptr %6, metadata !934, metadata !DIExpression()), !dbg !936
  store i32 4, ptr %6, align 4, !dbg !936
  %22 = call i32 @pthread_create(ptr noundef @scope_n, ptr noundef null, ptr noundef @_Z15runLocalThread4Pv, ptr noundef %6) #5, !dbg !937
  br label %23, !dbg !938

23:                                               ; preds = %21, %17
  br label %24, !dbg !939

24:                                               ; preds = %23, %13
  br label %25, !dbg !940

25:                                               ; preds = %24, %9
  br label %26, !dbg !941

26:                                               ; preds = %25, %0
  %27 = load i64, ptr @scope_1, align 8, !dbg !942
  %28 = call i32 @pthread_join(i64 noundef %27, ptr noundef null), !dbg !943
  %29 = load i64, ptr @scope_2, align 8, !dbg !944
  %30 = call i32 @pthread_join(i64 noundef %29, ptr noundef null), !dbg !945
  %31 = load i64, ptr @scope_3, align 8, !dbg !946
  %32 = call i32 @pthread_join(i64 noundef %31, ptr noundef null), !dbg !947
  %33 = load i64, ptr @scope_n, align 8, !dbg !948
  %34 = call i32 @pthread_join(i64 noundef %33, ptr noundef null), !dbg !949
  ret i32 0, !dbg !950
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
!llvm.module.flags = !{!808, !809, !810, !811, !812, !813, !814}
!llvm.ident = !{!815}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 12, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Thread_creation_Patterns/Thread_creation_multiple_scopes/thread_creation_various_scopes_3.cpp", directory: "/home/cs22mtech12008", checksumkind: CSK_MD5, checksum: "9877c0988b265cae87c08d5999237cb2")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !6)
!4 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !{!7}
!7 = !DISubrange(count: 26)
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(scope: null, file: !2, line: 19, type: !3, isLocal: true, isDefinition: true)
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression())
!11 = distinct !DIGlobalVariable(scope: null, file: !2, line: 26, type: !3, isLocal: true, isDefinition: true)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 33, type: !3, isLocal: true, isDefinition: true)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(scope: null, file: !2, line: 40, type: !3, isLocal: true, isDefinition: true)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(scope: null, file: !2, line: 47, type: !3, isLocal: true, isDefinition: true)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(scope: null, file: !2, line: 54, type: !3, isLocal: true, isDefinition: true)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(name: "scope_1", scope: !22, file: !2, line: 58, type: !30, isLocal: false, isDefinition: true)
!22 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !23, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !24, globals: !27, imports: !37, splitDebugInlining: false, nameTableKind: None)
!23 = !DIFile(filename: "/home/cs22mtech12008/Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Thread_creation_Patterns/Thread_creation_multiple_scopes/thread_creation_various_scopes_3.cpp", directory: "/home/cs22mtech12008/UseAfterScope/Scripts", checksumkind: CSK_MD5, checksum: "9877c0988b265cae87c08d5999237cb2")
!24 = !{!25}
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!27 = !{!0, !8, !10, !12, !14, !16, !18, !20, !28, !33, !35}
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(name: "scope_2", scope: !22, file: !2, line: 59, type: !30, isLocal: false, isDefinition: true)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !31, line: 27, baseType: !32)
!31 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "2d764266ce95ab26d4a4767c2ec78176")
!32 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(name: "scope_3", scope: !22, file: !2, line: 60, type: !30, isLocal: false, isDefinition: true)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(name: "scope_n", scope: !22, file: !2, line: 61, type: !30, isLocal: false, isDefinition: true)
!37 = !{!38, !57, !60, !65, !73, !81, !85, !92, !96, !100, !102, !104, !108, !118, !122, !128, !134, !136, !140, !144, !148, !152, !165, !167, !171, !175, !179, !181, !187, !191, !195, !197, !199, !203, !211, !215, !219, !223, !225, !231, !233, !240, !245, !249, !254, !258, !262, !266, !268, !270, !274, !278, !282, !284, !288, !292, !294, !296, !300, !306, !311, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !330, !334, !339, !343, !347, !352, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !388, !392, !396, !402, !406, !410, !415, !417, !421, !425, !429, !439, !441, !445, !449, !453, !457, !461, !465, !469, !473, !477, !481, !485, !487, !491, !495, !499, !505, !509, !513, !515, !519, !523, !529, !531, !535, !539, !543, !547, !551, !555, !559, !560, !561, !562, !564, !565, !566, !567, !568, !569, !570, !574, !580, !585, !589, !591, !593, !595, !597, !604, !608, !612, !616, !620, !624, !629, !633, !635, !639, !645, !649, !654, !656, !658, !662, !666, !668, !670, !672, !674, !678, !680, !682, !686, !690, !694, !698, !702, !706, !708, !712, !716, !720, !724, !726, !728, !732, !736, !737, !738, !739, !740, !741, !749, !757, !760, !761, !763, !765, !767, !769, !773, !775, !777, !779, !781, !783, !785, !787, !789, !793, !797, !799, !803, !807}
!38 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !40, file: !56, line: 64)
!39 = !DINamespace(name: "std", scope: null)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !41, line: 6, baseType: !42)
!41 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !43, line: 21, baseType: !44)
!43 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !43, line: 13, size: 64, flags: DIFlagTypePassByValue, elements: !45, identifier: "_ZTS11__mbstate_t")
!45 = !{!46, !47}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !44, file: !43, line: 15, baseType: !26, size: 32)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !44, file: !43, line: 20, baseType: !48, size: 32, offset: 32)
!48 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !44, file: !43, line: 16, size: 32, flags: DIFlagTypePassByValue, elements: !49, identifier: "_ZTSN11__mbstate_tUt_E")
!49 = !{!50, !52}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !48, file: !43, line: 18, baseType: !51, size: 32)
!51 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !48, file: !43, line: 19, baseType: !53, size: 32)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 32, elements: !54)
!54 = !{!55}
!55 = !DISubrange(count: 4)
!56 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cwchar", directory: "")
!57 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !58, file: !56, line: 141)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !59, line: 20, baseType: !51)
!59 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!60 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !61, file: !56, line: 143)
!61 = !DISubprogram(name: "btowc", scope: !62, file: !62, line: 284, type: !63, flags: DIFlagPrototyped, spFlags: 0)
!62 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "8900d9ecbbe40d052c41becfbc5b5531")
!63 = !DISubroutineType(types: !64)
!64 = !{!58, !26}
!65 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !66, file: !56, line: 144)
!66 = !DISubprogram(name: "fgetwc", scope: !62, file: !62, line: 726, type: !67, flags: DIFlagPrototyped, spFlags: 0)
!67 = !DISubroutineType(types: !68)
!68 = !{!58, !69}
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !71, line: 5, baseType: !72)
!71 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "72a8fe90981f484acae7c6f3dfc5c2b7")
!72 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !71, line: 4, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS8_IO_FILE")
!73 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !74, file: !56, line: 145)
!74 = !DISubprogram(name: "fgetws", scope: !62, file: !62, line: 755, type: !75, flags: DIFlagPrototyped, spFlags: 0)
!75 = !DISubroutineType(types: !76)
!76 = !{!77, !79, !26, !80}
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!79 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !77)
!80 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !69)
!81 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !82, file: !56, line: 146)
!82 = !DISubprogram(name: "fputwc", scope: !62, file: !62, line: 740, type: !83, flags: DIFlagPrototyped, spFlags: 0)
!83 = !DISubroutineType(types: !84)
!84 = !{!58, !78, !69}
!85 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !86, file: !56, line: 147)
!86 = !DISubprogram(name: "fputws", scope: !62, file: !62, line: 762, type: !87, flags: DIFlagPrototyped, spFlags: 0)
!87 = !DISubroutineType(types: !88)
!88 = !{!26, !89, !80}
!89 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !90)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!92 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !93, file: !56, line: 148)
!93 = !DISubprogram(name: "fwide", scope: !62, file: !62, line: 573, type: !94, flags: DIFlagPrototyped, spFlags: 0)
!94 = !DISubroutineType(types: !95)
!95 = !{!26, !69, !26}
!96 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !97, file: !56, line: 149)
!97 = !DISubprogram(name: "fwprintf", scope: !62, file: !62, line: 580, type: !98, flags: DIFlagPrototyped, spFlags: 0)
!98 = !DISubroutineType(types: !99)
!99 = !{!26, !80, !89, null}
!100 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !101, file: !56, line: 150)
!101 = !DISubprogram(name: "fwscanf", linkageName: "__isoc99_fwscanf", scope: !62, file: !62, line: 640, type: !98, flags: DIFlagPrototyped, spFlags: 0)
!102 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !103, file: !56, line: 151)
!103 = !DISubprogram(name: "getwc", scope: !62, file: !62, line: 727, type: !67, flags: DIFlagPrototyped, spFlags: 0)
!104 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !105, file: !56, line: 152)
!105 = !DISubprogram(name: "getwchar", scope: !62, file: !62, line: 733, type: !106, flags: DIFlagPrototyped, spFlags: 0)
!106 = !DISubroutineType(types: !107)
!107 = !{!58}
!108 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !109, file: !56, line: 153)
!109 = !DISubprogram(name: "mbrlen", scope: !62, file: !62, line: 307, type: !110, flags: DIFlagPrototyped, spFlags: 0)
!110 = !DISubroutineType(types: !111)
!111 = !{!112, !114, !112, !116}
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !113, line: 46, baseType: !32)
!113 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/cs22mtech12008", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!114 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !117)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!118 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !119, file: !56, line: 154)
!119 = !DISubprogram(name: "mbrtowc", scope: !62, file: !62, line: 296, type: !120, flags: DIFlagPrototyped, spFlags: 0)
!120 = !DISubroutineType(types: !121)
!121 = !{!112, !79, !114, !112, !116}
!122 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !123, file: !56, line: 155)
!123 = !DISubprogram(name: "mbsinit", scope: !62, file: !62, line: 292, type: !124, flags: DIFlagPrototyped, spFlags: 0)
!124 = !DISubroutineType(types: !125)
!125 = !{!26, !126}
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!128 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !129, file: !56, line: 156)
!129 = !DISubprogram(name: "mbsrtowcs", scope: !62, file: !62, line: 337, type: !130, flags: DIFlagPrototyped, spFlags: 0)
!130 = !DISubroutineType(types: !131)
!131 = !{!112, !79, !132, !112, !116}
!132 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !133)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!134 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !135, file: !56, line: 157)
!135 = !DISubprogram(name: "putwc", scope: !62, file: !62, line: 741, type: !83, flags: DIFlagPrototyped, spFlags: 0)
!136 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !137, file: !56, line: 158)
!137 = !DISubprogram(name: "putwchar", scope: !62, file: !62, line: 747, type: !138, flags: DIFlagPrototyped, spFlags: 0)
!138 = !DISubroutineType(types: !139)
!139 = !{!58, !78}
!140 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !141, file: !56, line: 160)
!141 = !DISubprogram(name: "swprintf", scope: !62, file: !62, line: 590, type: !142, flags: DIFlagPrototyped, spFlags: 0)
!142 = !DISubroutineType(types: !143)
!143 = !{!26, !79, !112, !89, null}
!144 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !145, file: !56, line: 162)
!145 = !DISubprogram(name: "swscanf", linkageName: "__isoc99_swscanf", scope: !62, file: !62, line: 647, type: !146, flags: DIFlagPrototyped, spFlags: 0)
!146 = !DISubroutineType(types: !147)
!147 = !{!26, !89, !89, null}
!148 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !149, file: !56, line: 163)
!149 = !DISubprogram(name: "ungetwc", scope: !62, file: !62, line: 770, type: !150, flags: DIFlagPrototyped, spFlags: 0)
!150 = !DISubroutineType(types: !151)
!151 = !{!58, !58, !69}
!152 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !153, file: !56, line: 164)
!153 = !DISubprogram(name: "vfwprintf", scope: !62, file: !62, line: 598, type: !154, flags: DIFlagPrototyped, spFlags: 0)
!154 = !DISubroutineType(types: !155)
!155 = !{!26, !80, !89, !156}
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, flags: DIFlagTypePassByValue, elements: !158, identifier: "_ZTS13__va_list_tag")
!158 = !{!159, !161, !162, !164}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !157, file: !160, baseType: !51, size: 32)
!160 = !DIFile(filename: "Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Thread_creation_Patterns/Thread_creation_multiple_scopes/thread_creation_various_scopes_3.cpp", directory: "/home/cs22mtech12008")
!161 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !157, file: !160, baseType: !51, size: 32, offset: 32)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !157, file: !160, baseType: !163, size: 64, offset: 64)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !157, file: !160, baseType: !163, size: 64, offset: 128)
!165 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !166, file: !56, line: 166)
!166 = !DISubprogram(name: "vfwscanf", linkageName: "__isoc99_vfwscanf", scope: !62, file: !62, line: 693, type: !154, flags: DIFlagPrototyped, spFlags: 0)
!167 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !168, file: !56, line: 169)
!168 = !DISubprogram(name: "vswprintf", scope: !62, file: !62, line: 611, type: !169, flags: DIFlagPrototyped, spFlags: 0)
!169 = !DISubroutineType(types: !170)
!170 = !{!26, !79, !112, !89, !156}
!171 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !172, file: !56, line: 172)
!172 = !DISubprogram(name: "vswscanf", linkageName: "__isoc99_vswscanf", scope: !62, file: !62, line: 700, type: !173, flags: DIFlagPrototyped, spFlags: 0)
!173 = !DISubroutineType(types: !174)
!174 = !{!26, !89, !89, !156}
!175 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !176, file: !56, line: 174)
!176 = !DISubprogram(name: "vwprintf", scope: !62, file: !62, line: 606, type: !177, flags: DIFlagPrototyped, spFlags: 0)
!177 = !DISubroutineType(types: !178)
!178 = !{!26, !89, !156}
!179 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !180, file: !56, line: 176)
!180 = !DISubprogram(name: "vwscanf", linkageName: "__isoc99_vwscanf", scope: !62, file: !62, line: 697, type: !177, flags: DIFlagPrototyped, spFlags: 0)
!181 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !182, file: !56, line: 178)
!182 = !DISubprogram(name: "wcrtomb", scope: !62, file: !62, line: 301, type: !183, flags: DIFlagPrototyped, spFlags: 0)
!183 = !DISubroutineType(types: !184)
!184 = !{!112, !185, !78, !116}
!185 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !186)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!187 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !188, file: !56, line: 179)
!188 = !DISubprogram(name: "wcscat", scope: !62, file: !62, line: 97, type: !189, flags: DIFlagPrototyped, spFlags: 0)
!189 = !DISubroutineType(types: !190)
!190 = !{!77, !79, !89}
!191 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !192, file: !56, line: 180)
!192 = !DISubprogram(name: "wcscmp", scope: !62, file: !62, line: 106, type: !193, flags: DIFlagPrototyped, spFlags: 0)
!193 = !DISubroutineType(types: !194)
!194 = !{!26, !90, !90}
!195 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !196, file: !56, line: 181)
!196 = !DISubprogram(name: "wcscoll", scope: !62, file: !62, line: 131, type: !193, flags: DIFlagPrototyped, spFlags: 0)
!197 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !198, file: !56, line: 182)
!198 = !DISubprogram(name: "wcscpy", scope: !62, file: !62, line: 87, type: !189, flags: DIFlagPrototyped, spFlags: 0)
!199 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !200, file: !56, line: 183)
!200 = !DISubprogram(name: "wcscspn", scope: !62, file: !62, line: 187, type: !201, flags: DIFlagPrototyped, spFlags: 0)
!201 = !DISubroutineType(types: !202)
!202 = !{!112, !90, !90}
!203 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !204, file: !56, line: 184)
!204 = !DISubprogram(name: "wcsftime", scope: !62, file: !62, line: 834, type: !205, flags: DIFlagPrototyped, spFlags: 0)
!205 = !DISubroutineType(types: !206)
!206 = !{!112, !79, !112, !89, !207}
!207 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !208)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !210)
!210 = !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !62, line: 83, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS2tm")
!211 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !212, file: !56, line: 185)
!212 = !DISubprogram(name: "wcslen", scope: !62, file: !62, line: 222, type: !213, flags: DIFlagPrototyped, spFlags: 0)
!213 = !DISubroutineType(types: !214)
!214 = !{!112, !90}
!215 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !216, file: !56, line: 186)
!216 = !DISubprogram(name: "wcsncat", scope: !62, file: !62, line: 101, type: !217, flags: DIFlagPrototyped, spFlags: 0)
!217 = !DISubroutineType(types: !218)
!218 = !{!77, !79, !89, !112}
!219 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !220, file: !56, line: 187)
!220 = !DISubprogram(name: "wcsncmp", scope: !62, file: !62, line: 109, type: !221, flags: DIFlagPrototyped, spFlags: 0)
!221 = !DISubroutineType(types: !222)
!222 = !{!26, !90, !90, !112}
!223 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !224, file: !56, line: 188)
!224 = !DISubprogram(name: "wcsncpy", scope: !62, file: !62, line: 92, type: !217, flags: DIFlagPrototyped, spFlags: 0)
!225 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !226, file: !56, line: 189)
!226 = !DISubprogram(name: "wcsrtombs", scope: !62, file: !62, line: 343, type: !227, flags: DIFlagPrototyped, spFlags: 0)
!227 = !DISubroutineType(types: !228)
!228 = !{!112, !185, !229, !112, !116}
!229 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !230)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!231 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !232, file: !56, line: 190)
!232 = !DISubprogram(name: "wcsspn", scope: !62, file: !62, line: 191, type: !201, flags: DIFlagPrototyped, spFlags: 0)
!233 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !234, file: !56, line: 191)
!234 = !DISubprogram(name: "wcstod", scope: !62, file: !62, line: 377, type: !235, flags: DIFlagPrototyped, spFlags: 0)
!235 = !DISubroutineType(types: !236)
!236 = !{!237, !89, !238}
!237 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!238 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !239)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!240 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !241, file: !56, line: 193)
!241 = !DISubprogram(name: "wcstof", scope: !62, file: !62, line: 382, type: !242, flags: DIFlagPrototyped, spFlags: 0)
!242 = !DISubroutineType(types: !243)
!243 = !{!244, !89, !238}
!244 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!245 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !246, file: !56, line: 195)
!246 = !DISubprogram(name: "wcstok", scope: !62, file: !62, line: 217, type: !247, flags: DIFlagPrototyped, spFlags: 0)
!247 = !DISubroutineType(types: !248)
!248 = !{!77, !79, !89, !238}
!249 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !250, file: !56, line: 196)
!250 = !DISubprogram(name: "wcstol", scope: !62, file: !62, line: 428, type: !251, flags: DIFlagPrototyped, spFlags: 0)
!251 = !DISubroutineType(types: !252)
!252 = !{!253, !89, !238, !26}
!253 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!254 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !255, file: !56, line: 197)
!255 = !DISubprogram(name: "wcstoul", scope: !62, file: !62, line: 433, type: !256, flags: DIFlagPrototyped, spFlags: 0)
!256 = !DISubroutineType(types: !257)
!257 = !{!32, !89, !238, !26}
!258 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !259, file: !56, line: 198)
!259 = !DISubprogram(name: "wcsxfrm", scope: !62, file: !62, line: 135, type: !260, flags: DIFlagPrototyped, spFlags: 0)
!260 = !DISubroutineType(types: !261)
!261 = !{!112, !79, !89, !112}
!262 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !263, file: !56, line: 199)
!263 = !DISubprogram(name: "wctob", scope: !62, file: !62, line: 288, type: !264, flags: DIFlagPrototyped, spFlags: 0)
!264 = !DISubroutineType(types: !265)
!265 = !{!26, !58}
!266 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !267, file: !56, line: 200)
!267 = !DISubprogram(name: "wmemcmp", scope: !62, file: !62, line: 258, type: !221, flags: DIFlagPrototyped, spFlags: 0)
!268 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !269, file: !56, line: 201)
!269 = !DISubprogram(name: "wmemcpy", scope: !62, file: !62, line: 262, type: !217, flags: DIFlagPrototyped, spFlags: 0)
!270 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !271, file: !56, line: 202)
!271 = !DISubprogram(name: "wmemmove", scope: !62, file: !62, line: 267, type: !272, flags: DIFlagPrototyped, spFlags: 0)
!272 = !DISubroutineType(types: !273)
!273 = !{!77, !77, !90, !112}
!274 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !275, file: !56, line: 203)
!275 = !DISubprogram(name: "wmemset", scope: !62, file: !62, line: 271, type: !276, flags: DIFlagPrototyped, spFlags: 0)
!276 = !DISubroutineType(types: !277)
!277 = !{!77, !77, !78, !112}
!278 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !279, file: !56, line: 204)
!279 = !DISubprogram(name: "wprintf", scope: !62, file: !62, line: 587, type: !280, flags: DIFlagPrototyped, spFlags: 0)
!280 = !DISubroutineType(types: !281)
!281 = !{!26, !89, null}
!282 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !283, file: !56, line: 205)
!283 = !DISubprogram(name: "wscanf", linkageName: "__isoc99_wscanf", scope: !62, file: !62, line: 644, type: !280, flags: DIFlagPrototyped, spFlags: 0)
!284 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !285, file: !56, line: 206)
!285 = !DISubprogram(name: "wcschr", scope: !62, file: !62, line: 164, type: !286, flags: DIFlagPrototyped, spFlags: 0)
!286 = !DISubroutineType(types: !287)
!287 = !{!77, !90, !78}
!288 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !289, file: !56, line: 207)
!289 = !DISubprogram(name: "wcspbrk", scope: !62, file: !62, line: 201, type: !290, flags: DIFlagPrototyped, spFlags: 0)
!290 = !DISubroutineType(types: !291)
!291 = !{!77, !90, !90}
!292 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !293, file: !56, line: 208)
!293 = !DISubprogram(name: "wcsrchr", scope: !62, file: !62, line: 174, type: !286, flags: DIFlagPrototyped, spFlags: 0)
!294 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !295, file: !56, line: 209)
!295 = !DISubprogram(name: "wcsstr", scope: !62, file: !62, line: 212, type: !290, flags: DIFlagPrototyped, spFlags: 0)
!296 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !297, file: !56, line: 210)
!297 = !DISubprogram(name: "wmemchr", scope: !62, file: !62, line: 253, type: !298, flags: DIFlagPrototyped, spFlags: 0)
!298 = !DISubroutineType(types: !299)
!299 = !{!77, !90, !78, !112}
!300 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !301, entity: !302, file: !56, line: 251)
!301 = !DINamespace(name: "__gnu_cxx", scope: null)
!302 = !DISubprogram(name: "wcstold", scope: !62, file: !62, line: 384, type: !303, flags: DIFlagPrototyped, spFlags: 0)
!303 = !DISubroutineType(types: !304)
!304 = !{!305, !89, !238}
!305 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!306 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !301, entity: !307, file: !56, line: 260)
!307 = !DISubprogram(name: "wcstoll", scope: !62, file: !62, line: 441, type: !308, flags: DIFlagPrototyped, spFlags: 0)
!308 = !DISubroutineType(types: !309)
!309 = !{!310, !89, !238, !26}
!310 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!311 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !301, entity: !312, file: !56, line: 261)
!312 = !DISubprogram(name: "wcstoull", scope: !62, file: !62, line: 448, type: !313, flags: DIFlagPrototyped, spFlags: 0)
!313 = !DISubroutineType(types: !314)
!314 = !{!315, !89, !238, !26}
!315 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!316 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !302, file: !56, line: 267)
!317 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !307, file: !56, line: 268)
!318 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !312, file: !56, line: 269)
!319 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !241, file: !56, line: 283)
!320 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !166, file: !56, line: 286)
!321 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !172, file: !56, line: 289)
!322 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !180, file: !56, line: 292)
!323 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !302, file: !56, line: 296)
!324 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !307, file: !56, line: 297)
!325 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !312, file: !56, line: 298)
!326 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !327, file: !328, line: 66)
!327 = !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !329, file: !328, line: 97, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!328 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/exception_ptr.h", directory: "", checksumkind: CSK_MD5, checksum: "314ad14748ccb9ff85c65d17ebb0828b")
!329 = !DINamespace(name: "__exception_ptr", scope: !39)
!330 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !329, entity: !331, file: !328, line: 85)
!331 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !39, file: !328, line: 81, type: !332, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!332 = !DISubroutineType(types: !333)
!333 = !{null, !327}
!334 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !335, file: !328, line: 243)
!335 = !DISubprogram(name: "swap", linkageName: "_ZNSt15__exception_ptr4swapERNS_13exception_ptrES1_", scope: !329, file: !328, line: 230, type: !336, flags: DIFlagPrototyped, spFlags: 0)
!336 = !DISubroutineType(types: !337)
!337 = !{null, !338, !338}
!338 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !327, size: 64)
!339 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !340, file: !342, line: 53)
!340 = !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !341, line: 51, size: 768, flags: DIFlagFwdDecl, identifier: "_ZTS5lconv")
!341 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "0cf373fc44eed8073800bdb9da87b72f")
!342 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/clocale", directory: "")
!343 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !344, file: !342, line: 54)
!344 = !DISubprogram(name: "setlocale", scope: !341, file: !341, line: 122, type: !345, flags: DIFlagPrototyped, spFlags: 0)
!345 = !DISubroutineType(types: !346)
!346 = !{!186, !26, !115}
!347 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !348, file: !342, line: 55)
!348 = !DISubprogram(name: "localeconv", scope: !341, file: !341, line: 125, type: !349, flags: DIFlagPrototyped, spFlags: 0)
!349 = !DISubroutineType(types: !350)
!350 = !{!351}
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!352 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !353, file: !357, line: 64)
!353 = !DISubprogram(name: "isalnum", scope: !354, file: !354, line: 108, type: !355, flags: DIFlagPrototyped, spFlags: 0)
!354 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "36575f934ef4fe7e9d50a3cb17bd5c66")
!355 = !DISubroutineType(types: !356)
!356 = !{!26, !26}
!357 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cctype", directory: "")
!358 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !359, file: !357, line: 65)
!359 = !DISubprogram(name: "isalpha", scope: !354, file: !354, line: 109, type: !355, flags: DIFlagPrototyped, spFlags: 0)
!360 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !361, file: !357, line: 66)
!361 = !DISubprogram(name: "iscntrl", scope: !354, file: !354, line: 110, type: !355, flags: DIFlagPrototyped, spFlags: 0)
!362 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !363, file: !357, line: 67)
!363 = !DISubprogram(name: "isdigit", scope: !354, file: !354, line: 111, type: !355, flags: DIFlagPrototyped, spFlags: 0)
!364 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !365, file: !357, line: 68)
!365 = !DISubprogram(name: "isgraph", scope: !354, file: !354, line: 113, type: !355, flags: DIFlagPrototyped, spFlags: 0)
!366 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !367, file: !357, line: 69)
!367 = !DISubprogram(name: "islower", scope: !354, file: !354, line: 112, type: !355, flags: DIFlagPrototyped, spFlags: 0)
!368 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !369, file: !357, line: 70)
!369 = !DISubprogram(name: "isprint", scope: !354, file: !354, line: 114, type: !355, flags: DIFlagPrototyped, spFlags: 0)
!370 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !371, file: !357, line: 71)
!371 = !DISubprogram(name: "ispunct", scope: !354, file: !354, line: 115, type: !355, flags: DIFlagPrototyped, spFlags: 0)
!372 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !373, file: !357, line: 72)
!373 = !DISubprogram(name: "isspace", scope: !354, file: !354, line: 116, type: !355, flags: DIFlagPrototyped, spFlags: 0)
!374 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !375, file: !357, line: 73)
!375 = !DISubprogram(name: "isupper", scope: !354, file: !354, line: 117, type: !355, flags: DIFlagPrototyped, spFlags: 0)
!376 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !377, file: !357, line: 74)
!377 = !DISubprogram(name: "isxdigit", scope: !354, file: !354, line: 118, type: !355, flags: DIFlagPrototyped, spFlags: 0)
!378 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !379, file: !357, line: 75)
!379 = !DISubprogram(name: "tolower", scope: !354, file: !354, line: 122, type: !355, flags: DIFlagPrototyped, spFlags: 0)
!380 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !381, file: !357, line: 76)
!381 = !DISubprogram(name: "toupper", scope: !354, file: !354, line: 125, type: !355, flags: DIFlagPrototyped, spFlags: 0)
!382 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !383, file: !357, line: 87)
!383 = !DISubprogram(name: "isblank", scope: !354, file: !354, line: 130, type: !355, flags: DIFlagPrototyped, spFlags: 0)
!384 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !385, entity: !386, file: !387, line: 58)
!385 = !DINamespace(name: "__gnu_debug", scope: null)
!386 = !DINamespace(name: "__debug", scope: !39)
!387 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/debug/debug.h", directory: "", checksumkind: CSK_MD5, checksum: "752210a319f5f5d356cc29cd1ce3cdc7")
!388 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !389, file: !391, line: 52)
!389 = !DISubprogram(name: "abs", scope: !390, file: !390, line: 840, type: !355, flags: DIFlagPrototyped, spFlags: 0)
!390 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!391 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/std_abs.h", directory: "")
!392 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !393, file: !395, line: 131)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !390, line: 62, baseType: !394)
!394 = !DICompositeType(tag: DW_TAG_structure_type, file: !390, line: 58, size: 64, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!395 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cstdlib", directory: "")
!396 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !397, file: !395, line: 132)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !390, line: 70, baseType: !398)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !390, line: 66, size: 128, flags: DIFlagTypePassByValue, elements: !399, identifier: "_ZTS6ldiv_t")
!399 = !{!400, !401}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !398, file: !390, line: 68, baseType: !253, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !398, file: !390, line: 69, baseType: !253, size: 64, offset: 64)
!402 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !403, file: !395, line: 134)
!403 = !DISubprogram(name: "abort", scope: !390, file: !390, line: 591, type: !404, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!404 = !DISubroutineType(types: !405)
!405 = !{null}
!406 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !407, file: !395, line: 136)
!407 = !DISubprogram(name: "aligned_alloc", scope: !390, file: !390, line: 586, type: !408, flags: DIFlagPrototyped, spFlags: 0)
!408 = !DISubroutineType(types: !409)
!409 = !{!163, !112, !112}
!410 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !411, file: !395, line: 138)
!411 = !DISubprogram(name: "atexit", scope: !390, file: !390, line: 595, type: !412, flags: DIFlagPrototyped, spFlags: 0)
!412 = !DISubroutineType(types: !413)
!413 = !{!26, !414}
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!415 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !416, file: !395, line: 141)
!416 = !DISubprogram(name: "at_quick_exit", scope: !390, file: !390, line: 600, type: !412, flags: DIFlagPrototyped, spFlags: 0)
!417 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !418, file: !395, line: 144)
!418 = !DISubprogram(name: "atof", scope: !390, file: !390, line: 101, type: !419, flags: DIFlagPrototyped, spFlags: 0)
!419 = !DISubroutineType(types: !420)
!420 = !{!237, !115}
!421 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !422, file: !395, line: 145)
!422 = !DISubprogram(name: "atoi", scope: !390, file: !390, line: 104, type: !423, flags: DIFlagPrototyped, spFlags: 0)
!423 = !DISubroutineType(types: !424)
!424 = !{!26, !115}
!425 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !426, file: !395, line: 146)
!426 = !DISubprogram(name: "atol", scope: !390, file: !390, line: 107, type: !427, flags: DIFlagPrototyped, spFlags: 0)
!427 = !DISubroutineType(types: !428)
!428 = !{!253, !115}
!429 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !430, file: !395, line: 147)
!430 = !DISubprogram(name: "bsearch", scope: !390, file: !390, line: 820, type: !431, flags: DIFlagPrototyped, spFlags: 0)
!431 = !DISubroutineType(types: !432)
!432 = !{!163, !433, !433, !112, !112, !435}
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !390, line: 808, baseType: !436)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DISubroutineType(types: !438)
!438 = !{!26, !433, !433}
!439 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !440, file: !395, line: 148)
!440 = !DISubprogram(name: "calloc", scope: !390, file: !390, line: 542, type: !408, flags: DIFlagPrototyped, spFlags: 0)
!441 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !442, file: !395, line: 149)
!442 = !DISubprogram(name: "div", scope: !390, file: !390, line: 852, type: !443, flags: DIFlagPrototyped, spFlags: 0)
!443 = !DISubroutineType(types: !444)
!444 = !{!393, !26, !26}
!445 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !446, file: !395, line: 150)
!446 = !DISubprogram(name: "exit", scope: !390, file: !390, line: 617, type: !447, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!447 = !DISubroutineType(types: !448)
!448 = !{null, !26}
!449 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !450, file: !395, line: 151)
!450 = !DISubprogram(name: "free", scope: !390, file: !390, line: 565, type: !451, flags: DIFlagPrototyped, spFlags: 0)
!451 = !DISubroutineType(types: !452)
!452 = !{null, !163}
!453 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !454, file: !395, line: 152)
!454 = !DISubprogram(name: "getenv", scope: !390, file: !390, line: 634, type: !455, flags: DIFlagPrototyped, spFlags: 0)
!455 = !DISubroutineType(types: !456)
!456 = !{!186, !115}
!457 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !458, file: !395, line: 153)
!458 = !DISubprogram(name: "labs", scope: !390, file: !390, line: 841, type: !459, flags: DIFlagPrototyped, spFlags: 0)
!459 = !DISubroutineType(types: !460)
!460 = !{!253, !253}
!461 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !462, file: !395, line: 154)
!462 = !DISubprogram(name: "ldiv", scope: !390, file: !390, line: 854, type: !463, flags: DIFlagPrototyped, spFlags: 0)
!463 = !DISubroutineType(types: !464)
!464 = !{!397, !253, !253}
!465 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !466, file: !395, line: 155)
!466 = !DISubprogram(name: "malloc", scope: !390, file: !390, line: 539, type: !467, flags: DIFlagPrototyped, spFlags: 0)
!467 = !DISubroutineType(types: !468)
!468 = !{!163, !112}
!469 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !470, file: !395, line: 157)
!470 = !DISubprogram(name: "mblen", scope: !390, file: !390, line: 922, type: !471, flags: DIFlagPrototyped, spFlags: 0)
!471 = !DISubroutineType(types: !472)
!472 = !{!26, !115, !112}
!473 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !474, file: !395, line: 158)
!474 = !DISubprogram(name: "mbstowcs", scope: !390, file: !390, line: 933, type: !475, flags: DIFlagPrototyped, spFlags: 0)
!475 = !DISubroutineType(types: !476)
!476 = !{!112, !79, !114, !112}
!477 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !478, file: !395, line: 159)
!478 = !DISubprogram(name: "mbtowc", scope: !390, file: !390, line: 925, type: !479, flags: DIFlagPrototyped, spFlags: 0)
!479 = !DISubroutineType(types: !480)
!480 = !{!26, !79, !114, !112}
!481 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !482, file: !395, line: 161)
!482 = !DISubprogram(name: "qsort", scope: !390, file: !390, line: 830, type: !483, flags: DIFlagPrototyped, spFlags: 0)
!483 = !DISubroutineType(types: !484)
!484 = !{null, !163, !112, !112, !435}
!485 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !486, file: !395, line: 164)
!486 = !DISubprogram(name: "quick_exit", scope: !390, file: !390, line: 623, type: !447, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!487 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !488, file: !395, line: 167)
!488 = !DISubprogram(name: "rand", scope: !390, file: !390, line: 453, type: !489, flags: DIFlagPrototyped, spFlags: 0)
!489 = !DISubroutineType(types: !490)
!490 = !{!26}
!491 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !492, file: !395, line: 168)
!492 = !DISubprogram(name: "realloc", scope: !390, file: !390, line: 550, type: !493, flags: DIFlagPrototyped, spFlags: 0)
!493 = !DISubroutineType(types: !494)
!494 = !{!163, !163, !112}
!495 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !496, file: !395, line: 169)
!496 = !DISubprogram(name: "srand", scope: !390, file: !390, line: 455, type: !497, flags: DIFlagPrototyped, spFlags: 0)
!497 = !DISubroutineType(types: !498)
!498 = !{null, !51}
!499 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !500, file: !395, line: 170)
!500 = !DISubprogram(name: "strtod", scope: !390, file: !390, line: 117, type: !501, flags: DIFlagPrototyped, spFlags: 0)
!501 = !DISubroutineType(types: !502)
!502 = !{!237, !114, !503}
!503 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !504)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!505 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !506, file: !395, line: 171)
!506 = !DISubprogram(name: "strtol", scope: !390, file: !390, line: 176, type: !507, flags: DIFlagPrototyped, spFlags: 0)
!507 = !DISubroutineType(types: !508)
!508 = !{!253, !114, !503, !26}
!509 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !510, file: !395, line: 172)
!510 = !DISubprogram(name: "strtoul", scope: !390, file: !390, line: 180, type: !511, flags: DIFlagPrototyped, spFlags: 0)
!511 = !DISubroutineType(types: !512)
!512 = !{!32, !114, !503, !26}
!513 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !514, file: !395, line: 173)
!514 = !DISubprogram(name: "system", scope: !390, file: !390, line: 784, type: !423, flags: DIFlagPrototyped, spFlags: 0)
!515 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !516, file: !395, line: 175)
!516 = !DISubprogram(name: "wcstombs", scope: !390, file: !390, line: 936, type: !517, flags: DIFlagPrototyped, spFlags: 0)
!517 = !DISubroutineType(types: !518)
!518 = !{!112, !185, !89, !112}
!519 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !520, file: !395, line: 176)
!520 = !DISubprogram(name: "wctomb", scope: !390, file: !390, line: 929, type: !521, flags: DIFlagPrototyped, spFlags: 0)
!521 = !DISubroutineType(types: !522)
!522 = !{!26, !186, !78}
!523 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !301, entity: !524, file: !395, line: 204)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !390, line: 80, baseType: !525)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !390, line: 76, size: 128, flags: DIFlagTypePassByValue, elements: !526, identifier: "_ZTS7lldiv_t")
!526 = !{!527, !528}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !525, file: !390, line: 78, baseType: !310, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !525, file: !390, line: 79, baseType: !310, size: 64, offset: 64)
!529 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !301, entity: !530, file: !395, line: 210)
!530 = !DISubprogram(name: "_Exit", scope: !390, file: !390, line: 629, type: !447, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!531 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !301, entity: !532, file: !395, line: 214)
!532 = !DISubprogram(name: "llabs", scope: !390, file: !390, line: 844, type: !533, flags: DIFlagPrototyped, spFlags: 0)
!533 = !DISubroutineType(types: !534)
!534 = !{!310, !310}
!535 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !301, entity: !536, file: !395, line: 220)
!536 = !DISubprogram(name: "lldiv", scope: !390, file: !390, line: 858, type: !537, flags: DIFlagPrototyped, spFlags: 0)
!537 = !DISubroutineType(types: !538)
!538 = !{!524, !310, !310}
!539 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !301, entity: !540, file: !395, line: 231)
!540 = !DISubprogram(name: "atoll", scope: !390, file: !390, line: 112, type: !541, flags: DIFlagPrototyped, spFlags: 0)
!541 = !DISubroutineType(types: !542)
!542 = !{!310, !115}
!543 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !301, entity: !544, file: !395, line: 232)
!544 = !DISubprogram(name: "strtoll", scope: !390, file: !390, line: 200, type: !545, flags: DIFlagPrototyped, spFlags: 0)
!545 = !DISubroutineType(types: !546)
!546 = !{!310, !114, !503, !26}
!547 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !301, entity: !548, file: !395, line: 233)
!548 = !DISubprogram(name: "strtoull", scope: !390, file: !390, line: 205, type: !549, flags: DIFlagPrototyped, spFlags: 0)
!549 = !DISubroutineType(types: !550)
!550 = !{!315, !114, !503, !26}
!551 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !301, entity: !552, file: !395, line: 235)
!552 = !DISubprogram(name: "strtof", scope: !390, file: !390, line: 123, type: !553, flags: DIFlagPrototyped, spFlags: 0)
!553 = !DISubroutineType(types: !554)
!554 = !{!244, !114, !503}
!555 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !301, entity: !556, file: !395, line: 236)
!556 = !DISubprogram(name: "strtold", scope: !390, file: !390, line: 126, type: !557, flags: DIFlagPrototyped, spFlags: 0)
!557 = !DISubroutineType(types: !558)
!558 = !{!305, !114, !503}
!559 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !524, file: !395, line: 244)
!560 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !530, file: !395, line: 246)
!561 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !532, file: !395, line: 248)
!562 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !563, file: !395, line: 249)
!563 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !301, file: !395, line: 217, type: !537, flags: DIFlagPrototyped, spFlags: 0)
!564 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !536, file: !395, line: 250)
!565 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !540, file: !395, line: 252)
!566 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !552, file: !395, line: 253)
!567 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !544, file: !395, line: 254)
!568 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !548, file: !395, line: 255)
!569 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !556, file: !395, line: 256)
!570 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !571, file: !573, line: 98)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !572, line: 7, baseType: !72)
!572 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!573 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cstdio", directory: "")
!574 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !575, file: !573, line: 99)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !576, line: 84, baseType: !577)
!576 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fpos_t", file: !578, line: 14, baseType: !579)
!578 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h", directory: "", checksumkind: CSK_MD5, checksum: "32de8bdaf3551a6c0a9394f9af4389ce")
!579 = !DICompositeType(tag: DW_TAG_structure_type, name: "_G_fpos_t", file: !578, line: 10, size: 128, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
!580 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !581, file: !573, line: 101)
!581 = !DISubprogram(name: "clearerr", scope: !576, file: !576, line: 757, type: !582, flags: DIFlagPrototyped, spFlags: 0)
!582 = !DISubroutineType(types: !583)
!583 = !{null, !584}
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!585 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !586, file: !573, line: 102)
!586 = !DISubprogram(name: "fclose", scope: !576, file: !576, line: 213, type: !587, flags: DIFlagPrototyped, spFlags: 0)
!587 = !DISubroutineType(types: !588)
!588 = !{!26, !584}
!589 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !590, file: !573, line: 103)
!590 = !DISubprogram(name: "feof", scope: !576, file: !576, line: 759, type: !587, flags: DIFlagPrototyped, spFlags: 0)
!591 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !592, file: !573, line: 104)
!592 = !DISubprogram(name: "ferror", scope: !576, file: !576, line: 761, type: !587, flags: DIFlagPrototyped, spFlags: 0)
!593 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !594, file: !573, line: 105)
!594 = !DISubprogram(name: "fflush", scope: !576, file: !576, line: 218, type: !587, flags: DIFlagPrototyped, spFlags: 0)
!595 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !596, file: !573, line: 106)
!596 = !DISubprogram(name: "fgetc", scope: !576, file: !576, line: 485, type: !587, flags: DIFlagPrototyped, spFlags: 0)
!597 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !598, file: !573, line: 107)
!598 = !DISubprogram(name: "fgetpos", scope: !576, file: !576, line: 731, type: !599, flags: DIFlagPrototyped, spFlags: 0)
!599 = !DISubroutineType(types: !600)
!600 = !{!26, !601, !602}
!601 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !584)
!602 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !603)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!604 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !605, file: !573, line: 108)
!605 = !DISubprogram(name: "fgets", scope: !576, file: !576, line: 564, type: !606, flags: DIFlagPrototyped, spFlags: 0)
!606 = !DISubroutineType(types: !607)
!607 = !{!186, !185, !26, !601}
!608 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !609, file: !573, line: 109)
!609 = !DISubprogram(name: "fopen", scope: !576, file: !576, line: 246, type: !610, flags: DIFlagPrototyped, spFlags: 0)
!610 = !DISubroutineType(types: !611)
!611 = !{!584, !114, !114}
!612 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !613, file: !573, line: 110)
!613 = !DISubprogram(name: "fprintf", scope: !576, file: !576, line: 326, type: !614, flags: DIFlagPrototyped, spFlags: 0)
!614 = !DISubroutineType(types: !615)
!615 = !{!26, !601, !114, null}
!616 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !617, file: !573, line: 111)
!617 = !DISubprogram(name: "fputc", scope: !576, file: !576, line: 521, type: !618, flags: DIFlagPrototyped, spFlags: 0)
!618 = !DISubroutineType(types: !619)
!619 = !{!26, !26, !584}
!620 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !621, file: !573, line: 112)
!621 = !DISubprogram(name: "fputs", scope: !576, file: !576, line: 626, type: !622, flags: DIFlagPrototyped, spFlags: 0)
!622 = !DISubroutineType(types: !623)
!623 = !{!26, !114, !601}
!624 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !625, file: !573, line: 113)
!625 = !DISubprogram(name: "fread", scope: !576, file: !576, line: 646, type: !626, flags: DIFlagPrototyped, spFlags: 0)
!626 = !DISubroutineType(types: !627)
!627 = !{!112, !628, !112, !112, !601}
!628 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !163)
!629 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !630, file: !573, line: 114)
!630 = !DISubprogram(name: "freopen", scope: !576, file: !576, line: 252, type: !631, flags: DIFlagPrototyped, spFlags: 0)
!631 = !DISubroutineType(types: !632)
!632 = !{!584, !114, !114, !601}
!633 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !634, file: !573, line: 115)
!634 = !DISubprogram(name: "fscanf", linkageName: "__isoc99_fscanf", scope: !576, file: !576, line: 407, type: !614, flags: DIFlagPrototyped, spFlags: 0)
!635 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !636, file: !573, line: 116)
!636 = !DISubprogram(name: "fseek", scope: !576, file: !576, line: 684, type: !637, flags: DIFlagPrototyped, spFlags: 0)
!637 = !DISubroutineType(types: !638)
!638 = !{!26, !584, !253, !26}
!639 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !640, file: !573, line: 117)
!640 = !DISubprogram(name: "fsetpos", scope: !576, file: !576, line: 736, type: !641, flags: DIFlagPrototyped, spFlags: 0)
!641 = !DISubroutineType(types: !642)
!642 = !{!26, !584, !643}
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !575)
!645 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !646, file: !573, line: 118)
!646 = !DISubprogram(name: "ftell", scope: !576, file: !576, line: 689, type: !647, flags: DIFlagPrototyped, spFlags: 0)
!647 = !DISubroutineType(types: !648)
!648 = !{!253, !584}
!649 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !650, file: !573, line: 119)
!650 = !DISubprogram(name: "fwrite", scope: !576, file: !576, line: 652, type: !651, flags: DIFlagPrototyped, spFlags: 0)
!651 = !DISubroutineType(types: !652)
!652 = !{!112, !653, !112, !112, !601}
!653 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !433)
!654 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !655, file: !573, line: 120)
!655 = !DISubprogram(name: "getc", scope: !576, file: !576, line: 486, type: !587, flags: DIFlagPrototyped, spFlags: 0)
!656 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !657, file: !573, line: 121)
!657 = !DISubprogram(name: "getchar", scope: !576, file: !576, line: 492, type: !489, flags: DIFlagPrototyped, spFlags: 0)
!658 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !659, file: !573, line: 126)
!659 = !DISubprogram(name: "perror", scope: !576, file: !576, line: 775, type: !660, flags: DIFlagPrototyped, spFlags: 0)
!660 = !DISubroutineType(types: !661)
!661 = !{null, !115}
!662 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !663, file: !573, line: 127)
!663 = !DISubprogram(name: "printf", scope: !576, file: !576, line: 332, type: !664, flags: DIFlagPrototyped, spFlags: 0)
!664 = !DISubroutineType(types: !665)
!665 = !{!26, !114, null}
!666 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !667, file: !573, line: 128)
!667 = !DISubprogram(name: "putc", scope: !576, file: !576, line: 522, type: !618, flags: DIFlagPrototyped, spFlags: 0)
!668 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !669, file: !573, line: 129)
!669 = !DISubprogram(name: "putchar", scope: !576, file: !576, line: 528, type: !355, flags: DIFlagPrototyped, spFlags: 0)
!670 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !671, file: !573, line: 130)
!671 = !DISubprogram(name: "puts", scope: !576, file: !576, line: 632, type: !423, flags: DIFlagPrototyped, spFlags: 0)
!672 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !673, file: !573, line: 131)
!673 = !DISubprogram(name: "remove", scope: !576, file: !576, line: 146, type: !423, flags: DIFlagPrototyped, spFlags: 0)
!674 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !675, file: !573, line: 132)
!675 = !DISubprogram(name: "rename", scope: !576, file: !576, line: 148, type: !676, flags: DIFlagPrototyped, spFlags: 0)
!676 = !DISubroutineType(types: !677)
!677 = !{!26, !115, !115}
!678 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !679, file: !573, line: 133)
!679 = !DISubprogram(name: "rewind", scope: !576, file: !576, line: 694, type: !582, flags: DIFlagPrototyped, spFlags: 0)
!680 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !681, file: !573, line: 134)
!681 = !DISubprogram(name: "scanf", linkageName: "__isoc99_scanf", scope: !576, file: !576, line: 410, type: !664, flags: DIFlagPrototyped, spFlags: 0)
!682 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !683, file: !573, line: 135)
!683 = !DISubprogram(name: "setbuf", scope: !576, file: !576, line: 304, type: !684, flags: DIFlagPrototyped, spFlags: 0)
!684 = !DISubroutineType(types: !685)
!685 = !{null, !601, !185}
!686 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !687, file: !573, line: 136)
!687 = !DISubprogram(name: "setvbuf", scope: !576, file: !576, line: 308, type: !688, flags: DIFlagPrototyped, spFlags: 0)
!688 = !DISubroutineType(types: !689)
!689 = !{!26, !601, !185, !26, !112}
!690 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !691, file: !573, line: 137)
!691 = !DISubprogram(name: "sprintf", scope: !576, file: !576, line: 334, type: !692, flags: DIFlagPrototyped, spFlags: 0)
!692 = !DISubroutineType(types: !693)
!693 = !{!26, !185, !114, null}
!694 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !695, file: !573, line: 138)
!695 = !DISubprogram(name: "sscanf", linkageName: "__isoc99_sscanf", scope: !576, file: !576, line: 412, type: !696, flags: DIFlagPrototyped, spFlags: 0)
!696 = !DISubroutineType(types: !697)
!697 = !{!26, !114, !114, null}
!698 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !699, file: !573, line: 139)
!699 = !DISubprogram(name: "tmpfile", scope: !576, file: !576, line: 173, type: !700, flags: DIFlagPrototyped, spFlags: 0)
!700 = !DISubroutineType(types: !701)
!701 = !{!584}
!702 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !703, file: !573, line: 141)
!703 = !DISubprogram(name: "tmpnam", scope: !576, file: !576, line: 187, type: !704, flags: DIFlagPrototyped, spFlags: 0)
!704 = !DISubroutineType(types: !705)
!705 = !{!186, !186}
!706 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !707, file: !573, line: 143)
!707 = !DISubprogram(name: "ungetc", scope: !576, file: !576, line: 639, type: !618, flags: DIFlagPrototyped, spFlags: 0)
!708 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !709, file: !573, line: 144)
!709 = !DISubprogram(name: "vfprintf", scope: !576, file: !576, line: 341, type: !710, flags: DIFlagPrototyped, spFlags: 0)
!710 = !DISubroutineType(types: !711)
!711 = !{!26, !601, !114, !156}
!712 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !713, file: !573, line: 145)
!713 = !DISubprogram(name: "vprintf", scope: !576, file: !576, line: 347, type: !714, flags: DIFlagPrototyped, spFlags: 0)
!714 = !DISubroutineType(types: !715)
!715 = !{!26, !114, !156}
!716 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !717, file: !573, line: 146)
!717 = !DISubprogram(name: "vsprintf", scope: !576, file: !576, line: 349, type: !718, flags: DIFlagPrototyped, spFlags: 0)
!718 = !DISubroutineType(types: !719)
!719 = !{!26, !185, !114, !156}
!720 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !301, entity: !721, file: !573, line: 175)
!721 = !DISubprogram(name: "snprintf", scope: !576, file: !576, line: 354, type: !722, flags: DIFlagPrototyped, spFlags: 0)
!722 = !DISubroutineType(types: !723)
!723 = !{!26, !185, !112, !114, null}
!724 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !301, entity: !725, file: !573, line: 176)
!725 = !DISubprogram(name: "vfscanf", linkageName: "__isoc99_vfscanf", scope: !576, file: !576, line: 451, type: !710, flags: DIFlagPrototyped, spFlags: 0)
!726 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !301, entity: !727, file: !573, line: 177)
!727 = !DISubprogram(name: "vscanf", linkageName: "__isoc99_vscanf", scope: !576, file: !576, line: 456, type: !714, flags: DIFlagPrototyped, spFlags: 0)
!728 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !301, entity: !729, file: !573, line: 178)
!729 = !DISubprogram(name: "vsnprintf", scope: !576, file: !576, line: 358, type: !730, flags: DIFlagPrototyped, spFlags: 0)
!730 = !DISubroutineType(types: !731)
!731 = !{!26, !185, !112, !114, !156}
!732 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !301, entity: !733, file: !573, line: 179)
!733 = !DISubprogram(name: "vsscanf", linkageName: "__isoc99_vsscanf", scope: !576, file: !576, line: 459, type: !734, flags: DIFlagPrototyped, spFlags: 0)
!734 = !DISubroutineType(types: !735)
!735 = !{!26, !114, !114, !156}
!736 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !721, file: !573, line: 185)
!737 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !725, file: !573, line: 186)
!738 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !727, file: !573, line: 187)
!739 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !729, file: !573, line: 188)
!740 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !733, file: !573, line: 189)
!741 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !742, file: !748, line: 58)
!742 = !DIDerivedType(tag: DW_TAG_typedef, name: "max_align_t", file: !743, line: 24, baseType: !744)
!743 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/__stddef_max_align_t.h", directory: "/home/cs22mtech12008", checksumkind: CSK_MD5, checksum: "48e8e2456f77e6cda35d245130fa7259")
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !743, line: 19, size: 256, flags: DIFlagTypePassByValue, elements: !745, identifier: "_ZTS11max_align_t")
!745 = !{!746, !747}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "__clang_max_align_nonce1", scope: !744, file: !743, line: 20, baseType: !310, size: 64, align: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "__clang_max_align_nonce2", scope: !744, file: !743, line: 22, baseType: !305, size: 128, align: 128, offset: 128)
!748 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cstddef", directory: "")
!749 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !750, file: !756, line: 82)
!750 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctrans_t", file: !751, line: 48, baseType: !752)
!751 = !DIFile(filename: "/usr/include/wctype.h", directory: "", checksumkind: CSK_MD5, checksum: "e83097fbf57cc71ea472db59df3ba75d")
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !754)
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !755, line: 41, baseType: !26)
!755 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!756 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cwctype", directory: "")
!757 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !758, file: !756, line: 83)
!758 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctype_t", file: !759, line: 38, baseType: !32)
!759 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "3598b9d23ef5d76319026b46e316b55f")
!760 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !58, file: !756, line: 84)
!761 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !762, file: !756, line: 86)
!762 = !DISubprogram(name: "iswalnum", scope: !759, file: !759, line: 95, type: !264, flags: DIFlagPrototyped, spFlags: 0)
!763 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !764, file: !756, line: 87)
!764 = !DISubprogram(name: "iswalpha", scope: !759, file: !759, line: 101, type: !264, flags: DIFlagPrototyped, spFlags: 0)
!765 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !766, file: !756, line: 89)
!766 = !DISubprogram(name: "iswblank", scope: !759, file: !759, line: 146, type: !264, flags: DIFlagPrototyped, spFlags: 0)
!767 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !768, file: !756, line: 91)
!768 = !DISubprogram(name: "iswcntrl", scope: !759, file: !759, line: 104, type: !264, flags: DIFlagPrototyped, spFlags: 0)
!769 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !770, file: !756, line: 92)
!770 = !DISubprogram(name: "iswctype", scope: !759, file: !759, line: 159, type: !771, flags: DIFlagPrototyped, spFlags: 0)
!771 = !DISubroutineType(types: !772)
!772 = !{!26, !58, !758}
!773 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !774, file: !756, line: 93)
!774 = !DISubprogram(name: "iswdigit", scope: !759, file: !759, line: 108, type: !264, flags: DIFlagPrototyped, spFlags: 0)
!775 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !776, file: !756, line: 94)
!776 = !DISubprogram(name: "iswgraph", scope: !759, file: !759, line: 112, type: !264, flags: DIFlagPrototyped, spFlags: 0)
!777 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !778, file: !756, line: 95)
!778 = !DISubprogram(name: "iswlower", scope: !759, file: !759, line: 117, type: !264, flags: DIFlagPrototyped, spFlags: 0)
!779 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !780, file: !756, line: 96)
!780 = !DISubprogram(name: "iswprint", scope: !759, file: !759, line: 120, type: !264, flags: DIFlagPrototyped, spFlags: 0)
!781 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !782, file: !756, line: 97)
!782 = !DISubprogram(name: "iswpunct", scope: !759, file: !759, line: 125, type: !264, flags: DIFlagPrototyped, spFlags: 0)
!783 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !784, file: !756, line: 98)
!784 = !DISubprogram(name: "iswspace", scope: !759, file: !759, line: 130, type: !264, flags: DIFlagPrototyped, spFlags: 0)
!785 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !786, file: !756, line: 99)
!786 = !DISubprogram(name: "iswupper", scope: !759, file: !759, line: 135, type: !264, flags: DIFlagPrototyped, spFlags: 0)
!787 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !788, file: !756, line: 100)
!788 = !DISubprogram(name: "iswxdigit", scope: !759, file: !759, line: 140, type: !264, flags: DIFlagPrototyped, spFlags: 0)
!789 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !790, file: !756, line: 101)
!790 = !DISubprogram(name: "towctrans", scope: !751, file: !751, line: 55, type: !791, flags: DIFlagPrototyped, spFlags: 0)
!791 = !DISubroutineType(types: !792)
!792 = !{!58, !58, !750}
!793 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !794, file: !756, line: 102)
!794 = !DISubprogram(name: "towlower", scope: !759, file: !759, line: 166, type: !795, flags: DIFlagPrototyped, spFlags: 0)
!795 = !DISubroutineType(types: !796)
!796 = !{!58, !58}
!797 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !798, file: !756, line: 103)
!798 = !DISubprogram(name: "towupper", scope: !759, file: !759, line: 169, type: !795, flags: DIFlagPrototyped, spFlags: 0)
!799 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !800, file: !756, line: 104)
!800 = !DISubprogram(name: "wctrans", scope: !751, file: !751, line: 52, type: !801, flags: DIFlagPrototyped, spFlags: 0)
!801 = !DISubroutineType(types: !802)
!802 = !{!750, !115}
!803 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !39, entity: !804, file: !756, line: 105)
!804 = !DISubprogram(name: "wctype", scope: !759, file: !759, line: 155, type: !805, flags: DIFlagPrototyped, spFlags: 0)
!805 = !DISubroutineType(types: !806)
!806 = !{!758, !115}
!807 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !22, entity: !39, file: !2, line: 7)
!808 = !{i32 7, !"Dwarf Version", i32 5}
!809 = !{i32 2, !"Debug Info Version", i32 3}
!810 = !{i32 1, !"wchar_size", i32 4}
!811 = !{i32 8, !"PIC Level", i32 2}
!812 = !{i32 7, !"PIE Level", i32 2}
!813 = !{i32 7, !"uwtable", i32 2}
!814 = !{i32 7, !"frame-pointer", i32 2}
!815 = !{!"clang version 16.0.0"}
!816 = distinct !DISubprogram(name: "runLocalThread1", linkageName: "_Z15runLocalThread1Pv", scope: !2, file: !2, line: 9, type: !817, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !819)
!817 = !DISubroutineType(types: !818)
!818 = !{!163, !163}
!819 = !{}
!820 = !DILocalVariable(name: "arg", arg: 1, scope: !816, file: !2, line: 9, type: !163)
!821 = !DILocation(line: 9, column: 29, scope: !816)
!822 = !DILocalVariable(name: "x", scope: !816, file: !2, line: 11, type: !25)
!823 = !DILocation(line: 11, column: 10, scope: !816)
!824 = !DILocation(line: 11, column: 32, scope: !816)
!825 = !DILocation(line: 12, column: 10, scope: !816)
!826 = !DILocation(line: 12, column: 45, scope: !816)
!827 = !DILocation(line: 12, column: 44, scope: !816)
!828 = !DILocation(line: 12, column: 41, scope: !816)
!829 = !DILocation(line: 12, column: 47, scope: !816)
!830 = !DILocation(line: 13, column: 5, scope: !816)
!831 = distinct !DISubprogram(name: "runLocalThread2", linkageName: "_Z15runLocalThread2Pv", scope: !2, file: !2, line: 16, type: !817, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !819)
!832 = !DILocalVariable(name: "arg", arg: 1, scope: !831, file: !2, line: 16, type: !163)
!833 = !DILocation(line: 16, column: 29, scope: !831)
!834 = !DILocalVariable(name: "x", scope: !831, file: !2, line: 18, type: !25)
!835 = !DILocation(line: 18, column: 10, scope: !831)
!836 = !DILocation(line: 18, column: 32, scope: !831)
!837 = !DILocation(line: 19, column: 10, scope: !831)
!838 = !DILocation(line: 19, column: 45, scope: !831)
!839 = !DILocation(line: 19, column: 44, scope: !831)
!840 = !DILocation(line: 19, column: 41, scope: !831)
!841 = !DILocation(line: 19, column: 47, scope: !831)
!842 = !DILocation(line: 20, column: 5, scope: !831)
!843 = distinct !DISubprogram(name: "runLocalThread3", linkageName: "_Z15runLocalThread3Pv", scope: !2, file: !2, line: 23, type: !817, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !819)
!844 = !DILocalVariable(name: "arg", arg: 1, scope: !843, file: !2, line: 23, type: !163)
!845 = !DILocation(line: 23, column: 29, scope: !843)
!846 = !DILocalVariable(name: "x", scope: !843, file: !2, line: 25, type: !25)
!847 = !DILocation(line: 25, column: 10, scope: !843)
!848 = !DILocation(line: 25, column: 32, scope: !843)
!849 = !DILocation(line: 26, column: 10, scope: !843)
!850 = !DILocation(line: 26, column: 45, scope: !843)
!851 = !DILocation(line: 26, column: 44, scope: !843)
!852 = !DILocation(line: 26, column: 41, scope: !843)
!853 = !DILocation(line: 26, column: 47, scope: !843)
!854 = !DILocation(line: 27, column: 5, scope: !843)
!855 = distinct !DISubprogram(name: "runLocalThread4", linkageName: "_Z15runLocalThread4Pv", scope: !2, file: !2, line: 30, type: !817, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !819)
!856 = !DILocalVariable(name: "arg", arg: 1, scope: !855, file: !2, line: 30, type: !163)
!857 = !DILocation(line: 30, column: 29, scope: !855)
!858 = !DILocalVariable(name: "x", scope: !855, file: !2, line: 32, type: !25)
!859 = !DILocation(line: 32, column: 10, scope: !855)
!860 = !DILocation(line: 32, column: 32, scope: !855)
!861 = !DILocation(line: 33, column: 10, scope: !855)
!862 = !DILocation(line: 33, column: 45, scope: !855)
!863 = !DILocation(line: 33, column: 44, scope: !855)
!864 = !DILocation(line: 33, column: 41, scope: !855)
!865 = !DILocation(line: 33, column: 47, scope: !855)
!866 = !DILocation(line: 34, column: 5, scope: !855)
!867 = distinct !DISubprogram(name: "runLocalThread5", linkageName: "_Z15runLocalThread5Pv", scope: !2, file: !2, line: 37, type: !817, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !819)
!868 = !DILocalVariable(name: "arg", arg: 1, scope: !867, file: !2, line: 37, type: !163)
!869 = !DILocation(line: 37, column: 29, scope: !867)
!870 = !DILocalVariable(name: "x", scope: !867, file: !2, line: 39, type: !25)
!871 = !DILocation(line: 39, column: 10, scope: !867)
!872 = !DILocation(line: 39, column: 32, scope: !867)
!873 = !DILocation(line: 40, column: 10, scope: !867)
!874 = !DILocation(line: 40, column: 45, scope: !867)
!875 = !DILocation(line: 40, column: 44, scope: !867)
!876 = !DILocation(line: 40, column: 41, scope: !867)
!877 = !DILocation(line: 40, column: 47, scope: !867)
!878 = !DILocation(line: 41, column: 5, scope: !867)
!879 = distinct !DISubprogram(name: "runLocalThread6", linkageName: "_Z15runLocalThread6Pv", scope: !2, file: !2, line: 44, type: !817, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !819)
!880 = !DILocalVariable(name: "arg", arg: 1, scope: !879, file: !2, line: 44, type: !163)
!881 = !DILocation(line: 44, column: 29, scope: !879)
!882 = !DILocalVariable(name: "x", scope: !879, file: !2, line: 46, type: !25)
!883 = !DILocation(line: 46, column: 10, scope: !879)
!884 = !DILocation(line: 46, column: 32, scope: !879)
!885 = !DILocation(line: 47, column: 10, scope: !879)
!886 = !DILocation(line: 47, column: 45, scope: !879)
!887 = !DILocation(line: 47, column: 44, scope: !879)
!888 = !DILocation(line: 47, column: 41, scope: !879)
!889 = !DILocation(line: 47, column: 47, scope: !879)
!890 = !DILocation(line: 48, column: 5, scope: !879)
!891 = distinct !DISubprogram(name: "runLocalThread7", linkageName: "_Z15runLocalThread7Pv", scope: !2, file: !2, line: 51, type: !817, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !819)
!892 = !DILocalVariable(name: "arg", arg: 1, scope: !891, file: !2, line: 51, type: !163)
!893 = !DILocation(line: 51, column: 29, scope: !891)
!894 = !DILocalVariable(name: "x", scope: !891, file: !2, line: 53, type: !25)
!895 = !DILocation(line: 53, column: 10, scope: !891)
!896 = !DILocation(line: 53, column: 32, scope: !891)
!897 = !DILocation(line: 54, column: 10, scope: !891)
!898 = !DILocation(line: 54, column: 45, scope: !891)
!899 = !DILocation(line: 54, column: 44, scope: !891)
!900 = !DILocation(line: 54, column: 41, scope: !891)
!901 = !DILocation(line: 54, column: 47, scope: !891)
!902 = !DILocation(line: 55, column: 5, scope: !891)
!903 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 63, type: !489, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !819)
!904 = !DILocalVariable(name: "i", scope: !903, file: !2, line: 65, type: !26)
!905 = !DILocation(line: 65, column: 9, scope: !903)
!906 = !DILocation(line: 66, column: 8, scope: !907)
!907 = distinct !DILexicalBlock(scope: !903, file: !2, line: 66, column: 8)
!908 = !DILocation(line: 66, column: 9, scope: !907)
!909 = !DILocation(line: 66, column: 8, scope: !903)
!910 = !DILocalVariable(name: "s1_var", scope: !911, file: !2, line: 68, type: !26)
!911 = distinct !DILexicalBlock(scope: !907, file: !2, line: 67, column: 5)
!912 = !DILocation(line: 68, column: 13, scope: !911)
!913 = !DILocation(line: 69, column: 9, scope: !911)
!914 = !DILocation(line: 71, column: 12, scope: !915)
!915 = distinct !DILexicalBlock(scope: !911, file: !2, line: 71, column: 12)
!916 = !DILocation(line: 71, column: 13, scope: !915)
!917 = !DILocation(line: 71, column: 12, scope: !911)
!918 = !DILocalVariable(name: "s2_var", scope: !919, file: !2, line: 74, type: !26)
!919 = distinct !DILexicalBlock(scope: !915, file: !2, line: 73, column: 9)
!920 = !DILocation(line: 74, column: 17, scope: !919)
!921 = !DILocation(line: 75, column: 13, scope: !919)
!922 = !DILocation(line: 76, column: 16, scope: !923)
!923 = distinct !DILexicalBlock(scope: !919, file: !2, line: 76, column: 16)
!924 = !DILocation(line: 76, column: 17, scope: !923)
!925 = !DILocation(line: 76, column: 16, scope: !919)
!926 = !DILocalVariable(name: "s3_var", scope: !927, file: !2, line: 78, type: !26)
!927 = distinct !DILexicalBlock(scope: !923, file: !2, line: 77, column: 13)
!928 = !DILocation(line: 78, column: 21, scope: !927)
!929 = !DILocation(line: 79, column: 17, scope: !927)
!930 = !DILocation(line: 80, column: 20, scope: !931)
!931 = distinct !DILexicalBlock(scope: !927, file: !2, line: 80, column: 20)
!932 = !DILocation(line: 80, column: 21, scope: !931)
!933 = !DILocation(line: 80, column: 20, scope: !927)
!934 = !DILocalVariable(name: "sn_var", scope: !935, file: !2, line: 83, type: !26)
!935 = distinct !DILexicalBlock(scope: !931, file: !2, line: 81, column: 17)
!936 = !DILocation(line: 83, column: 29, scope: !935)
!937 = !DILocation(line: 84, column: 25, scope: !935)
!938 = !DILocation(line: 86, column: 17, scope: !935)
!939 = !DILocation(line: 87, column: 13, scope: !927)
!940 = !DILocation(line: 88, column: 9, scope: !919)
!941 = !DILocation(line: 89, column: 5, scope: !911)
!942 = !DILocation(line: 91, column: 18, scope: !903)
!943 = !DILocation(line: 91, column: 5, scope: !903)
!944 = !DILocation(line: 92, column: 18, scope: !903)
!945 = !DILocation(line: 92, column: 5, scope: !903)
!946 = !DILocation(line: 93, column: 18, scope: !903)
!947 = !DILocation(line: 93, column: 5, scope: !903)
!948 = !DILocation(line: 94, column: 18, scope: !903)
!949 = !DILocation(line: 94, column: 5, scope: !903)
!950 = !DILocation(line: 96, column: 5, scope: !903)
