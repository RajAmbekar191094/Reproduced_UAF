; ModuleID = '../TrackingBenchmark/AnnealingFactor.cpp'
source_filename = "../TrackingBenchmark/AnnealingFactor.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl" }
%"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl" = type { %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data" }
%"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.std::integral_constant" = type { i8 }
%"struct.std::random_access_iterator_tag" = type { i8 }

$_ZNKSt6vectorIfSaIfEE4sizeEv = comdat any

$_ZNSt6vectorIfSaIfEEixEm = comdat any

$_ZNSt6vectorIfSaIfEE6resizeEm = comdat any

$_ZNSt6vectorIfSaIfEE17_M_default_appendEm = comdat any

$_ZNSt6vectorIfSaIfEE15_M_erase_at_endEPf = comdat any

$_ZNKSt6vectorIfSaIfEE8max_sizeEv = comdat any

$_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E = comdat any

$_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv = comdat any

$_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc = comdat any

$_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm = comdat any

$_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm = comdat any

$__clang_call_terminate = comdat any

$_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_ = comdat any

$_ZNSt6vectorIfSaIfEE11_S_max_sizeERKS0_ = comdat any

$_ZNKSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt16allocator_traitsISaIfEE8max_sizeERKS0_ = comdat any

$_ZSt3minImERKT_S2_S2_ = comdat any

$_ZNK9__gnu_cxx13new_allocatorIfE8max_sizeEv = comdat any

$_ZNK9__gnu_cxx13new_allocatorIfE11_M_max_sizeEv = comdat any

$_ZSt25__uninitialized_default_nIPfmET_S1_T0_ = comdat any

$_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPfmEET_S3_T0_ = comdat any

$_ZSt10_ConstructIfJEEvPT_DpOT0_ = comdat any

$_ZSt6fill_nIPfmfET_S1_T0_RKT1_ = comdat any

$_ZSt10__fill_n_aIPfmfET_S1_T0_RKT1_St26random_access_iterator_tag = comdat any

$_ZSt17__size_to_integerm = comdat any

$_ZSt19__iterator_categoryIPfENSt15iterator_traitsIT_E17iterator_categoryERKS2_ = comdat any

$_ZSt8__fill_aIPffEvT_S1_RKT0_ = comdat any

$_ZSt9__fill_a1IPffEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_ = comdat any

$_ZSt3maxImERKT_S2_S2_ = comdat any

$_ZNSt16allocator_traitsISaIfEE8allocateERS0_m = comdat any

$_ZN9__gnu_cxx13new_allocatorIfE8allocateEmPKv = comdat any

$_ZNSt16allocator_traitsISaIfEE10deallocateERS0_Pfm = comdat any

$_ZN9__gnu_cxx13new_allocatorIfE10deallocateEPfm = comdat any

$_ZNSt6vectorIfSaIfEE14_S_do_relocateEPfS2_S2_RS0_St17integral_constantIbLb1EE = comdat any

$_ZSt12__relocate_aIPfS0_SaIfEET0_T_S3_S2_RT1_ = comdat any

$_ZSt14__relocate_a_1IffENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E = comdat any

$_ZSt12__niter_baseIPfET_S1_ = comdat any

$_ZSt8_DestroyIPffEvT_S1_RSaIT0_E = comdat any

$_ZSt8_DestroyIPfEvT_S1_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPfEEvT_S3_ = comdat any

@__const._Z7set_etsRSt6vectorIfSaIfEE.vals = private unnamed_addr constant [25 x float] [float 0x3FA614F800000000, float 0.000000e+00, float 0x3FC832E880000000, float 0x3FC0D289E0000000, float 0x3FC6557EA0000000, float 0x3FC6133540000000, float 0x3FC5520E80000000, float 0x3FB9D159A0000000, float 0x3FC4189C20000000, float 0x3FC2CEABE0000000, float 0x3FB81D2440000000, float 0x3FB65ED240000000, float 0x3FB9E44600000000, float 0x3FC1F1CB80000000, float 0x3FB82B6D20000000, float 0x3FC65CF200000000, float 0x3FB60DED00000000, float 0x3FC6554180000000, float 0x3FC816B180000000, float 0x3FB5A47100000000, float 0x3FC220F120000000, float 0x3FC60CC7C0000000, float 0x3FA21608E0000000, float 0x3FC89115E0000000, float 0x3FC01088C0000000], align 16
@.str = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1, !dbg !0

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef float @_Z11delta_alphafRSt6vectorIfSaIfEEf(float noundef %0, ptr noundef nonnull align 8 dereferenceable(24) %1, float noundef %2) #0 !dbg !475 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca ptr, align 8
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  store float %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !479, metadata !DIExpression()), !dbg !480
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !481, metadata !DIExpression()), !dbg !482
  store float %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !483, metadata !DIExpression()), !dbg !484
  call void @llvm.dbg.declare(metadata ptr %8, metadata !485, metadata !DIExpression()), !dbg !486
  %14 = load ptr, ptr %6, align 8, !dbg !487
  %15 = call noundef i64 @_ZNKSt6vectorIfSaIfEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %14) #9, !dbg !488
  %16 = trunc i64 %15 to i32, !dbg !487
  store i32 %16, ptr %8, align 4, !dbg !486
  call void @llvm.dbg.declare(metadata ptr %9, metadata !489, metadata !DIExpression()), !dbg !490
  store float 0.000000e+00, ptr %9, align 4, !dbg !490
  call void @llvm.dbg.declare(metadata ptr %10, metadata !491, metadata !DIExpression()), !dbg !492
  store float 0.000000e+00, ptr %10, align 4, !dbg !492
  call void @llvm.dbg.declare(metadata ptr %11, metadata !493, metadata !DIExpression()), !dbg !494
  call void @llvm.dbg.declare(metadata ptr %12, metadata !495, metadata !DIExpression()), !dbg !496
  call void @llvm.dbg.declare(metadata ptr %13, metadata !497, metadata !DIExpression()), !dbg !499
  store i32 0, ptr %13, align 4, !dbg !499
  br label %17, !dbg !500

17:                                               ; preds = %46, %3
  %18 = load i32, ptr %13, align 4, !dbg !501
  %19 = load i32, ptr %8, align 4, !dbg !503
  %20 = icmp slt i32 %18, %19, !dbg !504
  br i1 %20, label %21, label %49, !dbg !505

21:                                               ; preds = %17
  %22 = load float, ptr %5, align 4, !dbg !506
  %23 = load ptr, ptr %6, align 8, !dbg !508
  %24 = load i32, ptr %13, align 4, !dbg !509
  %25 = sext i32 %24 to i64, !dbg !509
  %26 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIfSaIfEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %23, i64 noundef %25) #9, !dbg !508
  %27 = load float, ptr %26, align 4, !dbg !508
  %28 = fmul float %22, %27, !dbg !510
  %29 = fpext float %28 to double, !dbg !506
  store double %29, ptr %12, align 8, !dbg !511
  %30 = load double, ptr %12, align 8, !dbg !512
  %31 = fcmp ogt double %30, 4.000000e+01, !dbg !514
  br i1 %31, label %32, label %35, !dbg !515

32:                                               ; preds = %21
  %33 = load float, ptr %7, align 4, !dbg !516
  %34 = fneg float %33, !dbg !517
  store float %34, ptr %4, align 4, !dbg !518
  br label %60, !dbg !518

35:                                               ; preds = %21
  %36 = load double, ptr %12, align 8, !dbg !519
  %37 = call double @exp(double noundef %36) #9, !dbg !520
  %38 = fptrunc double %37 to float, !dbg !520
  store float %38, ptr %11, align 4, !dbg !521
  %39 = load float, ptr %11, align 4, !dbg !522
  %40 = load float, ptr %9, align 4, !dbg !523
  %41 = fadd float %40, %39, !dbg !523
  store float %41, ptr %9, align 4, !dbg !523
  %42 = load float, ptr %11, align 4, !dbg !524
  %43 = load float, ptr %11, align 4, !dbg !525
  %44 = load float, ptr %10, align 4, !dbg !526
  %45 = call float @llvm.fmuladd.f32(float %42, float %43, float %44), !dbg !526
  store float %45, ptr %10, align 4, !dbg !526
  br label %46, !dbg !527

46:                                               ; preds = %35
  %47 = load i32, ptr %13, align 4, !dbg !528
  %48 = add nsw i32 %47, 1, !dbg !528
  store i32 %48, ptr %13, align 4, !dbg !528
  br label %17, !dbg !529, !llvm.loop !530

49:                                               ; preds = %17
  %50 = load float, ptr %9, align 4, !dbg !533
  %51 = load float, ptr %9, align 4, !dbg !534
  %52 = fmul float %50, %51, !dbg !535
  %53 = load float, ptr %10, align 4, !dbg !536
  %54 = fdiv float %52, %53, !dbg !537
  %55 = load i32, ptr %8, align 4, !dbg !538
  %56 = sitofp i32 %55 to float, !dbg !538
  %57 = fdiv float %54, %56, !dbg !539
  %58 = load float, ptr %7, align 4, !dbg !540
  %59 = fsub float %57, %58, !dbg !541
  store float %59, ptr %4, align 4, !dbg !542
  br label %60, !dbg !542

60:                                               ; preds = %49, %32
  %61 = load float, ptr %4, align 4, !dbg !543
  ret float %61, !dbg !543
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIfSaIfEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #0 comdat align 2 !dbg !544 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !550, metadata !DIExpression()), !dbg !552
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base", ptr %3, i32 0, i32 0, !dbg !553
  %5 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %4, i32 0, i32 1, !dbg !554
  %6 = load ptr, ptr %5, align 8, !dbg !554
  %7 = getelementptr inbounds %"struct.std::_Vector_base", ptr %3, i32 0, i32 0, !dbg !555
  %8 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %7, i32 0, i32 0, !dbg !556
  %9 = load ptr, ptr %8, align 8, !dbg !556
  %10 = ptrtoint ptr %6 to i64, !dbg !557
  %11 = ptrtoint ptr %9 to i64, !dbg !557
  %12 = sub i64 %10, %11, !dbg !557
  %13 = sdiv exact i64 %12, 4, !dbg !557
  ret i64 %13, !dbg !558
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIfSaIfEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #0 comdat align 2 !dbg !559 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !569, metadata !DIExpression()), !dbg !571
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !572, metadata !DIExpression()), !dbg !573
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"struct.std::_Vector_base", ptr %5, i32 0, i32 0, !dbg !574
  %7 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %6, i32 0, i32 0, !dbg !575
  %8 = load ptr, ptr %7, align 8, !dbg !575
  %9 = load i64, ptr %4, align 8, !dbg !576
  %10 = getelementptr inbounds float, ptr %8, i64 %9, !dbg !577
  ret ptr %10, !dbg !578
}

; Function Attrs: nounwind
declare double @exp(double noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef float @_Z19BetaAnnealingFactorRSt6vectorIfSaIfEEfff(ptr noundef nonnull align 8 dereferenceable(24) %0, float noundef %1, float noundef %2, float noundef %3) #0 !dbg !579 {
  %5 = alloca float, align 4
  %6 = alloca ptr, align 8
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !582, metadata !DIExpression()), !dbg !583
  store float %1, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !584, metadata !DIExpression()), !dbg !585
  store float %2, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !586, metadata !DIExpression()), !dbg !587
  store float %3, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !588, metadata !DIExpression()), !dbg !589
  call void @llvm.dbg.declare(metadata ptr %10, metadata !590, metadata !DIExpression()), !dbg !591
  store i32 0, ptr %10, align 4, !dbg !591
  call void @llvm.dbg.declare(metadata ptr %11, metadata !592, metadata !DIExpression()), !dbg !593
  %15 = load float, ptr %8, align 4, !dbg !594
  %16 = load ptr, ptr %6, align 8, !dbg !595
  %17 = load float, ptr %7, align 4, !dbg !596
  %18 = call noundef float @_Z11delta_alphafRSt6vectorIfSaIfEEf(float noundef %15, ptr noundef nonnull align 8 dereferenceable(24) %16, float noundef %17), !dbg !597
  store float %18, ptr %11, align 4, !dbg !593
  call void @llvm.dbg.declare(metadata ptr %12, metadata !598, metadata !DIExpression()), !dbg !599
  %19 = load float, ptr %9, align 4, !dbg !600
  %20 = load ptr, ptr %6, align 8, !dbg !601
  %21 = load float, ptr %7, align 4, !dbg !602
  %22 = call noundef float @_Z11delta_alphafRSt6vectorIfSaIfEEf(float noundef %19, ptr noundef nonnull align 8 dereferenceable(24) %20, float noundef %21), !dbg !603
  store float %22, ptr %12, align 4, !dbg !599
  %23 = load float, ptr %11, align 4, !dbg !604
  %24 = fcmp ogt float %23, 0.000000e+00, !dbg !606
  br i1 %24, label %25, label %28, !dbg !607

25:                                               ; preds = %4
  %26 = load float, ptr %12, align 4, !dbg !608
  %27 = fcmp ogt float %26, 0.000000e+00, !dbg !609
  br i1 %27, label %34, label %28, !dbg !610

28:                                               ; preds = %25, %4
  %29 = load float, ptr %11, align 4, !dbg !611
  %30 = fcmp olt float %29, 0.000000e+00, !dbg !612
  br i1 %30, label %31, label %35, !dbg !613

31:                                               ; preds = %28
  %32 = load float, ptr %12, align 4, !dbg !614
  %33 = fcmp olt float %32, 0.000000e+00, !dbg !615
  br i1 %33, label %34, label %35, !dbg !616

34:                                               ; preds = %31, %25
  store float 1.000000e+00, ptr %5, align 4, !dbg !617
  br label %92, !dbg !617

35:                                               ; preds = %31, %28
  call void @llvm.dbg.declare(metadata ptr %13, metadata !618, metadata !DIExpression()), !dbg !619
  %36 = load float, ptr %8, align 4, !dbg !620
  %37 = load float, ptr %9, align 4, !dbg !621
  %38 = fadd float %36, %37, !dbg !622
  %39 = fdiv float %38, 2.000000e+00, !dbg !623
  store float %39, ptr %13, align 4, !dbg !619
  call void @llvm.dbg.declare(metadata ptr %14, metadata !624, metadata !DIExpression()), !dbg !625
  %40 = load float, ptr %13, align 4, !dbg !626
  %41 = load ptr, ptr %6, align 8, !dbg !627
  %42 = load float, ptr %7, align 4, !dbg !628
  %43 = call noundef float @_Z11delta_alphafRSt6vectorIfSaIfEEf(float noundef %40, ptr noundef nonnull align 8 dereferenceable(24) %41, float noundef %42), !dbg !629
  store float %43, ptr %14, align 4, !dbg !625
  br label %44, !dbg !630

44:                                               ; preds = %79, %35
  %45 = load float, ptr %14, align 4, !dbg !631
  %46 = fpext float %45 to double, !dbg !631
  %47 = fcmp olt double %46, 0.000000e+00, !dbg !632
  br i1 %47, label %48, label %51, !dbg !631

48:                                               ; preds = %44
  %49 = load float, ptr %14, align 4, !dbg !633
  %50 = fneg float %49, !dbg !634
  br label %53, !dbg !631

51:                                               ; preds = %44
  %52 = load float, ptr %14, align 4, !dbg !635
  br label %53, !dbg !631

53:                                               ; preds = %51, %48
  %54 = phi float [ %50, %48 ], [ %52, %51 ], !dbg !631
  %55 = fcmp ogt float %54, 0x3EE4F8B580000000, !dbg !636
  br i1 %55, label %56, label %59, !dbg !637

56:                                               ; preds = %53
  %57 = load i32, ptr %10, align 4, !dbg !638
  %58 = icmp slt i32 %57, 100, !dbg !639
  br label %59

59:                                               ; preds = %56, %53
  %60 = phi i1 [ false, %53 ], [ %58, %56 ], !dbg !640
  br i1 %60, label %61, label %90, !dbg !630

61:                                               ; preds = %59
  %62 = load float, ptr %11, align 4, !dbg !641
  %63 = fcmp ogt float %62, 0.000000e+00, !dbg !644
  br i1 %63, label %64, label %67, !dbg !645

64:                                               ; preds = %61
  %65 = load float, ptr %14, align 4, !dbg !646
  %66 = fcmp ogt float %65, 0.000000e+00, !dbg !647
  br i1 %66, label %73, label %67, !dbg !648

67:                                               ; preds = %64, %61
  %68 = load float, ptr %11, align 4, !dbg !649
  %69 = fcmp ole float %68, 0.000000e+00, !dbg !650
  br i1 %69, label %70, label %76, !dbg !651

70:                                               ; preds = %67
  %71 = load float, ptr %14, align 4, !dbg !652
  %72 = fcmp olt float %71, 0.000000e+00, !dbg !653
  br i1 %72, label %73, label %76, !dbg !654

73:                                               ; preds = %70, %64
  %74 = load float, ptr %13, align 4, !dbg !655
  store float %74, ptr %8, align 4, !dbg !657
  %75 = load float, ptr %14, align 4, !dbg !658
  store float %75, ptr %11, align 4, !dbg !659
  br label %79, !dbg !660

76:                                               ; preds = %70, %67
  %77 = load float, ptr %13, align 4, !dbg !661
  store float %77, ptr %9, align 4, !dbg !663
  %78 = load float, ptr %14, align 4, !dbg !664
  store float %78, ptr %12, align 4, !dbg !665
  br label %79

79:                                               ; preds = %76, %73
  %80 = load float, ptr %8, align 4, !dbg !666
  %81 = load float, ptr %9, align 4, !dbg !667
  %82 = fadd float %80, %81, !dbg !668
  %83 = fdiv float %82, 2.000000e+00, !dbg !669
  store float %83, ptr %13, align 4, !dbg !670
  %84 = load float, ptr %13, align 4, !dbg !671
  %85 = load ptr, ptr %6, align 8, !dbg !672
  %86 = load float, ptr %7, align 4, !dbg !673
  %87 = call noundef float @_Z11delta_alphafRSt6vectorIfSaIfEEf(float noundef %84, ptr noundef nonnull align 8 dereferenceable(24) %85, float noundef %86), !dbg !674
  store float %87, ptr %14, align 4, !dbg !675
  %88 = load i32, ptr %10, align 4, !dbg !676
  %89 = add nsw i32 %88, 1, !dbg !676
  store i32 %89, ptr %10, align 4, !dbg !676
  br label %44, !dbg !630, !llvm.loop !677

90:                                               ; preds = %59
  %91 = load float, ptr %13, align 4, !dbg !679
  store float %91, ptr %5, align 4, !dbg !680
  br label %92, !dbg !680

92:                                               ; preds = %90, %34
  %93 = load float, ptr %5, align 4, !dbg !681
  ret float %93, !dbg !681
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z7set_etsRSt6vectorIfSaIfEE(ptr noundef nonnull align 8 dereferenceable(24) %0) #3 !dbg !682 {
  %2 = alloca ptr, align 8
  %3 = alloca [25 x float], align 16
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !685, metadata !DIExpression()), !dbg !686
  call void @llvm.dbg.declare(metadata ptr %3, metadata !687, metadata !DIExpression()), !dbg !691
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %3, ptr align 16 @__const._Z7set_etsRSt6vectorIfSaIfEE.vals, i64 100, i1 false), !dbg !691
  %5 = load ptr, ptr %2, align 8, !dbg !692
  call void @_ZNSt6vectorIfSaIfEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef 25), !dbg !693
  call void @llvm.dbg.declare(metadata ptr %4, metadata !694, metadata !DIExpression()), !dbg !696
  store i32 0, ptr %4, align 4, !dbg !696
  br label %6, !dbg !697

6:                                                ; preds = %18, %1
  %7 = load i32, ptr %4, align 4, !dbg !698
  %8 = icmp slt i32 %7, 25, !dbg !700
  br i1 %8, label %9, label %21, !dbg !701

9:                                                ; preds = %6
  %10 = load i32, ptr %4, align 4, !dbg !702
  %11 = sext i32 %10 to i64, !dbg !703
  %12 = getelementptr inbounds [25 x float], ptr %3, i64 0, i64 %11, !dbg !703
  %13 = load float, ptr %12, align 4, !dbg !703
  %14 = load ptr, ptr %2, align 8, !dbg !704
  %15 = load i32, ptr %4, align 4, !dbg !705
  %16 = sext i32 %15 to i64, !dbg !705
  %17 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIfSaIfEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %14, i64 noundef %16) #9, !dbg !704
  store float %13, ptr %17, align 4, !dbg !706
  br label %18, !dbg !704

18:                                               ; preds = %9
  %19 = load i32, ptr %4, align 4, !dbg !707
  %20 = add nsw i32 %19, 1, !dbg !707
  store i32 %20, ptr %4, align 4, !dbg !707
  br label %6, !dbg !708, !llvm.loop !709

21:                                               ; preds = %6
  ret void, !dbg !711
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIfSaIfEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #3 comdat align 2 !dbg !712 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !716, metadata !DIExpression()), !dbg !717
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !718, metadata !DIExpression()), !dbg !719
  %5 = load ptr, ptr %3, align 8
  %6 = load i64, ptr %4, align 8, !dbg !720
  %7 = call noundef i64 @_ZNKSt6vectorIfSaIfEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #9, !dbg !722
  %8 = icmp ugt i64 %6, %7, !dbg !723
  br i1 %8, label %9, label %13, !dbg !724

9:                                                ; preds = %2
  %10 = load i64, ptr %4, align 8, !dbg !725
  %11 = call noundef i64 @_ZNKSt6vectorIfSaIfEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #9, !dbg !726
  %12 = sub i64 %10, %11, !dbg !727
  call void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %12), !dbg !728
  br label %24, !dbg !728

13:                                               ; preds = %2
  %14 = load i64, ptr %4, align 8, !dbg !729
  %15 = call noundef i64 @_ZNKSt6vectorIfSaIfEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #9, !dbg !731
  %16 = icmp ult i64 %14, %15, !dbg !732
  br i1 %16, label %17, label %23, !dbg !733

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"struct.std::_Vector_base", ptr %5, i32 0, i32 0, !dbg !734
  %19 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %18, i32 0, i32 0, !dbg !735
  %20 = load ptr, ptr %19, align 8, !dbg !735
  %21 = load i64, ptr %4, align 8, !dbg !736
  %22 = getelementptr inbounds float, ptr %20, i64 %21, !dbg !737
  call void @_ZNSt6vectorIfSaIfEE15_M_erase_at_endEPf(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %22) #9, !dbg !738
  br label %23, !dbg !738

23:                                               ; preds = %17, %13
  br label %24

24:                                               ; preds = %23, %9
  ret void, !dbg !739
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #3 comdat align 2 personality ptr @__gxx_personality_v0 !dbg !740 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !742, metadata !DIExpression()), !dbg !743
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !744, metadata !DIExpression()), !dbg !745
  %11 = load ptr, ptr %3, align 8
  %12 = load i64, ptr %4, align 8, !dbg !746
  %13 = icmp ne i64 %12, 0, !dbg !748
  br i1 %13, label %14, label %115, !dbg !749

14:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %5, metadata !750, metadata !DIExpression()), !dbg !753
  %15 = call noundef i64 @_ZNKSt6vectorIfSaIfEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %11) #9, !dbg !754
  store i64 %15, ptr %5, align 8, !dbg !753
  call void @llvm.dbg.declare(metadata ptr %6, metadata !755, metadata !DIExpression()), !dbg !756
  %16 = getelementptr inbounds %"struct.std::_Vector_base", ptr %11, i32 0, i32 0, !dbg !757
  %17 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %16, i32 0, i32 2, !dbg !758
  %18 = load ptr, ptr %17, align 8, !dbg !758
  %19 = getelementptr inbounds %"struct.std::_Vector_base", ptr %11, i32 0, i32 0, !dbg !759
  %20 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %19, i32 0, i32 1, !dbg !760
  %21 = load ptr, ptr %20, align 8, !dbg !760
  %22 = ptrtoint ptr %18 to i64, !dbg !761
  %23 = ptrtoint ptr %21 to i64, !dbg !761
  %24 = sub i64 %22, %23, !dbg !761
  %25 = sdiv exact i64 %24, 4, !dbg !761
  store i64 %25, ptr %6, align 8, !dbg !756
  %26 = load i64, ptr %5, align 8, !dbg !762
  %27 = call noundef i64 @_ZNKSt6vectorIfSaIfEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %11) #9, !dbg !764
  %28 = icmp ugt i64 %26, %27, !dbg !765
  br i1 %28, label %35, label %29, !dbg !766

29:                                               ; preds = %14
  %30 = load i64, ptr %6, align 8, !dbg !767
  %31 = call noundef i64 @_ZNKSt6vectorIfSaIfEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %11) #9, !dbg !768
  %32 = load i64, ptr %5, align 8, !dbg !769
  %33 = sub i64 %31, %32, !dbg !770
  %34 = icmp ugt i64 %30, %33, !dbg !771
  br i1 %34, label %35, label %36, !dbg !772

35:                                               ; preds = %29, %14
  unreachable, !dbg !773

36:                                               ; preds = %29
  %37 = load i64, ptr %6, align 8, !dbg !774
  %38 = load i64, ptr %4, align 8, !dbg !776
  %39 = icmp uge i64 %37, %38, !dbg !777
  br i1 %39, label %40, label %49, !dbg !778

40:                                               ; preds = %36
  %41 = getelementptr inbounds %"struct.std::_Vector_base", ptr %11, i32 0, i32 0, !dbg !779
  %42 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %41, i32 0, i32 1, !dbg !781
  %43 = load ptr, ptr %42, align 8, !dbg !781
  %44 = load i64, ptr %4, align 8, !dbg !782
  %45 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %11) #9, !dbg !783
  %46 = call noundef ptr @_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E(ptr noundef %43, i64 noundef %44, ptr noundef nonnull align 1 dereferenceable(1) %45), !dbg !784
  %47 = getelementptr inbounds %"struct.std::_Vector_base", ptr %11, i32 0, i32 0, !dbg !785
  %48 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %47, i32 0, i32 1, !dbg !786
  store ptr %46, ptr %48, align 8, !dbg !787
  br label %114, !dbg !788

49:                                               ; preds = %36
  call void @llvm.dbg.declare(metadata ptr %7, metadata !789, metadata !DIExpression()), !dbg !791
  %50 = load i64, ptr %4, align 8, !dbg !792
  %51 = call noundef i64 @_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef %50, ptr noundef @.str), !dbg !793
  store i64 %51, ptr %7, align 8, !dbg !791
  call void @llvm.dbg.declare(metadata ptr %8, metadata !794, metadata !DIExpression()), !dbg !795
  %52 = load i64, ptr %7, align 8, !dbg !796
  %53 = call noundef ptr @_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef %52), !dbg !797
  store ptr %53, ptr %8, align 8, !dbg !795
  %54 = load ptr, ptr %8, align 8, !dbg !798
  %55 = load i64, ptr %5, align 8, !dbg !802
  %56 = getelementptr inbounds float, ptr %54, i64 %55, !dbg !803
  %57 = load i64, ptr %4, align 8, !dbg !804
  %58 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %11) #9, !dbg !805
  %59 = invoke noundef ptr @_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E(ptr noundef %56, i64 noundef %57, ptr noundef nonnull align 1 dereferenceable(1) %58)
          to label %60 unwind label %61, !dbg !806

60:                                               ; preds = %49
  br label %76, !dbg !807

61:                                               ; preds = %49
  %62 = landingpad { ptr, i32 }
          catch ptr null, !dbg !808
  %63 = extractvalue { ptr, i32 } %62, 0, !dbg !808
  store ptr %63, ptr %9, align 8, !dbg !808
  %64 = extractvalue { ptr, i32 } %62, 1, !dbg !808
  store i32 %64, ptr %10, align 4, !dbg !808
  br label %65, !dbg !808

65:                                               ; preds = %61
  %66 = load ptr, ptr %9, align 8, !dbg !807
  %67 = call ptr @__cxa_begin_catch(ptr %66) #9, !dbg !807
  %68 = load ptr, ptr %8, align 8, !dbg !809
  %69 = load i64, ptr %7, align 8, !dbg !811
  invoke void @_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef %68, i64 noundef %69)
          to label %70 unwind label %71, !dbg !812

70:                                               ; preds = %65
  invoke void @__cxa_rethrow() #10
          to label %124 unwind label %71, !dbg !813

71:                                               ; preds = %70, %65
  %72 = landingpad { ptr, i32 }
          cleanup, !dbg !814
  %73 = extractvalue { ptr, i32 } %72, 0, !dbg !814
  store ptr %73, ptr %9, align 8, !dbg !814
  %74 = extractvalue { ptr, i32 } %72, 1, !dbg !814
  store i32 %74, ptr %10, align 4, !dbg !814
  invoke void @__cxa_end_catch()
          to label %75 unwind label %121, !dbg !815

75:                                               ; preds = %71
  br label %116, !dbg !815

76:                                               ; preds = %60
  %77 = getelementptr inbounds %"struct.std::_Vector_base", ptr %11, i32 0, i32 0, !dbg !816
  %78 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %77, i32 0, i32 0, !dbg !817
  %79 = load ptr, ptr %78, align 8, !dbg !817
  %80 = getelementptr inbounds %"struct.std::_Vector_base", ptr %11, i32 0, i32 0, !dbg !818
  %81 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %80, i32 0, i32 1, !dbg !819
  %82 = load ptr, ptr %81, align 8, !dbg !819
  %83 = load ptr, ptr %8, align 8, !dbg !820
  %84 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %11) #9, !dbg !821
  %85 = call noundef ptr @_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_(ptr noundef %79, ptr noundef %82, ptr noundef %83, ptr noundef nonnull align 1 dereferenceable(1) %84) #9, !dbg !822
  %86 = getelementptr inbounds %"struct.std::_Vector_base", ptr %11, i32 0, i32 0, !dbg !823
  %87 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %86, i32 0, i32 0, !dbg !824
  %88 = load ptr, ptr %87, align 8, !dbg !824
  %89 = getelementptr inbounds %"struct.std::_Vector_base", ptr %11, i32 0, i32 0, !dbg !825
  %90 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %89, i32 0, i32 2, !dbg !826
  %91 = load ptr, ptr %90, align 8, !dbg !826
  %92 = getelementptr inbounds %"struct.std::_Vector_base", ptr %11, i32 0, i32 0, !dbg !827
  %93 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %92, i32 0, i32 0, !dbg !828
  %94 = load ptr, ptr %93, align 8, !dbg !828
  %95 = ptrtoint ptr %91 to i64, !dbg !829
  %96 = ptrtoint ptr %94 to i64, !dbg !829
  %97 = sub i64 %95, %96, !dbg !829
  %98 = sdiv exact i64 %97, 4, !dbg !829
  call void @_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef %88, i64 noundef %98), !dbg !830
  %99 = load ptr, ptr %8, align 8, !dbg !831
  %100 = getelementptr inbounds %"struct.std::_Vector_base", ptr %11, i32 0, i32 0, !dbg !832
  %101 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %100, i32 0, i32 0, !dbg !833
  store ptr %99, ptr %101, align 8, !dbg !834
  %102 = load ptr, ptr %8, align 8, !dbg !835
  %103 = load i64, ptr %5, align 8, !dbg !836
  %104 = getelementptr inbounds float, ptr %102, i64 %103, !dbg !837
  %105 = load i64, ptr %4, align 8, !dbg !838
  %106 = getelementptr inbounds float, ptr %104, i64 %105, !dbg !839
  %107 = getelementptr inbounds %"struct.std::_Vector_base", ptr %11, i32 0, i32 0, !dbg !840
  %108 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %107, i32 0, i32 1, !dbg !841
  store ptr %106, ptr %108, align 8, !dbg !842
  %109 = load ptr, ptr %8, align 8, !dbg !843
  %110 = load i64, ptr %7, align 8, !dbg !844
  %111 = getelementptr inbounds float, ptr %109, i64 %110, !dbg !845
  %112 = getelementptr inbounds %"struct.std::_Vector_base", ptr %11, i32 0, i32 0, !dbg !846
  %113 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %112, i32 0, i32 2, !dbg !847
  store ptr %111, ptr %113, align 8, !dbg !848
  br label %114

114:                                              ; preds = %76, %40
  br label %115, !dbg !849

115:                                              ; preds = %114, %2
  ret void, !dbg !850

116:                                              ; preds = %75
  %117 = load ptr, ptr %9, align 8, !dbg !815
  %118 = load i32, ptr %10, align 4, !dbg !815
  %119 = insertvalue { ptr, i32 } poison, ptr %117, 0, !dbg !815
  %120 = insertvalue { ptr, i32 } %119, i32 %118, 1, !dbg !815
  resume { ptr, i32 } %120, !dbg !815

121:                                              ; preds = %71
  %122 = landingpad { ptr, i32 }
          catch ptr null, !dbg !815
  %123 = extractvalue { ptr, i32 } %122, 0, !dbg !815
  call void @__clang_call_terminate(ptr %123) #11, !dbg !815
  unreachable, !dbg !815

124:                                              ; preds = %70
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIfSaIfEE15_M_erase_at_endEPf(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) #0 comdat align 2 personality ptr @__gxx_personality_v0 !dbg !851 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !855, metadata !DIExpression()), !dbg !856
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !857, metadata !DIExpression()), !dbg !858
  %6 = load ptr, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !859, metadata !DIExpression()), !dbg !861
  %7 = getelementptr inbounds %"struct.std::_Vector_base", ptr %6, i32 0, i32 0, !dbg !862
  %8 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %7, i32 0, i32 1, !dbg !863
  %9 = load ptr, ptr %8, align 8, !dbg !863
  %10 = load ptr, ptr %4, align 8, !dbg !864
  %11 = ptrtoint ptr %9 to i64, !dbg !865
  %12 = ptrtoint ptr %10 to i64, !dbg !865
  %13 = sub i64 %11, %12, !dbg !865
  %14 = sdiv exact i64 %13, 4, !dbg !865
  store i64 %14, ptr %5, align 8, !dbg !861
  %15 = load i64, ptr %5, align 8, !dbg !861
  %16 = icmp ne i64 %15, 0, !dbg !861
  br i1 %16, label %17, label %27, !dbg !866

17:                                               ; preds = %2
  %18 = load ptr, ptr %4, align 8, !dbg !867
  %19 = getelementptr inbounds %"struct.std::_Vector_base", ptr %6, i32 0, i32 0, !dbg !869
  %20 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %19, i32 0, i32 1, !dbg !870
  %21 = load ptr, ptr %20, align 8, !dbg !870
  %22 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %6) #9, !dbg !871
  invoke void @_ZSt8_DestroyIPffEvT_S1_RSaIT0_E(ptr noundef %18, ptr noundef %21, ptr noundef nonnull align 1 dereferenceable(1) %22)
          to label %23 unwind label %28, !dbg !872

23:                                               ; preds = %17
  %24 = load ptr, ptr %4, align 8, !dbg !873
  %25 = getelementptr inbounds %"struct.std::_Vector_base", ptr %6, i32 0, i32 0, !dbg !874
  %26 = getelementptr inbounds %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data", ptr %25, i32 0, i32 1, !dbg !875
  store ptr %24, ptr %26, align 8, !dbg !876
  br label %27, !dbg !877

27:                                               ; preds = %23, %2
  ret void, !dbg !878

28:                                               ; preds = %17
  %29 = landingpad { ptr, i32 }
          catch ptr null, !dbg !872
  %30 = extractvalue { ptr, i32 } %29, 0, !dbg !872
  call void @__clang_call_terminate(ptr %30) #11, !dbg !872
  unreachable, !dbg !872
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIfSaIfEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #0 comdat align 2 !dbg !879 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !881, metadata !DIExpression()), !dbg !882
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #9, !dbg !883
  %5 = call noundef i64 @_ZNSt6vectorIfSaIfEE11_S_max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %4) #9, !dbg !884
  ret i64 %5, !dbg !885
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #3 comdat !dbg !886 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !893, metadata !DIExpression()), !dbg !894
  store i64 %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !895, metadata !DIExpression()), !dbg !896
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !897, metadata !DIExpression()), !dbg !898
  %7 = load ptr, ptr %4, align 8, !dbg !899
  %8 = load i64, ptr %5, align 8, !dbg !900
  %9 = call noundef ptr @_ZSt25__uninitialized_default_nIPfmET_S1_T0_(ptr noundef %7, i64 noundef %8), !dbg !901
  ret ptr %9, !dbg !902
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #0 comdat align 2 !dbg !903 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !909, metadata !DIExpression()), !dbg !911
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base", ptr %3, i32 0, i32 0, !dbg !912
  ret ptr %4, !dbg !913
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %2) #3 comdat align 2 !dbg !914 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !919, metadata !DIExpression()), !dbg !920
  store i64 %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !921, metadata !DIExpression()), !dbg !922
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !923, metadata !DIExpression()), !dbg !924
  %9 = load ptr, ptr %4, align 8
  %10 = call noundef i64 @_ZNKSt6vectorIfSaIfEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #9, !dbg !925
  %11 = call noundef i64 @_ZNKSt6vectorIfSaIfEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #9, !dbg !927
  %12 = sub i64 %10, %11, !dbg !928
  %13 = load i64, ptr %5, align 8, !dbg !929
  %14 = icmp ult i64 %12, %13, !dbg !930
  br i1 %14, label %15, label %17, !dbg !931

15:                                               ; preds = %3
  %16 = load ptr, ptr %6, align 8, !dbg !932
  call void @_ZSt20__throw_length_errorPKc(ptr noundef %16) #10, !dbg !933
  unreachable, !dbg !933

17:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata ptr %7, metadata !934, metadata !DIExpression()), !dbg !935
  %18 = call noundef i64 @_ZNKSt6vectorIfSaIfEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #9, !dbg !936
  %19 = call noundef i64 @_ZNKSt6vectorIfSaIfEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #9, !dbg !937
  store i64 %19, ptr %8, align 8, !dbg !937
  %20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %5), !dbg !938
  %21 = load i64, ptr %20, align 8, !dbg !938
  %22 = add i64 %18, %21, !dbg !939
  store i64 %22, ptr %7, align 8, !dbg !935
  %23 = load i64, ptr %7, align 8, !dbg !940
  %24 = call noundef i64 @_ZNKSt6vectorIfSaIfEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #9, !dbg !941
  %25 = icmp ult i64 %23, %24, !dbg !942
  br i1 %25, label %30, label %26, !dbg !943

26:                                               ; preds = %17
  %27 = load i64, ptr %7, align 8, !dbg !944
  %28 = call noundef i64 @_ZNKSt6vectorIfSaIfEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #9, !dbg !945
  %29 = icmp ugt i64 %27, %28, !dbg !946
  br i1 %29, label %30, label %32, !dbg !947

30:                                               ; preds = %26, %17
  %31 = call noundef i64 @_ZNKSt6vectorIfSaIfEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #9, !dbg !948
  br label %34, !dbg !947

32:                                               ; preds = %26
  %33 = load i64, ptr %7, align 8, !dbg !949
  br label %34, !dbg !947

34:                                               ; preds = %32, %30
  %35 = phi i64 [ %31, %30 ], [ %33, %32 ], !dbg !947
  ret i64 %35, !dbg !950
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #3 comdat align 2 !dbg !951 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !955, metadata !DIExpression()), !dbg !956
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !957, metadata !DIExpression()), !dbg !958
  %5 = load ptr, ptr %3, align 8
  %6 = load i64, ptr %4, align 8, !dbg !959
  %7 = icmp ne i64 %6, 0, !dbg !960
  br i1 %7, label %8, label %12, !dbg !959

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"struct.std::_Vector_base", ptr %5, i32 0, i32 0, !dbg !961
  %10 = load i64, ptr %4, align 8, !dbg !962
  %11 = call noundef ptr @_ZNSt16allocator_traitsISaIfEE8allocateERS0_m(ptr noundef nonnull align 1 dereferenceable(1) %9, i64 noundef %10), !dbg !963
  br label %13, !dbg !959

12:                                               ; preds = %2
  br label %13, !dbg !959

13:                                               ; preds = %12, %8
  %14 = phi ptr [ %11, %8 ], [ null, %12 ], !dbg !959
  ret ptr %14, !dbg !964
}

declare i32 @__gxx_personality_v0(...)

declare ptr @__cxa_begin_catch(ptr)

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) #3 comdat align 2 !dbg !965 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !969, metadata !DIExpression()), !dbg !970
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !971, metadata !DIExpression()), !dbg !972
  store i64 %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !973, metadata !DIExpression()), !dbg !974
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8, !dbg !975
  %9 = icmp ne ptr %8, null, !dbg !975
  br i1 %9, label %10, label %14, !dbg !977

10:                                               ; preds = %3
  %11 = getelementptr inbounds %"struct.std::_Vector_base", ptr %7, i32 0, i32 0, !dbg !978
  %12 = load ptr, ptr %5, align 8, !dbg !979
  %13 = load i64, ptr %6, align 8, !dbg !980
  call void @_ZNSt16allocator_traitsISaIfEE10deallocateERS0_Pfm(ptr noundef nonnull align 1 dereferenceable(1) %11, ptr noundef %12, i64 noundef %13), !dbg !981
  br label %14, !dbg !981

14:                                               ; preds = %10, %3
  ret void, !dbg !982
}

declare void @__cxa_rethrow()

declare void @__cxa_end_catch()

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) #5 comdat {
  %2 = call ptr @__cxa_begin_catch(ptr %0) #9
  call void @_ZSt9terminatev() #11
  unreachable
}

declare void @_ZSt9terminatev()

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #0 comdat align 2 !dbg !24 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %"struct.std::integral_constant", align 1
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !983, metadata !DIExpression()), !dbg !984
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !985, metadata !DIExpression()), !dbg !986
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !987, metadata !DIExpression()), !dbg !988
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !989, metadata !DIExpression()), !dbg !990
  %10 = load ptr, ptr %5, align 8, !dbg !991
  %11 = load ptr, ptr %6, align 8, !dbg !992
  %12 = load ptr, ptr %7, align 8, !dbg !993
  %13 = load ptr, ptr %8, align 8, !dbg !994
  %14 = call noundef ptr @_ZNSt6vectorIfSaIfEE14_S_do_relocateEPfS2_S2_RS0_St17integral_constantIbLb1EE(ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef nonnull align 1 dereferenceable(1) %13) #9, !dbg !995
  ret ptr %14, !dbg !996
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIfSaIfEE11_S_max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0) #0 comdat align 2 personality ptr @__gxx_personality_v0 !dbg !997 {
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1003, metadata !DIExpression()), !dbg !1004
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1005, metadata !DIExpression()), !dbg !1007
  store i64 2305843009213693951, ptr %3, align 8, !dbg !1007
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1008, metadata !DIExpression()), !dbg !1009
  %5 = load ptr, ptr %2, align 8, !dbg !1010
  %6 = call noundef i64 @_ZNSt16allocator_traitsISaIfEE8max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %5) #9, !dbg !1011
  store i64 %6, ptr %4, align 8, !dbg !1009
  %7 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %8 unwind label %10, !dbg !1012

8:                                                ; preds = %1
  %9 = load i64, ptr %7, align 8, !dbg !1012
  ret i64 %9, !dbg !1013

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null, !dbg !1012
  %12 = extractvalue { ptr, i32 } %11, 0, !dbg !1012
  call void @__clang_call_terminate(ptr %12) #11, !dbg !1012
  unreachable, !dbg !1012
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #0 comdat align 2 !dbg !1014 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1022, metadata !DIExpression()), !dbg !1024
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base", ptr %3, i32 0, i32 0, !dbg !1025
  ret ptr %4, !dbg !1026
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaIfEE8max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0) #0 comdat align 2 !dbg !1027 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1028, metadata !DIExpression()), !dbg !1029
  %3 = load ptr, ptr %2, align 8, !dbg !1030
  %4 = call noundef i64 @_ZNK9__gnu_cxx13new_allocatorIfE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %3) #9, !dbg !1031
  ret i64 %4, !dbg !1032
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #0 comdat !dbg !1033 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1041, metadata !DIExpression()), !dbg !1042
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1043, metadata !DIExpression()), !dbg !1044
  %6 = load ptr, ptr %5, align 8, !dbg !1045
  %7 = load i64, ptr %6, align 8, !dbg !1045
  %8 = load ptr, ptr %4, align 8, !dbg !1047
  %9 = load i64, ptr %8, align 8, !dbg !1047
  %10 = icmp ult i64 %7, %9, !dbg !1048
  br i1 %10, label %11, label %13, !dbg !1049

11:                                               ; preds = %2
  %12 = load ptr, ptr %5, align 8, !dbg !1050
  store ptr %12, ptr %3, align 8, !dbg !1051
  br label %15, !dbg !1051

13:                                               ; preds = %2
  %14 = load ptr, ptr %4, align 8, !dbg !1052
  store ptr %14, ptr %3, align 8, !dbg !1053
  br label %15, !dbg !1053

15:                                               ; preds = %13, %11
  %16 = load ptr, ptr %3, align 8, !dbg !1054
  ret ptr %16, !dbg !1054
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNK9__gnu_cxx13new_allocatorIfE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #0 comdat align 2 !dbg !1055 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1064, metadata !DIExpression()), !dbg !1066
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef i64 @_ZNK9__gnu_cxx13new_allocatorIfE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %3) #9, !dbg !1067
  ret i64 %4, !dbg !1068
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNK9__gnu_cxx13new_allocatorIfE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #0 comdat align 2 !dbg !1069 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1071, metadata !DIExpression()), !dbg !1072
  %3 = load ptr, ptr %2, align 8
  ret i64 2305843009213693951, !dbg !1073
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZSt25__uninitialized_default_nIPfmET_S1_T0_(ptr noundef %0, i64 noundef %1) #3 comdat !dbg !1074 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1078, metadata !DIExpression()), !dbg !1079
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1080, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1082, metadata !DIExpression()), !dbg !1083
  store i8 1, ptr %5, align 1, !dbg !1083
  %6 = load ptr, ptr %3, align 8, !dbg !1084
  %7 = load i64, ptr %4, align 8, !dbg !1085
  %8 = call noundef ptr @_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPfmEET_S3_T0_(ptr noundef %6, i64 noundef %7), !dbg !1086
  ret ptr %8, !dbg !1087
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPfmEET_S3_T0_(ptr noundef %0, i64 noundef %1) #3 comdat align 2 !dbg !1088 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1093, metadata !DIExpression()), !dbg !1094
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1095, metadata !DIExpression()), !dbg !1096
  %6 = load i64, ptr %4, align 8, !dbg !1097
  %7 = icmp ugt i64 %6, 0, !dbg !1099
  br i1 %7, label %8, label %18, !dbg !1100

8:                                                ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1101, metadata !DIExpression()), !dbg !1109
  %9 = load ptr, ptr %3, align 8, !dbg !1110
  store ptr %9, ptr %5, align 8, !dbg !1109
  %10 = load ptr, ptr %5, align 8, !dbg !1111
  call void @_ZSt10_ConstructIfJEEvPT_DpOT0_(ptr noundef %10), !dbg !1112
  %11 = load ptr, ptr %3, align 8, !dbg !1113
  %12 = getelementptr inbounds float, ptr %11, i32 1, !dbg !1113
  store ptr %12, ptr %3, align 8, !dbg !1113
  %13 = load ptr, ptr %3, align 8, !dbg !1114
  %14 = load i64, ptr %4, align 8, !dbg !1115
  %15 = sub i64 %14, 1, !dbg !1116
  %16 = load ptr, ptr %5, align 8, !dbg !1117
  %17 = call noundef ptr @_ZSt6fill_nIPfmfET_S1_T0_RKT1_(ptr noundef %13, i64 noundef %15, ptr noundef nonnull align 4 dereferenceable(4) %16), !dbg !1118
  store ptr %17, ptr %3, align 8, !dbg !1119
  br label %18, !dbg !1120

18:                                               ; preds = %8, %2
  %19 = load ptr, ptr %3, align 8, !dbg !1121
  ret ptr %19, !dbg !1122
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZSt10_ConstructIfJEEvPT_DpOT0_(ptr noundef %0) #0 comdat !dbg !1123 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1129, metadata !DIExpression()), !dbg !1130
  %3 = load ptr, ptr %2, align 8, !dbg !1131
  store float 0.000000e+00, ptr %3, align 4, !dbg !1132
  ret void, !dbg !1133
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZSt6fill_nIPfmfET_S1_T0_RKT1_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #3 comdat !dbg !1134 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %"struct.std::random_access_iterator_tag", align 1
  %8 = alloca %"struct.std::random_access_iterator_tag", align 1
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1141, metadata !DIExpression()), !dbg !1142
  store i64 %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1143, metadata !DIExpression()), !dbg !1144
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1145, metadata !DIExpression()), !dbg !1146
  %9 = load ptr, ptr %4, align 8, !dbg !1147
  %10 = load i64, ptr %5, align 8, !dbg !1148
  %11 = call noundef i64 @_ZSt17__size_to_integerm(i64 noundef %10), !dbg !1149
  %12 = load ptr, ptr %6, align 8, !dbg !1150
  call void @_ZSt19__iterator_categoryIPfENSt15iterator_traitsIT_E17iterator_categoryERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %4), !dbg !1151
  %13 = call noundef ptr @_ZSt10__fill_n_aIPfmfET_S1_T0_RKT1_St26random_access_iterator_tag(ptr noundef %9, i64 noundef %11, ptr noundef nonnull align 4 dereferenceable(4) %12), !dbg !1152
  ret ptr %13, !dbg !1153
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZSt10__fill_n_aIPfmfET_S1_T0_RKT1_St26random_access_iterator_tag(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #3 comdat !dbg !1154 {
  %4 = alloca ptr, align 8
  %5 = alloca %"struct.std::random_access_iterator_tag", align 1
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1169, metadata !DIExpression()), !dbg !1170
  store i64 %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1171, metadata !DIExpression()), !dbg !1172
  store ptr %2, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1173, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1175, metadata !DIExpression()), !dbg !1176
  %9 = load i64, ptr %7, align 8, !dbg !1177
  %10 = icmp ule i64 %9, 0, !dbg !1179
  br i1 %10, label %11, label %13, !dbg !1180

11:                                               ; preds = %3
  %12 = load ptr, ptr %6, align 8, !dbg !1181
  store ptr %12, ptr %4, align 8, !dbg !1182
  br label %22, !dbg !1182

13:                                               ; preds = %3
  %14 = load ptr, ptr %6, align 8, !dbg !1183
  %15 = load ptr, ptr %6, align 8, !dbg !1184
  %16 = load i64, ptr %7, align 8, !dbg !1185
  %17 = getelementptr inbounds float, ptr %15, i64 %16, !dbg !1186
  %18 = load ptr, ptr %8, align 8, !dbg !1187
  call void @_ZSt8__fill_aIPffEvT_S1_RKT0_(ptr noundef %14, ptr noundef %17, ptr noundef nonnull align 4 dereferenceable(4) %18), !dbg !1188
  %19 = load ptr, ptr %6, align 8, !dbg !1189
  %20 = load i64, ptr %7, align 8, !dbg !1190
  %21 = getelementptr inbounds float, ptr %19, i64 %20, !dbg !1191
  store ptr %21, ptr %4, align 8, !dbg !1192
  br label %22, !dbg !1192

22:                                               ; preds = %13, %11
  %23 = load ptr, ptr %4, align 8, !dbg !1193
  ret ptr %23, !dbg !1193
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZSt17__size_to_integerm(i64 noundef %0) #0 comdat !dbg !1194 {
  %2 = alloca i64, align 8
  store i64 %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1197, metadata !DIExpression()), !dbg !1198
  %3 = load i64, ptr %2, align 8, !dbg !1199
  ret i64 %3, !dbg !1200
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPfENSt15iterator_traitsIT_E17iterator_categoryERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %0) #0 comdat !dbg !1201 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1209, metadata !DIExpression()), !dbg !1210
  ret void, !dbg !1211
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt8__fill_aIPffEvT_S1_RKT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #3 comdat !dbg !1212 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1217, metadata !DIExpression()), !dbg !1218
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1219, metadata !DIExpression()), !dbg !1220
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1221, metadata !DIExpression()), !dbg !1222
  %7 = load ptr, ptr %4, align 8, !dbg !1223
  %8 = load ptr, ptr %5, align 8, !dbg !1224
  %9 = load ptr, ptr %6, align 8, !dbg !1225
  call void @_ZSt9__fill_a1IPffEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_(ptr noundef %7, ptr noundef %8, ptr noundef nonnull align 4 dereferenceable(4) %9), !dbg !1226
  ret void, !dbg !1227
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZSt9__fill_a1IPffEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #0 comdat !dbg !1228 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca float, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1238, metadata !DIExpression()), !dbg !1239
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1240, metadata !DIExpression()), !dbg !1241
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1242, metadata !DIExpression()), !dbg !1243
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1244, metadata !DIExpression()), !dbg !1245
  %8 = load ptr, ptr %6, align 8, !dbg !1246
  %9 = load float, ptr %8, align 4, !dbg !1246
  store float %9, ptr %7, align 4, !dbg !1245
  br label %10, !dbg !1247

10:                                               ; preds = %17, %3
  %11 = load ptr, ptr %4, align 8, !dbg !1248
  %12 = load ptr, ptr %5, align 8, !dbg !1251
  %13 = icmp ne ptr %11, %12, !dbg !1252
  br i1 %13, label %14, label %20, !dbg !1253

14:                                               ; preds = %10
  %15 = load float, ptr %7, align 4, !dbg !1254
  %16 = load ptr, ptr %4, align 8, !dbg !1255
  store float %15, ptr %16, align 4, !dbg !1256
  br label %17, !dbg !1257

17:                                               ; preds = %14
  %18 = load ptr, ptr %4, align 8, !dbg !1258
  %19 = getelementptr inbounds float, ptr %18, i32 1, !dbg !1258
  store ptr %19, ptr %4, align 8, !dbg !1258
  br label %10, !dbg !1259, !llvm.loop !1260

20:                                               ; preds = %10
  ret void, !dbg !1262
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) #6

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #0 comdat !dbg !1263 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1264, metadata !DIExpression()), !dbg !1265
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1266, metadata !DIExpression()), !dbg !1267
  %6 = load ptr, ptr %4, align 8, !dbg !1268
  %7 = load i64, ptr %6, align 8, !dbg !1268
  %8 = load ptr, ptr %5, align 8, !dbg !1270
  %9 = load i64, ptr %8, align 8, !dbg !1270
  %10 = icmp ult i64 %7, %9, !dbg !1271
  br i1 %10, label %11, label %13, !dbg !1272

11:                                               ; preds = %2
  %12 = load ptr, ptr %5, align 8, !dbg !1273
  store ptr %12, ptr %3, align 8, !dbg !1274
  br label %15, !dbg !1274

13:                                               ; preds = %2
  %14 = load ptr, ptr %4, align 8, !dbg !1275
  store ptr %14, ptr %3, align 8, !dbg !1276
  br label %15, !dbg !1276

15:                                               ; preds = %13, %11
  %16 = load ptr, ptr %3, align 8, !dbg !1277
  ret ptr %16, !dbg !1277
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaIfEE8allocateERS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #3 comdat align 2 !dbg !1278 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1279, metadata !DIExpression()), !dbg !1280
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1281, metadata !DIExpression()), !dbg !1282
  %5 = load ptr, ptr %3, align 8, !dbg !1283
  %6 = load i64, ptr %4, align 8, !dbg !1284
  %7 = call noundef ptr @_ZN9__gnu_cxx13new_allocatorIfE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %5, i64 noundef %6, ptr noundef null), !dbg !1285
  ret ptr %7, !dbg !1286
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZN9__gnu_cxx13new_allocatorIfE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) #3 comdat align 2 !dbg !1287 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1292, metadata !DIExpression()), !dbg !1294
  store i64 %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1295, metadata !DIExpression()), !dbg !1296
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1297, metadata !DIExpression()), !dbg !1298
  %7 = load ptr, ptr %4, align 8
  %8 = load i64, ptr %5, align 8, !dbg !1299
  %9 = call noundef i64 @_ZNK9__gnu_cxx13new_allocatorIfE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %7) #9, !dbg !1301
  %10 = icmp ugt i64 %8, %9, !dbg !1302
  br i1 %10, label %11, label %16, !dbg !1303

11:                                               ; preds = %3
  %12 = load i64, ptr %5, align 8, !dbg !1304
  %13 = icmp ugt i64 %12, 4611686018427387903, !dbg !1307
  br i1 %13, label %14, label %15, !dbg !1308

14:                                               ; preds = %11
  call void @_ZSt28__throw_bad_array_new_lengthv() #10, !dbg !1309
  unreachable, !dbg !1309

15:                                               ; preds = %11
  call void @_ZSt17__throw_bad_allocv() #10, !dbg !1310
  unreachable, !dbg !1310

16:                                               ; preds = %3
  %17 = load i64, ptr %5, align 8, !dbg !1311
  %18 = mul i64 %17, 4, !dbg !1312
  %19 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %18) #12, !dbg !1313
  ret ptr %19, !dbg !1314
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() #6

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) #7

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIfEE10deallocateERS0_Pfm(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #3 comdat align 2 !dbg !1315 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1316, metadata !DIExpression()), !dbg !1317
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1318, metadata !DIExpression()), !dbg !1319
  store i64 %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1320, metadata !DIExpression()), !dbg !1321
  %7 = load ptr, ptr %4, align 8, !dbg !1322
  %8 = load ptr, ptr %5, align 8, !dbg !1323
  %9 = load i64, ptr %6, align 8, !dbg !1324
  call void @_ZN9__gnu_cxx13new_allocatorIfE10deallocateEPfm(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef %8, i64 noundef %9), !dbg !1325
  ret void, !dbg !1326
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIfE10deallocateEPfm(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #0 comdat align 2 !dbg !1327 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1331, metadata !DIExpression()), !dbg !1332
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1333, metadata !DIExpression()), !dbg !1334
  store i64 %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1335, metadata !DIExpression()), !dbg !1336
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8, !dbg !1337
  call void @_ZdlPv(ptr noundef %8) #9, !dbg !1338
  ret void, !dbg !1339
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) #8

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt6vectorIfSaIfEE14_S_do_relocateEPfS2_S2_RS0_St17integral_constantIbLb1EE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #0 comdat align 2 !dbg !1340 {
  %5 = alloca %"struct.std::integral_constant", align 1
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1345, metadata !DIExpression()), !dbg !1346
  store ptr %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1347, metadata !DIExpression()), !dbg !1348
  store ptr %2, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1349, metadata !DIExpression()), !dbg !1350
  store ptr %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1351, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1353, metadata !DIExpression()), !dbg !1354
  %10 = load ptr, ptr %6, align 8, !dbg !1355
  %11 = load ptr, ptr %7, align 8, !dbg !1356
  %12 = load ptr, ptr %8, align 8, !dbg !1357
  %13 = load ptr, ptr %9, align 8, !dbg !1358
  %14 = call noundef ptr @_ZSt12__relocate_aIPfS0_SaIfEET0_T_S3_S2_RT1_(ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef nonnull align 1 dereferenceable(1) %13) #9, !dbg !1359
  ret ptr %14, !dbg !1360
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__relocate_aIPfS0_SaIfEET0_T_S3_S2_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #0 comdat !dbg !1361 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1367, metadata !DIExpression()), !dbg !1368
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1369, metadata !DIExpression()), !dbg !1370
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1371, metadata !DIExpression()), !dbg !1372
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1373, metadata !DIExpression()), !dbg !1374
  %9 = load ptr, ptr %5, align 8, !dbg !1375
  %10 = call noundef ptr @_ZSt12__niter_baseIPfET_S1_(ptr noundef %9) #9, !dbg !1376
  %11 = load ptr, ptr %6, align 8, !dbg !1377
  %12 = call noundef ptr @_ZSt12__niter_baseIPfET_S1_(ptr noundef %11) #9, !dbg !1378
  %13 = load ptr, ptr %7, align 8, !dbg !1379
  %14 = call noundef ptr @_ZSt12__niter_baseIPfET_S1_(ptr noundef %13) #9, !dbg !1380
  %15 = load ptr, ptr %8, align 8, !dbg !1381
  %16 = call noundef ptr @_ZSt14__relocate_a_1IffENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(ptr noundef %10, ptr noundef %12, ptr noundef %14, ptr noundef nonnull align 1 dereferenceable(1) %15) #9, !dbg !1382
  ret ptr %16, !dbg !1383
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__relocate_a_1IffENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #0 comdat !dbg !1384 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1394, metadata !DIExpression()), !dbg !1395
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1396, metadata !DIExpression()), !dbg !1397
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1398, metadata !DIExpression()), !dbg !1399
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1400, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1402, metadata !DIExpression()), !dbg !1404
  %10 = load ptr, ptr %6, align 8, !dbg !1405
  %11 = load ptr, ptr %5, align 8, !dbg !1406
  %12 = ptrtoint ptr %10 to i64, !dbg !1407
  %13 = ptrtoint ptr %11 to i64, !dbg !1407
  %14 = sub i64 %12, %13, !dbg !1407
  %15 = sdiv exact i64 %14, 4, !dbg !1407
  store i64 %15, ptr %9, align 8, !dbg !1404
  %16 = load i64, ptr %9, align 8, !dbg !1408
  %17 = icmp sgt i64 %16, 0, !dbg !1410
  br i1 %17, label %18, label %23, !dbg !1411

18:                                               ; preds = %4
  %19 = load ptr, ptr %7, align 8, !dbg !1412
  %20 = load ptr, ptr %5, align 8, !dbg !1413
  %21 = load i64, ptr %9, align 8, !dbg !1414
  %22 = mul i64 %21, 4, !dbg !1415
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %19, ptr align 4 %20, i64 %22, i1 false), !dbg !1416
  br label %23, !dbg !1416

23:                                               ; preds = %18, %4
  %24 = load ptr, ptr %7, align 8, !dbg !1417
  %25 = load i64, ptr %9, align 8, !dbg !1418
  %26 = getelementptr inbounds float, ptr %24, i64 %25, !dbg !1419
  ret ptr %26, !dbg !1420
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPfET_S1_(ptr noundef %0) #0 comdat !dbg !1421 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1424, metadata !DIExpression()), !dbg !1425
  %3 = load ptr, ptr %2, align 8, !dbg !1426
  ret ptr %3, !dbg !1427
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPffEvT_S1_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #3 comdat !dbg !1428 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1431, metadata !DIExpression()), !dbg !1432
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1433, metadata !DIExpression()), !dbg !1434
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1435, metadata !DIExpression()), !dbg !1436
  %7 = load ptr, ptr %4, align 8, !dbg !1437
  %8 = load ptr, ptr %5, align 8, !dbg !1438
  call void @_ZSt8_DestroyIPfEvT_S1_(ptr noundef %7, ptr noundef %8), !dbg !1439
  ret void, !dbg !1440
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPfEvT_S1_(ptr noundef %0, ptr noundef %1) #3 comdat !dbg !1441 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1445, metadata !DIExpression()), !dbg !1446
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1447, metadata !DIExpression()), !dbg !1448
  %5 = load ptr, ptr %3, align 8, !dbg !1449
  %6 = load ptr, ptr %4, align 8, !dbg !1450
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPfEEvT_S3_(ptr noundef %5, ptr noundef %6), !dbg !1451
  ret void, !dbg !1452
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPfEEvT_S3_(ptr noundef %0, ptr noundef %1) #0 comdat align 2 !dbg !1453 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1457, metadata !DIExpression()), !dbg !1458
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1459, metadata !DIExpression()), !dbg !1460
  ret void, !dbg !1461
}

attributes #0 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { noinline noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { noreturn }
attributes #11 = { noreturn nounwind }
attributes #12 = { allocsize(0) }

!llvm.dbg.cu = !{!8}
!llvm.module.flags = !{!467, !468, !469, !470, !471, !472, !473}
!llvm.ident = !{!474}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 634, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/vector.tcc", directory: "", checksumkind: CSK_MD5, checksum: "e9a66096952709a84b1e05178c12ec5a")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !6)
!4 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !{!7}
!7 = !DISubrange(count: 26)
!8 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !9, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !10, globals: !111, imports: !112, splitDebugInlining: false, nameTableKind: None)
!9 = !DIFile(filename: "../TrackingBenchmark/AnnealingFactor.cpp", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/bodytrack/src/build", checksumkind: CSK_MD5, checksum: "2bf9849b901ca3d914671ce4f45a333e")
!10 = !{!11, !12, !13, !15, !19, !20, !22, !23}
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", file: !14, line: 424, baseType: !15, flags: DIFlagPublic)
!14 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/stl_vector.h", directory: "", checksumkind: CSK_MD5, checksum: "abcaf00227294b9790605822a1c03477")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", scope: !17, file: !16, line: 280, baseType: !18)
!16 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/x86_64-linux-gnu/c++/11/bits/c++config.h", directory: "", checksumkind: CSK_MD5, checksum: "b09addf8bea7ac9bf251a76b15f26064")
!17 = !DINamespace(name: "std", scope: null)
!18 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__do_it", scope: !24, file: !14, line: 468, baseType: !96)
!24 = distinct !DISubprogram(name: "_S_relocate", linkageName: "_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_", scope: !25, file: !14, line: 465, type: !26, scopeLine: 467, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, declaration: !95, retainedNodes: !91)
!25 = !DICompositeType(tag: DW_TAG_class_type, name: "vector<float, std::allocator<float> >", scope: !17, file: !14, line: 389, size: 192, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt6vectorIfSaIfEE")
!26 = !DISubroutineType(types: !27)
!27 = !{!28, !28, !28, !28, !86}
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !25, file: !14, line: 415, baseType: !29, flags: DIFlagPublic)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !30, file: !14, line: 89, baseType: !31)
!30 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Vector_base<float, std::allocator<float> >", scope: !17, file: !14, line: 84, size: 192, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt12_Vector_baseIfSaIfEE")
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !33, file: !32, line: 57, baseType: !43)
!32 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/ext/alloc_traits.h", directory: "")
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__alloc_traits<std::allocator<float>, float>", scope: !34, file: !32, line: 48, size: 8, flags: DIFlagTypePassByValue, elements: !35, templateParams: !84, identifier: "_ZTSN9__gnu_cxx14__alloc_traitsISaIfEfEE")
!34 = !DINamespace(name: "__gnu_cxx", scope: null)
!35 = !{!36, !67, !72, !76, !80, !81, !82, !83}
!36 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !33, baseType: !37, extraData: i32 0)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "allocator_traits<std::allocator<float> >", scope: !17, file: !38, line: 411, size: 8, flags: DIFlagTypePassByValue, elements: !39, templateParams: !65, identifier: "_ZTSSt16allocator_traitsISaIfEE")
!38 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/alloc_traits.h", directory: "", checksumkind: CSK_MD5, checksum: "937e9d7f00d3ed7cff7ec8fafeb8a8bc")
!39 = !{!40, !49, !53, !56, !62}
!40 = !DISubprogram(name: "allocate", linkageName: "_ZNSt16allocator_traitsISaIfEE8allocateERS0_m", scope: !37, file: !38, line: 463, type: !41, scopeLine: 463, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!41 = !DISubroutineType(types: !42)
!42 = !{!43, !44, !48}
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !37, file: !38, line: 420, baseType: !22)
!44 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocator_type", scope: !37, file: !38, line: 414, baseType: !46)
!46 = !DICompositeType(tag: DW_TAG_class_type, name: "allocator<float>", scope: !17, file: !47, line: 124, size: 8, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSaIfE")
!47 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/allocator.h", directory: "", checksumkind: CSK_MD5, checksum: "52abf05a7426983321ecef80fe4251be")
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", file: !38, line: 435, baseType: !15)
!49 = !DISubprogram(name: "allocate", linkageName: "_ZNSt16allocator_traitsISaIfEE8allocateERS0_mPKv", scope: !37, file: !38, line: 477, type: !50, scopeLine: 477, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!50 = !DISubroutineType(types: !51)
!51 = !{!43, !44, !48, !52}
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_void_pointer", file: !38, line: 429, baseType: !20)
!53 = !DISubprogram(name: "deallocate", linkageName: "_ZNSt16allocator_traitsISaIfEE10deallocateERS0_Pfm", scope: !37, file: !38, line: 495, type: !54, scopeLine: 495, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!54 = !DISubroutineType(types: !55)
!55 = !{null, !44, !43, !48}
!56 = !DISubprogram(name: "max_size", linkageName: "_ZNSt16allocator_traitsISaIfEE8max_sizeERKS0_", scope: !37, file: !38, line: 547, type: !57, scopeLine: 547, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!57 = !DISubroutineType(types: !58)
!58 = !{!59, !60}
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !37, file: !38, line: 435, baseType: !15)
!60 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!62 = !DISubprogram(name: "select_on_container_copy_construction", linkageName: "_ZNSt16allocator_traitsISaIfEE37select_on_container_copy_constructionERKS0_", scope: !37, file: !38, line: 562, type: !63, scopeLine: 562, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!63 = !DISubroutineType(types: !64)
!64 = !{!45, !60}
!65 = !{!66}
!66 = !DITemplateTypeParameter(name: "_Alloc", type: !46)
!67 = !DISubprogram(name: "_S_select_on_copy", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIfEfE17_S_select_on_copyERKS1_", scope: !33, file: !32, line: 97, type: !68, scopeLine: 97, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!68 = !DISubroutineType(types: !69)
!69 = !{!46, !70}
!70 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!72 = !DISubprogram(name: "_S_on_swap", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIfEfE10_S_on_swapERS1_S3_", scope: !33, file: !32, line: 100, type: !73, scopeLine: 100, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!73 = !DISubroutineType(types: !74)
!74 = !{null, !75, !75}
!75 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !46, size: 64)
!76 = !DISubprogram(name: "_S_propagate_on_copy_assign", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIfEfE27_S_propagate_on_copy_assignEv", scope: !33, file: !32, line: 103, type: !77, scopeLine: 103, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!77 = !DISubroutineType(types: !78)
!78 = !{!79}
!79 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!80 = !DISubprogram(name: "_S_propagate_on_move_assign", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIfEfE27_S_propagate_on_move_assignEv", scope: !33, file: !32, line: 106, type: !77, scopeLine: 106, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!81 = !DISubprogram(name: "_S_propagate_on_swap", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIfEfE20_S_propagate_on_swapEv", scope: !33, file: !32, line: 109, type: !77, scopeLine: 109, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!82 = !DISubprogram(name: "_S_always_equal", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIfEfE15_S_always_equalEv", scope: !33, file: !32, line: 112, type: !77, scopeLine: 112, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!83 = !DISubprogram(name: "_S_nothrow_move", linkageName: "_ZN9__gnu_cxx14__alloc_traitsISaIfEfE15_S_nothrow_moveEv", scope: !33, file: !32, line: 115, type: !77, scopeLine: 115, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!84 = !{!66, !85}
!85 = !DITemplateTypeParameter(type: !12)
!86 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Tp_alloc_type", scope: !25, file: !14, line: 410, baseType: !88)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Tp_alloc_type", scope: !30, file: !14, line: 87, baseType: !89)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "other", scope: !90, file: !32, line: 120, baseType: !94)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rebind<float>", scope: !33, file: !32, line: 119, size: 8, flags: DIFlagTypePassByValue, elements: !91, templateParams: !92, identifier: "_ZTSN9__gnu_cxx14__alloc_traitsISaIfEfE6rebindIfEE")
!91 = !{}
!92 = !{!93}
!93 = !DITemplateTypeParameter(name: "_Tp", type: !12)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "rebind_alloc<float>", scope: !37, file: !38, line: 450, baseType: !46)
!95 = !DISubprogram(name: "_S_relocate", linkageName: "_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_", scope: !25, file: !14, line: 465, type: !26, scopeLine: 465, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "__bool_constant<_S_use_relocate()>", scope: !17, file: !97, line: 91, baseType: !98)
!97 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/type_traits", directory: "")
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "integral_constant<bool, true>", scope: !17, file: !97, line: 65, size: 8, flags: DIFlagTypePassByValue, elements: !99, templateParams: !108, identifier: "_ZTSSt17integral_constantIbLb1EE")
!99 = !{!100, !102}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !98, file: !97, line: 67, baseType: !101, flags: DIFlagStaticMember, extraData: i1 true)
!101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!102 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt17integral_constantIbLb1EEcvbEv", scope: !98, file: !97, line: 70, type: !103, scopeLine: 70, flags: DIFlagPrototyped, spFlags: 0)
!103 = !DISubroutineType(types: !104)
!104 = !{!105, !106}
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !98, file: !97, line: 68, baseType: !79)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!108 = !{!109, !110}
!109 = !DITemplateTypeParameter(name: "_Tp", type: !79)
!110 = !DITemplateValueParameter(name: "__v", type: !79, value: i8 1)
!111 = !{!0}
!112 = !{!113, !117, !123, !130, !132, !134, !138, !140, !142, !144, !146, !148, !150, !152, !157, !161, !163, !165, !170, !172, !174, !176, !178, !180, !182, !185, !187, !189, !193, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !222, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !260, !264, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !290, !294, !298, !300, !302, !304, !309, !313, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !346, !350, !354, !356, !358, !360, !365, !369, !373, !375, !377, !379, !381, !383, !385, !389, !393, !395, !397, !399, !401, !405, !409, !413, !415, !417, !419, !421, !423, !425, !429, !433, !437, !439, !443, !447, !449, !451, !453, !455, !457, !459, !462}
!113 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !114, entity: !115, file: !116, line: 58)
!114 = !DINamespace(name: "__gnu_debug", scope: null)
!115 = !DINamespace(name: "__debug", scope: !17)
!116 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/debug/debug.h", directory: "", checksumkind: CSK_MD5, checksum: "982c0103e1e5f86b0818efdfc5273c3c")
!117 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !118, file: !122, line: 52)
!118 = !DISubprogram(name: "abs", scope: !119, file: !119, line: 848, type: !120, flags: DIFlagPrototyped, spFlags: 0)
!119 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!120 = !DISubroutineType(types: !121)
!121 = !{!11, !11}
!122 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/std_abs.h", directory: "")
!123 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !124, file: !129, line: 83)
!124 = !DISubprogram(name: "acos", scope: !125, file: !125, line: 53, type: !126, flags: DIFlagPrototyped, spFlags: 0)
!125 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "8c6e2d0d2bda65bc5ba1ca02b65383b7")
!126 = !DISubroutineType(types: !127)
!127 = !{!128, !128}
!128 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!129 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cmath", directory: "")
!130 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !131, file: !129, line: 102)
!131 = !DISubprogram(name: "asin", scope: !125, file: !125, line: 55, type: !126, flags: DIFlagPrototyped, spFlags: 0)
!132 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !133, file: !129, line: 121)
!133 = !DISubprogram(name: "atan", scope: !125, file: !125, line: 57, type: !126, flags: DIFlagPrototyped, spFlags: 0)
!134 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !135, file: !129, line: 140)
!135 = !DISubprogram(name: "atan2", scope: !125, file: !125, line: 59, type: !136, flags: DIFlagPrototyped, spFlags: 0)
!136 = !DISubroutineType(types: !137)
!137 = !{!128, !128, !128}
!138 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !139, file: !129, line: 161)
!139 = !DISubprogram(name: "ceil", scope: !125, file: !125, line: 159, type: !126, flags: DIFlagPrototyped, spFlags: 0)
!140 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !141, file: !129, line: 180)
!141 = !DISubprogram(name: "cos", scope: !125, file: !125, line: 62, type: !126, flags: DIFlagPrototyped, spFlags: 0)
!142 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !143, file: !129, line: 199)
!143 = !DISubprogram(name: "cosh", scope: !125, file: !125, line: 71, type: !126, flags: DIFlagPrototyped, spFlags: 0)
!144 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !145, file: !129, line: 218)
!145 = !DISubprogram(name: "exp", scope: !125, file: !125, line: 95, type: !126, flags: DIFlagPrototyped, spFlags: 0)
!146 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !147, file: !129, line: 237)
!147 = !DISubprogram(name: "fabs", scope: !125, file: !125, line: 162, type: !126, flags: DIFlagPrototyped, spFlags: 0)
!148 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !149, file: !129, line: 256)
!149 = !DISubprogram(name: "floor", scope: !125, file: !125, line: 165, type: !126, flags: DIFlagPrototyped, spFlags: 0)
!150 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !151, file: !129, line: 275)
!151 = !DISubprogram(name: "fmod", scope: !125, file: !125, line: 168, type: !136, flags: DIFlagPrototyped, spFlags: 0)
!152 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !153, file: !129, line: 296)
!153 = !DISubprogram(name: "frexp", scope: !125, file: !125, line: 98, type: !154, flags: DIFlagPrototyped, spFlags: 0)
!154 = !DISubroutineType(types: !155)
!155 = !{!128, !128, !156}
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!157 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !158, file: !129, line: 315)
!158 = !DISubprogram(name: "ldexp", scope: !125, file: !125, line: 101, type: !159, flags: DIFlagPrototyped, spFlags: 0)
!159 = !DISubroutineType(types: !160)
!160 = !{!128, !128, !11}
!161 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !162, file: !129, line: 334)
!162 = !DISubprogram(name: "log", scope: !125, file: !125, line: 104, type: !126, flags: DIFlagPrototyped, spFlags: 0)
!163 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !164, file: !129, line: 353)
!164 = !DISubprogram(name: "log10", scope: !125, file: !125, line: 107, type: !126, flags: DIFlagPrototyped, spFlags: 0)
!165 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !166, file: !129, line: 372)
!166 = !DISubprogram(name: "modf", scope: !125, file: !125, line: 110, type: !167, flags: DIFlagPrototyped, spFlags: 0)
!167 = !DISubroutineType(types: !168)
!168 = !{!128, !128, !169}
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!170 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !171, file: !129, line: 384)
!171 = !DISubprogram(name: "pow", scope: !125, file: !125, line: 140, type: !136, flags: DIFlagPrototyped, spFlags: 0)
!172 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !173, file: !129, line: 421)
!173 = !DISubprogram(name: "sin", scope: !125, file: !125, line: 64, type: !126, flags: DIFlagPrototyped, spFlags: 0)
!174 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !175, file: !129, line: 440)
!175 = !DISubprogram(name: "sinh", scope: !125, file: !125, line: 73, type: !126, flags: DIFlagPrototyped, spFlags: 0)
!176 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !177, file: !129, line: 459)
!177 = !DISubprogram(name: "sqrt", scope: !125, file: !125, line: 143, type: !126, flags: DIFlagPrototyped, spFlags: 0)
!178 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !179, file: !129, line: 478)
!179 = !DISubprogram(name: "tan", scope: !125, file: !125, line: 66, type: !126, flags: DIFlagPrototyped, spFlags: 0)
!180 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !181, file: !129, line: 497)
!181 = !DISubprogram(name: "tanh", scope: !125, file: !125, line: 75, type: !126, flags: DIFlagPrototyped, spFlags: 0)
!182 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !183, file: !129, line: 1065)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_t", file: !184, line: 164, baseType: !128)
!184 = !DIFile(filename: "/usr/include/math.h", directory: "", checksumkind: CSK_MD5, checksum: "f3450d1d586f704597de1a1b2bed18f3")
!185 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !186, file: !129, line: 1066)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "float_t", file: !184, line: 163, baseType: !12)
!187 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !188, file: !129, line: 1069)
!188 = !DISubprogram(name: "acosh", scope: !125, file: !125, line: 85, type: !126, flags: DIFlagPrototyped, spFlags: 0)
!189 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !190, file: !129, line: 1070)
!190 = !DISubprogram(name: "acoshf", scope: !125, file: !125, line: 85, type: !191, flags: DIFlagPrototyped, spFlags: 0)
!191 = !DISubroutineType(types: !192)
!192 = !{!12, !12}
!193 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !194, file: !129, line: 1071)
!194 = !DISubprogram(name: "acoshl", scope: !125, file: !125, line: 85, type: !195, flags: DIFlagPrototyped, spFlags: 0)
!195 = !DISubroutineType(types: !196)
!196 = !{!197, !197}
!197 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!198 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !199, file: !129, line: 1073)
!199 = !DISubprogram(name: "asinh", scope: !125, file: !125, line: 87, type: !126, flags: DIFlagPrototyped, spFlags: 0)
!200 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !201, file: !129, line: 1074)
!201 = !DISubprogram(name: "asinhf", scope: !125, file: !125, line: 87, type: !191, flags: DIFlagPrototyped, spFlags: 0)
!202 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !203, file: !129, line: 1075)
!203 = !DISubprogram(name: "asinhl", scope: !125, file: !125, line: 87, type: !195, flags: DIFlagPrototyped, spFlags: 0)
!204 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !205, file: !129, line: 1077)
!205 = !DISubprogram(name: "atanh", scope: !125, file: !125, line: 89, type: !126, flags: DIFlagPrototyped, spFlags: 0)
!206 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !207, file: !129, line: 1078)
!207 = !DISubprogram(name: "atanhf", scope: !125, file: !125, line: 89, type: !191, flags: DIFlagPrototyped, spFlags: 0)
!208 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !209, file: !129, line: 1079)
!209 = !DISubprogram(name: "atanhl", scope: !125, file: !125, line: 89, type: !195, flags: DIFlagPrototyped, spFlags: 0)
!210 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !211, file: !129, line: 1081)
!211 = !DISubprogram(name: "cbrt", scope: !125, file: !125, line: 152, type: !126, flags: DIFlagPrototyped, spFlags: 0)
!212 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !213, file: !129, line: 1082)
!213 = !DISubprogram(name: "cbrtf", scope: !125, file: !125, line: 152, type: !191, flags: DIFlagPrototyped, spFlags: 0)
!214 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !215, file: !129, line: 1083)
!215 = !DISubprogram(name: "cbrtl", scope: !125, file: !125, line: 152, type: !195, flags: DIFlagPrototyped, spFlags: 0)
!216 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !217, file: !129, line: 1085)
!217 = !DISubprogram(name: "copysign", scope: !125, file: !125, line: 198, type: !136, flags: DIFlagPrototyped, spFlags: 0)
!218 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !219, file: !129, line: 1086)
!219 = !DISubprogram(name: "copysignf", scope: !125, file: !125, line: 198, type: !220, flags: DIFlagPrototyped, spFlags: 0)
!220 = !DISubroutineType(types: !221)
!221 = !{!12, !12, !12}
!222 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !223, file: !129, line: 1087)
!223 = !DISubprogram(name: "copysignl", scope: !125, file: !125, line: 198, type: !224, flags: DIFlagPrototyped, spFlags: 0)
!224 = !DISubroutineType(types: !225)
!225 = !{!197, !197, !197}
!226 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !227, file: !129, line: 1089)
!227 = !DISubprogram(name: "erf", scope: !125, file: !125, line: 231, type: !126, flags: DIFlagPrototyped, spFlags: 0)
!228 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !229, file: !129, line: 1090)
!229 = !DISubprogram(name: "erff", scope: !125, file: !125, line: 231, type: !191, flags: DIFlagPrototyped, spFlags: 0)
!230 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !231, file: !129, line: 1091)
!231 = !DISubprogram(name: "erfl", scope: !125, file: !125, line: 231, type: !195, flags: DIFlagPrototyped, spFlags: 0)
!232 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !233, file: !129, line: 1093)
!233 = !DISubprogram(name: "erfc", scope: !125, file: !125, line: 232, type: !126, flags: DIFlagPrototyped, spFlags: 0)
!234 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !235, file: !129, line: 1094)
!235 = !DISubprogram(name: "erfcf", scope: !125, file: !125, line: 232, type: !191, flags: DIFlagPrototyped, spFlags: 0)
!236 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !237, file: !129, line: 1095)
!237 = !DISubprogram(name: "erfcl", scope: !125, file: !125, line: 232, type: !195, flags: DIFlagPrototyped, spFlags: 0)
!238 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !239, file: !129, line: 1097)
!239 = !DISubprogram(name: "exp2", scope: !125, file: !125, line: 130, type: !126, flags: DIFlagPrototyped, spFlags: 0)
!240 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !241, file: !129, line: 1098)
!241 = !DISubprogram(name: "exp2f", scope: !125, file: !125, line: 130, type: !191, flags: DIFlagPrototyped, spFlags: 0)
!242 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !243, file: !129, line: 1099)
!243 = !DISubprogram(name: "exp2l", scope: !125, file: !125, line: 130, type: !195, flags: DIFlagPrototyped, spFlags: 0)
!244 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !245, file: !129, line: 1101)
!245 = !DISubprogram(name: "expm1", scope: !125, file: !125, line: 119, type: !126, flags: DIFlagPrototyped, spFlags: 0)
!246 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !247, file: !129, line: 1102)
!247 = !DISubprogram(name: "expm1f", scope: !125, file: !125, line: 119, type: !191, flags: DIFlagPrototyped, spFlags: 0)
!248 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !249, file: !129, line: 1103)
!249 = !DISubprogram(name: "expm1l", scope: !125, file: !125, line: 119, type: !195, flags: DIFlagPrototyped, spFlags: 0)
!250 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !251, file: !129, line: 1105)
!251 = !DISubprogram(name: "fdim", scope: !125, file: !125, line: 329, type: !136, flags: DIFlagPrototyped, spFlags: 0)
!252 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !253, file: !129, line: 1106)
!253 = !DISubprogram(name: "fdimf", scope: !125, file: !125, line: 329, type: !220, flags: DIFlagPrototyped, spFlags: 0)
!254 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !255, file: !129, line: 1107)
!255 = !DISubprogram(name: "fdiml", scope: !125, file: !125, line: 329, type: !224, flags: DIFlagPrototyped, spFlags: 0)
!256 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !257, file: !129, line: 1109)
!257 = !DISubprogram(name: "fma", scope: !125, file: !125, line: 340, type: !258, flags: DIFlagPrototyped, spFlags: 0)
!258 = !DISubroutineType(types: !259)
!259 = !{!128, !128, !128, !128}
!260 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !261, file: !129, line: 1110)
!261 = !DISubprogram(name: "fmaf", scope: !125, file: !125, line: 340, type: !262, flags: DIFlagPrototyped, spFlags: 0)
!262 = !DISubroutineType(types: !263)
!263 = !{!12, !12, !12, !12}
!264 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !265, file: !129, line: 1111)
!265 = !DISubprogram(name: "fmal", scope: !125, file: !125, line: 340, type: !266, flags: DIFlagPrototyped, spFlags: 0)
!266 = !DISubroutineType(types: !267)
!267 = !{!197, !197, !197, !197}
!268 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !269, file: !129, line: 1113)
!269 = !DISubprogram(name: "fmax", scope: !125, file: !125, line: 333, type: !136, flags: DIFlagPrototyped, spFlags: 0)
!270 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !271, file: !129, line: 1114)
!271 = !DISubprogram(name: "fmaxf", scope: !125, file: !125, line: 333, type: !220, flags: DIFlagPrototyped, spFlags: 0)
!272 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !273, file: !129, line: 1115)
!273 = !DISubprogram(name: "fmaxl", scope: !125, file: !125, line: 333, type: !224, flags: DIFlagPrototyped, spFlags: 0)
!274 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !275, file: !129, line: 1117)
!275 = !DISubprogram(name: "fmin", scope: !125, file: !125, line: 336, type: !136, flags: DIFlagPrototyped, spFlags: 0)
!276 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !277, file: !129, line: 1118)
!277 = !DISubprogram(name: "fminf", scope: !125, file: !125, line: 336, type: !220, flags: DIFlagPrototyped, spFlags: 0)
!278 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !279, file: !129, line: 1119)
!279 = !DISubprogram(name: "fminl", scope: !125, file: !125, line: 336, type: !224, flags: DIFlagPrototyped, spFlags: 0)
!280 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !281, file: !129, line: 1121)
!281 = !DISubprogram(name: "hypot", scope: !125, file: !125, line: 147, type: !136, flags: DIFlagPrototyped, spFlags: 0)
!282 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !283, file: !129, line: 1122)
!283 = !DISubprogram(name: "hypotf", scope: !125, file: !125, line: 147, type: !220, flags: DIFlagPrototyped, spFlags: 0)
!284 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !285, file: !129, line: 1123)
!285 = !DISubprogram(name: "hypotl", scope: !125, file: !125, line: 147, type: !224, flags: DIFlagPrototyped, spFlags: 0)
!286 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !287, file: !129, line: 1125)
!287 = !DISubprogram(name: "ilogb", scope: !125, file: !125, line: 283, type: !288, flags: DIFlagPrototyped, spFlags: 0)
!288 = !DISubroutineType(types: !289)
!289 = !{!11, !128}
!290 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !291, file: !129, line: 1126)
!291 = !DISubprogram(name: "ilogbf", scope: !125, file: !125, line: 283, type: !292, flags: DIFlagPrototyped, spFlags: 0)
!292 = !DISubroutineType(types: !293)
!293 = !{!11, !12}
!294 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !295, file: !129, line: 1127)
!295 = !DISubprogram(name: "ilogbl", scope: !125, file: !125, line: 283, type: !296, flags: DIFlagPrototyped, spFlags: 0)
!296 = !DISubroutineType(types: !297)
!297 = !{!11, !197}
!298 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !299, file: !129, line: 1129)
!299 = !DISubprogram(name: "lgamma", scope: !125, file: !125, line: 233, type: !126, flags: DIFlagPrototyped, spFlags: 0)
!300 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !301, file: !129, line: 1130)
!301 = !DISubprogram(name: "lgammaf", scope: !125, file: !125, line: 233, type: !191, flags: DIFlagPrototyped, spFlags: 0)
!302 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !303, file: !129, line: 1131)
!303 = !DISubprogram(name: "lgammal", scope: !125, file: !125, line: 233, type: !195, flags: DIFlagPrototyped, spFlags: 0)
!304 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !305, file: !129, line: 1134)
!305 = !DISubprogram(name: "llrint", scope: !125, file: !125, line: 319, type: !306, flags: DIFlagPrototyped, spFlags: 0)
!306 = !DISubroutineType(types: !307)
!307 = !{!308, !128}
!308 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!309 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !310, file: !129, line: 1135)
!310 = !DISubprogram(name: "llrintf", scope: !125, file: !125, line: 319, type: !311, flags: DIFlagPrototyped, spFlags: 0)
!311 = !DISubroutineType(types: !312)
!312 = !{!308, !12}
!313 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !314, file: !129, line: 1136)
!314 = !DISubprogram(name: "llrintl", scope: !125, file: !125, line: 319, type: !315, flags: DIFlagPrototyped, spFlags: 0)
!315 = !DISubroutineType(types: !316)
!316 = !{!308, !197}
!317 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !318, file: !129, line: 1138)
!318 = !DISubprogram(name: "llround", scope: !125, file: !125, line: 325, type: !306, flags: DIFlagPrototyped, spFlags: 0)
!319 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !320, file: !129, line: 1139)
!320 = !DISubprogram(name: "llroundf", scope: !125, file: !125, line: 325, type: !311, flags: DIFlagPrototyped, spFlags: 0)
!321 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !322, file: !129, line: 1140)
!322 = !DISubprogram(name: "llroundl", scope: !125, file: !125, line: 325, type: !315, flags: DIFlagPrototyped, spFlags: 0)
!323 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !324, file: !129, line: 1143)
!324 = !DISubprogram(name: "log1p", scope: !125, file: !125, line: 122, type: !126, flags: DIFlagPrototyped, spFlags: 0)
!325 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !326, file: !129, line: 1144)
!326 = !DISubprogram(name: "log1pf", scope: !125, file: !125, line: 122, type: !191, flags: DIFlagPrototyped, spFlags: 0)
!327 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !328, file: !129, line: 1145)
!328 = !DISubprogram(name: "log1pl", scope: !125, file: !125, line: 122, type: !195, flags: DIFlagPrototyped, spFlags: 0)
!329 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !330, file: !129, line: 1147)
!330 = !DISubprogram(name: "log2", scope: !125, file: !125, line: 133, type: !126, flags: DIFlagPrototyped, spFlags: 0)
!331 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !332, file: !129, line: 1148)
!332 = !DISubprogram(name: "log2f", scope: !125, file: !125, line: 133, type: !191, flags: DIFlagPrototyped, spFlags: 0)
!333 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !334, file: !129, line: 1149)
!334 = !DISubprogram(name: "log2l", scope: !125, file: !125, line: 133, type: !195, flags: DIFlagPrototyped, spFlags: 0)
!335 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !336, file: !129, line: 1151)
!336 = !DISubprogram(name: "logb", scope: !125, file: !125, line: 125, type: !126, flags: DIFlagPrototyped, spFlags: 0)
!337 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !338, file: !129, line: 1152)
!338 = !DISubprogram(name: "logbf", scope: !125, file: !125, line: 125, type: !191, flags: DIFlagPrototyped, spFlags: 0)
!339 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !340, file: !129, line: 1153)
!340 = !DISubprogram(name: "logbl", scope: !125, file: !125, line: 125, type: !195, flags: DIFlagPrototyped, spFlags: 0)
!341 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !342, file: !129, line: 1155)
!342 = !DISubprogram(name: "lrint", scope: !125, file: !125, line: 317, type: !343, flags: DIFlagPrototyped, spFlags: 0)
!343 = !DISubroutineType(types: !344)
!344 = !{!345, !128}
!345 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!346 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !347, file: !129, line: 1156)
!347 = !DISubprogram(name: "lrintf", scope: !125, file: !125, line: 317, type: !348, flags: DIFlagPrototyped, spFlags: 0)
!348 = !DISubroutineType(types: !349)
!349 = !{!345, !12}
!350 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !351, file: !129, line: 1157)
!351 = !DISubprogram(name: "lrintl", scope: !125, file: !125, line: 317, type: !352, flags: DIFlagPrototyped, spFlags: 0)
!352 = !DISubroutineType(types: !353)
!353 = !{!345, !197}
!354 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !355, file: !129, line: 1159)
!355 = !DISubprogram(name: "lround", scope: !125, file: !125, line: 323, type: !343, flags: DIFlagPrototyped, spFlags: 0)
!356 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !357, file: !129, line: 1160)
!357 = !DISubprogram(name: "lroundf", scope: !125, file: !125, line: 323, type: !348, flags: DIFlagPrototyped, spFlags: 0)
!358 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !359, file: !129, line: 1161)
!359 = !DISubprogram(name: "lroundl", scope: !125, file: !125, line: 323, type: !352, flags: DIFlagPrototyped, spFlags: 0)
!360 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !361, file: !129, line: 1163)
!361 = !DISubprogram(name: "nan", scope: !125, file: !125, line: 203, type: !362, flags: DIFlagPrototyped, spFlags: 0)
!362 = !DISubroutineType(types: !363)
!363 = !{!128, !364}
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!365 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !366, file: !129, line: 1164)
!366 = !DISubprogram(name: "nanf", scope: !125, file: !125, line: 203, type: !367, flags: DIFlagPrototyped, spFlags: 0)
!367 = !DISubroutineType(types: !368)
!368 = !{!12, !364}
!369 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !370, file: !129, line: 1165)
!370 = !DISubprogram(name: "nanl", scope: !125, file: !125, line: 203, type: !371, flags: DIFlagPrototyped, spFlags: 0)
!371 = !DISubroutineType(types: !372)
!372 = !{!197, !364}
!373 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !374, file: !129, line: 1167)
!374 = !DISubprogram(name: "nearbyint", scope: !125, file: !125, line: 297, type: !126, flags: DIFlagPrototyped, spFlags: 0)
!375 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !376, file: !129, line: 1168)
!376 = !DISubprogram(name: "nearbyintf", scope: !125, file: !125, line: 297, type: !191, flags: DIFlagPrototyped, spFlags: 0)
!377 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !378, file: !129, line: 1169)
!378 = !DISubprogram(name: "nearbyintl", scope: !125, file: !125, line: 297, type: !195, flags: DIFlagPrototyped, spFlags: 0)
!379 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !380, file: !129, line: 1171)
!380 = !DISubprogram(name: "nextafter", scope: !125, file: !125, line: 262, type: !136, flags: DIFlagPrototyped, spFlags: 0)
!381 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !382, file: !129, line: 1172)
!382 = !DISubprogram(name: "nextafterf", scope: !125, file: !125, line: 262, type: !220, flags: DIFlagPrototyped, spFlags: 0)
!383 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !384, file: !129, line: 1173)
!384 = !DISubprogram(name: "nextafterl", scope: !125, file: !125, line: 262, type: !224, flags: DIFlagPrototyped, spFlags: 0)
!385 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !386, file: !129, line: 1175)
!386 = !DISubprogram(name: "nexttoward", scope: !125, file: !125, line: 264, type: !387, flags: DIFlagPrototyped, spFlags: 0)
!387 = !DISubroutineType(types: !388)
!388 = !{!128, !128, !197}
!389 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !390, file: !129, line: 1176)
!390 = !DISubprogram(name: "nexttowardf", scope: !125, file: !125, line: 264, type: !391, flags: DIFlagPrototyped, spFlags: 0)
!391 = !DISubroutineType(types: !392)
!392 = !{!12, !12, !197}
!393 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !394, file: !129, line: 1177)
!394 = !DISubprogram(name: "nexttowardl", scope: !125, file: !125, line: 264, type: !224, flags: DIFlagPrototyped, spFlags: 0)
!395 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !396, file: !129, line: 1179)
!396 = !DISubprogram(name: "remainder", scope: !125, file: !125, line: 275, type: !136, flags: DIFlagPrototyped, spFlags: 0)
!397 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !398, file: !129, line: 1180)
!398 = !DISubprogram(name: "remainderf", scope: !125, file: !125, line: 275, type: !220, flags: DIFlagPrototyped, spFlags: 0)
!399 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !400, file: !129, line: 1181)
!400 = !DISubprogram(name: "remainderl", scope: !125, file: !125, line: 275, type: !224, flags: DIFlagPrototyped, spFlags: 0)
!401 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !402, file: !129, line: 1183)
!402 = !DISubprogram(name: "remquo", scope: !125, file: !125, line: 310, type: !403, flags: DIFlagPrototyped, spFlags: 0)
!403 = !DISubroutineType(types: !404)
!404 = !{!128, !128, !128, !156}
!405 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !406, file: !129, line: 1184)
!406 = !DISubprogram(name: "remquof", scope: !125, file: !125, line: 310, type: !407, flags: DIFlagPrototyped, spFlags: 0)
!407 = !DISubroutineType(types: !408)
!408 = !{!12, !12, !12, !156}
!409 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !410, file: !129, line: 1185)
!410 = !DISubprogram(name: "remquol", scope: !125, file: !125, line: 310, type: !411, flags: DIFlagPrototyped, spFlags: 0)
!411 = !DISubroutineType(types: !412)
!412 = !{!197, !197, !197, !156}
!413 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !414, file: !129, line: 1187)
!414 = !DISubprogram(name: "rint", scope: !125, file: !125, line: 259, type: !126, flags: DIFlagPrototyped, spFlags: 0)
!415 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !416, file: !129, line: 1188)
!416 = !DISubprogram(name: "rintf", scope: !125, file: !125, line: 259, type: !191, flags: DIFlagPrototyped, spFlags: 0)
!417 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !418, file: !129, line: 1189)
!418 = !DISubprogram(name: "rintl", scope: !125, file: !125, line: 259, type: !195, flags: DIFlagPrototyped, spFlags: 0)
!419 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !420, file: !129, line: 1191)
!420 = !DISubprogram(name: "round", scope: !125, file: !125, line: 301, type: !126, flags: DIFlagPrototyped, spFlags: 0)
!421 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !422, file: !129, line: 1192)
!422 = !DISubprogram(name: "roundf", scope: !125, file: !125, line: 301, type: !191, flags: DIFlagPrototyped, spFlags: 0)
!423 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !424, file: !129, line: 1193)
!424 = !DISubprogram(name: "roundl", scope: !125, file: !125, line: 301, type: !195, flags: DIFlagPrototyped, spFlags: 0)
!425 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !426, file: !129, line: 1195)
!426 = !DISubprogram(name: "scalbln", scope: !125, file: !125, line: 293, type: !427, flags: DIFlagPrototyped, spFlags: 0)
!427 = !DISubroutineType(types: !428)
!428 = !{!128, !128, !345}
!429 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !430, file: !129, line: 1196)
!430 = !DISubprogram(name: "scalblnf", scope: !125, file: !125, line: 293, type: !431, flags: DIFlagPrototyped, spFlags: 0)
!431 = !DISubroutineType(types: !432)
!432 = !{!12, !12, !345}
!433 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !434, file: !129, line: 1197)
!434 = !DISubprogram(name: "scalblnl", scope: !125, file: !125, line: 293, type: !435, flags: DIFlagPrototyped, spFlags: 0)
!435 = !DISubroutineType(types: !436)
!436 = !{!197, !197, !345}
!437 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !438, file: !129, line: 1199)
!438 = !DISubprogram(name: "scalbn", scope: !125, file: !125, line: 279, type: !159, flags: DIFlagPrototyped, spFlags: 0)
!439 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !440, file: !129, line: 1200)
!440 = !DISubprogram(name: "scalbnf", scope: !125, file: !125, line: 279, type: !441, flags: DIFlagPrototyped, spFlags: 0)
!441 = !DISubroutineType(types: !442)
!442 = !{!12, !12, !11}
!443 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !444, file: !129, line: 1201)
!444 = !DISubprogram(name: "scalbnl", scope: !125, file: !125, line: 279, type: !445, flags: DIFlagPrototyped, spFlags: 0)
!445 = !DISubroutineType(types: !446)
!446 = !{!197, !197, !11}
!447 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !448, file: !129, line: 1203)
!448 = !DISubprogram(name: "tgamma", scope: !125, file: !125, line: 238, type: !126, flags: DIFlagPrototyped, spFlags: 0)
!449 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !450, file: !129, line: 1204)
!450 = !DISubprogram(name: "tgammaf", scope: !125, file: !125, line: 238, type: !191, flags: DIFlagPrototyped, spFlags: 0)
!451 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !452, file: !129, line: 1205)
!452 = !DISubprogram(name: "tgammal", scope: !125, file: !125, line: 238, type: !195, flags: DIFlagPrototyped, spFlags: 0)
!453 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !454, file: !129, line: 1207)
!454 = !DISubprogram(name: "trunc", scope: !125, file: !125, line: 305, type: !126, flags: DIFlagPrototyped, spFlags: 0)
!455 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !456, file: !129, line: 1208)
!456 = !DISubprogram(name: "truncf", scope: !125, file: !125, line: 305, type: !191, flags: DIFlagPrototyped, spFlags: 0)
!457 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !17, entity: !458, file: !129, line: 1209)
!458 = !DISubprogram(name: "truncl", scope: !125, file: !125, line: 305, type: !195, flags: DIFlagPrototyped, spFlags: 0)
!459 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !460, file: !461, line: 38)
!460 = !DISubprogram(name: "abs", linkageName: "_ZSt3abse", scope: !17, file: !122, line: 79, type: !195, flags: DIFlagPrototyped, spFlags: 0)
!461 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/math.h", directory: "", checksumkind: CSK_MD5, checksum: "a990cded20a6fb8dad866460b8c40922")
!462 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !463, file: !461, line: 54)
!463 = !DISubprogram(name: "modf", linkageName: "_ZSt4modfePe", scope: !17, file: !129, line: 380, type: !464, flags: DIFlagPrototyped, spFlags: 0)
!464 = !DISubroutineType(types: !465)
!465 = !{!197, !197, !466}
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!467 = !{i32 7, !"Dwarf Version", i32 5}
!468 = !{i32 2, !"Debug Info Version", i32 3}
!469 = !{i32 1, !"wchar_size", i32 4}
!470 = !{i32 8, !"PIC Level", i32 2}
!471 = !{i32 7, !"PIE Level", i32 2}
!472 = !{i32 7, !"uwtable", i32 2}
!473 = !{i32 7, !"frame-pointer", i32 2}
!474 = !{!"clang version 16.0.0"}
!475 = distinct !DISubprogram(name: "delta_alpha", linkageName: "_Z11delta_alphafRSt6vectorIfSaIfEEf", scope: !9, file: !9, line: 27, type: !476, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, retainedNodes: !91)
!476 = !DISubroutineType(types: !477)
!477 = !{!12, !12, !478, !12}
!478 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !25, size: 64)
!479 = !DILocalVariable(name: "beta", arg: 1, scope: !475, file: !9, line: 27, type: !12)
!480 = !DILocation(line: 27, column: 25, scope: !475)
!481 = !DILocalVariable(name: "ets", arg: 2, scope: !475, file: !9, line: 27, type: !478)
!482 = !DILocation(line: 27, column: 50, scope: !475)
!483 = !DILocalVariable(name: "alpha_desired", arg: 3, scope: !475, file: !9, line: 27, type: !12)
!484 = !DILocation(line: 27, column: 60, scope: !475)
!485 = !DILocalVariable(name: "N", scope: !475, file: !9, line: 29, type: !11)
!486 = !DILocation(line: 29, column: 6, scope: !475)
!487 = !DILocation(line: 29, column: 16, scope: !475)
!488 = !DILocation(line: 29, column: 20, scope: !475)
!489 = !DILocalVariable(name: "B", scope: !475, file: !9, line: 30, type: !12)
!490 = !DILocation(line: 30, column: 8, scope: !475)
!491 = !DILocalVariable(name: "F", scope: !475, file: !9, line: 31, type: !12)
!492 = !DILocation(line: 31, column: 8, scope: !475)
!493 = !DILocalVariable(name: "ei", scope: !475, file: !9, line: 32, type: !12)
!494 = !DILocation(line: 32, column: 8, scope: !475)
!495 = !DILocalVariable(name: "v", scope: !475, file: !9, line: 33, type: !128)
!496 = !DILocation(line: 33, column: 9, scope: !475)
!497 = !DILocalVariable(name: "i", scope: !498, file: !9, line: 35, type: !11)
!498 = distinct !DILexicalBlock(scope: !475, file: !9, line: 35, column: 2)
!499 = !DILocation(line: 35, column: 10, scope: !498)
!500 = !DILocation(line: 35, column: 6, scope: !498)
!501 = !DILocation(line: 35, column: 14, scope: !502)
!502 = distinct !DILexicalBlock(scope: !498, file: !9, line: 35, column: 2)
!503 = !DILocation(line: 35, column: 16, scope: !502)
!504 = !DILocation(line: 35, column: 15, scope: !502)
!505 = !DILocation(line: 35, column: 2, scope: !498)
!506 = !DILocation(line: 36, column: 8, scope: !507)
!507 = distinct !DILexicalBlock(scope: !502, file: !9, line: 36, column: 2)
!508 = !DILocation(line: 36, column: 13, scope: !507)
!509 = !DILocation(line: 36, column: 17, scope: !507)
!510 = !DILocation(line: 36, column: 12, scope: !507)
!511 = !DILocation(line: 36, column: 6, scope: !507)
!512 = !DILocation(line: 37, column: 6, scope: !513)
!513 = distinct !DILexicalBlock(scope: !507, file: !9, line: 37, column: 6)
!514 = !DILocation(line: 37, column: 7, scope: !513)
!515 = !DILocation(line: 37, column: 6, scope: !507)
!516 = !DILocation(line: 37, column: 32, scope: !513)
!517 = !DILocation(line: 37, column: 31, scope: !513)
!518 = !DILocation(line: 37, column: 23, scope: !513)
!519 = !DILocation(line: 38, column: 19, scope: !507)
!520 = !DILocation(line: 38, column: 15, scope: !507)
!521 = !DILocation(line: 38, column: 6, scope: !507)
!522 = !DILocation(line: 39, column: 8, scope: !507)
!523 = !DILocation(line: 39, column: 5, scope: !507)
!524 = !DILocation(line: 40, column: 9, scope: !507)
!525 = !DILocation(line: 40, column: 12, scope: !507)
!526 = !DILocation(line: 40, column: 5, scope: !507)
!527 = !DILocation(line: 41, column: 2, scope: !507)
!528 = !DILocation(line: 35, column: 19, scope: !502)
!529 = !DILocation(line: 35, column: 2, scope: !502)
!530 = distinct !{!530, !505, !531, !532}
!531 = !DILocation(line: 41, column: 2, scope: !498)
!532 = !{!"llvm.loop.mustprogress"}
!533 = !DILocation(line: 42, column: 12, scope: !475)
!534 = !DILocation(line: 42, column: 14, scope: !475)
!535 = !DILocation(line: 42, column: 13, scope: !475)
!536 = !DILocation(line: 42, column: 16, scope: !475)
!537 = !DILocation(line: 42, column: 15, scope: !475)
!538 = !DILocation(line: 42, column: 19, scope: !475)
!539 = !DILocation(line: 42, column: 18, scope: !475)
!540 = !DILocation(line: 42, column: 24, scope: !475)
!541 = !DILocation(line: 42, column: 22, scope: !475)
!542 = !DILocation(line: 42, column: 2, scope: !475)
!543 = !DILocation(line: 43, column: 1, scope: !475)
!544 = distinct !DISubprogram(name: "size", linkageName: "_ZNKSt6vectorIfSaIfEE4sizeEv", scope: !25, file: !14, line: 918, type: !545, scopeLine: 919, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, declaration: !549, retainedNodes: !91)
!545 = !DISubroutineType(types: !546)
!546 = !{!13, !547}
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!548 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!549 = !DISubprogram(name: "size", linkageName: "_ZNKSt6vectorIfSaIfEE4sizeEv", scope: !25, file: !14, line: 918, type: !545, scopeLine: 918, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!550 = !DILocalVariable(name: "this", arg: 1, scope: !544, type: !551, flags: DIFlagArtificial | DIFlagObjectPointer)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!552 = !DILocation(line: 0, scope: !544)
!553 = !DILocation(line: 919, column: 32, scope: !544)
!554 = !DILocation(line: 919, column: 40, scope: !544)
!555 = !DILocation(line: 919, column: 58, scope: !544)
!556 = !DILocation(line: 919, column: 66, scope: !544)
!557 = !DILocation(line: 919, column: 50, scope: !544)
!558 = !DILocation(line: 919, column: 9, scope: !544)
!559 = distinct !DISubprogram(name: "operator[]", linkageName: "_ZNSt6vectorIfSaIfEEixEm", scope: !25, file: !14, line: 1043, type: !560, scopeLine: 1044, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, declaration: !568, retainedNodes: !91)
!560 = !DISubroutineType(types: !561)
!561 = !{!562, !567, !13}
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !25, file: !14, line: 417, baseType: !563, flags: DIFlagPublic)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !33, file: !32, line: 62, baseType: !564)
!564 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !565, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !33, file: !32, line: 56, baseType: !566)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !37, file: !38, line: 417, baseType: !12)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!568 = !DISubprogram(name: "operator[]", linkageName: "_ZNSt6vectorIfSaIfEEixEm", scope: !25, file: !14, line: 1043, type: !560, scopeLine: 1043, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!569 = !DILocalVariable(name: "this", arg: 1, scope: !559, type: !570, flags: DIFlagArtificial | DIFlagObjectPointer)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!571 = !DILocation(line: 0, scope: !559)
!572 = !DILocalVariable(name: "__n", arg: 2, scope: !559, file: !14, line: 1043, type: !13)
!573 = !DILocation(line: 1043, column: 28, scope: !559)
!574 = !DILocation(line: 1046, column: 17, scope: !559)
!575 = !DILocation(line: 1046, column: 25, scope: !559)
!576 = !DILocation(line: 1046, column: 36, scope: !559)
!577 = !DILocation(line: 1046, column: 34, scope: !559)
!578 = !DILocation(line: 1046, column: 2, scope: !559)
!579 = distinct !DISubprogram(name: "BetaAnnealingFactor", linkageName: "_Z19BetaAnnealingFactorRSt6vectorIfSaIfEEfff", scope: !9, file: !9, line: 47, type: !580, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, retainedNodes: !91)
!580 = !DISubroutineType(types: !581)
!581 = !{!12, !478, !12, !12, !12}
!582 = !DILocalVariable(name: "ets", arg: 1, scope: !579, file: !9, line: 47, type: !478)
!583 = !DILocation(line: 47, column: 47, scope: !579)
!584 = !DILocalVariable(name: "alpha_desired", arg: 2, scope: !579, file: !9, line: 47, type: !12)
!585 = !DILocation(line: 47, column: 57, scope: !579)
!586 = !DILocalVariable(name: "beta_min", arg: 3, scope: !579, file: !9, line: 47, type: !12)
!587 = !DILocation(line: 47, column: 78, scope: !579)
!588 = !DILocalVariable(name: "beta_max", arg: 4, scope: !579, file: !9, line: 47, type: !12)
!589 = !DILocation(line: 47, column: 94, scope: !579)
!590 = !DILocalVariable(name: "n_iterations", scope: !579, file: !9, line: 49, type: !11)
!591 = !DILocation(line: 49, column: 6, scope: !579)
!592 = !DILocalVariable(name: "delta_alpha_min", scope: !579, file: !9, line: 52, type: !12)
!593 = !DILocation(line: 52, column: 8, scope: !579)
!594 = !DILocation(line: 52, column: 38, scope: !579)
!595 = !DILocation(line: 52, column: 47, scope: !579)
!596 = !DILocation(line: 52, column: 51, scope: !579)
!597 = !DILocation(line: 52, column: 26, scope: !579)
!598 = !DILocalVariable(name: "delta_alpha_max", scope: !579, file: !9, line: 53, type: !12)
!599 = !DILocation(line: 53, column: 8, scope: !579)
!600 = !DILocation(line: 53, column: 38, scope: !579)
!601 = !DILocation(line: 53, column: 47, scope: !579)
!602 = !DILocation(line: 53, column: 51, scope: !579)
!603 = !DILocation(line: 53, column: 26, scope: !579)
!604 = !DILocation(line: 56, column: 8, scope: !605)
!605 = distinct !DILexicalBlock(scope: !579, file: !9, line: 56, column: 6)
!606 = !DILocation(line: 56, column: 23, scope: !605)
!607 = !DILocation(line: 56, column: 26, scope: !605)
!608 = !DILocation(line: 56, column: 29, scope: !605)
!609 = !DILocation(line: 56, column: 44, scope: !605)
!610 = !DILocation(line: 56, column: 48, scope: !605)
!611 = !DILocation(line: 56, column: 52, scope: !605)
!612 = !DILocation(line: 56, column: 67, scope: !605)
!613 = !DILocation(line: 56, column: 70, scope: !605)
!614 = !DILocation(line: 56, column: 73, scope: !605)
!615 = !DILocation(line: 56, column: 88, scope: !605)
!616 = !DILocation(line: 56, column: 6, scope: !579)
!617 = !DILocation(line: 56, column: 94, scope: !605)
!618 = !DILocalVariable(name: "beta", scope: !579, file: !9, line: 58, type: !12)
!619 = !DILocation(line: 58, column: 8, scope: !579)
!620 = !DILocation(line: 58, column: 16, scope: !579)
!621 = !DILocation(line: 58, column: 27, scope: !579)
!622 = !DILocation(line: 58, column: 25, scope: !579)
!623 = !DILocation(line: 58, column: 36, scope: !579)
!624 = !DILocalVariable(name: "delta_alpha_beta", scope: !579, file: !9, line: 59, type: !12)
!625 = !DILocation(line: 59, column: 8, scope: !579)
!626 = !DILocation(line: 59, column: 39, scope: !579)
!627 = !DILocation(line: 59, column: 44, scope: !579)
!628 = !DILocation(line: 59, column: 48, scope: !579)
!629 = !DILocation(line: 59, column: 27, scope: !579)
!630 = !DILocation(line: 61, column: 2, scope: !579)
!631 = !DILocation(line: 61, column: 10, scope: !579)
!632 = !DILocation(line: 61, column: 26, scope: !579)
!633 = !DILocation(line: 61, column: 34, scope: !579)
!634 = !DILocation(line: 61, column: 33, scope: !579)
!635 = !DILocation(line: 61, column: 53, scope: !579)
!636 = !DILocation(line: 61, column: 70, scope: !579)
!637 = !DILocation(line: 61, column: 88, scope: !579)
!638 = !DILocation(line: 61, column: 92, scope: !579)
!639 = !DILocation(line: 61, column: 105, scope: !579)
!640 = !DILocation(line: 0, scope: !579)
!641 = !DILocation(line: 62, column: 9, scope: !642)
!642 = distinct !DILexicalBlock(scope: !643, file: !9, line: 62, column: 7)
!643 = distinct !DILexicalBlock(scope: !579, file: !9, line: 62, column: 2)
!644 = !DILocation(line: 62, column: 24, scope: !642)
!645 = !DILocation(line: 62, column: 27, scope: !642)
!646 = !DILocation(line: 62, column: 30, scope: !642)
!647 = !DILocation(line: 62, column: 46, scope: !642)
!648 = !DILocation(line: 62, column: 51, scope: !642)
!649 = !DILocation(line: 62, column: 56, scope: !642)
!650 = !DILocation(line: 62, column: 71, scope: !642)
!651 = !DILocation(line: 62, column: 75, scope: !642)
!652 = !DILocation(line: 62, column: 78, scope: !642)
!653 = !DILocation(line: 62, column: 94, scope: !642)
!654 = !DILocation(line: 62, column: 7, scope: !643)
!655 = !DILocation(line: 63, column: 18, scope: !656)
!656 = distinct !DILexicalBlock(scope: !642, file: !9, line: 63, column: 3)
!657 = !DILocation(line: 63, column: 16, scope: !656)
!658 = !DILocation(line: 64, column: 22, scope: !656)
!659 = !DILocation(line: 64, column: 20, scope: !656)
!660 = !DILocation(line: 65, column: 3, scope: !656)
!661 = !DILocation(line: 67, column: 16, scope: !662)
!662 = distinct !DILexicalBlock(scope: !642, file: !9, line: 67, column: 3)
!663 = !DILocation(line: 67, column: 14, scope: !662)
!664 = !DILocation(line: 68, column: 22, scope: !662)
!665 = !DILocation(line: 68, column: 20, scope: !662)
!666 = !DILocation(line: 70, column: 11, scope: !643)
!667 = !DILocation(line: 70, column: 22, scope: !643)
!668 = !DILocation(line: 70, column: 20, scope: !643)
!669 = !DILocation(line: 70, column: 31, scope: !643)
!670 = !DILocation(line: 70, column: 8, scope: !643)
!671 = !DILocation(line: 71, column: 34, scope: !643)
!672 = !DILocation(line: 71, column: 39, scope: !643)
!673 = !DILocation(line: 71, column: 43, scope: !643)
!674 = !DILocation(line: 71, column: 22, scope: !643)
!675 = !DILocation(line: 71, column: 20, scope: !643)
!676 = !DILocation(line: 72, column: 15, scope: !643)
!677 = distinct !{!677, !630, !678, !532}
!678 = !DILocation(line: 73, column: 2, scope: !579)
!679 = !DILocation(line: 74, column: 9, scope: !579)
!680 = !DILocation(line: 74, column: 2, scope: !579)
!681 = !DILocation(line: 75, column: 1, scope: !579)
!682 = distinct !DISubprogram(name: "set_ets", linkageName: "_Z7set_etsRSt6vectorIfSaIfEE", scope: !9, file: !9, line: 81, type: !683, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, retainedNodes: !91)
!683 = !DISubroutineType(types: !684)
!684 = !{null, !478}
!685 = !DILocalVariable(name: "ets", arg: 1, scope: !682, file: !9, line: 81, type: !478)
!686 = !DILocation(line: 81, column: 34, scope: !682)
!687 = !DILocalVariable(name: "vals", scope: !682, file: !9, line: 89, type: !688)
!688 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 800, elements: !689)
!689 = !{!690}
!690 = !DISubrange(count: 25)
!691 = !DILocation(line: 89, column: 8, scope: !682)
!692 = !DILocation(line: 95, column: 2, scope: !682)
!693 = !DILocation(line: 95, column: 6, scope: !682)
!694 = !DILocalVariable(name: "i", scope: !695, file: !9, line: 96, type: !11)
!695 = distinct !DILexicalBlock(scope: !682, file: !9, line: 96, column: 2)
!696 = !DILocation(line: 96, column: 10, scope: !695)
!697 = !DILocation(line: 96, column: 6, scope: !695)
!698 = !DILocation(line: 96, column: 14, scope: !699)
!699 = distinct !DILexicalBlock(scope: !695, file: !9, line: 96, column: 2)
!700 = !DILocation(line: 96, column: 15, scope: !699)
!701 = !DILocation(line: 96, column: 2, scope: !695)
!702 = !DILocation(line: 97, column: 17, scope: !699)
!703 = !DILocation(line: 97, column: 12, scope: !699)
!704 = !DILocation(line: 97, column: 3, scope: !699)
!705 = !DILocation(line: 97, column: 7, scope: !699)
!706 = !DILocation(line: 97, column: 10, scope: !699)
!707 = !DILocation(line: 96, column: 20, scope: !699)
!708 = !DILocation(line: 96, column: 2, scope: !699)
!709 = distinct !{!709, !701, !710, !532}
!710 = !DILocation(line: 97, column: 18, scope: !695)
!711 = !DILocation(line: 98, column: 1, scope: !682)
!712 = distinct !DISubprogram(name: "resize", linkageName: "_ZNSt6vectorIfSaIfEE6resizeEm", scope: !25, file: !14, line: 937, type: !713, scopeLine: 938, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, declaration: !715, retainedNodes: !91)
!713 = !DISubroutineType(types: !714)
!714 = !{null, !567, !13}
!715 = !DISubprogram(name: "resize", linkageName: "_ZNSt6vectorIfSaIfEE6resizeEm", scope: !25, file: !14, line: 937, type: !713, scopeLine: 937, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!716 = !DILocalVariable(name: "this", arg: 1, scope: !712, type: !570, flags: DIFlagArtificial | DIFlagObjectPointer)
!717 = !DILocation(line: 0, scope: !712)
!718 = !DILocalVariable(name: "__new_size", arg: 2, scope: !712, file: !14, line: 937, type: !13)
!719 = !DILocation(line: 937, column: 24, scope: !712)
!720 = !DILocation(line: 939, column: 6, scope: !721)
!721 = distinct !DILexicalBlock(scope: !712, file: !14, line: 939, column: 6)
!722 = !DILocation(line: 939, column: 19, scope: !721)
!723 = !DILocation(line: 939, column: 17, scope: !721)
!724 = !DILocation(line: 939, column: 6, scope: !712)
!725 = !DILocation(line: 940, column: 22, scope: !721)
!726 = !DILocation(line: 940, column: 35, scope: !721)
!727 = !DILocation(line: 940, column: 33, scope: !721)
!728 = !DILocation(line: 940, column: 4, scope: !721)
!729 = !DILocation(line: 941, column: 11, scope: !730)
!730 = distinct !DILexicalBlock(scope: !721, file: !14, line: 941, column: 11)
!731 = !DILocation(line: 941, column: 24, scope: !730)
!732 = !DILocation(line: 941, column: 22, scope: !730)
!733 = !DILocation(line: 941, column: 11, scope: !721)
!734 = !DILocation(line: 942, column: 26, scope: !730)
!735 = !DILocation(line: 942, column: 34, scope: !730)
!736 = !DILocation(line: 942, column: 45, scope: !730)
!737 = !DILocation(line: 942, column: 43, scope: !730)
!738 = !DILocation(line: 942, column: 4, scope: !730)
!739 = !DILocation(line: 943, column: 7, scope: !712)
!740 = distinct !DISubprogram(name: "_M_default_append", linkageName: "_ZNSt6vectorIfSaIfEE17_M_default_appendEm", scope: !25, file: !2, line: 612, type: !713, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, declaration: !741, retainedNodes: !91)
!741 = !DISubprogram(name: "_M_default_append", linkageName: "_ZNSt6vectorIfSaIfEE17_M_default_appendEm", scope: !25, file: !14, line: 1689, type: !713, scopeLine: 1689, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!742 = !DILocalVariable(name: "this", arg: 1, scope: !740, type: !570, flags: DIFlagArtificial | DIFlagObjectPointer)
!743 = !DILocation(line: 0, scope: !740)
!744 = !DILocalVariable(name: "__n", arg: 2, scope: !740, file: !14, line: 1689, type: !13)
!745 = !DILocation(line: 1689, column: 35, scope: !740)
!746 = !DILocation(line: 614, column: 11, scope: !747)
!747 = distinct !DILexicalBlock(scope: !740, file: !2, line: 614, column: 11)
!748 = !DILocation(line: 614, column: 15, scope: !747)
!749 = !DILocation(line: 614, column: 11, scope: !740)
!750 = !DILocalVariable(name: "__size", scope: !751, file: !2, line: 616, type: !752)
!751 = distinct !DILexicalBlock(scope: !747, file: !2, line: 615, column: 2)
!752 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!753 = !DILocation(line: 616, column: 20, scope: !751)
!754 = !DILocation(line: 616, column: 29, scope: !751)
!755 = !DILocalVariable(name: "__navail", scope: !751, file: !2, line: 617, type: !13)
!756 = !DILocation(line: 617, column: 14, scope: !751)
!757 = !DILocation(line: 617, column: 41, scope: !751)
!758 = !DILocation(line: 617, column: 49, scope: !751)
!759 = !DILocation(line: 618, column: 15, scope: !751)
!760 = !DILocation(line: 618, column: 23, scope: !751)
!761 = !DILocation(line: 618, column: 7, scope: !751)
!762 = !DILocation(line: 620, column: 8, scope: !763)
!763 = distinct !DILexicalBlock(scope: !751, file: !2, line: 620, column: 8)
!764 = !DILocation(line: 620, column: 17, scope: !763)
!765 = !DILocation(line: 620, column: 15, scope: !763)
!766 = !DILocation(line: 620, column: 28, scope: !763)
!767 = !DILocation(line: 620, column: 31, scope: !763)
!768 = !DILocation(line: 620, column: 42, scope: !763)
!769 = !DILocation(line: 620, column: 55, scope: !763)
!770 = !DILocation(line: 620, column: 53, scope: !763)
!771 = !DILocation(line: 620, column: 40, scope: !763)
!772 = !DILocation(line: 620, column: 8, scope: !751)
!773 = !DILocation(line: 621, column: 6, scope: !763)
!774 = !DILocation(line: 623, column: 8, scope: !775)
!775 = distinct !DILexicalBlock(scope: !751, file: !2, line: 623, column: 8)
!776 = !DILocation(line: 623, column: 20, scope: !775)
!777 = !DILocation(line: 623, column: 17, scope: !775)
!778 = !DILocation(line: 623, column: 8, scope: !751)
!779 = !DILocation(line: 627, column: 42, scope: !780)
!780 = distinct !DILexicalBlock(scope: !775, file: !2, line: 624, column: 6)
!781 = !DILocation(line: 627, column: 50, scope: !780)
!782 = !DILocation(line: 628, column: 8, scope: !780)
!783 = !DILocation(line: 628, column: 13, scope: !780)
!784 = !DILocation(line: 627, column: 3, scope: !780)
!785 = !DILocation(line: 626, column: 14, scope: !780)
!786 = !DILocation(line: 626, column: 22, scope: !780)
!787 = !DILocation(line: 626, column: 32, scope: !780)
!788 = !DILocation(line: 630, column: 6, scope: !780)
!789 = !DILocalVariable(name: "__len", scope: !790, file: !2, line: 633, type: !752)
!790 = distinct !DILexicalBlock(scope: !775, file: !2, line: 632, column: 6)
!791 = !DILocation(line: 633, column: 24, scope: !790)
!792 = !DILocation(line: 634, column: 16, scope: !790)
!793 = !DILocation(line: 634, column: 3, scope: !790)
!794 = !DILocalVariable(name: "__new_start", scope: !790, file: !2, line: 635, type: !28)
!795 = !DILocation(line: 635, column: 16, scope: !790)
!796 = !DILocation(line: 635, column: 46, scope: !790)
!797 = !DILocation(line: 635, column: 34, scope: !790)
!798 = !DILocation(line: 640, column: 42, scope: !799)
!799 = distinct !DILexicalBlock(scope: !800, file: !2, line: 639, column: 7)
!800 = distinct !DILexicalBlock(scope: !801, file: !2, line: 637, column: 3)
!801 = distinct !DILexicalBlock(scope: !790, file: !2, line: 636, column: 33)
!802 = !DILocation(line: 640, column: 56, scope: !799)
!803 = !DILocation(line: 640, column: 54, scope: !799)
!804 = !DILocation(line: 641, column: 10, scope: !799)
!805 = !DILocation(line: 641, column: 15, scope: !799)
!806 = !DILocation(line: 640, column: 9, scope: !799)
!807 = !DILocation(line: 642, column: 7, scope: !799)
!808 = !DILocation(line: 683, column: 5, scope: !799)
!809 = !DILocation(line: 645, column: 23, scope: !810)
!810 = distinct !DILexicalBlock(scope: !800, file: !2, line: 644, column: 7)
!811 = !DILocation(line: 645, column: 36, scope: !810)
!812 = !DILocation(line: 645, column: 9, scope: !810)
!813 = !DILocation(line: 646, column: 9, scope: !810)
!814 = !DILocation(line: 683, column: 5, scope: !810)
!815 = !DILocation(line: 647, column: 7, scope: !810)
!816 = !DILocation(line: 648, column: 23, scope: !800)
!817 = !DILocation(line: 648, column: 31, scope: !800)
!818 = !DILocation(line: 648, column: 47, scope: !800)
!819 = !DILocation(line: 648, column: 55, scope: !800)
!820 = !DILocation(line: 649, column: 10, scope: !800)
!821 = !DILocation(line: 649, column: 23, scope: !800)
!822 = !DILocation(line: 648, column: 5, scope: !800)
!823 = !DILocation(line: 675, column: 28, scope: !790)
!824 = !DILocation(line: 675, column: 36, scope: !790)
!825 = !DILocation(line: 676, column: 14, scope: !790)
!826 = !DILocation(line: 676, column: 22, scope: !790)
!827 = !DILocation(line: 677, column: 16, scope: !790)
!828 = !DILocation(line: 677, column: 24, scope: !790)
!829 = !DILocation(line: 677, column: 8, scope: !790)
!830 = !DILocation(line: 675, column: 8, scope: !790)
!831 = !DILocation(line: 678, column: 33, scope: !790)
!832 = !DILocation(line: 678, column: 14, scope: !790)
!833 = !DILocation(line: 678, column: 22, scope: !790)
!834 = !DILocation(line: 678, column: 31, scope: !790)
!835 = !DILocation(line: 679, column: 34, scope: !790)
!836 = !DILocation(line: 679, column: 48, scope: !790)
!837 = !DILocation(line: 679, column: 46, scope: !790)
!838 = !DILocation(line: 679, column: 57, scope: !790)
!839 = !DILocation(line: 679, column: 55, scope: !790)
!840 = !DILocation(line: 679, column: 14, scope: !790)
!841 = !DILocation(line: 679, column: 22, scope: !790)
!842 = !DILocation(line: 679, column: 32, scope: !790)
!843 = !DILocation(line: 680, column: 42, scope: !790)
!844 = !DILocation(line: 680, column: 56, scope: !790)
!845 = !DILocation(line: 680, column: 54, scope: !790)
!846 = !DILocation(line: 680, column: 14, scope: !790)
!847 = !DILocation(line: 680, column: 22, scope: !790)
!848 = !DILocation(line: 680, column: 40, scope: !790)
!849 = !DILocation(line: 682, column: 2, scope: !751)
!850 = !DILocation(line: 683, column: 5, scope: !740)
!851 = distinct !DISubprogram(name: "_M_erase_at_end", linkageName: "_ZNSt6vectorIfSaIfEE15_M_erase_at_endEPf", scope: !25, file: !14, line: 1792, type: !852, scopeLine: 1793, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, declaration: !854, retainedNodes: !91)
!852 = !DISubroutineType(types: !853)
!853 = !{null, !567, !28}
!854 = !DISubprogram(name: "_M_erase_at_end", linkageName: "_ZNSt6vectorIfSaIfEE15_M_erase_at_endEPf", scope: !25, file: !14, line: 1792, type: !852, scopeLine: 1792, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!855 = !DILocalVariable(name: "this", arg: 1, scope: !851, type: !570, flags: DIFlagArtificial | DIFlagObjectPointer)
!856 = !DILocation(line: 0, scope: !851)
!857 = !DILocalVariable(name: "__pos", arg: 2, scope: !851, file: !14, line: 1792, type: !28)
!858 = !DILocation(line: 1792, column: 31, scope: !851)
!859 = !DILocalVariable(name: "__n", scope: !860, file: !14, line: 1794, type: !13)
!860 = distinct !DILexicalBlock(scope: !851, file: !14, line: 1794, column: 16)
!861 = !DILocation(line: 1794, column: 16, scope: !860)
!862 = !DILocation(line: 1794, column: 28, scope: !860)
!863 = !DILocation(line: 1794, column: 36, scope: !860)
!864 = !DILocation(line: 1794, column: 48, scope: !860)
!865 = !DILocation(line: 1794, column: 46, scope: !860)
!866 = !DILocation(line: 1794, column: 16, scope: !851)
!867 = !DILocation(line: 1796, column: 20, scope: !868)
!868 = distinct !DILexicalBlock(scope: !860, file: !14, line: 1795, column: 4)
!869 = !DILocation(line: 1796, column: 33, scope: !868)
!870 = !DILocation(line: 1796, column: 41, scope: !868)
!871 = !DILocation(line: 1797, column: 6, scope: !868)
!872 = !DILocation(line: 1796, column: 6, scope: !868)
!873 = !DILocation(line: 1798, column: 32, scope: !868)
!874 = !DILocation(line: 1798, column: 12, scope: !868)
!875 = !DILocation(line: 1798, column: 20, scope: !868)
!876 = !DILocation(line: 1798, column: 30, scope: !868)
!877 = !DILocation(line: 1800, column: 4, scope: !868)
!878 = !DILocation(line: 1801, column: 7, scope: !851)
!879 = distinct !DISubprogram(name: "max_size", linkageName: "_ZNKSt6vectorIfSaIfEE8max_sizeEv", scope: !25, file: !14, line: 923, type: !545, scopeLine: 924, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, declaration: !880, retainedNodes: !91)
!880 = !DISubprogram(name: "max_size", linkageName: "_ZNKSt6vectorIfSaIfEE8max_sizeEv", scope: !25, file: !14, line: 923, type: !545, scopeLine: 923, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!881 = !DILocalVariable(name: "this", arg: 1, scope: !879, type: !551, flags: DIFlagArtificial | DIFlagObjectPointer)
!882 = !DILocation(line: 0, scope: !879)
!883 = !DILocation(line: 924, column: 28, scope: !879)
!884 = !DILocation(line: 924, column: 16, scope: !879)
!885 = !DILocation(line: 924, column: 9, scope: !879)
!886 = distinct !DISubprogram(name: "__uninitialized_default_n_a<float *, unsigned long, float>", linkageName: "_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E", scope: !17, file: !887, line: 702, type: !888, scopeLine: 704, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, templateParams: !890, retainedNodes: !91)
!887 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/stl_uninitialized.h", directory: "", checksumkind: CSK_MD5, checksum: "e5b2dfda2795d428e8e4a9ac15177146")
!888 = !DISubroutineType(types: !889)
!889 = !{!22, !22, !18, !75}
!890 = !{!891, !892, !93}
!891 = !DITemplateTypeParameter(name: "_ForwardIterator", type: !22)
!892 = !DITemplateTypeParameter(name: "_Size", type: !18)
!893 = !DILocalVariable(name: "__first", arg: 1, scope: !886, file: !887, line: 702, type: !22)
!894 = !DILocation(line: 702, column: 50, scope: !886)
!895 = !DILocalVariable(name: "__n", arg: 2, scope: !886, file: !887, line: 702, type: !18)
!896 = !DILocation(line: 702, column: 65, scope: !886)
!897 = !DILocalVariable(arg: 3, scope: !886, file: !887, line: 703, type: !75)
!898 = !DILocation(line: 703, column: 20, scope: !886)
!899 = !DILocation(line: 704, column: 45, scope: !886)
!900 = !DILocation(line: 704, column: 54, scope: !886)
!901 = !DILocation(line: 704, column: 14, scope: !886)
!902 = !DILocation(line: 704, column: 7, scope: !886)
!903 = distinct !DISubprogram(name: "_M_get_Tp_allocator", linkageName: "_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv", scope: !30, file: !14, line: 276, type: !904, scopeLine: 277, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, declaration: !908, retainedNodes: !91)
!904 = !DISubroutineType(types: !905)
!905 = !{!906, !907}
!906 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !88, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!908 = !DISubprogram(name: "_M_get_Tp_allocator", linkageName: "_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv", scope: !30, file: !14, line: 276, type: !904, scopeLine: 276, flags: DIFlagPrototyped, spFlags: 0)
!909 = !DILocalVariable(name: "this", arg: 1, scope: !903, type: !910, flags: DIFlagArtificial | DIFlagObjectPointer)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!911 = !DILocation(line: 0, scope: !903)
!912 = !DILocation(line: 277, column: 22, scope: !903)
!913 = !DILocation(line: 277, column: 9, scope: !903)
!914 = distinct !DISubprogram(name: "_M_check_len", linkageName: "_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc", scope: !25, file: !14, line: 1756, type: !915, scopeLine: 1757, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, declaration: !918, retainedNodes: !91)
!915 = !DISubroutineType(types: !916)
!916 = !{!917, !547, !13, !364}
!917 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !25, file: !14, line: 424, baseType: !15, flags: DIFlagPublic)
!918 = !DISubprogram(name: "_M_check_len", linkageName: "_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc", scope: !25, file: !14, line: 1756, type: !915, scopeLine: 1756, flags: DIFlagProtected | DIFlagPrototyped, spFlags: 0)
!919 = !DILocalVariable(name: "this", arg: 1, scope: !914, type: !551, flags: DIFlagArtificial | DIFlagObjectPointer)
!920 = !DILocation(line: 0, scope: !914)
!921 = !DILocalVariable(name: "__n", arg: 2, scope: !914, file: !14, line: 1756, type: !13)
!922 = !DILocation(line: 1756, column: 30, scope: !914)
!923 = !DILocalVariable(name: "__s", arg: 3, scope: !914, file: !14, line: 1756, type: !364)
!924 = !DILocation(line: 1756, column: 47, scope: !914)
!925 = !DILocation(line: 1758, column: 6, scope: !926)
!926 = distinct !DILexicalBlock(scope: !914, file: !14, line: 1758, column: 6)
!927 = !DILocation(line: 1758, column: 19, scope: !926)
!928 = !DILocation(line: 1758, column: 17, scope: !926)
!929 = !DILocation(line: 1758, column: 28, scope: !926)
!930 = !DILocation(line: 1758, column: 26, scope: !926)
!931 = !DILocation(line: 1758, column: 6, scope: !914)
!932 = !DILocation(line: 1759, column: 25, scope: !926)
!933 = !DILocation(line: 1759, column: 4, scope: !926)
!934 = !DILocalVariable(name: "__len", scope: !914, file: !14, line: 1761, type: !752)
!935 = !DILocation(line: 1761, column: 18, scope: !914)
!936 = !DILocation(line: 1761, column: 26, scope: !914)
!937 = !DILocation(line: 1761, column: 46, scope: !914)
!938 = !DILocation(line: 1761, column: 35, scope: !914)
!939 = !DILocation(line: 1761, column: 33, scope: !914)
!940 = !DILocation(line: 1762, column: 10, scope: !914)
!941 = !DILocation(line: 1762, column: 18, scope: !914)
!942 = !DILocation(line: 1762, column: 16, scope: !914)
!943 = !DILocation(line: 1762, column: 25, scope: !914)
!944 = !DILocation(line: 1762, column: 28, scope: !914)
!945 = !DILocation(line: 1762, column: 36, scope: !914)
!946 = !DILocation(line: 1762, column: 34, scope: !914)
!947 = !DILocation(line: 1762, column: 9, scope: !914)
!948 = !DILocation(line: 1762, column: 50, scope: !914)
!949 = !DILocation(line: 1762, column: 63, scope: !914)
!950 = !DILocation(line: 1762, column: 2, scope: !914)
!951 = distinct !DISubprogram(name: "_M_allocate", linkageName: "_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm", scope: !30, file: !14, line: 343, type: !952, scopeLine: 344, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, declaration: !954, retainedNodes: !91)
!952 = !DISubroutineType(types: !953)
!953 = !{!29, !907, !15}
!954 = !DISubprogram(name: "_M_allocate", linkageName: "_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm", scope: !30, file: !14, line: 343, type: !952, scopeLine: 343, flags: DIFlagPrototyped, spFlags: 0)
!955 = !DILocalVariable(name: "this", arg: 1, scope: !951, type: !910, flags: DIFlagArtificial | DIFlagObjectPointer)
!956 = !DILocation(line: 0, scope: !951)
!957 = !DILocalVariable(name: "__n", arg: 2, scope: !951, file: !14, line: 343, type: !15)
!958 = !DILocation(line: 343, column: 26, scope: !951)
!959 = !DILocation(line: 346, column: 9, scope: !951)
!960 = !DILocation(line: 346, column: 13, scope: !951)
!961 = !DILocation(line: 346, column: 34, scope: !951)
!962 = !DILocation(line: 346, column: 43, scope: !951)
!963 = !DILocation(line: 346, column: 20, scope: !951)
!964 = !DILocation(line: 346, column: 2, scope: !951)
!965 = distinct !DISubprogram(name: "_M_deallocate", linkageName: "_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm", scope: !30, file: !14, line: 350, type: !966, scopeLine: 351, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, declaration: !968, retainedNodes: !91)
!966 = !DISubroutineType(types: !967)
!967 = !{null, !907, !29, !15}
!968 = !DISubprogram(name: "_M_deallocate", linkageName: "_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm", scope: !30, file: !14, line: 350, type: !966, scopeLine: 350, flags: DIFlagPrototyped, spFlags: 0)
!969 = !DILocalVariable(name: "this", arg: 1, scope: !965, type: !910, flags: DIFlagArtificial | DIFlagObjectPointer)
!970 = !DILocation(line: 0, scope: !965)
!971 = !DILocalVariable(name: "__p", arg: 2, scope: !965, file: !14, line: 350, type: !29)
!972 = !DILocation(line: 350, column: 29, scope: !965)
!973 = !DILocalVariable(name: "__n", arg: 3, scope: !965, file: !14, line: 350, type: !15)
!974 = !DILocation(line: 350, column: 41, scope: !965)
!975 = !DILocation(line: 353, column: 6, scope: !976)
!976 = distinct !DILexicalBlock(scope: !965, file: !14, line: 353, column: 6)
!977 = !DILocation(line: 353, column: 6, scope: !965)
!978 = !DILocation(line: 354, column: 20, scope: !976)
!979 = !DILocation(line: 354, column: 29, scope: !976)
!980 = !DILocation(line: 354, column: 34, scope: !976)
!981 = !DILocation(line: 354, column: 4, scope: !976)
!982 = !DILocation(line: 355, column: 7, scope: !965)
!983 = !DILocalVariable(name: "__first", arg: 1, scope: !24, file: !14, line: 465, type: !28)
!984 = !DILocation(line: 465, column: 27, scope: !24)
!985 = !DILocalVariable(name: "__last", arg: 2, scope: !24, file: !14, line: 465, type: !28)
!986 = !DILocation(line: 465, column: 44, scope: !24)
!987 = !DILocalVariable(name: "__result", arg: 3, scope: !24, file: !14, line: 465, type: !28)
!988 = !DILocation(line: 465, column: 60, scope: !24)
!989 = !DILocalVariable(name: "__alloc", arg: 4, scope: !24, file: !14, line: 466, type: !86)
!990 = !DILocation(line: 466, column: 21, scope: !24)
!991 = !DILocation(line: 469, column: 24, scope: !24)
!992 = !DILocation(line: 469, column: 33, scope: !24)
!993 = !DILocation(line: 469, column: 41, scope: !24)
!994 = !DILocation(line: 469, column: 51, scope: !24)
!995 = !DILocation(line: 469, column: 9, scope: !24)
!996 = !DILocation(line: 469, column: 2, scope: !24)
!997 = distinct !DISubprogram(name: "_S_max_size", linkageName: "_ZNSt6vectorIfSaIfEE11_S_max_sizeERKS0_", scope: !25, file: !14, line: 1776, type: !998, scopeLine: 1777, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, declaration: !1002, retainedNodes: !91)
!998 = !DISubroutineType(types: !999)
!999 = !{!917, !1000}
!1000 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1001, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!1002 = !DISubprogram(name: "_S_max_size", linkageName: "_ZNSt6vectorIfSaIfEE11_S_max_sizeERKS0_", scope: !25, file: !14, line: 1776, type: !998, scopeLine: 1776, flags: DIFlagProtected | DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!1003 = !DILocalVariable(name: "__a", arg: 1, scope: !997, file: !14, line: 1776, type: !1000)
!1004 = !DILocation(line: 1776, column: 41, scope: !997)
!1005 = !DILocalVariable(name: "__diffmax", scope: !997, file: !14, line: 1781, type: !1006)
!1006 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!1007 = !DILocation(line: 1781, column: 15, scope: !997)
!1008 = !DILocalVariable(name: "__allocmax", scope: !997, file: !14, line: 1783, type: !1006)
!1009 = !DILocation(line: 1783, column: 15, scope: !997)
!1010 = !DILocation(line: 1783, column: 52, scope: !997)
!1011 = !DILocation(line: 1783, column: 28, scope: !997)
!1012 = !DILocation(line: 1784, column: 9, scope: !997)
!1013 = !DILocation(line: 1784, column: 2, scope: !997)
!1014 = distinct !DISubprogram(name: "_M_get_Tp_allocator", linkageName: "_ZNKSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv", scope: !30, file: !14, line: 280, type: !1015, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, declaration: !1021, retainedNodes: !91)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{!1017, !1019}
!1017 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1018, size: 64)
!1018 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !88)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1020 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!1021 = !DISubprogram(name: "_M_get_Tp_allocator", linkageName: "_ZNKSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv", scope: !30, file: !14, line: 280, type: !1015, scopeLine: 280, flags: DIFlagPrototyped, spFlags: 0)
!1022 = !DILocalVariable(name: "this", arg: 1, scope: !1014, type: !1023, flags: DIFlagArtificial | DIFlagObjectPointer)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1024 = !DILocation(line: 0, scope: !1014)
!1025 = !DILocation(line: 281, column: 22, scope: !1014)
!1026 = !DILocation(line: 281, column: 9, scope: !1014)
!1027 = distinct !DISubprogram(name: "max_size", linkageName: "_ZNSt16allocator_traitsISaIfEE8max_sizeERKS0_", scope: !37, file: !38, line: 547, type: !57, scopeLine: 548, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, declaration: !56, retainedNodes: !91)
!1028 = !DILocalVariable(name: "__a", arg: 1, scope: !1027, file: !38, line: 547, type: !60)
!1029 = !DILocation(line: 547, column: 38, scope: !1027)
!1030 = !DILocation(line: 550, column: 9, scope: !1027)
!1031 = !DILocation(line: 550, column: 13, scope: !1027)
!1032 = !DILocation(line: 550, column: 2, scope: !1027)
!1033 = distinct !DISubprogram(name: "min<unsigned long>", linkageName: "_ZSt3minImERKT_S2_S2_", scope: !17, file: !1034, line: 230, type: !1035, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, templateParams: !1039, retainedNodes: !91)
!1034 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/stl_algobase.h", directory: "", checksumkind: CSK_MD5, checksum: "906433670cd4a8daf96f73a1b6f6012b")
!1035 = !DISubroutineType(types: !1036)
!1036 = !{!1037, !1037, !1037}
!1037 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1038, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!1039 = !{!1040}
!1040 = !DITemplateTypeParameter(name: "_Tp", type: !18)
!1041 = !DILocalVariable(name: "__a", arg: 1, scope: !1033, file: !1034, line: 230, type: !1037)
!1042 = !DILocation(line: 230, column: 20, scope: !1033)
!1043 = !DILocalVariable(name: "__b", arg: 2, scope: !1033, file: !1034, line: 230, type: !1037)
!1044 = !DILocation(line: 230, column: 36, scope: !1033)
!1045 = !DILocation(line: 235, column: 11, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1033, file: !1034, line: 235, column: 11)
!1047 = !DILocation(line: 235, column: 17, scope: !1046)
!1048 = !DILocation(line: 235, column: 15, scope: !1046)
!1049 = !DILocation(line: 235, column: 11, scope: !1033)
!1050 = !DILocation(line: 236, column: 9, scope: !1046)
!1051 = !DILocation(line: 236, column: 2, scope: !1046)
!1052 = !DILocation(line: 237, column: 14, scope: !1033)
!1053 = !DILocation(line: 237, column: 7, scope: !1033)
!1054 = !DILocation(line: 238, column: 5, scope: !1033)
!1055 = distinct !DISubprogram(name: "max_size", linkageName: "_ZNK9__gnu_cxx13new_allocatorIfE8max_sizeEv", scope: !1057, file: !1056, line: 154, type: !1058, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, declaration: !1063, retainedNodes: !91)
!1056 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/ext/new_allocator.h", directory: "", checksumkind: CSK_MD5, checksum: "4493add5a3fa57e0ec30b90cd4e81c11")
!1057 = !DICompositeType(tag: DW_TAG_class_type, name: "new_allocator<float>", scope: !34, file: !1056, line: 55, size: 8, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN9__gnu_cxx13new_allocatorIfEE")
!1058 = !DISubroutineType(types: !1059)
!1059 = !{!1060, !1061}
!1060 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", file: !1056, line: 59, baseType: !15, flags: DIFlagPublic)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1062 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1057)
!1063 = !DISubprogram(name: "max_size", linkageName: "_ZNK9__gnu_cxx13new_allocatorIfE8max_sizeEv", scope: !1057, file: !1056, line: 154, type: !1058, scopeLine: 154, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1064 = !DILocalVariable(name: "this", arg: 1, scope: !1055, type: !1065, flags: DIFlagArtificial | DIFlagObjectPointer)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1066 = !DILocation(line: 0, scope: !1055)
!1067 = !DILocation(line: 155, column: 16, scope: !1055)
!1068 = !DILocation(line: 155, column: 9, scope: !1055)
!1069 = distinct !DISubprogram(name: "_M_max_size", linkageName: "_ZNK9__gnu_cxx13new_allocatorIfE11_M_max_sizeEv", scope: !1057, file: !1056, line: 197, type: !1058, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, declaration: !1070, retainedNodes: !91)
!1070 = !DISubprogram(name: "_M_max_size", linkageName: "_ZNK9__gnu_cxx13new_allocatorIfE11_M_max_sizeEv", scope: !1057, file: !1056, line: 197, type: !1058, scopeLine: 197, flags: DIFlagPrototyped, spFlags: 0)
!1071 = !DILocalVariable(name: "this", arg: 1, scope: !1069, type: !1065, flags: DIFlagArtificial | DIFlagObjectPointer)
!1072 = !DILocation(line: 0, scope: !1069)
!1073 = !DILocation(line: 200, column: 2, scope: !1069)
!1074 = distinct !DISubprogram(name: "__uninitialized_default_n<float *, unsigned long>", linkageName: "_ZSt25__uninitialized_default_nIPfmET_S1_T0_", scope: !17, file: !887, line: 630, type: !1075, scopeLine: 631, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, templateParams: !1077, retainedNodes: !91)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{!22, !22, !18}
!1077 = !{!891, !892}
!1078 = !DILocalVariable(name: "__first", arg: 1, scope: !1074, file: !887, line: 630, type: !22)
!1079 = !DILocation(line: 630, column: 48, scope: !1074)
!1080 = !DILocalVariable(name: "__n", arg: 2, scope: !1074, file: !887, line: 630, type: !18)
!1081 = !DILocation(line: 630, column: 63, scope: !1074)
!1082 = !DILocalVariable(name: "__can_fill", scope: !1074, file: !887, line: 635, type: !101)
!1083 = !DILocation(line: 635, column: 22, scope: !1074)
!1084 = !DILocation(line: 640, column: 21, scope: !1074)
!1085 = !DILocation(line: 640, column: 30, scope: !1074)
!1086 = !DILocation(line: 638, column: 14, scope: !1074)
!1087 = !DILocation(line: 638, column: 7, scope: !1074)
!1088 = distinct !DISubprogram(name: "__uninit_default_n<float *, unsigned long>", linkageName: "_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPfmEET_S3_T0_", scope: !1089, file: !887, line: 595, type: !1075, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, templateParams: !1077, declaration: !1092, retainedNodes: !91)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__uninitialized_default_n_1<true>", scope: !17, file: !887, line: 591, size: 8, flags: DIFlagTypePassByValue, elements: !91, templateParams: !1090, identifier: "_ZTSSt27__uninitialized_default_n_1ILb1EE")
!1090 = !{!1091}
!1091 = !DITemplateValueParameter(name: "_TrivialValueType", type: !79, value: i8 1)
!1092 = !DISubprogram(name: "__uninit_default_n<float *, unsigned long>", linkageName: "_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPfmEET_S3_T0_", scope: !1089, file: !887, line: 595, type: !1075, scopeLine: 595, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0, templateParams: !1077)
!1093 = !DILocalVariable(name: "__first", arg: 1, scope: !1088, file: !887, line: 595, type: !22)
!1094 = !DILocation(line: 595, column: 45, scope: !1088)
!1095 = !DILocalVariable(name: "__n", arg: 2, scope: !1088, file: !887, line: 595, type: !18)
!1096 = !DILocation(line: 595, column: 60, scope: !1088)
!1097 = !DILocation(line: 597, column: 8, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1088, file: !887, line: 597, column: 8)
!1099 = !DILocation(line: 597, column: 12, scope: !1098)
!1100 = !DILocation(line: 597, column: 8, scope: !1088)
!1101 = !DILocalVariable(name: "__val", scope: !1102, file: !887, line: 599, type: !1103)
!1102 = distinct !DILexicalBlock(scope: !1098, file: !887, line: 598, column: 6)
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1104 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !1106, file: !1105, line: 213, baseType: !12)
!1105 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/stl_iterator_base_types.h", directory: "")
!1106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iterator_traits<float *>", scope: !17, file: !1105, line: 210, size: 8, flags: DIFlagTypePassByValue, elements: !91, templateParams: !1107, identifier: "_ZTSSt15iterator_traitsIPfE")
!1107 = !{!1108}
!1108 = !DITemplateTypeParameter(name: "_Iterator", type: !22)
!1109 = !DILocation(line: 599, column: 64, scope: !1102)
!1110 = !DILocation(line: 600, column: 23, scope: !1102)
!1111 = !DILocation(line: 601, column: 24, scope: !1102)
!1112 = !DILocation(line: 601, column: 8, scope: !1102)
!1113 = !DILocation(line: 602, column: 8, scope: !1102)
!1114 = !DILocation(line: 603, column: 30, scope: !1102)
!1115 = !DILocation(line: 603, column: 39, scope: !1102)
!1116 = !DILocation(line: 603, column: 43, scope: !1102)
!1117 = !DILocation(line: 603, column: 49, scope: !1102)
!1118 = !DILocation(line: 603, column: 18, scope: !1102)
!1119 = !DILocation(line: 603, column: 16, scope: !1102)
!1120 = !DILocation(line: 604, column: 6, scope: !1102)
!1121 = !DILocation(line: 605, column: 11, scope: !1088)
!1122 = !DILocation(line: 605, column: 4, scope: !1088)
!1123 = distinct !DISubprogram(name: "_Construct<float>", linkageName: "_ZSt10_ConstructIfJEEvPT_DpOT0_", scope: !17, file: !1124, line: 109, type: !1125, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, templateParams: !1127, retainedNodes: !91)
!1124 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/stl_construct.h", directory: "", checksumkind: CSK_MD5, checksum: "d13395651729d9a26632373217b7daf3")
!1125 = !DISubroutineType(types: !1126)
!1126 = !{null, !22}
!1127 = !{!93, !1128}
!1128 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Args", value: !91)
!1129 = !DILocalVariable(name: "__p", arg: 1, scope: !1123, file: !1124, line: 109, type: !22)
!1130 = !DILocation(line: 109, column: 21, scope: !1123)
!1131 = !DILocation(line: 119, column: 20, scope: !1123)
!1132 = !DILocation(line: 119, column: 7, scope: !1123)
!1133 = !DILocation(line: 120, column: 5, scope: !1123)
!1134 = distinct !DISubprogram(name: "fill_n<float *, unsigned long, float>", linkageName: "_ZSt6fill_nIPfmfET_S1_T0_RKT1_", scope: !17, file: !1034, line: 1144, type: !1135, scopeLine: 1145, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, templateParams: !1139, retainedNodes: !91)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!22, !22, !18, !1137}
!1137 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1138, size: 64)
!1138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!1139 = !{!1140, !892, !93}
!1140 = !DITemplateTypeParameter(name: "_OI", type: !22)
!1141 = !DILocalVariable(name: "__first", arg: 1, scope: !1134, file: !1034, line: 1144, type: !22)
!1142 = !DILocation(line: 1144, column: 16, scope: !1134)
!1143 = !DILocalVariable(name: "__n", arg: 2, scope: !1134, file: !1034, line: 1144, type: !18)
!1144 = !DILocation(line: 1144, column: 31, scope: !1134)
!1145 = !DILocalVariable(name: "__value", arg: 3, scope: !1134, file: !1034, line: 1144, type: !1137)
!1146 = !DILocation(line: 1144, column: 47, scope: !1134)
!1147 = !DILocation(line: 1149, column: 30, scope: !1134)
!1148 = !DILocation(line: 1149, column: 62, scope: !1134)
!1149 = !DILocation(line: 1149, column: 39, scope: !1134)
!1150 = !DILocation(line: 1149, column: 68, scope: !1134)
!1151 = !DILocation(line: 1150, column: 11, scope: !1134)
!1152 = !DILocation(line: 1149, column: 14, scope: !1134)
!1153 = !DILocation(line: 1149, column: 7, scope: !1134)
!1154 = distinct !DISubprogram(name: "__fill_n_a<float *, unsigned long, float>", linkageName: "_ZSt10__fill_n_aIPfmfET_S1_T0_RKT1_St26random_access_iterator_tag", scope: !17, file: !1034, line: 1109, type: !1155, scopeLine: 1111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, templateParams: !1167, retainedNodes: !91)
!1155 = !DISubroutineType(types: !1156)
!1156 = !{!22, !22, !18, !1137, !1157}
!1157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "random_access_iterator_tag", scope: !17, file: !1105, line: 107, size: 8, flags: DIFlagTypePassByValue, elements: !1158, identifier: "_ZTSSt26random_access_iterator_tag")
!1158 = !{!1159}
!1159 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1157, baseType: !1160, extraData: i32 0)
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bidirectional_iterator_tag", scope: !17, file: !1105, line: 103, size: 8, flags: DIFlagTypePassByValue, elements: !1161, identifier: "_ZTSSt26bidirectional_iterator_tag")
!1161 = !{!1162}
!1162 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1160, baseType: !1163, extraData: i32 0)
!1163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "forward_iterator_tag", scope: !17, file: !1105, line: 99, size: 8, flags: DIFlagTypePassByValue, elements: !1164, identifier: "_ZTSSt20forward_iterator_tag")
!1164 = !{!1165}
!1165 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1163, baseType: !1166, extraData: i32 0)
!1166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_iterator_tag", scope: !17, file: !1105, line: 93, size: 8, flags: DIFlagTypePassByValue, elements: !91, identifier: "_ZTSSt18input_iterator_tag")
!1167 = !{!1168, !892, !93}
!1168 = !DITemplateTypeParameter(name: "_OutputIterator", type: !22)
!1169 = !DILocalVariable(name: "__first", arg: 1, scope: !1154, file: !1034, line: 1109, type: !22)
!1170 = !DILocation(line: 1109, column: 32, scope: !1154)
!1171 = !DILocalVariable(name: "__n", arg: 2, scope: !1154, file: !1034, line: 1109, type: !18)
!1172 = !DILocation(line: 1109, column: 47, scope: !1154)
!1173 = !DILocalVariable(name: "__value", arg: 3, scope: !1154, file: !1034, line: 1109, type: !1137)
!1174 = !DILocation(line: 1109, column: 63, scope: !1154)
!1175 = !DILocalVariable(arg: 4, scope: !1154, file: !1034, line: 1110, type: !1157)
!1176 = !DILocation(line: 1110, column: 40, scope: !1154)
!1177 = !DILocation(line: 1115, column: 11, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1154, file: !1034, line: 1115, column: 11)
!1179 = !DILocation(line: 1115, column: 15, scope: !1178)
!1180 = !DILocation(line: 1115, column: 11, scope: !1154)
!1181 = !DILocation(line: 1116, column: 9, scope: !1178)
!1182 = !DILocation(line: 1116, column: 2, scope: !1178)
!1183 = !DILocation(line: 1120, column: 21, scope: !1154)
!1184 = !DILocation(line: 1120, column: 30, scope: !1154)
!1185 = !DILocation(line: 1120, column: 40, scope: !1154)
!1186 = !DILocation(line: 1120, column: 38, scope: !1154)
!1187 = !DILocation(line: 1120, column: 45, scope: !1154)
!1188 = !DILocation(line: 1120, column: 7, scope: !1154)
!1189 = !DILocation(line: 1121, column: 14, scope: !1154)
!1190 = !DILocation(line: 1121, column: 24, scope: !1154)
!1191 = !DILocation(line: 1121, column: 22, scope: !1154)
!1192 = !DILocation(line: 1121, column: 7, scope: !1154)
!1193 = !DILocation(line: 1122, column: 5, scope: !1154)
!1194 = distinct !DISubprogram(name: "__size_to_integer", linkageName: "_ZSt17__size_to_integerm", scope: !17, file: !1034, line: 1010, type: !1195, scopeLine: 1010, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, retainedNodes: !91)
!1195 = !DISubroutineType(types: !1196)
!1196 = !{!18, !18}
!1197 = !DILocalVariable(name: "__n", arg: 1, scope: !1194, file: !1034, line: 1010, type: !18)
!1198 = !DILocation(line: 1010, column: 35, scope: !1194)
!1199 = !DILocation(line: 1010, column: 49, scope: !1194)
!1200 = !DILocation(line: 1010, column: 42, scope: !1194)
!1201 = distinct !DISubprogram(name: "__iterator_category<float *>", linkageName: "_ZSt19__iterator_categoryIPfENSt15iterator_traitsIT_E17iterator_categoryERKS2_", scope: !17, file: !1105, line: 238, type: !1202, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, templateParams: !1207, retainedNodes: !91)
!1202 = !DISubroutineType(types: !1203)
!1203 = !{!1204, !1205}
!1204 = !DIDerivedType(tag: DW_TAG_typedef, name: "iterator_category", scope: !1106, file: !1105, line: 212, baseType: !1157)
!1205 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1206, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!1207 = !{!1208}
!1208 = !DITemplateTypeParameter(name: "_Iter", type: !22)
!1209 = !DILocalVariable(arg: 1, scope: !1201, file: !1105, line: 238, type: !1205)
!1210 = !DILocation(line: 238, column: 37, scope: !1201)
!1211 = !DILocation(line: 239, column: 7, scope: !1201)
!1212 = distinct !DISubprogram(name: "__fill_a<float *, float>", linkageName: "_ZSt8__fill_aIPffEvT_S1_RKT0_", scope: !17, file: !1034, line: 968, type: !1213, scopeLine: 969, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, templateParams: !1215, retainedNodes: !91)
!1213 = !DISubroutineType(types: !1214)
!1214 = !{null, !22, !22, !1137}
!1215 = !{!1216, !93}
!1216 = !DITemplateTypeParameter(name: "_FIte", type: !22)
!1217 = !DILocalVariable(name: "__first", arg: 1, scope: !1212, file: !1034, line: 968, type: !22)
!1218 = !DILocation(line: 968, column: 20, scope: !1212)
!1219 = !DILocalVariable(name: "__last", arg: 2, scope: !1212, file: !1034, line: 968, type: !22)
!1220 = !DILocation(line: 968, column: 35, scope: !1212)
!1221 = !DILocalVariable(name: "__value", arg: 3, scope: !1212, file: !1034, line: 968, type: !1137)
!1222 = !DILocation(line: 968, column: 54, scope: !1212)
!1223 = !DILocation(line: 969, column: 22, scope: !1212)
!1224 = !DILocation(line: 969, column: 31, scope: !1212)
!1225 = !DILocation(line: 969, column: 39, scope: !1212)
!1226 = !DILocation(line: 969, column: 7, scope: !1212)
!1227 = !DILocation(line: 969, column: 49, scope: !1212)
!1228 = distinct !DISubprogram(name: "__fill_a1<float *, float>", linkageName: "_ZSt9__fill_a1IPffEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_", scope: !17, file: !1034, line: 919, type: !1229, scopeLine: 921, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, templateParams: !1237, retainedNodes: !91)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{!1231, !22, !22, !1137}
!1231 = !DIDerivedType(tag: DW_TAG_typedef, name: "__type", scope: !1233, file: !1232, line: 50, baseType: null)
!1232 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/ext/type_traits.h", directory: "")
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__enable_if<true, void>", scope: !34, file: !1232, line: 49, size: 8, flags: DIFlagTypePassByValue, elements: !91, templateParams: !1234, identifier: "_ZTSN9__gnu_cxx11__enable_ifILb1EvEE")
!1234 = !{!1235, !1236}
!1235 = !DITemplateValueParameter(type: !79, value: i8 1)
!1236 = !DITemplateTypeParameter(type: null)
!1237 = !{!891, !93}
!1238 = !DILocalVariable(name: "__first", arg: 1, scope: !1228, file: !1034, line: 919, type: !22)
!1239 = !DILocation(line: 919, column: 32, scope: !1228)
!1240 = !DILocalVariable(name: "__last", arg: 2, scope: !1228, file: !1034, line: 919, type: !22)
!1241 = !DILocation(line: 919, column: 58, scope: !1228)
!1242 = !DILocalVariable(name: "__value", arg: 3, scope: !1228, file: !1034, line: 920, type: !1137)
!1243 = !DILocation(line: 920, column: 19, scope: !1228)
!1244 = !DILocalVariable(name: "__tmp", scope: !1228, file: !1034, line: 922, type: !1138)
!1245 = !DILocation(line: 922, column: 17, scope: !1228)
!1246 = !DILocation(line: 922, column: 25, scope: !1228)
!1247 = !DILocation(line: 923, column: 7, scope: !1228)
!1248 = !DILocation(line: 923, column: 14, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1250, file: !1034, line: 923, column: 7)
!1250 = distinct !DILexicalBlock(scope: !1228, file: !1034, line: 923, column: 7)
!1251 = !DILocation(line: 923, column: 25, scope: !1249)
!1252 = !DILocation(line: 923, column: 22, scope: !1249)
!1253 = !DILocation(line: 923, column: 7, scope: !1250)
!1254 = !DILocation(line: 924, column: 13, scope: !1249)
!1255 = !DILocation(line: 924, column: 3, scope: !1249)
!1256 = !DILocation(line: 924, column: 11, scope: !1249)
!1257 = !DILocation(line: 924, column: 2, scope: !1249)
!1258 = !DILocation(line: 923, column: 33, scope: !1249)
!1259 = !DILocation(line: 923, column: 7, scope: !1249)
!1260 = distinct !{!1260, !1253, !1261, !532}
!1261 = !DILocation(line: 924, column: 13, scope: !1250)
!1262 = !DILocation(line: 925, column: 5, scope: !1228)
!1263 = distinct !DISubprogram(name: "max<unsigned long>", linkageName: "_ZSt3maxImERKT_S2_S2_", scope: !17, file: !1034, line: 254, type: !1035, scopeLine: 255, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, templateParams: !1039, retainedNodes: !91)
!1264 = !DILocalVariable(name: "__a", arg: 1, scope: !1263, file: !1034, line: 254, type: !1037)
!1265 = !DILocation(line: 254, column: 20, scope: !1263)
!1266 = !DILocalVariable(name: "__b", arg: 2, scope: !1263, file: !1034, line: 254, type: !1037)
!1267 = !DILocation(line: 254, column: 36, scope: !1263)
!1268 = !DILocation(line: 259, column: 11, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1263, file: !1034, line: 259, column: 11)
!1270 = !DILocation(line: 259, column: 17, scope: !1269)
!1271 = !DILocation(line: 259, column: 15, scope: !1269)
!1272 = !DILocation(line: 259, column: 11, scope: !1263)
!1273 = !DILocation(line: 260, column: 9, scope: !1269)
!1274 = !DILocation(line: 260, column: 2, scope: !1269)
!1275 = !DILocation(line: 261, column: 14, scope: !1263)
!1276 = !DILocation(line: 261, column: 7, scope: !1263)
!1277 = !DILocation(line: 262, column: 5, scope: !1263)
!1278 = distinct !DISubprogram(name: "allocate", linkageName: "_ZNSt16allocator_traitsISaIfEE8allocateERS0_m", scope: !37, file: !38, line: 463, type: !41, scopeLine: 464, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, declaration: !40, retainedNodes: !91)
!1279 = !DILocalVariable(name: "__a", arg: 1, scope: !1278, file: !38, line: 463, type: !44)
!1280 = !DILocation(line: 463, column: 32, scope: !1278)
!1281 = !DILocalVariable(name: "__n", arg: 2, scope: !1278, file: !38, line: 463, type: !48)
!1282 = !DILocation(line: 463, column: 47, scope: !1278)
!1283 = !DILocation(line: 464, column: 16, scope: !1278)
!1284 = !DILocation(line: 464, column: 29, scope: !1278)
!1285 = !DILocation(line: 464, column: 20, scope: !1278)
!1286 = !DILocation(line: 464, column: 9, scope: !1278)
!1287 = distinct !DISubprogram(name: "allocate", linkageName: "_ZN9__gnu_cxx13new_allocatorIfE8allocateEmPKv", scope: !1057, file: !1056, line: 103, type: !1288, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, declaration: !1291, retainedNodes: !91)
!1288 = !DISubroutineType(types: !1289)
!1289 = !{!22, !1290, !1060, !20}
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1291 = !DISubprogram(name: "allocate", linkageName: "_ZN9__gnu_cxx13new_allocatorIfE8allocateEmPKv", scope: !1057, file: !1056, line: 103, type: !1288, scopeLine: 103, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1292 = !DILocalVariable(name: "this", arg: 1, scope: !1287, type: !1293, flags: DIFlagArtificial | DIFlagObjectPointer)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1294 = !DILocation(line: 0, scope: !1287)
!1295 = !DILocalVariable(name: "__n", arg: 2, scope: !1287, file: !1056, line: 103, type: !1060)
!1296 = !DILocation(line: 103, column: 26, scope: !1287)
!1297 = !DILocalVariable(arg: 3, scope: !1287, file: !1056, line: 103, type: !20)
!1298 = !DILocation(line: 103, column: 43, scope: !1287)
!1299 = !DILocation(line: 111, column: 23, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1287, file: !1056, line: 111, column: 6)
!1301 = !DILocation(line: 111, column: 35, scope: !1300)
!1302 = !DILocation(line: 111, column: 27, scope: !1300)
!1303 = !DILocation(line: 111, column: 6, scope: !1287)
!1304 = !DILocation(line: 115, column: 10, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1306, file: !1056, line: 115, column: 10)
!1306 = distinct !DILexicalBlock(scope: !1300, file: !1056, line: 112, column: 4)
!1307 = !DILocation(line: 115, column: 14, scope: !1305)
!1308 = !DILocation(line: 115, column: 10, scope: !1306)
!1309 = !DILocation(line: 116, column: 8, scope: !1305)
!1310 = !DILocation(line: 117, column: 6, scope: !1306)
!1311 = !DILocation(line: 127, column: 42, scope: !1287)
!1312 = !DILocation(line: 127, column: 46, scope: !1287)
!1313 = !DILocation(line: 127, column: 27, scope: !1287)
!1314 = !DILocation(line: 127, column: 2, scope: !1287)
!1315 = distinct !DISubprogram(name: "deallocate", linkageName: "_ZNSt16allocator_traitsISaIfEE10deallocateERS0_Pfm", scope: !37, file: !38, line: 495, type: !54, scopeLine: 496, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, declaration: !53, retainedNodes: !91)
!1316 = !DILocalVariable(name: "__a", arg: 1, scope: !1315, file: !38, line: 495, type: !44)
!1317 = !DILocation(line: 495, column: 34, scope: !1315)
!1318 = !DILocalVariable(name: "__p", arg: 2, scope: !1315, file: !38, line: 495, type: !43)
!1319 = !DILocation(line: 495, column: 47, scope: !1315)
!1320 = !DILocalVariable(name: "__n", arg: 3, scope: !1315, file: !38, line: 495, type: !48)
!1321 = !DILocation(line: 495, column: 62, scope: !1315)
!1322 = !DILocation(line: 496, column: 9, scope: !1315)
!1323 = !DILocation(line: 496, column: 24, scope: !1315)
!1324 = !DILocation(line: 496, column: 29, scope: !1315)
!1325 = !DILocation(line: 496, column: 13, scope: !1315)
!1326 = !DILocation(line: 496, column: 35, scope: !1315)
!1327 = distinct !DISubprogram(name: "deallocate", linkageName: "_ZN9__gnu_cxx13new_allocatorIfE10deallocateEPfm", scope: !1057, file: !1056, line: 132, type: !1328, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, declaration: !1330, retainedNodes: !91)
!1328 = !DISubroutineType(types: !1329)
!1329 = !{null, !1290, !22, !1060}
!1330 = !DISubprogram(name: "deallocate", linkageName: "_ZN9__gnu_cxx13new_allocatorIfE10deallocateEPfm", scope: !1057, file: !1056, line: 132, type: !1328, scopeLine: 132, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!1331 = !DILocalVariable(name: "this", arg: 1, scope: !1327, type: !1293, flags: DIFlagArtificial | DIFlagObjectPointer)
!1332 = !DILocation(line: 0, scope: !1327)
!1333 = !DILocalVariable(name: "__p", arg: 2, scope: !1327, file: !1056, line: 132, type: !22)
!1334 = !DILocation(line: 132, column: 23, scope: !1327)
!1335 = !DILocalVariable(name: "__t", arg: 3, scope: !1327, file: !1056, line: 132, type: !1060)
!1336 = !DILocation(line: 132, column: 38, scope: !1327)
!1337 = !DILocation(line: 145, column: 20, scope: !1327)
!1338 = !DILocation(line: 145, column: 2, scope: !1327)
!1339 = !DILocation(line: 150, column: 7, scope: !1327)
!1340 = distinct !DISubprogram(name: "_S_do_relocate", linkageName: "_ZNSt6vectorIfSaIfEE14_S_do_relocateEPfS2_S2_RS0_St17integral_constantIbLb1EE", scope: !25, file: !14, line: 453, type: !1341, scopeLine: 455, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, declaration: !1344, retainedNodes: !91)
!1341 = !DISubroutineType(types: !1342)
!1342 = !{!28, !28, !28, !28, !86, !1343}
!1343 = !DIDerivedType(tag: DW_TAG_typedef, name: "true_type", scope: !17, file: !97, line: 83, baseType: !98)
!1344 = !DISubprogram(name: "_S_do_relocate", linkageName: "_ZNSt6vectorIfSaIfEE14_S_do_relocateEPfS2_S2_RS0_St17integral_constantIbLb1EE", scope: !25, file: !14, line: 453, type: !1341, scopeLine: 453, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!1345 = !DILocalVariable(name: "__first", arg: 1, scope: !1340, file: !14, line: 453, type: !28)
!1346 = !DILocation(line: 453, column: 30, scope: !1340)
!1347 = !DILocalVariable(name: "__last", arg: 2, scope: !1340, file: !14, line: 453, type: !28)
!1348 = !DILocation(line: 453, column: 47, scope: !1340)
!1349 = !DILocalVariable(name: "__result", arg: 3, scope: !1340, file: !14, line: 453, type: !28)
!1350 = !DILocation(line: 453, column: 63, scope: !1340)
!1351 = !DILocalVariable(name: "__alloc", arg: 4, scope: !1340, file: !14, line: 454, type: !86)
!1352 = !DILocation(line: 454, column: 24, scope: !1340)
!1353 = !DILocalVariable(arg: 5, scope: !1340, file: !14, line: 454, type: !1343)
!1354 = !DILocation(line: 454, column: 42, scope: !1340)
!1355 = !DILocation(line: 456, column: 27, scope: !1340)
!1356 = !DILocation(line: 456, column: 36, scope: !1340)
!1357 = !DILocation(line: 456, column: 44, scope: !1340)
!1358 = !DILocation(line: 456, column: 54, scope: !1340)
!1359 = !DILocation(line: 456, column: 9, scope: !1340)
!1360 = !DILocation(line: 456, column: 2, scope: !1340)
!1361 = distinct !DISubprogram(name: "__relocate_a<float *, float *, std::allocator<float> >", linkageName: "_ZSt12__relocate_aIPfS0_SaIfEET0_T_S3_S2_RT1_", scope: !17, file: !887, line: 1040, type: !1362, scopeLine: 1045, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, templateParams: !1364, retainedNodes: !91)
!1362 = !DISubroutineType(types: !1363)
!1363 = !{!22, !22, !22, !22, !75}
!1364 = !{!1365, !891, !1366}
!1365 = !DITemplateTypeParameter(name: "_InputIterator", type: !22)
!1366 = !DITemplateTypeParameter(name: "_Allocator", type: !46)
!1367 = !DILocalVariable(name: "__first", arg: 1, scope: !1361, file: !887, line: 1040, type: !22)
!1368 = !DILocation(line: 1040, column: 33, scope: !1361)
!1369 = !DILocalVariable(name: "__last", arg: 2, scope: !1361, file: !887, line: 1040, type: !22)
!1370 = !DILocation(line: 1040, column: 57, scope: !1361)
!1371 = !DILocalVariable(name: "__result", arg: 3, scope: !1361, file: !887, line: 1041, type: !22)
!1372 = !DILocation(line: 1041, column: 21, scope: !1361)
!1373 = !DILocalVariable(name: "__alloc", arg: 4, scope: !1361, file: !887, line: 1041, type: !75)
!1374 = !DILocation(line: 1041, column: 43, scope: !1361)
!1375 = !DILocation(line: 1046, column: 47, scope: !1361)
!1376 = !DILocation(line: 1046, column: 29, scope: !1361)
!1377 = !DILocation(line: 1047, column: 26, scope: !1361)
!1378 = !DILocation(line: 1047, column: 8, scope: !1361)
!1379 = !DILocation(line: 1048, column: 26, scope: !1361)
!1380 = !DILocation(line: 1048, column: 8, scope: !1361)
!1381 = !DILocation(line: 1048, column: 37, scope: !1361)
!1382 = !DILocation(line: 1046, column: 14, scope: !1361)
!1383 = !DILocation(line: 1046, column: 7, scope: !1361)
!1384 = distinct !DISubprogram(name: "__relocate_a_1<float, float>", linkageName: "_ZSt14__relocate_a_1IffENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E", scope: !17, file: !887, line: 1006, type: !1385, scopeLine: 1008, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, templateParams: !1392, retainedNodes: !91)
!1385 = !DISubroutineType(types: !1386)
!1386 = !{!1387, !22, !22, !22, !75}
!1387 = !DIDerivedType(tag: DW_TAG_typedef, name: "__enable_if_t<std::__is_bitwise_relocatable<float>::value, float *>", scope: !17, file: !97, line: 2205, baseType: !1388)
!1388 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1389, file: !97, line: 2199, baseType: !22)
!1389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "enable_if<true, float *>", scope: !17, file: !97, line: 2198, size: 8, flags: DIFlagTypePassByValue, elements: !91, templateParams: !1390, identifier: "_ZTSSt9enable_ifILb1EPfE")
!1390 = !{!1235, !1391}
!1391 = !DITemplateTypeParameter(name: "_Tp", type: !22)
!1392 = !{!93, !1393}
!1393 = !DITemplateTypeParameter(name: "_Up", type: !12)
!1394 = !DILocalVariable(name: "__first", arg: 1, scope: !1384, file: !887, line: 1006, type: !22)
!1395 = !DILocation(line: 1006, column: 25, scope: !1384)
!1396 = !DILocalVariable(name: "__last", arg: 2, scope: !1384, file: !887, line: 1006, type: !22)
!1397 = !DILocation(line: 1006, column: 39, scope: !1384)
!1398 = !DILocalVariable(name: "__result", arg: 3, scope: !1384, file: !887, line: 1007, type: !22)
!1399 = !DILocation(line: 1007, column: 11, scope: !1384)
!1400 = !DILocalVariable(arg: 4, scope: !1384, file: !887, line: 1007, type: !75)
!1401 = !DILocation(line: 1007, column: 36, scope: !1384)
!1402 = !DILocalVariable(name: "__count", scope: !1384, file: !887, line: 1009, type: !1403)
!1403 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", scope: !17, file: !16, line: 281, baseType: !345)
!1404 = !DILocation(line: 1009, column: 17, scope: !1384)
!1405 = !DILocation(line: 1009, column: 27, scope: !1384)
!1406 = !DILocation(line: 1009, column: 36, scope: !1384)
!1407 = !DILocation(line: 1009, column: 34, scope: !1384)
!1408 = !DILocation(line: 1010, column: 11, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1384, file: !887, line: 1010, column: 11)
!1410 = !DILocation(line: 1010, column: 19, scope: !1409)
!1411 = !DILocation(line: 1010, column: 11, scope: !1384)
!1412 = !DILocation(line: 1011, column: 20, scope: !1409)
!1413 = !DILocation(line: 1011, column: 30, scope: !1409)
!1414 = !DILocation(line: 1011, column: 39, scope: !1409)
!1415 = !DILocation(line: 1011, column: 47, scope: !1409)
!1416 = !DILocation(line: 1011, column: 2, scope: !1409)
!1417 = !DILocation(line: 1012, column: 14, scope: !1384)
!1418 = !DILocation(line: 1012, column: 25, scope: !1384)
!1419 = !DILocation(line: 1012, column: 23, scope: !1384)
!1420 = !DILocation(line: 1012, column: 7, scope: !1384)
!1421 = distinct !DISubprogram(name: "__niter_base<float *>", linkageName: "_ZSt12__niter_baseIPfET_S1_", scope: !17, file: !1034, line: 313, type: !1422, scopeLine: 315, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, templateParams: !1107, retainedNodes: !91)
!1422 = !DISubroutineType(types: !1423)
!1423 = !{!22, !22}
!1424 = !DILocalVariable(name: "__it", arg: 1, scope: !1421, file: !1034, line: 313, type: !22)
!1425 = !DILocation(line: 313, column: 28, scope: !1421)
!1426 = !DILocation(line: 315, column: 14, scope: !1421)
!1427 = !DILocation(line: 315, column: 7, scope: !1421)
!1428 = distinct !DISubprogram(name: "_Destroy<float *, float>", linkageName: "_ZSt8_DestroyIPffEvT_S1_RSaIT0_E", scope: !17, file: !38, line: 845, type: !1429, scopeLine: 847, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, templateParams: !1237, retainedNodes: !91)
!1429 = !DISubroutineType(types: !1430)
!1430 = !{null, !22, !22, !75}
!1431 = !DILocalVariable(name: "__first", arg: 1, scope: !1428, file: !38, line: 845, type: !22)
!1432 = !DILocation(line: 845, column: 31, scope: !1428)
!1433 = !DILocalVariable(name: "__last", arg: 2, scope: !1428, file: !38, line: 845, type: !22)
!1434 = !DILocation(line: 845, column: 57, scope: !1428)
!1435 = !DILocalVariable(arg: 3, scope: !1428, file: !38, line: 846, type: !75)
!1436 = !DILocation(line: 846, column: 22, scope: !1428)
!1437 = !DILocation(line: 848, column: 16, scope: !1428)
!1438 = !DILocation(line: 848, column: 25, scope: !1428)
!1439 = !DILocation(line: 848, column: 7, scope: !1428)
!1440 = !DILocation(line: 849, column: 5, scope: !1428)
!1441 = distinct !DISubprogram(name: "_Destroy<float *>", linkageName: "_ZSt8_DestroyIPfEvT_S1_", scope: !17, file: !1124, line: 182, type: !1442, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, templateParams: !1444, retainedNodes: !91)
!1442 = !DISubroutineType(types: !1443)
!1443 = !{null, !22, !22}
!1444 = !{!891}
!1445 = !DILocalVariable(name: "__first", arg: 1, scope: !1441, file: !1124, line: 182, type: !22)
!1446 = !DILocation(line: 182, column: 31, scope: !1441)
!1447 = !DILocalVariable(name: "__last", arg: 2, scope: !1441, file: !1124, line: 182, type: !22)
!1448 = !DILocation(line: 182, column: 57, scope: !1441)
!1449 = !DILocation(line: 196, column: 12, scope: !1441)
!1450 = !DILocation(line: 196, column: 21, scope: !1441)
!1451 = !DILocation(line: 195, column: 7, scope: !1441)
!1452 = !DILocation(line: 197, column: 5, scope: !1441)
!1453 = distinct !DISubprogram(name: "__destroy<float *>", linkageName: "_ZNSt12_Destroy_auxILb1EE9__destroyIPfEEvT_S3_", scope: !1454, file: !1124, line: 172, type: !1442, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, templateParams: !1444, declaration: !1456, retainedNodes: !91)
!1454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Destroy_aux<true>", scope: !17, file: !1124, line: 168, size: 8, flags: DIFlagTypePassByValue, elements: !91, templateParams: !1455, identifier: "_ZTSSt12_Destroy_auxILb1EE")
!1455 = !{!1235}
!1456 = !DISubprogram(name: "__destroy<float *>", linkageName: "_ZNSt12_Destroy_auxILb1EE9__destroyIPfEEvT_S3_", scope: !1454, file: !1124, line: 172, type: !1442, scopeLine: 172, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0, templateParams: !1444)
!1457 = !DILocalVariable(arg: 1, scope: !1453, file: !1124, line: 172, type: !22)
!1458 = !DILocation(line: 172, column: 35, scope: !1453)
!1459 = !DILocalVariable(arg: 2, scope: !1453, file: !1124, line: 172, type: !22)
!1460 = !DILocation(line: 172, column: 53, scope: !1453)
!1461 = !DILocation(line: 172, column: 57, scope: !1453)
