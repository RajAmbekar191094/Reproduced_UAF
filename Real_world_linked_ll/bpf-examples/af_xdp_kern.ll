; ModuleID = 'af_xdp_kern.c'
source_filename = "af_xdp_kern.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "bpf"

%struct.anon.3 = type { ptr, ptr, ptr, ptr }
%struct.anon.4 = type { ptr, ptr, ptr, ptr }
%struct.xdp_md = type { i32, i32, i32, i32, i32, i32 }
%struct.xdp_hints_rx_time = type { i64, i32, i32 }
%struct.xdp_hints_mark = type { i32, i32 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.0 }
%union.anon.0 = type { [4 x i32] }
%struct.ipv6_opt_hdr = type { i8, i8 }
%struct.icmp6hdr = type { i8, i8, i16, %union.anon.2 }
%union.anon.2 = type { [1 x i32] }

@xdp_stats_map = dso_local global %struct.anon.3 zeroinitializer, section ".maps", align 8, !dbg !0
@xsks_map = dso_local global %struct.anon.4 zeroinitializer, section ".maps", align 8, !dbg !66
@_license = dso_local global [4 x i8] c"GPL\00", section "license", align 1, !dbg !61
@"llvm.btf_type_id.0$6" = external global i64, !llvm.preserve.access.index !135 #0
@"llvm.btf_type_id.1$6" = external global i64, !llvm.preserve.access.index !140 #0
@llvm.compiler.used = appending global [4 x ptr] [ptr @_license, ptr @xdp_sock_prog, ptr @xdp_stats_map, ptr @xsks_map], section "llvm.metadata"

; Function Attrs: nounwind
define dso_local i32 @meta_add_rx_time(ptr noundef %0) local_unnamed_addr #1 !dbg !149 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !153, metadata !DIExpression()), !dbg !158
  %2 = tail call i64 inttoptr (i64 54 to ptr)(ptr noundef %0, i32 noundef -16) #7, !dbg !159
  call void @llvm.dbg.value(metadata i64 %2, metadata !157, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !158
  %3 = and i64 %2, 4294967295, !dbg !160
  %4 = icmp eq i64 %3, 0, !dbg !160
  br i1 %4, label %5, label %23, !dbg !162

5:                                                ; preds = %1
  %6 = load i32, ptr %0, align 4, !dbg !163, !tbaa !164
  %7 = zext i32 %6 to i64, !dbg !169
  %8 = inttoptr i64 %7 to ptr, !dbg !170
  call void @llvm.dbg.value(metadata ptr %8, metadata !156, metadata !DIExpression()), !dbg !158
  %9 = getelementptr inbounds %struct.xdp_md, ptr %0, i64 0, i32 2, !dbg !171
  %10 = load i32, ptr %9, align 4, !dbg !171, !tbaa !172
  %11 = zext i32 %10 to i64, !dbg !173
  %12 = inttoptr i64 %11 to ptr, !dbg !174
  call void @llvm.dbg.value(metadata ptr %12, metadata !154, metadata !DIExpression()), !dbg !158
  %13 = getelementptr inbounds %struct.xdp_hints_rx_time, ptr %12, i64 1, !dbg !175
  %14 = icmp ugt ptr %13, %8, !dbg !177
  br i1 %14, label %23, label %15, !dbg !178

15:                                               ; preds = %5
  %16 = tail call i64 inttoptr (i64 5 to ptr)() #7, !dbg !179
  store i64 %16, ptr %12, align 4, !dbg !180, !tbaa !181
  %17 = tail call i32 inttoptr (i64 8 to ptr)() #7, !dbg !184
  %18 = getelementptr inbounds %struct.xdp_hints_rx_time, ptr %12, i64 0, i32 1, !dbg !185
  store i32 %17, ptr %18, align 4, !dbg !186, !tbaa !187
  %19 = load i64, ptr @"llvm.btf_type_id.0$6", align 8
  %20 = tail call i64 @llvm.bpf.passthrough.i64.i64(i32 0, i64 %19)
  %21 = trunc i64 %20 to i32, !dbg !188
  %22 = getelementptr inbounds %struct.xdp_hints_rx_time, ptr %12, i64 0, i32 2, !dbg !189
  store i32 %21, ptr %22, align 4, !dbg !190, !tbaa !191
  br label %23, !dbg !192

23:                                               ; preds = %5, %1, %15
  %24 = phi i32 [ 0, %15 ], [ -1, %1 ], [ -2, %5 ], !dbg !158
  ret i32 %24, !dbg !193
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind
define dso_local i32 @meta_add_mark(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 !dbg !194 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !198, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata i32 %1, metadata !199, metadata !DIExpression()), !dbg !204
  %3 = tail call i64 inttoptr (i64 54 to ptr)(ptr noundef %0, i32 noundef -8) #7, !dbg !205
  call void @llvm.dbg.value(metadata i64 %3, metadata !203, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !204
  %4 = and i64 %3, 4294967295, !dbg !206
  %5 = icmp eq i64 %4, 0, !dbg !206
  br i1 %5, label %6, label %21, !dbg !208

6:                                                ; preds = %2
  %7 = load i32, ptr %0, align 4, !dbg !209, !tbaa !164
  %8 = zext i32 %7 to i64, !dbg !210
  %9 = inttoptr i64 %8 to ptr, !dbg !211
  call void @llvm.dbg.value(metadata ptr %9, metadata !202, metadata !DIExpression()), !dbg !204
  %10 = getelementptr inbounds %struct.xdp_md, ptr %0, i64 0, i32 2, !dbg !212
  %11 = load i32, ptr %10, align 4, !dbg !212, !tbaa !172
  %12 = zext i32 %11 to i64, !dbg !213
  %13 = inttoptr i64 %12 to ptr, !dbg !214
  call void @llvm.dbg.value(metadata ptr %13, metadata !200, metadata !DIExpression()), !dbg !204
  %14 = getelementptr inbounds %struct.xdp_hints_mark, ptr %13, i64 1, !dbg !215
  %15 = icmp ugt ptr %14, %9, !dbg !217
  br i1 %15, label %21, label %16, !dbg !218

16:                                               ; preds = %6
  store i32 %1, ptr %13, align 4, !dbg !219, !tbaa !220
  %17 = load i64, ptr @"llvm.btf_type_id.1$6", align 8
  %18 = tail call i64 @llvm.bpf.passthrough.i64.i64(i32 1, i64 %17)
  %19 = trunc i64 %18 to i32, !dbg !222
  %20 = getelementptr inbounds %struct.xdp_hints_mark, ptr %13, i64 0, i32 1, !dbg !223
  store i32 %19, ptr %20, align 4, !dbg !224, !tbaa !225
  br label %21, !dbg !226

21:                                               ; preds = %6, %2, %16
  %22 = phi i32 [ 0, %16 ], [ -1, %2 ], [ -2, %6 ], !dbg !204
  ret i32 %22, !dbg !227
}

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none)
define dso_local i32 @parse_pkt__is_ARP_or_NDP(ptr nocapture noundef readonly %0) local_unnamed_addr #3 !dbg !228 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !230, metadata !DIExpression()), !dbg !347
  %2 = load i32, ptr %0, align 4, !dbg !348, !tbaa !164
  %3 = zext i32 %2 to i64, !dbg !349
  %4 = inttoptr i64 %3 to ptr, !dbg !350
  call void @llvm.dbg.value(metadata ptr %4, metadata !231, metadata !DIExpression()), !dbg !347
  %5 = getelementptr inbounds %struct.xdp_md, ptr %0, i64 0, i32 1, !dbg !351
  %6 = load i32, ptr %5, align 4, !dbg !351, !tbaa !352
  %7 = zext i32 %6 to i64, !dbg !353
  %8 = inttoptr i64 %7 to ptr, !dbg !354
  call void @llvm.dbg.value(metadata ptr %8, metadata !232, metadata !DIExpression()), !dbg !347
  call void @llvm.dbg.value(metadata ptr %4, metadata !233, metadata !DIExpression()), !dbg !347
  call void @llvm.dbg.value(metadata ptr undef, metadata !355, metadata !DIExpression()), !dbg !364
  call void @llvm.dbg.value(metadata ptr %8, metadata !362, metadata !DIExpression()), !dbg !364
  call void @llvm.dbg.value(metadata ptr undef, metadata !363, metadata !DIExpression()), !dbg !364
  call void @llvm.dbg.value(metadata ptr undef, metadata !366, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata ptr %8, metadata !376, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata ptr undef, metadata !377, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata ptr null, metadata !378, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata ptr %4, metadata !379, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata i32 14, metadata !380, metadata !DIExpression()), !dbg !389
  %9 = getelementptr i8, ptr %4, i64 14, !dbg !391
  %10 = icmp ugt ptr %9, %8, !dbg !393
  br i1 %10, label %138, label %11, !dbg !394

11:                                               ; preds = %1
  call void @llvm.dbg.value(metadata ptr %9, metadata !233, metadata !DIExpression()), !dbg !347
  call void @llvm.dbg.value(metadata ptr %9, metadata !381, metadata !DIExpression()), !dbg !389
  %12 = getelementptr inbounds %struct.ethhdr, ptr %4, i64 0, i32 2, !dbg !395
  call void @llvm.dbg.value(metadata i16 poison, metadata !387, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata i32 0, metadata !388, metadata !DIExpression()), !dbg !389
  %13 = load i16, ptr %12, align 1, !dbg !389, !tbaa !396
  call void @llvm.dbg.value(metadata i16 %13, metadata !387, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata i16 %13, metadata !398, metadata !DIExpression()), !dbg !403
  %14 = icmp eq i16 %13, 129, !dbg !409
  %15 = icmp eq i16 %13, -22392, !dbg !410
  %16 = tail call i1 @llvm.bpf.passthrough.i1.i1(i32 2, i1 %14)
  %17 = or i1 %15, %16, !dbg !410
  %18 = getelementptr i8, ptr %4, i64 18
  %19 = icmp ule ptr %18, %8
  %20 = select i1 %17, i1 %19, i1 false, !dbg !411
  br i1 %20, label %21, label %34, !dbg !411

21:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i16 poison, metadata !387, metadata !DIExpression()), !dbg !389
  %22 = getelementptr i8, ptr %4, i64 16, !dbg !412
  call void @llvm.dbg.value(metadata ptr %18, metadata !381, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata i32 1, metadata !388, metadata !DIExpression()), !dbg !389
  %23 = load i16, ptr %22, align 1, !dbg !389, !tbaa !396
  call void @llvm.dbg.value(metadata i16 %23, metadata !387, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata i16 %23, metadata !398, metadata !DIExpression()), !dbg !403
  %24 = icmp eq i16 %23, 129, !dbg !409
  %25 = icmp eq i16 %23, -22392, !dbg !410
  %26 = tail call i1 @llvm.bpf.passthrough.i1.i1(i32 2, i1 %24)
  %27 = or i1 %25, %26, !dbg !410
  %28 = getelementptr i8, ptr %4, i64 22
  %29 = icmp ule ptr %28, %8
  %30 = select i1 %27, i1 %29, i1 false, !dbg !411
  br i1 %30, label %31, label %34, !dbg !411

31:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i16 poison, metadata !387, metadata !DIExpression()), !dbg !389
  %32 = getelementptr i8, ptr %4, i64 20, !dbg !412
  call void @llvm.dbg.value(metadata ptr %28, metadata !381, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata i32 2, metadata !388, metadata !DIExpression()), !dbg !389
  %33 = load i16, ptr %32, align 1, !dbg !389, !tbaa !396
  call void @llvm.dbg.value(metadata i16 %33, metadata !387, metadata !DIExpression()), !dbg !389
  br label %34

34:                                               ; preds = %11, %21, %31
  %35 = phi ptr [ %9, %11 ], [ %18, %21 ], [ %28, %31 ], !dbg !389
  %36 = phi i16 [ %13, %11 ], [ %23, %21 ], [ %33, %31 ], !dbg !389
  call void @llvm.dbg.value(metadata ptr %35, metadata !233, metadata !DIExpression()), !dbg !347
  call void @llvm.dbg.value(metadata i16 %36, metadata !250, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !347
  switch i16 %36, label %137 [
    i16 1544, label %138
    i16 -8826, label %37
  ], !dbg !413

37:                                               ; preds = %34
  call void @llvm.dbg.value(metadata ptr undef, metadata !414, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata ptr %8, metadata !420, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata ptr undef, metadata !421, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata ptr %35, metadata !422, metadata !DIExpression()), !dbg !423
  %38 = getelementptr inbounds %struct.ipv6hdr, ptr %35, i64 1, !dbg !425
  %39 = icmp ugt ptr %38, %8, !dbg !427
  br i1 %39, label %138, label %40, !dbg !428

40:                                               ; preds = %37
  %41 = load i8, ptr %35, align 4, !dbg !429
  %42 = and i8 %41, -16, !dbg !431
  %43 = icmp ne i8 %42, 96, !dbg !431
  %44 = getelementptr inbounds %struct.ipv6hdr, ptr %35, i64 1, i32 1, i64 1
  %45 = icmp ugt ptr %44, %8
  %46 = select i1 %43, i1 true, i1 %45, !dbg !432
  call void @llvm.dbg.value(metadata ptr %38, metadata !233, metadata !DIExpression()), !dbg !347
  call void @llvm.dbg.value(metadata ptr undef, metadata !433, metadata !DIExpression()), !dbg !450
  call void @llvm.dbg.value(metadata ptr %8, metadata !438, metadata !DIExpression()), !dbg !450
  call void @llvm.dbg.value(metadata i32 0, metadata !440, metadata !DIExpression()), !dbg !452
  call void @llvm.dbg.value(metadata i8 poison, metadata !439, metadata !DIExpression()), !dbg !450
  call void @llvm.dbg.value(metadata ptr %38, metadata !442, metadata !DIExpression()), !dbg !453
  br i1 %46, label %138, label %47, !dbg !432

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.ipv6hdr, ptr %35, i64 0, i32 3, !dbg !454
  %49 = load i8, ptr %48, align 2, !dbg !454, !tbaa !455
  call void @llvm.dbg.value(metadata i8 %49, metadata !439, metadata !DIExpression()), !dbg !450
  switch i8 %49, label %125 [
    i8 0, label %51
    i8 60, label %51
    i8 43, label %51
    i8 -121, label %51
    i8 51, label %50
    i8 44, label %58
  ], !dbg !457

50:                                               ; preds = %47
  call void @llvm.dbg.value(metadata i8 poison, metadata !439, metadata !DIExpression()), !dbg !450
  br label %51, !dbg !458

51:                                               ; preds = %50, %47, %47, %47, %47
  %52 = phi i64 [ 2, %50 ], [ 3, %47 ], [ 3, %47 ], [ 3, %47 ], [ 3, %47 ]
  %53 = getelementptr inbounds %struct.ipv6hdr, ptr %35, i64 1, i32 1, !dbg !460
  %54 = load i8, ptr %53, align 1, !dbg !460, !tbaa !461
  %55 = zext i8 %54 to i64, !dbg !460
  %56 = shl nuw nsw i64 %55, %52, !dbg !460
  %57 = add nuw nsw i64 %56, 8, !dbg !460
  br label %58, !dbg !460

58:                                               ; preds = %51, %47
  %59 = phi i64 [ 8, %47 ], [ %57, %51 ]
  %60 = getelementptr inbounds i8, ptr %38, i64 %59, !dbg !460
  call void @llvm.dbg.value(metadata ptr %60, metadata !233, metadata !DIExpression()), !dbg !347
  call void @llvm.dbg.value(metadata i32 1, metadata !440, metadata !DIExpression()), !dbg !452
  call void @llvm.dbg.value(metadata i8 poison, metadata !439, metadata !DIExpression()), !dbg !450
  call void @llvm.dbg.value(metadata ptr %60, metadata !442, metadata !DIExpression()), !dbg !453
  %61 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %60, i64 1, !dbg !463
  %62 = icmp ugt ptr %61, %8, !dbg !465
  br i1 %62, label %138, label %63, !dbg !466

63:                                               ; preds = %58
  %64 = load i8, ptr %38, align 1, !dbg !460, !tbaa !467
  call void @llvm.dbg.value(metadata i8 %64, metadata !439, metadata !DIExpression()), !dbg !450
  switch i8 %64, label %125 [
    i8 0, label %65
    i8 60, label %65
    i8 43, label %65
    i8 -121, label %65
    i8 51, label %66
    i8 44, label %73
  ], !dbg !457

65:                                               ; preds = %63, %63, %63, %63
  call void @llvm.dbg.value(metadata i8 poison, metadata !439, metadata !DIExpression()), !dbg !450
  br label %66, !dbg !468

66:                                               ; preds = %65, %63
  %67 = phi i64 [ 3, %65 ], [ 2, %63 ]
  %68 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %60, i64 0, i32 1, !dbg !460
  %69 = load i8, ptr %68, align 1, !dbg !460, !tbaa !461
  %70 = zext i8 %69 to i64, !dbg !460
  %71 = shl nuw nsw i64 %70, %67, !dbg !460
  %72 = add nuw nsw i64 %71, 8, !dbg !460
  br label %73, !dbg !460

73:                                               ; preds = %66, %63
  %74 = phi i64 [ 8, %63 ], [ %72, %66 ]
  %75 = getelementptr inbounds i8, ptr %60, i64 %74, !dbg !460
  call void @llvm.dbg.value(metadata ptr %75, metadata !233, metadata !DIExpression()), !dbg !347
  call void @llvm.dbg.value(metadata i32 2, metadata !440, metadata !DIExpression()), !dbg !452
  call void @llvm.dbg.value(metadata i8 poison, metadata !439, metadata !DIExpression()), !dbg !450
  call void @llvm.dbg.value(metadata ptr %75, metadata !442, metadata !DIExpression()), !dbg !453
  %76 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %75, i64 1, !dbg !463
  %77 = icmp ugt ptr %76, %8, !dbg !465
  br i1 %77, label %138, label %78, !dbg !466

78:                                               ; preds = %73
  %79 = load i8, ptr %60, align 1, !dbg !460, !tbaa !467
  call void @llvm.dbg.value(metadata i8 %79, metadata !439, metadata !DIExpression()), !dbg !450
  switch i8 %79, label %125 [
    i8 0, label %80
    i8 60, label %80
    i8 43, label %80
    i8 -121, label %80
    i8 51, label %81
    i8 44, label %88
  ], !dbg !457

80:                                               ; preds = %78, %78, %78, %78
  call void @llvm.dbg.value(metadata i8 poison, metadata !439, metadata !DIExpression()), !dbg !450
  br label %81, !dbg !468

81:                                               ; preds = %80, %78
  %82 = phi i64 [ 3, %80 ], [ 2, %78 ]
  %83 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %75, i64 0, i32 1, !dbg !460
  %84 = load i8, ptr %83, align 1, !dbg !460, !tbaa !461
  %85 = zext i8 %84 to i64, !dbg !460
  %86 = shl nuw nsw i64 %85, %82, !dbg !460
  %87 = add nuw nsw i64 %86, 8, !dbg !460
  br label %88, !dbg !460

88:                                               ; preds = %81, %78
  %89 = phi i64 [ 8, %78 ], [ %87, %81 ]
  %90 = getelementptr inbounds i8, ptr %75, i64 %89, !dbg !460
  call void @llvm.dbg.value(metadata ptr %90, metadata !233, metadata !DIExpression()), !dbg !347
  call void @llvm.dbg.value(metadata i32 3, metadata !440, metadata !DIExpression()), !dbg !452
  call void @llvm.dbg.value(metadata i8 poison, metadata !439, metadata !DIExpression()), !dbg !450
  call void @llvm.dbg.value(metadata ptr %90, metadata !442, metadata !DIExpression()), !dbg !453
  %91 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %90, i64 1, !dbg !463
  %92 = icmp ugt ptr %91, %8, !dbg !465
  br i1 %92, label %138, label %93, !dbg !466

93:                                               ; preds = %88
  %94 = load i8, ptr %75, align 1, !dbg !460, !tbaa !467
  call void @llvm.dbg.value(metadata i8 %94, metadata !439, metadata !DIExpression()), !dbg !450
  switch i8 %94, label %125 [
    i8 0, label %95
    i8 60, label %95
    i8 43, label %95
    i8 -121, label %95
    i8 51, label %96
    i8 44, label %103
  ], !dbg !457

95:                                               ; preds = %93, %93, %93, %93
  call void @llvm.dbg.value(metadata i8 poison, metadata !439, metadata !DIExpression()), !dbg !450
  br label %96, !dbg !468

96:                                               ; preds = %95, %93
  %97 = phi i64 [ 3, %95 ], [ 2, %93 ]
  %98 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %90, i64 0, i32 1, !dbg !460
  %99 = load i8, ptr %98, align 1, !dbg !460, !tbaa !461
  %100 = zext i8 %99 to i64, !dbg !460
  %101 = shl nuw nsw i64 %100, %97, !dbg !460
  %102 = add nuw nsw i64 %101, 8, !dbg !460
  br label %103, !dbg !460

103:                                              ; preds = %96, %93
  %104 = phi i64 [ 8, %93 ], [ %102, %96 ]
  %105 = getelementptr inbounds i8, ptr %90, i64 %104, !dbg !460
  call void @llvm.dbg.value(metadata ptr %105, metadata !233, metadata !DIExpression()), !dbg !347
  call void @llvm.dbg.value(metadata i32 4, metadata !440, metadata !DIExpression()), !dbg !452
  call void @llvm.dbg.value(metadata i8 poison, metadata !439, metadata !DIExpression()), !dbg !450
  call void @llvm.dbg.value(metadata ptr %105, metadata !442, metadata !DIExpression()), !dbg !453
  %106 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %105, i64 1, !dbg !463
  %107 = icmp ugt ptr %106, %8, !dbg !465
  br i1 %107, label %138, label %108, !dbg !466

108:                                              ; preds = %103
  %109 = load i8, ptr %90, align 1, !dbg !460, !tbaa !467
  call void @llvm.dbg.value(metadata i8 %109, metadata !439, metadata !DIExpression()), !dbg !450
  switch i8 %109, label %125 [
    i8 0, label %110
    i8 60, label %110
    i8 43, label %110
    i8 -121, label %110
    i8 51, label %111
    i8 44, label %118
  ], !dbg !457

110:                                              ; preds = %108, %108, %108, %108
  call void @llvm.dbg.value(metadata i8 poison, metadata !439, metadata !DIExpression()), !dbg !450
  br label %111, !dbg !468

111:                                              ; preds = %110, %108
  %112 = phi i64 [ 3, %110 ], [ 2, %108 ]
  %113 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %105, i64 0, i32 1, !dbg !460
  %114 = load i8, ptr %113, align 1, !dbg !460, !tbaa !461
  %115 = zext i8 %114 to i64, !dbg !460
  %116 = shl nuw nsw i64 %115, %112, !dbg !460
  %117 = add nuw nsw i64 %116, 8, !dbg !460
  br label %118, !dbg !460

118:                                              ; preds = %111, %108
  %119 = phi i64 [ 8, %108 ], [ %117, %111 ]
  %120 = getelementptr inbounds i8, ptr %105, i64 %119, !dbg !460
  call void @llvm.dbg.value(metadata ptr %120, metadata !233, metadata !DIExpression()), !dbg !347
  call void @llvm.dbg.value(metadata i32 5, metadata !440, metadata !DIExpression()), !dbg !452
  call void @llvm.dbg.value(metadata i8 poison, metadata !439, metadata !DIExpression()), !dbg !450
  call void @llvm.dbg.value(metadata ptr %120, metadata !442, metadata !DIExpression()), !dbg !453
  %121 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %120, i64 1, !dbg !463
  %122 = icmp ugt ptr %121, %8, !dbg !465
  br i1 %122, label %138, label %123, !dbg !466

123:                                              ; preds = %118
  %124 = load i8, ptr %105, align 1, !dbg !460, !tbaa !467
  call void @llvm.dbg.value(metadata i8 %124, metadata !439, metadata !DIExpression()), !dbg !450
  switch i8 %124, label %125 [
    i8 0, label %138
    i8 60, label %138
    i8 43, label %138
    i8 -121, label %138
    i8 51, label %138
    i8 44, label %138
  ], !dbg !457

125:                                              ; preds = %47, %63, %78, %93, %108, %123
  %126 = phi ptr [ %38, %47 ], [ %60, %63 ], [ %75, %78 ], [ %90, %93 ], [ %105, %108 ], [ %120, %123 ], !dbg !423
  %127 = phi i8 [ %49, %47 ], [ %64, %63 ], [ %79, %78 ], [ %94, %93 ], [ %109, %108 ], [ %124, %123 ]
  call void @llvm.dbg.value(metadata ptr %126, metadata !233, metadata !DIExpression()), !dbg !347
  call void @llvm.dbg.value(metadata i8 %127, metadata !298, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !469
  %128 = icmp eq i8 %127, 58, !dbg !470
  br i1 %128, label %129, label %137, !dbg !471

129:                                              ; preds = %125
  call void @llvm.dbg.value(metadata ptr undef, metadata !472, metadata !DIExpression()), !dbg !481
  call void @llvm.dbg.value(metadata ptr %8, metadata !478, metadata !DIExpression()), !dbg !481
  call void @llvm.dbg.value(metadata ptr undef, metadata !479, metadata !DIExpression()), !dbg !481
  call void @llvm.dbg.value(metadata ptr %126, metadata !480, metadata !DIExpression()), !dbg !481
  %130 = getelementptr inbounds %struct.icmp6hdr, ptr %126, i64 1, !dbg !483
  %131 = icmp ugt ptr %130, %8, !dbg !485
  br i1 %131, label %138, label %132, !dbg !486

132:                                              ; preds = %129
  call void @llvm.dbg.value(metadata ptr %130, metadata !233, metadata !DIExpression()), !dbg !347
  %133 = load i8, ptr %126, align 4, !dbg !487, !tbaa !488
  %134 = zext i8 %133 to i32, !dbg !490
  call void @llvm.dbg.value(metadata i32 %134, metadata !346, metadata !DIExpression()), !dbg !491
  %135 = add nsw i32 %134, -138, !dbg !492
  %136 = icmp ult i32 %135, -5, !dbg !492
  br i1 %136, label %137, label %138

137:                                              ; preds = %132, %125, %34
  br label %138, !dbg !494

138:                                              ; preds = %129, %123, %123, %123, %123, %123, %123, %58, %73, %88, %103, %118, %40, %37, %132, %1, %34, %137
  %139 = phi i32 [ 0, %137 ], [ 1, %34 ], [ -1, %1 ], [ 1, %132 ], [ -1, %37 ], [ -1, %40 ], [ -1, %118 ], [ -1, %103 ], [ -1, %88 ], [ -1, %73 ], [ -1, %58 ], [ -1, %123 ], [ -1, %123 ], [ -1, %123 ], [ -1, %123 ], [ -1, %123 ], [ -1, %123 ], [ -1, %129 ], !dbg !347
  ret i32 %139, !dbg !495
}

; Function Attrs: nounwind
define dso_local i32 @xdp_sock_prog(ptr noundef %0) #1 section "xdp_sock" !dbg !496 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !498, metadata !DIExpression()), !dbg !504
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7, !dbg !505
  %3 = getelementptr inbounds %struct.xdp_md, ptr %0, i64 0, i32 4, !dbg !506
  %4 = load i32, ptr %3, align 4, !dbg !506, !tbaa !507
  call void @llvm.dbg.value(metadata i32 %4, metadata !499, metadata !DIExpression()), !dbg !504
  store i32 %4, ptr %2, align 4, !dbg !508, !tbaa !509
  call void @llvm.dbg.value(metadata ptr %2, metadata !499, metadata !DIExpression(DW_OP_deref)), !dbg !504
  %5 = call ptr inttoptr (i64 1 to ptr)(ptr noundef nonnull @xdp_stats_map, ptr noundef nonnull %2) #7, !dbg !510
  call void @llvm.dbg.value(metadata ptr %5, metadata !500, metadata !DIExpression()), !dbg !504
  %6 = icmp eq ptr %5, null, !dbg !511
  br i1 %6, label %65, label %7, !dbg !513

7:                                                ; preds = %1
  %8 = load i32, ptr %5, align 4, !dbg !514, !tbaa !509
  %9 = add i32 %8, 1, !dbg !514
  store i32 %9, ptr %5, align 4, !dbg !514, !tbaa !509
  call void @llvm.dbg.value(metadata i32 %8, metadata !503, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !504
  %10 = and i32 %8, 1, !dbg !515
  %11 = icmp eq i32 %10, 0, !dbg !517
  br i1 %11, label %12, label %34, !dbg !518

12:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %0, metadata !153, metadata !DIExpression()), !dbg !519
  %13 = call i64 inttoptr (i64 54 to ptr)(ptr noundef nonnull %0, i32 noundef -16) #7, !dbg !522
  call void @llvm.dbg.value(metadata i64 %13, metadata !157, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !519
  %14 = and i64 %13, 4294967295, !dbg !523
  %15 = icmp eq i64 %14, 0, !dbg !523
  br i1 %15, label %16, label %65, !dbg !524

16:                                               ; preds = %12
  %17 = load i32, ptr %0, align 4, !dbg !525, !tbaa !164
  %18 = zext i32 %17 to i64, !dbg !526
  %19 = inttoptr i64 %18 to ptr, !dbg !527
  call void @llvm.dbg.value(metadata ptr %19, metadata !156, metadata !DIExpression()), !dbg !519
  %20 = getelementptr inbounds %struct.xdp_md, ptr %0, i64 0, i32 2, !dbg !528
  %21 = load i32, ptr %20, align 4, !dbg !528, !tbaa !172
  %22 = zext i32 %21 to i64, !dbg !529
  %23 = inttoptr i64 %22 to ptr, !dbg !530
  call void @llvm.dbg.value(metadata ptr %23, metadata !154, metadata !DIExpression()), !dbg !519
  %24 = getelementptr inbounds %struct.xdp_hints_rx_time, ptr %23, i64 1, !dbg !531
  %25 = icmp ugt ptr %24, %19, !dbg !532
  br i1 %25, label %65, label %26, !dbg !533

26:                                               ; preds = %16
  %27 = call i64 inttoptr (i64 5 to ptr)() #7, !dbg !534
  store i64 %27, ptr %23, align 4, !dbg !535, !tbaa !181
  %28 = call i32 inttoptr (i64 8 to ptr)() #7, !dbg !536
  %29 = getelementptr inbounds %struct.xdp_hints_rx_time, ptr %23, i64 0, i32 1, !dbg !537
  store i32 %28, ptr %29, align 4, !dbg !538, !tbaa !187
  %30 = load i64, ptr @"llvm.btf_type_id.0$6", align 8
  %31 = call i64 @llvm.bpf.passthrough.i64.i64(i32 0, i64 %30)
  %32 = trunc i64 %31 to i32, !dbg !539
  %33 = getelementptr inbounds %struct.xdp_hints_rx_time, ptr %23, i64 0, i32 2, !dbg !540
  store i32 %32, ptr %33, align 4, !dbg !541, !tbaa !191
  call void @llvm.dbg.value(metadata i32 0, metadata !501, metadata !DIExpression()), !dbg !504
  br label %53, !dbg !542

34:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %0, metadata !198, metadata !DIExpression()), !dbg !543
  call void @llvm.dbg.value(metadata i32 42, metadata !199, metadata !DIExpression()), !dbg !543
  %35 = call i64 inttoptr (i64 54 to ptr)(ptr noundef nonnull %0, i32 noundef -8) #7, !dbg !546
  call void @llvm.dbg.value(metadata i64 %35, metadata !203, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !543
  %36 = and i64 %35, 4294967295, !dbg !547
  %37 = icmp eq i64 %36, 0, !dbg !547
  br i1 %37, label %38, label %65, !dbg !548

38:                                               ; preds = %34
  %39 = load i32, ptr %0, align 4, !dbg !549, !tbaa !164
  %40 = zext i32 %39 to i64, !dbg !550
  %41 = inttoptr i64 %40 to ptr, !dbg !551
  call void @llvm.dbg.value(metadata ptr %41, metadata !202, metadata !DIExpression()), !dbg !543
  %42 = getelementptr inbounds %struct.xdp_md, ptr %0, i64 0, i32 2, !dbg !552
  %43 = load i32, ptr %42, align 4, !dbg !552, !tbaa !172
  %44 = zext i32 %43 to i64, !dbg !553
  %45 = inttoptr i64 %44 to ptr, !dbg !554
  call void @llvm.dbg.value(metadata ptr %45, metadata !200, metadata !DIExpression()), !dbg !543
  %46 = getelementptr inbounds %struct.xdp_hints_mark, ptr %45, i64 1, !dbg !555
  %47 = icmp ugt ptr %46, %41, !dbg !556
  br i1 %47, label %65, label %48, !dbg !557

48:                                               ; preds = %38
  store i32 42, ptr %45, align 4, !dbg !558, !tbaa !220
  %49 = load i64, ptr @"llvm.btf_type_id.1$6", align 8
  %50 = call i64 @llvm.bpf.passthrough.i64.i64(i32 1, i64 %49)
  %51 = trunc i64 %50 to i32, !dbg !559
  %52 = getelementptr inbounds %struct.xdp_hints_mark, ptr %45, i64 0, i32 1, !dbg !560
  store i32 %51, ptr %52, align 4, !dbg !561, !tbaa !225
  call void @llvm.dbg.value(metadata i32 0, metadata !501, metadata !DIExpression()), !dbg !504
  br label %53, !dbg !562

53:                                               ; preds = %48, %26
  %54 = call i32 @parse_pkt__is_ARP_or_NDP(ptr noundef nonnull %0), !dbg !563
  call void @llvm.dbg.value(metadata i32 %54, metadata !502, metadata !DIExpression()), !dbg !504
  %55 = icmp slt i32 %54, 0, !dbg !564
  br i1 %55, label %65, label %56, !dbg !566

56:                                               ; preds = %53
  %57 = icmp eq i32 %54, 1, !dbg !567
  br i1 %57, label %65, label %58, !dbg !569

58:                                               ; preds = %56
  call void @llvm.dbg.value(metadata ptr %2, metadata !499, metadata !DIExpression(DW_OP_deref)), !dbg !504
  %59 = call ptr inttoptr (i64 1 to ptr)(ptr noundef nonnull @xsks_map, ptr noundef nonnull %2) #7, !dbg !570
  %60 = icmp eq ptr %59, null, !dbg !570
  br i1 %60, label %65, label %61, !dbg !572

61:                                               ; preds = %58
  %62 = load i32, ptr %2, align 4, !dbg !573, !tbaa !509
  call void @llvm.dbg.value(metadata i32 %62, metadata !499, metadata !DIExpression()), !dbg !504
  %63 = call i64 inttoptr (i64 51 to ptr)(ptr noundef nonnull @xsks_map, i32 noundef %62, i64 noundef 0) #7, !dbg !574
  %64 = trunc i64 %63 to i32, !dbg !574
  br label %65, !dbg !575

65:                                               ; preds = %38, %34, %16, %12, %61, %53, %56, %58, %1
  %66 = phi i32 [ 0, %1 ], [ %64, %61 ], [ 0, %53 ], [ 2, %56 ], [ 2, %58 ], [ 0, %12 ], [ 0, %16 ], [ 1, %34 ], [ 1, %38 ], !dbg !504
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7, !dbg !576
  ret i32 %66, !dbg !576
}

; Function Attrs: nofree nosync nounwind memory(none)
declare i64 @llvm.bpf.passthrough.i64.i64(i32, i64) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

; Function Attrs: nounwind memory(none)
declare i1 @llvm.bpf.passthrough.i1.i1(i32, i1) #6

attributes #0 = { "btf_type_id" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree nounwind memory(read, inaccessiblemem: none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #4 = { nofree nosync nounwind memory(none) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind memory(none) }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!144, !145, !146, !147}
!llvm.ident = !{!148}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "xdp_stats_map", scope: !2, file: !3, line: 24, type: !124, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 16.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !50, globals: !60, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "af_xdp_kern.c", directory: "/home/raj/bpf-examples/AF_XDP-interaction", checksumkind: CSK_MD5, checksum: "52edcc469fa04893c3967929f48f5226")
!4 = !{!5, !11, !19}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "bpf_type_id_kind", file: !6, line: 23, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "../lib/libbpf-install/usr/include/bpf/bpf_core_read.h", directory: "/home/raj/bpf-examples/AF_XDP-interaction", checksumkind: CSK_MD5, checksum: "3f41fbd6626a5a6eb5da512ae52117e7")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "BPF_TYPE_ID_LOCAL", value: 0)
!10 = !DIEnumerator(name: "BPF_TYPE_ID_TARGET", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "xdp_action", file: !12, line: 4363, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "../lib/../headers/linux/bpf.h", directory: "/home/raj/bpf-examples/AF_XDP-interaction", checksumkind: CSK_MD5, checksum: "686704d11802f5f210143bc29244c61a")
!13 = !{!14, !15, !16, !17, !18}
!14 = !DIEnumerator(name: "XDP_ABORTED", value: 0)
!15 = !DIEnumerator(name: "XDP_DROP", value: 1)
!16 = !DIEnumerator(name: "XDP_PASS", value: 2)
!17 = !DIEnumerator(name: "XDP_TX", value: 3)
!18 = !DIEnumerator(name: "XDP_REDIRECT", value: 4)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !20, line: 28, baseType: !7, size: 32, elements: !21)
!20 = !DIFile(filename: "/usr/include/linux/in.h", directory: "", checksumkind: CSK_MD5, checksum: "078a32220dc819f6a7e2ea3cecc4e133")
!21 = !{!22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49}
!22 = !DIEnumerator(name: "IPPROTO_IP", value: 0)
!23 = !DIEnumerator(name: "IPPROTO_ICMP", value: 1)
!24 = !DIEnumerator(name: "IPPROTO_IGMP", value: 2)
!25 = !DIEnumerator(name: "IPPROTO_IPIP", value: 4)
!26 = !DIEnumerator(name: "IPPROTO_TCP", value: 6)
!27 = !DIEnumerator(name: "IPPROTO_EGP", value: 8)
!28 = !DIEnumerator(name: "IPPROTO_PUP", value: 12)
!29 = !DIEnumerator(name: "IPPROTO_UDP", value: 17)
!30 = !DIEnumerator(name: "IPPROTO_IDP", value: 22)
!31 = !DIEnumerator(name: "IPPROTO_TP", value: 29)
!32 = !DIEnumerator(name: "IPPROTO_DCCP", value: 33)
!33 = !DIEnumerator(name: "IPPROTO_IPV6", value: 41)
!34 = !DIEnumerator(name: "IPPROTO_RSVP", value: 46)
!35 = !DIEnumerator(name: "IPPROTO_GRE", value: 47)
!36 = !DIEnumerator(name: "IPPROTO_ESP", value: 50)
!37 = !DIEnumerator(name: "IPPROTO_AH", value: 51)
!38 = !DIEnumerator(name: "IPPROTO_MTP", value: 92)
!39 = !DIEnumerator(name: "IPPROTO_BEETPH", value: 94)
!40 = !DIEnumerator(name: "IPPROTO_ENCAP", value: 98)
!41 = !DIEnumerator(name: "IPPROTO_PIM", value: 103)
!42 = !DIEnumerator(name: "IPPROTO_COMP", value: 108)
!43 = !DIEnumerator(name: "IPPROTO_SCTP", value: 132)
!44 = !DIEnumerator(name: "IPPROTO_UDPLITE", value: 136)
!45 = !DIEnumerator(name: "IPPROTO_MPLS", value: 137)
!46 = !DIEnumerator(name: "IPPROTO_ETHERNET", value: 143)
!47 = !DIEnumerator(name: "IPPROTO_RAW", value: 255)
!48 = !DIEnumerator(name: "IPPROTO_MPTCP", value: 262)
!49 = !DIEnumerator(name: "IPPROTO_MAX", value: 263)
!50 = !{!51, !52, !53, !54, !55, !58}
!51 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!53 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!54 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !56, line: 24, baseType: !57)
!56 = !DIFile(filename: "/usr/include/asm-generic/int-ll64.h", directory: "", checksumkind: CSK_MD5, checksum: "b810f270733e106319b67ef512c6246e")
!57 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!60 = !{!61, !66, !0, !84, !100, !107, !112, !119}
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(name: "_license", scope: !2, file: !3, line: 193, type: !63, isLocal: false, isDefinition: true)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 32, elements: !64)
!64 = !{!65}
!65 = !DISubrange(count: 4)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(name: "xsks_map", scope: !2, file: !3, line: 17, type: !68, isLocal: false, isDefinition: true)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 12, size: 256, elements: !69)
!69 = !{!70, !75, !80, !83}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !68, file: !3, line: 13, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 544, elements: !73)
!73 = !{!74}
!74 = !DISubrange(count: 17)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "max_entries", scope: !68, file: !3, line: 14, baseType: !76, size: 64, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 2048, elements: !78)
!78 = !{!79}
!79 = !DISubrange(count: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "key_size", scope: !68, file: !3, line: 15, baseType: !81, size: 64, offset: 128)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 128, elements: !64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "value_size", scope: !68, file: !3, line: 16, baseType: !81, size: 64, offset: 192)
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression())
!85 = distinct !DIGlobalVariable(name: "bpf_xdp_adjust_meta", scope: !2, file: !86, line: 1367, type: !87, isLocal: true, isDefinition: true)
!86 = !DIFile(filename: "../lib/libbpf-install/usr/include/bpf/bpf_helper_defs.h", directory: "/home/raj/bpf-examples/AF_XDP-interaction", checksumkind: CSK_MD5, checksum: "52f02fca464a4053efa2721be82f1a3e")
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DISubroutineType(types: !89)
!89 = !{!54, !90, !51}
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xdp_md", file: !12, line: 4374, size: 192, elements: !92)
!92 = !{!93, !95, !96, !97, !98, !99}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !91, file: !12, line: 4375, baseType: !94, size: 32)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !56, line: 27, baseType: !7)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "data_end", scope: !91, file: !12, line: 4376, baseType: !94, size: 32, offset: 32)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "data_meta", scope: !91, file: !12, line: 4377, baseType: !94, size: 32, offset: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "ingress_ifindex", scope: !91, file: !12, line: 4379, baseType: !94, size: 32, offset: 96)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "rx_queue_index", scope: !91, file: !12, line: 4380, baseType: !94, size: 32, offset: 128)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "egress_ifindex", scope: !91, file: !12, line: 4382, baseType: !94, size: 32, offset: 160)
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(name: "bpf_ktime_get_ns", scope: !2, file: !86, line: 109, type: !102, isLocal: true, isDefinition: true)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DISubroutineType(types: !104)
!104 = !{!105}
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !56, line: 31, baseType: !106)
!106 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(name: "bpf_get_smp_processor_id", scope: !2, file: !86, line: 201, type: !109, isLocal: true, isDefinition: true)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DISubroutineType(types: !111)
!111 = !{!94}
!112 = !DIGlobalVariableExpression(var: !113, expr: !DIExpression())
!113 = distinct !DIGlobalVariable(name: "bpf_map_lookup_elem", scope: !2, file: !86, line: 51, type: !114, isLocal: true, isDefinition: true)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DISubroutineType(types: !116)
!116 = !{!52, !52, !117}
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(name: "bpf_redirect_map", scope: !2, file: !86, line: 1296, type: !121, isLocal: true, isDefinition: true)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DISubroutineType(types: !123)
!123 = !{!54, !52, !94, !105}
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 19, size: 256, elements: !125)
!125 = !{!126, !131, !133, !134}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !124, file: !3, line: 20, baseType: !127, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 192, elements: !129)
!129 = !{!130}
!130 = !DISubrange(count: 6)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !124, file: !3, line: 21, baseType: !132, size: 64, offset: 64)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !124, file: !3, line: 22, baseType: !132, size: 64, offset: 128)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "max_entries", scope: !124, file: !3, line: 23, baseType: !76, size: 64, offset: 192)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xdp_hints_rx_time", file: !3, line: 47, size: 128, align: 32, elements: !136)
!136 = !{!137, !138, !139}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "rx_ktime", scope: !135, file: !3, line: 48, baseType: !105, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "xdp_rx_cpu", scope: !135, file: !3, line: 49, baseType: !94, size: 32, offset: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "btf_id", scope: !135, file: !3, line: 50, baseType: !94, size: 32, offset: 96)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xdp_hints_mark", file: !3, line: 42, size: 64, align: 32, elements: !141)
!141 = !{!142, !143}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "mark", scope: !140, file: !3, line: 43, baseType: !94, size: 32)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "btf_id", scope: !140, file: !3, line: 44, baseType: !94, size: 32, offset: 32)
!144 = !{i32 7, !"Dwarf Version", i32 5}
!145 = !{i32 2, !"Debug Info Version", i32 3}
!146 = !{i32 1, !"wchar_size", i32 4}
!147 = !{i32 7, !"frame-pointer", i32 2}
!148 = !{!"clang version 16.0.0"}
!149 = distinct !DISubprogram(name: "meta_add_rx_time", scope: !3, file: !3, line: 53, type: !150, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !152)
!150 = !DISubroutineType(types: !151)
!151 = !{!51, !90}
!152 = !{!153, !154, !156, !157}
!153 = !DILocalVariable(name: "ctx", arg: 1, scope: !149, file: !3, line: 53, type: !90)
!154 = !DILocalVariable(name: "meta", scope: !149, file: !3, line: 55, type: !155)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!156 = !DILocalVariable(name: "data", scope: !149, file: !3, line: 56, type: !52)
!157 = !DILocalVariable(name: "err", scope: !149, file: !3, line: 57, type: !51)
!158 = !DILocation(line: 0, scope: !149)
!159 = !DILocation(line: 62, column: 8, scope: !149)
!160 = !DILocation(line: 63, column: 6, scope: !161)
!161 = distinct !DILexicalBlock(scope: !149, file: !3, line: 63, column: 6)
!162 = !DILocation(line: 63, column: 6, scope: !149)
!163 = !DILocation(line: 71, column: 37, scope: !149)
!164 = !{!165, !166, i64 0}
!165 = !{!"xdp_md", !166, i64 0, !166, i64 4, !166, i64 8, !166, i64 12, !166, i64 16, !166, i64 20}
!166 = !{!"int", !167, i64 0}
!167 = !{!"omnipotent char", !168, i64 0}
!168 = !{!"Simple C/C++ TBAA"}
!169 = !DILocation(line: 71, column: 17, scope: !149)
!170 = !DILocation(line: 71, column: 9, scope: !149)
!171 = !DILocation(line: 73, column: 37, scope: !149)
!172 = !{!165, !166, i64 8}
!173 = !DILocation(line: 73, column: 17, scope: !149)
!174 = !DILocation(line: 73, column: 9, scope: !149)
!175 = !DILocation(line: 74, column: 11, scope: !176)
!176 = distinct !DILexicalBlock(scope: !149, file: !3, line: 74, column: 6)
!177 = !DILocation(line: 74, column: 15, scope: !176)
!178 = !DILocation(line: 74, column: 6, scope: !149)
!179 = !DILocation(line: 77, column: 19, scope: !149)
!180 = !DILocation(line: 77, column: 17, scope: !149)
!181 = !{!182, !183, i64 0}
!182 = !{!"xdp_hints_rx_time", !183, i64 0, !166, i64 8, !166, i64 12}
!183 = !{!"long long", !167, i64 0}
!184 = !DILocation(line: 78, column: 21, scope: !149)
!185 = !DILocation(line: 78, column: 8, scope: !149)
!186 = !DILocation(line: 78, column: 19, scope: !149)
!187 = !{!182, !166, i64 8}
!188 = !DILocation(line: 80, column: 17, scope: !149)
!189 = !DILocation(line: 80, column: 8, scope: !149)
!190 = !DILocation(line: 80, column: 15, scope: !149)
!191 = !{!182, !166, i64 12}
!192 = !DILocation(line: 82, column: 2, scope: !149)
!193 = !DILocation(line: 83, column: 1, scope: !149)
!194 = distinct !DISubprogram(name: "meta_add_mark", scope: !3, file: !3, line: 85, type: !195, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !197)
!195 = !DISubroutineType(types: !196)
!196 = !{!51, !90, !94}
!197 = !{!198, !199, !200, !202, !203}
!198 = !DILocalVariable(name: "ctx", arg: 1, scope: !194, file: !3, line: 85, type: !90)
!199 = !DILocalVariable(name: "mark", arg: 2, scope: !194, file: !3, line: 85, type: !94)
!200 = !DILocalVariable(name: "meta", scope: !194, file: !3, line: 87, type: !201)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!202 = !DILocalVariable(name: "data", scope: !194, file: !3, line: 88, type: !52)
!203 = !DILocalVariable(name: "err", scope: !194, file: !3, line: 89, type: !51)
!204 = !DILocation(line: 0, scope: !194)
!205 = !DILocation(line: 92, column: 8, scope: !194)
!206 = !DILocation(line: 93, column: 6, scope: !207)
!207 = distinct !DILexicalBlock(scope: !194, file: !3, line: 93, column: 6)
!208 = !DILocation(line: 93, column: 6, scope: !194)
!209 = !DILocation(line: 96, column: 37, scope: !194)
!210 = !DILocation(line: 96, column: 17, scope: !194)
!211 = !DILocation(line: 96, column: 9, scope: !194)
!212 = !DILocation(line: 97, column: 37, scope: !194)
!213 = !DILocation(line: 97, column: 17, scope: !194)
!214 = !DILocation(line: 97, column: 9, scope: !194)
!215 = !DILocation(line: 98, column: 11, scope: !216)
!216 = distinct !DILexicalBlock(scope: !194, file: !3, line: 98, column: 6)
!217 = !DILocation(line: 98, column: 15, scope: !216)
!218 = !DILocation(line: 98, column: 6, scope: !194)
!219 = !DILocation(line: 101, column: 13, scope: !194)
!220 = !{!221, !166, i64 0}
!221 = !{!"xdp_hints_mark", !166, i64 0, !166, i64 4}
!222 = !DILocation(line: 102, column: 17, scope: !194)
!223 = !DILocation(line: 102, column: 8, scope: !194)
!224 = !DILocation(line: 102, column: 15, scope: !194)
!225 = !{!221, !166, i64 4}
!226 = !DILocation(line: 104, column: 2, scope: !194)
!227 = !DILocation(line: 105, column: 1, scope: !194)
!228 = distinct !DISubprogram(name: "parse_pkt__is_ARP_or_NDP", scope: !3, file: !3, line: 114, type: !150, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !229)
!229 = !{!230, !231, !232, !233, !238, !250, !251, !298, !299, !346}
!230 = !DILocalVariable(name: "ctx", arg: 1, scope: !228, file: !3, line: 114, type: !90)
!231 = !DILocalVariable(name: "data", scope: !228, file: !3, line: 116, type: !52)
!232 = !DILocalVariable(name: "data_end", scope: !228, file: !3, line: 117, type: !52)
!233 = !DILocalVariable(name: "nh", scope: !228, file: !3, line: 118, type: !234)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdr_cursor", file: !235, line: 35, size: 64, elements: !236)
!235 = !DIFile(filename: "../lib/../include/xdp/parsing_helpers.h", directory: "/home/raj/bpf-examples/AF_XDP-interaction", checksumkind: CSK_MD5, checksum: "e41ee3c44bb7300a1b081f0ef073eeff")
!236 = !{!237}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !234, file: !235, line: 36, baseType: !52, size: 64)
!238 = !DILocalVariable(name: "eth", scope: !228, file: !3, line: 119, type: !239)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ethhdr", file: !241, line: 168, size: 112, elements: !242)
!241 = !DIFile(filename: "/usr/include/linux/if_ether.h", directory: "", checksumkind: CSK_MD5, checksum: "ab0320da726e75d904811ce344979934")
!242 = !{!243, !246, !247}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "h_dest", scope: !240, file: !241, line: 169, baseType: !244, size: 48)
!244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !245, size: 48, elements: !129)
!245 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "h_source", scope: !240, file: !241, line: 170, baseType: !244, size: 48, offset: 48)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "h_proto", scope: !240, file: !241, line: 171, baseType: !248, size: 16, offset: 96)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be16", file: !249, line: 25, baseType: !55)
!249 = !DIFile(filename: "/usr/include/linux/types.h", directory: "", checksumkind: CSK_MD5, checksum: "52ec79a38e49ac7d1dc9e146ba88a7b1")
!250 = !DILocalVariable(name: "eth_type", scope: !228, file: !3, line: 120, type: !51)
!251 = !DILocalVariable(name: "ip6h", scope: !252, file: !3, line: 130, type: !254)
!252 = distinct !DILexicalBlock(scope: !253, file: !3, line: 129, column: 41)
!253 = distinct !DILexicalBlock(scope: !228, file: !3, line: 129, column: 6)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipv6hdr", file: !256, line: 118, size: 320, elements: !257)
!256 = !DIFile(filename: "/usr/include/linux/ipv6.h", directory: "", checksumkind: CSK_MD5, checksum: "9926d49458ea1e0cc4651362e733e03e")
!257 = !{!258, !260, !261, !265, !266, !267, !268}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !255, file: !256, line: 120, baseType: !259, size: 4, flags: DIFlagBitField, extraData: i64 0)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !56, line: 21, baseType: !245)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !255, file: !256, line: 121, baseType: !259, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "flow_lbl", scope: !255, file: !256, line: 128, baseType: !262, size: 24, offset: 8)
!262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !259, size: 24, elements: !263)
!263 = !{!264}
!264 = !DISubrange(count: 3)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "payload_len", scope: !255, file: !256, line: 130, baseType: !248, size: 16, offset: 32)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "nexthdr", scope: !255, file: !256, line: 131, baseType: !259, size: 8, offset: 48)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "hop_limit", scope: !255, file: !256, line: 132, baseType: !259, size: 8, offset: 56)
!268 = !DIDerivedType(tag: DW_TAG_member, scope: !255, file: !256, line: 134, baseType: !269, size: 256, offset: 64)
!269 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !255, file: !256, line: 134, size: 256, elements: !270)
!270 = !{!271, !293}
!271 = !DIDerivedType(tag: DW_TAG_member, scope: !269, file: !256, line: 134, baseType: !272, size: 256)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !269, file: !256, line: 134, size: 256, elements: !273)
!273 = !{!274, !292}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "saddr", scope: !272, file: !256, line: 134, baseType: !275, size: 128)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !276, line: 33, size: 128, elements: !277)
!276 = !DIFile(filename: "/usr/include/linux/in6.h", directory: "", checksumkind: CSK_MD5, checksum: "fca1889f0274df066e49cf4d8db8011e")
!277 = !{!278}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "in6_u", scope: !275, file: !276, line: 40, baseType: !279, size: 128)
!279 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !275, file: !276, line: 34, size: 128, elements: !280)
!280 = !{!281, !285, !289}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "u6_addr8", scope: !279, file: !276, line: 35, baseType: !282, size: 128)
!282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !259, size: 128, elements: !283)
!283 = !{!284}
!284 = !DISubrange(count: 16)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "u6_addr16", scope: !279, file: !276, line: 37, baseType: !286, size: 128)
!286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !248, size: 128, elements: !287)
!287 = !{!288}
!288 = !DISubrange(count: 8)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "u6_addr32", scope: !279, file: !276, line: 38, baseType: !290, size: 128)
!290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, size: 128, elements: !64)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be32", file: !249, line: 27, baseType: !94)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "daddr", scope: !272, file: !256, line: 134, baseType: !275, size: 128, offset: 128)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "addrs", scope: !269, file: !256, line: 134, baseType: !294, size: 256)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !269, file: !256, line: 134, size: 256, elements: !295)
!295 = !{!296, !297}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "saddr", scope: !294, file: !256, line: 134, baseType: !275, size: 128)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "daddr", scope: !294, file: !256, line: 134, baseType: !275, size: 128, offset: 128)
!298 = !DILocalVariable(name: "ip_type", scope: !252, file: !3, line: 131, type: !51)
!299 = !DILocalVariable(name: "icmp6hdr", scope: !300, file: !3, line: 136, type: !302)
!300 = distinct !DILexicalBlock(scope: !301, file: !3, line: 135, column: 34)
!301 = distinct !DILexicalBlock(scope: !252, file: !3, line: 135, column: 7)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "icmp6hdr", file: !304, line: 8, size: 64, elements: !305)
!304 = !DIFile(filename: "/usr/include/linux/icmpv6.h", directory: "", checksumkind: CSK_MD5, checksum: "0310ca5584e6f44f6eea6cf040ee84b9")
!305 = !{!306, !307, !308, !310}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "icmp6_type", scope: !303, file: !304, line: 10, baseType: !259, size: 8)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "icmp6_code", scope: !303, file: !304, line: 11, baseType: !259, size: 8, offset: 8)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "icmp6_cksum", scope: !303, file: !304, line: 12, baseType: !309, size: 16, offset: 16)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sum16", file: !249, line: 31, baseType: !55)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "icmp6_dataun", scope: !303, file: !304, line: 63, baseType: !311, size: 32, offset: 32)
!311 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !303, file: !304, line: 15, size: 32, elements: !312)
!312 = !{!313, !317, !321, !323, !328, !336}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "un_data32", scope: !311, file: !304, line: 16, baseType: !314, size: 32)
!314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, size: 32, elements: !315)
!315 = !{!316}
!316 = !DISubrange(count: 1)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "un_data16", scope: !311, file: !304, line: 17, baseType: !318, size: 32)
!318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !248, size: 32, elements: !319)
!319 = !{!320}
!320 = !DISubrange(count: 2)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "un_data8", scope: !311, file: !304, line: 18, baseType: !322, size: 32)
!322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !259, size: 32, elements: !64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "u_echo", scope: !311, file: !304, line: 23, baseType: !324, size: 32)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "icmpv6_echo", file: !304, line: 20, size: 32, elements: !325)
!325 = !{!326, !327}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !324, file: !304, line: 21, baseType: !248, size: 16)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !324, file: !304, line: 22, baseType: !248, size: 16, offset: 16)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "u_nd_advt", scope: !311, file: !304, line: 40, baseType: !329, size: 32)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "icmpv6_nd_advt", file: !304, line: 25, size: 32, elements: !330)
!330 = !{!331, !332, !333, !334, !335}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !329, file: !304, line: 27, baseType: !94, size: 5, flags: DIFlagBitField, extraData: i64 0)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "override", scope: !329, file: !304, line: 28, baseType: !94, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "solicited", scope: !329, file: !304, line: 29, baseType: !94, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "router", scope: !329, file: !304, line: 30, baseType: !94, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !329, file: !304, line: 31, baseType: !94, size: 24, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "u_nd_ra", scope: !311, file: !304, line: 61, baseType: !337, size: 32)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "icmpv6_nd_ra", file: !304, line: 42, size: 32, elements: !338)
!338 = !{!339, !340, !341, !342, !343, !344, !345}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "hop_limit", scope: !337, file: !304, line: 43, baseType: !259, size: 8)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !337, file: !304, line: 45, baseType: !259, size: 3, offset: 8, flags: DIFlagBitField, extraData: i64 8)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "router_pref", scope: !337, file: !304, line: 46, baseType: !259, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 8)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "home_agent", scope: !337, file: !304, line: 47, baseType: !259, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 8)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "other", scope: !337, file: !304, line: 48, baseType: !259, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 8)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "managed", scope: !337, file: !304, line: 49, baseType: !259, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 8)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "rt_lifetime", scope: !337, file: !304, line: 60, baseType: !248, size: 16, offset: 16)
!346 = !DILocalVariable(name: "icmp6_type", scope: !300, file: !3, line: 137, type: !51)
!347 = !DILocation(line: 0, scope: !228)
!348 = !DILocation(line: 116, column: 38, scope: !228)
!349 = !DILocation(line: 116, column: 27, scope: !228)
!350 = !DILocation(line: 116, column: 19, scope: !228)
!351 = !DILocation(line: 117, column: 38, scope: !228)
!352 = !{!165, !166, i64 4}
!353 = !DILocation(line: 117, column: 27, scope: !228)
!354 = !DILocation(line: 117, column: 19, scope: !228)
!355 = !DILocalVariable(name: "nh", arg: 1, scope: !356, file: !235, line: 131, type: !359)
!356 = distinct !DISubprogram(name: "parse_ethhdr", scope: !235, file: !235, line: 131, type: !357, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !361)
!357 = !DISubroutineType(types: !358)
!358 = !{!51, !359, !52, !360}
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!361 = !{!355, !362, !363}
!362 = !DILocalVariable(name: "data_end", arg: 2, scope: !356, file: !235, line: 132, type: !52)
!363 = !DILocalVariable(name: "ethhdr", arg: 3, scope: !356, file: !235, line: 133, type: !360)
!364 = !DILocation(line: 0, scope: !356, inlinedAt: !365)
!365 = distinct !DILocation(line: 122, column: 13, scope: !228)
!366 = !DILocalVariable(name: "nh", arg: 1, scope: !367, file: !235, line: 86, type: !359)
!367 = distinct !DISubprogram(name: "parse_ethhdr_vlan", scope: !235, file: !235, line: 86, type: !368, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !375)
!368 = !DISubroutineType(types: !369)
!369 = !{!51, !359, !52, !360, !370}
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "collect_vlans", file: !235, line: 71, size: 32, elements: !372)
!372 = !{!373}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !371, file: !235, line: 72, baseType: !374, size: 32)
!374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 32, elements: !319)
!375 = !{!366, !376, !377, !378, !379, !380, !381, !387, !388}
!376 = !DILocalVariable(name: "data_end", arg: 2, scope: !367, file: !235, line: 87, type: !52)
!377 = !DILocalVariable(name: "ethhdr", arg: 3, scope: !367, file: !235, line: 88, type: !360)
!378 = !DILocalVariable(name: "vlans", arg: 4, scope: !367, file: !235, line: 89, type: !370)
!379 = !DILocalVariable(name: "eth", scope: !367, file: !235, line: 91, type: !239)
!380 = !DILocalVariable(name: "hdrsize", scope: !367, file: !235, line: 92, type: !51)
!381 = !DILocalVariable(name: "vlh", scope: !367, file: !235, line: 93, type: !382)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vlan_hdr", file: !235, line: 44, size: 32, elements: !384)
!384 = !{!385, !386}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "h_vlan_TCI", scope: !383, file: !235, line: 45, baseType: !248, size: 16)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "h_vlan_encapsulated_proto", scope: !383, file: !235, line: 46, baseType: !248, size: 16, offset: 16)
!387 = !DILocalVariable(name: "h_proto", scope: !367, file: !235, line: 94, type: !55)
!388 = !DILocalVariable(name: "i", scope: !367, file: !235, line: 95, type: !51)
!389 = !DILocation(line: 0, scope: !367, inlinedAt: !390)
!390 = distinct !DILocation(line: 136, column: 9, scope: !356, inlinedAt: !365)
!391 = !DILocation(line: 100, column: 14, scope: !392, inlinedAt: !390)
!392 = distinct !DILexicalBlock(scope: !367, file: !235, line: 100, column: 6)
!393 = !DILocation(line: 100, column: 24, scope: !392, inlinedAt: !390)
!394 = !DILocation(line: 100, column: 6, scope: !367, inlinedAt: !390)
!395 = !DILocation(line: 106, column: 17, scope: !367, inlinedAt: !390)
!396 = !{!397, !397, i64 0}
!397 = !{!"short", !167, i64 0}
!398 = !DILocalVariable(name: "h_proto", arg: 1, scope: !399, file: !235, line: 75, type: !55)
!399 = distinct !DISubprogram(name: "proto_is_vlan", scope: !235, file: !235, line: 75, type: !400, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !402)
!400 = !DISubroutineType(types: !401)
!401 = !{!51, !55}
!402 = !{!398}
!403 = !DILocation(line: 0, scope: !399, inlinedAt: !404)
!404 = distinct !DILocation(line: 113, column: 8, scope: !405, inlinedAt: !390)
!405 = distinct !DILexicalBlock(scope: !406, file: !235, line: 113, column: 7)
!406 = distinct !DILexicalBlock(scope: !407, file: !235, line: 112, column: 39)
!407 = distinct !DILexicalBlock(scope: !408, file: !235, line: 112, column: 2)
!408 = distinct !DILexicalBlock(scope: !367, file: !235, line: 112, column: 2)
!409 = !DILocation(line: 77, column: 20, scope: !399, inlinedAt: !404)
!410 = !DILocation(line: 77, column: 46, scope: !399, inlinedAt: !404)
!411 = !DILocation(line: 113, column: 7, scope: !406, inlinedAt: !390)
!412 = !DILocation(line: 119, column: 18, scope: !406, inlinedAt: !390)
!413 = !DILocation(line: 126, column: 6, scope: !228)
!414 = !DILocalVariable(name: "nh", arg: 1, scope: !415, file: !235, line: 174, type: !359)
!415 = distinct !DISubprogram(name: "parse_ip6hdr", scope: !235, file: !235, line: 174, type: !416, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !419)
!416 = !DISubroutineType(types: !417)
!417 = !{!51, !359, !52, !418}
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!419 = !{!414, !420, !421, !422}
!420 = !DILocalVariable(name: "data_end", arg: 2, scope: !415, file: !235, line: 175, type: !52)
!421 = !DILocalVariable(name: "ip6hdr", arg: 3, scope: !415, file: !235, line: 176, type: !418)
!422 = !DILocalVariable(name: "ip6h", scope: !415, file: !235, line: 178, type: !254)
!423 = !DILocation(line: 0, scope: !415, inlinedAt: !424)
!424 = distinct !DILocation(line: 131, column: 17, scope: !252)
!425 = !DILocation(line: 184, column: 11, scope: !426, inlinedAt: !424)
!426 = distinct !DILexicalBlock(scope: !415, file: !235, line: 184, column: 6)
!427 = !DILocation(line: 184, column: 15, scope: !426, inlinedAt: !424)
!428 = !DILocation(line: 184, column: 6, scope: !415, inlinedAt: !424)
!429 = !DILocation(line: 187, column: 12, scope: !430, inlinedAt: !424)
!430 = distinct !DILexicalBlock(scope: !415, file: !235, line: 187, column: 6)
!431 = !DILocation(line: 187, column: 20, scope: !430, inlinedAt: !424)
!432 = !DILocation(line: 187, column: 6, scope: !415, inlinedAt: !424)
!433 = !DILocalVariable(name: "nh", arg: 1, scope: !434, file: !235, line: 139, type: !359)
!434 = distinct !DISubprogram(name: "skip_ip6hdrext", scope: !235, file: !235, line: 139, type: !435, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !437)
!435 = !DISubroutineType(types: !436)
!436 = !{!51, !359, !52, !259}
!437 = !{!433, !438, !439, !440, !442}
!438 = !DILocalVariable(name: "data_end", arg: 2, scope: !434, file: !235, line: 140, type: !52)
!439 = !DILocalVariable(name: "next_hdr_type", arg: 3, scope: !434, file: !235, line: 141, type: !259)
!440 = !DILocalVariable(name: "i", scope: !441, file: !235, line: 143, type: !51)
!441 = distinct !DILexicalBlock(scope: !434, file: !235, line: 143, column: 2)
!442 = !DILocalVariable(name: "hdr", scope: !443, file: !235, line: 144, type: !445)
!443 = distinct !DILexicalBlock(scope: !444, file: !235, line: 143, column: 47)
!444 = distinct !DILexicalBlock(scope: !441, file: !235, line: 143, column: 2)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipv6_opt_hdr", file: !256, line: 63, size: 16, elements: !447)
!447 = !{!448, !449}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "nexthdr", scope: !446, file: !256, line: 64, baseType: !259, size: 8)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "hdrlen", scope: !446, file: !256, line: 65, baseType: !259, size: 8, offset: 8)
!450 = !DILocation(line: 0, scope: !434, inlinedAt: !451)
!451 = distinct !DILocation(line: 193, column: 9, scope: !415, inlinedAt: !424)
!452 = !DILocation(line: 0, scope: !441, inlinedAt: !451)
!453 = !DILocation(line: 0, scope: !443, inlinedAt: !451)
!454 = !DILocation(line: 193, column: 44, scope: !415, inlinedAt: !424)
!455 = !{!456, !167, i64 6}
!456 = !{!"ipv6hdr", !167, i64 0, !167, i64 0, !167, i64 1, !397, i64 4, !167, i64 6, !167, i64 7, !167, i64 8}
!457 = !DILocation(line: 149, column: 3, scope: !443, inlinedAt: !451)
!458 = !DILocation(line: 160, column: 4, scope: !459, inlinedAt: !451)
!459 = distinct !DILexicalBlock(scope: !443, file: !235, line: 149, column: 26)
!460 = !DILocation(line: 0, scope: !459, inlinedAt: !451)
!461 = !{!462, !167, i64 1}
!462 = !{!"ipv6_opt_hdr", !167, i64 0, !167, i64 1}
!463 = !DILocation(line: 146, column: 11, scope: !464, inlinedAt: !451)
!464 = distinct !DILexicalBlock(scope: !443, file: !235, line: 146, column: 7)
!465 = !DILocation(line: 146, column: 15, scope: !464, inlinedAt: !451)
!466 = !DILocation(line: 146, column: 7, scope: !443, inlinedAt: !451)
!467 = !{!462, !167, i64 0}
!468 = !DILocation(line: 156, column: 4, scope: !459, inlinedAt: !451)
!469 = !DILocation(line: 0, scope: !252)
!470 = !DILocation(line: 135, column: 15, scope: !301)
!471 = !DILocation(line: 135, column: 7, scope: !252)
!472 = !DILocalVariable(name: "nh", arg: 1, scope: !473, file: !235, line: 224, type: !359)
!473 = distinct !DISubprogram(name: "parse_icmp6hdr", scope: !235, file: !235, line: 224, type: !474, scopeLine: 227, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !477)
!474 = !DISubroutineType(types: !475)
!475 = !{!51, !359, !52, !476}
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!477 = !{!472, !478, !479, !480}
!478 = !DILocalVariable(name: "data_end", arg: 2, scope: !473, file: !235, line: 225, type: !52)
!479 = !DILocalVariable(name: "icmp6hdr", arg: 3, scope: !473, file: !235, line: 226, type: !476)
!480 = !DILocalVariable(name: "icmp6h", scope: !473, file: !235, line: 228, type: !302)
!481 = !DILocation(line: 0, scope: !473, inlinedAt: !482)
!482 = distinct !DILocation(line: 137, column: 21, scope: !300)
!483 = !DILocation(line: 230, column: 13, scope: !484, inlinedAt: !482)
!484 = distinct !DILexicalBlock(scope: !473, file: !235, line: 230, column: 6)
!485 = !DILocation(line: 230, column: 17, scope: !484, inlinedAt: !482)
!486 = !DILocation(line: 230, column: 6, scope: !473, inlinedAt: !482)
!487 = !DILocation(line: 236, column: 17, scope: !473, inlinedAt: !482)
!488 = !{!489, !167, i64 0}
!489 = !{!"icmp6hdr", !167, i64 0, !167, i64 1, !397, i64 2, !167, i64 4}
!490 = !DILocation(line: 236, column: 9, scope: !473, inlinedAt: !482)
!491 = !DILocation(line: 0, scope: !300)
!492 = !DILocation(line: 141, column: 32, scope: !493)
!493 = distinct !DILexicalBlock(scope: !300, file: !3, line: 141, column: 8)
!494 = !DILocation(line: 147, column: 2, scope: !228)
!495 = !DILocation(line: 148, column: 1, scope: !228)
!496 = distinct !DISubprogram(name: "xdp_sock_prog", scope: !3, file: !3, line: 151, type: !150, scopeLine: 152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !497)
!497 = !{!498, !499, !500, !501, !502, !503}
!498 = !DILocalVariable(name: "ctx", arg: 1, scope: !496, file: !3, line: 151, type: !90)
!499 = !DILocalVariable(name: "index", scope: !496, file: !3, line: 153, type: !51)
!500 = !DILocalVariable(name: "pkt_count", scope: !496, file: !3, line: 154, type: !132)
!501 = !DILocalVariable(name: "err", scope: !496, file: !3, line: 155, type: !51)
!502 = !DILocalVariable(name: "ret", scope: !496, file: !3, line: 155, type: !51)
!503 = !DILocalVariable(name: "cnt", scope: !496, file: !3, line: 160, type: !105)
!504 = !DILocation(line: 0, scope: !496)
!505 = !DILocation(line: 153, column: 2, scope: !496)
!506 = !DILocation(line: 153, column: 19, scope: !496)
!507 = !{!165, !166, i64 16}
!508 = !DILocation(line: 153, column: 6, scope: !496)
!509 = !{!166, !166, i64 0}
!510 = !DILocation(line: 157, column: 14, scope: !496)
!511 = !DILocation(line: 158, column: 7, scope: !512)
!512 = distinct !DILexicalBlock(scope: !496, file: !3, line: 158, column: 6)
!513 = !DILocation(line: 158, column: 6, scope: !496)
!514 = !DILocation(line: 160, column: 26, scope: !496)
!515 = !DILocation(line: 168, column: 11, scope: !516)
!516 = distinct !DILexicalBlock(scope: !496, file: !3, line: 168, column: 6)
!517 = !DILocation(line: 168, column: 16, scope: !516)
!518 = !DILocation(line: 168, column: 6, scope: !496)
!519 = !DILocation(line: 0, scope: !149, inlinedAt: !520)
!520 = distinct !DILocation(line: 169, column: 9, scope: !521)
!521 = distinct !DILexicalBlock(scope: !516, file: !3, line: 168, column: 22)
!522 = !DILocation(line: 62, column: 8, scope: !149, inlinedAt: !520)
!523 = !DILocation(line: 63, column: 6, scope: !161, inlinedAt: !520)
!524 = !DILocation(line: 63, column: 6, scope: !149, inlinedAt: !520)
!525 = !DILocation(line: 71, column: 37, scope: !149, inlinedAt: !520)
!526 = !DILocation(line: 71, column: 17, scope: !149, inlinedAt: !520)
!527 = !DILocation(line: 71, column: 9, scope: !149, inlinedAt: !520)
!528 = !DILocation(line: 73, column: 37, scope: !149, inlinedAt: !520)
!529 = !DILocation(line: 73, column: 17, scope: !149, inlinedAt: !520)
!530 = !DILocation(line: 73, column: 9, scope: !149, inlinedAt: !520)
!531 = !DILocation(line: 74, column: 11, scope: !176, inlinedAt: !520)
!532 = !DILocation(line: 74, column: 15, scope: !176, inlinedAt: !520)
!533 = !DILocation(line: 74, column: 6, scope: !149, inlinedAt: !520)
!534 = !DILocation(line: 77, column: 19, scope: !149, inlinedAt: !520)
!535 = !DILocation(line: 77, column: 17, scope: !149, inlinedAt: !520)
!536 = !DILocation(line: 78, column: 21, scope: !149, inlinedAt: !520)
!537 = !DILocation(line: 78, column: 8, scope: !149, inlinedAt: !520)
!538 = !DILocation(line: 78, column: 19, scope: !149, inlinedAt: !520)
!539 = !DILocation(line: 80, column: 17, scope: !149, inlinedAt: !520)
!540 = !DILocation(line: 80, column: 8, scope: !149, inlinedAt: !520)
!541 = !DILocation(line: 80, column: 15, scope: !149, inlinedAt: !520)
!542 = !DILocation(line: 170, column: 7, scope: !521)
!543 = !DILocation(line: 0, scope: !194, inlinedAt: !544)
!544 = distinct !DILocation(line: 173, column: 9, scope: !545)
!545 = distinct !DILexicalBlock(scope: !516, file: !3, line: 172, column: 9)
!546 = !DILocation(line: 92, column: 8, scope: !194, inlinedAt: !544)
!547 = !DILocation(line: 93, column: 6, scope: !207, inlinedAt: !544)
!548 = !DILocation(line: 93, column: 6, scope: !194, inlinedAt: !544)
!549 = !DILocation(line: 96, column: 37, scope: !194, inlinedAt: !544)
!550 = !DILocation(line: 96, column: 17, scope: !194, inlinedAt: !544)
!551 = !DILocation(line: 96, column: 9, scope: !194, inlinedAt: !544)
!552 = !DILocation(line: 97, column: 37, scope: !194, inlinedAt: !544)
!553 = !DILocation(line: 97, column: 17, scope: !194, inlinedAt: !544)
!554 = !DILocation(line: 97, column: 9, scope: !194, inlinedAt: !544)
!555 = !DILocation(line: 98, column: 11, scope: !216, inlinedAt: !544)
!556 = !DILocation(line: 98, column: 15, scope: !216, inlinedAt: !544)
!557 = !DILocation(line: 98, column: 6, scope: !194, inlinedAt: !544)
!558 = !DILocation(line: 101, column: 13, scope: !194, inlinedAt: !544)
!559 = !DILocation(line: 102, column: 17, scope: !194, inlinedAt: !544)
!560 = !DILocation(line: 102, column: 8, scope: !194, inlinedAt: !544)
!561 = !DILocation(line: 102, column: 15, scope: !194, inlinedAt: !544)
!562 = !DILocation(line: 174, column: 7, scope: !545)
!563 = !DILocation(line: 179, column: 8, scope: !496)
!564 = !DILocation(line: 180, column: 10, scope: !565)
!565 = distinct !DILexicalBlock(scope: !496, file: !3, line: 180, column: 6)
!566 = !DILocation(line: 180, column: 6, scope: !496)
!567 = !DILocation(line: 182, column: 10, scope: !568)
!568 = distinct !DILexicalBlock(scope: !496, file: !3, line: 182, column: 6)
!569 = !DILocation(line: 182, column: 6, scope: !496)
!570 = !DILocation(line: 187, column: 6, scope: !571)
!571 = distinct !DILexicalBlock(scope: !496, file: !3, line: 187, column: 6)
!572 = !DILocation(line: 187, column: 6, scope: !496)
!573 = !DILocation(line: 188, column: 38, scope: !571)
!574 = !DILocation(line: 188, column: 10, scope: !571)
!575 = !DILocation(line: 188, column: 3, scope: !571)
!576 = !DILocation(line: 191, column: 1, scope: !496)
