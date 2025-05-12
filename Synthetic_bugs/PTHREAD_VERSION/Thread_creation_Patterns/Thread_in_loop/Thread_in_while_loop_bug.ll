; ModuleID = '/home/cs22mtech12008/Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Thread_creation_Patterns/Thread_in_loop/Thread_in_while_loop_bug.cpp'
source_filename = "/home/cs22mtech12008/Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Thread_creation_Patterns/Thread_in_loop/Thread_in_while_loop_bug.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"struct.std::pair" = type <{ ptr, i32, [4 x i8] }>

$_ZNSt4pairIPiiEC2IS0_iLb1EEEOT_OT0_ = comdat any

$_ZNSt4pairIPiiEC2IRS0_iLb1EEEOT_OT0_ = comdat any

@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [24 x i8] c"Incremented data by id \00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [15 x i8] c" and with val \00", align 1, !dbg !8
@tid = dso_local global i64 0, align 8, !dbg !13

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef ptr @_Z5func1Pv(ptr noundef %0) #0 !dbg !862 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !865, metadata !DIExpression()), !dbg !866
  call void @llvm.dbg.declare(metadata ptr %3, metadata !867, metadata !DIExpression()), !dbg !868
  %6 = load ptr, ptr %2, align 8, !dbg !869
  store ptr %6, ptr %3, align 8, !dbg !868
  call void @llvm.dbg.declare(metadata ptr %4, metadata !870, metadata !DIExpression()), !dbg !871
  %7 = load ptr, ptr %3, align 8, !dbg !872
  %8 = getelementptr inbounds %"struct.std::pair", ptr %7, i32 0, i32 0, !dbg !873
  %9 = load ptr, ptr %8, align 8, !dbg !873
  store ptr %9, ptr %4, align 8, !dbg !871
  call void @llvm.dbg.declare(metadata ptr %5, metadata !874, metadata !DIExpression()), !dbg !875
  %10 = load ptr, ptr %3, align 8, !dbg !876
  %11 = getelementptr inbounds %"struct.std::pair", ptr %10, i32 0, i32 1, !dbg !877
  %12 = load i32, ptr %11, align 8, !dbg !877
  store i32 %12, ptr %5, align 4, !dbg !875
  %13 = load ptr, ptr %4, align 8, !dbg !878
  %14 = load i32, ptr %13, align 4, !dbg !879
  %15 = add nsw i32 %14, 1, !dbg !880
  %16 = load ptr, ptr %4, align 8, !dbg !881
  store i32 %15, ptr %16, align 4, !dbg !882
  %17 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str), !dbg !883
  %18 = load i32, ptr %5, align 4, !dbg !884
  %19 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %17, i32 noundef %18), !dbg !885
  %20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef @.str.1), !dbg !886
  %21 = load ptr, ptr %4, align 8, !dbg !887
  %22 = load i32, ptr %21, align 4, !dbg !888
  %23 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %20, i32 noundef %22), !dbg !889
  %24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !890
  %25 = load ptr, ptr %3, align 8, !dbg !891
  %26 = icmp eq ptr %25, null, !dbg !892
  br i1 %26, label %28, label %27, !dbg !892

27:                                               ; preds = %1
  call void @_ZdlPv(ptr noundef %25) #8, !dbg !892
  br label %28, !dbg !892

28:                                               ; preds = %27, %1
  ret ptr null, !dbg !893
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) #3

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef i32 @_Z11spawnThreadv() #0 personality ptr @__gxx_personality_v0 !dbg !894 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata ptr %1, metadata !895, metadata !DIExpression()), !dbg !896
  store i32 0, ptr %1, align 4, !dbg !896
  br label %12, !dbg !897

12:                                               ; preds = %48, %0
  %13 = load i32, ptr %1, align 4, !dbg !898
  %14 = icmp sle i32 %13, 5, !dbg !899
  br i1 %14, label %15, label %49, !dbg !897

15:                                               ; preds = %12
  %16 = load i32, ptr %1, align 4, !dbg !900
  %17 = add nsw i32 %16, 1, !dbg !900
  store i32 %17, ptr %1, align 4, !dbg !900
  %18 = load i32, ptr %1, align 4, !dbg !902
  %19 = icmp eq i32 %18, 3, !dbg !904
  br i1 %19, label %20, label %32, !dbg !905

20:                                               ; preds = %15
  call void @llvm.dbg.declare(metadata ptr %2, metadata !906, metadata !DIExpression()), !dbg !908
  %21 = load i32, ptr %1, align 4, !dbg !909
  store i32 %21, ptr %2, align 4, !dbg !908
  call void @llvm.dbg.declare(metadata ptr %3, metadata !910, metadata !DIExpression()), !dbg !911
  %22 = call noalias noundef nonnull ptr @_Znwm(i64 noundef 16) #9, !dbg !912, !heapallocsite !19
  store ptr %2, ptr %4, align 8, !dbg !913
  %23 = load i32, ptr %1, align 4, !dbg !914
  %24 = add nsw i32 %23, 1, !dbg !915
  store i32 %24, ptr %5, align 4, !dbg !914
  invoke void @_ZNSt4pairIPiiEC2IS0_iLb1EEEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(12) %22, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(4) %5)
          to label %25 unwind label %28, !dbg !916

25:                                               ; preds = %20
  store ptr %22, ptr %3, align 8, !dbg !911
  %26 = load ptr, ptr %3, align 8, !dbg !917
  %27 = call i32 @pthread_create(ptr noundef @tid, ptr noundef null, ptr noundef @_Z5func1Pv, ptr noundef %26) #10, !dbg !918
  br label %48, !dbg !919

28:                                               ; preds = %20
  %29 = landingpad { ptr, i32 }
          cleanup, !dbg !920
  %30 = extractvalue { ptr, i32 } %29, 0, !dbg !920
  store ptr %30, ptr %6, align 8, !dbg !920
  %31 = extractvalue { ptr, i32 } %29, 1, !dbg !920
  store i32 %31, ptr %7, align 4, !dbg !920
  call void @_ZdlPv(ptr noundef %22) #8, !dbg !912
  br label %50, !dbg !912

32:                                               ; preds = %15
  call void @llvm.dbg.declare(metadata ptr %8, metadata !921, metadata !DIExpression()), !dbg !923
  %33 = call noalias noundef nonnull ptr @_Znwm(i64 noundef 4) #9, !dbg !924, !heapallocsite !43
  store i32 10, ptr %33, align 4, !dbg !924
  store ptr %33, ptr %8, align 8, !dbg !923
  call void @llvm.dbg.declare(metadata ptr %9, metadata !925, metadata !DIExpression()), !dbg !926
  call void @llvm.dbg.declare(metadata ptr %10, metadata !927, metadata !DIExpression()), !dbg !928
  %34 = call noalias noundef nonnull ptr @_Znwm(i64 noundef 16) #9, !dbg !929, !heapallocsite !19
  %35 = load i32, ptr %1, align 4, !dbg !930
  %36 = add nsw i32 %35, 1, !dbg !931
  store i32 %36, ptr %11, align 4, !dbg !930
  invoke void @_ZNSt4pairIPiiEC2IRS0_iLb1EEEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(12) %34, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 4 dereferenceable(4) %11)
          to label %37 unwind label %44, !dbg !932

37:                                               ; preds = %32
  store ptr %34, ptr %10, align 8, !dbg !928
  %38 = load ptr, ptr %10, align 8, !dbg !933
  %39 = call i32 @pthread_create(ptr noundef %9, ptr noundef null, ptr noundef @_Z5func1Pv, ptr noundef %38) #10, !dbg !934
  %40 = load ptr, ptr %8, align 8, !dbg !935
  %41 = icmp eq ptr %40, null, !dbg !936
  br i1 %41, label %43, label %42, !dbg !936

42:                                               ; preds = %37
  call void @_ZdlPv(ptr noundef %40) #8, !dbg !936
  br label %43, !dbg !936

43:                                               ; preds = %42, %37
  br label %48

44:                                               ; preds = %32
  %45 = landingpad { ptr, i32 }
          cleanup, !dbg !937
  %46 = extractvalue { ptr, i32 } %45, 0, !dbg !937
  store ptr %46, ptr %6, align 8, !dbg !937
  %47 = extractvalue { ptr, i32 } %45, 1, !dbg !937
  store i32 %47, ptr %7, align 4, !dbg !937
  call void @_ZdlPv(ptr noundef %34) #8, !dbg !929
  br label %50, !dbg !929

48:                                               ; preds = %43, %25
  br label %12, !dbg !897, !llvm.loop !938

49:                                               ; preds = %12
  ret i32 0, !dbg !941

50:                                               ; preds = %44, %28
  %51 = load ptr, ptr %6, align 8, !dbg !912
  %52 = load i32, ptr %7, align 4, !dbg !912
  %53 = insertvalue { ptr, i32 } poison, ptr %51, 0, !dbg !912
  %54 = insertvalue { ptr, i32 } %53, i32 %52, 1, !dbg !912
  resume { ptr, i32 } %54, !dbg !912
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt4pairIPiiEC2IS0_iLb1EEEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #5 comdat align 2 !dbg !942 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !950, metadata !DIExpression()), !dbg !951
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !952, metadata !DIExpression()), !dbg !953
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !954, metadata !DIExpression()), !dbg !955
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds %"struct.std::pair", ptr %7, i32 0, i32 0, !dbg !956
  %9 = load ptr, ptr %5, align 8, !dbg !957
  %10 = load ptr, ptr %9, align 8, !dbg !958
  store ptr %10, ptr %8, align 8, !dbg !956
  %11 = getelementptr inbounds %"struct.std::pair", ptr %7, i32 0, i32 1, !dbg !959
  %12 = load ptr, ptr %6, align 8, !dbg !960
  %13 = load i32, ptr %12, align 4, !dbg !961
  store i32 %13, ptr %11, align 8, !dbg !959
  ret void, !dbg !962
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt4pairIPiiEC2IRS0_iLb1EEEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #5 comdat align 2 !dbg !963 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !970, metadata !DIExpression()), !dbg !971
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !972, metadata !DIExpression()), !dbg !973
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !974, metadata !DIExpression()), !dbg !975
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds %"struct.std::pair", ptr %7, i32 0, i32 0, !dbg !976
  %9 = load ptr, ptr %5, align 8, !dbg !977
  %10 = load ptr, ptr %9, align 8, !dbg !978
  store ptr %10, ptr %8, align 8, !dbg !976
  %11 = getelementptr inbounds %"struct.std::pair", ptr %7, i32 0, i32 1, !dbg !979
  %12 = load ptr, ptr %6, align 8, !dbg !980
  %13 = load i32, ptr %12, align 4, !dbg !981
  store i32 %13, ptr %11, align 8, !dbg !979
  ret void, !dbg !982
}

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main() #7 !dbg !983 {
  %1 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  %2 = call noundef i32 @_Z11spawnThreadv(), !dbg !984
  ret i32 0, !dbg !985
}

attributes #0 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { builtin nounwind }
attributes #9 = { builtin allocsize(0) }
attributes #10 = { nounwind }

!llvm.dbg.cu = !{!15}
!llvm.module.flags = !{!854, !855, !856, !857, !858, !859, !860}
!llvm.ident = !{!861}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 13, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Thread_creation_Patterns/Thread_in_loop/Thread_in_while_loop_bug.cpp", directory: "/home/cs22mtech12008", checksumkind: CSK_MD5, checksum: "9b61aa95f5f63354ba2632def176cfd4")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !6)
!4 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !{!7}
!7 = !DISubrange(count: 24)
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(scope: null, file: !2, line: 13, type: !10, isLocal: true, isDefinition: true)
!10 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !11)
!11 = !{!12}
!12 = !DISubrange(count: 15)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "tid", scope: !15, file: !2, line: 17, type: !852, isLocal: false, isDefinition: true)
!15 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !16, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !17, globals: !80, imports: !81, splitDebugInlining: false, nameTableKind: None)
!16 = !DIFile(filename: "/home/cs22mtech12008/Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Thread_creation_Patterns/Thread_in_loop/Thread_in_while_loop_bug.cpp", directory: "/home/cs22mtech12008/UseAfterScope/Scripts", checksumkind: CSK_MD5, checksum: "9b61aa95f5f63354ba2632def176cfd4")
!17 = !{!18, !24, !19}
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pair<int *, int>", scope: !21, file: !20, line: 187, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !22, templateParams: !77, identifier: "_ZTSSt4pairIPiiE")
!20 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/stl_pair.h", directory: "", checksumkind: CSK_MD5, checksum: "73730f2e40d95437864180754ecd0b92")
!21 = !DINamespace(name: "std", scope: null)
!22 = !{!23, !45, !46, !47, !53, !57, !61, !72}
!23 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !19, baseType: !24, extraData: i32 0)
!24 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__pair_base<int *, int>", scope: !21, file: !20, line: 163, size: 8, flags: DIFlagTypePassByValue, elements: !25, templateParams: !40, identifier: "_ZTSSt11__pair_baseIPiiE")
!25 = !{!26, !30, !31, !36}
!26 = !DISubprogram(name: "__pair_base", scope: !24, file: !20, line: 167, type: !27, scopeLine: 167, flags: DIFlagPrototyped, spFlags: 0)
!27 = !DISubroutineType(types: !28)
!28 = !{null, !29}
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!30 = !DISubprogram(name: "~__pair_base", scope: !24, file: !20, line: 168, type: !27, scopeLine: 168, flags: DIFlagPrototyped, spFlags: 0)
!31 = !DISubprogram(name: "__pair_base", scope: !24, file: !20, line: 169, type: !32, scopeLine: 169, flags: DIFlagPrototyped, spFlags: 0)
!32 = !DISubroutineType(types: !33)
!33 = !{null, !29, !34}
!34 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!36 = !DISubprogram(name: "operator=", linkageName: "_ZNSt11__pair_baseIPiiEaSERKS1_", scope: !24, file: !20, line: 170, type: !37, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagDeleted)
!37 = !DISubroutineType(types: !38)
!38 = !{!39, !29, !34}
!39 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !24, size: 64)
!40 = !{!41, !44}
!41 = !DITemplateTypeParameter(name: "_U1", type: !42)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!44 = !DITemplateTypeParameter(name: "_U2", type: !43)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !19, file: !20, line: 193, baseType: !42, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "second", scope: !19, file: !20, line: 194, baseType: !43, size: 32, offset: 64)
!47 = !DISubprogram(name: "pair", scope: !19, file: !20, line: 197, type: !48, scopeLine: 197, flags: DIFlagPrototyped, spFlags: 0)
!48 = !DISubroutineType(types: !49)
!49 = !{null, !50, !51}
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!51 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!53 = !DISubprogram(name: "pair", scope: !19, file: !20, line: 198, type: !54, scopeLine: 198, flags: DIFlagPrototyped, spFlags: 0)
!54 = !DISubroutineType(types: !55)
!55 = !{null, !50, !56}
!56 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !19, size: 64)
!57 = !DISubprogram(name: "swap", linkageName: "_ZNSt4pairIPiiE4swapERS1_", scope: !19, file: !20, line: 206, type: !58, scopeLine: 206, flags: DIFlagPrototyped, spFlags: 0)
!58 = !DISubroutineType(types: !59)
!59 = !{null, !50, !60}
!60 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !19, size: 64)
!61 = !DISubprogram(name: "operator=", linkageName: "_ZNSt4pairIPiiEaSERKS1_", scope: !19, file: !20, line: 727, type: !62, scopeLine: 727, flags: DIFlagPrototyped, spFlags: 0)
!62 = !DISubroutineType(types: !63)
!63 = !{!60, !50, !64}
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "__conditional_t<__and_<is_copy_assignable<int *>, is_copy_assignable<int> >::value, const pair<int *, int> &, const __nonesuch &>", scope: !21, file: !65, line: 134, baseType: !66)
!65 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/type_traits", directory: "")
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "type<const std::pair<int *, int> &, const std::__nonesuch &>", scope: !67, file: !65, line: 122, baseType: !51)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__conditional<true>", scope: !21, file: !65, line: 119, size: 8, flags: DIFlagTypePassByValue, elements: !68, templateParams: !69, identifier: "_ZTSSt13__conditionalILb1EE")
!68 = !{}
!69 = !{!70}
!70 = !DITemplateValueParameter(type: !71, value: i1 true)
!71 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!72 = !DISubprogram(name: "operator=", linkageName: "_ZNSt4pairIPiiEaSEOS1_", scope: !19, file: !20, line: 737, type: !73, scopeLine: 737, flags: DIFlagPrototyped, spFlags: 0)
!73 = !DISubroutineType(types: !74)
!74 = !{!60, !50, !75}
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "__conditional_t<__and_<is_move_assignable<int *>, is_move_assignable<int> >::value, pair<int *, int> &&, __nonesuch &&>", scope: !21, file: !65, line: 134, baseType: !76)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "type<std::pair<int *, int> &&, std::__nonesuch &&>", scope: !67, file: !65, line: 122, baseType: !56)
!77 = !{!78, !79}
!78 = !DITemplateTypeParameter(name: "_T1", type: !42)
!79 = !DITemplateTypeParameter(name: "_T2", type: !43)
!80 = !{!0, !8, !13}
!81 = !{!82, !100, !103, !108, !116, !124, !128, !135, !139, !143, !145, !147, !151, !162, !166, !172, !178, !180, !184, !188, !192, !196, !209, !211, !215, !219, !223, !225, !231, !235, !239, !241, !243, !247, !255, !259, !263, !267, !269, !275, !277, !284, !289, !293, !298, !302, !306, !310, !312, !314, !318, !322, !326, !328, !332, !336, !338, !340, !344, !350, !355, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !374, !378, !383, !387, !391, !396, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !432, !436, !440, !446, !450, !454, !459, !461, !465, !469, !473, !483, !485, !489, !493, !497, !501, !505, !509, !513, !517, !521, !525, !529, !531, !535, !539, !543, !549, !553, !557, !559, !563, !567, !573, !575, !579, !583, !587, !591, !595, !599, !603, !604, !605, !606, !608, !609, !610, !611, !612, !613, !614, !618, !624, !629, !633, !635, !637, !639, !641, !648, !652, !656, !660, !664, !668, !673, !677, !679, !683, !689, !693, !698, !700, !702, !706, !710, !712, !714, !716, !718, !722, !724, !726, !730, !734, !738, !742, !746, !750, !752, !756, !760, !764, !768, !770, !772, !776, !780, !781, !782, !783, !784, !785, !793, !801, !804, !805, !807, !809, !811, !813, !817, !819, !821, !823, !825, !827, !829, !831, !833, !837, !841, !843, !847, !851}
!82 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !83, file: !99, line: 64)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !84, line: 6, baseType: !85)
!84 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !86, line: 21, baseType: !87)
!86 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !86, line: 13, size: 64, flags: DIFlagTypePassByValue, elements: !88, identifier: "_ZTS11__mbstate_t")
!88 = !{!89, !90}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !87, file: !86, line: 15, baseType: !43, size: 32)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !87, file: !86, line: 20, baseType: !91, size: 32, offset: 32)
!91 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !87, file: !86, line: 16, size: 32, flags: DIFlagTypePassByValue, elements: !92, identifier: "_ZTSN11__mbstate_tUt_E")
!92 = !{!93, !95}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !91, file: !86, line: 18, baseType: !94, size: 32)
!94 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !91, file: !86, line: 19, baseType: !96, size: 32)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 32, elements: !97)
!97 = !{!98}
!98 = !DISubrange(count: 4)
!99 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cwchar", directory: "")
!100 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !101, file: !99, line: 141)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !102, line: 20, baseType: !94)
!102 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!103 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !104, file: !99, line: 143)
!104 = !DISubprogram(name: "btowc", scope: !105, file: !105, line: 284, type: !106, flags: DIFlagPrototyped, spFlags: 0)
!105 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "8900d9ecbbe40d052c41becfbc5b5531")
!106 = !DISubroutineType(types: !107)
!107 = !{!101, !43}
!108 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !109, file: !99, line: 144)
!109 = !DISubprogram(name: "fgetwc", scope: !105, file: !105, line: 726, type: !110, flags: DIFlagPrototyped, spFlags: 0)
!110 = !DISubroutineType(types: !111)
!111 = !{!101, !112}
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !114, line: 5, baseType: !115)
!114 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "72a8fe90981f484acae7c6f3dfc5c2b7")
!115 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !114, line: 4, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS8_IO_FILE")
!116 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !117, file: !99, line: 145)
!117 = !DISubprogram(name: "fgetws", scope: !105, file: !105, line: 755, type: !118, flags: DIFlagPrototyped, spFlags: 0)
!118 = !DISubroutineType(types: !119)
!119 = !{!120, !122, !43, !123}
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!122 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !120)
!123 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !112)
!124 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !125, file: !99, line: 146)
!125 = !DISubprogram(name: "fputwc", scope: !105, file: !105, line: 740, type: !126, flags: DIFlagPrototyped, spFlags: 0)
!126 = !DISubroutineType(types: !127)
!127 = !{!101, !121, !112}
!128 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !129, file: !99, line: 147)
!129 = !DISubprogram(name: "fputws", scope: !105, file: !105, line: 762, type: !130, flags: DIFlagPrototyped, spFlags: 0)
!130 = !DISubroutineType(types: !131)
!131 = !{!43, !132, !123}
!132 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !133)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !121)
!135 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !136, file: !99, line: 148)
!136 = !DISubprogram(name: "fwide", scope: !105, file: !105, line: 573, type: !137, flags: DIFlagPrototyped, spFlags: 0)
!137 = !DISubroutineType(types: !138)
!138 = !{!43, !112, !43}
!139 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !140, file: !99, line: 149)
!140 = !DISubprogram(name: "fwprintf", scope: !105, file: !105, line: 580, type: !141, flags: DIFlagPrototyped, spFlags: 0)
!141 = !DISubroutineType(types: !142)
!142 = !{!43, !123, !132, null}
!143 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !144, file: !99, line: 150)
!144 = !DISubprogram(name: "fwscanf", linkageName: "__isoc99_fwscanf", scope: !105, file: !105, line: 640, type: !141, flags: DIFlagPrototyped, spFlags: 0)
!145 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !146, file: !99, line: 151)
!146 = !DISubprogram(name: "getwc", scope: !105, file: !105, line: 727, type: !110, flags: DIFlagPrototyped, spFlags: 0)
!147 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !148, file: !99, line: 152)
!148 = !DISubprogram(name: "getwchar", scope: !105, file: !105, line: 733, type: !149, flags: DIFlagPrototyped, spFlags: 0)
!149 = !DISubroutineType(types: !150)
!150 = !{!101}
!151 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !152, file: !99, line: 153)
!152 = !DISubprogram(name: "mbrlen", scope: !105, file: !105, line: 307, type: !153, flags: DIFlagPrototyped, spFlags: 0)
!153 = !DISubroutineType(types: !154)
!154 = !{!155, !158, !155, !160}
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !156, line: 46, baseType: !157)
!156 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/cs22mtech12008", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!157 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!158 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !159)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !161)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!162 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !163, file: !99, line: 154)
!163 = !DISubprogram(name: "mbrtowc", scope: !105, file: !105, line: 296, type: !164, flags: DIFlagPrototyped, spFlags: 0)
!164 = !DISubroutineType(types: !165)
!165 = !{!155, !122, !158, !155, !160}
!166 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !167, file: !99, line: 155)
!167 = !DISubprogram(name: "mbsinit", scope: !105, file: !105, line: 292, type: !168, flags: DIFlagPrototyped, spFlags: 0)
!168 = !DISubroutineType(types: !169)
!169 = !{!43, !170}
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !83)
!172 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !173, file: !99, line: 156)
!173 = !DISubprogram(name: "mbsrtowcs", scope: !105, file: !105, line: 337, type: !174, flags: DIFlagPrototyped, spFlags: 0)
!174 = !DISubroutineType(types: !175)
!175 = !{!155, !122, !176, !155, !160}
!176 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !177)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!178 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !179, file: !99, line: 157)
!179 = !DISubprogram(name: "putwc", scope: !105, file: !105, line: 741, type: !126, flags: DIFlagPrototyped, spFlags: 0)
!180 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !181, file: !99, line: 158)
!181 = !DISubprogram(name: "putwchar", scope: !105, file: !105, line: 747, type: !182, flags: DIFlagPrototyped, spFlags: 0)
!182 = !DISubroutineType(types: !183)
!183 = !{!101, !121}
!184 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !185, file: !99, line: 160)
!185 = !DISubprogram(name: "swprintf", scope: !105, file: !105, line: 590, type: !186, flags: DIFlagPrototyped, spFlags: 0)
!186 = !DISubroutineType(types: !187)
!187 = !{!43, !122, !155, !132, null}
!188 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !189, file: !99, line: 162)
!189 = !DISubprogram(name: "swscanf", linkageName: "__isoc99_swscanf", scope: !105, file: !105, line: 647, type: !190, flags: DIFlagPrototyped, spFlags: 0)
!190 = !DISubroutineType(types: !191)
!191 = !{!43, !132, !132, null}
!192 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !193, file: !99, line: 163)
!193 = !DISubprogram(name: "ungetwc", scope: !105, file: !105, line: 770, type: !194, flags: DIFlagPrototyped, spFlags: 0)
!194 = !DISubroutineType(types: !195)
!195 = !{!101, !101, !112}
!196 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !197, file: !99, line: 164)
!197 = !DISubprogram(name: "vfwprintf", scope: !105, file: !105, line: 598, type: !198, flags: DIFlagPrototyped, spFlags: 0)
!198 = !DISubroutineType(types: !199)
!199 = !{!43, !123, !132, !200}
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, flags: DIFlagTypePassByValue, elements: !202, identifier: "_ZTS13__va_list_tag")
!202 = !{!203, !205, !206, !208}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !201, file: !204, baseType: !94, size: 32)
!204 = !DIFile(filename: "Reproduced_UAF/Synthetic_bugs/PTHREAD_VERSION/Thread_creation_Patterns/Thread_in_loop/Thread_in_while_loop_bug.cpp", directory: "/home/cs22mtech12008")
!205 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !201, file: !204, baseType: !94, size: 32, offset: 32)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !201, file: !204, baseType: !207, size: 64, offset: 64)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !201, file: !204, baseType: !207, size: 64, offset: 128)
!209 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !210, file: !99, line: 166)
!210 = !DISubprogram(name: "vfwscanf", linkageName: "__isoc99_vfwscanf", scope: !105, file: !105, line: 693, type: !198, flags: DIFlagPrototyped, spFlags: 0)
!211 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !212, file: !99, line: 169)
!212 = !DISubprogram(name: "vswprintf", scope: !105, file: !105, line: 611, type: !213, flags: DIFlagPrototyped, spFlags: 0)
!213 = !DISubroutineType(types: !214)
!214 = !{!43, !122, !155, !132, !200}
!215 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !216, file: !99, line: 172)
!216 = !DISubprogram(name: "vswscanf", linkageName: "__isoc99_vswscanf", scope: !105, file: !105, line: 700, type: !217, flags: DIFlagPrototyped, spFlags: 0)
!217 = !DISubroutineType(types: !218)
!218 = !{!43, !132, !132, !200}
!219 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !220, file: !99, line: 174)
!220 = !DISubprogram(name: "vwprintf", scope: !105, file: !105, line: 606, type: !221, flags: DIFlagPrototyped, spFlags: 0)
!221 = !DISubroutineType(types: !222)
!222 = !{!43, !132, !200}
!223 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !224, file: !99, line: 176)
!224 = !DISubprogram(name: "vwscanf", linkageName: "__isoc99_vwscanf", scope: !105, file: !105, line: 697, type: !221, flags: DIFlagPrototyped, spFlags: 0)
!225 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !226, file: !99, line: 178)
!226 = !DISubprogram(name: "wcrtomb", scope: !105, file: !105, line: 301, type: !227, flags: DIFlagPrototyped, spFlags: 0)
!227 = !DISubroutineType(types: !228)
!228 = !{!155, !229, !121, !160}
!229 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !230)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!231 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !232, file: !99, line: 179)
!232 = !DISubprogram(name: "wcscat", scope: !105, file: !105, line: 97, type: !233, flags: DIFlagPrototyped, spFlags: 0)
!233 = !DISubroutineType(types: !234)
!234 = !{!120, !122, !132}
!235 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !236, file: !99, line: 180)
!236 = !DISubprogram(name: "wcscmp", scope: !105, file: !105, line: 106, type: !237, flags: DIFlagPrototyped, spFlags: 0)
!237 = !DISubroutineType(types: !238)
!238 = !{!43, !133, !133}
!239 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !240, file: !99, line: 181)
!240 = !DISubprogram(name: "wcscoll", scope: !105, file: !105, line: 131, type: !237, flags: DIFlagPrototyped, spFlags: 0)
!241 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !242, file: !99, line: 182)
!242 = !DISubprogram(name: "wcscpy", scope: !105, file: !105, line: 87, type: !233, flags: DIFlagPrototyped, spFlags: 0)
!243 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !244, file: !99, line: 183)
!244 = !DISubprogram(name: "wcscspn", scope: !105, file: !105, line: 187, type: !245, flags: DIFlagPrototyped, spFlags: 0)
!245 = !DISubroutineType(types: !246)
!246 = !{!155, !133, !133}
!247 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !248, file: !99, line: 184)
!248 = !DISubprogram(name: "wcsftime", scope: !105, file: !105, line: 834, type: !249, flags: DIFlagPrototyped, spFlags: 0)
!249 = !DISubroutineType(types: !250)
!250 = !{!155, !122, !155, !132, !251}
!251 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !252)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !254)
!254 = !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !105, line: 83, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS2tm")
!255 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !256, file: !99, line: 185)
!256 = !DISubprogram(name: "wcslen", scope: !105, file: !105, line: 222, type: !257, flags: DIFlagPrototyped, spFlags: 0)
!257 = !DISubroutineType(types: !258)
!258 = !{!155, !133}
!259 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !260, file: !99, line: 186)
!260 = !DISubprogram(name: "wcsncat", scope: !105, file: !105, line: 101, type: !261, flags: DIFlagPrototyped, spFlags: 0)
!261 = !DISubroutineType(types: !262)
!262 = !{!120, !122, !132, !155}
!263 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !264, file: !99, line: 187)
!264 = !DISubprogram(name: "wcsncmp", scope: !105, file: !105, line: 109, type: !265, flags: DIFlagPrototyped, spFlags: 0)
!265 = !DISubroutineType(types: !266)
!266 = !{!43, !133, !133, !155}
!267 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !268, file: !99, line: 188)
!268 = !DISubprogram(name: "wcsncpy", scope: !105, file: !105, line: 92, type: !261, flags: DIFlagPrototyped, spFlags: 0)
!269 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !270, file: !99, line: 189)
!270 = !DISubprogram(name: "wcsrtombs", scope: !105, file: !105, line: 343, type: !271, flags: DIFlagPrototyped, spFlags: 0)
!271 = !DISubroutineType(types: !272)
!272 = !{!155, !229, !273, !155, !160}
!273 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !274)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!275 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !276, file: !99, line: 190)
!276 = !DISubprogram(name: "wcsspn", scope: !105, file: !105, line: 191, type: !245, flags: DIFlagPrototyped, spFlags: 0)
!277 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !278, file: !99, line: 191)
!278 = !DISubprogram(name: "wcstod", scope: !105, file: !105, line: 377, type: !279, flags: DIFlagPrototyped, spFlags: 0)
!279 = !DISubroutineType(types: !280)
!280 = !{!281, !132, !282}
!281 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!282 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !283)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!284 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !285, file: !99, line: 193)
!285 = !DISubprogram(name: "wcstof", scope: !105, file: !105, line: 382, type: !286, flags: DIFlagPrototyped, spFlags: 0)
!286 = !DISubroutineType(types: !287)
!287 = !{!288, !132, !282}
!288 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!289 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !290, file: !99, line: 195)
!290 = !DISubprogram(name: "wcstok", scope: !105, file: !105, line: 217, type: !291, flags: DIFlagPrototyped, spFlags: 0)
!291 = !DISubroutineType(types: !292)
!292 = !{!120, !122, !132, !282}
!293 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !294, file: !99, line: 196)
!294 = !DISubprogram(name: "wcstol", scope: !105, file: !105, line: 428, type: !295, flags: DIFlagPrototyped, spFlags: 0)
!295 = !DISubroutineType(types: !296)
!296 = !{!297, !132, !282, !43}
!297 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!298 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !299, file: !99, line: 197)
!299 = !DISubprogram(name: "wcstoul", scope: !105, file: !105, line: 433, type: !300, flags: DIFlagPrototyped, spFlags: 0)
!300 = !DISubroutineType(types: !301)
!301 = !{!157, !132, !282, !43}
!302 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !303, file: !99, line: 198)
!303 = !DISubprogram(name: "wcsxfrm", scope: !105, file: !105, line: 135, type: !304, flags: DIFlagPrototyped, spFlags: 0)
!304 = !DISubroutineType(types: !305)
!305 = !{!155, !122, !132, !155}
!306 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !307, file: !99, line: 199)
!307 = !DISubprogram(name: "wctob", scope: !105, file: !105, line: 288, type: !308, flags: DIFlagPrototyped, spFlags: 0)
!308 = !DISubroutineType(types: !309)
!309 = !{!43, !101}
!310 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !311, file: !99, line: 200)
!311 = !DISubprogram(name: "wmemcmp", scope: !105, file: !105, line: 258, type: !265, flags: DIFlagPrototyped, spFlags: 0)
!312 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !313, file: !99, line: 201)
!313 = !DISubprogram(name: "wmemcpy", scope: !105, file: !105, line: 262, type: !261, flags: DIFlagPrototyped, spFlags: 0)
!314 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !315, file: !99, line: 202)
!315 = !DISubprogram(name: "wmemmove", scope: !105, file: !105, line: 267, type: !316, flags: DIFlagPrototyped, spFlags: 0)
!316 = !DISubroutineType(types: !317)
!317 = !{!120, !120, !133, !155}
!318 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !319, file: !99, line: 203)
!319 = !DISubprogram(name: "wmemset", scope: !105, file: !105, line: 271, type: !320, flags: DIFlagPrototyped, spFlags: 0)
!320 = !DISubroutineType(types: !321)
!321 = !{!120, !120, !121, !155}
!322 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !323, file: !99, line: 204)
!323 = !DISubprogram(name: "wprintf", scope: !105, file: !105, line: 587, type: !324, flags: DIFlagPrototyped, spFlags: 0)
!324 = !DISubroutineType(types: !325)
!325 = !{!43, !132, null}
!326 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !327, file: !99, line: 205)
!327 = !DISubprogram(name: "wscanf", linkageName: "__isoc99_wscanf", scope: !105, file: !105, line: 644, type: !324, flags: DIFlagPrototyped, spFlags: 0)
!328 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !329, file: !99, line: 206)
!329 = !DISubprogram(name: "wcschr", scope: !105, file: !105, line: 164, type: !330, flags: DIFlagPrototyped, spFlags: 0)
!330 = !DISubroutineType(types: !331)
!331 = !{!120, !133, !121}
!332 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !333, file: !99, line: 207)
!333 = !DISubprogram(name: "wcspbrk", scope: !105, file: !105, line: 201, type: !334, flags: DIFlagPrototyped, spFlags: 0)
!334 = !DISubroutineType(types: !335)
!335 = !{!120, !133, !133}
!336 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !337, file: !99, line: 208)
!337 = !DISubprogram(name: "wcsrchr", scope: !105, file: !105, line: 174, type: !330, flags: DIFlagPrototyped, spFlags: 0)
!338 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !339, file: !99, line: 209)
!339 = !DISubprogram(name: "wcsstr", scope: !105, file: !105, line: 212, type: !334, flags: DIFlagPrototyped, spFlags: 0)
!340 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !341, file: !99, line: 210)
!341 = !DISubprogram(name: "wmemchr", scope: !105, file: !105, line: 253, type: !342, flags: DIFlagPrototyped, spFlags: 0)
!342 = !DISubroutineType(types: !343)
!343 = !{!120, !133, !121, !155}
!344 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !345, entity: !346, file: !99, line: 251)
!345 = !DINamespace(name: "__gnu_cxx", scope: null)
!346 = !DISubprogram(name: "wcstold", scope: !105, file: !105, line: 384, type: !347, flags: DIFlagPrototyped, spFlags: 0)
!347 = !DISubroutineType(types: !348)
!348 = !{!349, !132, !282}
!349 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!350 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !345, entity: !351, file: !99, line: 260)
!351 = !DISubprogram(name: "wcstoll", scope: !105, file: !105, line: 441, type: !352, flags: DIFlagPrototyped, spFlags: 0)
!352 = !DISubroutineType(types: !353)
!353 = !{!354, !132, !282, !43}
!354 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!355 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !345, entity: !356, file: !99, line: 261)
!356 = !DISubprogram(name: "wcstoull", scope: !105, file: !105, line: 448, type: !357, flags: DIFlagPrototyped, spFlags: 0)
!357 = !DISubroutineType(types: !358)
!358 = !{!359, !132, !282, !43}
!359 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!360 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !346, file: !99, line: 267)
!361 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !351, file: !99, line: 268)
!362 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !356, file: !99, line: 269)
!363 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !285, file: !99, line: 283)
!364 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !210, file: !99, line: 286)
!365 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !216, file: !99, line: 289)
!366 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !224, file: !99, line: 292)
!367 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !346, file: !99, line: 296)
!368 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !351, file: !99, line: 297)
!369 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !356, file: !99, line: 298)
!370 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !371, file: !372, line: 66)
!371 = !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !373, file: !372, line: 97, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!372 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/exception_ptr.h", directory: "", checksumkind: CSK_MD5, checksum: "314ad14748ccb9ff85c65d17ebb0828b")
!373 = !DINamespace(name: "__exception_ptr", scope: !21)
!374 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !373, entity: !375, file: !372, line: 85)
!375 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !21, file: !372, line: 81, type: !376, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!376 = !DISubroutineType(types: !377)
!377 = !{null, !371}
!378 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !379, file: !372, line: 243)
!379 = !DISubprogram(name: "swap", linkageName: "_ZNSt15__exception_ptr4swapERNS_13exception_ptrES1_", scope: !373, file: !372, line: 230, type: !380, flags: DIFlagPrototyped, spFlags: 0)
!380 = !DISubroutineType(types: !381)
!381 = !{null, !382, !382}
!382 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !371, size: 64)
!383 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !384, file: !386, line: 53)
!384 = !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !385, line: 51, size: 768, flags: DIFlagFwdDecl, identifier: "_ZTS5lconv")
!385 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "0cf373fc44eed8073800bdb9da87b72f")
!386 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/clocale", directory: "")
!387 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !388, file: !386, line: 54)
!388 = !DISubprogram(name: "setlocale", scope: !385, file: !385, line: 122, type: !389, flags: DIFlagPrototyped, spFlags: 0)
!389 = !DISubroutineType(types: !390)
!390 = !{!230, !43, !159}
!391 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !392, file: !386, line: 55)
!392 = !DISubprogram(name: "localeconv", scope: !385, file: !385, line: 125, type: !393, flags: DIFlagPrototyped, spFlags: 0)
!393 = !DISubroutineType(types: !394)
!394 = !{!395}
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!396 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !397, file: !401, line: 64)
!397 = !DISubprogram(name: "isalnum", scope: !398, file: !398, line: 108, type: !399, flags: DIFlagPrototyped, spFlags: 0)
!398 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "36575f934ef4fe7e9d50a3cb17bd5c66")
!399 = !DISubroutineType(types: !400)
!400 = !{!43, !43}
!401 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cctype", directory: "")
!402 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !403, file: !401, line: 65)
!403 = !DISubprogram(name: "isalpha", scope: !398, file: !398, line: 109, type: !399, flags: DIFlagPrototyped, spFlags: 0)
!404 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !405, file: !401, line: 66)
!405 = !DISubprogram(name: "iscntrl", scope: !398, file: !398, line: 110, type: !399, flags: DIFlagPrototyped, spFlags: 0)
!406 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !407, file: !401, line: 67)
!407 = !DISubprogram(name: "isdigit", scope: !398, file: !398, line: 111, type: !399, flags: DIFlagPrototyped, spFlags: 0)
!408 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !409, file: !401, line: 68)
!409 = !DISubprogram(name: "isgraph", scope: !398, file: !398, line: 113, type: !399, flags: DIFlagPrototyped, spFlags: 0)
!410 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !411, file: !401, line: 69)
!411 = !DISubprogram(name: "islower", scope: !398, file: !398, line: 112, type: !399, flags: DIFlagPrototyped, spFlags: 0)
!412 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !413, file: !401, line: 70)
!413 = !DISubprogram(name: "isprint", scope: !398, file: !398, line: 114, type: !399, flags: DIFlagPrototyped, spFlags: 0)
!414 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !415, file: !401, line: 71)
!415 = !DISubprogram(name: "ispunct", scope: !398, file: !398, line: 115, type: !399, flags: DIFlagPrototyped, spFlags: 0)
!416 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !417, file: !401, line: 72)
!417 = !DISubprogram(name: "isspace", scope: !398, file: !398, line: 116, type: !399, flags: DIFlagPrototyped, spFlags: 0)
!418 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !419, file: !401, line: 73)
!419 = !DISubprogram(name: "isupper", scope: !398, file: !398, line: 117, type: !399, flags: DIFlagPrototyped, spFlags: 0)
!420 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !421, file: !401, line: 74)
!421 = !DISubprogram(name: "isxdigit", scope: !398, file: !398, line: 118, type: !399, flags: DIFlagPrototyped, spFlags: 0)
!422 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !423, file: !401, line: 75)
!423 = !DISubprogram(name: "tolower", scope: !398, file: !398, line: 122, type: !399, flags: DIFlagPrototyped, spFlags: 0)
!424 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !425, file: !401, line: 76)
!425 = !DISubprogram(name: "toupper", scope: !398, file: !398, line: 125, type: !399, flags: DIFlagPrototyped, spFlags: 0)
!426 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !427, file: !401, line: 87)
!427 = !DISubprogram(name: "isblank", scope: !398, file: !398, line: 130, type: !399, flags: DIFlagPrototyped, spFlags: 0)
!428 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !429, entity: !430, file: !431, line: 58)
!429 = !DINamespace(name: "__gnu_debug", scope: null)
!430 = !DINamespace(name: "__debug", scope: !21)
!431 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/debug/debug.h", directory: "", checksumkind: CSK_MD5, checksum: "752210a319f5f5d356cc29cd1ce3cdc7")
!432 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !433, file: !435, line: 52)
!433 = !DISubprogram(name: "abs", scope: !434, file: !434, line: 840, type: !399, flags: DIFlagPrototyped, spFlags: 0)
!434 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!435 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/std_abs.h", directory: "")
!436 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !437, file: !439, line: 131)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !434, line: 62, baseType: !438)
!438 = !DICompositeType(tag: DW_TAG_structure_type, file: !434, line: 58, size: 64, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!439 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cstdlib", directory: "")
!440 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !441, file: !439, line: 132)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !434, line: 70, baseType: !442)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !434, line: 66, size: 128, flags: DIFlagTypePassByValue, elements: !443, identifier: "_ZTS6ldiv_t")
!443 = !{!444, !445}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !442, file: !434, line: 68, baseType: !297, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !442, file: !434, line: 69, baseType: !297, size: 64, offset: 64)
!446 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !447, file: !439, line: 134)
!447 = !DISubprogram(name: "abort", scope: !434, file: !434, line: 591, type: !448, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!448 = !DISubroutineType(types: !449)
!449 = !{null}
!450 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !451, file: !439, line: 136)
!451 = !DISubprogram(name: "aligned_alloc", scope: !434, file: !434, line: 586, type: !452, flags: DIFlagPrototyped, spFlags: 0)
!452 = !DISubroutineType(types: !453)
!453 = !{!207, !155, !155}
!454 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !455, file: !439, line: 138)
!455 = !DISubprogram(name: "atexit", scope: !434, file: !434, line: 595, type: !456, flags: DIFlagPrototyped, spFlags: 0)
!456 = !DISubroutineType(types: !457)
!457 = !{!43, !458}
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!459 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !460, file: !439, line: 141)
!460 = !DISubprogram(name: "at_quick_exit", scope: !434, file: !434, line: 600, type: !456, flags: DIFlagPrototyped, spFlags: 0)
!461 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !462, file: !439, line: 144)
!462 = !DISubprogram(name: "atof", scope: !434, file: !434, line: 101, type: !463, flags: DIFlagPrototyped, spFlags: 0)
!463 = !DISubroutineType(types: !464)
!464 = !{!281, !159}
!465 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !466, file: !439, line: 145)
!466 = !DISubprogram(name: "atoi", scope: !434, file: !434, line: 104, type: !467, flags: DIFlagPrototyped, spFlags: 0)
!467 = !DISubroutineType(types: !468)
!468 = !{!43, !159}
!469 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !470, file: !439, line: 146)
!470 = !DISubprogram(name: "atol", scope: !434, file: !434, line: 107, type: !471, flags: DIFlagPrototyped, spFlags: 0)
!471 = !DISubroutineType(types: !472)
!472 = !{!297, !159}
!473 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !474, file: !439, line: 147)
!474 = !DISubprogram(name: "bsearch", scope: !434, file: !434, line: 820, type: !475, flags: DIFlagPrototyped, spFlags: 0)
!475 = !DISubroutineType(types: !476)
!476 = !{!207, !477, !477, !155, !155, !479}
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !434, line: 808, baseType: !480)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DISubroutineType(types: !482)
!482 = !{!43, !477, !477}
!483 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !484, file: !439, line: 148)
!484 = !DISubprogram(name: "calloc", scope: !434, file: !434, line: 542, type: !452, flags: DIFlagPrototyped, spFlags: 0)
!485 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !486, file: !439, line: 149)
!486 = !DISubprogram(name: "div", scope: !434, file: !434, line: 852, type: !487, flags: DIFlagPrototyped, spFlags: 0)
!487 = !DISubroutineType(types: !488)
!488 = !{!437, !43, !43}
!489 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !490, file: !439, line: 150)
!490 = !DISubprogram(name: "exit", scope: !434, file: !434, line: 617, type: !491, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!491 = !DISubroutineType(types: !492)
!492 = !{null, !43}
!493 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !494, file: !439, line: 151)
!494 = !DISubprogram(name: "free", scope: !434, file: !434, line: 565, type: !495, flags: DIFlagPrototyped, spFlags: 0)
!495 = !DISubroutineType(types: !496)
!496 = !{null, !207}
!497 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !498, file: !439, line: 152)
!498 = !DISubprogram(name: "getenv", scope: !434, file: !434, line: 634, type: !499, flags: DIFlagPrototyped, spFlags: 0)
!499 = !DISubroutineType(types: !500)
!500 = !{!230, !159}
!501 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !502, file: !439, line: 153)
!502 = !DISubprogram(name: "labs", scope: !434, file: !434, line: 841, type: !503, flags: DIFlagPrototyped, spFlags: 0)
!503 = !DISubroutineType(types: !504)
!504 = !{!297, !297}
!505 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !506, file: !439, line: 154)
!506 = !DISubprogram(name: "ldiv", scope: !434, file: !434, line: 854, type: !507, flags: DIFlagPrototyped, spFlags: 0)
!507 = !DISubroutineType(types: !508)
!508 = !{!441, !297, !297}
!509 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !510, file: !439, line: 155)
!510 = !DISubprogram(name: "malloc", scope: !434, file: !434, line: 539, type: !511, flags: DIFlagPrototyped, spFlags: 0)
!511 = !DISubroutineType(types: !512)
!512 = !{!207, !155}
!513 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !514, file: !439, line: 157)
!514 = !DISubprogram(name: "mblen", scope: !434, file: !434, line: 922, type: !515, flags: DIFlagPrototyped, spFlags: 0)
!515 = !DISubroutineType(types: !516)
!516 = !{!43, !159, !155}
!517 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !518, file: !439, line: 158)
!518 = !DISubprogram(name: "mbstowcs", scope: !434, file: !434, line: 933, type: !519, flags: DIFlagPrototyped, spFlags: 0)
!519 = !DISubroutineType(types: !520)
!520 = !{!155, !122, !158, !155}
!521 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !522, file: !439, line: 159)
!522 = !DISubprogram(name: "mbtowc", scope: !434, file: !434, line: 925, type: !523, flags: DIFlagPrototyped, spFlags: 0)
!523 = !DISubroutineType(types: !524)
!524 = !{!43, !122, !158, !155}
!525 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !526, file: !439, line: 161)
!526 = !DISubprogram(name: "qsort", scope: !434, file: !434, line: 830, type: !527, flags: DIFlagPrototyped, spFlags: 0)
!527 = !DISubroutineType(types: !528)
!528 = !{null, !207, !155, !155, !479}
!529 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !530, file: !439, line: 164)
!530 = !DISubprogram(name: "quick_exit", scope: !434, file: !434, line: 623, type: !491, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!531 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !532, file: !439, line: 167)
!532 = !DISubprogram(name: "rand", scope: !434, file: !434, line: 453, type: !533, flags: DIFlagPrototyped, spFlags: 0)
!533 = !DISubroutineType(types: !534)
!534 = !{!43}
!535 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !536, file: !439, line: 168)
!536 = !DISubprogram(name: "realloc", scope: !434, file: !434, line: 550, type: !537, flags: DIFlagPrototyped, spFlags: 0)
!537 = !DISubroutineType(types: !538)
!538 = !{!207, !207, !155}
!539 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !540, file: !439, line: 169)
!540 = !DISubprogram(name: "srand", scope: !434, file: !434, line: 455, type: !541, flags: DIFlagPrototyped, spFlags: 0)
!541 = !DISubroutineType(types: !542)
!542 = !{null, !94}
!543 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !544, file: !439, line: 170)
!544 = !DISubprogram(name: "strtod", scope: !434, file: !434, line: 117, type: !545, flags: DIFlagPrototyped, spFlags: 0)
!545 = !DISubroutineType(types: !546)
!546 = !{!281, !158, !547}
!547 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !548)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!549 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !550, file: !439, line: 171)
!550 = !DISubprogram(name: "strtol", scope: !434, file: !434, line: 176, type: !551, flags: DIFlagPrototyped, spFlags: 0)
!551 = !DISubroutineType(types: !552)
!552 = !{!297, !158, !547, !43}
!553 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !554, file: !439, line: 172)
!554 = !DISubprogram(name: "strtoul", scope: !434, file: !434, line: 180, type: !555, flags: DIFlagPrototyped, spFlags: 0)
!555 = !DISubroutineType(types: !556)
!556 = !{!157, !158, !547, !43}
!557 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !558, file: !439, line: 173)
!558 = !DISubprogram(name: "system", scope: !434, file: !434, line: 784, type: !467, flags: DIFlagPrototyped, spFlags: 0)
!559 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !560, file: !439, line: 175)
!560 = !DISubprogram(name: "wcstombs", scope: !434, file: !434, line: 936, type: !561, flags: DIFlagPrototyped, spFlags: 0)
!561 = !DISubroutineType(types: !562)
!562 = !{!155, !229, !132, !155}
!563 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !564, file: !439, line: 176)
!564 = !DISubprogram(name: "wctomb", scope: !434, file: !434, line: 929, type: !565, flags: DIFlagPrototyped, spFlags: 0)
!565 = !DISubroutineType(types: !566)
!566 = !{!43, !230, !121}
!567 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !345, entity: !568, file: !439, line: 204)
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !434, line: 80, baseType: !569)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !434, line: 76, size: 128, flags: DIFlagTypePassByValue, elements: !570, identifier: "_ZTS7lldiv_t")
!570 = !{!571, !572}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !569, file: !434, line: 78, baseType: !354, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !569, file: !434, line: 79, baseType: !354, size: 64, offset: 64)
!573 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !345, entity: !574, file: !439, line: 210)
!574 = !DISubprogram(name: "_Exit", scope: !434, file: !434, line: 629, type: !491, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!575 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !345, entity: !576, file: !439, line: 214)
!576 = !DISubprogram(name: "llabs", scope: !434, file: !434, line: 844, type: !577, flags: DIFlagPrototyped, spFlags: 0)
!577 = !DISubroutineType(types: !578)
!578 = !{!354, !354}
!579 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !345, entity: !580, file: !439, line: 220)
!580 = !DISubprogram(name: "lldiv", scope: !434, file: !434, line: 858, type: !581, flags: DIFlagPrototyped, spFlags: 0)
!581 = !DISubroutineType(types: !582)
!582 = !{!568, !354, !354}
!583 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !345, entity: !584, file: !439, line: 231)
!584 = !DISubprogram(name: "atoll", scope: !434, file: !434, line: 112, type: !585, flags: DIFlagPrototyped, spFlags: 0)
!585 = !DISubroutineType(types: !586)
!586 = !{!354, !159}
!587 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !345, entity: !588, file: !439, line: 232)
!588 = !DISubprogram(name: "strtoll", scope: !434, file: !434, line: 200, type: !589, flags: DIFlagPrototyped, spFlags: 0)
!589 = !DISubroutineType(types: !590)
!590 = !{!354, !158, !547, !43}
!591 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !345, entity: !592, file: !439, line: 233)
!592 = !DISubprogram(name: "strtoull", scope: !434, file: !434, line: 205, type: !593, flags: DIFlagPrototyped, spFlags: 0)
!593 = !DISubroutineType(types: !594)
!594 = !{!359, !158, !547, !43}
!595 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !345, entity: !596, file: !439, line: 235)
!596 = !DISubprogram(name: "strtof", scope: !434, file: !434, line: 123, type: !597, flags: DIFlagPrototyped, spFlags: 0)
!597 = !DISubroutineType(types: !598)
!598 = !{!288, !158, !547}
!599 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !345, entity: !600, file: !439, line: 236)
!600 = !DISubprogram(name: "strtold", scope: !434, file: !434, line: 126, type: !601, flags: DIFlagPrototyped, spFlags: 0)
!601 = !DISubroutineType(types: !602)
!602 = !{!349, !158, !547}
!603 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !568, file: !439, line: 244)
!604 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !574, file: !439, line: 246)
!605 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !576, file: !439, line: 248)
!606 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !607, file: !439, line: 249)
!607 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !345, file: !439, line: 217, type: !581, flags: DIFlagPrototyped, spFlags: 0)
!608 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !580, file: !439, line: 250)
!609 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !584, file: !439, line: 252)
!610 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !596, file: !439, line: 253)
!611 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !588, file: !439, line: 254)
!612 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !592, file: !439, line: 255)
!613 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !600, file: !439, line: 256)
!614 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !615, file: !617, line: 98)
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !616, line: 7, baseType: !115)
!616 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!617 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cstdio", directory: "")
!618 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !619, file: !617, line: 99)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !620, line: 84, baseType: !621)
!620 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fpos_t", file: !622, line: 14, baseType: !623)
!622 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h", directory: "", checksumkind: CSK_MD5, checksum: "32de8bdaf3551a6c0a9394f9af4389ce")
!623 = !DICompositeType(tag: DW_TAG_structure_type, name: "_G_fpos_t", file: !622, line: 10, size: 128, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
!624 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !625, file: !617, line: 101)
!625 = !DISubprogram(name: "clearerr", scope: !620, file: !620, line: 757, type: !626, flags: DIFlagPrototyped, spFlags: 0)
!626 = !DISubroutineType(types: !627)
!627 = !{null, !628}
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!629 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !630, file: !617, line: 102)
!630 = !DISubprogram(name: "fclose", scope: !620, file: !620, line: 213, type: !631, flags: DIFlagPrototyped, spFlags: 0)
!631 = !DISubroutineType(types: !632)
!632 = !{!43, !628}
!633 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !634, file: !617, line: 103)
!634 = !DISubprogram(name: "feof", scope: !620, file: !620, line: 759, type: !631, flags: DIFlagPrototyped, spFlags: 0)
!635 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !636, file: !617, line: 104)
!636 = !DISubprogram(name: "ferror", scope: !620, file: !620, line: 761, type: !631, flags: DIFlagPrototyped, spFlags: 0)
!637 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !638, file: !617, line: 105)
!638 = !DISubprogram(name: "fflush", scope: !620, file: !620, line: 218, type: !631, flags: DIFlagPrototyped, spFlags: 0)
!639 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !640, file: !617, line: 106)
!640 = !DISubprogram(name: "fgetc", scope: !620, file: !620, line: 485, type: !631, flags: DIFlagPrototyped, spFlags: 0)
!641 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !642, file: !617, line: 107)
!642 = !DISubprogram(name: "fgetpos", scope: !620, file: !620, line: 731, type: !643, flags: DIFlagPrototyped, spFlags: 0)
!643 = !DISubroutineType(types: !644)
!644 = !{!43, !645, !646}
!645 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !628)
!646 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !647)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!648 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !649, file: !617, line: 108)
!649 = !DISubprogram(name: "fgets", scope: !620, file: !620, line: 564, type: !650, flags: DIFlagPrototyped, spFlags: 0)
!650 = !DISubroutineType(types: !651)
!651 = !{!230, !229, !43, !645}
!652 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !653, file: !617, line: 109)
!653 = !DISubprogram(name: "fopen", scope: !620, file: !620, line: 246, type: !654, flags: DIFlagPrototyped, spFlags: 0)
!654 = !DISubroutineType(types: !655)
!655 = !{!628, !158, !158}
!656 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !657, file: !617, line: 110)
!657 = !DISubprogram(name: "fprintf", scope: !620, file: !620, line: 326, type: !658, flags: DIFlagPrototyped, spFlags: 0)
!658 = !DISubroutineType(types: !659)
!659 = !{!43, !645, !158, null}
!660 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !661, file: !617, line: 111)
!661 = !DISubprogram(name: "fputc", scope: !620, file: !620, line: 521, type: !662, flags: DIFlagPrototyped, spFlags: 0)
!662 = !DISubroutineType(types: !663)
!663 = !{!43, !43, !628}
!664 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !665, file: !617, line: 112)
!665 = !DISubprogram(name: "fputs", scope: !620, file: !620, line: 626, type: !666, flags: DIFlagPrototyped, spFlags: 0)
!666 = !DISubroutineType(types: !667)
!667 = !{!43, !158, !645}
!668 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !669, file: !617, line: 113)
!669 = !DISubprogram(name: "fread", scope: !620, file: !620, line: 646, type: !670, flags: DIFlagPrototyped, spFlags: 0)
!670 = !DISubroutineType(types: !671)
!671 = !{!155, !672, !155, !155, !645}
!672 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !207)
!673 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !674, file: !617, line: 114)
!674 = !DISubprogram(name: "freopen", scope: !620, file: !620, line: 252, type: !675, flags: DIFlagPrototyped, spFlags: 0)
!675 = !DISubroutineType(types: !676)
!676 = !{!628, !158, !158, !645}
!677 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !678, file: !617, line: 115)
!678 = !DISubprogram(name: "fscanf", linkageName: "__isoc99_fscanf", scope: !620, file: !620, line: 407, type: !658, flags: DIFlagPrototyped, spFlags: 0)
!679 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !680, file: !617, line: 116)
!680 = !DISubprogram(name: "fseek", scope: !620, file: !620, line: 684, type: !681, flags: DIFlagPrototyped, spFlags: 0)
!681 = !DISubroutineType(types: !682)
!682 = !{!43, !628, !297, !43}
!683 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !684, file: !617, line: 117)
!684 = !DISubprogram(name: "fsetpos", scope: !620, file: !620, line: 736, type: !685, flags: DIFlagPrototyped, spFlags: 0)
!685 = !DISubroutineType(types: !686)
!686 = !{!43, !628, !687}
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !619)
!689 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !690, file: !617, line: 118)
!690 = !DISubprogram(name: "ftell", scope: !620, file: !620, line: 689, type: !691, flags: DIFlagPrototyped, spFlags: 0)
!691 = !DISubroutineType(types: !692)
!692 = !{!297, !628}
!693 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !694, file: !617, line: 119)
!694 = !DISubprogram(name: "fwrite", scope: !620, file: !620, line: 652, type: !695, flags: DIFlagPrototyped, spFlags: 0)
!695 = !DISubroutineType(types: !696)
!696 = !{!155, !697, !155, !155, !645}
!697 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !477)
!698 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !699, file: !617, line: 120)
!699 = !DISubprogram(name: "getc", scope: !620, file: !620, line: 486, type: !631, flags: DIFlagPrototyped, spFlags: 0)
!700 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !701, file: !617, line: 121)
!701 = !DISubprogram(name: "getchar", scope: !620, file: !620, line: 492, type: !533, flags: DIFlagPrototyped, spFlags: 0)
!702 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !703, file: !617, line: 126)
!703 = !DISubprogram(name: "perror", scope: !620, file: !620, line: 775, type: !704, flags: DIFlagPrototyped, spFlags: 0)
!704 = !DISubroutineType(types: !705)
!705 = !{null, !159}
!706 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !707, file: !617, line: 127)
!707 = !DISubprogram(name: "printf", scope: !620, file: !620, line: 332, type: !708, flags: DIFlagPrototyped, spFlags: 0)
!708 = !DISubroutineType(types: !709)
!709 = !{!43, !158, null}
!710 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !711, file: !617, line: 128)
!711 = !DISubprogram(name: "putc", scope: !620, file: !620, line: 522, type: !662, flags: DIFlagPrototyped, spFlags: 0)
!712 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !713, file: !617, line: 129)
!713 = !DISubprogram(name: "putchar", scope: !620, file: !620, line: 528, type: !399, flags: DIFlagPrototyped, spFlags: 0)
!714 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !715, file: !617, line: 130)
!715 = !DISubprogram(name: "puts", scope: !620, file: !620, line: 632, type: !467, flags: DIFlagPrototyped, spFlags: 0)
!716 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !717, file: !617, line: 131)
!717 = !DISubprogram(name: "remove", scope: !620, file: !620, line: 146, type: !467, flags: DIFlagPrototyped, spFlags: 0)
!718 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !719, file: !617, line: 132)
!719 = !DISubprogram(name: "rename", scope: !620, file: !620, line: 148, type: !720, flags: DIFlagPrototyped, spFlags: 0)
!720 = !DISubroutineType(types: !721)
!721 = !{!43, !159, !159}
!722 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !723, file: !617, line: 133)
!723 = !DISubprogram(name: "rewind", scope: !620, file: !620, line: 694, type: !626, flags: DIFlagPrototyped, spFlags: 0)
!724 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !725, file: !617, line: 134)
!725 = !DISubprogram(name: "scanf", linkageName: "__isoc99_scanf", scope: !620, file: !620, line: 410, type: !708, flags: DIFlagPrototyped, spFlags: 0)
!726 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !727, file: !617, line: 135)
!727 = !DISubprogram(name: "setbuf", scope: !620, file: !620, line: 304, type: !728, flags: DIFlagPrototyped, spFlags: 0)
!728 = !DISubroutineType(types: !729)
!729 = !{null, !645, !229}
!730 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !731, file: !617, line: 136)
!731 = !DISubprogram(name: "setvbuf", scope: !620, file: !620, line: 308, type: !732, flags: DIFlagPrototyped, spFlags: 0)
!732 = !DISubroutineType(types: !733)
!733 = !{!43, !645, !229, !43, !155}
!734 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !735, file: !617, line: 137)
!735 = !DISubprogram(name: "sprintf", scope: !620, file: !620, line: 334, type: !736, flags: DIFlagPrototyped, spFlags: 0)
!736 = !DISubroutineType(types: !737)
!737 = !{!43, !229, !158, null}
!738 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !739, file: !617, line: 138)
!739 = !DISubprogram(name: "sscanf", linkageName: "__isoc99_sscanf", scope: !620, file: !620, line: 412, type: !740, flags: DIFlagPrototyped, spFlags: 0)
!740 = !DISubroutineType(types: !741)
!741 = !{!43, !158, !158, null}
!742 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !743, file: !617, line: 139)
!743 = !DISubprogram(name: "tmpfile", scope: !620, file: !620, line: 173, type: !744, flags: DIFlagPrototyped, spFlags: 0)
!744 = !DISubroutineType(types: !745)
!745 = !{!628}
!746 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !747, file: !617, line: 141)
!747 = !DISubprogram(name: "tmpnam", scope: !620, file: !620, line: 187, type: !748, flags: DIFlagPrototyped, spFlags: 0)
!748 = !DISubroutineType(types: !749)
!749 = !{!230, !230}
!750 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !751, file: !617, line: 143)
!751 = !DISubprogram(name: "ungetc", scope: !620, file: !620, line: 639, type: !662, flags: DIFlagPrototyped, spFlags: 0)
!752 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !753, file: !617, line: 144)
!753 = !DISubprogram(name: "vfprintf", scope: !620, file: !620, line: 341, type: !754, flags: DIFlagPrototyped, spFlags: 0)
!754 = !DISubroutineType(types: !755)
!755 = !{!43, !645, !158, !200}
!756 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !757, file: !617, line: 145)
!757 = !DISubprogram(name: "vprintf", scope: !620, file: !620, line: 347, type: !758, flags: DIFlagPrototyped, spFlags: 0)
!758 = !DISubroutineType(types: !759)
!759 = !{!43, !158, !200}
!760 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !761, file: !617, line: 146)
!761 = !DISubprogram(name: "vsprintf", scope: !620, file: !620, line: 349, type: !762, flags: DIFlagPrototyped, spFlags: 0)
!762 = !DISubroutineType(types: !763)
!763 = !{!43, !229, !158, !200}
!764 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !345, entity: !765, file: !617, line: 175)
!765 = !DISubprogram(name: "snprintf", scope: !620, file: !620, line: 354, type: !766, flags: DIFlagPrototyped, spFlags: 0)
!766 = !DISubroutineType(types: !767)
!767 = !{!43, !229, !155, !158, null}
!768 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !345, entity: !769, file: !617, line: 176)
!769 = !DISubprogram(name: "vfscanf", linkageName: "__isoc99_vfscanf", scope: !620, file: !620, line: 451, type: !754, flags: DIFlagPrototyped, spFlags: 0)
!770 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !345, entity: !771, file: !617, line: 177)
!771 = !DISubprogram(name: "vscanf", linkageName: "__isoc99_vscanf", scope: !620, file: !620, line: 456, type: !758, flags: DIFlagPrototyped, spFlags: 0)
!772 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !345, entity: !773, file: !617, line: 178)
!773 = !DISubprogram(name: "vsnprintf", scope: !620, file: !620, line: 358, type: !774, flags: DIFlagPrototyped, spFlags: 0)
!774 = !DISubroutineType(types: !775)
!775 = !{!43, !229, !155, !158, !200}
!776 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !345, entity: !777, file: !617, line: 179)
!777 = !DISubprogram(name: "vsscanf", linkageName: "__isoc99_vsscanf", scope: !620, file: !620, line: 459, type: !778, flags: DIFlagPrototyped, spFlags: 0)
!778 = !DISubroutineType(types: !779)
!779 = !{!43, !158, !158, !200}
!780 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !765, file: !617, line: 185)
!781 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !769, file: !617, line: 186)
!782 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !771, file: !617, line: 187)
!783 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !773, file: !617, line: 188)
!784 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !777, file: !617, line: 189)
!785 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !786, file: !792, line: 58)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "max_align_t", file: !787, line: 24, baseType: !788)
!787 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/__stddef_max_align_t.h", directory: "/home/cs22mtech12008", checksumkind: CSK_MD5, checksum: "48e8e2456f77e6cda35d245130fa7259")
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !787, line: 19, size: 256, flags: DIFlagTypePassByValue, elements: !789, identifier: "_ZTS11max_align_t")
!789 = !{!790, !791}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "__clang_max_align_nonce1", scope: !788, file: !787, line: 20, baseType: !354, size: 64, align: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "__clang_max_align_nonce2", scope: !788, file: !787, line: 22, baseType: !349, size: 128, align: 128, offset: 128)
!792 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cstddef", directory: "")
!793 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !794, file: !800, line: 82)
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctrans_t", file: !795, line: 48, baseType: !796)
!795 = !DIFile(filename: "/usr/include/wctype.h", directory: "", checksumkind: CSK_MD5, checksum: "e83097fbf57cc71ea472db59df3ba75d")
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !798)
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !799, line: 41, baseType: !43)
!799 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!800 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cwctype", directory: "")
!801 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !802, file: !800, line: 83)
!802 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctype_t", file: !803, line: 38, baseType: !157)
!803 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "3598b9d23ef5d76319026b46e316b55f")
!804 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !101, file: !800, line: 84)
!805 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !806, file: !800, line: 86)
!806 = !DISubprogram(name: "iswalnum", scope: !803, file: !803, line: 95, type: !308, flags: DIFlagPrototyped, spFlags: 0)
!807 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !808, file: !800, line: 87)
!808 = !DISubprogram(name: "iswalpha", scope: !803, file: !803, line: 101, type: !308, flags: DIFlagPrototyped, spFlags: 0)
!809 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !810, file: !800, line: 89)
!810 = !DISubprogram(name: "iswblank", scope: !803, file: !803, line: 146, type: !308, flags: DIFlagPrototyped, spFlags: 0)
!811 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !812, file: !800, line: 91)
!812 = !DISubprogram(name: "iswcntrl", scope: !803, file: !803, line: 104, type: !308, flags: DIFlagPrototyped, spFlags: 0)
!813 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !814, file: !800, line: 92)
!814 = !DISubprogram(name: "iswctype", scope: !803, file: !803, line: 159, type: !815, flags: DIFlagPrototyped, spFlags: 0)
!815 = !DISubroutineType(types: !816)
!816 = !{!43, !101, !802}
!817 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !818, file: !800, line: 93)
!818 = !DISubprogram(name: "iswdigit", scope: !803, file: !803, line: 108, type: !308, flags: DIFlagPrototyped, spFlags: 0)
!819 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !820, file: !800, line: 94)
!820 = !DISubprogram(name: "iswgraph", scope: !803, file: !803, line: 112, type: !308, flags: DIFlagPrototyped, spFlags: 0)
!821 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !822, file: !800, line: 95)
!822 = !DISubprogram(name: "iswlower", scope: !803, file: !803, line: 117, type: !308, flags: DIFlagPrototyped, spFlags: 0)
!823 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !824, file: !800, line: 96)
!824 = !DISubprogram(name: "iswprint", scope: !803, file: !803, line: 120, type: !308, flags: DIFlagPrototyped, spFlags: 0)
!825 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !826, file: !800, line: 97)
!826 = !DISubprogram(name: "iswpunct", scope: !803, file: !803, line: 125, type: !308, flags: DIFlagPrototyped, spFlags: 0)
!827 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !828, file: !800, line: 98)
!828 = !DISubprogram(name: "iswspace", scope: !803, file: !803, line: 130, type: !308, flags: DIFlagPrototyped, spFlags: 0)
!829 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !830, file: !800, line: 99)
!830 = !DISubprogram(name: "iswupper", scope: !803, file: !803, line: 135, type: !308, flags: DIFlagPrototyped, spFlags: 0)
!831 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !832, file: !800, line: 100)
!832 = !DISubprogram(name: "iswxdigit", scope: !803, file: !803, line: 140, type: !308, flags: DIFlagPrototyped, spFlags: 0)
!833 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !834, file: !800, line: 101)
!834 = !DISubprogram(name: "towctrans", scope: !795, file: !795, line: 55, type: !835, flags: DIFlagPrototyped, spFlags: 0)
!835 = !DISubroutineType(types: !836)
!836 = !{!101, !101, !794}
!837 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !838, file: !800, line: 102)
!838 = !DISubprogram(name: "towlower", scope: !803, file: !803, line: 166, type: !839, flags: DIFlagPrototyped, spFlags: 0)
!839 = !DISubroutineType(types: !840)
!840 = !{!101, !101}
!841 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !842, file: !800, line: 103)
!842 = !DISubprogram(name: "towupper", scope: !803, file: !803, line: 169, type: !839, flags: DIFlagPrototyped, spFlags: 0)
!843 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !844, file: !800, line: 104)
!844 = !DISubprogram(name: "wctrans", scope: !795, file: !795, line: 52, type: !845, flags: DIFlagPrototyped, spFlags: 0)
!845 = !DISubroutineType(types: !846)
!846 = !{!794, !159}
!847 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !21, entity: !848, file: !800, line: 105)
!848 = !DISubprogram(name: "wctype", scope: !803, file: !803, line: 155, type: !849, flags: DIFlagPrototyped, spFlags: 0)
!849 = !DISubroutineType(types: !850)
!850 = !{!802, !159}
!851 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !15, entity: !21, file: !2, line: 5)
!852 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !853, line: 27, baseType: !157)
!853 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "2d764266ce95ab26d4a4767c2ec78176")
!854 = !{i32 7, !"Dwarf Version", i32 5}
!855 = !{i32 2, !"Debug Info Version", i32 3}
!856 = !{i32 1, !"wchar_size", i32 4}
!857 = !{i32 8, !"PIC Level", i32 2}
!858 = !{i32 7, !"PIE Level", i32 2}
!859 = !{i32 7, !"uwtable", i32 2}
!860 = !{i32 7, !"frame-pointer", i32 2}
!861 = !{!"clang version 16.0.0"}
!862 = distinct !DISubprogram(name: "func1", linkageName: "_Z5func1Pv", scope: !2, file: !2, line: 8, type: !863, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !68)
!863 = !DISubroutineType(types: !864)
!864 = !{!207, !207}
!865 = !DILocalVariable(name: "args", arg: 1, scope: !862, file: !2, line: 8, type: !207)
!866 = !DILocation(line: 8, column: 19, scope: !862)
!867 = !DILocalVariable(name: "data", scope: !862, file: !2, line: 9, type: !18)
!868 = !DILocation(line: 9, column: 11, scope: !862)
!869 = !DILocation(line: 9, column: 48, scope: !862)
!870 = !DILocalVariable(name: "y", scope: !862, file: !2, line: 10, type: !42)
!871 = !DILocation(line: 10, column: 10, scope: !862)
!872 = !DILocation(line: 10, column: 14, scope: !862)
!873 = !DILocation(line: 10, column: 20, scope: !862)
!874 = !DILocalVariable(name: "id", scope: !862, file: !2, line: 11, type: !43)
!875 = !DILocation(line: 11, column: 9, scope: !862)
!876 = !DILocation(line: 11, column: 14, scope: !862)
!877 = !DILocation(line: 11, column: 20, scope: !862)
!878 = !DILocation(line: 12, column: 11, scope: !862)
!879 = !DILocation(line: 12, column: 10, scope: !862)
!880 = !DILocation(line: 12, column: 13, scope: !862)
!881 = !DILocation(line: 12, column: 6, scope: !862)
!882 = !DILocation(line: 12, column: 8, scope: !862)
!883 = !DILocation(line: 13, column: 10, scope: !862)
!884 = !DILocation(line: 13, column: 42, scope: !862)
!885 = !DILocation(line: 13, column: 39, scope: !862)
!886 = !DILocation(line: 13, column: 45, scope: !862)
!887 = !DILocation(line: 13, column: 69, scope: !862)
!888 = !DILocation(line: 13, column: 68, scope: !862)
!889 = !DILocation(line: 13, column: 65, scope: !862)
!890 = !DILocation(line: 13, column: 71, scope: !862)
!891 = !DILocation(line: 14, column: 12, scope: !862)
!892 = !DILocation(line: 14, column: 5, scope: !862)
!893 = !DILocation(line: 15, column: 5, scope: !862)
!894 = distinct !DISubprogram(name: "spawnThread", linkageName: "_Z11spawnThreadv", scope: !2, file: !2, line: 18, type: !533, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !68)
!895 = !DILocalVariable(name: "i", scope: !894, file: !2, line: 19, type: !43)
!896 = !DILocation(line: 19, column: 9, scope: !894)
!897 = !DILocation(line: 21, column: 5, scope: !894)
!898 = !DILocation(line: 21, column: 12, scope: !894)
!899 = !DILocation(line: 21, column: 14, scope: !894)
!900 = !DILocation(line: 22, column: 10, scope: !901)
!901 = distinct !DILexicalBlock(scope: !894, file: !2, line: 21, column: 20)
!902 = !DILocation(line: 23, column: 13, scope: !903)
!903 = distinct !DILexicalBlock(scope: !901, file: !2, line: 23, column: 13)
!904 = !DILocation(line: 23, column: 15, scope: !903)
!905 = !DILocation(line: 23, column: 13, scope: !901)
!906 = !DILocalVariable(name: "sharedData", scope: !907, file: !2, line: 24, type: !43)
!907 = distinct !DILexicalBlock(scope: !903, file: !2, line: 23, column: 21)
!908 = !DILocation(line: 24, column: 17, scope: !907)
!909 = !DILocation(line: 24, column: 29, scope: !907)
!910 = !DILocalVariable(name: "args", scope: !907, file: !2, line: 26, type: !18)
!911 = !DILocation(line: 26, column: 19, scope: !907)
!912 = !DILocation(line: 26, column: 26, scope: !907)
!913 = !DILocation(line: 26, column: 46, scope: !907)
!914 = !DILocation(line: 26, column: 59, scope: !907)
!915 = !DILocation(line: 26, column: 61, scope: !907)
!916 = !DILocation(line: 26, column: 30, scope: !907)
!917 = !DILocation(line: 27, column: 50, scope: !907)
!918 = !DILocation(line: 27, column: 13, scope: !907)
!919 = !DILocation(line: 30, column: 9, scope: !907)
!920 = !DILocation(line: 41, column: 1, scope: !907)
!921 = !DILocalVariable(name: "localData", scope: !922, file: !2, line: 31, type: !42)
!922 = distinct !DILexicalBlock(scope: !903, file: !2, line: 30, column: 16)
!923 = !DILocation(line: 31, column: 18, scope: !922)
!924 = !DILocation(line: 31, column: 30, scope: !922)
!925 = !DILocalVariable(name: "tid", scope: !922, file: !2, line: 32, type: !852)
!926 = !DILocation(line: 32, column: 23, scope: !922)
!927 = !DILocalVariable(name: "args", scope: !922, file: !2, line: 33, type: !18)
!928 = !DILocation(line: 33, column: 19, scope: !922)
!929 = !DILocation(line: 33, column: 26, scope: !922)
!930 = !DILocation(line: 33, column: 57, scope: !922)
!931 = !DILocation(line: 33, column: 59, scope: !922)
!932 = !DILocation(line: 33, column: 30, scope: !922)
!933 = !DILocation(line: 34, column: 50, scope: !922)
!934 = !DILocation(line: 34, column: 13, scope: !922)
!935 = !DILocation(line: 36, column: 20, scope: !922)
!936 = !DILocation(line: 36, column: 13, scope: !922)
!937 = !DILocation(line: 41, column: 1, scope: !922)
!938 = distinct !{!938, !897, !939, !940}
!939 = !DILocation(line: 38, column: 5, scope: !894)
!940 = !{!"llvm.loop.mustprogress"}
!941 = !DILocation(line: 40, column: 5, scope: !894)
!942 = distinct !DISubprogram(name: "pair<int *, int, true>", linkageName: "_ZNSt4pairIPiiEC2IS0_iLb1EEEOT_OT0_", scope: !19, file: !20, line: 687, type: !943, scopeLine: 689, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, templateParams: !948, declaration: !947, retainedNodes: !68)
!943 = !DISubroutineType(types: !944)
!944 = !{null, !50, !945, !946}
!945 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !42, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !43, size: 64)
!947 = !DISubprogram(name: "pair<int *, int, true>", scope: !19, file: !20, line: 687, type: !943, scopeLine: 687, flags: DIFlagPrototyped, spFlags: 0, templateParams: !948)
!948 = !{!41, !44, !949}
!949 = !DITemplateValueParameter(type: !71, defaulted: true, value: i1 true)
!950 = !DILocalVariable(name: "this", arg: 1, scope: !942, type: !18, flags: DIFlagArtificial | DIFlagObjectPointer)
!951 = !DILocation(line: 0, scope: !942)
!952 = !DILocalVariable(name: "__x", arg: 2, scope: !942, file: !20, line: 687, type: !945)
!953 = !DILocation(line: 687, column: 23, scope: !942)
!954 = !DILocalVariable(name: "__y", arg: 3, scope: !942, file: !20, line: 687, type: !946)
!955 = !DILocation(line: 687, column: 34, scope: !942)
!956 = !DILocation(line: 688, column: 4, scope: !942)
!957 = !DILocation(line: 688, column: 28, scope: !942)
!958 = !DILocation(line: 688, column: 10, scope: !942)
!959 = !DILocation(line: 688, column: 35, scope: !942)
!960 = !DILocation(line: 688, column: 60, scope: !942)
!961 = !DILocation(line: 688, column: 42, scope: !942)
!962 = !DILocation(line: 689, column: 46, scope: !942)
!963 = distinct !DISubprogram(name: "pair<int *&, int, true>", linkageName: "_ZNSt4pairIPiiEC2IRS0_iLb1EEEOT_OT0_", scope: !19, file: !20, line: 687, type: !964, scopeLine: 689, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, templateParams: !968, declaration: !967, retainedNodes: !68)
!964 = !DISubroutineType(types: !965)
!965 = !{null, !50, !966, !946}
!966 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !42, size: 64)
!967 = !DISubprogram(name: "pair<int *&, int, true>", scope: !19, file: !20, line: 687, type: !964, scopeLine: 687, flags: DIFlagPrototyped, spFlags: 0, templateParams: !968)
!968 = !{!969, !44, !949}
!969 = !DITemplateTypeParameter(name: "_U1", type: !966)
!970 = !DILocalVariable(name: "this", arg: 1, scope: !963, type: !18, flags: DIFlagArtificial | DIFlagObjectPointer)
!971 = !DILocation(line: 0, scope: !963)
!972 = !DILocalVariable(name: "__x", arg: 2, scope: !963, file: !20, line: 687, type: !966)
!973 = !DILocation(line: 687, column: 23, scope: !963)
!974 = !DILocalVariable(name: "__y", arg: 3, scope: !963, file: !20, line: 687, type: !946)
!975 = !DILocation(line: 687, column: 34, scope: !963)
!976 = !DILocation(line: 688, column: 4, scope: !963)
!977 = !DILocation(line: 688, column: 28, scope: !963)
!978 = !DILocation(line: 688, column: 10, scope: !963)
!979 = !DILocation(line: 688, column: 35, scope: !963)
!980 = !DILocation(line: 688, column: 60, scope: !963)
!981 = !DILocation(line: 688, column: 42, scope: !963)
!982 = !DILocation(line: 689, column: 46, scope: !963)
!983 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 43, type: !533, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !68)
!984 = !DILocation(line: 45, column: 5, scope: !983)
!985 = !DILocation(line: 46, column: 5, scope: !983)
