; ModuleID = 'common/cpu.c'
source_filename = "common/cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x264_cpu_name_t = type { [16 x i8], i32 }
%struct.cpu_set_t = type { [16 x i64] }

@x264_cpu_names = dso_local local_unnamed_addr constant [16 x %struct.x264_cpu_name_t] [%struct.x264_cpu_name_t { [16 x i8] c"Altivec\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.x264_cpu_name_t { [16 x i8] c"MMX2\00\00\00\00\00\00\00\00\00\00\00\00", i32 24 }, %struct.x264_cpu_name_t { [16 x i8] c"MMXEXT\00\00\00\00\00\00\00\00\00\00", i32 24 }, %struct.x264_cpu_name_t { [16 x i8] c"SSE2Slow\00\00\00\00\00\00\00\00", i32 248 }, %struct.x264_cpu_name_t { [16 x i8] c"SSE2\00\00\00\00\00\00\00\00\00\00\00\00", i32 120 }, %struct.x264_cpu_name_t { [16 x i8] c"SSE2Fast\00\00\00\00\00\00\00\00", i32 376 }, %struct.x264_cpu_name_t { [16 x i8] c"SSE3\00\00\00\00\00\00\00\00\00\00\00\00", i32 632 }, %struct.x264_cpu_name_t { [16 x i8] c"SSSE3\00\00\00\00\00\00\00\00\00\00\00", i32 1656 }, %struct.x264_cpu_name_t { [16 x i8] c"PHADD\00\00\00\00\00\00\00\00\00\00\00", i32 3704 }, %struct.x264_cpu_name_t { [16 x i8] c"SSE4.1\00\00\00\00\00\00\00\00\00\00", i32 9848 }, %struct.x264_cpu_name_t { [16 x i8] c"SSE4.2\00\00\00\00\00\00\00\00\00\00", i32 26232 }, %struct.x264_cpu_name_t { [16 x i8] c"Cache32\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.x264_cpu_name_t { [16 x i8] c"Cache64\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.x264_cpu_name_t { [16 x i8] c"SSEMisalign\00\00\00\00\00", i32 32768 }, %struct.x264_cpu_name_t { [16 x i8] c"Slow_mod4_stack\00", i32 4096 }, %struct.x264_cpu_name_t zeroinitializer], align 16, !dbg !0
@.str = private unnamed_addr constant [13 x i8] c"AuthenticAMD\00", align 1, !dbg !14
@.str.1 = private unnamed_addr constant [13 x i8] c"GenuineIntel\00", align 1, !dbg !19
@.str.2 = private unnamed_addr constant [38 x i8] c"!(cpu&(X264_CPU_SSSE3|X264_CPU_SSE4))\00", align 1, !dbg !21
@.str.3 = private unnamed_addr constant [13 x i8] c"common/cpu.c\00", align 1, !dbg !26
@__PRETTY_FUNCTION__.x264_cpu_detect = private unnamed_addr constant [31 x i8] c"uint32_t x264_cpu_detect(void)\00", align 1, !dbg !28
@.str.4 = private unnamed_addr constant [13 x i8] c"CyrixInstead\00", align 1, !dbg !34
@x264_cpu_detect.cache32_ids = internal constant [12 x i8] c"\0A\0CABCDE\82\83\84\85\00", align 1, !dbg !36
@x264_cpu_detect.cache64_ids = internal constant [22 x i8] c"\22#%),FGI`fghxyz{||\7F\86\87\00", align 16, !dbg !73
@stderr = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [52 x i8] c"x264 [warning]: unable to determine cacheline size\0A\00", align 1, !dbg !78

; Function Attrs: nounwind uwtable
define dso_local i32 @x264_cpu_detect() local_unnamed_addr #0 !dbg !38 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [4 x i32], align 16
  %6 = alloca [4 x i32], align 16
  call void @llvm.dbg.value(metadata i32 0, metadata !45, metadata !DIExpression()), !dbg !101
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #10, !dbg !102
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10, !dbg !102
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10, !dbg !102
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10, !dbg !102
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #10, !dbg !103
  call void @llvm.dbg.declare(metadata ptr %5, metadata !50, metadata !DIExpression()), !dbg !104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, i8 0, i64 16, i1 false), !dbg !104
  %7 = getelementptr inbounds i32, ptr %5, i64 2, !dbg !105
  %8 = getelementptr inbounds i32, ptr %5, i64 1, !dbg !106
  call void @llvm.dbg.value(metadata ptr %1, metadata !46, metadata !DIExpression(DW_OP_deref)), !dbg !101
  %9 = call i32 @x264_cpu_cpuid(i32 noundef 0, ptr noundef nonnull %1, ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull %8) #10, !dbg !107
  %10 = load i32, ptr %1, align 4, !dbg !108, !tbaa !110
  call void @llvm.dbg.value(metadata i32 %10, metadata !46, metadata !DIExpression()), !dbg !101
  %11 = icmp eq i32 %10, 0, !dbg !114
  br i1 %11, label %207, label %12, !dbg !115

12:                                               ; preds = %0
  call void @llvm.dbg.value(metadata ptr %1, metadata !46, metadata !DIExpression(DW_OP_deref)), !dbg !101
  call void @llvm.dbg.value(metadata ptr %2, metadata !47, metadata !DIExpression(DW_OP_deref)), !dbg !101
  call void @llvm.dbg.value(metadata ptr %3, metadata !48, metadata !DIExpression(DW_OP_deref)), !dbg !101
  call void @llvm.dbg.value(metadata ptr %4, metadata !49, metadata !DIExpression(DW_OP_deref)), !dbg !101
  %13 = call i32 @x264_cpu_cpuid(i32 noundef 1, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4) #10, !dbg !116
  %14 = load i32, ptr %4, align 4, !dbg !117, !tbaa !110
  call void @llvm.dbg.value(metadata i32 %14, metadata !49, metadata !DIExpression()), !dbg !101
  %15 = and i32 %14, 8388608, !dbg !119
  %16 = icmp eq i32 %15, 0, !dbg !119
  br i1 %16, label %207, label %17, !dbg !120

17:                                               ; preds = %12
  call void @llvm.dbg.value(metadata i32 8, metadata !45, metadata !DIExpression()), !dbg !101
  %18 = and i32 %14, 33554432, !dbg !121
  %19 = icmp eq i32 %18, 0, !dbg !121
  %20 = select i1 %19, i32 8, i32 56, !dbg !123
  call void @llvm.dbg.value(metadata i32 %20, metadata !45, metadata !DIExpression()), !dbg !101
  call void @llvm.dbg.value(metadata i32 %14, metadata !49, metadata !DIExpression()), !dbg !101
  %21 = lshr i32 %14, 20, !dbg !124
  %22 = and i32 %21, 64, !dbg !124
  call void @llvm.dbg.value(metadata !DIArgList(i32 %22, i32 %20), metadata !45, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !101
  %23 = load i32, ptr %3, align 4, !dbg !125, !tbaa !110
  call void @llvm.dbg.value(metadata i32 %23, metadata !48, metadata !DIExpression()), !dbg !101
  %24 = shl i32 %23, 9, !dbg !127
  %25 = and i32 %24, 512, !dbg !127
  call void @llvm.dbg.value(metadata !DIArgList(i32 poison, i32 poison), metadata !45, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !101
  call void @llvm.dbg.value(metadata i32 %23, metadata !48, metadata !DIExpression()), !dbg !101
  %26 = shl i32 %23, 1, !dbg !128
  %27 = and i32 %26, 1024, !dbg !128
  call void @llvm.dbg.value(metadata !DIArgList(i32 poison, i32 poison, i32 poison), metadata !45, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_or, DW_OP_or, DW_OP_stack_value)), !dbg !101
  call void @llvm.dbg.value(metadata i32 %23, metadata !48, metadata !DIExpression()), !dbg !101
  %28 = lshr i32 %23, 6, !dbg !129
  %29 = and i32 %28, 8192, !dbg !129
  call void @llvm.dbg.value(metadata !DIArgList(i32 poison, i32 poison, i32 poison, i32 poison), metadata !45, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_stack_value)), !dbg !101
  call void @llvm.dbg.value(metadata i32 %23, metadata !48, metadata !DIExpression()), !dbg !101
  %30 = and i32 %28, 16384, !dbg !130
  call void @llvm.dbg.value(metadata !DIArgList(i32 poison, i32 poison, i32 poison, i32 poison, i32 poison), metadata !45, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_stack_value)), !dbg !101
  %31 = lshr exact i32 %27, 2, !dbg !131
  call void @llvm.dbg.value(metadata !DIArgList(i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison), metadata !45, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_stack_value)), !dbg !101
  %32 = lshr exact i32 %29, 2, !dbg !132
  %33 = or i32 %20, %25, !dbg !130
  %34 = or i32 %33, %30, !dbg !131
  %35 = or i32 %34, %31, !dbg !132
  %36 = or i32 %35, %32, !dbg !132
  %37 = or i32 %36, %22, !dbg !132
  %38 = or i32 %37, %27, !dbg !132
  %39 = or i32 %38, %29, !dbg !132
  call void @llvm.dbg.value(metadata !DIArgList(i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison), metadata !45, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_stack_value)), !dbg !101
  call void @llvm.dbg.value(metadata ptr %1, metadata !46, metadata !DIExpression(DW_OP_deref)), !dbg !101
  call void @llvm.dbg.value(metadata ptr %2, metadata !47, metadata !DIExpression(DW_OP_deref)), !dbg !101
  call void @llvm.dbg.value(metadata ptr %3, metadata !48, metadata !DIExpression(DW_OP_deref)), !dbg !101
  call void @llvm.dbg.value(metadata ptr %4, metadata !49, metadata !DIExpression(DW_OP_deref)), !dbg !101
  %40 = call i32 @x264_cpu_cpuid(i32 noundef -2147483648, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4) #10, !dbg !133
  %41 = load i32, ptr %1, align 4, !dbg !134, !tbaa !110
  call void @llvm.dbg.value(metadata i32 %41, metadata !46, metadata !DIExpression()), !dbg !101
  call void @llvm.dbg.value(metadata i32 %41, metadata !54, metadata !DIExpression()), !dbg !101
  %42 = call i32 @bcmp(ptr noundef nonnull dereferenceable(13) %5, ptr noundef nonnull dereferenceable(13) @.str, i64 13), !dbg !135
  %43 = icmp eq i32 %42, 0, !dbg !135
  %44 = icmp ugt i32 %41, -2147483648
  %45 = select i1 %43, i1 %44, i1 false, !dbg !137
  br i1 %45, label %46, label %61, !dbg !137

46:                                               ; preds = %17
  call void @llvm.dbg.value(metadata ptr %1, metadata !46, metadata !DIExpression(DW_OP_deref)), !dbg !101
  call void @llvm.dbg.value(metadata ptr %2, metadata !47, metadata !DIExpression(DW_OP_deref)), !dbg !101
  call void @llvm.dbg.value(metadata ptr %3, metadata !48, metadata !DIExpression(DW_OP_deref)), !dbg !101
  call void @llvm.dbg.value(metadata ptr %4, metadata !49, metadata !DIExpression(DW_OP_deref)), !dbg !101
  %47 = call i32 @x264_cpu_cpuid(i32 noundef -2147483647, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4) #10, !dbg !138
  %48 = load i32, ptr %4, align 4, !dbg !140, !tbaa !110
  call void @llvm.dbg.value(metadata i32 %48, metadata !49, metadata !DIExpression()), !dbg !101
  %49 = lshr i32 %48, 18, !dbg !142
  %50 = and i32 %49, 16, !dbg !142
  %51 = or i32 %50, %39, !dbg !142
  call void @llvm.dbg.value(metadata !DIArgList(i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison), metadata !45, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_stack_value)), !dbg !101
  %52 = icmp eq i32 %22, 0, !dbg !143
  br i1 %52, label %61, label %53, !dbg !145

53:                                               ; preds = %46
  %54 = load i32, ptr %3, align 4, !dbg !146, !tbaa !110
  call void @llvm.dbg.value(metadata i32 %54, metadata !48, metadata !DIExpression()), !dbg !101
  %55 = and i32 %54, 64, !dbg !149
  %56 = icmp eq i32 %55, 0, !dbg !149
  br i1 %56, label %59, label %57, !dbg !150

57:                                               ; preds = %53
  call void @llvm.dbg.value(metadata !DIArgList(i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison), metadata !45, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_LLVM_arg, 5, DW_OP_LLVM_arg, 6, DW_OP_LLVM_arg, 7, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_constu, 256, DW_OP_or, DW_OP_stack_value)), !dbg !101
  %58 = or i32 %51, 33024, !dbg !151
  call void @llvm.dbg.value(metadata i32 %58, metadata !45, metadata !DIExpression()), !dbg !101
  call void @x264_cpu_mask_misalign_sse() #10, !dbg !153
  br label %61, !dbg !154

59:                                               ; preds = %53
  %60 = or i32 %51, 128, !dbg !155
  call void @llvm.dbg.value(metadata i32 %60, metadata !45, metadata !DIExpression()), !dbg !101
  br label %61

61:                                               ; preds = %46, %59, %57, %17
  %62 = phi i32 [ %58, %57 ], [ %60, %59 ], [ %51, %46 ], [ %39, %17 ], !dbg !101
  call void @llvm.dbg.value(metadata i32 %62, metadata !45, metadata !DIExpression()), !dbg !101
  %63 = call i32 @bcmp(ptr noundef nonnull dereferenceable(13) %5, ptr noundef nonnull dereferenceable(13) @.str.1, i64 13), !dbg !156
  %64 = icmp eq i32 %63, 0, !dbg !156
  br i1 %64, label %65, label %89, !dbg !157

65:                                               ; preds = %61
  call void @llvm.dbg.value(metadata ptr %1, metadata !46, metadata !DIExpression(DW_OP_deref)), !dbg !101
  call void @llvm.dbg.value(metadata ptr %2, metadata !47, metadata !DIExpression(DW_OP_deref)), !dbg !101
  call void @llvm.dbg.value(metadata ptr %3, metadata !48, metadata !DIExpression(DW_OP_deref)), !dbg !101
  call void @llvm.dbg.value(metadata ptr %4, metadata !49, metadata !DIExpression(DW_OP_deref)), !dbg !101
  %66 = call i32 @x264_cpu_cpuid(i32 noundef 1, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4) #10, !dbg !158
  %67 = load i32, ptr %1, align 4, !dbg !159, !tbaa !110
  call void @llvm.dbg.value(metadata i32 %67, metadata !46, metadata !DIExpression()), !dbg !101
  %68 = lshr i32 %67, 8, !dbg !160
  %69 = and i32 %68, 15, !dbg !161
  %70 = lshr i32 %67, 20, !dbg !162
  %71 = and i32 %70, 255, !dbg !163
  %72 = add nuw nsw i32 %69, %71, !dbg !164
  call void @llvm.dbg.value(metadata i32 %72, metadata !57, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata !DIArgList(i32 %67, i32 %67), metadata !60, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 4, DW_OP_shr, DW_OP_constu, 15, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_constu, 12, DW_OP_shr, DW_OP_constu, 240, DW_OP_and, DW_OP_plus, DW_OP_stack_value)), !dbg !165
  call void @llvm.dbg.value(metadata i32 %67, metadata !61, metadata !DIExpression(DW_OP_constu, 15, DW_OP_and, DW_OP_stack_value)), !dbg !165
  %73 = icmp eq i32 %72, 6, !dbg !166
  br i1 %73, label %74, label %89, !dbg !168

74:                                               ; preds = %65
  %75 = lshr i32 %67, 4, !dbg !169
  call void @llvm.dbg.value(metadata !DIArgList(i32 %75, i32 %67), metadata !60, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 15, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_constu, 12, DW_OP_shr, DW_OP_constu, 240, DW_OP_and, DW_OP_plus, DW_OP_stack_value)), !dbg !165
  %76 = and i32 %75, 15, !dbg !170
  call void @llvm.dbg.value(metadata !DIArgList(i32 %76, i32 %67), metadata !60, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 12, DW_OP_shr, DW_OP_constu, 240, DW_OP_and, DW_OP_plus, DW_OP_stack_value)), !dbg !165
  %77 = lshr i32 %67, 12, !dbg !171
  call void @llvm.dbg.value(metadata !DIArgList(i32 %67, i32 %77), metadata !60, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 4, DW_OP_shr, DW_OP_constu, 15, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_constu, 240, DW_OP_and, DW_OP_plus, DW_OP_stack_value)), !dbg !165
  %78 = and i32 %77, 240, !dbg !172
  call void @llvm.dbg.value(metadata !DIArgList(i32 %67, i32 %78), metadata !60, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 4, DW_OP_shr, DW_OP_constu, 15, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !165
  %79 = or i32 %76, %78, !dbg !173
  call void @llvm.dbg.value(metadata i32 %79, metadata !60, metadata !DIExpression()), !dbg !165
  %80 = and i32 %79, 251, !dbg !174
  %81 = icmp eq i32 %80, 9, !dbg !174
  %82 = icmp eq i32 %79, 14
  %83 = or i1 %82, %81, !dbg !174
  br i1 %83, label %84, label %89, !dbg !174

84:                                               ; preds = %74
  %85 = and i32 %62, -577, !dbg !175
  call void @llvm.dbg.value(metadata i32 %85, metadata !45, metadata !DIExpression()), !dbg !101
  %86 = and i32 %62, 9216, !dbg !177
  %87 = icmp eq i32 %86, 0, !dbg !177
  br i1 %87, label %89, label %88, !dbg !180

88:                                               ; preds = %84
  call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 140, ptr noundef nonnull @__PRETTY_FUNCTION__.x264_cpu_detect) #11, !dbg !177
  unreachable, !dbg !177

89:                                               ; preds = %65, %74, %84, %61
  %90 = phi i32 [ %62, %61 ], [ %85, %84 ], [ %62, %74 ], [ %62, %65 ], !dbg !101
  call void @llvm.dbg.value(metadata i32 %90, metadata !45, metadata !DIExpression()), !dbg !101
  %91 = call i32 @bcmp(ptr noundef nonnull dereferenceable(13) %5, ptr noundef nonnull dereferenceable(13) @.str.1, i64 13), !dbg !181
  %92 = icmp eq i32 %91, 0, !dbg !181
  br i1 %92, label %99, label %93, !dbg !182

93:                                               ; preds = %89
  %94 = call i32 @bcmp(ptr noundef nonnull dereferenceable(13) %5, ptr noundef nonnull dereferenceable(13) @.str.4, i64 13), !dbg !183
  %95 = icmp eq i32 %94, 0, !dbg !183
  %96 = and i32 %90, 16384
  %97 = icmp eq i32 %96, 0
  %98 = select i1 %95, i1 %97, i1 false, !dbg !184
  br i1 %98, label %102, label %207, !dbg !184

99:                                               ; preds = %89
  %100 = and i32 %90, 16384, !dbg !185
  %101 = icmp eq i32 %100, 0, !dbg !185
  br i1 %101, label %102, label %207, !dbg !186

102:                                              ; preds = %93, %99
  call void @llvm.dbg.value(metadata ptr %1, metadata !46, metadata !DIExpression(DW_OP_deref)), !dbg !101
  call void @llvm.dbg.value(metadata ptr %2, metadata !47, metadata !DIExpression(DW_OP_deref)), !dbg !101
  call void @llvm.dbg.value(metadata ptr %3, metadata !48, metadata !DIExpression(DW_OP_deref)), !dbg !101
  call void @llvm.dbg.value(metadata ptr %4, metadata !49, metadata !DIExpression(DW_OP_deref)), !dbg !101
  %103 = call i32 @x264_cpu_cpuid(i32 noundef 1, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4) #10, !dbg !187
  %104 = load i32, ptr %2, align 4, !dbg !188, !tbaa !110
  call void @llvm.dbg.value(metadata i32 %104, metadata !47, metadata !DIExpression()), !dbg !101
  %105 = lshr i32 %104, 5, !dbg !189
  %106 = and i32 %105, 2040, !dbg !189
  call void @llvm.dbg.value(metadata i32 %106, metadata !56, metadata !DIExpression()), !dbg !101
  %107 = icmp eq i32 %106, 0, !dbg !190
  %108 = icmp ugt i32 %41, -2147483643
  %109 = select i1 %107, i1 %108, i1 false, !dbg !192
  br i1 %109, label %110, label %114, !dbg !192

110:                                              ; preds = %102
  call void @llvm.dbg.value(metadata ptr %1, metadata !46, metadata !DIExpression(DW_OP_deref)), !dbg !101
  call void @llvm.dbg.value(metadata ptr %2, metadata !47, metadata !DIExpression(DW_OP_deref)), !dbg !101
  call void @llvm.dbg.value(metadata ptr %3, metadata !48, metadata !DIExpression(DW_OP_deref)), !dbg !101
  call void @llvm.dbg.value(metadata ptr %4, metadata !49, metadata !DIExpression(DW_OP_deref)), !dbg !101
  %111 = call i32 @x264_cpu_cpuid(i32 noundef -2147483642, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4) #10, !dbg !193
  %112 = load i32, ptr %3, align 4, !dbg !195, !tbaa !110
  call void @llvm.dbg.value(metadata i32 %112, metadata !48, metadata !DIExpression()), !dbg !101
  %113 = and i32 %112, 255, !dbg !196
  call void @llvm.dbg.value(metadata i32 %113, metadata !56, metadata !DIExpression()), !dbg !101
  br label %114, !dbg !197

114:                                              ; preds = %110, %102
  %115 = phi i32 [ %113, %110 ], [ %106, %102 ], !dbg !198
  call void @llvm.dbg.value(metadata i32 %115, metadata !56, metadata !DIExpression()), !dbg !101
  %116 = icmp eq i32 %115, 0, !dbg !199
  br i1 %116, label %117, label %198, !dbg !200

117:                                              ; preds = %114
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #10, !dbg !201
  call void @llvm.dbg.declare(metadata ptr %6, metadata !62, metadata !DIExpression()), !dbg !202
  call void @llvm.dbg.value(metadata i32 0, metadata !68, metadata !DIExpression()), !dbg !203
  %118 = getelementptr inbounds i32, ptr %6, i64 1
  %119 = getelementptr inbounds i32, ptr %6, i64 2
  %120 = getelementptr inbounds i32, ptr %6, i64 3
  br label %121, !dbg !204

121:                                              ; preds = %192, %117
  %122 = phi i32 [ 0, %117 ], [ %193, %192 ], !dbg !205
  %123 = phi i32 [ 0, %117 ], [ %195, %192 ], !dbg !203
  call void @llvm.dbg.value(metadata i32 %123, metadata !68, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.value(metadata i32 %122, metadata !56, metadata !DIExpression()), !dbg !101
  %124 = call i32 @x264_cpu_cpuid(i32 noundef 2, ptr noundef nonnull %6, ptr noundef nonnull %118, ptr noundef nonnull %119, ptr noundef nonnull %120) #10, !dbg !206
  %125 = load i32, ptr %6, align 16, !dbg !208, !tbaa !110
  call void @llvm.dbg.value(metadata i32 %194, metadata !67, metadata !DIExpression()), !dbg !203
  %126 = and i32 %125, -256, !dbg !209
  store i32 %126, ptr %6, align 16, !dbg !209, !tbaa !110
  call void @llvm.dbg.value(metadata i32 0, metadata !69, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.value(metadata i32 %122, metadata !56, metadata !DIExpression()), !dbg !101
  call void @llvm.dbg.value(metadata i64 0, metadata !69, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.value(metadata i32 %122, metadata !56, metadata !DIExpression()), !dbg !101
  %127 = icmp slt i32 %126, 1, !dbg !210
  call void @llvm.dbg.value(metadata i32 %122, metadata !56, metadata !DIExpression()), !dbg !101
  br i1 %127, label %141, label %128, !dbg !210

128:                                              ; preds = %121, %128
  %129 = phi i32 [ %137, %128 ], [ %122, %121 ]
  %130 = phi i32 [ %138, %128 ], [ %126, %121 ]
  call void @llvm.dbg.value(metadata i32 %129, metadata !56, metadata !DIExpression()), !dbg !101
  %131 = and i32 %130, 255, !dbg !213
  %132 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @x264_cpu_detect.cache32_ids, i32 %131, i64 12), !dbg !217
  %133 = icmp eq ptr %132, null, !dbg !217
  %134 = select i1 %133, i32 %129, i32 32, !dbg !218
  call void @llvm.dbg.value(metadata i32 %134, metadata !56, metadata !DIExpression()), !dbg !101
  %135 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @x264_cpu_detect.cache64_ids, i32 %131, i64 22), !dbg !219
  %136 = icmp eq ptr %135, null, !dbg !219
  %137 = select i1 %136, i32 %134, i32 64, !dbg !221
  call void @llvm.dbg.value(metadata i32 %137, metadata !56, metadata !DIExpression()), !dbg !101
  %138 = lshr i32 %130, 8, !dbg !222
  %139 = icmp ult i32 %130, 256, !dbg !223
  br i1 %139, label %140, label %128, !dbg !223, !llvm.loop !224

140:                                              ; preds = %128
  store i32 %138, ptr %6, align 16, !dbg !222, !tbaa !110
  br label %141, !dbg !223

141:                                              ; preds = %140, %121
  %142 = phi i32 [ %122, %121 ], [ %137, %140 ], !dbg !205
  call void @llvm.dbg.value(metadata i32 %142, metadata !56, metadata !DIExpression()), !dbg !101
  call void @llvm.dbg.value(metadata i64 1, metadata !69, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.value(metadata i64 1, metadata !69, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.value(metadata i32 %142, metadata !56, metadata !DIExpression()), !dbg !101
  %143 = load i32, ptr %118, align 4, !dbg !227, !tbaa !110
  %144 = icmp slt i32 %143, 1, !dbg !210
  call void @llvm.dbg.value(metadata i32 %142, metadata !56, metadata !DIExpression()), !dbg !101
  br i1 %144, label %158, label %145, !dbg !210

145:                                              ; preds = %141, %145
  %146 = phi i32 [ %154, %145 ], [ %142, %141 ]
  %147 = phi i32 [ %155, %145 ], [ %143, %141 ]
  call void @llvm.dbg.value(metadata i32 %146, metadata !56, metadata !DIExpression()), !dbg !101
  %148 = and i32 %147, 255, !dbg !213
  %149 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @x264_cpu_detect.cache32_ids, i32 %148, i64 12), !dbg !217
  %150 = icmp eq ptr %149, null, !dbg !217
  %151 = select i1 %150, i32 %146, i32 32, !dbg !218
  call void @llvm.dbg.value(metadata i32 %151, metadata !56, metadata !DIExpression()), !dbg !101
  %152 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @x264_cpu_detect.cache64_ids, i32 %148, i64 22), !dbg !219
  %153 = icmp eq ptr %152, null, !dbg !219
  %154 = select i1 %153, i32 %151, i32 64, !dbg !221
  call void @llvm.dbg.value(metadata i32 %154, metadata !56, metadata !DIExpression()), !dbg !101
  %155 = lshr i32 %147, 8, !dbg !222
  %156 = icmp ult i32 %147, 256, !dbg !223
  br i1 %156, label %157, label %145, !dbg !223, !llvm.loop !224

157:                                              ; preds = %145
  store i32 %155, ptr %118, align 4, !dbg !222, !tbaa !110
  br label %158, !dbg !223

158:                                              ; preds = %157, %141
  %159 = phi i32 [ %142, %141 ], [ %154, %157 ], !dbg !205
  call void @llvm.dbg.value(metadata i32 %159, metadata !56, metadata !DIExpression()), !dbg !101
  call void @llvm.dbg.value(metadata i64 2, metadata !69, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.value(metadata i64 2, metadata !69, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.value(metadata i32 %159, metadata !56, metadata !DIExpression()), !dbg !101
  %160 = load i32, ptr %119, align 8, !dbg !227, !tbaa !110
  %161 = icmp slt i32 %160, 1, !dbg !210
  call void @llvm.dbg.value(metadata i32 %159, metadata !56, metadata !DIExpression()), !dbg !101
  br i1 %161, label %175, label %162, !dbg !210

162:                                              ; preds = %158, %162
  %163 = phi i32 [ %171, %162 ], [ %159, %158 ]
  %164 = phi i32 [ %172, %162 ], [ %160, %158 ]
  call void @llvm.dbg.value(metadata i32 %163, metadata !56, metadata !DIExpression()), !dbg !101
  %165 = and i32 %164, 255, !dbg !213
  %166 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @x264_cpu_detect.cache32_ids, i32 %165, i64 12), !dbg !217
  %167 = icmp eq ptr %166, null, !dbg !217
  %168 = select i1 %167, i32 %163, i32 32, !dbg !218
  call void @llvm.dbg.value(metadata i32 %168, metadata !56, metadata !DIExpression()), !dbg !101
  %169 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @x264_cpu_detect.cache64_ids, i32 %165, i64 22), !dbg !219
  %170 = icmp eq ptr %169, null, !dbg !219
  %171 = select i1 %170, i32 %168, i32 64, !dbg !221
  call void @llvm.dbg.value(metadata i32 %171, metadata !56, metadata !DIExpression()), !dbg !101
  %172 = lshr i32 %164, 8, !dbg !222
  %173 = icmp ult i32 %164, 256, !dbg !223
  br i1 %173, label %174, label %162, !dbg !223, !llvm.loop !224

174:                                              ; preds = %162
  store i32 %172, ptr %119, align 8, !dbg !222, !tbaa !110
  br label %175, !dbg !223

175:                                              ; preds = %174, %158
  %176 = phi i32 [ %159, %158 ], [ %171, %174 ], !dbg !205
  call void @llvm.dbg.value(metadata i32 %176, metadata !56, metadata !DIExpression()), !dbg !101
  call void @llvm.dbg.value(metadata i64 3, metadata !69, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.value(metadata i64 3, metadata !69, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.value(metadata i32 %176, metadata !56, metadata !DIExpression()), !dbg !101
  %177 = load i32, ptr %120, align 4, !dbg !227, !tbaa !110
  %178 = icmp slt i32 %177, 1, !dbg !210
  call void @llvm.dbg.value(metadata i32 %176, metadata !56, metadata !DIExpression()), !dbg !101
  br i1 %178, label %192, label %179, !dbg !210

179:                                              ; preds = %175, %179
  %180 = phi i32 [ %188, %179 ], [ %176, %175 ]
  %181 = phi i32 [ %189, %179 ], [ %177, %175 ]
  call void @llvm.dbg.value(metadata i32 %180, metadata !56, metadata !DIExpression()), !dbg !101
  %182 = and i32 %181, 255, !dbg !213
  %183 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @x264_cpu_detect.cache32_ids, i32 %182, i64 12), !dbg !217
  %184 = icmp eq ptr %183, null, !dbg !217
  %185 = select i1 %184, i32 %180, i32 32, !dbg !218
  call void @llvm.dbg.value(metadata i32 %185, metadata !56, metadata !DIExpression()), !dbg !101
  %186 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @x264_cpu_detect.cache64_ids, i32 %182, i64 22), !dbg !219
  %187 = icmp eq ptr %186, null, !dbg !219
  %188 = select i1 %187, i32 %185, i32 64, !dbg !221
  call void @llvm.dbg.value(metadata i32 %188, metadata !56, metadata !DIExpression()), !dbg !101
  %189 = lshr i32 %181, 8, !dbg !222
  %190 = icmp ult i32 %181, 256, !dbg !223
  br i1 %190, label %191, label %179, !dbg !223, !llvm.loop !224

191:                                              ; preds = %179
  store i32 %189, ptr %120, align 4, !dbg !222, !tbaa !110
  br label %192, !dbg !223

192:                                              ; preds = %191, %175
  %193 = phi i32 [ %176, %175 ], [ %188, %191 ], !dbg !205
  call void @llvm.dbg.value(metadata i32 %193, metadata !56, metadata !DIExpression()), !dbg !101
  call void @llvm.dbg.value(metadata i64 4, metadata !69, metadata !DIExpression()), !dbg !203
  %194 = and i32 %125, 255, !dbg !228
  %195 = add nuw nsw i32 %123, 1, !dbg !229
  call void @llvm.dbg.value(metadata i32 %195, metadata !68, metadata !DIExpression()), !dbg !203
  %196 = icmp ult i32 %195, %194, !dbg !230
  br i1 %196, label %121, label %197, !dbg !231, !llvm.loop !232

197:                                              ; preds = %192
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #10, !dbg !234
  br label %198, !dbg !235

198:                                              ; preds = %197, %114
  %199 = phi i32 [ %115, %114 ], [ %193, %197 ], !dbg !205
  call void @llvm.dbg.value(metadata i32 %199, metadata !56, metadata !DIExpression()), !dbg !101
  switch i32 %199, label %204 [
    i32 32, label %200
    i32 64, label %202
  ], !dbg !236

200:                                              ; preds = %198
  %201 = or i32 %90, 1, !dbg !237
  call void @llvm.dbg.value(metadata i32 %201, metadata !45, metadata !DIExpression()), !dbg !101
  br label %207, !dbg !239

202:                                              ; preds = %198
  %203 = or i32 %90, 2, !dbg !240
  call void @llvm.dbg.value(metadata i32 %203, metadata !45, metadata !DIExpression()), !dbg !101
  br label %207, !dbg !242

204:                                              ; preds = %198
  %205 = load ptr, ptr @stderr, align 8, !dbg !243, !tbaa !244
  %206 = call i64 @fwrite(ptr nonnull @.str.5, i64 51, i64 1, ptr %205) #12, !dbg !246
  br label %207

207:                                              ; preds = %93, %99, %202, %204, %200, %12, %0
  %208 = phi i32 [ 0, %0 ], [ 0, %12 ], [ %90, %93 ], [ %90, %99 ], [ %201, %200 ], [ %203, %202 ], [ %90, %204 ], !dbg !101
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #10, !dbg !247
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10, !dbg !247
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10, !dbg !247
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10, !dbg !247
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #10, !dbg !247
  ret i32 %208, !dbg !247
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

declare !dbg !248 i32 @x264_cpu_cpuid(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !253 void @x264_cpu_mask_misalign_sse() local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare !dbg !256 void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @x264_cpu_num_processors() local_unnamed_addr #0 !dbg !261 {
  %1 = alloca %struct.cpu_set_t, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %1) #10, !dbg !276
  call void @llvm.dbg.declare(metadata ptr %1, metadata !267, metadata !DIExpression()), !dbg !277
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %1, i8 0, i64 128, i1 false), !dbg !278
  %2 = call i32 @sched_getaffinity(i32 noundef 0, i64 noundef 128, ptr noundef nonnull %1) #10, !dbg !279
  call void @llvm.dbg.value(metadata i32 0, metadata !266, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.value(metadata i32 0, metadata !265, metadata !DIExpression()), !dbg !280
  br label %3, !dbg !281

3:                                                ; preds = %3, %0
  %4 = phi i32 [ 0, %0 ], [ %24, %3 ]
  %5 = phi i32 [ 0, %0 ], [ %25, %3 ]
  call void @llvm.dbg.value(metadata i32 %4, metadata !266, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.value(metadata i32 %5, metadata !265, metadata !DIExpression()), !dbg !280
  %6 = lshr i32 %5, 3, !dbg !283
  %7 = zext i32 %6 to i64, !dbg !285
  %8 = getelementptr inbounds i8, ptr %1, i64 %7, !dbg !285
  %9 = load i8, ptr %8, align 1, !dbg !285, !tbaa !286
  %10 = zext i8 %9 to i32, !dbg !285
  %11 = and i32 %5, 6, !dbg !287
  %12 = lshr i32 %10, %11
  %13 = and i32 %12, 1, !dbg !288
  %14 = add nuw nsw i32 %13, %4, !dbg !289
  call void @llvm.dbg.value(metadata i32 %14, metadata !266, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.value(metadata i32 %5, metadata !265, metadata !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value)), !dbg !280
  call void @llvm.dbg.value(metadata i32 %14, metadata !266, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.value(metadata i32 %5, metadata !265, metadata !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value)), !dbg !280
  %15 = lshr i32 %5, 3, !dbg !283
  %16 = zext i32 %15 to i64, !dbg !285
  %17 = getelementptr inbounds i8, ptr %1, i64 %16, !dbg !285
  %18 = load i8, ptr %17, align 1, !dbg !285, !tbaa !286
  %19 = zext i8 %18 to i32, !dbg !285
  %20 = and i32 %5, 6, !dbg !287
  %21 = or i32 %20, 1, !dbg !287
  %22 = lshr i32 %19, %21
  %23 = and i32 %22, 1, !dbg !288
  %24 = add nuw nsw i32 %23, %14, !dbg !289
  call void @llvm.dbg.value(metadata i32 %24, metadata !266, metadata !DIExpression()), !dbg !280
  %25 = add nuw nsw i32 %5, 2, !dbg !290
  call void @llvm.dbg.value(metadata i32 %25, metadata !265, metadata !DIExpression()), !dbg !280
  %26 = icmp eq i32 %25, 128, !dbg !291
  br i1 %26, label %27, label %3, !dbg !281, !llvm.loop !292

27:                                               ; preds = %3
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %1) #10, !dbg !294
  ret i32 %24, !dbg !295
}

; Function Attrs: nounwind
declare !dbg !296 i32 @sched_getaffinity(i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #7

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr, i32, i64) local_unnamed_addr #8

attributes #0 = { nounwind uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #5 = { noreturn nounwind "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #6 = { nounwind "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nofree nounwind willreturn memory(argmem: read) }
attributes #9 = { nofree nounwind }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }
attributes #12 = { cold }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!94, !95, !96, !97, !98, !99}
!llvm.ident = !{!100}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "x264_cpu_names", scope: !2, file: !3, line: 40, type: !83, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 16.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !13, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "common/cpu.c", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "0ad35d5e72e9de8d741f105143188a1c")
!4 = !{!5, !7}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !9, line: 24, baseType: !10)
!9 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !11, line: 38, baseType: !12)
!11 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!12 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!13 = !{!0, !14, !19, !21, !26, !28, !34, !36, !73, !78}
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(scope: null, file: !3, line: 109, type: !16, isLocal: true, isDefinition: true)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 104, elements: !17)
!17 = !{!18}
!18 = !DISubrange(count: 13)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(scope: null, file: !3, line: 127, type: !16, isLocal: true, isDefinition: true)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(scope: null, file: !3, line: 140, type: !23, isLocal: true, isDefinition: true)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 304, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 38)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(scope: null, file: !3, line: 140, type: !16, isLocal: true, isDefinition: true)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(scope: null, file: !3, line: 140, type: !30, isLocal: true, isDefinition: true)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 248, elements: !32)
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!32 = !{!33}
!33 = !DISubrange(count: 31)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(scope: null, file: !3, line: 144, type: !16, isLocal: true, isDefinition: true)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(name: "cache32_ids", scope: !38, file: !3, line: 157, type: !70, isLocal: true, isDefinition: true)
!38 = distinct !DISubprogram(name: "x264_cpu_detect", scope: !3, file: !3, line: 66, type: !39, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !44)
!39 = !DISubroutineType(types: !40)
!40 = !{!41}
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !9, line: 26, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !11, line: 42, baseType: !43)
!43 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!44 = !{!45, !46, !47, !48, !49, !50, !54, !56, !57, !60, !61, !62, !67, !68, !69}
!45 = !DILocalVariable(name: "cpu", scope: !38, file: !3, line: 68, type: !41)
!46 = !DILocalVariable(name: "eax", scope: !38, file: !3, line: 69, type: !41)
!47 = !DILocalVariable(name: "ebx", scope: !38, file: !3, line: 69, type: !41)
!48 = !DILocalVariable(name: "ecx", scope: !38, file: !3, line: 69, type: !41)
!49 = !DILocalVariable(name: "edx", scope: !38, file: !3, line: 69, type: !41)
!50 = !DILocalVariable(name: "vendor", scope: !38, file: !3, line: 70, type: !51)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 128, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 4)
!54 = !DILocalVariable(name: "max_extended_cap", scope: !38, file: !3, line: 71, type: !55)
!55 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!56 = !DILocalVariable(name: "cache", scope: !38, file: !3, line: 72, type: !55)
!57 = !DILocalVariable(name: "family", scope: !58, file: !3, line: 129, type: !55)
!58 = distinct !DILexicalBlock(scope: !59, file: !3, line: 128, column: 5)
!59 = distinct !DILexicalBlock(scope: !38, file: !3, line: 127, column: 9)
!60 = !DILocalVariable(name: "model", scope: !58, file: !3, line: 129, type: !55)
!61 = !DILocalVariable(name: "stepping", scope: !58, file: !3, line: 129, type: !55)
!62 = !DILocalVariable(name: "buf", scope: !63, file: !3, line: 159, type: !51)
!63 = distinct !DILexicalBlock(scope: !64, file: !3, line: 155, column: 9)
!64 = distinct !DILexicalBlock(scope: !65, file: !3, line: 154, column: 13)
!65 = distinct !DILexicalBlock(scope: !66, file: !3, line: 145, column: 5)
!66 = distinct !DILexicalBlock(scope: !38, file: !3, line: 144, column: 9)
!67 = !DILocalVariable(name: "max", scope: !63, file: !3, line: 160, type: !55)
!68 = !DILocalVariable(name: "i", scope: !63, file: !3, line: 160, type: !55)
!69 = !DILocalVariable(name: "j", scope: !63, file: !3, line: 160, type: !55)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 96, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 12)
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(name: "cache64_ids", scope: !38, file: !3, line: 158, type: !75, isLocal: true, isDefinition: true)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 176, elements: !76)
!76 = !{!77}
!77 = !DISubrange(count: 22)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(scope: null, file: !3, line: 183, type: !80, isLocal: true, isDefinition: true)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 416, elements: !81)
!81 = !{!82}
!82 = !DISubrange(count: 52)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 2560, elements: !91)
!84 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_cpu_name_t", file: !86, line: 46, baseType: !87)
!86 = !DIFile(filename: "common/cpu.h", directory: "/home/raj/SVF_PAPER_BENCHMARKS/parsec-3.0/pkgs/apps/x264/src", checksumkind: CSK_MD5, checksum: "5639400f1915d22bd0aadf074bb04719")
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !86, line: 43, size: 160, elements: !88)
!88 = !{!89, !93}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !87, file: !86, line: 44, baseType: !90, size: 128)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 128, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 16)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !87, file: !86, line: 45, baseType: !55, size: 32, offset: 128)
!94 = !{i32 7, !"Dwarf Version", i32 5}
!95 = !{i32 2, !"Debug Info Version", i32 3}
!96 = !{i32 1, !"wchar_size", i32 4}
!97 = !{i32 8, !"PIC Level", i32 2}
!98 = !{i32 7, !"PIE Level", i32 2}
!99 = !{i32 7, !"uwtable", i32 2}
!100 = !{!"clang version 16.0.0"}
!101 = !DILocation(line: 0, scope: !38)
!102 = !DILocation(line: 69, column: 5, scope: !38)
!103 = !DILocation(line: 70, column: 5, scope: !38)
!104 = !DILocation(line: 70, column: 14, scope: !38)
!105 = !DILocation(line: 79, column: 46, scope: !38)
!106 = !DILocation(line: 79, column: 56, scope: !38)
!107 = !DILocation(line: 79, column: 5, scope: !38)
!108 = !DILocation(line: 80, column: 9, scope: !109)
!109 = distinct !DILexicalBlock(scope: !38, file: !3, line: 80, column: 9)
!110 = !{!111, !111, i64 0}
!111 = !{!"int", !112, i64 0}
!112 = !{!"omnipotent char", !113, i64 0}
!113 = !{!"Simple C/C++ TBAA"}
!114 = !DILocation(line: 80, column: 13, scope: !109)
!115 = !DILocation(line: 80, column: 9, scope: !38)
!116 = !DILocation(line: 83, column: 5, scope: !38)
!117 = !DILocation(line: 84, column: 9, scope: !118)
!118 = distinct !DILexicalBlock(scope: !38, file: !3, line: 84, column: 9)
!119 = !DILocation(line: 84, column: 12, scope: !118)
!120 = !DILocation(line: 84, column: 9, scope: !38)
!121 = !DILocation(line: 88, column: 12, scope: !122)
!122 = distinct !DILexicalBlock(scope: !38, file: !3, line: 88, column: 9)
!123 = !DILocation(line: 88, column: 9, scope: !38)
!124 = !DILocation(line: 90, column: 9, scope: !38)
!125 = !DILocation(line: 92, column: 9, scope: !126)
!126 = distinct !DILexicalBlock(scope: !38, file: !3, line: 92, column: 9)
!127 = !DILocation(line: 92, column: 9, scope: !38)
!128 = !DILocation(line: 94, column: 9, scope: !38)
!129 = !DILocation(line: 96, column: 9, scope: !38)
!130 = !DILocation(line: 98, column: 9, scope: !38)
!131 = !DILocation(line: 101, column: 9, scope: !38)
!132 = !DILocation(line: 103, column: 9, scope: !38)
!133 = !DILocation(line: 106, column: 5, scope: !38)
!134 = !DILocation(line: 107, column: 24, scope: !38)
!135 = !DILocation(line: 109, column: 10, scope: !136)
!136 = distinct !DILexicalBlock(scope: !38, file: !3, line: 109, column: 9)
!137 = !DILocation(line: 109, column: 48, scope: !136)
!138 = !DILocation(line: 111, column: 9, scope: !139)
!139 = distinct !DILexicalBlock(scope: !136, file: !3, line: 110, column: 5)
!140 = !DILocation(line: 112, column: 13, scope: !141)
!141 = distinct !DILexicalBlock(scope: !139, file: !3, line: 112, column: 13)
!142 = !DILocation(line: 112, column: 13, scope: !139)
!143 = !DILocation(line: 114, column: 17, scope: !144)
!144 = distinct !DILexicalBlock(scope: !139, file: !3, line: 114, column: 13)
!145 = !DILocation(line: 114, column: 13, scope: !139)
!146 = !DILocation(line: 116, column: 17, scope: !147)
!147 = distinct !DILexicalBlock(scope: !148, file: !3, line: 116, column: 17)
!148 = distinct !DILexicalBlock(scope: !144, file: !3, line: 115, column: 9)
!149 = !DILocation(line: 116, column: 20, scope: !147)
!150 = !DILocation(line: 116, column: 17, scope: !148)
!151 = !DILocation(line: 119, column: 21, scope: !152)
!152 = distinct !DILexicalBlock(scope: !147, file: !3, line: 117, column: 13)
!153 = !DILocation(line: 120, column: 17, scope: !152)
!154 = !DILocation(line: 121, column: 13, scope: !152)
!155 = !DILocation(line: 123, column: 21, scope: !147)
!156 = !DILocation(line: 127, column: 10, scope: !59)
!157 = !DILocation(line: 127, column: 9, scope: !38)
!158 = !DILocation(line: 130, column: 9, scope: !58)
!159 = !DILocation(line: 131, column: 20, scope: !58)
!160 = !DILocation(line: 131, column: 23, scope: !58)
!161 = !DILocation(line: 131, column: 27, scope: !58)
!162 = !DILocation(line: 131, column: 40, scope: !58)
!163 = !DILocation(line: 131, column: 45, scope: !58)
!164 = !DILocation(line: 131, column: 33, scope: !58)
!165 = !DILocation(line: 0, scope: !58)
!166 = !DILocation(line: 137, column: 19, scope: !167)
!167 = distinct !DILexicalBlock(scope: !58, file: !3, line: 137, column: 13)
!168 = !DILocation(line: 137, column: 23, scope: !167)
!169 = !DILocation(line: 132, column: 23, scope: !58)
!170 = !DILocation(line: 132, column: 27, scope: !58)
!171 = !DILocation(line: 132, column: 40, scope: !58)
!172 = !DILocation(line: 132, column: 45, scope: !58)
!173 = !DILocation(line: 132, column: 33, scope: !58)
!174 = !DILocation(line: 137, column: 36, scope: !167)
!175 = !DILocation(line: 139, column: 17, scope: !176)
!176 = distinct !DILexicalBlock(scope: !167, file: !3, line: 138, column: 9)
!177 = !DILocation(line: 140, column: 13, scope: !178)
!178 = distinct !DILexicalBlock(scope: !179, file: !3, line: 140, column: 13)
!179 = distinct !DILexicalBlock(scope: !176, file: !3, line: 140, column: 13)
!180 = !DILocation(line: 140, column: 13, scope: !179)
!181 = !DILocation(line: 144, column: 11, scope: !66)
!182 = !DILocation(line: 144, column: 49, scope: !66)
!183 = !DILocation(line: 144, column: 53, scope: !66)
!184 = !DILocation(line: 144, column: 92, scope: !66)
!185 = !DILocation(line: 144, column: 100, scope: !66)
!186 = !DILocation(line: 144, column: 9, scope: !38)
!187 = !DILocation(line: 147, column: 9, scope: !65)
!188 = !DILocation(line: 148, column: 18, scope: !65)
!189 = !DILocation(line: 148, column: 29, scope: !65)
!190 = !DILocation(line: 149, column: 14, scope: !191)
!191 = distinct !DILexicalBlock(scope: !65, file: !3, line: 149, column: 13)
!192 = !DILocation(line: 149, column: 20, scope: !191)
!193 = !DILocation(line: 151, column: 13, scope: !194)
!194 = distinct !DILexicalBlock(scope: !191, file: !3, line: 150, column: 9)
!195 = !DILocation(line: 152, column: 21, scope: !194)
!196 = !DILocation(line: 152, column: 24, scope: !194)
!197 = !DILocation(line: 153, column: 9, scope: !194)
!198 = !DILocation(line: 0, scope: !65)
!199 = !DILocation(line: 154, column: 14, scope: !64)
!200 = !DILocation(line: 154, column: 13, scope: !65)
!201 = !DILocation(line: 159, column: 13, scope: !63)
!202 = !DILocation(line: 159, column: 22, scope: !63)
!203 = !DILocation(line: 0, scope: !63)
!204 = !DILocation(line: 161, column: 13, scope: !63)
!205 = !DILocation(line: 152, column: 19, scope: !194)
!206 = !DILocation(line: 162, column: 17, scope: !207)
!207 = distinct !DILexicalBlock(scope: !63, file: !3, line: 161, column: 16)
!208 = !DILocation(line: 163, column: 23, scope: !207)
!209 = !DILocation(line: 164, column: 24, scope: !207)
!210 = !DILocation(line: 166, column: 25, scope: !211)
!211 = distinct !DILexicalBlock(scope: !212, file: !3, line: 165, column: 17)
!212 = distinct !DILexicalBlock(scope: !207, file: !3, line: 165, column: 17)
!213 = !DILocation(line: 169, column: 60, scope: !214)
!214 = distinct !DILexicalBlock(scope: !215, file: !3, line: 169, column: 33)
!215 = distinct !DILexicalBlock(scope: !216, file: !3, line: 168, column: 25)
!216 = distinct !DILexicalBlock(scope: !211, file: !3, line: 166, column: 25)
!217 = !DILocation(line: 169, column: 33, scope: !214)
!218 = !DILocation(line: 169, column: 33, scope: !215)
!219 = !DILocation(line: 171, column: 33, scope: !220)
!220 = distinct !DILexicalBlock(scope: !215, file: !3, line: 171, column: 33)
!221 = !DILocation(line: 171, column: 33, scope: !215)
!222 = !DILocation(line: 173, column: 36, scope: !215)
!223 = !DILocation(line: 167, column: 25, scope: !216)
!224 = distinct !{!224, !223, !225, !226}
!225 = !DILocation(line: 174, column: 25, scope: !216)
!226 = !{!"llvm.loop.mustprogress"}
!227 = !DILocation(line: 166, column: 27, scope: !216)
!228 = !DILocation(line: 163, column: 29, scope: !207)
!229 = !DILocation(line: 175, column: 22, scope: !63)
!230 = !DILocation(line: 175, column: 26, scope: !63)
!231 = !DILocation(line: 175, column: 13, scope: !207)
!232 = distinct !{!232, !204, !233, !226}
!233 = !DILocation(line: 175, column: 32, scope: !63)
!234 = !DILocation(line: 176, column: 9, scope: !64)
!235 = !DILocation(line: 176, column: 9, scope: !63)
!236 = !DILocation(line: 178, column: 13, scope: !65)
!237 = !DILocation(line: 179, column: 17, scope: !238)
!238 = distinct !DILexicalBlock(scope: !65, file: !3, line: 178, column: 13)
!239 = !DILocation(line: 179, column: 13, scope: !238)
!240 = !DILocation(line: 181, column: 17, scope: !241)
!241 = distinct !DILexicalBlock(scope: !238, file: !3, line: 180, column: 18)
!242 = !DILocation(line: 181, column: 13, scope: !241)
!243 = !DILocation(line: 183, column: 22, scope: !241)
!244 = !{!245, !245, i64 0}
!245 = !{!"any pointer", !112, i64 0}
!246 = !DILocation(line: 183, column: 13, scope: !241)
!247 = !DILocation(line: 191, column: 1, scope: !38)
!248 = !DISubprogram(name: "x264_cpu_cpuid", scope: !3, file: !3, line: 64, type: !249, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !252)
!249 = !DISubroutineType(types: !250)
!250 = !{!41, !41, !251, !251, !251, !251}
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!252 = !{}
!253 = !DISubprogram(name: "x264_cpu_mask_misalign_sse", scope: !86, file: !86, line: 27, type: !254, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !252)
!254 = !DISubroutineType(types: !255)
!255 = !{null}
!256 = !DISubprogram(name: "__assert_fail", scope: !257, file: !257, line: 69, type: !258, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !252)
!257 = !DIFile(filename: "/usr/include/assert.h", directory: "", checksumkind: CSK_MD5, checksum: "ab7dc6991d501750085448b20099a5a0")
!258 = !DISubroutineType(types: !259)
!259 = !{null, !260, !260, !43, !260}
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!261 = distinct !DISubprogram(name: "x264_cpu_num_processors", scope: !3, file: !3, line: 272, type: !262, scopeLine: 273, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !264)
!262 = !DISubroutineType(types: !263)
!263 = !{!55}
!264 = !{!265, !266, !267}
!265 = !DILocalVariable(name: "bit", scope: !261, file: !3, line: 281, type: !43)
!266 = !DILocalVariable(name: "np", scope: !261, file: !3, line: 282, type: !55)
!267 = !DILocalVariable(name: "p_aff", scope: !261, file: !3, line: 283, type: !268)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpu_set_t", file: !269, line: 42, baseType: !270)
!269 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/cpu-set.h", directory: "", checksumkind: CSK_MD5, checksum: "9b78eb5e247ecb71c5de90bcf65db505")
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !269, line: 39, size: 1024, elements: !271)
!271 = !{!272}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "__bits", scope: !270, file: !269, line: 41, baseType: !273, size: 1024)
!273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !274, size: 1024, elements: !91)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "__cpu_mask", file: !269, line: 32, baseType: !275)
!275 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!276 = !DILocation(line: 283, column: 5, scope: !261)
!277 = !DILocation(line: 283, column: 15, scope: !261)
!278 = !DILocation(line: 284, column: 5, scope: !261)
!279 = !DILocation(line: 285, column: 5, scope: !261)
!280 = !DILocation(line: 0, scope: !261)
!281 = !DILocation(line: 286, column: 5, scope: !282)
!282 = distinct !DILexicalBlock(scope: !261, file: !3, line: 286, column: 5)
!283 = !DILocation(line: 287, column: 40, scope: !284)
!284 = distinct !DILexicalBlock(scope: !282, file: !3, line: 286, column: 5)
!285 = !DILocation(line: 287, column: 16, scope: !284)
!286 = !{!112, !112, i64 0}
!287 = !DILocation(line: 287, column: 53, scope: !284)
!288 = !DILocation(line: 287, column: 59, scope: !284)
!289 = !DILocation(line: 287, column: 12, scope: !284)
!290 = !DILocation(line: 286, column: 51, scope: !284)
!291 = !DILocation(line: 286, column: 31, scope: !284)
!292 = distinct !{!292, !281, !293, !226}
!293 = !DILocation(line: 287, column: 61, scope: !282)
!294 = !DILocation(line: 307, column: 1, scope: !261)
!295 = !DILocation(line: 288, column: 5, scope: !261)
!296 = !DISubprogram(name: "sched_getaffinity", scope: !297, file: !297, line: 134, type: !298, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !252)
!297 = !DIFile(filename: "/usr/include/sched.h", directory: "", checksumkind: CSK_MD5, checksum: "52ea601aba54a9937a50019367077a72")
!298 = !DISubroutineType(types: !299)
!299 = !{!55, !300, !301, !303}
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !11, line: 154, baseType: !55)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !302, line: 46, baseType: !275)
!302 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
